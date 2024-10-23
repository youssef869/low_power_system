module desarilzer(
input  wire       CLK,
input  wire       RST,
input  wire       deser_en,
input  wire       sampled_bit,
input  wire [3:0] bit_count,
output reg  [7:0] P_DATA
);


always @(posedge CLK or negedge RST) begin
	if (!RST) begin
		P_DATA <= 8'd0;
	end
	else if (deser_en) begin
		P_DATA[bit_count-1] <= sampled_bit;
	end
end
endmodule