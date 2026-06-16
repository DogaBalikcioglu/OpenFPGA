module up_down_counter (
	input wire clk,
	input wire up_down,
	input wire rst,
	output reg[9:0] count
);
	initial begin
		count = 10'b0;
	end
always @(posedge clk) begin
	if (rst)
	count <= 10'b0;
	else if (up_down)
		count <= count + 1'b1;
	else
		count <= count - 1'b1;
	end
endmodule

