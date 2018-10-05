`timescale 1s/100ns
`include "piso.v"

module piso_tb;
  reg [3:0] data;
  reg enable, clk, reset;
  wire out;

  piso register(clk, enable, reset, data, out);

  initial begin
    $monitor("out = %b", out);
    $dumpfile("piso_tb.vcd");
    $dumpvars(0, piso_tb);
    clk = 0;
    data = 4'b1101;
    reset = 1; enable = 1; #10;
    reset = 0; enable = 1; #80;
    reset = 0; enable = 0; #10;
    $finish;
  end

  always #10 clk=!clk;

endmodule