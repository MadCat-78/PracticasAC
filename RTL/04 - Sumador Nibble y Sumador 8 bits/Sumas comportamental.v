module SC4b(input [3:0]A, input [3:0]B, input Cin, output [4:0]C, output Cout);

assign C = A + B + Cin;
assign Cout = C[4];

endmodule


module SC8b(input [7:0]entradaA, input [7:0]entradaB, output [9:0]salidaC);

wire carry;

SC4b primer4b(.A(entradaA[3:0]), .B(entradaB[3:0]), .C(salidaC[4:0]), .Cout(carry));
SC4b segundo4b(.A(entradaA[7:4]), .B(entradaB[7:4]), .Cin(carry) , .C(salidaC[9:4]));

endmodule


`timescale 1ns/1ps

module Tb_Sum4b;

reg  [3:0] A;
reg  [3:0] B;
reg  Cin;

wire [4:0] C;
wire Cout;

// Instancia del módulo
SC4b uut (
    .A(A),
    .B(B),
    .Cin(Cin),
    .C(C),
    .Cout(Cout)
);

initial begin

    $display("==== TEST SUMADOR 4 BITS ====");
    $display(" A  +  B  + Cin  =  Resultado (decimal)");

    // Prueba 1
    A = 4'd3;  B = 4'd5;  Cin = 0;
    #10;
    $display("%d + %d + %d = %d", A, B, Cin, C);

    // Prueba 2
    A = 4'd7;  B = 4'd8;  Cin = 0;
    #10;
    $display("%d + %d + %d = %d", A, B, Cin, C);

    // Prueba 3
    A = 4'd15; B = 4'd1;  Cin = 0;
    #10;
    $display("%d + %d + %d = %d", A, B, Cin, C);

    // Prueba 4
    A = 4'd9;  B = 4'd6;  Cin = 1;
    #10;
    $display("%d + %d + %d = %d", A, B, Cin, C);

    // Prueba 5
    A = 4'd12; B = 4'd4;  Cin = 1;
    #10;
    $display("%d + %d + %d = %d", A, B, Cin, C);

    $finish;
end

endmodule



`timescale 1ns/1ps

module Tb_Sum8b;

reg  [7:0] entradaA;
reg  [7:0] entradaB;

wire [9:0] salidaC;

// Instancia del módulo
SC8b uut (
    .entradaA(entradaA),
    .entradaB(entradaB),
    .salidaC(salidaC)
);

initial begin

    $display("==== TEST SUMADOR 8 BITS ====");
    $display(" A   +   B   =   Resultado (decimal)");

    // Prueba 1
    entradaA = 8'd10;  entradaB = 8'd20;
    #10;
    $display("%d + %d = %d", entradaA, entradaB, salidaC);

    // Prueba 2
    entradaA = 8'd100; entradaB = 8'd50;
    #10;
    $display("%d + %d = %d", entradaA, entradaB, salidaC);

    // Prueba 3
    entradaA = 8'd255; entradaB = 8'd1;
    #10;
    $display("%d + %d = %d", entradaA, entradaB, salidaC);

    // Prueba 4
    entradaA = 8'd128; entradaB = 8'd128;
    #10;
    $display("%d + %d = %d", entradaA, entradaB, salidaC);

    // Prueba 5
    entradaA = 8'd75;  entradaB = 8'd80;
    #10;
    $display("%d + %d = %d", entradaA, entradaB, salidaC);

    $finish;
end

endmodule
