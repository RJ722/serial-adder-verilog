module piso(clk, enable, rst, data, out);
  input enable, clk, rst;
  input [3:0] data;
  output out;

  reg out;
  reg [3:0] memory;

  always @ (posedge clk, posedge rst) begin
    if (rst == 1'b1) begin
      out <= 1'b0;
      memory <= data;
    end
    else begin
      if (enable) begin
        out = memory[0];
        memory = memory >> 1'b1;
      end
    end
  end
endmodule