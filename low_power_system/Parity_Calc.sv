module Parity_Calc (
input  wire [7 :0] p_data,
input  wire        Data_Valid,
input  wire        CLK,
input  wire        RST,
input  wire        Par_Type,
output reg         Par_Bit
);

always @(posedge CLK or negedge RST) begin
	if (!RST) begin
		Par_Bit <= 1'b0;
	end
	else if (Data_Valid && !Par_Type) begin
		Par_Bit <= ^(p_data);
	end

	else if(Data_Valid && Par_Type) begin
		Par_Bit <= ~^(p_data);
	end
end
endmodule