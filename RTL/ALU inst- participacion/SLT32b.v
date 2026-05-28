module SLT32b(input [31:0]A, input [31:0]B, output [3:0]C);

assign C = A < B ? 1:0;

endmodule
