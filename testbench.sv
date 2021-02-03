module Fifo_testbench;

	// Inputs
	reg [7:0] data_in;
	reg clk;
	reg rst;
	reg rd;
	reg wr;

	// Outputs
	wire empty;
	wire full;
	wire [7:0] data_out;
	// Instantiate the Unit Under Test (UUT)
	fifo_8bit uut (
		.data_in(data_in),
		.clk(clk),
		.rst(rst),
		.rd(rd),
		.wr(wr),
		.empty(empty),
		.full(full),
		.data_out(data_out)
	);


  initial begin
//Initialize inputs
  clk = 1'b0;
  data_in = 8'b00000000;
  rd = 1'b0;
  wr = 1'b0;
  rst = 1'b1;
  #100;

  rst = 1'b1;
  #20;
  rst = 1'b0;
  wr = 1'b1;
  data_in = 8'b00000000;
  #20;
  data_in = 8'b00000001;
  #20;
  data_in = 8'b00000010;
  #20;
  data_in = 8'b00000011;
  #20;
  data_in = 8'b00000100;
  #20;
  data_in = 8'b00000101;
  #20;
  data_in = 8'b00000110;
  #20;
  data_in = 8'b00000111;
  #20;
  wr = 1'b0;
  rd = 1'b1;
  end
    always #10 clk = ~clk;

endmodule
