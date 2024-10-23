module UART_RX_FSM (
input  wire       CLK,	
input  wire       RST,
input  wire       RX_IN,
input  wire       PAR_EN,
input  wire [3:0] bit_count,
input  wire [5:0] edge_count,
input  wire [5:0] Prescale,  
input  wire       sampling_done,
input  wire       par_err,
input  wire       strt_glitch,
input  wire       stp_err,
output reg        deser_en,
output reg        par_chk_en,
output reg        strt_chk_en,
output reg        stp_chk_en,
output reg        edge_bit_en,
output reg        dat_sam_en,
output reg        data_valid
);


typedef enum bit [2:0] {
        IDLE   = 3'b000,
        START  = 3'b001,
        DATA   = 3'b010,
        PARITY = 3'b011,
        STOP   = 3'b100
} state_e;

state_e cs, ns;

always @(posedge CLK or negedge RST) begin
	if(~RST) begin
		cs <= IDLE;
	end else begin
		cs <= ns;
	end
end


always @(*) begin
	edge_bit_en = 1'b1;
	dat_sam_en  = 1'b1;
	par_chk_en  = 1'b0;
	strt_chk_en = 1'b0;
	stp_chk_en  = 1'b0;
	deser_en    = 1'b0;
	data_valid  = 1'b0;
	case(cs)
		IDLE: begin
			edge_bit_en = 1'b0;
			dat_sam_en = 1'b0;
			if(~RX_IN) begin
				ns = START;
				edge_bit_en = 1'b1;
			end
			else begin
				ns = IDLE;
			end
		end

		START: begin
			if(bit_count == 4'd0 && (edge_count == Prescale - 'd1)) begin
				ns = DATA;
			end

			else begin
				ns = START;
				if(sampling_done) begin
					strt_chk_en = 1'b1;
					if(strt_glitch) begin
						ns = IDLE;
					end
					else begin
						ns = START;
					end
				end
				else begin
					strt_chk_en = 1'b0;
					ns = START;
				end
			end
		end

		DATA: begin
			if(bit_count == 4'd8 && PAR_EN  && (edge_count == Prescale - 'd1)) begin
				ns = PARITY;
			end
			else if(bit_count == 4'd8 && !PAR_EN  && (edge_count == Prescale - 'd1)) begin
				ns = STOP;
			end
			else if(sampling_done) begin
				ns = DATA;
				deser_en = 1'b1;
			end
			else begin
				ns = DATA;
			end
		end

		PARITY: begin
			if(bit_count == 4'd9  && (edge_count == Prescale - 'd1)) begin
				ns = STOP;
			end

			else begin
				ns = PARITY;
				if(sampling_done) begin
					par_chk_en = 1'b1;
					if(par_err) begin
						ns = IDLE;
					end
					else begin
						ns = PARITY;
					end
				end
				else begin
					par_chk_en = 1'b0;
					ns = PARITY;
				end
			end
		end

		STOP: begin
			if(bit_count == 4'd10 && PAR_EN && RX_IN  && (edge_count == Prescale - 'd1)) begin
				ns = IDLE;
				data_valid = !stp_err && !par_err;
				edge_bit_en = 1'b0;
			end
			else if(bit_count == 4'd10 && PAR_EN && !RX_IN  && (edge_count == Prescale - 'd1)) begin
				ns = START;
				edge_bit_en = 1'b0;
				data_valid = !stp_err && !par_err;
			end
			else if(bit_count == 4'd9 && !PAR_EN && RX_IN  && (edge_count == Prescale - 'd1)) begin
				ns = IDLE;
				data_valid = !stp_err && !par_err;
				edge_bit_en = 1'b0;
			end
			else if(bit_count == 4'd9 && !PAR_EN && !RX_IN  && (edge_count == Prescale - 'd1)) begin
				ns = START;
				edge_bit_en = 1'b0;
				data_valid = !stp_err && !par_err;
				
			end

			else begin
				ns = STOP;
				if(sampling_done) begin
					stp_chk_en = 1'b1;
					if(stp_err) begin
						ns = IDLE;
					end
					else begin
						ns = STOP;
					end
				end
				else begin
					stp_chk_en = 1'b0;
					ns = STOP;
				end
			end
		end

	default: ns = IDLE;
	endcase
end

endmodule