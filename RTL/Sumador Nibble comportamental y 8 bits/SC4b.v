module SC4b(input [3:0]A, input [3:0]B, input Cin, output [4:0]C, output Cout);

assign C = A + B + Cin;
assign Cout = C[4];

endmodule
