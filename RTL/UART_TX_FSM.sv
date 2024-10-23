module UART_TX_FSM(
input  wire Data_Valid,
input  wire ser_done,
input  wire CLK,
input  wire RST,
input  wire PAR_EN,
output reg  ser_en,
output reg [1:0] mux_sel,
output reg  busy
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
	if (!RST) begin
		cs <= IDLE;
	end
	else begin
		cs <= ns;
	end
end


always @(*) begin
	busy   = 1'b1;
	ser_en = 1'b0;
	case(cs)
		IDLE: begin
			mux_sel = 2'b01; //IDLE bit = stop bit = 1
			busy = 1'b0;
			if(Data_Valid) begin
				ns = START;
			end

			else begin
				ns = IDLE;
			end
		end

		START: begin
			mux_sel = 2'b00; // start bit = 0
			ns = DATA;
			ser_en = 1'b1;
		end

		DATA: begin
			mux_sel = 2'b10; //data bit
			ser_en  = 1'b1;
			if(~ser_done) begin
				ns = DATA;
			end

			else if(PAR_EN) begin
				ns = PARITY;
			end

			else begin
				ns = STOP;
			end
		end

		PARITY: begin
			mux_sel = 2'b11; //parity bit
			ns = STOP;
		end

		STOP: begin
			mux_sel = 2'b01; //IDLE bit = stop bit = 1
			ns = IDLE;
		end

		default: begin
			mux_sel = 2'b01; //IDLE
			ns = IDLE;
		end
	endcase
end
endmodule