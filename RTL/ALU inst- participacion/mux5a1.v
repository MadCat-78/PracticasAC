module mux5a1(input [31:0] suma, resta, orComp, andComp, slt, input [3:0]ALUctl, output reg [31:0]resultado);


always @(ALUctl)//cuaquier asignacion en un bloque secuencial es tipo reg
    begin
        case(ALUctl)
            4'b0000:resultado=suma;
            4'b0001:resultado=resta;
            4'b0010:resultado=orComp;
            4'b0011:resultado=andComp;
            4'b0100:resultado=slt;
        endcase
    end


endmodule