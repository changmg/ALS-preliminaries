/////////////////////////////////////////////////////////////
// Created by: Synopsys Design Compiler(R)
// Version   : K-2015.06
// Date      : Thu Sep 17 17:03:21 2020
/////////////////////////////////////////////////////////////


module ARITH ( a, b, sel, out1 );
  input [4:0] a;
  input [4:0] b;
  output [4:0] out1;
  input sel;
  wire   N0, N1, N2, N3, N4, N5, N6, N7, N8, N9, N10, N11, N12;

  SUB_UNS_OP sub_45 ( .A(a), .B(b), .Z({N12, N11, N10, N9, N8}) );
  ADD_UNS_OP add_44 ( .A(a), .B(b), .Z({N7, N6, N5, N4, N3}) );
  SELECT_OP C15 ( .DATA1({N7, N6, N5, N4, N3}), .DATA2({N12, N11, N10, N9, N8}), .CONTROL1(N0), .CONTROL2(N1), .Z(out1) );
  GTECH_BUF B_0 ( .A(N2), .Z(N0) );
  GTECH_BUF B_1 ( .A(sel), .Z(N1) );
  GTECH_NOT I_0 ( .A(sel), .Z(N2) );
  GTECH_BUF B_2 ( .A(N2) );
  GTECH_BUF B_3 ( .A(sel) );
endmodule


module COMBO ( Cin1, Cin2, sel, Cout );
  input [4:0] Cin1;
  input [4:0] Cin2;
  output [4:0] Cout;
  input sel;

  wire   [4:0] arth_o;

  ARITH U2_ARITH ( .a(Cin1), .b(Cin2), .sel(sel), .out1(arth_o) );
  ADD_UNS_OP add_68 ( .A(arth_o), .B(Cin1), .Z(Cout) );
endmodule


module MY_DESIGN ( Cin1, Cin2, Cout, data1, data2, sel, clk, out1, out2, out3
 );
  input [4:0] Cin1;
  input [4:0] Cin2;
  output [4:0] Cout;
  input [4:0] data1;
  input [4:0] data2;
  output [4:0] out1;
  output [4:0] out2;
  output [4:0] out3;
  input sel, clk;
  wire   N0, N1, N2, N3, N4, N5, N6, N7, N8, N9, N10, N11, N12, N13, N14;
  wire   [4:0] arth_o;
  wire   [4:0] R1;
  wire   [4:0] R2;
  wire   [4:0] R3;
  wire   [4:0] R4;

  ARITH U1_ARITH ( .a(data1), .b(data2), .sel(sel), .out1(arth_o) );
  COMBO U_COMBO ( .Cin1(Cin1), .Cin2(Cin2), .sel(sel), .Cout(Cout) );
  \**SEQGEN**  \R4_reg[4]  ( .clear(1'b0), .preset(1'b0), .next_state(N14), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(R4[4]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \R4_reg[3]  ( .clear(1'b0), .preset(1'b0), .next_state(N13), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(R4[3]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \R4_reg[2]  ( .clear(1'b0), .preset(1'b0), .next_state(N12), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(R4[2]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \R4_reg[1]  ( .clear(1'b0), .preset(1'b0), .next_state(N11), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(R4[1]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \R4_reg[0]  ( .clear(1'b0), .preset(1'b0), .next_state(N10), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(R4[0]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \R2_reg[4]  ( .clear(1'b0), .preset(1'b0), .next_state(N0), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(R2[4]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \R2_reg[3]  ( .clear(1'b0), .preset(1'b0), .next_state(N1), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(R2[3]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \R2_reg[2]  ( .clear(1'b0), .preset(1'b0), .next_state(N2), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(R2[2]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \R2_reg[1]  ( .clear(1'b0), .preset(1'b0), .next_state(N3), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(R2[1]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \R2_reg[0]  ( .clear(1'b0), .preset(1'b0), .next_state(N4), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(R2[0]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \R3_reg[4]  ( .clear(1'b0), .preset(1'b0), .next_state(N9), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(R3[4]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \R3_reg[3]  ( .clear(1'b0), .preset(1'b0), .next_state(N8), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(R3[3]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \R3_reg[2]  ( .clear(1'b0), .preset(1'b0), .next_state(N7), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(R3[2]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \R3_reg[1]  ( .clear(1'b0), .preset(1'b0), .next_state(N6), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(R3[1]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \R3_reg[0]  ( .clear(1'b0), .preset(1'b0), .next_state(N5), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(R3[0]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \R1_reg[4]  ( .clear(1'b0), .preset(1'b0), .next_state(
        arth_o[4]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(R1[4]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \R1_reg[3]  ( .clear(1'b0), .preset(1'b0), .next_state(
        arth_o[3]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(R1[3]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \R1_reg[2]  ( .clear(1'b0), .preset(1'b0), .next_state(
        arth_o[2]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(R1[2]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \R1_reg[1]  ( .clear(1'b0), .preset(1'b0), .next_state(
        arth_o[1]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(R1[1]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \R1_reg[0]  ( .clear(1'b0), .preset(1'b0), .next_state(
        arth_o[0]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(R1[0]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  ADD_UNS_OP add_23 ( .A(R1), .B(R3), .Z(out1) );
  ADD_UNS_OP add_18 ( .A(R2), .B(R3), .Z({N14, N13, N12, N11, N10}) );
  ADD_UNS_OP add_17 ( .A(data1), .B(data2), .Z({N9, N8, N7, N6, N5}) );
  SUB_UNS_OP sub_25 ( .A(out2), .B(R3), .Z(out3) );
  GTECH_AND2 C17 ( .A(data1[4]), .B(data2[4]), .Z(N0) );
  GTECH_AND2 C18 ( .A(data1[3]), .B(data2[3]), .Z(N1) );
  GTECH_AND2 C19 ( .A(data1[2]), .B(data2[2]), .Z(N2) );
  GTECH_AND2 C20 ( .A(data1[1]), .B(data2[1]), .Z(N3) );
  GTECH_AND2 C21 ( .A(data1[0]), .B(data2[0]), .Z(N4) );
  GTECH_AND2 C22 ( .A(R3[4]), .B(R4[4]), .Z(out2[4]) );
  GTECH_AND2 C23 ( .A(R3[3]), .B(R4[3]), .Z(out2[3]) );
  GTECH_AND2 C24 ( .A(R3[2]), .B(R4[2]), .Z(out2[2]) );
  GTECH_AND2 C25 ( .A(R3[1]), .B(R4[1]), .Z(out2[1]) );
  GTECH_AND2 C26 ( .A(R3[0]), .B(R4[0]), .Z(out2[0]) );
endmodule

