`timescale 1ns / 1ps

`timescale 1ns/1ps
module tb_dff;
  reg clk=0,t,rst; wire q;
  tff dut(t,clk,rst,q);
  always #5 clk=~clk;
  initial begin
    rst=1; t=0; #10;  
    rst=0; #10 t=1; #10 t=0; #10 t=1;
    #15 t=0; #20 t=1; #20 $finish;
  end
endmodule

