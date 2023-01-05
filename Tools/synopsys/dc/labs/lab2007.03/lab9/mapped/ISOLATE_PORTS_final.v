/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : K-2015.06
// Date      : Thu Sep 17 19:41:49 2020
/////////////////////////////////////////////////////////////


module SET_ISOLATE_PORTS ( Clk, Control, data1, data2, data3, data4, out1, 
        out2 );
  input Clk, Control, data1, data2, data3, data4;
  output out1, out2;
  wire   N3, data12bar, N4, data34bar, data5bar, N7, n26, n8, n22, n24;

  or02d1 U7 ( .A1(data3), .A2(data4), .Z(N4) );
  or02d1 U8 ( .A1(data1), .A2(data2), .Z(N3) );
  sdnfb1 data34bar_reg ( .D(N4), .SD(1'b0), .SC(1'b0), .CPN(Clk), .Q(data34bar) );
  sdnfb1 data12bar_reg ( .D(N3), .SD(1'b0), .SC(1'b0), .CPN(Clk), .Q(data12bar) );
  sdnfb1 data5bar_reg ( .D(N7), .SD(1'b0), .SC(1'b0), .CPN(Clk), .Q(data5bar)
         );
  ora21d1 U11 ( .B1(data34bar), .B2(data12bar), .A(Control), .Z(n8) );
  or02d1 U10 ( .A1(n26), .A2(n8), .Z(N7) );
  an02d2 U15 ( .A1(data5bar), .A2(data12bar), .Z(n26) );
  inv0d1 U16 ( .I(n22), .ZN(out2) );
  inv0d1 U17 ( .I(n26), .ZN(n22) );
  inv0d1 U18 ( .I(n24), .ZN(out1) );
  inv0d1 U19 ( .I(n26), .ZN(n24) );
endmodule

