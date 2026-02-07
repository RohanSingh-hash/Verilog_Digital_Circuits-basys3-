`timescale 1ns / 1ps

module even_parity(d, evenparity);
input [7:0]d;
output reg evenparity;

always@(d)
	begin
		evenparity= ~^d;
	end
endmodule

