///////////////////////////////////////////////
// Copyright: Synopsys Inc., 2007 - 2010
// Customer Education Services
//
// Design Compiler: Optimization Lab
// Author(s): VR and DW
// Created on   : Mon Jan 22 06:55:13 PST 2007
// Last Modified: Mon Jul 12 13:55:53 PDT 2010
///////////////////////////////////////////////

module INCORRECT; // This is a trap
endmodule

///////////////////////////////////////////////

module STOTO (sel1, sel2, a1, a2, b1, b2, c1, c2, d1, d2, M, X, N, clk, z);

parameter W1 = 5, 
	  W2 = 2*W1,
	  Wsel = 2;

input  [W1-1:0] a1, a2, b1, b2, c1, c2, d1, d2;
reg    [W1-1:0] a, b, c, d;
input  [W2-1:0] M, X, N;
input  clk;

input  [Wsel-1:0] sel1, sel2;
output [W2-1:0] z;	
reg    [W2-1:0] z, MOUT;	

	INPUT I_IN (.a1(a1), .b1(b1), .c1(c1), .d1(d1), 
		       .a2(a2), .b2(b2), .c2(c2), .d2(d2), 
		       .clk(clk), .sel(sel1), 
		       .a(a), .b(b), .c(c), .d(d));

	MIDDLE I_MIDDLE (.a(a), .b(b), .c(c), .d(d), .M(M), .N(N), .clk(clk), 
			 .sel(sel1), .z(MOUT));

	OUTPUT I_OUT  (.a(X), .b(MOUT), .sel(sel2), .z(z));

endmodule


///////////////////////////////////////////////

module MIDDLE (a, b, c, d, M, N, clk, sel, z);

parameter W1 = 5, 
	  W2 = 2*W1,
	  Wsel = 2;

input  [W1-1:0] a, b, c, d;
input  [W2-1:0] M, N;
input  clk;
input  [Wsel-1:0] sel;
output [W2-1:0] z;
reg    [W2-1:0] z, POUT;

	PIPELINE I_PIPELINE 
		(.a(a), .b(b), .c(c), .d(d), .clk(clk), .z(POUT));
	DONT_PIPELINE I_DONT_PIPELINE 
		(.a(M), .b(POUT), .c(N), .clk(clk), .sel(sel), .z(z));

endmodule


//////////////////////////////////////
module PIPELINE (a, b, c, d, clk, z);

parameter W1 = 5, 
	  W2 = 2*W1;

input  [W1-1:0] a, b, c, d;
input  clk;
output [W2-1:0] z;
reg    [W2-1:0] z, z1;

always @(posedge clk)
  begin
	z1 <= a * b + c - d; 	// Pipeline register #1
	z  <= z1;   		// Pipeline register #2
  end

endmodule


////////////////////////////////////
module DONT_PIPELINE (a, b, c, clk, sel, z);

parameter W1 = 10, 
	  W2 = W1,
	  Wsel = 2;

input  [W1-1:0] a, b, c;
input  clk;
input  [Wsel-1:0] sel;
output [W2-1:0] z;
reg    [W2-1:0] z, G1, G2, SUM;

	GLUE I_GLUE (.a(a), .b(b), .y(G1), .z(G2));
	ARITH I_ARITH (.a(G1), .b(G2), .sum(SUM));
	RANDOM I_RANDOM (.a(c), .b(SUM), .clk(clk), .sel(sel), .z(z));

endmodule


////////////////////////////////////
module GLUE (a, b, y, z);

parameter W1 = 10, 
	  W2 = W1,
	  Wsel = 2;

input  [W1-1:0] a, b;
output [W2-1:0] y, z;
reg    [W2-1:0] y, z;

always @(a, b)
  begin
	y = (a & b) | (a^b);
	z <= ~ (a ^ b); 
  end
endmodule


////////////////////////////////////
module ARITH (a, b, sum);

parameter W1 = 10, 
	  W2 = W1;

input  [W1-1:0] a, b;
output [W2-1:0] sum;
reg    [W2-1:0] sum;

always @(a, b)
  begin
	sum  = a + b;
  end
endmodule

////////////////////////////////////
module RANDOM (a, b, clk, sel, z);

parameter W1 = 10, 
	  W2 = W1,
	  Wsel = 2;

input  [W1-1:0] a, b;
input  clk;
input  [Wsel-1:0] sel;
output [W2-1:0] z;
reg    [W2-1:0] z, int1, int2;

always @(posedge clk)
  begin
	int2 <= ~(a ^ b);
	if (sel == 2'b00)
		int1 <= a & b;
	else if (sel == 2'b11)
		int1 <= a ^ b;
	else
		int1 <= b | a;

  end

always @(int1, int2)
  begin
	z = (int1 & int2) | (int1^int2) & (int1 | int2);
  end

endmodule

////////////////////////////////////////////////////////////////////////
module INPUT (sel, a1, a2, b1, b2, c1, c2, d1, d2, clk, a, b, c, d);

parameter W1 = 5, 
	  W2 = W1,
	  Wsel = 2;

input  [W1-1:0] a1, a2, b1, b2, c1, c2, d1, d2;
input  clk;
input  [Wsel-1:0] sel;

output [W2-1:0] a, b, c, d;	
reg    [W2-1:0] a, b, c, d;

integer j;

always @(posedge clk)
begin

			case (sel)
			0: begin 
				a = a1 & a2; 
				b = b1 & b2;
				c = c1 & c2;
				d = d1 & d2;
			   end

			1: begin	
				a = a1 | a2;
				b = b1 | b2;
				c = c1 | c2;
				d = d1 | d2;
			   end

			2: begin	
				a = a1 ^ a2;
				b = b1 ^ b2;
				c = c1 ^ c2;
				d = d1 ^ d2;
			   end

			3: begin 
				a = ~(a1 ^ a2);
				b = ~(b1 ^ b2);
				c = ~(c1 ^ c2);
				d = ~(d1 ^ d2);
			   end
		endcase
end

endmodule

////////////////////////////////////
module OUTPUT (sel, a, b, z);

parameter W1 = 10, 
	  W2 = W1,
	  Wsel = 2;

input  [W1-1:0] a, b;
input  [Wsel-1:0] sel;

output [W2-1:0] z;	
reg    [W2-1:0] z;

always @(sel, a, b)
begin
	if (sel == 2'b00)
		z <= a | b;
	else if (sel == 2'b01)
		z <= a & b;
	else if (sel == 2'b10)
		z <= a ^ b;
	else
		z <= ~(a ^ b);

end

endmodule

////////////////////   EOF ///////////////////////////
