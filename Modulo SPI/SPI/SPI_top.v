`timescale 1ns/1ns

module SPI_top(input CLK);
wire c1,c2,c3;

M_Master puppeter(.clk(CLK), .miso(c3), .mosi(c1), .ss(c2));
M_Slave mupet(.clk(CLK), .mosi(c1), .ss(c2), .miso(c3));

endmodule
