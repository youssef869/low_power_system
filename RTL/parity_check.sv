module parity_check (
input  wire [7 :0] P_DATA,
input  wire        parity_bit,
input  wire        PAR_TYP,
input  wire        par_check_en,
output wire        par_err
);

reg calculated_parity;

assign par_err = (par_check_en && parity_bit != calculated_parity);

always @(*) begin
	if(~par_check_en) begin
		calculated_parity = 1'b0;
	end

	else if (!PAR_TYP) begin
		calculated_parity = ^(P_DATA);
	end

	else begin
		calculated_parity = ~^(P_DATA);
	end
end
endmodule