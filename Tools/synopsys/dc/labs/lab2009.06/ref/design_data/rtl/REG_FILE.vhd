LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.std_logic_arith.ALL;

ENTITY REG_FILE IS
  PORT (
    reset_n,                            -- Reset for initialising registers
    clk                                 -- CPU Clock
      : IN std_logic;
    Addr_A,                             -- Address for port A
    Addr_B,                             -- Address for port B
    Addr_C                              -- Address for port C
      : IN std_logic_vector (6 DOWNTO 0);

    RegPort_C                           -- Wr Data for port C
      : IN std_logic_vector (15 DOWNTO 0);

    Write_RegC
      : IN std_logic;

    RegPort_A,                          -- Data Out of port A
    RegPort_B                           -- Data Out of port A
      : OUT std_logic_vector ( 15 DOWNTO 0)
    );
END REG_FILE;

ARCHITECTURE RAMS_4 OF REG_FILE IS

  COMPONENT ram16x128
    PORT (A1   : in  std_logic_vector(6 DOWNTO 0);
          A2   : in  std_logic_vector(6 DOWNTO 0);
          CE1  : in  std_logic;
          CE2  : in  std_logic;
          WEB1 : in  std_logic;
          WEB2 : in  std_logic;
          OEB1 : in  std_logic;
          OEB2 : in  std_logic;
          CSB1 : in  std_logic;
          CSB2 : in  std_logic;
          I1   : in  std_logic_vector(15 DOWNTO 0);
          I2   : in  std_logic_vector(15 DOWNTO 0);
          O1   : out std_logic_vector(15 DOWNTO 0);
          O2   : out std_logic_vector(15 DOWNTO 0)
          );
  END COMPONENT;

  SIGNAL ti_low : std_logic;
  SIGNAL ti_hi  : std_logic;
  SIGNAL we_n   : std_logic;

  SIGNAL data_in    : std_logic_vector(15 DOWNTO 0);
  SIGNAL data_out_A : std_logic_vector(15 DOWNTO 0);
  SIGNAL data_out_B : std_logic_vector(15 DOWNTO 0);
  SIGNAL data_out_C : std_logic_vector(15 DOWNTO 0);
  SIGNAL data_out_D : std_logic_vector(15 DOWNTO 0);
  SIGNAL bus_hi     : std_logic_vector(15 DOWNTO 0);
  SIGNAL bus_hi_8   : std_logic_vector(15 DOWNTO 0);

BEGIN

  ti_low <= '0';
  ti_hi <= '1';
  bus_hi <= (OTHERS => '1');
  bus_hi_8 <= (OTHERS => '1');

  we_n <= NOT Write_RegC;

  data_in <= RegPort_C;
  RegPort_A <= data_out_A(15 DOWNTO 8) & data_out_C(7 DOWNTO 0);
  RegPort_B <= data_out_B(15 DOWNTO 8) & data_out_D(7 DOWNTO 0);

  
  REG_FILE_A_RAM : ram16x128
    PORT MAP (
      A1   => Addr_C,
      CE1  => clk,
      WEB1 => we_n,
      OEB1 => ti_hi,
      CSB1 => ti_low,
      I1   => data_in,
      O1   => open,
      
      A2   => Addr_A,
      CE2  => clk,
      WEB2 => ti_hi,
      OEB2 => ti_low,
      CSB2 => ti_low,
      I2   => bus_hi,
      O2   => data_out_A
    );
  REG_FILE_B_RAM : ram16x128
    PORT MAP (
      A1   => Addr_C,
      CE1  => clk,
      WEB1 => we_n,
      OEB1 => ti_hi,
      CSB1 => ti_low,
      I1   => data_in,
      O1   => open,
      
      A2   => Addr_B,
      CE2  => clk,
      WEB2 => ti_hi,
      OEB2 => ti_low,
      CSB2 => ti_low,
      I2   => bus_hi,
      O2   => data_out_B
    );
  
  REG_FILE_C_RAM : ram16x128
    PORT MAP (
      A1   => Addr_C,
      CE1  => clk,
      WEB1 => we_n,
      OEB1 => ti_hi,
      CSB1 => ti_low,
      I1   => data_in,
      O1   => open,
      
      A2   => Addr_A,
      CE2  => clk,
      WEB2 => ti_hi,
      OEB2 => ti_low,
      CSB2 => ti_low,
      I2   => bus_hi,
      O2   => data_out_C
    );
  REG_FILE_D_RAM : ram16x128
    PORT MAP (
      A1   => Addr_C,
      CE1  => clk,
      WEB1 => we_n,
      OEB1 => ti_hi,
      CSB1 => ti_low,
      I1   => data_in,
      O1   => open,
      
      A2   => Addr_B,
      CE2  => clk,
      WEB2 => ti_hi,
      OEB2 => ti_low,
      CSB2 => ti_low,
      I2   => bus_hi,
      O2   => data_out_D
    );
  
END RAMS_4;
