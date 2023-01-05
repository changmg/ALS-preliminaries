`define   RESET_STATE  3'b000 
`define   FETCH_INSTR  3'b001
`define   READ_OPS     3'b010
`define   EXECUTE      3'b011
`define   WRITEBACK    3'b100

module TOP(Clk, Reset, Crnt_Instrn, Zro_Flag, Carry_Flag, Neg_Flag, Return_Addr, Current_State, PC);
        input                   Clk;
        input                   Reset;
        input   [31:0]  Crnt_Instrn;            // Current Executing Inst
        input           Zro_Flag, Carry_Flag, Neg_Flag; // Flags from ALU or Stack
        input   [7:0]   Return_Addr;
        output  [2:0]   Current_State;          // CurrentState from Control FSM 
        output  [7:0]   PC;     // Program Count

        wire                    Incrmnt_PC, Ld_Brnch_Addr, Ld_Rtn_Addr;
        wire    [2:0]   CurrentState;

        FSM     I_FSM (
                .Clk(Clk),
                .Reset(Reset),
                .CurrentState(CurrentState)
        );


        DECODE  I_DECODE (
                .Zro_Flag(Zro_Flag),
                .Carry_Flag(Carry_Flag),
                .Neg_Flag(Neg_Flag),
                .CurrentState(CurrentState),
                .Crnt_Instrn(Crnt_Instrn),
                .Incrmnt_PC(Incrmnt_PC),
                .Ld_Brnch_Addr(Ld_Brnch_Addr),
                .Ld_Rtn_Addr(Ld_Rtn_Addr)
        );


        COUNT   I_COUNT (
                .Reset(Reset),
                .Clk(Clk),
                .Incrmnt_PC(Incrmnt_PC),
                .Ld_Brnch_Addr(Ld_Brnch_Addr),
                .Ld_Rtn_Addr(Ld_Rtn_Addr),
                .Imm_Addr(Crnt_Instrn[7:0]),
                .Return_Addr(Return_Addr),
                .PC(PC)
        );


        assign  Current_State   = CurrentState;

endmodule


module FSM(Clk, Reset, CurrentState);

        input                   Clk, Reset;     // CPU Clock
                                                // CPU Reset
        output  [2:0] CurrentState;     // Current State of FSM

        reg [2:0]       Current_State, Next_State;

        always @(Reset or Current_State) begin
                case (Current_State)
                `RESET_STATE: begin
                        Next_State      <= `FETCH_INSTR;
                end
                `FETCH_INSTR: begin
                        Next_State      <= `READ_OPS;
                end
                `READ_OPS: begin
                        Next_State      <= `EXECUTE;
                end
                `EXECUTE: begin
                        Next_State      <= `WRITEBACK;
                end
                `WRITEBACK: begin
                        Next_State      <= `FETCH_INSTR;
                end
default : begin
Next_State <= `RESET_STATE;
end
                endcase
        end


        always @( posedge Clk) begin
                if (Reset == 1'b1) begin
                        Current_State   <= `RESET_STATE;
                end else begin
                        Current_State   <= Next_State;
                end
        end


        assign  CurrentState    = Current_State;

endmodule




module DECODE(Zro_Flag, Carry_Flag, Neg_Flag, CurrentState, Crnt_Instrn, Incrmnt_PC, Ld_Brnch_Addr, Ld_Rtn_Addr);
        input                   Zro_Flag, Carry_Flag, Neg_Flag; // "Zero" Flag from DATA_PATH
                                                                // "Carry" Flag from DATA_PATH
                                                                // "Negative" Flag from DATA_PATH


        input [2:0]     CurrentState;                           // CurrentState from FSM


        input   [31:0]  Crnt_Instrn;                            // Current instruction under execution
                                                                // from Instruction Latch


        output                  Incrmnt_PC, Ld_Brnch_Addr, Ld_Rtn_Addr; // Increments PC (in WRITEBACK cycle)
        reg                     Incrmnt_PC;                     // appended automatically by vhdl2verilog.

        // Load Immediate add from Instrn Latch 
        // into PC (in WRITEBACK cycle)
        // Load Return addr from Stack into PC (in WRITEBACK cycle)

        reg                     Brnch_Addr, Rtn_Addr, Take_Branch;
        reg                     Neg, Carry, Zro, Jmp;

        always @(Take_Branch or CurrentState or Crnt_Instrn or Zro_Flag or Carry_Flag or Neg_Flag or Brnch_Addr or Rtn_Addr) begin


                Brnch_Addr      <= 1'b0;
                Rtn_Addr        <= 1'b0;

                //  Determine if Jmp on False or Jmp on True
                if ((Crnt_Instrn[25]) == 1'b1) begin
                        Neg     =  ~Neg_Flag;
                        Carry   =  ~Carry_Flag;
                        Zro     =  ~Zro_Flag;
                        Jmp     = 1'b0;
                end else begin
                        Neg     = Neg_Flag;
                        Carry   = Carry_Flag;
                        Zro     = Zro_Flag;
                        Jmp     = 1'b1;
                end


                //  Determines which of the CONDITIONs needs to be checked and whether to jmp
                if (Crnt_Instrn[23:16] == 8'b00000000) begin
                        Take_Branch     <= Neg;
                end else if (Crnt_Instrn[23:16] == 8'b00000001) begin
                        Take_Branch     <= Zro;
                end else if (Crnt_Instrn[23:16] == 8'b00000010) begin
                        Take_Branch     <= Carry;
                end else if (Crnt_Instrn[23:16] == 8'b00111111) begin
                        Take_Branch     <= Jmp;
                end else begin
                        Take_Branch     <= 1'b0;
                end


                case (CurrentState)
                `WRITEBACK: begin
                        if (Crnt_Instrn[31:30] == 2'b00) begin
                                // For Jmp/Call with condition check
                                if ((Crnt_Instrn[29] == 1'b1 || Crnt_Instrn[28] == 1'b1) && Take_Branch == 1'b1) begin
                                        Brnch_Addr      <= 1'b1;
                                end
                                // For Return
                                if (Crnt_Instrn[27] == 1'b1) begin
                                        Rtn_Addr        <= 1'b1;
                                end
                        end
                        // If not Jmping or Rtrning the increment PC
                        if (Rtn_Addr == 1'b1 || Brnch_Addr == 1'b1) begin
                                Incrmnt_PC      <= 1'b0;
                        end else begin
                                Incrmnt_PC      <= 1'b1;
                        end
                end
                default: begin
                        Incrmnt_PC      <= 1'b0;
                end
                endcase
        end


        assign  Ld_Brnch_Addr   = Brnch_Addr;
        assign  Ld_Rtn_Addr     = Rtn_Addr;

endmodule



module COUNT(Reset, Clk, Incrmnt_PC, Ld_Brnch_Addr, Ld_Rtn_Addr, Imm_Addr, Return_Addr, PC);
        input                   Reset, Clk, Incrmnt_PC, Ld_Brnch_Addr, Ld_Rtn_Addr;     // Reset for the PC
                                                                                        // CPU Clock
                                                                                        // Increment PC
                                                                                        // Load Jmp/Call Addr from instruction
                                                                                        // Load Return Addr
        input   [7:0]   Imm_Addr, Return_Addr;  // Immediate Addr for Jmp/Call
                                                // Return addr from Stack

        output  [7:0]   PC;     // Addr of instruction to be fetched in
                                // the next Fetch Cycle

        reg     [7:0]   PCint;

        always @(posedge Clk) begin
                if (Reset == 1'b1) begin
                        PCint   <= 8'b00000000;
                end else if (Incrmnt_PC == 1'b1) begin          // Occurs in WRITEBACK cycle
                        PCint   <= PCint + 3'b001;
                end else if (Ld_Rtn_Addr == 1'b1) begin         // Occurs in WRITEBACK cycle
                        PCint   <= Return_Addr;
                end else if (Ld_Brnch_Addr == 1'b1) begin       // Occurs in WRITEBACK cycle
                        PCint   <= Imm_Addr;
                end
        end


        assign  PC      = PCint;

endmodule


