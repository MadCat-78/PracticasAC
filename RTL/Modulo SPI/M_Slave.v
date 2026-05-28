module M_Slave(input clk, input mosi, input ss, output miso);
reg [7:0] dataIn;
reg [7:0] dataOut;

reg [7:0] shiftReg;

reg [2:0] bitCount;

reg miso_reg;
assign miso = miso_reg;
endmodule

