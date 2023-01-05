library Synopsys;
    Use Synopsys.attributes.all;
library IEEE;
   use IEEE.std_logic_1164.all;
   use IEEE.std_logic_arith.all;

package MYTYPES is
     type State_Type is (RESET_STATE, FETCH_INSTR, READ_OPS, EXECUTE, WRITEBACK);
end MYTYPES;

package body MYTYPES is
end MYTYPES;


library IEEE;
use IEEE.std_logic_1164.all;
use work.MYTYPES.all;

entity TOP is
        port (
               Clk            : in std_logic;
               Reset          : in std_logic;
               Crnt_Instrn    : in std_logic_vector (31 downto 0); -- Current Executing Inst
	       Zro_Flag,				-- Flags from ALU or Stack
	       Carry_Flag,
	       Neg_Flag	      : in std_logic;
	       Return_Addr    : in std_logic_vector (7 downto 0);
	       Current_State  : out State_Type;		-- CurrentState from Control FSM	               
	       PC	      : out std_logic_vector (7 downto 0)     -- Program Count
             );
end TOP;


architecture STRUCT of TOP is

    component FSM         port (
               Clk            : in std_logic;
               Reset          : in std_logic;
	       CurrentState   : out State_Type
             );
    end component;

    component DECODE	port (
	       Zro_Flag	      : in std_logic;
	       Carry_Flag     : in std_logic;
	       Neg_Flag       : in std_logic;
	       CurrentState   : in State_Type;
	       Crnt_Instrn    : in std_logic_vector (31 downto 0);
	       Incrmnt_PC     : out std_logic;
	       Ld_Brnch_Addr  : out std_logic;
	       Ld_Rtn_Addr    : out std_logic
	     );
    end component;				

    component COUNT		 port (
	       Reset	      : in std_logic;
	       Clk	      : in std_logic;
	       Incrmnt_PC     : in std_logic;
    	       Ld_Brnch_Addr  : in std_logic;
	       Ld_Rtn_Addr    : in std_logic;
	       Imm_Addr	      : in std_logic_vector (7 downto 0);
	       Return_Addr    : in std_logic_vector (7 downto 0);
	       PC	      : out std_logic_vector (7 downto 0)
	     );
    end component; 

    signal Incrmnt_PC, Ld_Brnch_Addr, Ld_Rtn_Addr : std_logic;
    signal CurrentState : State_Type; 

    begin

    I_FSM : FSM port map (
	        Clk		=> Clk,
		Reset		=> Reset,
		CurrentState 	=> CurrentState
	      );

    I_DECODE : DECODE port map (
		Zro_Flag	=> Zro_Flag,
		Carry_Flag	=> Carry_Flag,
		Neg_Flag	=> Neg_Flag,
		CurrentState	=> CurrentState,
		Crnt_Instrn	=> Crnt_Instrn,
		Incrmnt_PC	=> Incrmnt_PC,
		Ld_Brnch_Addr	=> Ld_Brnch_Addr,
		Ld_Rtn_Addr	=> Ld_Rtn_Addr
	      );

    I_COUNT : COUNT port map (
		Reset		=> Reset,
		Clk		=> Clk,
		Incrmnt_PC	=> Incrmnt_PC,
		Ld_Brnch_Addr	=> Ld_Brnch_Addr,
		Ld_Rtn_Addr	=> Ld_Rtn_Addr,
		Imm_Addr	=> Crnt_Instrn (7 downto 0),
		Return_Addr	=> Return_Addr,
		PC		=> PC
	      );

    Current_State <= CurrentState;

end STRUCT;	
				 	

library IEEE;
use IEEE.std_logic_1164.all;
use WORK.MYTYPES.all;

entity DECODE is
        port (
                Zro_Flag,          -- "Zero" Flag from DATA_PATH
                Carry_Flag,        -- "Carry" Flag from DATA_PATH
                Neg_Flag           -- "Negative" Flag from DATA_PATH
                        : in std_logic;

	        CurrentState	   -- CurrentState from FSM
		        : in State_Type;  	

                Crnt_Instrn        -- Current instruction under execution
                                   -- from Instruction Latch
                        : in std_logic_vector (31 downto 0);

                Incrmnt_PC,        -- Increments PC (in WRITEBACK cycle)
                Ld_Brnch_Addr,     -- Load Immediate add from Instrn Latch 
                                   -- into PC (in WRITEBACK cycle)
                Ld_Rtn_Addr        -- Load Return addr from Stack into PC (in WRITEBACK cycle)
                        : out std_logic 
              );
end DECODE;

architecture RTL of DECODE is

	signal Brnch_Addr, Rtn_Addr, Take_Branch : std_logic;	

