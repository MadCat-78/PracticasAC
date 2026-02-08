
module M_HA (input e1, input e2, output s, output A);

assign A = e1 & e2;
assign s = e1 ^ e2;

endmodule
