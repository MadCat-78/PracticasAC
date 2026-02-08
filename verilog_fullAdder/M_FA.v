module M_FA (input entradaA, input entradaB, input entradaC, output S, output C);
wire cable1, cable2, cable3;

M_HA ha1(.e1(entradaA), .e2(entradaB), .s(cable1), .A(cable2));
M_HA ha2(.e1(entradaC), .e2(cable2), .s(S), .A(cable3));

assign C = cable1 | cable3;

endmodule