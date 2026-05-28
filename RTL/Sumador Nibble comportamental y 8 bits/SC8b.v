module SC8b(input [7:0]entradaA, input [7:0]entradaB, output [9:0]salidaC);

wire carry;

SC4b primer4b(.A(entradaA[3:0]), .B(entradaB[3:0]), .C(salidaC[4:0]), .Cout(carry));
SC4b segundo4b(.A(entradaA[7:4]), .B(entradaB[7:4]), .Cin(carry) , .C(salidaC[9:4]));

endmodule
