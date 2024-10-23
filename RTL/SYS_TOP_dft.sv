
module SYS_TOP_dft
(
 input   wire                          RST_N,
 input   wire                          UART_CLK,
 input   wire                          REF_CLK,
 input   wire                          UART_RX_IN,
 input   wire                          SCAN_IN,
 input   wire                          SCAN_EN,
 input   wire                          SCAN_CLK,
 input   wire                          SCAN_RST,
 input   wire                          TEST_MODE,
 output  wire                          UART_TX_O,
 output  wire                          parity_error,
 output  wire                          framing_error,
 output  wire                          SCAN_OUT
);


wire ClkGating_EN, ALU_CLK;
wire SYNC_RST_0, SYNC_RST_1;
wire RX_OUT_V, RX_D_VLD;
wire [7:0] RX_OUT_P, RX_P_Data;
wire [15:0] ALU_OUT;

wire ALU_OUT_Valid, RegFile_RdData_Valid, FIFO_FULL, ClkDiv_EN, ALU_EN, RegFile_WrEn, RegFile_RdEn, FIFO_WrInc;
wire [3:0] ALU_FUN, RegFile_Address, RX_CLK_div_ratio;
wire [7:0] RegFile_RdData, RegFile_WrData, FIFO_WrData;

wire [7:0] REG0, REG1, REG2, REG3;

wire RX_CLK, TX_CLK;

wire [7:0] FIFO_RD_DATA ;

wire FIFO_EMPTY;

wire FIFO_RINC, TX_BUSY;

wire UART_CLK_M, REF_CLK_M, TX_CLK_M, RX_CLK_M, SYNC_RST_0_M, SYNC_RST_1_M;

MUX_2x1 UART_CLK_MUX(
.in0(UART_CLK),
.in1(SCAN_CLK),
.sel(TEST_MODE),
.out(UART_CLK_M)
);

MUX_2x1 REF_CLK_MUX(
.in0(REF_CLK),
.in1(SCAN_CLK),
.sel(TEST_MODE),
.out(REF_CLK_M)
);

MUX_2x1 TX_CLK_MUX(
.in0(TX_CLK),
.in1(SCAN_CLK),
.sel(TEST_MODE),
.out(TX_CLK_M)
);

MUX_2x1 RX_CLK_MUX(
.in0(RX_CLK),
.in1(SCAN_CLK),
.sel(TEST_MODE),
.out(RX_CLK_M)
);

MUX_2x1 RST_MUX(
.in0(RST_N),
.in1(SCAN_RST),
.sel(TEST_MODE),
.out(RST_N_M)
);

MUX_2x1 SYNC_RST_0_MUX(
.in0(SYNC_RST_0),
.in1(SCAN_RST),
.sel(TEST_MODE),
.out(SYNC_RST_0_M)
);

MUX_2x1 SYNC_RST_1_MUX(
.in0(SYNC_RST_1),
.in1(SCAN_RST),
.sel(TEST_MODE),
.out(SYNC_RST_1_M)
);

///********************************************************///
//////////////////// Reset synchronizers /////////////////////
///********************************************************///

RST_SYNC #(.NUM_STAGES(2)) RST_SYNC_U0
(
.rst(RST_N_M),
.clk(REF_CLK_M),
.sync_rst(SYNC_RST_0)
);


RST_SYNC #(.NUM_STAGES(2)) RST_SYNC_U1
(
.rst(RST_N_M),
.clk(UART_CLK_M),
.sync_rst(SYNC_RST_1)
);


///********************************************************///
///////////////////// Data Synchronizers /////////////////////
///********************************************************///

DATA_SYNC #(.NUM_STAGES(2), .BUS_WIDTH(8)) DATA_SYNC_U0
(
.unsync_bus(RX_OUT_P),
.bus_enable(RX_OUT_V),
.clk(REF_CLK_M),
.rst(SYNC_RST_0_M),
.sync_bus(RX_P_Data),
.enable_pulse(RX_D_VLD)
);

///********************************************************///
///////////////////////// Async FIFO /////////////////////////
///********************************************************///


FIFO #(.DATA_WIDTH (8)) FIFO_U0
(
.w_clk(REF_CLK_M),
.w_rst_n(SYNC_RST_0_M),
.wr_data(FIFO_WrData),
.w_inc(FIFO_WrInc),
.r_clk(TX_CLK_M),
.r_inc(FIFO_RINC),
.r_rst_n(SYNC_RST_1_M),
.rd_data(FIFO_RD_DATA),
.empty(FIFO_EMPTY),
.full(FIFO_FULL)
);

///********************************************************///
//////////////////////// Pulse Generator /////////////////////
///********************************************************///

