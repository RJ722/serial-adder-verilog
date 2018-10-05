`timescale 1s/100ns
`include "full_adder.v"

module full_adder_tb;
  reg a, b, cin;
  wire sum, cout;

  full_adder adder(a, b, cin, sum, cout);
  initial begin
    $dumpfile("full_adder_tb.vcd");
    $dumpvars(0, full_adder_tb);
    $monitor("a = %b, b = %b, cin = %b, sum = %b, cout = %b", a, b, cin, sum, cout);
    a = 0; b = 0; cin = 0; #10;
    a = 0; b = 0; cin = 1; #10;
    a = 0; b = 1; cin = 0; #10;
    a = 0; b = 1; cin = 1; #10;
    a = 1; b = 0; cin = 0; #10;
    a = 1; b = 0; cin = 1; #10;
    a = 1; b = 1; cin = 0; #10;
    a = 1; b = 1; cin = 1; #10;
    $finish;
  end
endmodule