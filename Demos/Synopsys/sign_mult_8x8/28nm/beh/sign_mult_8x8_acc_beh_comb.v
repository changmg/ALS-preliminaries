module sign_mult_8x8_acc(in, w, out);


parameter widthIn = 8;
parameter widthW = 8;


input signed [widthIn - 1: 0] in;
input signed [widthW - 1: 0] w;
output signed [widthIn + widthW - 1: 0] out;


assign out = in * w;


endmodule
