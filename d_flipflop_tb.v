`timescale 1s/100ns
`include "d_flipflop.v"

module d_flipflop_tb;
  reg d, clk, enable, reset;
  wire out;

  d_flipflop ff(d, clk, enable, reset, out);

  initial begin
    $monitor("out = %b", out);
    $dumpfile("d_flipflop_tb.vcd");
    $dumpvars(0, d_flipflop_tb);
    clk = 0;
    d = 1'bx; reset = 1; enable = 1'bx; #30;
    d = 0; reset = 0; enable = 1; #30;
    d = 1; reset = 0; enable = 1; #30;
    d = 0; reset = 0; enable = 0; #30;
    d = 1; reset = 0; enable = 0; #30;
    $finish;
  end

  always #10 clk=!clk;
endmodule