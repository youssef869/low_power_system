////// initially testing (par_en && even_par && tx_clk = 115.2kHz (i.e div ratio = 32))

`timescale 1ns/1ps
module SYS_TOP_TB();

 reg  RST_N_TB;
 reg  UART_CLK_TB;
 reg  REF_CLK_TB;
 reg  UART_RX_IN_TB;
 wire UART_TX_O_TB;
 wire parity_error_TB;
 wire framing_error_TB;


 reg UART_TX_CLK;

 parameter DIV_RATIO = 32.0;

parameter REF_CLK_PERIOD  = 20.0,
          UART_CLK_PERIOD = 271.3,
          UART_TX_PERIOD  = UART_CLK_PERIOD * DIV_RATIO;

integer i;

always #(REF_CLK_PERIOD / 2.0)  REF_CLK_TB = ~REF_CLK_TB;
always #(UART_CLK_PERIOD / 2.0) UART_CLK_TB = ~UART_CLK_TB;
always #(UART_TX_PERIOD / 2.0) UART_TX_CLK = ~UART_TX_CLK;

initial begin
    $dumpfile("SYS_TOP.vcd");
    $dumpvars();

	initialize();
	reset();

	transmit_par('hAA, 1'b0);
    transmit_par('d02, 1'b1);
    transmit_par('b001000_01, 1'b0);

    transmit_par('hAA, 1'b0);
    transmit_par('d07, 1'b1);
    transmit_par('hcd, 1'b1);

	transmit_par('hAA, 1'b0);
    transmit_par('d09, 1'b0);
    transmit_par('hae, 1'b1);

	transmit_par('hAA, 1'b0);
    transmit_par('d05, 1'b0);
    transmit_par('h45, 1'b1);


    transmit_par('hBB, 1'b0);
    transmit_par('d07,1'b1);

	transmit_par('hBB, 1'b0);
    transmit_par('d09,1'b0);


	transmit_par('hCC,1'b0);
	transmit_par('h0a,1'b0);
	transmit_par('h04,1'b1);
	transmit_par('h00,1'b0);

	//#(REF_CLK_PERIOD);

	transmit_par('hCC,1'b0);
	transmit_par('h07,1'b1);
	transmit_par('h4,1'b1);
	transmit_par('h01,1'b1);

	transmit_par('hDD,1'b0);
	transmit_par('h02,1'b1);

	transmit_par('hDD,1'b0);
	transmit_par('h00,1'b0);

	repeat(20) @(posedge UART_TX_CLK);


    $stop();


end


task initialize ;
begin
    RST_N_TB = 1'b1;
    UART_RX_IN_TB = 1'b1;
    REF_CLK_TB = 1'b1;
    UART_CLK_TB = 1'b0;
    UART_TX_CLK = 1'b0;

end
endtask

task reset ;
begin
    RST_N_TB = 1'b1;
    #(REF_CLK_PERIOD);
    RST_N_TB = 1'b0;
    #(REF_CLK_PERIOD + UART_TX_PERIOD);
    RST_N_TB = 1'b1;
end
endtask

task transmit_no_par ;
input [7:0] data;
begin
	#(UART_TX_PERIOD);
	UART_RX_IN_TB = 1'b0;
	for(i = 0; i < 8; i = i + 1) begin
		#(UART_TX_PERIOD);
		UART_RX_IN_TB = data[i];
	end
		#(UART_TX_PERIOD);
		UART_RX_IN_TB = 1'b1;
end
endtask 

task transmit_par ;
input [7:0] data;
input       parity_bit;
begin
	@(posedge UART_TX_CLK);
	UART_RX_IN_TB = 1'b0;
	for(i = 0; i < 8; i = i + 1) begin
		@(posedge UART_TX_CLK);
		UART_RX_IN_TB = data[i];
	end
	@(posedge UART_TX_CLK);
	UART_RX_IN_TB = parity_bit;
	@(posedge UART_TX_CLK);
	UART_RX_IN_TB = 1'b1;
end
endtask 

task check_out_par ;
input [10 :0] expected_out;

reg [10 :0] design_out;

begin
	for(i = 10; i >= 0; i = i - 1) begin
		#(UART_TX_PERIOD);
		design_out[i] = UART_TX_O_TB;
	end

	if(expected_out == design_out) begin
		$display("Test case succeed. expected output = %11b, design output = %11b",expected_out,design_out);
	end

	else begin
		$display("Test case failed. expected output = %11b, design output = %11b",expected_out,design_out);
	end
end
endtask

SYS_TOP DUT
(
.RST_N(RST_N_TB),
.UART_CLK(UART_CLK_TB),
.REF_CLK(REF_CLK_TB),
.UART_RX_IN(UART_RX_IN_TB),
.UART_TX_O(UART_TX_O_TB),
.parity_error(parity_error_TB),
.framing_error(framing_error_TB)
);

endmodule