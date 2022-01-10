/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : O-2018.06-SP1
// Date      : Mon Jan 10 10:16:04 2022
/////////////////////////////////////////////////////////////


module sign_mult_8x8_acc ( in, w, out );
  input [7:0] in;
  input [7:0] w;
  output [15:0] out;
  wire   \intadd_0/A[11] , \intadd_0/A[10] , \intadd_0/A[9] , \intadd_0/A[8] ,
         \intadd_0/A[7] , \intadd_0/A[6] , \intadd_0/A[5] , \intadd_0/A[4] ,
         \intadd_0/A[3] , \intadd_0/A[2] , \intadd_0/A[1] , \intadd_0/A[0] ,
         \intadd_0/B[11] , \intadd_0/B[10] , \intadd_0/B[9] , \intadd_0/B[8] ,
         \intadd_0/B[7] , \intadd_0/B[6] , \intadd_0/B[5] , \intadd_0/B[4] ,
         \intadd_0/B[3] , \intadd_0/B[2] , \intadd_0/B[1] , \intadd_0/B[0] ,
         \intadd_0/CI , \intadd_0/SUM[11] , \intadd_0/SUM[10] ,
         \intadd_0/SUM[9] , \intadd_0/SUM[8] , \intadd_0/SUM[7] ,
         \intadd_0/SUM[6] , \intadd_0/SUM[5] , \intadd_0/SUM[4] ,
         \intadd_0/SUM[3] , \intadd_0/SUM[2] , \intadd_0/SUM[1] ,
         \intadd_0/SUM[0] , \intadd_0/n12 , \intadd_0/n11 , \intadd_0/n10 ,
         \intadd_0/n9 , \intadd_0/n8 , \intadd_0/n7 , \intadd_0/n6 ,
         \intadd_0/n5 , \intadd_0/n4 , \intadd_0/n3 , \intadd_0/n2 ,
         \intadd_0/n1 , n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13,
         n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27,
         n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41,
         n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55,
         n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69,
         n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83,
         n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97,
         n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109,
         n110, n111, n112, n113, n114, n115, n116;
  assign out[15] = \intadd_0/n1 ;

  FA1D0BWP7T30P140HVT \intadd_0/U13  ( .A(\intadd_0/B[0] ), .B(\intadd_0/A[0] ), .CI(\intadd_0/CI ), .CO(\intadd_0/n12 ), .S(\intadd_0/SUM[0] ) );
  FA1D0BWP7T30P140HVT \intadd_0/U12  ( .A(\intadd_0/B[1] ), .B(\intadd_0/A[1] ), .CI(\intadd_0/n12 ), .CO(\intadd_0/n11 ), .S(\intadd_0/SUM[1] ) );
  FA1D0BWP7T30P140HVT \intadd_0/U11  ( .A(\intadd_0/B[2] ), .B(\intadd_0/A[2] ), .CI(\intadd_0/n11 ), .CO(\intadd_0/n10 ), .S(\intadd_0/SUM[2] ) );
  FA1D0BWP7T30P140HVT \intadd_0/U10  ( .A(\intadd_0/B[3] ), .B(\intadd_0/A[3] ), .CI(\intadd_0/n10 ), .CO(\intadd_0/n9 ), .S(\intadd_0/SUM[3] ) );
  FA1D0BWP7T30P140HVT \intadd_0/U9  ( .A(\intadd_0/B[4] ), .B(\intadd_0/A[4] ), 
        .CI(\intadd_0/n9 ), .CO(\intadd_0/n8 ), .S(\intadd_0/SUM[4] ) );
  FA1D0BWP7T30P140HVT \intadd_0/U8  ( .A(\intadd_0/B[5] ), .B(\intadd_0/A[5] ), 
        .CI(\intadd_0/n8 ), .CO(\intadd_0/n7 ), .S(\intadd_0/SUM[5] ) );
  FA1D0BWP7T30P140HVT \intadd_0/U7  ( .A(\intadd_0/B[6] ), .B(\intadd_0/A[6] ), 
        .CI(\intadd_0/n7 ), .CO(\intadd_0/n6 ), .S(\intadd_0/SUM[6] ) );
  FA1D0BWP7T30P140HVT \intadd_0/U6  ( .A(\intadd_0/B[7] ), .B(\intadd_0/A[7] ), 
        .CI(\intadd_0/n6 ), .CO(\intadd_0/n5 ), .S(\intadd_0/SUM[7] ) );
  FA1D0BWP7T30P140HVT \intadd_0/U5  ( .A(\intadd_0/B[8] ), .B(\intadd_0/A[8] ), 
        .CI(\intadd_0/n5 ), .CO(\intadd_0/n4 ), .S(\intadd_0/SUM[8] ) );
  FA1D0BWP7T30P140HVT \intadd_0/U4  ( .A(\intadd_0/B[9] ), .B(\intadd_0/A[9] ), 
        .CI(\intadd_0/n4 ), .CO(\intadd_0/n3 ), .S(\intadd_0/SUM[9] ) );
  FA1D0BWP7T30P140HVT \intadd_0/U3  ( .A(\intadd_0/B[10] ), .B(
        \intadd_0/A[10] ), .CI(\intadd_0/n3 ), .CO(\intadd_0/n2 ), .S(
        \intadd_0/SUM[10] ) );
  FA1D0BWP7T30P140HVT \intadd_0/U2  ( .A(\intadd_0/B[11] ), .B(
        \intadd_0/A[11] ), .CI(\intadd_0/n2 ), .CO(\intadd_0/n1 ), .S(
        \intadd_0/SUM[11] ) );
  CKND0BWP7T30P140HVT U1 ( .I(w[2]), .ZN(n54) );
  CKND0BWP7T30P140HVT U2 ( .I(w[1]), .ZN(n29) );
  OAI22D0BWP7T30P140HVT U3 ( .A1(w[5]), .A2(n31), .B1(w[6]), .B2(n106), .ZN(
        n24) );
  CKND0BWP7T30P140HVT U4 ( .I(n69), .ZN(n38) );
  CKND0BWP7T30P140HVT U5 ( .I(w[3]), .ZN(n64) );
  CKND0BWP7T30P140HVT U6 ( .I(w[4]), .ZN(n72) );
  CKND0BWP7T30P140HVT U7 ( .I(in[4]), .ZN(n17) );
  CKND0BWP7T30P140HVT U8 ( .I(w[5]), .ZN(n82) );
  CKND0BWP7T30P140HVT U9 ( .I(in[2]), .ZN(n4) );
  OAI22D0BWP7T30P140HVT U10 ( .A1(w[3]), .A2(n31), .B1(w[4]), .B2(n106), .ZN(
        n8) );
  OAI22D0BWP7T30P140HVT U11 ( .A1(n69), .A2(n13), .B1(n116), .B2(n22), .ZN(n16) );
  AO21D0BWP7T30P140HVT U12 ( .A1(n108), .A2(w[5]), .B(n14), .Z(n15) );
  OAI22D0BWP7T30P140HVT U13 ( .A1(w[5]), .A2(n106), .B1(w[4]), .B2(n31), .ZN(
        n14) );
  ND2D0BWP7T30P140HVT U14 ( .A1(n15), .A2(n16), .ZN(n27) );
  OA31D0BWP7T30P140HVT U15 ( .A1(in[3]), .A2(n4), .A3(n110), .B(n114), .Z(n69)
         );
  OAI22D0BWP7T30P140HVT U16 ( .A1(n105), .A2(n55), .B1(n103), .B2(n30), .ZN(
        n34) );
  OAI22D0BWP7T30P140HVT U17 ( .A1(n50), .A2(n32), .B1(w[6]), .B2(n31), .ZN(n33) );
  CKAN2D0BWP7T30P140HVT U18 ( .A1(n106), .A2(n100), .Z(n32) );
  AOI21D0BWP7T30P140HVT U19 ( .A1(n108), .A2(w[6]), .B(n24), .ZN(n36) );
  ND2D0BWP7T30P140HVT U20 ( .A1(w[0]), .A2(n84), .ZN(n37) );
  ND2D0BWP7T30P140HVT U21 ( .A1(n33), .A2(n34), .ZN(n60) );
  NR2D0BWP7T30P140HVT U22 ( .A1(n108), .A2(n100), .ZN(n50) );
  OAI22D0BWP7T30P140HVT U23 ( .A1(n69), .A2(n49), .B1(n116), .B2(n59), .ZN(n51) );
  MAOI22D0BWP7T30P140HVT U24 ( .A1(n39), .A2(n38), .B1(n116), .B2(n49), .ZN(
        n48) );
  OAI221D0BWP7T30P140HVT U25 ( .A1(n84), .A2(n42), .B1(n105), .B2(n41), .C(
        in[7]), .ZN(n46) );
  MAOI22D0BWP7T30P140HVT U26 ( .A1(n84), .A2(n65), .B1(n103), .B2(n55), .ZN(
        n61) );
  OAI22D0BWP7T30P140HVT U27 ( .A1(n69), .A2(n59), .B1(n116), .B2(n68), .ZN(n71) );
  CKND0BWP7T30P140HVT U28 ( .I(n105), .ZN(n84) );
  AOI21D0BWP7T30P140HVT U29 ( .A1(n116), .A2(n69), .B(n68), .ZN(n87) );
  CKND0BWP7T30P140HVT U30 ( .I(n71), .ZN(n85) );
  CKND0BWP7T30P140HVT U31 ( .I(w[6]), .ZN(n94) );
  CKND0BWP7T30P140HVT U32 ( .I(n103), .ZN(n96) );
  AOI221D0BWP7T30P140HVT U33 ( .A1(in[4]), .A2(in[5]), .B1(n17), .B2(n80), .C(
        n93), .ZN(n92) );
  OAI22D0BWP7T30P140HVT U34 ( .A1(n100), .A2(in[5]), .B1(n80), .B2(w[7]), .ZN(
        n91) );
  ND2D0BWP7T30P140HVT U35 ( .A1(in[1]), .A2(n1), .ZN(n31) );
  CKND0BWP7T30P140HVT U36 ( .I(in[3]), .ZN(n115) );
  OAI22D0BWP7T30P140HVT U37 ( .A1(n69), .A2(n5), .B1(n116), .B2(n9), .ZN(n7)
         );
  AO21D0BWP7T30P140HVT U38 ( .A1(n108), .A2(w[3]), .B(n3), .Z(n6) );
  OAI22D0BWP7T30P140HVT U39 ( .A1(w[2]), .A2(n31), .B1(w[3]), .B2(n106), .ZN(
        n3) );
  ND3D0BWP7T30P140HVT U40 ( .A1(in[3]), .A2(n110), .A3(n4), .ZN(n114) );
  CKND0BWP7T30P140HVT U41 ( .I(n23), .ZN(n116) );
  ND2D0BWP7T30P140HVT U42 ( .A1(n6), .A2(n7), .ZN(\intadd_0/A[1] ) );
  AOI21D0BWP7T30P140HVT U43 ( .A1(n108), .A2(w[4]), .B(n8), .ZN(n11) );
  OA22D0BWP7T30P140HVT U44 ( .A1(n69), .A2(n9), .B1(n116), .B2(n13), .Z(n10)
         );
  ND2D0BWP7T30P140HVT U45 ( .A1(w[0]), .A2(n93), .ZN(n12) );
  AOI32D0BWP7T30P140HVT U46 ( .A1(n93), .A2(in[5]), .A3(n41), .B1(n92), .B2(
        in[5]), .ZN(n19) );
  MAOI22D0BWP7T30P140HVT U47 ( .A1(n39), .A2(n23), .B1(n69), .B2(n22), .ZN(n28) );
  AOI21D0BWP7T30P140HVT U48 ( .A1(n52), .A2(n51), .B(n74), .ZN(n57) );
  AO21D0BWP7T30P140HVT U49 ( .A1(n110), .A2(n100), .B(n50), .Z(n52) );
  CKND0BWP7T30P140HVT U50 ( .I(n97), .ZN(n90) );
  CKND0BWP7T30P140HVT U51 ( .I(in[5]), .ZN(n80) );
  CKND0BWP7T30P140HVT U52 ( .I(in[6]), .ZN(n42) );
  CKND0BWP7T30P140HVT U53 ( .I(in[7]), .ZN(n101) );
  CKND0BWP7T30P140HVT U54 ( .I(w[7]), .ZN(n100) );
  MAOI22D0BWP7T30P140HVT U55 ( .A1(n96), .A2(n95), .B1(n105), .B2(n102), .ZN(
        n98) );
  OA21D0BWP7T30P140HVT U56 ( .A1(n93), .A2(n92), .B(n91), .Z(n99) );
  CKND0BWP7T30P140HVT U57 ( .I(in[0]), .ZN(n1) );
  CKND0BWP7T30P140HVT U58 ( .I(w[0]), .ZN(n41) );
  CKND0BWP7T30P140HVT U59 ( .I(in[1]), .ZN(n110) );
  ND2D0BWP7T30P140HVT U60 ( .A1(in[0]), .A2(in[1]), .ZN(n106) );
  NR2D0BWP7T30P140HVT U61 ( .A1(in[1]), .A2(n1), .ZN(n108) );
  AO21D0BWP7T30P140HVT U62 ( .A1(w[0]), .A2(n23), .B(n109), .Z(n113) );
  AO21D0BWP7T30P140HVT U63 ( .A1(n108), .A2(w[2]), .B(n2), .Z(n112) );
  OAI22D0BWP7T30P140HVT U64 ( .A1(w[1]), .A2(n31), .B1(w[2]), .B2(n106), .ZN(
        n2) );
  ND2D0BWP7T30P140HVT U65 ( .A1(n112), .A2(n113), .ZN(\intadd_0/CI ) );
  OA31D0BWP7T30P140HVT U66 ( .A1(w[0]), .A2(n116), .A3(n115), .B(n114), .Z(
        \intadd_0/B[0] ) );
  OAI221D0BWP7T30P140HVT U67 ( .A1(in[6]), .A2(in[7]), .B1(n42), .B2(n101), 
        .C(n105), .ZN(n103) );
  OAI22D0BWP7T30P140HVT U68 ( .A1(n105), .A2(n104), .B1(n103), .B2(n102), .ZN(
        \intadd_0/A[10] ) );
  NR2D0BWP7T30P140HVT U69 ( .A1(n1), .A2(n41), .ZN(out[0]) );
  AOI21D0BWP7T30P140HVT U70 ( .A1(n105), .A2(n103), .B(n104), .ZN(
        \intadd_0/A[11] ) );
  CKND0BWP7T30P140HVT U71 ( .I(\intadd_0/A[10] ), .ZN(\intadd_0/B[11] ) );
  CKND0BWP7T30P140HVT U72 ( .I(\intadd_0/SUM[0] ), .ZN(out[3]) );
  CKND0BWP7T30P140HVT U73 ( .I(\intadd_0/SUM[1] ), .ZN(out[4]) );
  CKND0BWP7T30P140HVT U74 ( .I(\intadd_0/SUM[2] ), .ZN(out[5]) );
  CKND0BWP7T30P140HVT U75 ( .I(\intadd_0/SUM[3] ), .ZN(out[6]) );
  CKND0BWP7T30P140HVT U76 ( .I(\intadd_0/SUM[4] ), .ZN(out[7]) );
  CKND0BWP7T30P140HVT U77 ( .I(\intadd_0/SUM[5] ), .ZN(out[8]) );
  CKND0BWP7T30P140HVT U78 ( .I(\intadd_0/SUM[6] ), .ZN(out[9]) );
  CKND0BWP7T30P140HVT U79 ( .I(\intadd_0/SUM[7] ), .ZN(out[10]) );
  CKND0BWP7T30P140HVT U80 ( .I(\intadd_0/SUM[8] ), .ZN(out[11]) );
  CKND0BWP7T30P140HVT U81 ( .I(\intadd_0/SUM[9] ), .ZN(out[12]) );
  CKND0BWP7T30P140HVT U82 ( .I(\intadd_0/SUM[10] ), .ZN(out[13]) );
  CKND0BWP7T30P140HVT U83 ( .I(\intadd_0/SUM[11] ), .ZN(out[14]) );
  AOI22D1BWP7T30P140HVT U84 ( .A1(in[1]), .A2(in[2]), .B1(n4), .B2(n110), .ZN(
        n23) );
  AOI211D0BWP7T30P140HVT U85 ( .A1(in[0]), .A2(w[1]), .B(w[0]), .C(n110), .ZN(
        n109) );
  AOI22D1BWP7T30P140HVT U86 ( .A1(w[0]), .A2(n115), .B1(in[3]), .B2(n41), .ZN(
        n5) );
  AOI22D1BWP7T30P140HVT U87 ( .A1(n29), .A2(in[3]), .B1(n115), .B2(w[1]), .ZN(
        n9) );
  OAI21D1BWP7T30P140HVT U88 ( .A1(n7), .A2(n6), .B(\intadd_0/A[1] ), .ZN(
        \intadd_0/A[0] ) );
  AOI22D1BWP7T30P140HVT U89 ( .A1(in[3]), .A2(in[4]), .B1(n17), .B2(n115), 
        .ZN(n93) );
  AOI22D1BWP7T30P140HVT U90 ( .A1(w[2]), .A2(n115), .B1(in[3]), .B2(n54), .ZN(
        n13) );
  FA1D0BWP7T30P140HVT U91 ( .A(n12), .B(n11), .CI(n10), .CO(\intadd_0/B[2] ), 
        .S(\intadd_0/B[1] ) );
  AOI22D1BWP7T30P140HVT U92 ( .A1(w[3]), .A2(n115), .B1(in[3]), .B2(n64), .ZN(
        n22) );
  OAI21D1BWP7T30P140HVT U93 ( .A1(n16), .A2(n15), .B(n27), .ZN(n21) );
  AOI22D1BWP7T30P140HVT U94 ( .A1(w[1]), .A2(in[5]), .B1(n80), .B2(n29), .ZN(
        n25) );
  AOI22D1BWP7T30P140HVT U95 ( .A1(w[0]), .A2(in[5]), .B1(n80), .B2(n41), .ZN(
        n18) );
  AOI22D1BWP7T30P140HVT U96 ( .A1(n93), .A2(n25), .B1(n92), .B2(n18), .ZN(n20)
         );
  FA1D0BWP7T30P140HVT U97 ( .A(n21), .B(n20), .CI(n19), .CO(\intadd_0/B[3] ), 
        .S(\intadd_0/A[2] ) );
  AOI22D1BWP7T30P140HVT U98 ( .A1(in[3]), .A2(w[4]), .B1(n72), .B2(n115), .ZN(
        n39) );
  AOI22D1BWP7T30P140HVT U99 ( .A1(in[5]), .A2(n42), .B1(in[6]), .B2(n80), .ZN(
        n105) );
  AOI22D1BWP7T30P140HVT U100 ( .A1(w[2]), .A2(in[5]), .B1(n80), .B2(n54), .ZN(
        n40) );
  AOI22D1BWP7T30P140HVT U101 ( .A1(n93), .A2(n40), .B1(n92), .B2(n25), .ZN(n35) );
  FA1D0BWP7T30P140HVT U102 ( .A(n28), .B(n27), .CI(n26), .CO(\intadd_0/B[4] ), 
        .S(\intadd_0/A[3] ) );
  AOI22D1BWP7T30P140HVT U103 ( .A1(w[1]), .A2(n101), .B1(in[7]), .B2(n29), 
        .ZN(n55) );
  AOI22D1BWP7T30P140HVT U104 ( .A1(w[0]), .A2(n101), .B1(in[7]), .B2(n41), 
        .ZN(n30) );
  OAI21D1BWP7T30P140HVT U105 ( .A1(n34), .A2(n33), .B(n60), .ZN(n45) );
  FA1D0BWP7T30P140HVT U106 ( .A(n37), .B(n36), .CI(n35), .CO(n44), .S(n26) );
  AOI22D1BWP7T30P140HVT U107 ( .A1(in[3]), .A2(n82), .B1(w[5]), .B2(n115), 
        .ZN(n49) );
  AOI22D1BWP7T30P140HVT U108 ( .A1(w[3]), .A2(in[5]), .B1(n80), .B2(n64), .ZN(
        n53) );
  AOI22D1BWP7T30P140HVT U109 ( .A1(n93), .A2(n53), .B1(n92), .B2(n40), .ZN(n47) );
  FA1D0BWP7T30P140HVT U110 ( .A(n45), .B(n44), .CI(n43), .CO(\intadd_0/B[5] ), 
        .S(\intadd_0/A[4] ) );
  FA1D0BWP7T30P140HVT U111 ( .A(n48), .B(n47), .CI(n46), .CO(n58), .S(n43) );
  AOI22D1BWP7T30P140HVT U112 ( .A1(in[3]), .A2(n94), .B1(w[6]), .B2(n115), 
        .ZN(n59) );
  AOI211D0BWP7T30P140HVT U113 ( .A1(n110), .A2(n100), .B(n50), .C(n51), .ZN(
        n74) );
  AOI22D1BWP7T30P140HVT U114 ( .A1(w[4]), .A2(in[5]), .B1(n80), .B2(n72), .ZN(
        n63) );
  AOI22D1BWP7T30P140HVT U115 ( .A1(n93), .A2(n63), .B1(n92), .B2(n53), .ZN(n62) );
  AOI22D1BWP7T30P140HVT U116 ( .A1(w[2]), .A2(in[7]), .B1(n101), .B2(n54), 
        .ZN(n65) );
  FA1D0BWP7T30P140HVT U117 ( .A(n58), .B(n57), .CI(n56), .CO(\intadd_0/B[6] ), 
        .S(\intadd_0/A[5] ) );
  AOI22D1BWP7T30P140HVT U118 ( .A1(in[3]), .A2(n100), .B1(w[7]), .B2(n115), 
        .ZN(n68) );
  FA1D0BWP7T30P140HVT U119 ( .A(n62), .B(n61), .CI(n60), .CO(n67), .S(n56) );
  AOI22D1BWP7T30P140HVT U120 ( .A1(w[5]), .A2(in[5]), .B1(n80), .B2(n82), .ZN(
        n70) );
  AOI22D1BWP7T30P140HVT U121 ( .A1(n93), .A2(n70), .B1(n92), .B2(n63), .ZN(n76) );
  AOI22D1BWP7T30P140HVT U122 ( .A1(w[3]), .A2(in[7]), .B1(n101), .B2(n64), 
        .ZN(n73) );
  AOI22D1BWP7T30P140HVT U123 ( .A1(n84), .A2(n73), .B1(n96), .B2(n65), .ZN(n75) );
  FA1D0BWP7T30P140HVT U124 ( .A(n71), .B(n67), .CI(n66), .CO(\intadd_0/B[7] ), 
        .S(\intadd_0/A[6] ) );
  AOI22D1BWP7T30P140HVT U125 ( .A1(w[6]), .A2(in[5]), .B1(n80), .B2(n94), .ZN(
        n81) );
  AOI22D1BWP7T30P140HVT U126 ( .A1(n93), .A2(n81), .B1(n92), .B2(n70), .ZN(n86) );
  AOI22D1BWP7T30P140HVT U127 ( .A1(w[4]), .A2(in[7]), .B1(n101), .B2(n72), 
        .ZN(n83) );
  AOI22D1BWP7T30P140HVT U128 ( .A1(n84), .A2(n83), .B1(n96), .B2(n73), .ZN(n78) );
  FA1D0BWP7T30P140HVT U129 ( .A(n76), .B(n75), .CI(n74), .CO(n77), .S(n66) );
  FA1D0BWP7T30P140HVT U130 ( .A(n79), .B(n78), .CI(n77), .CO(\intadd_0/A[8] ), 
        .S(\intadd_0/A[7] ) );
  AOI22D1BWP7T30P140HVT U131 ( .A1(n92), .A2(n81), .B1(n93), .B2(n91), .ZN(n97) );
  AOI22D1BWP7T30P140HVT U132 ( .A1(w[5]), .A2(in[7]), .B1(n101), .B2(n82), 
        .ZN(n95) );
  AOI22D1BWP7T30P140HVT U133 ( .A1(n84), .A2(n95), .B1(n96), .B2(n83), .ZN(n89) );
  FA1D0BWP7T30P140HVT U134 ( .A(n87), .B(n86), .CI(n85), .CO(n88), .S(n79) );
  FA1D0BWP7T30P140HVT U135 ( .A(n90), .B(n89), .CI(n88), .CO(\intadd_0/B[9] ), 
        .S(\intadd_0/B[8] ) );
  AOI22D1BWP7T30P140HVT U136 ( .A1(w[6]), .A2(n101), .B1(in[7]), .B2(n94), 
        .ZN(n102) );
  FA1D0BWP7T30P140HVT U137 ( .A(n99), .B(n98), .CI(n97), .CO(\intadd_0/B[10] ), 
        .S(\intadd_0/A[9] ) );
  AOI22D1BWP7T30P140HVT U138 ( .A1(w[7]), .A2(n101), .B1(in[7]), .B2(n100), 
        .ZN(n104) );
  NR2D0BWP7T30P140HVT U139 ( .A1(w[1]), .A2(n106), .ZN(n107) );
  AOI21D0BWP7T30P140HVT U140 ( .A1(n108), .A2(w[1]), .B(n107), .ZN(n111) );
  AOI221D0BWP7T30P140HVT U141 ( .A1(out[0]), .A2(n111), .B1(n110), .B2(n111), 
        .C(n109), .ZN(out[1]) );
  OA21D0BWP7T30P140HVT U142 ( .A1(n113), .A2(n112), .B(\intadd_0/CI ), .Z(
        out[2]) );
endmodule

