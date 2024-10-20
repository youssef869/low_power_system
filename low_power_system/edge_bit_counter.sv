module edge_bit_counter (
input  wire       CLK,    
input  wire       RST,
input  wire       enable,
input  wire       PAR_EN,
input  wire [5:0] prescale,
output reg  [3:0] bit_count,
output reg  [5:0] edge_count
);

wire edge_done, bit_done;

assign edge_done = (edge_count == prescale - 1);
assign bit_done  = PAR_EN ? (bit_count == 4'd12) : (bit_count == 4'd11);

always @(posedge CLK or negedge RST) begin
	if(~RST) begin
		bit_count  <= 4'b0;
		edge_count <= 6'b0;
	end
	else if(~enable) begin
		bit_count <= 4'b0;
		edge_count <= 6'b0;
	end
	else if (enable && !edge_done) begin
		edge_count <= edge_count + 6'b1;
	end
	else if(enable && edge_done && !bit_done) begin
		bit_count  <= bit_count + 4'b1;
		edge_count <= 6'd0;
	end
	else if(enable && edge_done && bit_done) begin
		bit_count <= 4'b0;
	end
end
endmodule