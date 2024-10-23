module UART_TX (
input  wire [7:0] P_DATA,
input  wire       DATA_VALID,
input  wire       PAR_EN, PAR_TYPE,
input  wire       CLK, RST,
output wire       TX_OUT,
output wire       BUSY
);


wire PAR_BIT, SER_DATA;
wire SER_EN, SER_DONE;
wire [1:0] MUX_SEL;

Parity_Calc PAR_calc(
.PAR_EN(PAR_EN),
.Busy(BUSY),
.p_data(P_DATA),
.Data_Valid(DATA_VALID),
.CLK(CLK),
.RST(RST),
.Par_Type(PAR_TYPE),
.Par_Bit(PAR_BIT)
);

serializer Serializer(
.P_DATA(P_DATA),
.DATA_VALID(DATA_VALID),
.CLK(CLK),
.RST(RST),
.busy(BUSY),
.SER_EN(SER_EN),
.SER_DONE(SER_DONE),
.SER_DATA(SER_DATA)
);

UART_TX_FSM fsm(
.Data_Valid(DATA_VALID),
.ser_done(SER_DONE),
.CLK(CLK),
.RST(RST),
.PAR_EN(PAR_EN),
.ser_en(SER_EN),
.mux_sel(MUX_SEL),
.busy(BUSY)
);

MUX_4x1 MUX(
.in0(1'b0),
.in1(1'b1),
.in2(SER_DATA),
.in3(PAR_BIT),
.sel(MUX_SEL),
.out(TX_OUT)
);
endmodule
