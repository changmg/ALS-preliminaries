/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : K-2015.06
// Date      : Thu Sep 17 19:16:17 2020
/////////////////////////////////////////////////////////////


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
  wire   N0, N1, N2, N3, N5, N9, N10, N11, N12, N13, N14, \intadd_1/CI ,
         \intadd_1/n3 , \intadd_1/n2 , \intadd_1/n1 , n3, n4, n5, n6, n7, n8,
         n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36,
         n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50,
         n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64,
         n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78,
         n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92,
         n93, n94, n95, n96, n97, n99, n103, n104, n106, n110, n111, n115,
         n116, n117, n118, n119, n120, n122, n123, n125;
  wire   [4:0] arth_o;
  wire   [4:0] R1;
  wire   [4:0] R2;
  wire   [4:0] R3;
  wire   [4:0] R4;
  assign out1[0] = 1'b0;

  sdnrq1 \R4_reg[4]  ( .D(N14), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(R4[4]) );
  sdnrq1 \R4_reg[3]  ( .D(N13), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(R4[3]) );
  sdnrq1 \R4_reg[2]  ( .D(N12), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(R4[2]) );
  sdnrq1 \R4_reg[1]  ( .D(N11), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(R4[1]) );
  sdnrq1 \R2_reg[4]  ( .D(N0), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(R2[4]) );
  sdnrq1 \R2_reg[3]  ( .D(N1), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(R2[3]) );
  sdnrq1 \R2_reg[2]  ( .D(N2), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(R2[2]) );
  sdnrq1 \R2_reg[0]  ( .D(n125), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(R2[0]) );
  sdnrq1 R_1 ( .D(n104), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(n118) );
  sdnrq1 R_10 ( .D(n111), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(n116) );
  sdnrq1 R_9 ( .D(n106), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(n119) );
  sdnrq1 R_11 ( .D(n103), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(n117) );
  sdnrq1 R_0 ( .D(N5), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(R1[0]) );
  sdnrq1 \R2_reg[1]  ( .D(N3), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(R2[1]) );
  sdnrq1 R_7 ( .D(arth_o[2]), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(R1[2]) );
  sdnrq1 \R1_reg[4]  ( .D(arth_o[4]), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(R1[4]) );
  sdnrq1 \R1_reg[3]  ( .D(arth_o[3]), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(R1[3]) );
  sdnrq1 R_8 ( .D(n110), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(n120) );
  sdnrq1 \R3_reg[4]  ( .D(N9), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(R3[4]) );
  ad01d0 \intadd_1/U2  ( .A(n99), .B(R2[3]), .CI(\intadd_1/n2 ), .CO(
        \intadd_1/n1 ), .S(N13) );
  ad01d0 \intadd_1/U4  ( .A(n115), .B(R2[1]), .CI(\intadd_1/CI ), .CO(
        \intadd_1/n3 ), .S(N11) );
  ad01d0 \intadd_1/U3  ( .A(R3[2]), .B(R2[2]), .CI(\intadd_1/n3 ), .CO(
        \intadd_1/n2 ), .S(N12) );
  sdnrq2 R_6 ( .D(n122), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(R3[2]) );
  sdnrq1 \R4_reg[0]  ( .D(N10), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(R4[0]) );
  sdnrq1 \R3_reg[3]  ( .D(n123), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(R3[3]) );
  nd02d0 U20 ( .A1(data1[0]), .A2(data2[0]), .ZN(n97) );
  nd02d0 U21 ( .A1(n94), .A2(n93), .ZN(n92) );
  invbd4 U22 ( .I(n56), .ZN(n3) );
  an02d0 U23 ( .A1(n4), .A2(n83), .Z(Cout[0]) );
  an02d0 U24 ( .A1(n99), .A2(R4[3]), .Z(out2[3]) );
  an02d0 U25 ( .A1(n115), .A2(R4[1]), .Z(out2[1]) );
  an02d0 U26 ( .A1(R4[0]), .A2(R1[0]), .Z(out2[0]) );
  inv0d1 U27 ( .I(n116), .ZN(n115) );
  an02d0 U28 ( .A1(R3[4]), .A2(R4[4]), .Z(out2[4]) );
  an02d0 U29 ( .A1(R3[2]), .A2(R4[2]), .Z(out2[2]) );
  or02d1 U30 ( .A1(Cin2[0]), .A2(n56), .Z(n83) );
  inv0d0 U31 ( .I(Cin2[1]), .ZN(n5) );
  inv0d0 U32 ( .I(Cin2[3]), .ZN(n11) );
  or02d0 U33 ( .A1(n9), .A2(Cin1[1]), .Z(n60) );
  inv0d0 U34 ( .I(data1[3]), .ZN(n48) );
  an02d0 U35 ( .A1(data1[1]), .A2(data2[1]), .Z(N3) );
  inv0d0 U36 ( .I(Cin2[2]), .ZN(n8) );
  inv0d0 U37 ( .I(data1[1]), .ZN(n29) );
  inv0d0 U38 ( .I(data2[0]), .ZN(n33) );
  inv0d1 U39 ( .I(R1[0]), .ZN(n63) );
  nd02d1 U40 ( .A1(n19), .A2(n117), .ZN(n20) );
  or02d0 U41 ( .A1(n14), .A2(Cin1[3]), .Z(n16) );
  cg01d0 U42 ( .A(n30), .B(n29), .CI(n97), .CO(n87) );
  inv0d0 U43 ( .I(data2[1]), .ZN(n30) );
  cg01d0 U44 ( .A(data2[2]), .B(n89), .CI(n34), .CO(n52) );
  inv0d0 U45 ( .I(data1[2]), .ZN(n34) );
  inv0d0 U46 ( .I(n35), .ZN(n36) );
  cg01d0 U47 ( .A(data2[3]), .B(n52), .CI(n48), .CO(n54) );
  cg01d0 U48 ( .A(data2[1]), .B(n41), .CI(n29), .CO(n89) );
  or02d0 U49 ( .A1(n82), .A2(n3), .Z(n4) );
  inv0d0 U50 ( .I(n78), .ZN(n80) );
  inv0d0 U51 ( .I(n65), .ZN(n67) );
  cg01d0 U52 ( .A(n49), .B(n48), .CI(n47), .CO(n51) );
  inv0d0 U53 ( .I(data2[3]), .ZN(n49) );
  inv0d0 U54 ( .I(n45), .ZN(n46) );
  inv0d0 U55 ( .I(n44), .ZN(n111) );
  an02d1 U56 ( .A1(data1[2]), .A2(data2[2]), .Z(N2) );
  an02d0 U57 ( .A1(data1[3]), .A2(data2[3]), .Z(N1) );
  an02d0 U58 ( .A1(data2[4]), .A2(data1[4]), .Z(N0) );
  an02d0 U59 ( .A1(R2[0]), .A2(R1[0]), .Z(\intadd_1/CI ) );
  inv0d1 U60 ( .I(n72), .ZN(n22) );
  nd02d0 U61 ( .A1(n71), .A2(n120), .ZN(n73) );
  nr02d0 U62 ( .A1(n63), .A2(R4[0]), .ZN(out3[0]) );
  mx02d0 U64 ( .I0(Cin2[1]), .I1(n5), .S(sel), .Z(n7) );
  nr02d0 U65 ( .A1(n7), .A2(Cin1[0]), .ZN(n78) );
  inv0d0 U66 ( .I(Cin2[0]), .ZN(n6) );
  mx02d0 U67 ( .I0(Cin2[0]), .I1(n6), .S(sel), .Z(n82) );
  invbd2 U68 ( .I(sel), .ZN(n56) );
  nd02d0 U69 ( .A1(n7), .A2(Cin1[0]), .ZN(n79) );
  oai21d1 U70 ( .B1(n78), .B2(n83), .A(n79), .ZN(n62) );
  mx02d0 U71 ( .I0(Cin2[2]), .I1(n8), .S(n3), .Z(n9) );
  nd02d0 U72 ( .A1(n9), .A2(Cin1[1]), .ZN(n59) );
  inv0d1 U73 ( .I(n59), .ZN(n10) );
  aoi21d1 U74 ( .B1(n62), .B2(n60), .A(n10), .ZN(n69) );
  mx02d0 U75 ( .I0(Cin2[3]), .I1(n11), .S(n3), .Z(n12) );
  nr02d0 U76 ( .A1(n12), .A2(Cin1[2]), .ZN(n65) );
  nd02d0 U77 ( .A1(n12), .A2(Cin1[2]), .ZN(n66) );
  ora21d1 U78 ( .B1(n69), .B2(n65), .A(n66), .Z(n18) );
  inv0d0 U79 ( .I(Cin2[4]), .ZN(n13) );
  mx02d0 U80 ( .I0(Cin2[4]), .I1(n13), .S(n3), .Z(n14) );
  nd02d0 U81 ( .A1(n14), .A2(Cin1[3]), .ZN(n15) );
  nd02d0 U82 ( .A1(n16), .A2(n15), .ZN(n17) );
  xr02d2 U83 ( .A1(n18), .A2(n17), .Z(Cout[4]) );
  bufbd2 U84 ( .I(R3[3]), .Z(n99) );
  inv0d1 U85 ( .I(n118), .ZN(n19) );
  nd02d1 U86 ( .A1(n20), .A2(n119), .ZN(n71) );
  inv0d1 U87 ( .I(R3[3]), .ZN(n84) );
  inv0d1 U88 ( .I(R1[3]), .ZN(n21) );
  nd02d2 U89 ( .A1(n84), .A2(n21), .ZN(n75) );
  an03d1 U90 ( .A1(n71), .A2(n120), .A3(n75), .Z(n25) );
  nd02d2 U91 ( .A1(R1[2]), .A2(R3[2]), .ZN(n72) );
  nd02d2 U92 ( .A1(n22), .A2(n75), .ZN(n23) );
  nd02d0 U93 ( .A1(R1[3]), .A2(R3[3]), .ZN(n74) );
  nd02d0 U94 ( .A1(n23), .A2(n74), .ZN(n26) );
  xn02d1 U95 ( .A1(R3[4]), .A2(R1[4]), .ZN(n24) );
  oai21d1 U96 ( .B1(n25), .B2(n26), .A(n24), .ZN(n28) );
  or03d1 U97 ( .A1(n26), .A2(n25), .A3(n24), .Z(n27) );
  nd02d2 U98 ( .A1(n28), .A2(n27), .ZN(out1[4]) );
  nr02d0 U99 ( .A1(data1[2]), .A2(data2[2]), .ZN(n86) );
  nr02d0 U100 ( .A1(n87), .A2(n86), .ZN(n31) );
  nr02d0 U101 ( .A1(n31), .A2(N2), .ZN(n47) );
  nr02d0 U102 ( .A1(data1[3]), .A2(data2[3]), .ZN(n32) );
  nr02d0 U103 ( .A1(N1), .A2(n32), .ZN(n35) );
  xn02d1 U104 ( .A1(n47), .A2(n35), .ZN(n123) );
  nr02d0 U105 ( .A1(data1[0]), .A2(n33), .ZN(n41) );
  xn02d1 U106 ( .A1(n52), .A2(n36), .ZN(n37) );
  nd02d0 U107 ( .A1(n37), .A2(n3), .ZN(n39) );
  nd02d0 U108 ( .A1(n123), .A2(n56), .ZN(n38) );
  nd02d0 U109 ( .A1(n39), .A2(n38), .ZN(arth_o[3]) );
  nr02d0 U110 ( .A1(data1[1]), .A2(data2[1]), .ZN(n40) );
  nr02d0 U111 ( .A1(N3), .A2(n40), .ZN(n42) );
  xr02d1 U112 ( .A1(n42), .A2(n41), .Z(n43) );
  xn02d1 U113 ( .A1(n97), .A2(n42), .ZN(n44) );
  mx02d0 U114 ( .I0(n43), .I1(n44), .S(n56), .Z(n45) );
  nd02d0 U115 ( .A1(n45), .A2(n44), .ZN(n106) );
  nd02d0 U116 ( .A1(n111), .A2(n46), .ZN(n103) );
  nr02d0 U117 ( .A1(data2[4]), .A2(data1[4]), .ZN(n50) );
  nr02d0 U118 ( .A1(N0), .A2(n50), .ZN(n55) );
  xn02d1 U119 ( .A1(n51), .A2(n55), .ZN(N9) );
  nr02d0 U120 ( .A1(n55), .A2(n54), .ZN(n53) );
  aor211d1 U121 ( .C1(n55), .C2(n54), .A(n56), .B(n53), .Z(n58) );
  nd02d0 U122 ( .A1(N9), .A2(n56), .ZN(n57) );
  nd02d0 U123 ( .A1(n58), .A2(n57), .ZN(arth_o[4]) );
  nd02d0 U124 ( .A1(n60), .A2(n59), .ZN(n61) );
  xn02d1 U125 ( .A1(n62), .A2(n61), .ZN(Cout[2]) );
  nd02d0 U126 ( .A1(n117), .A2(n119), .ZN(n64) );
  xr02d1 U127 ( .A1(n64), .A2(n63), .Z(out1[1]) );
  nd02d0 U128 ( .A1(n67), .A2(n66), .ZN(n68) );
  xr02d1 U129 ( .A1(n69), .A2(n68), .Z(Cout[3]) );
  nd02d0 U130 ( .A1(n120), .A2(n72), .ZN(n70) );
  xn02d1 U131 ( .A1(n71), .A2(n70), .ZN(out1[2]) );
  nd02d0 U132 ( .A1(n73), .A2(n72), .ZN(n77) );
  nd02d0 U133 ( .A1(n75), .A2(n74), .ZN(n76) );
  xn02d1 U134 ( .A1(n77), .A2(n76), .ZN(out1[3]) );
  nd02d0 U135 ( .A1(n80), .A2(n79), .ZN(n81) );
  xr02d1 U136 ( .A1(n81), .A2(n83), .Z(Cout[1]) );
  nr02d0 U137 ( .A1(n84), .A2(R4[3]), .ZN(n85) );
  nr02d0 U138 ( .A1(n116), .A2(R4[1]), .ZN(n91) );
  nr02d0 U139 ( .A1(out3[0]), .A2(n91), .ZN(n94) );
  nd12d0 U140 ( .A1(R4[2]), .A2(R3[2]), .ZN(n93) );
  nr02d0 U141 ( .A1(n92), .A2(n85), .ZN(n95) );
  aoi21d1 U142 ( .B1(n85), .B2(n92), .A(n95), .ZN(out3[3]) );
  nr02d0 U143 ( .A1(N2), .A2(n86), .ZN(n88) );
  xn02d1 U144 ( .A1(n87), .A2(n88), .ZN(n122) );
  xr02d1 U145 ( .A1(n89), .A2(n88), .Z(n90) );
  mx02d0 U146 ( .I0(n122), .I1(n90), .S(n3), .Z(arth_o[2]) );
  aoi21d1 U147 ( .B1(n91), .B2(out3[0]), .A(n94), .ZN(out3[1]) );
  ora21d1 U148 ( .B1(n94), .B2(n93), .A(n92), .Z(out3[2]) );
  an12d1 U149 ( .A2(R3[4]), .A1(R4[4]), .Z(n96) );
  xn02d1 U150 ( .A1(n96), .A2(n95), .ZN(out3[4]) );
  xr03d1 U151 ( .A1(\intadd_1/n1 ), .A2(R3[4]), .A3(R2[4]), .Z(N14) );
  xr02d1 U154 ( .A1(data1[0]), .A2(data2[0]), .Z(N5) );
  inv0d0 U155 ( .I(N5), .ZN(n104) );
  inv0d0 U163 ( .I(n97), .ZN(n125) );
  xr02d1 U164 ( .A1(R2[0]), .A2(R1[0]), .Z(N10) );
  or02d0 U165 ( .A1(n122), .A2(arth_o[2]), .Z(n110) );
endmodule