PULSE_GEN PULSE_GEN_U0
(
.clk(TX_CLK_M),
.rst(SYNC_RST_1_M),
.lvl_sig(TX_BUSY),
.pulse_sig(FIFO_RINC)
);


///********************************************************///
//////////// Clock Divider for UART_TX Clock /////////////////
///********************************************************///

Clk_Div Clk_Div_U0(
.i_ref_clk(UART_CLK_M),
.i_rst_n(SYNC_RST_1_M),
.i_clk_en(1'b1),
.i_div_ratio(REG3),
.o_div_clk(TX_CLK)
);

///********************************************************///
/////////////////////// Custom Mux Clock /////////////////////
///********************************************************///

CLKDIV_MUX #(.WIDTH(4)) CLKDIV_MUX_U0 (
.IN(REG2[7:2]),
.OUT(RX_CLK_div_ratio)
);


///********************************************************///
//////////// Clock Divider for UART_RX Clock /////////////////
///********************************************************///


Clk_Div Clk_Div_U1(
.i_ref_clk(UART_CLK_M),
.i_rst_n(SYNC_RST_1_M),
.i_clk_en(1'b1),
.i_div_ratio({4'b0000,RX_CLK_div_ratio}),
.o_div_clk(RX_CLK)
);

///********************************************************///
/////////////////////////// UART /////////////////////////////
///********************************************************///
UART UART_U0(
.RST(SYNC_RST_1_M),
.TX_CLK(TX_CLK_M),
.RX_CLK(RX_CLK_M),
.RX_IN_S(UART_RX_IN),
.RX_OUT_P(RX_OUT_P), 
.RX_OUT_V(RX_OUT_V),
.TX_IN_P(FIFO_RD_DATA), 
.TX_IN_V(!FIFO_EMPTY), 
.TX_OUT_S(UART_TX_O),
.TX_OUT_V(TX_BUSY),  
.Prescale(REG2[7:2]), 
.parity_enable(REG2[0]),
.parity_type(REG2[1]),
.parity_error(parity_error),
.framing_error(framing_error)
);


///********************************************************///
//////////////////// System Controller ///////////////////////
///********************************************************///

SYS_CTRL SYS_CTRL_U0(
.CLK(REF_CLK_M),
.RST(SYNC_RST_0_M),
.ALU_OUT(ALU_OUT),
.ALU_OUT_Valid(ALU_OUT_Valid),
.RX_P_Data(RX_P_Data),
.RX_D_VLD(RX_D_VLD),
.RegFile_RdData(RegFile_RdData),
.RegFile_RdData_Valid(RegFile_RdData_Valid),
.FIFO_FULL(FIFO_FULL),
.ClkGating_EN(ClkGating_EN),
.ClkDiv_EN(ClkDiv_EN),
.ALU_EN(ALU_EN),
.ALU_FUN(ALU_FUN),
.RegFile_Address(RegFile_Address),
.RegFile_WrEn(RegFile_WrEn),
.RegFile_RdEn(RegFile_RdEn),
.RegFile_WrData(RegFile_WrData),
.FIFO_WrData(FIFO_WrData),
.FIFO_WrInc(FIFO_WrInc)
);

///********************************************************///
/////////////////////// Register File ////////////////////////
///********************************************************///


RegFile #(.WIDTH(8),.DEPTH(16),.ADDR(4)) RegFile_U0
(
.CLK(REF_CLK_M),
.RST(SYNC_RST_0_M),
.WrEn(RegFile_WrEn),
.RdEn(RegFile_RdEn),
.Address(RegFile_Address),
.WrData(RegFile_WrData),
.RdData(RegFile_RdData),
.RdData_VLD(RegFile_RdData_Valid),
.REG0(REG0),
.REG1(REG1),
.REG2(REG2),
.REG3(REG3)
);


///********************************************************///
//////////////////////////// ALU /////////////////////////////
///********************************************************///
 
ALU #(.OPER_WIDTH(8), .OUT_WIDTH(16)) ALU_U0
(
.A(REG0), 
.B(REG1),
.EN(ALU_EN),
.ALU_FUN(ALU_FUN),
.CLK(ALU_CLK),
.RST(SYNC_RST_0_M),  
.ALU_OUT(ALU_OUT),
.OUT_VALID(ALU_OUT_Valid)
);

///********************************************************///
///////////////////////// Clock Gating ///////////////////////
///********************************************************///

CLK_GATE CLK_GATE_U0(
.CLK_EN(ClkGating_EN || TEST_MODE),
.CLK(REF_CLK_M),
.GATED_CLK(ALU_CLK)
);


endmodule
 
