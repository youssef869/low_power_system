module Parity_Calc (
input  wire [7 :0] p_data,
input  wire        Data_Valid,
input  wire        PAR_EN,
input  wire        Busy,
input  wire        CLK,
input  wire        RST,
input  wire        Par_Type,
output reg         Par_Bit
);

reg [7 :0] DATA_V;

always @ (posedge CLK or negedge RST) begin
    if(!RST) begin
    	DATA_V <= 'b0 ;
   end
   else if(Data_Valid && !Busy) begin
    DATA_V <= p_data ;
   end 
 end

always @(posedge CLK or negedge RST) begin
	if (!RST) begin
		Par_Bit <= 1'b0;
	end
	else if (PAR_EN && !Par_Type) begin
		Par_Bit <= ^(DATA_V);
	end

	else if(PAR_EN && Par_Type) begin
		Par_Bit <= ~^(DATA_V);
	end
end
endmodule
