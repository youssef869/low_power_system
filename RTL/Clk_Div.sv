module Clk_Div(
input  wire       i_ref_clk,
input  wire       i_rst_n,
input  wire       i_clk_en,
input  wire [7:0] i_div_ratio,
output wire       o_div_clk
);


reg [6:0] counter;
wire [6:0] half_period, half_period_plus_1;
wire div_odd, div_zero, div_one, Clk_Div_En;
reg div_clk;

assign Clk_Div_En = (i_clk_en && !div_zero && !div_one);
assign div_odd = i_div_ratio[0];

assign div_zero = (i_div_ratio == 8'b0);
assign div_one = (i_div_ratio == 8'b1);

assign half_period =  (i_div_ratio >> 1) - 7'd1; //indicates that counter counts number of cycles equal to half of output's period
assign half_period_plus_1 = i_div_ratio >> 1;    //indicates that counter counts number of cycles equal to half of output's period + 1

assign o_div_clk = ((i_clk_en && (div_zero || div_one)) || !i_clk_en) ? i_ref_clk : div_clk;

always @(posedge i_ref_clk or negedge i_rst_n) begin
	
	if (!i_rst_n) begin
		div_clk <= 1'b0;
		counter <= 7'b0;
	end
	else if (Clk_Div_En && !div_odd && (counter == half_period)) begin
		div_clk <= ~div_clk;
		counter <= 7'b0;
	end

	else if(Clk_Div_En && div_odd && ( ((counter == half_period) && div_clk) || ((counter == half_period_plus_1) && !div_clk))) begin
		div_clk <= ~div_clk;
		counter <= 7'b0;
	end

	//making this conditional to prevent switching of counter while division ratio is zero or one
	else if(Clk_Div_En) begin
		counter <= counter + 7'b1;
	end
end


endmodule