module M_Master(input clk, input miso, output mosi, output ss);
reg [1:0] estate;

reg [7:0] dataOut;
reg [7:0] dataIn;

reg [2:0] bitCount;

reg mosi_reg;
reg ss_reg;

assign mosi = mosi_reg;
assign ss = ss_reg;

endmodule

