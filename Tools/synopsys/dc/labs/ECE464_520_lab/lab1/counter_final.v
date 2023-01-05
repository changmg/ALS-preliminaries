/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : K-2015.06
// Date      : Wed Sep 16 20:48:22 2020
/////////////////////////////////////////////////////////////


module counter ( clock, in, latch, dec, zero );
  input [3:0] in;
  input clock, latch, dec;
  output zero;
  wire   sub_42_S2_A_0_, sub_42_S2_A_1_, sub_42_S2_A_2_, sub_42_S2_A_3_, n32,
         n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46,
         n47, n48, n49, n50, n51, n52;

  DFF_X1 value_reg_0_ ( .D(n33), .CK(clock), .Q(sub_42_S2_A_0_) );
  DFF_X1 value_reg_1_ ( .D(n51), .CK(clock), .Q(sub_42_S2_A_1_), .QN(n37) );
  DFF_X1 value_reg_2_ ( .D(n34), .CK(clock), .Q(sub_42_S2_A_2_) );
  DFF_X1 value_reg_3_ ( .D(n52), .CK(clock), .Q(sub_42_S2_A_3_), .QN(n32) );
  NOR2_X2 U7 ( .A1(sub_42_S2_A_2_), .A2(sub_42_S2_A_1_), .ZN(n45) );
  NAND2_X2 U9 ( .A1(in[3]), .A2(latch), .ZN(n47) );
  AOI221_X2 U13 ( .B1(latch), .B2(in[0]), .C1(sub_42_S2_A_0_), .C2(n49), .A(
        n41), .ZN(n50) );
  NOR2_X2 U14 ( .A1(n36), .A2(sub_42_S2_A_0_), .ZN(n41) );
  NOR2_X2 U15 ( .A1(latch), .A2(n48), .ZN(n49) );
  NOR3_X2 U16 ( .A1(zero), .A2(latch), .A3(n38), .ZN(n48) );
  NOR4_X2 U17 ( .A1(sub_42_S2_A_0_), .A2(sub_42_S2_A_1_), .A3(sub_42_S2_A_2_), 
        .A4(sub_42_S2_A_3_), .ZN(zero) );
  INV_X4 U18 ( .A(n50), .ZN(n33) );
  INV_X4 U19 ( .A(n42), .ZN(n34) );
  INV_X4 U20 ( .A(n44), .ZN(n35) );
  INV_X4 U21 ( .A(n48), .ZN(n36) );
  INV_X4 U22 ( .A(dec), .ZN(n38) );
  AOI21_X2 U23 ( .B1(n48), .B2(sub_42_S2_A_0_), .A(n49), .ZN(n39) );
  OAI21_X2 U24 ( .B1(n39), .B2(n37), .A(n40), .ZN(n51) );
  AOI22_X2 U25 ( .A1(latch), .A2(in[1]), .B1(n41), .B2(n37), .ZN(n40) );
  OAI21_X2 U26 ( .B1(n36), .B2(n37), .A(n39), .ZN(n43) );
  OAI21_X2 U27 ( .B1(n46), .B2(n32), .A(n47), .ZN(n52) );
  AOI21_X2 U28 ( .B1(sub_42_S2_A_2_), .B2(n48), .A(n43), .ZN(n46) );
  AOI21_X2 U29 ( .B1(n43), .B2(sub_42_S2_A_2_), .A(n35), .ZN(n42) );
  AOI22_X2 U30 ( .A1(n45), .A2(n41), .B1(in[2]), .B2(latch), .ZN(n44) );
endmodule

