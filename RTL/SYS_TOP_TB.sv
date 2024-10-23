
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

 parameter EVEN = 0,
           ODD  = 1;

parameter PARITY_TYPE = 1'b0;


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

	$display("********************************** Testing with even parity **********************************");
	test_even_parity();

	// $display("\n********************************** Testing with no parity **********************************");
	// test_no_parity();

	$stop();


end

task test_even_parity ;
begin
	//configuration
	transmit_par('hAA, 1'b0);
    transmit_par('d02, 1'b1);
    transmit_par({6'd32, 1'b0 ,1'b1}, 1'b0);

	#(10 * UART_TX_PERIOD);

	//Register File Write
    transmit_par('hAA, 1'b0);
    transmit_par('d07, 1'b1);
    transmit_par('hcd, 1'b1);

	//Register File Write
	transmit_par('hAA, 1'b0);
    transmit_par('d09, 1'b0);
    transmit_par('hae, 1'b1);

	//Register File Write
	transmit_par('hAA, 1'b0);
    transmit_par('d05, 1'b0);
    transmit_par('h45, 1'b1);

	//Register File read
    transmit_par('hBB, 1'b0);
    transmit_par('d07,1'b1); // read data = 'hcd
	check_out_par_rf('hcd ,1);


	//Register File read	
	transmit_par('hBB, 1'b0);
    transmit_par('d09,1'b0); // read data = 'hae
	check_out_par_rf('hae ,2);

	//ALU operation with operands
	transmit_par('hCC,1'b0);
	transmit_par('h0a,1'b0);
	transmit_par('h04,1'b1);
	transmit_par('h00,1'b0); // ALU Result = 'h0a + h04 = 'h000e
	check_out_par_alu('h000e ,1);

	//ALU operation with input operands
	transmit_par('hCC,1'b0);
	transmit_par('d10,1'b0);
	transmit_par('d200,1'b1);
	transmit_par('h02,1'b1); // ALU Result = 'd10 * d200 = 'd2000
	check_out_par_alu('d2000 ,2);

	//ALU operation with input operands
	transmit_par('hCC,1'b0);
	transmit_par('h07,1'b1);
	transmit_par('h04,1'b1);
	transmit_par('h01,1'b1);
	check_out_par_alu('d3 ,3);// ALU Result = 'd7 - d4 = 'd3

	//ALU operation without input operands
	transmit_par('hDD,1'b0);
	transmit_par('h02,1'b1);
	check_out_par_alu('d28 ,4); //ALU Result = 'd7 * 'd4 = 'd28

	//ALU operation without input operands
	transmit_par('hDD,1'b0);
	transmit_par('h00,1'b0);
	check_out_par_alu('d11 ,5); //ALU Result = 'd7 + 'd4 = 'd11	


	repeat(100) @(posedge UART_TX_CLK);
	
end
endtask

task test_no_parity ;
begin
	//configuration
	transmit_par('hAA, 1'b0);
    transmit_par('d02, 1'b1);
    transmit_par({6'd32, 1'b0 ,1'b0}, 1'b1);

	#(20 * UART_TX_PERIOD);

	//Register File Write
    transmit_no_par('hAA);
    transmit_no_par('d07);
    transmit_no_par('hcd);

	//Register File Write
	transmit_no_par('hAA);
    transmit_no_par('d09);
    transmit_no_par('hae);

	//Register File Write
	transmit_no_par('hAA);
    transmit_no_par('d05);
    transmit_no_par('h45);

	//Register File read
    transmit_no_par('hBB);
    transmit_no_par('d07); // read data = 'hcd
	check_out_no_par_rf('hcd ,1);


	//Register File read	
	transmit_no_par('hBB);
    transmit_no_par('d09); // read data = 'hae
	check_out_no_par_rf('hae ,2);

	//ALU operation with operands
	transmit_no_par('hCC);
	transmit_no_par('h0a);
	transmit_no_par('h04);
	transmit_no_par('h00); // ALU Result = 'h0a + h04 = 'h000e
	check_out_no_par_alu('h000e ,1);

	//ALU operation with input operands
	transmit_no_par('hCC);
	transmit_no_par('d10);
	transmit_no_par('d200);
	transmit_no_par('h02); // ALU Result = 'd10 * d200 = 'd2000
	check_out_no_par_alu('d2000 ,2);

	//ALU operation with input operands
	transmit_no_par('hCC);
	transmit_no_par('h07);
	transmit_no_par('h04);
	transmit_no_par('h01);
	check_out_no_par_alu('d3 ,3);// ALU Result = 'd7 - d4 = 'd3

	//ALU operation without input operands
	transmit_no_par('hDD);
	transmit_no_par('h02);
	check_out_no_par_alu('d28 ,4); //ALU Result = 'd7 * 'd4 = 'd28

	//ALU operation without input operands
	transmit_no_par('hDD);
	transmit_no_par('h00);
	check_out_no_par_alu('d11 ,5); //ALU Result = 'd7 + 'd4 = 'd11

	repeat(50) @(posedge UART_TX_CLK);
end
endtask

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
	@(posedge UART_TX_CLK);
	UART_RX_IN_TB = 1'b0;
	for(i = 0; i < 8; i = i + 1) begin
		@(posedge UART_TX_CLK);
		UART_RX_IN_TB = data[i];
	end
		@(posedge UART_TX_CLK);
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

task check_out_par_rf ;
input [7 :0] expected_out;
input [5:0] test_num;

reg         parity_bit;
reg [10 :0] design_out;

begin

	parity_bit = (PARITY_TYPE == EVEN) ? ^(expected_out) : ~^(expected_out);

	@(negedge UART_TX_O_TB);
	for(i = 0; i < 11; i = i + 1) begin
		@(negedge UART_TX_CLK);
		design_out[i] = UART_TX_O_TB;
	end

	if({1'b1, parity_bit, expected_out, 1'b0} == design_out) begin
		$display("Register File Read number %d succeed.", test_num);
	end

	else begin
		$display("Register File Read number %d failed.", test_num);
	end
end
endtask

task check_out_no_par_rf ;
input [7 :0] expected_out;
input [5:0] test_num;

reg [9 :0] design_out;

begin
	@(negedge UART_TX_O_TB);
	for(i = 0; i < 10; i = i + 1) begin
		@(negedge UART_TX_CLK);
		design_out[i] = UART_TX_O_TB;
	end

	if({1'b1, expected_out, 1'b0} == design_out) begin
		$display("Register File Read number %d succeed.", test_num);
	end

	else begin
		$display("Register File Read number %d failed.", test_num);
	end
end
endtask

task check_out_par_alu ;
input [15 :0] expected_out;
input [5:0] test_num;

reg parity_l, parity_h;
reg [21 :0] design_out;

begin

	parity_l = (PARITY_TYPE == EVEN) ? ^(expected_out[7:0]) : ~^(expected_out[7:0]);
	parity_h = (PARITY_TYPE == EVEN) ? ^(expected_out[15:8]) : ~^(expected_out[15:8]);

	@(negedge UART_TX_O_TB);
	for(i = 0; i < 11; i = i + 1) begin
		@(negedge UART_TX_CLK);
		design_out[i] = UART_TX_O_TB;
	end

	@(negedge UART_TX_O_TB);
	for(i = 11; i < 22; i = i + 1) begin
		@(negedge UART_TX_CLK);
		design_out[i] = UART_TX_O_TB;
	end

	if({1'b1, parity_h, expected_out[15:8], 1'b0, 1'b1, parity_l, expected_out[7:0], 1'b0} == design_out) begin
		$display("ALU OPERATION number %d succeed.", test_num);
	end

	else begin
		$display("ALU OPERATION number %d failed.", test_num);
	end
end
endtask

task check_out_no_par_alu ;
input [15 :0] expected_out;
input [5:0] test_num;

reg [19 :0] design_out;

begin
	@(negedge UART_TX_O_TB);
	for(i = 0; i < 10; i = i + 1) begin
		@(negedge UART_TX_CLK);
		design_out[i] = UART_TX_O_TB;
	end

	@(negedge UART_TX_O_TB);
	for(i = 10; i < 20; i = i + 1) begin
		@(negedge UART_TX_CLK);
		design_out[i] = UART_TX_O_TB;
	end

	if({1'b1, expected_out[15:8], 1'b0, 1'b1, expected_out[7:0], 1'b0} == design_out) begin
		$display("ALU OPERATION number %d succeed.", test_num);
	end

	else begin
		$display("ALU OPERATION number %d failed.", test_num);
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
