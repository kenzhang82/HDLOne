module top_module
(
	input clk,
	input enable,
	input S,
	input A, B, C,
	output Z
);
	reg [7:0] mem; 

	always @(posedge clk) begin
		if (enable) begin
			mem <= {mem[6:0], S}; 
		end
	end
	
	assign Z = mem[{A, B, C}];

endmodule
