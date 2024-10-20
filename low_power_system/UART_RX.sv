module UART_RX (
input  wire       RX_IN,
input  wire [5:0] Prescale,
input  wire       PAR_EN,
input  wire       PAR_TYP,
input  wire       CLK,
input  wire       RST,
output wire [7:0] P_DATA,
output wire       Parity_Error,
output wire       Stop_Error,
output wire       Data_Valid
);

wire [3:0] bit_count;
wire [5:0] edge_count;
wire sampling_done, strt_glitch, deser_en, par_chk_en, strt_chk_en, stp_chk_en, edge_bit_en, dat_sam_en, sampled_bit;

UART_RX_FSM FSM_u0(
.CLK(CLK),	
.RST(RST),
.RX_IN(RX_IN),
.PAR_EN(PAR_EN),
.bit_count(bit_count),
.edge_count(edge_count),
.sampling_done(sampling_done),
.par_err(Parity_Error),
.strt_glitch(strt_glitch),
.stp_err(Stop_Error),
.deser_en(deser_en),
.par_chk_en(par_chk_en),
.strt_chk_en(strt_chk_en),
.stp_chk_en(stp_chk_en),
.edge_bit_en(edge_bit_en),
.dat_sam_en(dat_sam_en),
.data_valid(Data_Valid)
);

data_sampling data_sampling_u0(
.CLK(CLK),    
.RST(RST),
.RX_IN(RX_IN),
.dat_sam_en(dat_sam_en),
.prescale(Prescale),
.edge_count(edge_count),
.sampled_bit(sampled_bit),
.sampling_done(sampling_done)
);


edge_bit_counter edge_bit_counter_u0(
.CLK(CLK),    
.RST(RST),
.enable(edge_bit_en),
.PAR_EN(par_chk_en),
.prescale(Prescale),
.bit_count(bit_count),
.edge_count(edge_count)
);


parity_check parity_check_u0(
.P_DATA(P_DATA),
.parity_bit(sampled_bit),
.PAR_TYP(PAR_TYP),
.par_check_en(par_chk_en),
.par_err(Parity_Error)
);


start_check start_check_u0(
.start_bit(sampled_bit),
.start_check_en(strt_chk_en),
.start_glitch(strt_glitch)
);

stop_check stop_check_u0(
.stop_bit(sampled_bit),
.stop_check_en(stp_chk_en),
.stop_err(Stop_Error)
);


desarilzer desarilzer_u0(
.CLK(CLK),
.RST(RST),
.deser_en(deser_en),
.sampled_bit(sampled_bit),
.bit_count(bit_count),
.P_DATA(P_DATA)
);
endmodule