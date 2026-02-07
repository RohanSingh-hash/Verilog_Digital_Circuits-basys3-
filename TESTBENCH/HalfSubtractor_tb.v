`timescale 1ns / 1ps

module tb_ha_sub;
  reg a,b;
  wire d,bo;
  ha_sub uut(.a(a),.b(b),.d(d),.bw(bo));
  initial begin
    {a,b}=0; repeat(4) #5 {a,b}={a,b}+1;
    $finish;
  end
endmodule
