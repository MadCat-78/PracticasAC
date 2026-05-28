module ALUMIPS(input [31:0]A, input [31:0]B, input [3:0]sel, output [31:0]resultado);
wire [31:0] M0;
wire [31:0] M1;
wire [31:0] M2;
wire [31:0] M3;
wire [31:0] M4;

S32Comp suma    (.A(A[31:0]), .B(B[31:0]), .C(M0[31:0]));
R32Comp resta   (.A(A[31:0]), .B(B[31:0]), .C(M1[31:0]));
OR32b   orComp  (.A(A[31:0]), .B(B[31:0]), .C(M2[31:0]));
AND32b  andComp (.A(A[31:0]), .B(B[31:0]), .C(M3[31:0]));
SLT32b  slt     (.A(A[31:0]), .B(B[31:0]), .C(M4[31:0]));


mux5a1 multiplexor(.suma(M0), .resta(M1), .orComp(M2), .andComp(M3), .slt(M4), .ALUctl(sel), .resultado(resultado));

endmodule