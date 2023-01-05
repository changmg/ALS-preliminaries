module	MuxMod (Y_IN, MUX_CNT, D, R, F, UPC);
`include "def_macro.v"
output	[15:0]	Y_IN;
input	[ 1:0]	MUX_CNT;
input	[15:0]	D, F, R, UPC;

reg	[15:0]	Y_IN;

always @ ( MUX_CNT or D or R or F or UPC ) begin
	case ( MUX_CNT )
	  `DATA : 
		Y_IN = D ;
	  `REG :
		Y_IN = R ;
	  `STACKIN :
		Y_IN = F ;
	  `UPCOUT :
		Y_IN = UPC;
	endcase
end
endmodule
