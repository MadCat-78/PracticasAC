module M_HA (input e1, input e2, output s, output A);

assign A = e1 & e2;
assign s = e1 ^ e2;

endmodule


module M_FA (input entradaA, input entradaB, input entradaC, output S, output C);
wire cable1, cable2, cable3;

M_HA ha1(.e1(entradaA), .e2(entradaB), .s(cable1), .A(cable2));
M_HA ha2(.e1(entradaC), .e2(cable1), .s(S), .A(cable3));

assign C = cable2 | cable3;

endmodule



module Sum_instancia4b(input [3:0]A, input [3:0]B, input cin, output [4:0]suma);
wire wire1, wire2, wire3;

M_FA fa1(.entradaA(A[0]), .entradaB(B[0]), .entradaC(cin), .S(suma[0]), .C(wire1));
M_FA fa2(.entradaA(A[1]), .entradaB(B[1]), .entradaC(wire1), .S(suma[1]), .C(wire2));
M_FA fa3(.entradaA(A[2]), .entradaB(B[2]), .entradaC(wire2), .S(suma[2]), .C(wire3));
M_FA fa4(.entradaA(A[3]), .entradaB(B[3]), .entradaC(wire3), .S(suma[3]), .C(suma[4]));

endmodule


module Sum_instancia8b(input [7:0]Aentrada, input [7:0]Bentrada, input carryIn, output [8:0]S);
wire [4:0]Wire1;
wire [4:0]Wire2;

Sum_instancia4b sum4b1(.A(Aentrada[3:0]), .B(Bentrada[3:0]), .cin(carryIn), .suma(Wire1[4:0]));
Sum_instancia4b sum4b2(.A(Aentrada[7:4]), .B(Bentrada[7:4]), .cin(Wire1[4]), .suma(Wire2[4:0]));

assign S[3:0] = Wire1[3:0];
assign S[8:4] = Wire2[4:0];

endmodule
