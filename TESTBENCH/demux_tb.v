`timescale 1ns / 1ps

module tb_demux;
    reg in;
    reg [4:0] sel;
    wire [31:0] y;
    demux1x32 uut (.in(in), .sel(sel), .y(y));
    initial begin
    in = 1; sel = 0; 
    repeat (32) begin
        #10; sel = sel + 1;
    end
    $stop;
end
endmodule

