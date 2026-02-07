`timescale 1ns / 1ps

module ha_tb;
reg a,b;
wire s, c;
half_adder_str dut(a,b,s,c);
initial begin
    a=0; b=0; #10;
    a=0; b=1; #10;
    a=1; b=0; #10;
    a=1; b=1; #10;
    $finish;
end
endmodule