begin

    process (Take_Branch, CurrentState, Crnt_Instrn, Zro_Flag, Carry_Flag, Neg_Flag, Brnch_Addr, Rtn_Addr)
    	variable Neg, Carry, Zro, Jmp : std_logic;
    begin

	Brnch_Addr <= '0';
	Rtn_Addr <= '0';

 --  Determine if Jmp on False or Jmp on True
	 if (Crnt_Instrn(25)) = '1' then
	     Neg := not Neg_Flag;
	     Carry := not Carry_Flag;
	     Zro := not Zro_Flag;
             Jmp := '0';
	 else
	     Neg := Neg_Flag;
	     Carry := Carry_Flag;
	     Zro := Zro_Flag;
	     Jmp := '1';
	 end if;		

  --  Determines which of the CONDITIONs needs to be checked and whether to jmp
         if (Crnt_Instrn(23 downto 16) = "00000000") then
             Take_Branch <= Neg;
         elsif (Crnt_Instrn(23 downto 16) = "00000001") then
             Take_Branch <= Zro;
         elsif (Crnt_Instrn(23 downto 16) = "00000010") then
	     Take_Branch <= Carry;
         elsif (Crnt_Instrn(23 downto 16) = "00111111") then
             Take_Branch <= Jmp;
	 else Take_Branch <= '0';
         end if;

        case CurrentState is
            when WRITEBACK =>
                if (Crnt_Instrn(31 downto 30) = "00") then 
				-- For Jmp/Call with condition check
                    if ((Crnt_Instrn(29) = '1' or Crnt_Instrn(28) = '1' ) and 
                         Take_Branch = '1') then 
                        Brnch_Addr <= '1';
                    end if;
		                -- For Return
                    if (Crnt_Instrn(27) = '1') then
                        Rtn_Addr <= '1';
                    end if; 
                end if; 
			        -- If not Jmping or Rtrning the increment PC
	        if (Rtn_Addr ='1' or Brnch_Addr = '1') then     
		    Incrmnt_PC <= '0';
		else
		    Incrmnt_PC <= '1';
                end if;
	    when others =>
		Incrmnt_PC <= '0';	
        end case;
    end process;

    Ld_Brnch_Addr <= Brnch_Addr;
    Ld_Rtn_Addr <= Rtn_Addr;

end RTL;

library IEEE;
use IEEE.std_logic_1164.all;
use WORK.MYTYPES.all;

entity FSM is
        port (
                Clk,               -- CPU Clock
                Reset             -- CPU Reset
			:  in std_logic;
                CurrentState      -- Current State of FSM
			:  out State_Type
              );
end FSM;

architecture RTL of FSM is

--    type State_Type is (RESET_STATE, FETCH_INSTR, READ_OPS, EXECUTE, WRITEBACK);
    signal Current_State, Next_State        : State_Type;

begin

    process (Reset, Current_State)
    begin
        case Current_State is
            when RESET_STATE =>
                Next_State <= FETCH_INSTR;
            when FETCH_INSTR =>
                Next_State  <= READ_OPS;
            when READ_OPS =>
                Next_State <= EXECUTE;
            when EXECUTE =>
                Next_State <= WRITEBACK;
            when WRITEBACK =>
                Next_State <= FETCH_INSTR;
        end case;
    end process;

    process
    begin
        wait until Clk'event and Clk = '1';
        if (Reset = '1') then
            Current_State       <= RESET_STATE ;
        else
            Current_State       <= Next_State ;
        end if;
    end process;

    CurrentState <= Current_State;

end RTL;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_signed.all;
use IEEE.std_logic_arith.all;

entity  COUNT is
    port (
             Reset,             -- Reset for the PC
             Clk,               -- CPU Clock
             Incrmnt_PC,        -- Increment PC
             Ld_Brnch_Addr,     -- Load Jmp/Call Addr from instruction
             Ld_Rtn_Addr        -- Load Return Addr
                      : in std_logic;
             Imm_Addr,          -- Immediate Addr for Jmp/Call
             Return_Addr        -- Return addr from Stack
                      : in std_logic_vector (7 downto 0);

             PC                 -- Addr of instruction to be fetched in
                                -- the next Fetch Cycle
                      : out std_logic_vector (7 downto 0)
         );

end COUNT;

architecture RTL of COUNT is

  signal PCint : std_logic_vector (7 downto 0);

begin

 process
 begin
       wait until clk'event and clk = '1';
       if (Reset = '1') then
           PCint <= "00000000";
       elsif (Incrmnt_PC = '1') then                 -- Occurs in WRITEBACK cycle
           PCint <= unsigned(PCint) + unsigned ' ("001");
       elsif (Ld_Rtn_Addr = '1') then                -- Occurs in WRITEBACK cycle
           PCint <= Return_Addr;
       elsif (Ld_Brnch_Addr = '1') then              -- Occurs in WRITEBACK cycle
           PCint <= Imm_Addr;
       end if;
 end process;

 PC <= PCint;

end RTL;


