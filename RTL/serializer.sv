module serializer(
input  wire [7: 0] P_DATA,
input  wire        DATA_VALID,
input  wire        CLK, RST,
input  wire        busy,
input  wire        SER_EN,
output wire        SER_DONE,
output reg         SER_DATA
);

reg [7:0] shift_reg;
reg [3:0] counter;

always @(posedge CLK or negedge RST) begin
	if(!RST) begin
		shift_reg <= 8'b0;
		SER_DATA  <= 1'b0;
	end
	else if(DATA_VALID && !busy) begin
		shift_reg <= P_DATA;
	end
	else if(SER_EN) begin
		{shift_reg[6:0],SER_DATA} <= shift_reg;
	end
end

always @(posedge CLK or negedge RST) begin
	if (!RST) begin
		counter   <= 4'b0;
	end

	/*
	else if(DATA_VALID) begin
		counter   <= 4'b0;
	end
	*/

	else if(SER_EN) begin
		counter <= counter + 4'b1;
	end

	else begin
		counter <= 4'b0;
	end
end


assign SER_DONE = (counter == 4'd8);

endmodule
