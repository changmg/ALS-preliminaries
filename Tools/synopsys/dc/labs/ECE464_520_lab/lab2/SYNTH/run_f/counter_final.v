/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : K-2015.06
// Date      : Thu Sep 17 10:26:03 2020
/////////////////////////////////////////////////////////////


module counter ( clock, in, latch, dec, zero );
  input [3:0] in;
  input clock, latch, dec;
  output zero;
  wire   n2, n3, n20, n21, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32,
         n33, n34, n35, n36, n37, n38, n39, n40, n41;
  wire   [3:0] value;

  DFF_X1 value_reg_0_ ( .D(n2), .CK(clock), .Q(value[0]), .QN(n23) );
  DFF_X1 value_reg_1_ ( .D(n20), .CK(clock), .Q(value[1]) );
  DFF_X1 value_reg_2_ ( .D(n3), .CK(clock), .Q(value[2]), .QN(n24) );
  DFF_X1 value_reg_3_ ( .D(n21), .CK(clock), .Q(value[3]) );
  OAI221_X1 U23 ( .B1(n25), .B2(n26), .C1(n27), .C2(n24), .A(n28), .ZN(n3) );
  NAND2_X1 U24 ( .A1(latch), .A2(in[2]), .ZN(n28) );
  INV_X1 U25 ( .A(n29), .ZN(n21) );
  AOI21_X1 U26 ( .B1(n30), .B2(value[3]), .A(n31), .ZN(n29) );
  AND2_X1 U27 ( .A1(in[3]), .A2(latch), .ZN(n31) );
  OAI21_X1 U28 ( .B1(n24), .B2(n26), .A(n27), .ZN(n30) );
  AOI21_X1 U29 ( .B1(n32), .B2(value[1]), .A(n33), .ZN(n27) );
  INV_X1 U30 ( .A(n34), .ZN(n33) );
  NAND2_X1 U31 ( .A1(n35), .A2(n36), .ZN(n20) );
  NAND2_X1 U32 ( .A1(in[1]), .A2(latch), .ZN(n36) );
  MUX2_X1 U33 ( .A(n37), .B(n34), .S(value[1]), .Z(n35) );
  MUX2_X1 U34 ( .A(latch), .B(n23), .S(n32), .Z(n34) );
  NAND2_X1 U35 ( .A1(n32), .A2(n23), .ZN(n37) );
  OAI21_X1 U36 ( .B1(value[0]), .B2(n26), .A(n38), .ZN(n2) );
  INV_X1 U37 ( .A(n39), .ZN(n38) );
  MUX2_X1 U38 ( .A(n40), .B(in[0]), .S(latch), .Z(n39) );
  NOR2_X1 U39 ( .A1(n32), .A2(n23), .ZN(n40) );
  INV_X1 U40 ( .A(n32), .ZN(n26) );
  NOR3_X1 U41 ( .A1(zero), .A2(latch), .A3(n41), .ZN(n32) );
  INV_X1 U42 ( .A(dec), .ZN(n41) );
  NOR2_X1 U43 ( .A1(n25), .A2(value[3]), .ZN(zero) );
  OR3_X1 U44 ( .A1(value[1]), .A2(value[2]), .A3(value[0]), .ZN(n25) );
endmodule

