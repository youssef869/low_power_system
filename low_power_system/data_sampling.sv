module data_sampling (
input  wire       CLK,    
input  wire       RST,
input  wire       RX_IN,
input  wire       dat_sam_en,
input  wire [5:0] prescale,
input  wire [5:0] edge_count,
output wire       sampled_bit,
output reg        sampling_done
);

reg [2:0] sampled_bits;
wire [4:0] prescale_div_2;
assign prescale_div_2 = prescale >> 1;

assign sampled_bit = (sampled_bits[0] && sampled_bits[1]) ||
                     (sampled_bits[1] && sampled_bits[2]) || 
                     (sampled_bits[0] && sampled_bits[2]);


always @(posedge CLK or negedge RST) begin
	sampling_done <= 1'b0;
	if(~RST) begin
		sampled_bits  <= 3'b0;
		sampling_done <= 1'b0;
	end 
	else if(dat_sam_en && (edge_count == prescale_div_2 - 5'd2)) begin
		sampled_bits[0] <= RX_IN;
	end
	else if(dat_sam_en && (edge_count == prescale_div_2 - 5'd1)) begin
		sampled_bits[1] <= RX_IN;
	end
	else if(dat_sam_en && (edge_count == prescale_div_2)) begin
		sampled_bits[2] <= RX_IN;
		sampling_done <= 1'b1;
	end
end

endmodule