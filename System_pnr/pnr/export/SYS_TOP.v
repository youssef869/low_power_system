/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : K-2015.06
// Date      : Wed Oct 23 22:21:52 2024
/////////////////////////////////////////////////////////////
module MUX_2x1_1 (
	in0, 
	in1, 
	sel, 
	out);
   input in0;
   input in1;
   input sel;
   output out;

   // Internal wires
   wire N0;

   assign N0 = sel ;

   MX2X2M U1 (.Y(out), 
	.S0(N0), 
	.B(in1), 
	.A(in0));
endmodule

module MUX_2x1_4 (
	in0, 
	in1, 
	sel, 
	out);
   input in0;
   input in1;
   input sel;
   output out;

   // Internal wires
   wire N0;

   assign N0 = sel ;

   MX2X6M U1 (.Y(out), 
	.S0(N0), 
	.B(in1), 
	.A(in0));
endmodule

module MUX_2x1_3 (
	in0, 
	in1, 
	sel, 
	out);
   input in0;
   input in1;
   input sel;
   output out;

   // Internal wires
   wire N0;

   assign N0 = sel ;

   MX2X2M U1 (.Y(out), 
	.S0(N0), 
	.B(in1), 
	.A(in0));
endmodule

module MUX_2x1_2 (
	in0, 
	in1, 
	sel, 
	out);
   input in0;
   input in1;
   input sel;
   output out;

   // Internal wires
   wire N0;

   assign N0 = sel ;

   MX2X2M U1 (.Y(out), 
	.S0(N0), 
	.B(in1), 
	.A(in0));
endmodule

module MUX_2x1_0 (
	in0, 
	in1, 
	sel, 
	out);
   input in0;
   input in1;
   input sel;
   output out;

   // Internal wires
   wire FE_PHN13_RST_N;
   wire FE_PHN12_RST_N;
   wire FE_PHN9_scan_rst;
   wire FE_PHN6_scan_rst;
   wire N0;

   assign N0 = sel ;

   DLY4X1M FE_PHC13_RST_N (.Y(FE_PHN13_RST_N), 
	.A(FE_PHN12_RST_N));
   DLY4X1M FE_PHC12_RST_N (.Y(FE_PHN12_RST_N), 
	.A(in0));
   DLY4X1M FE_PHC9_scan_rst (.Y(FE_PHN9_scan_rst), 
	.A(FE_PHN6_scan_rst));
   DLY4X1M FE_PHC6_scan_rst (.Y(FE_PHN6_scan_rst), 
	.A(in1));
   MX2X2M U1 (.Y(out), 
	.S0(N0), 
	.B(FE_PHN9_scan_rst), 
	.A(FE_PHN13_RST_N));
endmodule

module MUX_2x1_6 (
	in0, 
	in1, 
	sel, 
	out);
   input in0;
   input in1;
   input sel;
   output out;

   // Internal wires
   wire FE_PHN11_scan_rst;
   wire FE_PHN8_scan_rst;
   wire N0;

   assign N0 = sel ;

   DLY4X1M FE_PHC11_scan_rst (.Y(FE_PHN11_scan_rst), 
	.A(FE_PHN8_scan_rst));
   DLY4X1M FE_PHC8_scan_rst (.Y(FE_PHN8_scan_rst), 
	.A(in1));
   MX2X8M U1 (.Y(out), 
	.S0(N0), 
	.B(FE_PHN11_scan_rst), 
	.A(in0));
endmodule

module MUX_2x1_5 (
	in0, 
	in1, 
	sel, 
	out);
   input in0;
   input in1;
   input sel;
   output out;

   // Internal wires
   wire FE_PHN10_scan_rst;
   wire FE_PHN7_scan_rst;
   wire N0;

   assign N0 = sel ;

   DLY4X1M FE_PHC10_scan_rst (.Y(FE_PHN10_scan_rst), 
	.A(FE_PHN7_scan_rst));
   DLY4X1M FE_PHC7_scan_rst (.Y(FE_PHN7_scan_rst), 
	.A(in1));
   MX2X8M U1 (.Y(out), 
	.S0(N0), 
	.B(FE_PHN10_scan_rst), 
	.A(in0));
endmodule

module RST_SYNC_NUM_STAGES2_test_0 (
	rst, 
	clk, 
	sync_rst, 
	test_si, 
	test_se, 
	n26);
   input rst;
   input clk;
   output sync_rst;
   input test_si;
   input test_se;
   input n26;

   // Internal wires
   wire HTIE_LTIEHI_NET;
   wire \sync_rst_reg[0] ;

   TIEHIM HTIE_LTIEHI (.Y(HTIE_LTIEHI_NET));
   SDFFRQX2M \sync_rst_reg_reg[0]  (.SI(test_si), 
	.SE(n26), 
	.RN(rst), 
	.Q(\sync_rst_reg[0] ), 
	.D(HTIE_LTIEHI_NET), 
	.CK(clk));
   SDFFRQX1M \sync_rst_reg_reg[1]  (.SI(\sync_rst_reg[0] ), 
	.SE(test_se), 
	.RN(rst), 
	.Q(sync_rst), 
	.D(\sync_rst_reg[0] ), 
	.CK(clk));
endmodule

module RST_SYNC_NUM_STAGES2_test_1 (
	rst, 
	clk, 
	sync_rst, 
	test_si, 
	test_se);
   input rst;
   input clk;
   output sync_rst;
   input test_si;
   input test_se;

   // Internal wires
   wire HTIE_LTIEHI_NET;
   wire \sync_rst_reg[0] ;

   TIEHIM HTIE_LTIEHI (.Y(HTIE_LTIEHI_NET));
   SDFFRQX2M \sync_rst_reg_reg[0]  (.SI(test_si), 
	.SE(test_se), 
	.RN(rst), 
	.Q(\sync_rst_reg[0] ), 
	.D(HTIE_LTIEHI_NET), 
	.CK(clk));
   SDFFRQX1M \sync_rst_reg_reg[1]  (.SI(\sync_rst_reg[0] ), 
	.SE(test_se), 
	.RN(rst), 
	.Q(sync_rst), 
	.D(\sync_rst_reg[0] ), 
	.CK(clk));
endmodule

module DATA_SYNC_NUM_STAGES2_BUS_WIDTH8_test_1 (
	unsync_bus, 
	bus_enable, 
	clk, 
	rst, 
	sync_bus, 
	enable_pulse, 
	test_si, 
	test_so, 
	test_se);
   input [7:0] unsync_bus;
   input bus_enable;
   input clk;
   input rst;
   output [7:0] sync_bus;
   output enable_pulse;
   input test_si;
   output test_so;
   input test_se;

   // Internal wires
   wire FE_PHN14_n21__Exclude_0_NET;
   wire pulse_gen_reg;
   wire n1;
   wire n3;
   wire n5;
   wire n7;
   wire n9;
   wire n11;
   wire n13;
   wire n15;
   wire n17;
   wire n22;
   wire [1:0] sync_enable_reg;

   assign test_so = sync_enable_reg[1] ;

   DLY4X1M FE_PHC14_n21__Exclude_0_NET (.Y(FE_PHN14_n21__Exclude_0_NET), 
	.A(test_si));
   SDFFRQX2M pulse_gen_reg_reg (.SI(enable_pulse), 
	.SE(test_se), 
	.RN(rst), 
	.Q(pulse_gen_reg), 
	.D(sync_enable_reg[1]), 
	.CK(clk));
   SDFFRQX2M \sync_enable_reg_reg[1]  (.SI(sync_enable_reg[0]), 
	.SE(test_se), 
	.RN(rst), 
	.Q(sync_enable_reg[1]), 
	.D(sync_enable_reg[0]), 
	.CK(clk));
   SDFFRQX2M \sync_bus_reg[7]  (.SI(sync_bus[6]), 
	.SE(test_se), 
	.RN(rst), 
	.Q(sync_bus[7]), 
	.D(n17), 
	.CK(clk));
   SDFFRQX2M \sync_bus_reg[4]  (.SI(sync_bus[3]), 
	.SE(test_se), 
	.RN(rst), 
	.Q(sync_bus[4]), 
	.D(n11), 
	.CK(clk));
   SDFFRQX2M \sync_bus_reg[6]  (.SI(sync_bus[5]), 
	.SE(test_se), 
	.RN(rst), 
	.Q(sync_bus[6]), 
	.D(n15), 
	.CK(clk));
   SDFFRQX2M \sync_bus_reg[5]  (.SI(sync_bus[4]), 
	.SE(test_se), 
	.RN(rst), 
	.Q(sync_bus[5]), 
	.D(n13), 
	.CK(clk));
   SDFFRQX2M \sync_bus_reg[3]  (.SI(sync_bus[2]), 
	.SE(test_se), 
	.RN(rst), 
	.Q(sync_bus[3]), 
	.D(n9), 
	.CK(clk));
   SDFFRQX2M \sync_bus_reg[2]  (.SI(sync_bus[1]), 
	.SE(test_se), 
	.RN(rst), 
	.Q(sync_bus[2]), 
	.D(n7), 
	.CK(clk));
   SDFFRQX2M \sync_bus_reg[1]  (.SI(sync_bus[0]), 
	.SE(test_se), 
	.RN(rst), 
	.Q(sync_bus[1]), 
	.D(n5), 
	.CK(clk));
   SDFFRQX2M \sync_bus_reg[0]  (.SI(pulse_gen_reg), 
	.SE(test_se), 
	.RN(rst), 
	.Q(sync_bus[0]), 
	.D(n3), 
	.CK(clk));
   SDFFRQX2M enable_pulse_reg (.SI(FE_PHN14_n21__Exclude_0_NET), 
	.SE(test_se), 
	.RN(rst), 
	.Q(enable_pulse), 
	.D(n22), 
	.CK(clk));
   SDFFRQX2M \sync_enable_reg_reg[0]  (.SI(sync_bus[7]), 
	.SE(test_se), 
	.RN(rst), 
	.Q(sync_enable_reg[0]), 
	.D(bus_enable), 
	.CK(clk));
   INVX2M U3 (.Y(n22), 
	.A(n1));
   NAND2BX2M U4 (.Y(n1), 
	.B(sync_enable_reg[1]), 
	.AN(pulse_gen_reg));
   AO22X1M U5 (.Y(n3), 
	.B1(n1), 
	.B0(sync_bus[0]), 
	.A1(n22), 
	.A0(unsync_bus[0]));
   AO22X1M U6 (.Y(n5), 
	.B1(n1), 
	.B0(sync_bus[1]), 
	.A1(n22), 
	.A0(unsync_bus[1]));
   AO22X1M U7 (.Y(n7), 
	.B1(n1), 
	.B0(sync_bus[2]), 
	.A1(n22), 
	.A0(unsync_bus[2]));
   AO22X1M U8 (.Y(n9), 
	.B1(n1), 
	.B0(sync_bus[3]), 
	.A1(n22), 
	.A0(unsync_bus[3]));
   AO22X1M U9 (.Y(n11), 
	.B1(n1), 
	.B0(sync_bus[4]), 
	.A1(n22), 
	.A0(unsync_bus[4]));
   AO22X1M U10 (.Y(n13), 
	.B1(n1), 
	.B0(sync_bus[5]), 
	.A1(n22), 
	.A0(unsync_bus[5]));
   AO22X1M U11 (.Y(n15), 
	.B1(n1), 
	.B0(sync_bus[6]), 
	.A1(n22), 
	.A0(unsync_bus[6]));
   AO22X1M U12 (.Y(n17), 
	.B1(n1), 
	.B0(sync_bus[7]), 
	.A1(n22), 
	.A0(unsync_bus[7]));
endmodule

module FIFO_MEM_CNTRL_DATA_WIDTH8_test_1 (
	w_clk, 
	w_rst_n, 
	w_data, 
	w_clken, 
	w_addr, 
	r_addr, 
	r_data, 
	test_si2, 
	test_si1, 
	test_so2, 
	test_so1, 
	test_se, 
	FE_OFN2_SYNC_RST_0_M, 
	REF_CLK_M__L5_N5, 
	REF_CLK_M__L5_N6, 
	REF_CLK_M__L5_N7);
   input w_clk;
   input w_rst_n;
   input [7:0] w_data;
   input w_clken;
   input [2:0] w_addr;
   input [2:0] r_addr;
   output [7:0] r_data;
   input test_si2;
   input test_si1;
   output test_so2;
   output test_so1;
   input test_se;
   input FE_OFN2_SYNC_RST_0_M;
   input REF_CLK_M__L5_N5;
   input REF_CLK_M__L5_N6;
   input REF_CLK_M__L5_N7;

   // Internal wires
   wire FE_PHN5_test_si2;
   wire FE_PHN4_test_si2;
   wire FE_OFN4_SO;
   wire N10;
   wire N11;
   wire N12;
   wire \FIFO_BUFFER[7][7] ;
   wire \FIFO_BUFFER[7][6] ;
   wire \FIFO_BUFFER[7][5] ;
   wire \FIFO_BUFFER[7][4] ;
   wire \FIFO_BUFFER[7][3] ;
   wire \FIFO_BUFFER[7][2] ;
   wire \FIFO_BUFFER[7][1] ;
   wire \FIFO_BUFFER[7][0] ;
   wire \FIFO_BUFFER[6][7] ;
   wire \FIFO_BUFFER[6][6] ;
   wire \FIFO_BUFFER[6][5] ;
   wire \FIFO_BUFFER[6][4] ;
   wire \FIFO_BUFFER[6][3] ;
   wire \FIFO_BUFFER[6][2] ;
   wire \FIFO_BUFFER[6][1] ;
   wire \FIFO_BUFFER[6][0] ;
   wire \FIFO_BUFFER[5][7] ;
   wire \FIFO_BUFFER[5][6] ;
   wire \FIFO_BUFFER[5][5] ;
   wire \FIFO_BUFFER[5][4] ;
   wire \FIFO_BUFFER[5][3] ;
   wire \FIFO_BUFFER[5][2] ;
   wire \FIFO_BUFFER[5][1] ;
   wire \FIFO_BUFFER[5][0] ;
   wire \FIFO_BUFFER[4][7] ;
   wire \FIFO_BUFFER[4][6] ;
   wire \FIFO_BUFFER[4][5] ;
   wire \FIFO_BUFFER[4][4] ;
   wire \FIFO_BUFFER[4][3] ;
   wire \FIFO_BUFFER[4][2] ;
   wire \FIFO_BUFFER[4][1] ;
   wire \FIFO_BUFFER[4][0] ;
   wire \FIFO_BUFFER[3][7] ;
   wire \FIFO_BUFFER[3][6] ;
   wire \FIFO_BUFFER[3][5] ;
   wire \FIFO_BUFFER[3][4] ;
   wire \FIFO_BUFFER[3][3] ;
   wire \FIFO_BUFFER[3][2] ;
   wire \FIFO_BUFFER[3][1] ;
   wire \FIFO_BUFFER[3][0] ;
   wire \FIFO_BUFFER[2][7] ;
   wire \FIFO_BUFFER[2][6] ;
   wire \FIFO_BUFFER[2][5] ;
   wire \FIFO_BUFFER[2][4] ;
   wire \FIFO_BUFFER[2][3] ;
   wire \FIFO_BUFFER[2][2] ;
   wire \FIFO_BUFFER[2][1] ;
   wire \FIFO_BUFFER[2][0] ;
   wire \FIFO_BUFFER[1][7] ;
   wire \FIFO_BUFFER[1][6] ;
   wire \FIFO_BUFFER[1][5] ;
   wire \FIFO_BUFFER[1][4] ;
   wire \FIFO_BUFFER[1][3] ;
   wire \FIFO_BUFFER[1][2] ;
   wire \FIFO_BUFFER[1][1] ;
   wire \FIFO_BUFFER[1][0] ;
   wire \FIFO_BUFFER[0][7] ;
   wire \FIFO_BUFFER[0][6] ;
   wire \FIFO_BUFFER[0][5] ;
   wire \FIFO_BUFFER[0][4] ;
   wire \FIFO_BUFFER[0][3] ;
   wire \FIFO_BUFFER[0][2] ;
   wire \FIFO_BUFFER[0][1] ;
   wire \FIFO_BUFFER[0][0] ;
   wire n75;
   wire n76;
   wire n77;
   wire n78;
   wire n79;
   wire n80;
   wire n81;
   wire n82;
   wire n83;
   wire n84;
   wire n85;
   wire n86;
   wire n87;
   wire n88;
   wire n89;
   wire n90;
   wire n91;
   wire n92;
   wire n93;
   wire n94;
   wire n95;
   wire n96;
   wire n97;
   wire n98;
   wire n99;
   wire n100;
   wire n101;
   wire n102;
   wire n103;
   wire n104;
   wire n105;
   wire n106;
   wire n107;
   wire n108;
   wire n109;
   wire n110;
   wire n111;
   wire n112;
   wire n113;
   wire n114;
   wire n115;
   wire n116;
   wire n117;
   wire n118;
   wire n119;
   wire n120;
   wire n121;
   wire n122;
   wire n123;
   wire n124;
   wire n125;
   wire n126;
   wire n127;
   wire n128;
   wire n129;
   wire n130;
   wire n131;
   wire n132;
   wire n133;
   wire n134;
   wire n135;
   wire n136;
   wire n137;
   wire n138;
   wire n139;
   wire n140;
   wire n141;
   wire n142;
   wire n143;
   wire n144;
   wire n145;
   wire n146;
   wire n147;
   wire n148;
   wire n65;
   wire n66;
   wire n67;
   wire n68;
   wire n69;
   wire n70;
   wire n71;
   wire n72;
   wire n73;
   wire n74;
   wire n149;
   wire n150;
   wire n151;
   wire n152;
   wire n153;
   wire n154;
   wire n155;
   wire n156;
   wire n167;
   wire n168;
   wire n169;
   wire n170;
   wire n171;
   wire n172;
   wire n173;
   wire n174;
   wire n175;
   wire n176;
   wire n180;
   wire n181;
   wire n182;
   wire n183;
   wire n184;
   wire n185;
   wire n186;

   assign N10 = r_addr[0] ;
   assign N11 = r_addr[1] ;
   assign N12 = r_addr[2] ;
   assign test_so2 = \FIFO_BUFFER[7][7]  ;
   assign test_so1 = \FIFO_BUFFER[2][7]  ;

   DLY4X1M FE_PHC5_test_si2 (.Y(FE_PHN5_test_si2), 
	.A(FE_PHN4_test_si2));
   DLY4X1M FE_PHC4_test_si2 (.Y(FE_PHN4_test_si2), 
	.A(test_si2));
   BUFX10M FE_OFC4_SO (.Y(\FIFO_BUFFER[2][7] ), 
	.A(FE_OFN4_SO));
   SDFFRQX2M \FIFO_BUFFER_reg[5][7]  (.SI(\FIFO_BUFFER[5][6] ), 
	.SE(n184), 
	.RN(FE_OFN2_SYNC_RST_0_M), 
	.Q(\FIFO_BUFFER[5][7] ), 
	.D(n132), 
	.CK(REF_CLK_M__L5_N7));
   SDFFRQX2M \FIFO_BUFFER_reg[5][6]  (.SI(\FIFO_BUFFER[5][5] ), 
	.SE(n183), 
	.RN(FE_OFN2_SYNC_RST_0_M), 
	.Q(\FIFO_BUFFER[5][6] ), 
	.D(n131), 
	.CK(REF_CLK_M__L5_N6));
   SDFFRQX2M \FIFO_BUFFER_reg[5][5]  (.SI(\FIFO_BUFFER[5][4] ), 
	.SE(n182), 
	.RN(FE_OFN2_SYNC_RST_0_M), 
	.Q(\FIFO_BUFFER[5][5] ), 
	.D(n130), 
	.CK(REF_CLK_M__L5_N6));
   SDFFRQX2M \FIFO_BUFFER_reg[5][4]  (.SI(\FIFO_BUFFER[5][3] ), 
	.SE(n181), 
	.RN(FE_OFN2_SYNC_RST_0_M), 
	.Q(\FIFO_BUFFER[5][4] ), 
	.D(n129), 
	.CK(REF_CLK_M__L5_N6));
   SDFFRQX2M \FIFO_BUFFER_reg[5][3]  (.SI(\FIFO_BUFFER[5][2] ), 
	.SE(n184), 
	.RN(FE_OFN2_SYNC_RST_0_M), 
	.Q(\FIFO_BUFFER[5][3] ), 
	.D(n128), 
	.CK(REF_CLK_M__L5_N6));
   SDFFRQX2M \FIFO_BUFFER_reg[5][2]  (.SI(\FIFO_BUFFER[5][1] ), 
	.SE(n183), 
	.RN(FE_OFN2_SYNC_RST_0_M), 
	.Q(\FIFO_BUFFER[5][2] ), 
	.D(n127), 
	.CK(REF_CLK_M__L5_N6));
   SDFFRQX2M \FIFO_BUFFER_reg[5][1]  (.SI(\FIFO_BUFFER[5][0] ), 
	.SE(n182), 
	.RN(FE_OFN2_SYNC_RST_0_M), 
	.Q(\FIFO_BUFFER[5][1] ), 
	.D(n126), 
	.CK(REF_CLK_M__L5_N6));
   SDFFRQX2M \FIFO_BUFFER_reg[5][0]  (.SI(\FIFO_BUFFER[4][7] ), 
	.SE(n181), 
	.RN(FE_OFN2_SYNC_RST_0_M), 
	.Q(\FIFO_BUFFER[5][0] ), 
	.D(n125), 
	.CK(REF_CLK_M__L5_N6));
   SDFFRQX2M \FIFO_BUFFER_reg[1][7]  (.SI(\FIFO_BUFFER[1][6] ), 
	.SE(n184), 
	.RN(w_rst_n), 
	.Q(\FIFO_BUFFER[1][7] ), 
	.D(n100), 
	.CK(w_clk));
   SDFFRQX2M \FIFO_BUFFER_reg[1][6]  (.SI(\FIFO_BUFFER[1][5] ), 
	.SE(n183), 
	.RN(FE_OFN2_SYNC_RST_0_M), 
	.Q(\FIFO_BUFFER[1][6] ), 
	.D(n99), 
	.CK(w_clk));
   SDFFRQX2M \FIFO_BUFFER_reg[1][5]  (.SI(\FIFO_BUFFER[1][4] ), 
	.SE(n182), 
	.RN(FE_OFN2_SYNC_RST_0_M), 
	.Q(\FIFO_BUFFER[1][5] ), 
	.D(n98), 
	.CK(w_clk));
   SDFFRQX2M \FIFO_BUFFER_reg[1][4]  (.SI(\FIFO_BUFFER[1][3] ), 
	.SE(n181), 
	.RN(FE_OFN2_SYNC_RST_0_M), 
	.Q(\FIFO_BUFFER[1][4] ), 
	.D(n97), 
	.CK(w_clk));
   SDFFRQX2M \FIFO_BUFFER_reg[1][3]  (.SI(\FIFO_BUFFER[1][2] ), 
	.SE(n184), 
	.RN(FE_OFN2_SYNC_RST_0_M), 
	.Q(\FIFO_BUFFER[1][3] ), 
	.D(n96), 
	.CK(w_clk));
   SDFFRQX2M \FIFO_BUFFER_reg[1][2]  (.SI(\FIFO_BUFFER[1][1] ), 
	.SE(n183), 
	.RN(w_rst_n), 
	.Q(\FIFO_BUFFER[1][2] ), 
	.D(n95), 
	.CK(w_clk));
   SDFFRQX2M \FIFO_BUFFER_reg[1][1]  (.SI(\FIFO_BUFFER[1][0] ), 
	.SE(n182), 
	.RN(w_rst_n), 
	.Q(\FIFO_BUFFER[1][1] ), 
	.D(n94), 
	.CK(w_clk));
   SDFFRQX2M \FIFO_BUFFER_reg[1][0]  (.SI(\FIFO_BUFFER[0][7] ), 
	.SE(n181), 
	.RN(w_rst_n), 
	.Q(\FIFO_BUFFER[1][0] ), 
	.D(n93), 
	.CK(REF_CLK_M__L5_N5));
   SDFFRQX2M \FIFO_BUFFER_reg[7][7]  (.SI(\FIFO_BUFFER[7][6] ), 
	.SE(n184), 
	.RN(FE_OFN2_SYNC_RST_0_M), 
	.Q(\FIFO_BUFFER[7][7] ), 
	.D(n148), 
	.CK(REF_CLK_M__L5_N7));
   SDFFRQX2M \FIFO_BUFFER_reg[7][6]  (.SI(\FIFO_BUFFER[7][5] ), 
	.SE(n183), 
	.RN(FE_OFN2_SYNC_RST_0_M), 
	.Q(\FIFO_BUFFER[7][6] ), 
	.D(n147), 
	.CK(REF_CLK_M__L5_N6));
   SDFFRQX2M \FIFO_BUFFER_reg[7][5]  (.SI(\FIFO_BUFFER[7][4] ), 
	.SE(n182), 
	.RN(FE_OFN2_SYNC_RST_0_M), 
	.Q(\FIFO_BUFFER[7][5] ), 
	.D(n146), 
	.CK(REF_CLK_M__L5_N6));
   SDFFRQX2M \FIFO_BUFFER_reg[7][4]  (.SI(\FIFO_BUFFER[7][3] ), 
	.SE(n181), 
	.RN(FE_OFN2_SYNC_RST_0_M), 
	.Q(\FIFO_BUFFER[7][4] ), 
	.D(n145), 
	.CK(REF_CLK_M__L5_N6));
   SDFFRQX2M \FIFO_BUFFER_reg[7][3]  (.SI(\FIFO_BUFFER[7][2] ), 
	.SE(n184), 
	.RN(FE_OFN2_SYNC_RST_0_M), 
	.Q(\FIFO_BUFFER[7][3] ), 
	.D(n144), 
	.CK(REF_CLK_M__L5_N6));
   SDFFRQX2M \FIFO_BUFFER_reg[7][2]  (.SI(\FIFO_BUFFER[7][1] ), 
	.SE(n183), 
	.RN(FE_OFN2_SYNC_RST_0_M), 
	.Q(\FIFO_BUFFER[7][2] ), 
	.D(n143), 
	.CK(REF_CLK_M__L5_N6));
   SDFFRQX2M \FIFO_BUFFER_reg[7][1]  (.SI(\FIFO_BUFFER[7][0] ), 
	.SE(n182), 
	.RN(FE_OFN2_SYNC_RST_0_M), 
	.Q(\FIFO_BUFFER[7][1] ), 
	.D(n142), 
	.CK(REF_CLK_M__L5_N6));
   SDFFRQX2M \FIFO_BUFFER_reg[7][0]  (.SI(\FIFO_BUFFER[6][7] ), 
	.SE(n181), 
	.RN(FE_OFN2_SYNC_RST_0_M), 
	.Q(\FIFO_BUFFER[7][0] ), 
	.D(n141), 
	.CK(REF_CLK_M__L5_N6));
   SDFFRQX2M \FIFO_BUFFER_reg[3][7]  (.SI(\FIFO_BUFFER[3][6] ), 
	.SE(n184), 
	.RN(FE_OFN2_SYNC_RST_0_M), 
	.Q(\FIFO_BUFFER[3][7] ), 
	.D(n116), 
	.CK(w_clk));
   SDFFRQX2M \FIFO_BUFFER_reg[3][6]  (.SI(\FIFO_BUFFER[3][5] ), 
	.SE(n183), 
	.RN(FE_OFN2_SYNC_RST_0_M), 
	.Q(\FIFO_BUFFER[3][6] ), 
	.D(n115), 
	.CK(w_clk));
   SDFFRQX2M \FIFO_BUFFER_reg[3][5]  (.SI(\FIFO_BUFFER[3][4] ), 
	.SE(n182), 
	.RN(FE_OFN2_SYNC_RST_0_M), 
	.Q(\FIFO_BUFFER[3][5] ), 
	.D(n114), 
	.CK(w_clk));
   SDFFRQX2M \FIFO_BUFFER_reg[3][4]  (.SI(\FIFO_BUFFER[3][3] ), 
	.SE(n181), 
	.RN(FE_OFN2_SYNC_RST_0_M), 
	.Q(\FIFO_BUFFER[3][4] ), 
	.D(n113), 
	.CK(w_clk));
   SDFFRQX2M \FIFO_BUFFER_reg[3][3]  (.SI(\FIFO_BUFFER[3][2] ), 
	.SE(n184), 
	.RN(w_rst_n), 
	.Q(\FIFO_BUFFER[3][3] ), 
	.D(n112), 
	.CK(w_clk));
   SDFFRQX2M \FIFO_BUFFER_reg[3][2]  (.SI(\FIFO_BUFFER[3][1] ), 
	.SE(n183), 
	.RN(w_rst_n), 
	.Q(\FIFO_BUFFER[3][2] ), 
	.D(n111), 
	.CK(w_clk));
   SDFFRQX2M \FIFO_BUFFER_reg[3][1]  (.SI(\FIFO_BUFFER[3][0] ), 
	.SE(n182), 
	.RN(w_rst_n), 
	.Q(\FIFO_BUFFER[3][1] ), 
	.D(n110), 
	.CK(w_clk));
   SDFFRQX2M \FIFO_BUFFER_reg[3][0]  (.SI(FE_PHN5_test_si2), 
	.SE(n181), 
	.RN(w_rst_n), 
	.Q(\FIFO_BUFFER[3][0] ), 
	.D(n109), 
	.CK(w_clk));
   SDFFRQX2M \FIFO_BUFFER_reg[6][7]  (.SI(\FIFO_BUFFER[6][6] ), 
	.SE(n184), 
	.RN(FE_OFN2_SYNC_RST_0_M), 
	.Q(\FIFO_BUFFER[6][7] ), 
	.D(n140), 
	.CK(REF_CLK_M__L5_N6));
   SDFFRQX2M \FIFO_BUFFER_reg[6][6]  (.SI(\FIFO_BUFFER[6][5] ), 
	.SE(n183), 
	.RN(FE_OFN2_SYNC_RST_0_M), 
	.Q(\FIFO_BUFFER[6][6] ), 
	.D(n139), 
	.CK(REF_CLK_M__L5_N6));
   SDFFRQX2M \FIFO_BUFFER_reg[6][5]  (.SI(\FIFO_BUFFER[6][4] ), 
	.SE(n182), 
	.RN(FE_OFN2_SYNC_RST_0_M), 
	.Q(\FIFO_BUFFER[6][5] ), 
	.D(n138), 
	.CK(REF_CLK_M__L5_N6));
   SDFFRQX2M \FIFO_BUFFER_reg[6][4]  (.SI(\FIFO_BUFFER[6][3] ), 
	.SE(n181), 
	.RN(FE_OFN2_SYNC_RST_0_M), 
	.Q(\FIFO_BUFFER[6][4] ), 
	.D(n137), 
	.CK(REF_CLK_M__L5_N6));
   SDFFRQX2M \FIFO_BUFFER_reg[6][3]  (.SI(\FIFO_BUFFER[6][2] ), 
	.SE(n184), 
	.RN(FE_OFN2_SYNC_RST_0_M), 
	.Q(\FIFO_BUFFER[6][3] ), 
	.D(n136), 
	.CK(REF_CLK_M__L5_N6));
   SDFFRQX2M \FIFO_BUFFER_reg[6][2]  (.SI(\FIFO_BUFFER[6][1] ), 
	.SE(n183), 
	.RN(FE_OFN2_SYNC_RST_0_M), 
	.Q(\FIFO_BUFFER[6][2] ), 
	.D(n135), 
	.CK(REF_CLK_M__L5_N6));
   SDFFRQX2M \FIFO_BUFFER_reg[6][1]  (.SI(\FIFO_BUFFER[6][0] ), 
	.SE(n182), 
	.RN(FE_OFN2_SYNC_RST_0_M), 
	.Q(\FIFO_BUFFER[6][1] ), 
	.D(n134), 
	.CK(REF_CLK_M__L5_N6));
   SDFFRQX2M \FIFO_BUFFER_reg[6][0]  (.SI(\FIFO_BUFFER[5][7] ), 
	.SE(n181), 
	.RN(FE_OFN2_SYNC_RST_0_M), 
	.Q(\FIFO_BUFFER[6][0] ), 
	.D(n133), 
	.CK(REF_CLK_M__L5_N6));
   SDFFRQX2M \FIFO_BUFFER_reg[2][6]  (.SI(\FIFO_BUFFER[2][5] ), 
	.SE(n183), 
	.RN(w_rst_n), 
	.Q(\FIFO_BUFFER[2][6] ), 
	.D(n107), 
	.CK(w_clk));
   SDFFRQX2M \FIFO_BUFFER_reg[2][5]  (.SI(\FIFO_BUFFER[2][4] ), 
	.SE(n182), 
	.RN(FE_OFN2_SYNC_RST_0_M), 
	.Q(\FIFO_BUFFER[2][5] ), 
	.D(n106), 
	.CK(w_clk));
   SDFFRQX2M \FIFO_BUFFER_reg[2][4]  (.SI(\FIFO_BUFFER[2][3] ), 
	.SE(n181), 
	.RN(FE_OFN2_SYNC_RST_0_M), 
	.Q(\FIFO_BUFFER[2][4] ), 
	.D(n105), 
	.CK(w_clk));
   SDFFRQX2M \FIFO_BUFFER_reg[2][3]  (.SI(\FIFO_BUFFER[2][2] ), 
	.SE(n184), 
	.RN(w_rst_n), 
	.Q(\FIFO_BUFFER[2][3] ), 
	.D(n104), 
	.CK(w_clk));
   SDFFRQX2M \FIFO_BUFFER_reg[2][2]  (.SI(\FIFO_BUFFER[2][1] ), 
	.SE(n183), 
	.RN(w_rst_n), 
	.Q(\FIFO_BUFFER[2][2] ), 
	.D(n103), 
	.CK(w_clk));
   SDFFRQX2M \FIFO_BUFFER_reg[2][1]  (.SI(\FIFO_BUFFER[2][0] ), 
	.SE(n182), 
	.RN(w_rst_n), 
	.Q(\FIFO_BUFFER[2][1] ), 
	.D(n102), 
	.CK(w_clk));
   SDFFRQX2M \FIFO_BUFFER_reg[2][0]  (.SI(\FIFO_BUFFER[1][7] ), 
	.SE(n181), 
	.RN(w_rst_n), 
	.Q(\FIFO_BUFFER[2][0] ), 
	.D(n101), 
	.CK(w_clk));
   SDFFRQX2M \FIFO_BUFFER_reg[4][7]  (.SI(\FIFO_BUFFER[4][6] ), 
	.SE(n184), 
	.RN(FE_OFN2_SYNC_RST_0_M), 
	.Q(\FIFO_BUFFER[4][7] ), 
	.D(n124), 
	.CK(REF_CLK_M__L5_N6));
   SDFFRQX2M \FIFO_BUFFER_reg[4][6]  (.SI(\FIFO_BUFFER[4][5] ), 
	.SE(n183), 
	.RN(FE_OFN2_SYNC_RST_0_M), 
	.Q(\FIFO_BUFFER[4][6] ), 
	.D(n123), 
	.CK(REF_CLK_M__L5_N6));
   SDFFRQX2M \FIFO_BUFFER_reg[4][5]  (.SI(\FIFO_BUFFER[4][4] ), 
	.SE(n182), 
	.RN(FE_OFN2_SYNC_RST_0_M), 
	.Q(\FIFO_BUFFER[4][5] ), 
	.D(n122), 
	.CK(REF_CLK_M__L5_N6));
   SDFFRQX2M \FIFO_BUFFER_reg[4][4]  (.SI(\FIFO_BUFFER[4][3] ), 
	.SE(n181), 
	.RN(FE_OFN2_SYNC_RST_0_M), 
	.Q(\FIFO_BUFFER[4][4] ), 
	.D(n121), 
	.CK(REF_CLK_M__L5_N6));
   SDFFRQX2M \FIFO_BUFFER_reg[4][3]  (.SI(\FIFO_BUFFER[4][2] ), 
	.SE(n184), 
	.RN(FE_OFN2_SYNC_RST_0_M), 
	.Q(\FIFO_BUFFER[4][3] ), 
	.D(n120), 
	.CK(REF_CLK_M__L5_N6));
   SDFFRQX2M \FIFO_BUFFER_reg[4][2]  (.SI(\FIFO_BUFFER[4][1] ), 
	.SE(n183), 
	.RN(FE_OFN2_SYNC_RST_0_M), 
	.Q(\FIFO_BUFFER[4][2] ), 
	.D(n119), 
	.CK(w_clk));
   SDFFRQX2M \FIFO_BUFFER_reg[4][1]  (.SI(\FIFO_BUFFER[4][0] ), 
	.SE(n182), 
	.RN(FE_OFN2_SYNC_RST_0_M), 
	.Q(\FIFO_BUFFER[4][1] ), 
	.D(n118), 
	.CK(REF_CLK_M__L5_N6));
   SDFFRQX2M \FIFO_BUFFER_reg[4][0]  (.SI(\FIFO_BUFFER[3][7] ), 
	.SE(n181), 
	.RN(FE_OFN2_SYNC_RST_0_M), 
	.Q(\FIFO_BUFFER[4][0] ), 
	.D(n117), 
	.CK(REF_CLK_M__L5_N6));
   SDFFRQX2M \FIFO_BUFFER_reg[0][7]  (.SI(\FIFO_BUFFER[0][6] ), 
	.SE(n184), 
	.RN(w_rst_n), 
	.Q(\FIFO_BUFFER[0][7] ), 
	.D(n92), 
	.CK(REF_CLK_M__L5_N5));
   SDFFRQX2M \FIFO_BUFFER_reg[0][6]  (.SI(\FIFO_BUFFER[0][5] ), 
	.SE(n183), 
	.RN(FE_OFN2_SYNC_RST_0_M), 
	.Q(\FIFO_BUFFER[0][6] ), 
	.D(n91), 
	.CK(REF_CLK_M__L5_N5));
   SDFFRQX2M \FIFO_BUFFER_reg[0][5]  (.SI(\FIFO_BUFFER[0][4] ), 
	.SE(n182), 
	.RN(FE_OFN2_SYNC_RST_0_M), 
	.Q(\FIFO_BUFFER[0][5] ), 
	.D(n90), 
	.CK(REF_CLK_M__L5_N6));
   SDFFRQX2M \FIFO_BUFFER_reg[0][4]  (.SI(\FIFO_BUFFER[0][3] ), 
	.SE(n181), 
	.RN(FE_OFN2_SYNC_RST_0_M), 
	.Q(\FIFO_BUFFER[0][4] ), 
	.D(n89), 
	.CK(w_clk));
   SDFFRQX2M \FIFO_BUFFER_reg[0][3]  (.SI(\FIFO_BUFFER[0][2] ), 
	.SE(n184), 
	.RN(w_rst_n), 
	.Q(\FIFO_BUFFER[0][3] ), 
	.D(n88), 
	.CK(w_clk));
   SDFFRQX2M \FIFO_BUFFER_reg[0][2]  (.SI(\FIFO_BUFFER[0][1] ), 
	.SE(n183), 
	.RN(w_rst_n), 
	.Q(\FIFO_BUFFER[0][2] ), 
	.D(n87), 
	.CK(w_clk));
   SDFFRQX2M \FIFO_BUFFER_reg[0][1]  (.SI(\FIFO_BUFFER[0][0] ), 
	.SE(n182), 
	.RN(w_rst_n), 
	.Q(\FIFO_BUFFER[0][1] ), 
	.D(n86), 
	.CK(w_clk));
   SDFFRQX2M \FIFO_BUFFER_reg[0][0]  (.SI(test_si1), 
	.SE(n181), 
	.RN(w_rst_n), 
	.Q(\FIFO_BUFFER[0][0] ), 
	.D(n85), 
	.CK(w_clk));
   NOR2BX2M U66 (.Y(n76), 
	.B(w_addr[2]), 
	.AN(w_clken));
   NAND3X2M U77 (.Y(n80), 
	.C(n81), 
	.B(n176), 
	.A(n175));
   NAND3X2M U78 (.Y(n75), 
	.C(n76), 
	.B(n176), 
	.A(n175));
   NAND3X2M U79 (.Y(n78), 
	.C(w_addr[1]), 
	.B(n175), 
	.A(n76));
   NAND3X2M U80 (.Y(n79), 
	.C(w_addr[1]), 
	.B(n76), 
	.A(w_addr[0]));
   NAND3X2M U81 (.Y(n82), 
	.C(n81), 
	.B(n176), 
	.A(w_addr[0]));
   NAND3X2M U82 (.Y(n77), 
	.C(w_addr[0]), 
	.B(n176), 
	.A(n76));
   OAI2BB2X1M U83 (.Y(n85), 
	.B1(n167), 
	.B0(n75), 
	.A1N(n75), 
	.A0N(\FIFO_BUFFER[0][0] ));
   OAI2BB2X1M U84 (.Y(n86), 
	.B1(n168), 
	.B0(n75), 
	.A1N(n75), 
	.A0N(\FIFO_BUFFER[0][1] ));
   OAI2BB2X1M U85 (.Y(n87), 
	.B1(n169), 
	.B0(n75), 
	.A1N(n75), 
	.A0N(\FIFO_BUFFER[0][2] ));
   OAI2BB2X1M U86 (.Y(n88), 
	.B1(n170), 
	.B0(n75), 
	.A1N(n75), 
	.A0N(\FIFO_BUFFER[0][3] ));
   OAI2BB2X1M U87 (.Y(n89), 
	.B1(n171), 
	.B0(n75), 
	.A1N(n75), 
	.A0N(\FIFO_BUFFER[0][4] ));
   OAI2BB2X1M U88 (.Y(n90), 
	.B1(n172), 
	.B0(n75), 
	.A1N(n75), 
	.A0N(\FIFO_BUFFER[0][5] ));
   OAI2BB2X1M U89 (.Y(n91), 
	.B1(n173), 
	.B0(n75), 
	.A1N(n75), 
	.A0N(\FIFO_BUFFER[0][6] ));
   OAI2BB2X1M U90 (.Y(n92), 
	.B1(n174), 
	.B0(n75), 
	.A1N(n75), 
	.A0N(\FIFO_BUFFER[0][7] ));
   OAI2BB2X1M U91 (.Y(n109), 
	.B1(n79), 
	.B0(n167), 
	.A1N(n79), 
	.A0N(\FIFO_BUFFER[3][0] ));
   OAI2BB2X1M U92 (.Y(n110), 
	.B1(n79), 
	.B0(n168), 
	.A1N(n79), 
	.A0N(\FIFO_BUFFER[3][1] ));
   OAI2BB2X1M U93 (.Y(n111), 
	.B1(n79), 
	.B0(n169), 
	.A1N(n79), 
	.A0N(\FIFO_BUFFER[3][2] ));
   OAI2BB2X1M U94 (.Y(n112), 
	.B1(n79), 
	.B0(n170), 
	.A1N(n79), 
	.A0N(\FIFO_BUFFER[3][3] ));
   OAI2BB2X1M U95 (.Y(n113), 
	.B1(n79), 
	.B0(n171), 
	.A1N(n79), 
	.A0N(\FIFO_BUFFER[3][4] ));
   OAI2BB2X1M U96 (.Y(n114), 
	.B1(n79), 
	.B0(n172), 
	.A1N(n79), 
	.A0N(\FIFO_BUFFER[3][5] ));
   OAI2BB2X1M U97 (.Y(n115), 
	.B1(n79), 
	.B0(n173), 
	.A1N(n79), 
	.A0N(\FIFO_BUFFER[3][6] ));
   OAI2BB2X1M U98 (.Y(n116), 
	.B1(n79), 
	.B0(n174), 
	.A1N(n79), 
	.A0N(\FIFO_BUFFER[3][7] ));
   OAI2BB2X1M U99 (.Y(n125), 
	.B1(n82), 
	.B0(n167), 
	.A1N(n82), 
	.A0N(\FIFO_BUFFER[5][0] ));
   OAI2BB2X1M U100 (.Y(n126), 
	.B1(n82), 
	.B0(n168), 
	.A1N(n82), 
	.A0N(\FIFO_BUFFER[5][1] ));
   OAI2BB2X1M U101 (.Y(n127), 
	.B1(n82), 
	.B0(n169), 
	.A1N(n82), 
	.A0N(\FIFO_BUFFER[5][2] ));
   OAI2BB2X1M U102 (.Y(n128), 
	.B1(n82), 
	.B0(n170), 
	.A1N(n82), 
	.A0N(\FIFO_BUFFER[5][3] ));
   OAI2BB2X1M U103 (.Y(n129), 
	.B1(n82), 
	.B0(n171), 
	.A1N(n82), 
	.A0N(\FIFO_BUFFER[5][4] ));
   OAI2BB2X1M U104 (.Y(n130), 
	.B1(n82), 
	.B0(n172), 
	.A1N(n82), 
	.A0N(\FIFO_BUFFER[5][5] ));
   OAI2BB2X1M U105 (.Y(n131), 
	.B1(n82), 
	.B0(n173), 
	.A1N(n82), 
	.A0N(\FIFO_BUFFER[5][6] ));
   OAI2BB2X1M U106 (.Y(n132), 
	.B1(n82), 
	.B0(n174), 
	.A1N(n82), 
	.A0N(\FIFO_BUFFER[5][7] ));
   OAI2BB2X1M U107 (.Y(n101), 
	.B1(n78), 
	.B0(n167), 
	.A1N(n78), 
	.A0N(\FIFO_BUFFER[2][0] ));
   OAI2BB2X1M U108 (.Y(n102), 
	.B1(n78), 
	.B0(n168), 
	.A1N(n78), 
	.A0N(\FIFO_BUFFER[2][1] ));
   OAI2BB2X1M U109 (.Y(n103), 
	.B1(n78), 
	.B0(n169), 
	.A1N(n78), 
	.A0N(\FIFO_BUFFER[2][2] ));
   OAI2BB2X1M U110 (.Y(n104), 
	.B1(n78), 
	.B0(n170), 
	.A1N(n78), 
	.A0N(\FIFO_BUFFER[2][3] ));
   OAI2BB2X1M U111 (.Y(n105), 
	.B1(n78), 
	.B0(n171), 
	.A1N(n78), 
	.A0N(\FIFO_BUFFER[2][4] ));
   OAI2BB2X1M U112 (.Y(n106), 
	.B1(n78), 
	.B0(n172), 
	.A1N(n78), 
	.A0N(\FIFO_BUFFER[2][5] ));
   OAI2BB2X1M U113 (.Y(n107), 
	.B1(n78), 
	.B0(n173), 
	.A1N(n78), 
	.A0N(\FIFO_BUFFER[2][6] ));
   OAI2BB2X1M U114 (.Y(n108), 
	.B1(n78), 
	.B0(n174), 
	.A1N(n78), 
	.A0N(n186));
   OAI2BB2X1M U115 (.Y(n93), 
	.B1(n77), 
	.B0(n167), 
	.A1N(n77), 
	.A0N(\FIFO_BUFFER[1][0] ));
   OAI2BB2X1M U116 (.Y(n94), 
	.B1(n77), 
	.B0(n168), 
	.A1N(n77), 
	.A0N(\FIFO_BUFFER[1][1] ));
   OAI2BB2X1M U117 (.Y(n95), 
	.B1(n77), 
	.B0(n169), 
	.A1N(n77), 
	.A0N(\FIFO_BUFFER[1][2] ));
   OAI2BB2X1M U118 (.Y(n96), 
	.B1(n77), 
	.B0(n170), 
	.A1N(n77), 
	.A0N(\FIFO_BUFFER[1][3] ));
   OAI2BB2X1M U119 (.Y(n97), 
	.B1(n77), 
	.B0(n171), 
	.A1N(n77), 
	.A0N(\FIFO_BUFFER[1][4] ));
   OAI2BB2X1M U120 (.Y(n98), 
	.B1(n77), 
	.B0(n172), 
	.A1N(n77), 
	.A0N(\FIFO_BUFFER[1][5] ));
   OAI2BB2X1M U121 (.Y(n99), 
	.B1(n77), 
	.B0(n173), 
	.A1N(n77), 
	.A0N(\FIFO_BUFFER[1][6] ));
   OAI2BB2X1M U122 (.Y(n100), 
	.B1(n77), 
	.B0(n174), 
	.A1N(n77), 
	.A0N(\FIFO_BUFFER[1][7] ));
   OAI2BB2X1M U123 (.Y(n117), 
	.B1(n80), 
	.B0(n167), 
	.A1N(n80), 
	.A0N(\FIFO_BUFFER[4][0] ));
   OAI2BB2X1M U124 (.Y(n118), 
	.B1(n80), 
	.B0(n168), 
	.A1N(n80), 
	.A0N(\FIFO_BUFFER[4][1] ));
   OAI2BB2X1M U125 (.Y(n119), 
	.B1(n80), 
	.B0(n169), 
	.A1N(n80), 
	.A0N(\FIFO_BUFFER[4][2] ));
   OAI2BB2X1M U126 (.Y(n120), 
	.B1(n80), 
	.B0(n170), 
	.A1N(n80), 
	.A0N(\FIFO_BUFFER[4][3] ));
   OAI2BB2X1M U127 (.Y(n121), 
	.B1(n80), 
	.B0(n171), 
	.A1N(n80), 
	.A0N(\FIFO_BUFFER[4][4] ));
   OAI2BB2X1M U128 (.Y(n122), 
	.B1(n80), 
	.B0(n172), 
	.A1N(n80), 
	.A0N(\FIFO_BUFFER[4][5] ));
   OAI2BB2X1M U129 (.Y(n123), 
	.B1(n80), 
	.B0(n173), 
	.A1N(n80), 
	.A0N(\FIFO_BUFFER[4][6] ));
   OAI2BB2X1M U130 (.Y(n124), 
	.B1(n80), 
	.B0(n174), 
	.A1N(n80), 
	.A0N(\FIFO_BUFFER[4][7] ));
   INVX2M U131 (.Y(n167), 
	.A(w_data[0]));
   INVX2M U132 (.Y(n168), 
	.A(w_data[1]));
   INVX2M U133 (.Y(n169), 
	.A(w_data[2]));
   INVX2M U134 (.Y(n170), 
	.A(w_data[3]));
   INVX2M U135 (.Y(n171), 
	.A(w_data[4]));
   INVX2M U136 (.Y(n172), 
	.A(w_data[5]));
   INVX2M U137 (.Y(n173), 
	.A(w_data[6]));
   INVX2M U138 (.Y(n174), 
	.A(w_data[7]));
   OAI2BB2X1M U139 (.Y(n133), 
	.B1(n83), 
	.B0(n167), 
	.A1N(n83), 
	.A0N(\FIFO_BUFFER[6][0] ));
   OAI2BB2X1M U140 (.Y(n134), 
	.B1(n83), 
	.B0(n168), 
	.A1N(n83), 
	.A0N(\FIFO_BUFFER[6][1] ));
   OAI2BB2X1M U141 (.Y(n135), 
	.B1(n83), 
	.B0(n169), 
	.A1N(n83), 
	.A0N(\FIFO_BUFFER[6][2] ));
   OAI2BB2X1M U142 (.Y(n136), 
	.B1(n83), 
	.B0(n170), 
	.A1N(n83), 
	.A0N(\FIFO_BUFFER[6][3] ));
   OAI2BB2X1M U143 (.Y(n137), 
	.B1(n83), 
	.B0(n171), 
	.A1N(n83), 
	.A0N(\FIFO_BUFFER[6][4] ));
   OAI2BB2X1M U144 (.Y(n138), 
	.B1(n83), 
	.B0(n172), 
	.A1N(n83), 
	.A0N(\FIFO_BUFFER[6][5] ));
   OAI2BB2X1M U145 (.Y(n139), 
	.B1(n83), 
	.B0(n173), 
	.A1N(n83), 
	.A0N(\FIFO_BUFFER[6][6] ));
   OAI2BB2X1M U146 (.Y(n140), 
	.B1(n83), 
	.B0(n174), 
	.A1N(n83), 
	.A0N(\FIFO_BUFFER[6][7] ));
   OAI2BB2X1M U147 (.Y(n141), 
	.B1(n84), 
	.B0(n167), 
	.A1N(n84), 
	.A0N(\FIFO_BUFFER[7][0] ));
   OAI2BB2X1M U148 (.Y(n142), 
	.B1(n84), 
	.B0(n168), 
	.A1N(n84), 
	.A0N(\FIFO_BUFFER[7][1] ));
   OAI2BB2X1M U149 (.Y(n143), 
	.B1(n84), 
	.B0(n169), 
	.A1N(n84), 
	.A0N(\FIFO_BUFFER[7][2] ));
   OAI2BB2X1M U150 (.Y(n144), 
	.B1(n84), 
	.B0(n170), 
	.A1N(n84), 
	.A0N(\FIFO_BUFFER[7][3] ));
   OAI2BB2X1M U151 (.Y(n145), 
	.B1(n84), 
	.B0(n171), 
	.A1N(n84), 
	.A0N(\FIFO_BUFFER[7][4] ));
   OAI2BB2X1M U152 (.Y(n146), 
	.B1(n84), 
	.B0(n172), 
	.A1N(n84), 
	.A0N(\FIFO_BUFFER[7][5] ));
   OAI2BB2X1M U153 (.Y(n147), 
	.B1(n84), 
	.B0(n173), 
	.A1N(n84), 
	.A0N(\FIFO_BUFFER[7][6] ));
   OAI2BB2X1M U154 (.Y(n148), 
	.B1(n84), 
	.B0(n174), 
	.A1N(n84), 
	.A0N(\FIFO_BUFFER[7][7] ));
   AND2X2M U155 (.Y(n81), 
	.B(w_clken), 
	.A(w_addr[2]));
   NAND3X2M U156 (.Y(n83), 
	.C(n81), 
	.B(n175), 
	.A(w_addr[1]));
   NAND3X2M U157 (.Y(n84), 
	.C(n81), 
	.B(w_addr[0]), 
	.A(w_addr[1]));
   INVX2M U158 (.Y(n176), 
	.A(w_addr[1]));
   INVX2M U159 (.Y(n175), 
	.A(w_addr[0]));
   MX2X2M U160 (.Y(r_data[0]), 
	.S0(N12), 
	.B(n65), 
	.A(n66));
   MX4X1M U161 (.Y(n66), 
	.S1(N11), 
	.S0(n156), 
	.D(\FIFO_BUFFER[3][0] ), 
	.C(\FIFO_BUFFER[2][0] ), 
	.B(\FIFO_BUFFER[1][0] ), 
	.A(\FIFO_BUFFER[0][0] ));
   MX4X1M U162 (.Y(n65), 
	.S1(N11), 
	.S0(n155), 
	.D(\FIFO_BUFFER[7][0] ), 
	.C(\FIFO_BUFFER[6][0] ), 
	.B(\FIFO_BUFFER[5][0] ), 
	.A(\FIFO_BUFFER[4][0] ));
   MX2X2M U163 (.Y(r_data[1]), 
	.S0(N12), 
	.B(n67), 
	.A(n68));
   MX4X1M U164 (.Y(n68), 
	.S1(N11), 
	.S0(n156), 
	.D(\FIFO_BUFFER[3][1] ), 
	.C(\FIFO_BUFFER[2][1] ), 
	.B(\FIFO_BUFFER[1][1] ), 
	.A(\FIFO_BUFFER[0][1] ));
   MX4X1M U165 (.Y(n67), 
	.S1(N11), 
	.S0(n155), 
	.D(\FIFO_BUFFER[7][1] ), 
	.C(\FIFO_BUFFER[6][1] ), 
	.B(\FIFO_BUFFER[5][1] ), 
	.A(\FIFO_BUFFER[4][1] ));
   MX2X2M U166 (.Y(r_data[2]), 
	.S0(N12), 
	.B(n69), 
	.A(n70));
   MX4X1M U167 (.Y(n70), 
	.S1(N11), 
	.S0(n156), 
	.D(\FIFO_BUFFER[3][2] ), 
	.C(\FIFO_BUFFER[2][2] ), 
	.B(\FIFO_BUFFER[1][2] ), 
	.A(\FIFO_BUFFER[0][2] ));
   MX4X1M U168 (.Y(n69), 
	.S1(N11), 
	.S0(n155), 
	.D(\FIFO_BUFFER[7][2] ), 
	.C(\FIFO_BUFFER[6][2] ), 
	.B(\FIFO_BUFFER[5][2] ), 
	.A(\FIFO_BUFFER[4][2] ));
   MX2X2M U169 (.Y(r_data[3]), 
	.S0(N12), 
	.B(n71), 
	.A(n72));
   MX4X1M U170 (.Y(n72), 
	.S1(N11), 
	.S0(n156), 
	.D(\FIFO_BUFFER[3][3] ), 
	.C(\FIFO_BUFFER[2][3] ), 
	.B(\FIFO_BUFFER[1][3] ), 
	.A(\FIFO_BUFFER[0][3] ));
   MX4X1M U171 (.Y(n71), 
	.S1(N11), 
	.S0(n155), 
	.D(\FIFO_BUFFER[7][3] ), 
	.C(\FIFO_BUFFER[6][3] ), 
	.B(\FIFO_BUFFER[5][3] ), 
	.A(\FIFO_BUFFER[4][3] ));
   MX2X2M U172 (.Y(r_data[4]), 
	.S0(N12), 
	.B(n73), 
	.A(n74));
   MX4X1M U173 (.Y(n74), 
	.S1(N11), 
	.S0(n156), 
	.D(\FIFO_BUFFER[3][4] ), 
	.C(\FIFO_BUFFER[2][4] ), 
	.B(\FIFO_BUFFER[1][4] ), 
	.A(\FIFO_BUFFER[0][4] ));
   MX4X1M U174 (.Y(n73), 
	.S1(N11), 
	.S0(n155), 
	.D(\FIFO_BUFFER[7][4] ), 
	.C(\FIFO_BUFFER[6][4] ), 
	.B(\FIFO_BUFFER[5][4] ), 
	.A(\FIFO_BUFFER[4][4] ));
   MX2X2M U175 (.Y(r_data[5]), 
	.S0(N12), 
	.B(n149), 
	.A(n150));
   MX4X1M U176 (.Y(n150), 
	.S1(N11), 
	.S0(n156), 
	.D(\FIFO_BUFFER[3][5] ), 
	.C(\FIFO_BUFFER[2][5] ), 
	.B(\FIFO_BUFFER[1][5] ), 
	.A(\FIFO_BUFFER[0][5] ));
   MX4X1M U177 (.Y(n149), 
	.S1(N11), 
	.S0(n155), 
	.D(\FIFO_BUFFER[7][5] ), 
	.C(\FIFO_BUFFER[6][5] ), 
	.B(\FIFO_BUFFER[5][5] ), 
	.A(\FIFO_BUFFER[4][5] ));
   MX2X2M U178 (.Y(r_data[6]), 
	.S0(N12), 
	.B(n151), 
	.A(n152));
   MX4X1M U179 (.Y(n152), 
	.S1(N11), 
	.S0(n156), 
	.D(\FIFO_BUFFER[3][6] ), 
	.C(\FIFO_BUFFER[2][6] ), 
	.B(\FIFO_BUFFER[1][6] ), 
	.A(\FIFO_BUFFER[0][6] ));
   MX4X1M U180 (.Y(n151), 
	.S1(N11), 
	.S0(n155), 
	.D(\FIFO_BUFFER[7][6] ), 
	.C(\FIFO_BUFFER[6][6] ), 
	.B(\FIFO_BUFFER[5][6] ), 
	.A(\FIFO_BUFFER[4][6] ));
   MX2X2M U181 (.Y(r_data[7]), 
	.S0(N12), 
	.B(n153), 
	.A(n154));
   MX4X1M U182 (.Y(n154), 
	.S1(N11), 
	.S0(n156), 
	.D(\FIFO_BUFFER[3][7] ), 
	.C(n186), 
	.B(\FIFO_BUFFER[1][7] ), 
	.A(\FIFO_BUFFER[0][7] ));
   MX4X1M U183 (.Y(n153), 
	.S1(N11), 
	.S0(n155), 
	.D(\FIFO_BUFFER[7][7] ), 
	.C(\FIFO_BUFFER[6][7] ), 
	.B(\FIFO_BUFFER[5][7] ), 
	.A(\FIFO_BUFFER[4][7] ));
   BUFX2M U184 (.Y(n155), 
	.A(N10));
   BUFX2M U185 (.Y(n156), 
	.A(N10));
   INVXLM U186 (.Y(n180), 
	.A(test_se));
   CLKINVX2M U187 (.Y(n181), 
	.A(n180));
   CLKINVX2M U188 (.Y(n182), 
	.A(n180));
   CLKINVX2M U189 (.Y(n183), 
	.A(n180));
   CLKINVX2M U190 (.Y(n184), 
	.A(n180));
   INVXLM U191 (.Y(n185), 
	.A(\FIFO_BUFFER[2][7] ));
   INVXLM U192 (.Y(n186), 
	.A(n185));
   SDFFRQX4M \FIFO_BUFFER_reg[2][7]  (.SI(\FIFO_BUFFER[2][6] ), 
	.SE(n184), 
	.RN(w_rst_n), 
	.Q(FE_OFN4_SO), 
	.D(n108), 
	.CK(w_clk));
endmodule

module FIFO_WR_test_1 (
	w_clk, 
	w_inc, 
	w_rst_n, 
	wq2_rptr, 
	w_addr, 
	w_ptr, 
	w_full, 
	test_si, 
	test_so, 
	test_se, 
	FE_OFN2_SYNC_RST_0_M);
   input w_clk;
   input w_inc;
   input w_rst_n;
   input [3:0] wq2_rptr;
   output [2:0] w_addr;
   output [3:0] w_ptr;
   output w_full;
   input test_si;
   output test_so;
   input test_se;
   input FE_OFN2_SYNC_RST_0_M;

   // Internal wires
   wire n14;
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire n20;
   wire n21;
   wire n22;
   wire n23;
   wire n24;
   wire n25;
   wire n26;
   wire n27;
   wire n28;
   wire n29;
   wire n30;
   wire n31;
   wire n32;
   wire n33;
   wire n1;
   wire n2;
   wire n10;
   wire n11;
   wire n12;
   wire [3:0] w_ptr_bin;

   assign test_so = n12 ;

   SDFFRQX2M \w_addr_reg[2]  (.SI(w_addr[1]), 
	.SE(test_se), 
	.RN(w_rst_n), 
	.Q(w_addr[2]), 
	.D(n27), 
	.CK(w_clk));
   SDFFRQX2M \w_addr_reg[0]  (.SI(test_si), 
	.SE(test_se), 
	.RN(w_rst_n), 
	.Q(w_addr[0]), 
	.D(n29), 
	.CK(w_clk));
   SDFFRQX2M \w_addr_reg[1]  (.SI(w_addr[0]), 
	.SE(test_se), 
	.RN(FE_OFN2_SYNC_RST_0_M), 
	.Q(w_addr[1]), 
	.D(n28), 
	.CK(w_clk));
   SDFFRQX2M \w_ptr_bin_reg[2]  (.SI(n10), 
	.SE(test_se), 
	.RN(w_rst_n), 
	.Q(w_ptr_bin[2]), 
	.D(n31), 
	.CK(w_clk));
   SDFFRQX2M \w_ptr_bin_reg[1]  (.SI(w_ptr_bin[0]), 
	.SE(test_se), 
	.RN(w_rst_n), 
	.Q(w_ptr_bin[1]), 
	.D(n32), 
	.CK(w_clk));
   SDFFRQX2M \w_ptr_bin_reg[0]  (.SI(w_addr[2]), 
	.SE(test_se), 
	.RN(w_rst_n), 
	.Q(w_ptr_bin[0]), 
	.D(n33), 
	.CK(w_clk));
   OAI22X1M U10 (.Y(n32), 
	.B1(n10), 
	.B0(n21), 
	.A1(n22), 
	.A0(n17));
   NAND2X2M U11 (.Y(n17), 
	.B(n14), 
	.A(w_inc));
   INVX2M U12 (.Y(w_full), 
	.A(n14));
   CLKXOR2X2M U13 (.Y(w_ptr[1]), 
	.B(n11), 
	.A(n10));
   CLKXOR2X2M U14 (.Y(n31), 
	.B(n20), 
	.A(n11));
   OAI21X2M U15 (.Y(w_ptr[2]), 
	.B0(n19), 
	.A1(n11), 
	.A0(w_ptr[3]));
   OAI21X2M U16 (.Y(w_ptr[0]), 
	.B0(n22), 
	.A1(n10), 
	.A0(w_ptr_bin[0]));
   XNOR2X2M U17 (.Y(n29), 
	.B(n17), 
	.A(w_addr[0]));
   XNOR2X2M U18 (.Y(n33), 
	.B(n17), 
	.A(w_ptr_bin[0]));
   NOR2BX2M U19 (.Y(n21), 
	.B(n17), 
	.AN(w_ptr_bin[0]));
   NAND4X2M U20 (.Y(n14), 
	.D(n26), 
	.C(n25), 
	.B(n24), 
	.A(n23));
   CLKXOR2X2M U21 (.Y(n24), 
	.B(w_ptr[3]), 
	.A(wq2_rptr[3]));
   XNOR2X2M U22 (.Y(n26), 
	.B(w_ptr[0]), 
	.A(wq2_rptr[0]));
   XNOR2X2M U23 (.Y(n25), 
	.B(wq2_rptr[1]), 
	.A(w_ptr[1]));
   OAI211X2M U24 (.Y(n30), 
	.C0(n19), 
	.B0(n18), 
	.A1(n12), 
	.A0(n2));
   NAND3X2M U25 (.Y(n18), 
	.C(n2), 
	.B(n12), 
	.A(w_ptr_bin[2]));
   INVX2M U27 (.Y(n2), 
	.A(n20));
   NOR2BX2M U28 (.Y(n16), 
	.B(n17), 
	.AN(w_addr[0]));
   NAND2X2M U29 (.Y(n20), 
	.B(w_ptr_bin[1]), 
	.A(n21));
   NAND2X2M U30 (.Y(n19), 
	.B(n11), 
	.A(w_ptr[3]));
   INVX2M U31 (.Y(n11), 
	.A(w_ptr_bin[2]));
   NAND2X2M U32 (.Y(n22), 
	.B(n10), 
	.A(w_ptr_bin[0]));
   INVX2M U33 (.Y(n10), 
	.A(w_ptr_bin[1]));
   CLKXOR2X2M U34 (.Y(n23), 
	.B(wq2_rptr[2]), 
	.A(w_ptr[2]));
   CLKXOR2X2M U35 (.Y(n28), 
	.B(n16), 
	.A(w_addr[1]));
   XNOR2X2M U36 (.Y(n27), 
	.B(n1), 
	.A(w_addr[2]));
   NAND2X2M U37 (.Y(n1), 
	.B(w_addr[1]), 
	.A(n16));
   SDFFRX1M \w_ptr_bin_reg[3]  (.SI(n11), 
	.SE(test_se), 
	.RN(w_rst_n), 
	.QN(n12), 
	.Q(w_ptr[3]), 
	.D(n30), 
	.CK(w_clk));
endmodule

module FIFO_RD_test_1 (
	r_clk, 
	r_inc, 
	r_rst_n, 
	rq2_wptr, 
	r_addr, 
	r_ptr, 
	r_empty, 
	test_si, 
	test_so, 
	test_se);
   input r_clk;
   input r_inc;
   input r_rst_n;
   input [3:0] rq2_wptr;
   output [2:0] r_addr;
   output [3:0] r_ptr;
   output r_empty;
   input test_si;
   output test_so;
   input test_se;

   // Internal wires
   wire n12;
   wire n14;
   wire n15;
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire n20;
   wire n21;
   wire n22;
   wire n23;
   wire n24;
   wire n25;
   wire n26;
   wire n27;
   wire n28;
   wire n29;
   wire n30;
   wire n31;
   wire n32;
   wire n1;
   wire n2;
   wire n3;
   wire [3:0] r_ptr_bin;

   assign test_so = n2 ;

   SDFFRQX2M \r_addr_reg[0]  (.SI(test_si), 
	.SE(test_se), 
	.RN(r_rst_n), 
	.Q(r_addr[0]), 
	.D(n28), 
	.CK(r_clk));
   SDFFRQX2M \r_addr_reg[2]  (.SI(r_addr[1]), 
	.SE(test_se), 
	.RN(r_rst_n), 
	.Q(r_addr[2]), 
	.D(n26), 
	.CK(r_clk));
   SDFFRQX2M \r_addr_reg[1]  (.SI(r_addr[0]), 
	.SE(test_se), 
	.RN(r_rst_n), 
	.Q(r_addr[1]), 
	.D(n27), 
	.CK(r_clk));
   SDFFRQX2M \r_ptr_bin_reg[0]  (.SI(r_addr[2]), 
	.SE(test_se), 
	.RN(r_rst_n), 
	.Q(r_ptr_bin[0]), 
	.D(n32), 
	.CK(r_clk));
   SDFFRQX2M \r_ptr_bin_reg[2]  (.SI(n3), 
	.SE(test_se), 
	.RN(r_rst_n), 
	.Q(r_ptr_bin[2]), 
	.D(n30), 
	.CK(r_clk));
   SDFFRQX2M \r_ptr_bin_reg[3]  (.SI(r_ptr_bin[2]), 
	.SE(test_se), 
	.RN(r_rst_n), 
	.Q(r_ptr[3]), 
	.D(n29), 
	.CK(r_clk));
   SDFFRX1M \r_ptr_bin_reg[1]  (.SI(r_ptr_bin[0]), 
	.SE(test_se), 
	.RN(r_rst_n), 
	.QN(n12), 
	.Q(n3), 
	.D(n31), 
	.CK(r_clk));
   XNOR2X2M U11 (.Y(n23), 
	.B(r_ptr[0]), 
	.A(rq2_wptr[0]));
   NOR2BX2M U12 (.Y(n17), 
	.B(n12), 
	.AN(n20));
   OAI21X2M U13 (.Y(r_ptr[0]), 
	.B0(n21), 
	.A1(n12), 
	.A0(r_ptr_bin[0]));
   OAI21X2M U14 (.Y(r_ptr[2]), 
	.B0(n19), 
	.A1(n1), 
	.A0(r_ptr[3]));
   NAND4X2M U15 (.Y(r_empty), 
	.D(n25), 
	.C(n24), 
	.B(n23), 
	.A(n22));
   CLKXOR2X2M U16 (.Y(n24), 
	.B(rq2_wptr[3]), 
	.A(n2));
   XNOR2X2M U17 (.Y(n22), 
	.B(rq2_wptr[1]), 
	.A(r_ptr[1]));
   XNOR2X2M U18 (.Y(n25), 
	.B(r_ptr[2]), 
	.A(rq2_wptr[2]));
   NAND2X2M U19 (.Y(n16), 
	.B(r_empty), 
	.A(r_inc));
   NOR2BX2M U20 (.Y(n20), 
	.B(n16), 
	.AN(r_ptr_bin[0]));
   NAND2X2M U21 (.Y(n21), 
	.B(n12), 
	.A(r_ptr_bin[0]));
   CLKXOR2X2M U22 (.Y(n26), 
	.B(n14), 
	.A(r_addr[2]));
   NOR2BX2M U23 (.Y(n14), 
	.B(n15), 
	.AN(r_addr[1]));
   NAND2BX2M U24 (.Y(n15), 
	.B(r_addr[0]), 
	.AN(n16));
   NAND2X2M U25 (.Y(n19), 
	.B(n1), 
	.A(r_ptr[3]));
   INVX2M U26 (.Y(n1), 
	.A(r_ptr_bin[2]));
   OAI211X2M U27 (.Y(n29), 
	.C0(n19), 
	.B0(n18), 
	.A1(n2), 
	.A0(n17));
   NAND3X2M U28 (.Y(n18), 
	.C(n17), 
	.B(n2), 
	.A(r_ptr_bin[2]));
   INVX2M U29 (.Y(n2), 
	.A(r_ptr[3]));
   CLKXOR2X2M U30 (.Y(r_ptr[1]), 
	.B(n1), 
	.A(n12));
   CLKXOR2X2M U31 (.Y(n30), 
	.B(n17), 
	.A(r_ptr_bin[2]));
   OAI22X1M U32 (.Y(n31), 
	.B1(n12), 
	.B0(n20), 
	.A1(n21), 
	.A0(n16));
   XNOR2X2M U33 (.Y(n28), 
	.B(n16), 
	.A(r_addr[0]));
   XNOR2X2M U34 (.Y(n32), 
	.B(n16), 
	.A(r_ptr_bin[0]));
   XNOR2X2M U35 (.Y(n27), 
	.B(n15), 
	.A(r_addr[1]));
endmodule

module DF_SYNC_test_0 (
	CLK, 
	RST, 
	ASYNC, 
	SYNC, 
	test_si, 
	test_se);
   input CLK;
   input RST;
   input [3:0] ASYNC;
   output [3:0] SYNC;
   input test_si;
   input test_se;

   // Internal wires
   wire \sync_reg[3][0] ;
   wire \sync_reg[2][0] ;
   wire \sync_reg[1][0] ;
   wire \sync_reg[0][0] ;

   SDFFRQX2M \sync_reg_reg[0][1]  (.SI(\sync_reg[0][0] ), 
	.SE(test_se), 
	.RN(RST), 
	.Q(SYNC[0]), 
	.D(\sync_reg[0][0] ), 
	.CK(CLK));
   SDFFRQX2M \sync_reg_reg[1][1]  (.SI(\sync_reg[1][0] ), 
	.SE(test_se), 
	.RN(RST), 
	.Q(SYNC[1]), 
	.D(\sync_reg[1][0] ), 
	.CK(CLK));
   SDFFRQX2M \sync_reg_reg[2][1]  (.SI(\sync_reg[2][0] ), 
	.SE(test_se), 
	.RN(RST), 
	.Q(SYNC[2]), 
	.D(\sync_reg[2][0] ), 
	.CK(CLK));
   SDFFRQX2M \sync_reg_reg[3][1]  (.SI(\sync_reg[3][0] ), 
	.SE(test_se), 
	.RN(RST), 
	.Q(SYNC[3]), 
	.D(\sync_reg[3][0] ), 
	.CK(CLK));
   SDFFRQX2M \sync_reg_reg[3][0]  (.SI(SYNC[2]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(\sync_reg[3][0] ), 
	.D(ASYNC[3]), 
	.CK(CLK));
   SDFFRQX2M \sync_reg_reg[2][0]  (.SI(SYNC[1]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(\sync_reg[2][0] ), 
	.D(ASYNC[2]), 
	.CK(CLK));
   SDFFRQX2M \sync_reg_reg[1][0]  (.SI(SYNC[0]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(\sync_reg[1][0] ), 
	.D(ASYNC[1]), 
	.CK(CLK));
   SDFFRQX2M \sync_reg_reg[0][0]  (.SI(test_si), 
	.SE(test_se), 
	.RN(RST), 
	.Q(\sync_reg[0][0] ), 
	.D(ASYNC[0]), 
	.CK(CLK));
endmodule

module DF_SYNC_test_1 (
	CLK, 
	RST, 
	ASYNC, 
	SYNC, 
	test_si, 
	test_se);
   input CLK;
   input RST;
   input [3:0] ASYNC;
   output [3:0] SYNC;
   input test_si;
   input test_se;

   // Internal wires
   wire \sync_reg[3][0] ;
   wire \sync_reg[2][0] ;
   wire \sync_reg[1][0] ;
   wire \sync_reg[0][0] ;

   SDFFRQX2M \sync_reg_reg[2][1]  (.SI(\sync_reg[2][0] ), 
	.SE(test_se), 
	.RN(RST), 
	.Q(SYNC[2]), 
	.D(\sync_reg[2][0] ), 
	.CK(CLK));
   SDFFRQX2M \sync_reg_reg[0][1]  (.SI(\sync_reg[0][0] ), 
	.SE(test_se), 
	.RN(RST), 
	.Q(SYNC[0]), 
	.D(\sync_reg[0][0] ), 
	.CK(CLK));
   SDFFRQX2M \sync_reg_reg[1][1]  (.SI(\sync_reg[1][0] ), 
	.SE(test_se), 
	.RN(RST), 
	.Q(SYNC[1]), 
	.D(\sync_reg[1][0] ), 
	.CK(CLK));
   SDFFRQX2M \sync_reg_reg[3][1]  (.SI(\sync_reg[3][0] ), 
	.SE(test_se), 
	.RN(RST), 
	.Q(SYNC[3]), 
	.D(\sync_reg[3][0] ), 
	.CK(CLK));
   SDFFRQX2M \sync_reg_reg[3][0]  (.SI(SYNC[2]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(\sync_reg[3][0] ), 
	.D(ASYNC[3]), 
	.CK(CLK));
   SDFFRQX2M \sync_reg_reg[2][0]  (.SI(SYNC[1]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(\sync_reg[2][0] ), 
	.D(ASYNC[2]), 
	.CK(CLK));
   SDFFRQX2M \sync_reg_reg[1][0]  (.SI(SYNC[0]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(\sync_reg[1][0] ), 
	.D(ASYNC[1]), 
	.CK(CLK));
   SDFFRQX2M \sync_reg_reg[0][0]  (.SI(test_si), 
	.SE(test_se), 
	.RN(RST), 
	.Q(\sync_reg[0][0] ), 
	.D(ASYNC[0]), 
	.CK(CLK));
endmodule

module FIFO_DATA_WIDTH8_test_1 (
	w_clk, 
	w_rst_n, 
	wr_data, 
	w_inc, 
	r_clk, 
	r_inc, 
	r_rst_n, 
	rd_data, 
	empty, 
	full, 
	test_si2, 
	test_si1, 
	test_so2, 
	test_so1, 
	test_se, 
	FE_OFN2_SYNC_RST_0_M, 
	REF_CLK_M__L5_N5, 
	REF_CLK_M__L5_N6, 
	REF_CLK_M__L5_N7);
   input w_clk;
   input w_rst_n;
   input [7:0] wr_data;
   input w_inc;
   input r_clk;
   input r_inc;
   input r_rst_n;
   output [7:0] rd_data;
   output empty;
   output full;
   input test_si2;
   input test_si1;
   output test_so2;
   output test_so1;
   input test_se;
   input FE_OFN2_SYNC_RST_0_M;
   input REF_CLK_M__L5_N5;
   input REF_CLK_M__L5_N6;
   input REF_CLK_M__L5_N7;

   // Internal wires
   wire _0_net_;
   wire n4;
   wire n5;
   wire [2:0] w_addr;
   wire [2:0] r_addr;
   wire [3:0] wq2_rptr;
   wire [3:0] w_ptr;
   wire [3:0] rq2_wptr;
   wire [3:0] r_ptr;

   NOR2BX2M U1 (.Y(_0_net_), 
	.B(full), 
	.AN(w_inc));
   FIFO_MEM_CNTRL_DATA_WIDTH8_test_1 FIFO_MEM_CNTRL_U0 (.w_clk(w_clk), 
	.w_rst_n(w_rst_n), 
	.w_data({ wr_data[7],
		wr_data[6],
		wr_data[5],
		wr_data[4],
		wr_data[3],
		wr_data[2],
		wr_data[1],
		wr_data[0] }), 
	.w_clken(_0_net_), 
	.w_addr({ w_addr[2],
		w_addr[1],
		w_addr[0] }), 
	.r_addr({ r_addr[2],
		r_addr[1],
		r_addr[0] }), 
	.r_data({ rd_data[7],
		rd_data[6],
		rd_data[5],
		rd_data[4],
		rd_data[3],
		rd_data[2],
		rd_data[1],
		rd_data[0] }), 
	.test_si2(test_si2), 
	.test_si1(rq2_wptr[3]), 
	.test_so2(n5), 
	.test_so1(test_so1), 
	.test_se(test_se), 
	.FE_OFN2_SYNC_RST_0_M(FE_OFN2_SYNC_RST_0_M), 
	.REF_CLK_M__L5_N5(REF_CLK_M__L5_N5), 
	.REF_CLK_M__L5_N6(REF_CLK_M__L5_N6), 
	.REF_CLK_M__L5_N7(REF_CLK_M__L5_N7));
   FIFO_WR_test_1 FIFO_WR_U0 (.w_clk(REF_CLK_M__L5_N5), 
	.w_inc(w_inc), 
	.w_rst_n(w_rst_n), 
	.wq2_rptr({ wq2_rptr[3],
		wq2_rptr[2],
		wq2_rptr[1],
		wq2_rptr[0] }), 
	.w_addr({ w_addr[2],
		w_addr[1],
		w_addr[0] }), 
	.w_ptr({ w_ptr[3],
		w_ptr[2],
		w_ptr[1],
		w_ptr[0] }), 
	.w_full(full), 
	.test_si(n4), 
	.test_so(test_so2), 
	.test_se(test_se), 
	.FE_OFN2_SYNC_RST_0_M(FE_OFN2_SYNC_RST_0_M));
   FIFO_RD_test_1 FIFO_RD_U0 (.r_clk(r_clk), 
	.r_inc(r_inc), 
	.r_rst_n(r_rst_n), 
	.rq2_wptr({ rq2_wptr[3],
		rq2_wptr[2],
		rq2_wptr[1],
		rq2_wptr[0] }), 
	.r_addr({ r_addr[2],
		r_addr[1],
		r_addr[0] }), 
	.r_ptr({ r_ptr[3],
		r_ptr[2],
		r_ptr[1],
		r_ptr[0] }), 
	.r_empty(empty), 
	.test_si(n5), 
	.test_so(n4), 
	.test_se(test_se));
   DF_SYNC_test_0 DF_SYNC_U0 (.CLK(REF_CLK_M__L5_N5), 
	.RST(w_rst_n), 
	.ASYNC({ r_ptr[3],
		r_ptr[2],
		r_ptr[1],
		r_ptr[0] }), 
	.SYNC({ wq2_rptr[3],
		wq2_rptr[2],
		wq2_rptr[1],
		wq2_rptr[0] }), 
	.test_si(test_si1), 
	.test_se(test_se));
   DF_SYNC_test_1 DF_SYNC_U1 (.CLK(r_clk), 
	.RST(r_rst_n), 
	.ASYNC({ w_ptr[3],
		w_ptr[2],
		w_ptr[1],
		w_ptr[0] }), 
	.SYNC({ rq2_wptr[3],
		rq2_wptr[2],
		rq2_wptr[1],
		rq2_wptr[0] }), 
	.test_si(wq2_rptr[3]), 
	.test_se(test_se));
endmodule

module PULSE_GEN_test_1 (
	clk, 
	rst, 
	lvl_sig, 
	pulse_sig, 
	test_si, 
	test_so, 
	test_se, 
	n36);
   input clk;
   input rst;
   input lvl_sig;
   output pulse_sig;
   input test_si;
   output test_so;
   input test_se;
   input n36;

   // Internal wires
   wire rcv_flop;
   wire pls_flop;

   assign test_so = rcv_flop ;

   SDFFRQX2M rcv_flop_reg (.SI(pls_flop), 
	.SE(n36), 
	.RN(rst), 
	.Q(rcv_flop), 
	.D(lvl_sig), 
	.CK(clk));
   SDFFRQX2M pls_flop_reg (.SI(test_si), 
	.SE(test_se), 
	.RN(rst), 
	.Q(pls_flop), 
	.D(rcv_flop), 
	.CK(clk));
   NOR2BX2M U5 (.Y(pulse_sig), 
	.B(pls_flop), 
	.AN(rcv_flop));
endmodule

module Clk_Div_0_DW01_inc_0 (
	A, 
	SUM);
   input [6:0] A;
   output [6:0] SUM;

   // Internal wires
   wire [6:2] carry;

   ADDHX1M U1_1_5 (.S(SUM[5]), 
	.CO(carry[6]), 
	.B(carry[5]), 
	.A(A[5]));
   ADDHX1M U1_1_4 (.S(SUM[4]), 
	.CO(carry[5]), 
	.B(carry[4]), 
	.A(A[4]));
   ADDHX1M U1_1_3 (.S(SUM[3]), 
	.CO(carry[4]), 
	.B(carry[3]), 
	.A(A[3]));
   ADDHX1M U1_1_2 (.S(SUM[2]), 
	.CO(carry[3]), 
	.B(carry[2]), 
	.A(A[2]));
   ADDHX1M U1_1_1 (.S(SUM[1]), 
	.CO(carry[2]), 
	.B(A[0]), 
	.A(A[1]));
   CLKXOR2X2M U1 (.Y(SUM[6]), 
	.B(A[6]), 
	.A(carry[6]));
   CLKINVX1M U2 (.Y(SUM[0]), 
	.A(A[0]));
endmodule

module Clk_Div_test_0 (
	i_ref_clk, 
	i_rst_n, 
	i_clk_en, 
	i_div_ratio, 
	o_div_clk, 
	test_si, 
	test_so, 
	test_se, 
	FE_PT1_n36, 
	n22__Exclude_0_NET, 
	UART_CLK_M__L2_N0, 
	UART_CLK_M__L6_N1);
   input i_ref_clk;
   input i_rst_n;
   input i_clk_en;
   input [7:0] i_div_ratio;
   output o_div_clk;
   input test_si;
   output test_so;
   input test_se;
   input FE_PT1_n36;
   input n22__Exclude_0_NET;
   input UART_CLK_M__L2_N0;
   input UART_CLK_M__L6_N1;

   // Internal wires
   wire HTIE_LTIEHI_NET;
   wire N0;
   wire div_clk;
   wire N15;
   wire N16;
   wire N17;
   wire N18;
   wire N19;
   wire N20;
   wire N21;
   wire n23;
   wire n24;
   wire n25;
   wire n26;
   wire n27;
   wire n28;
   wire n29;
   wire n30;
   wire n1;
   wire n2;
   wire n3;
   wire n4;
   wire n5;
   wire n14;
   wire n15;
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire n20;
   wire n21;
   wire n22;
   wire n31;
   wire n32;
   wire n33;
   wire n34;
   wire n35;
   wire n36;
   wire n37;
   wire n38;
   wire n39;
   wire n40;
   wire n41;
   wire n42;
   wire n43;
   wire n44;
   wire n45;
   wire n46;
   wire n47;
   wire n48;
   wire n49;
   wire [6:0] half_period;
   wire [6:0] counter;

   TIEHIM HTIE_LTIEHI (.Y(HTIE_LTIEHI_NET));
   SDFFRQX2M div_clk_reg (.SI(counter[6]), 
	.SE(FE_PT1_n36), 
	.RN(i_rst_n), 
	.Q(test_so), 
	.D(n30), 
	.CK(UART_CLK_M__L2_N0));
   SDFFRQX2M \counter_reg[6]  (.SI(counter[5]), 
	.SE(FE_PT1_n36), 
	.RN(i_rst_n), 
	.Q(counter[6]), 
	.D(n29), 
	.CK(i_ref_clk));
   SDFFRQX2M \counter_reg[0]  (.SI(test_si), 
	.SE(FE_PT1_n36), 
	.RN(i_rst_n), 
	.Q(counter[0]), 
	.D(n28), 
	.CK(i_ref_clk));
   SDFFRQX2M \counter_reg[3]  (.SI(counter[2]), 
	.SE(FE_PT1_n36), 
	.RN(i_rst_n), 
	.Q(counter[3]), 
	.D(n25), 
	.CK(i_ref_clk));
   SDFFRQX2M \counter_reg[4]  (.SI(counter[3]), 
	.SE(FE_PT1_n36), 
	.RN(i_rst_n), 
	.Q(counter[4]), 
	.D(n24), 
	.CK(i_ref_clk));
   SDFFRQX2M \counter_reg[5]  (.SI(counter[4]), 
	.SE(FE_PT1_n36), 
	.RN(i_rst_n), 
	.Q(counter[5]), 
	.D(n23), 
	.CK(i_ref_clk));
   SDFFRQX2M \counter_reg[1]  (.SI(counter[0]), 
	.SE(FE_PT1_n36), 
	.RN(i_rst_n), 
	.Q(counter[1]), 
	.D(n27), 
	.CK(i_ref_clk));
   SDFFRQX2M \counter_reg[2]  (.SI(counter[1]), 
	.SE(test_se), 
	.RN(i_rst_n), 
	.Q(counter[2]), 
	.D(n26), 
	.CK(i_ref_clk));
   OR2X2M U5 (.Y(n1), 
	.B(i_div_ratio[1]), 
	.A(i_div_ratio[2]));
   INVX2M U6 (.Y(n14), 
	.A(i_div_ratio[5]));
   MX2X2M U9 (.Y(o_div_clk), 
	.S0(N0), 
	.B(UART_CLK_M__L6_N1), 
	.A(test_so));
   CLKINVX1M U14 (.Y(half_period[0]), 
	.A(i_div_ratio[1]));
   OAI2BB1X1M U15 (.Y(half_period[1]), 
	.B0(n1), 
	.A1N(i_div_ratio[2]), 
	.A0N(i_div_ratio[1]));
   OR2X1M U16 (.Y(n2), 
	.B(i_div_ratio[3]), 
	.A(n1));
   OAI2BB1X1M U17 (.Y(half_period[2]), 
	.B0(n2), 
	.A1N(i_div_ratio[3]), 
	.A0N(n1));
   NOR2X1M U18 (.Y(n3), 
	.B(i_div_ratio[4]), 
	.A(n2));
   AO21XLM U19 (.Y(half_period[3]), 
	.B0(n3), 
	.A1(i_div_ratio[4]), 
	.A0(n2));
   CLKNAND2X2M U20 (.Y(n4), 
	.B(n14), 
	.A(n3));
   OAI21X1M U21 (.Y(half_period[4]), 
	.B0(n4), 
	.A1(n14), 
	.A0(n3));
   XNOR2X1M U22 (.Y(half_period[5]), 
	.B(n4), 
	.A(i_div_ratio[6]));
   NOR2X1M U23 (.Y(n5), 
	.B(n4), 
	.A(i_div_ratio[6]));
   CLKXOR2X2M U24 (.Y(half_period[6]), 
	.B(n5), 
	.A(i_div_ratio[7]));
   XNOR2X1M U25 (.Y(n30), 
	.B(n15), 
	.A(n22__Exclude_0_NET));
   AO2B2X1M U26 (.Y(n29), 
	.B1(n16), 
	.B0(N21), 
	.A1N(n17), 
	.A0(counter[6]));
   AO2B2X1M U27 (.Y(n28), 
	.B1(n16), 
	.B0(N15), 
	.A1N(n17), 
	.A0(counter[0]));
   AO2B2X1M U28 (.Y(n27), 
	.B1(n16), 
	.B0(N16), 
	.A1N(n17), 
	.A0(counter[1]));
   AO2B2X1M U29 (.Y(n26), 
	.B1(n16), 
	.B0(N17), 
	.A1N(n17), 
	.A0(counter[2]));
   AO2B2X1M U30 (.Y(n25), 
	.B1(n16), 
	.B0(N18), 
	.A1N(n17), 
	.A0(counter[3]));
   AO2B2X1M U31 (.Y(n24), 
	.B1(n16), 
	.B0(N19), 
	.A1N(n17), 
	.A0(counter[4]));
   AO2B2X1M U32 (.Y(n23), 
	.B1(n16), 
	.B0(N20), 
	.A1N(n17), 
	.A0(counter[5]));
   CLKNAND2X2M U33 (.Y(n17), 
	.B(n15), 
	.A(n18));
   CLKINVX1M U34 (.Y(n16), 
	.A(n18));
   CLKNAND2X2M U35 (.Y(n18), 
	.B(n19), 
	.A(n15));
   CLKNAND2X2M U36 (.Y(n15), 
	.B(n19), 
	.A(n20));
   CLKINVX1M U37 (.Y(n19), 
	.A(N0));
   MXI2X1M U38 (.Y(n20), 
	.S0(n31), 
	.B(n22), 
	.A(n21));
   NOR2BX1M U39 (.Y(n31), 
	.B(n22__Exclude_0_NET), 
	.AN(i_div_ratio[0]));
   NAND4X1M U40 (.Y(n22), 
	.D(n35), 
	.C(n34), 
	.B(n33), 
	.A(n32));
   NOR4X1M U41 (.Y(n35), 
	.D(n39), 
	.C(n38), 
	.B(n37), 
	.A(n36));
   CLKXOR2X2M U42 (.Y(n39), 
	.B(counter[2]), 
	.A(i_div_ratio[3]));
   CLKXOR2X2M U43 (.Y(n38), 
	.B(counter[1]), 
	.A(i_div_ratio[2]));
   CLKXOR2X2M U44 (.Y(n37), 
	.B(counter[0]), 
	.A(i_div_ratio[1]));
   CLKXOR2X2M U45 (.Y(n36), 
	.B(counter[6]), 
	.A(i_div_ratio[7]));
   XNOR2X1M U46 (.Y(n34), 
	.B(i_div_ratio[5]), 
	.A(counter[4]));
   XNOR2X1M U47 (.Y(n33), 
	.B(i_div_ratio[6]), 
	.A(counter[5]));
   XNOR2X1M U48 (.Y(n32), 
	.B(i_div_ratio[4]), 
	.A(counter[3]));
   NAND4X1M U49 (.Y(n21), 
	.D(n43), 
	.C(n42), 
	.B(n41), 
	.A(n40));
   NOR4X1M U50 (.Y(n43), 
	.D(n47), 
	.C(n46), 
	.B(n45), 
	.A(n44));
   CLKXOR2X2M U51 (.Y(n47), 
	.B(counter[2]), 
	.A(half_period[2]));
   CLKXOR2X2M U52 (.Y(n46), 
	.B(counter[1]), 
	.A(half_period[1]));
   CLKXOR2X2M U53 (.Y(n45), 
	.B(counter[0]), 
	.A(half_period[0]));
   CLKXOR2X2M U54 (.Y(n44), 
	.B(counter[6]), 
	.A(half_period[6]));
   XNOR2X1M U55 (.Y(n42), 
	.B(half_period[4]), 
	.A(counter[4]));
   XNOR2X1M U56 (.Y(n41), 
	.B(half_period[5]), 
	.A(counter[5]));
   XNOR2X1M U57 (.Y(n40), 
	.B(half_period[3]), 
	.A(counter[3]));
   OAI21X1M U58 (.Y(N0), 
	.B0(HTIE_LTIEHI_NET), 
	.A1(n49), 
	.A0(n48));
   OR3X1M U59 (.Y(n49), 
	.C(i_div_ratio[1]), 
	.B(i_div_ratio[3]), 
	.A(i_div_ratio[2]));
   OR4X1M U60 (.Y(n48), 
	.D(i_div_ratio[7]), 
	.C(i_div_ratio[6]), 
	.B(i_div_ratio[5]), 
	.A(i_div_ratio[4]));
   Clk_Div_0_DW01_inc_0 add_44 (.A({ counter[6],
		counter[5],
		counter[4],
		counter[3],
		counter[2],
		counter[1],
		counter[0] }), 
	.SUM({ N21,
		N20,
		N19,
		N18,
		N17,
		N16,
		N15 }));
endmodule

module CLKDIV_MUX_WIDTH4 (
	IN, 
	OUT);
   input [5:0] IN;
   output [3:0] OUT;

   // Internal wires
   wire n5;
   wire n6;
   wire n7;
   wire n8;
   wire n9;
   wire n1;
   wire n2;
   wire n3;
   wire n4;

   NAND4BX1M U3 (.Y(n6), 
	.D(n1), 
	.C(n2), 
	.B(IN[3]), 
	.AN(IN[4]));
   NOR3X2M U4 (.Y(OUT[2]), 
	.C(IN[0]), 
	.B(IN[1]), 
	.A(n6));
   INVX2M U5 (.Y(n2), 
	.A(IN[2]));
   NAND4BX1M U6 (.Y(n7), 
	.D(n1), 
	.C(n2), 
	.B(IN[4]), 
	.AN(IN[3]));
   NOR3X2M U7 (.Y(OUT[1]), 
	.C(IN[0]), 
	.B(IN[1]), 
	.A(n7));
   NOR4X1M U8 (.Y(OUT[3]), 
	.D(IN[4]), 
	.C(IN[5]), 
	.B(IN[3]), 
	.A(n5));
   NAND3X2M U9 (.Y(n5), 
	.C(IN[2]), 
	.B(n3), 
	.A(n4));
   INVX2M U10 (.Y(n4), 
	.A(IN[0]));
   INVX2M U11 (.Y(n3), 
	.A(IN[1]));
   INVX2M U12 (.Y(n1), 
	.A(IN[5]));
   OAI211X2M U13 (.Y(OUT[0]), 
	.C0(n3), 
	.B0(n4), 
	.A1(n9), 
	.A0(n8));
   NOR4X1M U14 (.Y(n8), 
	.D(n2), 
	.C(IN[3]), 
	.B(IN[4]), 
	.A(IN[5]));
   NAND2X2M U15 (.Y(n9), 
	.B(n6), 
	.A(n7));
endmodule

module Clk_Div_1_DW01_inc_0 (
	A, 
	SUM);
   input [6:0] A;
   output [6:0] SUM;

   // Internal wires
   wire [6:2] carry;

   ADDHX1M U1_1_5 (.S(SUM[5]), 
	.CO(carry[6]), 
	.B(carry[5]), 
	.A(A[5]));
   ADDHX1M U1_1_4 (.S(SUM[4]), 
	.CO(carry[5]), 
	.B(carry[4]), 
	.A(A[4]));
   ADDHX1M U1_1_3 (.S(SUM[3]), 
	.CO(carry[4]), 
	.B(carry[3]), 
	.A(A[3]));
   ADDHX1M U1_1_2 (.S(SUM[2]), 
	.CO(carry[3]), 
	.B(carry[2]), 
	.A(A[2]));
   ADDHX1M U1_1_1 (.S(SUM[1]), 
	.CO(carry[2]), 
	.B(A[0]), 
	.A(A[1]));
   CLKXOR2X2M U1 (.Y(SUM[6]), 
	.B(A[6]), 
	.A(carry[6]));
   CLKINVX1M U2 (.Y(SUM[0]), 
	.A(A[0]));
endmodule

module Clk_Div_test_1 (
	i_ref_clk, 
	i_rst_n, 
	i_clk_en, 
	i_div_ratio, 
	o_div_clk, 
	test_si, 
	test_so, 
	test_se, 
	n21__Exclude_0_NET, 
	UART_CLK_M__L2_N0, 
	UART_CLK_M__L6_N1);
   input i_ref_clk;
   input i_rst_n;
   input i_clk_en;
   input [7:0] i_div_ratio;
   output o_div_clk;
   input test_si;
   output test_so;
   input test_se;
   input n21__Exclude_0_NET;
   input UART_CLK_M__L2_N0;
   input UART_CLK_M__L6_N1;

   // Internal wires
   wire FE_PHN15_n22__Exclude_0_NET;
   wire HTIE_LTIEHI_NET;
   wire LTIE_LTIELO_NET;
   wire N0;
   wire div_clk;
   wire N15;
   wire N16;
   wire N17;
   wire N18;
   wire N19;
   wire N20;
   wire N21;
   wire n1;
   wire n2;
   wire n3;
   wire n4;
   wire n5;
   wire n14;
   wire n15;
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire n20;
   wire n21;
   wire n22;
   wire n31;
   wire n32;
   wire n33;
   wire n34;
   wire n35;
   wire n36;
   wire n37;
   wire n38;
   wire n39;
   wire n40;
   wire n41;
   wire n42;
   wire n43;
   wire n44;
   wire n45;
   wire n46;
   wire n47;
   wire n48;
   wire n49;
   wire n50;
   wire n51;
   wire n52;
   wire n53;
   wire n54;
   wire n55;
   wire n56;
   wire n57;
   wire [6:0] half_period;
   wire [6:0] counter;

   DLY4X1M FE_PHC15_n22__Exclude_0_NET (.Y(FE_PHN15_n22__Exclude_0_NET), 
	.A(test_si));
   TIEHIM HTIE_LTIEHI (.Y(HTIE_LTIEHI_NET));
   TIELOM LTIE_LTIELO (.Y(LTIE_LTIELO_NET));
   SDFFRQX2M div_clk_reg (.SI(counter[6]), 
	.SE(test_se), 
	.RN(i_rst_n), 
	.Q(test_so), 
	.D(n50), 
	.CK(UART_CLK_M__L2_N0));
   SDFFRQX2M \counter_reg[6]  (.SI(counter[5]), 
	.SE(test_se), 
	.RN(i_rst_n), 
	.Q(counter[6]), 
	.D(n51), 
	.CK(i_ref_clk));
   SDFFRQX2M \counter_reg[0]  (.SI(FE_PHN15_n22__Exclude_0_NET), 
	.SE(test_se), 
	.RN(i_rst_n), 
	.Q(counter[0]), 
	.D(n52), 
	.CK(i_ref_clk));
   SDFFRQX2M \counter_reg[3]  (.SI(counter[2]), 
	.SE(test_se), 
	.RN(i_rst_n), 
	.Q(counter[3]), 
	.D(n55), 
	.CK(i_ref_clk));
   SDFFRQX2M \counter_reg[4]  (.SI(counter[3]), 
	.SE(test_se), 
	.RN(i_rst_n), 
	.Q(counter[4]), 
	.D(n56), 
	.CK(i_ref_clk));
   SDFFRQX2M \counter_reg[5]  (.SI(counter[4]), 
	.SE(test_se), 
	.RN(i_rst_n), 
	.Q(counter[5]), 
	.D(n57), 
	.CK(i_ref_clk));
   SDFFRQX2M \counter_reg[1]  (.SI(counter[0]), 
	.SE(test_se), 
	.RN(i_rst_n), 
	.Q(counter[1]), 
	.D(n53), 
	.CK(i_ref_clk));
   SDFFRQX2M \counter_reg[2]  (.SI(counter[1]), 
	.SE(test_se), 
	.RN(i_rst_n), 
	.Q(counter[2]), 
	.D(n54), 
	.CK(i_ref_clk));
   OR2X2M U5 (.Y(n1), 
	.B(i_div_ratio[1]), 
	.A(i_div_ratio[2]));
   INVX2M U6 (.Y(n14), 
	.A(LTIE_LTIELO_NET));
   MX2X2M U9 (.Y(o_div_clk), 
	.S0(N0), 
	.B(UART_CLK_M__L6_N1), 
	.A(test_so));
   CLKINVX1M U14 (.Y(half_period[0]), 
	.A(i_div_ratio[1]));
   OAI2BB1X1M U15 (.Y(half_period[1]), 
	.B0(n1), 
	.A1N(i_div_ratio[2]), 
	.A0N(i_div_ratio[1]));
   OR2X1M U16 (.Y(n2), 
	.B(i_div_ratio[3]), 
	.A(n1));
   OAI2BB1X1M U17 (.Y(half_period[2]), 
	.B0(n2), 
	.A1N(i_div_ratio[3]), 
	.A0N(n1));
   NOR2X1M U18 (.Y(n3), 
	.B(LTIE_LTIELO_NET), 
	.A(n2));
   AO21XLM U19 (.Y(half_period[3]), 
	.B0(n3), 
	.A1(LTIE_LTIELO_NET), 
	.A0(n2));
   CLKNAND2X2M U20 (.Y(n4), 
	.B(n14), 
	.A(n3));
   OAI21X1M U21 (.Y(half_period[4]), 
	.B0(n4), 
	.A1(n14), 
	.A0(n3));
   XNOR2X1M U22 (.Y(half_period[5]), 
	.B(n4), 
	.A(LTIE_LTIELO_NET));
   NOR2X1M U23 (.Y(n5), 
	.B(n4), 
	.A(LTIE_LTIELO_NET));
   CLKXOR2X2M U24 (.Y(half_period[6]), 
	.B(n5), 
	.A(LTIE_LTIELO_NET));
   XNOR2X1M U25 (.Y(n50), 
	.B(n15), 
	.A(n21__Exclude_0_NET));
   AO2B2X1M U26 (.Y(n51), 
	.B1(n16), 
	.B0(N21), 
	.A1N(n17), 
	.A0(counter[6]));
   AO2B2X1M U27 (.Y(n52), 
	.B1(n16), 
	.B0(N15), 
	.A1N(n17), 
	.A0(counter[0]));
   AO2B2X1M U28 (.Y(n53), 
	.B1(n16), 
	.B0(N16), 
	.A1N(n17), 
	.A0(counter[1]));
   AO2B2X1M U29 (.Y(n54), 
	.B1(n16), 
	.B0(N17), 
	.A1N(n17), 
	.A0(counter[2]));
   AO2B2X1M U30 (.Y(n55), 
	.B1(n16), 
	.B0(N18), 
	.A1N(n17), 
	.A0(counter[3]));
   AO2B2X1M U31 (.Y(n56), 
	.B1(n16), 
	.B0(N19), 
	.A1N(n17), 
	.A0(counter[4]));
   AO2B2X1M U32 (.Y(n57), 
	.B1(n16), 
	.B0(N20), 
	.A1N(n17), 
	.A0(counter[5]));
   CLKNAND2X2M U33 (.Y(n17), 
	.B(n15), 
	.A(n18));
   CLKINVX1M U34 (.Y(n16), 
	.A(n18));
   CLKNAND2X2M U35 (.Y(n18), 
	.B(n19), 
	.A(n15));
   CLKNAND2X2M U36 (.Y(n15), 
	.B(n19), 
	.A(n20));
   CLKINVX1M U37 (.Y(n19), 
	.A(N0));
   MXI2X1M U38 (.Y(n20), 
	.S0(n31), 
	.B(n22), 
	.A(n21));
   NOR2BX1M U39 (.Y(n31), 
	.B(n21__Exclude_0_NET), 
	.AN(i_div_ratio[0]));
   NAND4X1M U40 (.Y(n22), 
	.D(n35), 
	.C(n34), 
	.B(n33), 
	.A(n32));
   NOR4X1M U41 (.Y(n35), 
	.D(n39), 
	.C(n38), 
	.B(n37), 
	.A(n36));
   CLKXOR2X2M U42 (.Y(n39), 
	.B(counter[2]), 
	.A(i_div_ratio[3]));
   CLKXOR2X2M U43 (.Y(n38), 
	.B(counter[1]), 
	.A(i_div_ratio[2]));
   CLKXOR2X2M U44 (.Y(n37), 
	.B(counter[0]), 
	.A(i_div_ratio[1]));
   CLKXOR2X2M U45 (.Y(n36), 
	.B(counter[6]), 
	.A(LTIE_LTIELO_NET));
   XNOR2X1M U46 (.Y(n34), 
	.B(LTIE_LTIELO_NET), 
	.A(counter[4]));
   XNOR2X1M U47 (.Y(n33), 
	.B(LTIE_LTIELO_NET), 
	.A(counter[5]));
   XNOR2X1M U48 (.Y(n32), 
	.B(LTIE_LTIELO_NET), 
	.A(counter[3]));
   NAND4X1M U49 (.Y(n21), 
	.D(n43), 
	.C(n42), 
	.B(n41), 
	.A(n40));
   NOR4X1M U50 (.Y(n43), 
	.D(n47), 
	.C(n46), 
	.B(n45), 
	.A(n44));
   CLKXOR2X2M U51 (.Y(n47), 
	.B(counter[2]), 
	.A(half_period[2]));
   CLKXOR2X2M U52 (.Y(n46), 
	.B(counter[1]), 
	.A(half_period[1]));
   CLKXOR2X2M U53 (.Y(n45), 
	.B(counter[0]), 
	.A(half_period[0]));
   CLKXOR2X2M U54 (.Y(n44), 
	.B(counter[6]), 
	.A(half_period[6]));
   XNOR2X1M U55 (.Y(n42), 
	.B(half_period[4]), 
	.A(counter[4]));
   XNOR2X1M U56 (.Y(n41), 
	.B(half_period[5]), 
	.A(counter[5]));
   XNOR2X1M U57 (.Y(n40), 
	.B(half_period[3]), 
	.A(counter[3]));
   OAI21X1M U58 (.Y(N0), 
	.B0(HTIE_LTIEHI_NET), 
	.A1(n49), 
	.A0(n48));
   OR3X1M U59 (.Y(n49), 
	.C(i_div_ratio[1]), 
	.B(i_div_ratio[3]), 
	.A(i_div_ratio[2]));
   OR4X1M U60 (.Y(n48), 
	.D(LTIE_LTIELO_NET), 
	.C(LTIE_LTIELO_NET), 
	.B(LTIE_LTIELO_NET), 
	.A(LTIE_LTIELO_NET));
   Clk_Div_1_DW01_inc_0 add_44 (.A({ counter[6],
		counter[5],
		counter[4],
		counter[3],
		counter[2],
		counter[1],
		counter[0] }), 
	.SUM({ N21,
		N20,
		N19,
		N18,
		N17,
		N16,
		N15 }));
endmodule

module Parity_Calc_test_1 (
	p_data, 
	Data_Valid, 
	PAR_EN, 
	Busy, 
	CLK, 
	RST, 
	Par_Type, 
	Par_Bit, 
	test_si, 
	test_se, 
	TX_CLK_M__L3_N1);
   input [7:0] p_data;
   input Data_Valid;
   input PAR_EN;
   input Busy;
   input CLK;
   input RST;
   input Par_Type;
   output Par_Bit;
   input test_si;
   input test_se;
   input TX_CLK_M__L3_N1;

   // Internal wires
   wire n1;
   wire n2;
   wire n4;
   wire n5;
   wire n6;
   wire n7;
   wire n10;
   wire n12;
   wire n14;
   wire n16;
   wire n18;
   wire n20;
   wire n22;
   wire n24;
   wire n25;
   wire n3;
   wire [7:0] DATA_V;

   SDFFRQX2M Par_Bit_reg (.SI(DATA_V[7]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(Par_Bit), 
	.D(n25), 
	.CK(TX_CLK_M__L3_N1));
   SDFFRQX2M \DATA_V_reg[5]  (.SI(DATA_V[4]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(DATA_V[5]), 
	.D(n20), 
	.CK(CLK));
   SDFFRQX2M \DATA_V_reg[1]  (.SI(DATA_V[0]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(DATA_V[1]), 
	.D(n12), 
	.CK(TX_CLK_M__L3_N1));
   SDFFRQX2M \DATA_V_reg[4]  (.SI(DATA_V[3]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(DATA_V[4]), 
	.D(n18), 
	.CK(CLK));
   SDFFRQX2M \DATA_V_reg[0]  (.SI(test_si), 
	.SE(test_se), 
	.RN(RST), 
	.Q(DATA_V[0]), 
	.D(n10), 
	.CK(TX_CLK_M__L3_N1));
   SDFFRQX2M \DATA_V_reg[2]  (.SI(DATA_V[1]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(DATA_V[2]), 
	.D(n14), 
	.CK(TX_CLK_M__L3_N1));
   SDFFRQX2M \DATA_V_reg[3]  (.SI(DATA_V[2]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(DATA_V[3]), 
	.D(n16), 
	.CK(CLK));
   SDFFRQX2M \DATA_V_reg[6]  (.SI(DATA_V[5]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(DATA_V[6]), 
	.D(n22), 
	.CK(CLK));
   SDFFRQX2M \DATA_V_reg[7]  (.SI(DATA_V[6]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(DATA_V[7]), 
	.D(n24), 
	.CK(TX_CLK_M__L3_N1));
   NOR2BX2M U3 (.Y(n1), 
	.B(Busy), 
	.AN(Data_Valid));
   AO2B2X2M U4 (.Y(n10), 
	.B1(n1), 
	.B0(p_data[0]), 
	.A1N(n1), 
	.A0(DATA_V[0]));
   AO2B2X2M U5 (.Y(n12), 
	.B1(n1), 
	.B0(p_data[1]), 
	.A1N(n1), 
	.A0(DATA_V[1]));
   AO2B2X2M U6 (.Y(n14), 
	.B1(n1), 
	.B0(p_data[2]), 
	.A1N(n1), 
	.A0(DATA_V[2]));
   AO2B2X2M U7 (.Y(n16), 
	.B1(n1), 
	.B0(p_data[3]), 
	.A1N(n1), 
	.A0(DATA_V[3]));
   AO2B2X2M U8 (.Y(n18), 
	.B1(n1), 
	.B0(p_data[4]), 
	.A1N(n1), 
	.A0(DATA_V[4]));
   AO2B2X2M U9 (.Y(n20), 
	.B1(n1), 
	.B0(p_data[5]), 
	.A1N(n1), 
	.A0(DATA_V[5]));
   AO2B2X2M U10 (.Y(n22), 
	.B1(n1), 
	.B0(p_data[6]), 
	.A1N(n1), 
	.A0(DATA_V[6]));
   AO2B2X2M U11 (.Y(n24), 
	.B1(n1), 
	.B0(p_data[7]), 
	.A1N(n1), 
	.A0(DATA_V[7]));
   XNOR2X2M U12 (.Y(n6), 
	.B(DATA_V[3]), 
	.A(DATA_V[2]));
   XOR3XLM U13 (.Y(n4), 
	.C(n7), 
	.B(DATA_V[4]), 
	.A(DATA_V[5]));
   CLKXOR2X2M U14 (.Y(n7), 
	.B(DATA_V[6]), 
	.A(DATA_V[7]));
   OAI2BB2X1M U15 (.Y(n25), 
	.B1(n3), 
	.B0(n2), 
	.A1N(n3), 
	.A0N(Par_Bit));
   INVX2M U16 (.Y(n3), 
	.A(PAR_EN));
   XOR3XLM U17 (.Y(n2), 
	.C(n5), 
	.B(Par_Type), 
	.A(n4));
   XOR3XLM U18 (.Y(n5), 
	.C(n6), 
	.B(DATA_V[0]), 
	.A(DATA_V[1]));
endmodule

module serializer_test_1 (
	P_DATA, 
	DATA_VALID, 
	CLK, 
	RST, 
	busy, 
	SER_EN, 
	SER_DONE, 
	SER_DATA, 
	test_si, 
	test_so, 
	test_se, 
	FE_OFN3_SYNC_RST_1_M);
   input [7:0] P_DATA;
   input DATA_VALID;
   input CLK;
   input RST;
   input busy;
   input SER_EN;
   output SER_DONE;
   output SER_DATA;
   input test_si;
   output test_so;
   input test_se;
   input FE_OFN3_SYNC_RST_1_M;

   // Internal wires
   wire N25;
   wire N26;
   wire N27;
   wire N28;
   wire N33;
   wire n14;
   wire n18;
   wire n19;
   wire n20;
   wire n21;
   wire n22;
   wire n23;
   wire n24;
   wire n25;
   wire n26;
   wire n27;
   wire n28;
   wire n29;
   wire n30;
   wire n31;
   wire n32;
   wire n33;
   wire n34;
   wire n35;
   wire n36;
   wire n37;
   wire n38;
   wire n39;
   wire n40;
   wire n41;
   wire n42;
   wire n43;
   wire n16;
   wire n17;
   wire n44;
   wire n45;
   wire n48;
   wire n49;
   wire [7:0] shift_reg;
   wire [3:0] counter;

   assign test_so = shift_reg[7] ;
   assign SER_DONE = N33 ;

   SDFFRQX2M SER_DATA_reg (.SI(test_si), 
	.SE(n49), 
	.RN(FE_OFN3_SYNC_RST_1_M), 
	.Q(SER_DATA), 
	.D(n35), 
	.CK(CLK));
   SDFFRQX2M \shift_reg_reg[0]  (.SI(counter[3]), 
	.SE(n49), 
	.RN(FE_OFN3_SYNC_RST_1_M), 
	.Q(shift_reg[0]), 
	.D(n36), 
	.CK(CLK));
   SDFFRQX2M \shift_reg_reg[7]  (.SI(shift_reg[6]), 
	.SE(n49), 
	.RN(FE_OFN3_SYNC_RST_1_M), 
	.Q(shift_reg[7]), 
	.D(n43), 
	.CK(CLK));
   SDFFRQX2M \shift_reg_reg[6]  (.SI(shift_reg[5]), 
	.SE(n49), 
	.RN(RST), 
	.Q(shift_reg[6]), 
	.D(n37), 
	.CK(CLK));
   SDFFRQX2M \shift_reg_reg[5]  (.SI(shift_reg[4]), 
	.SE(n49), 
	.RN(RST), 
	.Q(shift_reg[5]), 
	.D(n38), 
	.CK(CLK));
   SDFFRQX2M \shift_reg_reg[4]  (.SI(shift_reg[3]), 
	.SE(n49), 
	.RN(RST), 
	.Q(shift_reg[4]), 
	.D(n39), 
	.CK(CLK));
   SDFFRQX2M \shift_reg_reg[3]  (.SI(shift_reg[2]), 
	.SE(n49), 
	.RN(RST), 
	.Q(shift_reg[3]), 
	.D(n40), 
	.CK(CLK));
   SDFFRQX2M \shift_reg_reg[2]  (.SI(shift_reg[1]), 
	.SE(n49), 
	.RN(FE_OFN3_SYNC_RST_1_M), 
	.Q(shift_reg[2]), 
	.D(n41), 
	.CK(CLK));
   SDFFRQX2M \shift_reg_reg[1]  (.SI(shift_reg[0]), 
	.SE(n49), 
	.RN(RST), 
	.Q(shift_reg[1]), 
	.D(n42), 
	.CK(CLK));
   SDFFRQX2M \counter_reg[3]  (.SI(n45), 
	.SE(n49), 
	.RN(FE_OFN3_SYNC_RST_1_M), 
	.Q(counter[3]), 
	.D(N28), 
	.CK(CLK));
   SDFFRQX2M \counter_reg[1]  (.SI(n17), 
	.SE(n49), 
	.RN(FE_OFN3_SYNC_RST_1_M), 
	.Q(counter[1]), 
	.D(N26), 
	.CK(CLK));
   SDFFRQX2M \counter_reg[0]  (.SI(SER_DATA), 
	.SE(n49), 
	.RN(FE_OFN3_SYNC_RST_1_M), 
	.Q(counter[0]), 
	.D(N25), 
	.CK(CLK));
   SDFFRX1M \counter_reg[2]  (.SI(n44), 
	.SE(n49), 
	.RN(FE_OFN3_SYNC_RST_1_M), 
	.QN(n14), 
	.Q(n45), 
	.D(N27), 
	.CK(CLK));
   OR2X2M U17 (.Y(n19), 
	.B(n18), 
	.A(n21));
   NOR2BX2M U18 (.Y(n21), 
	.B(busy), 
	.AN(DATA_VALID));
   NOR2X2M U19 (.Y(n18), 
	.B(n21), 
	.A(n16));
   INVX2M U20 (.Y(n16), 
	.A(SER_EN));
   NOR2X2M U21 (.Y(N26), 
	.B(n16), 
	.A(n32));
   OAI2B1X2M U22 (.Y(n36), 
	.B0(n20), 
	.A1N(shift_reg[0]), 
	.A0(n19));
   AOI22X1M U23 (.Y(n20), 
	.B1(n21), 
	.B0(P_DATA[0]), 
	.A1(n18), 
	.A0(shift_reg[1]));
   OAI2B1X2M U24 (.Y(n42), 
	.B0(n27), 
	.A1N(shift_reg[1]), 
	.A0(n19));
   AOI22X1M U25 (.Y(n27), 
	.B1(n21), 
	.B0(P_DATA[1]), 
	.A1(n18), 
	.A0(shift_reg[2]));
   OAI2B1X2M U26 (.Y(n41), 
	.B0(n26), 
	.A1N(shift_reg[2]), 
	.A0(n19));
   AOI22X1M U27 (.Y(n26), 
	.B1(n21), 
	.B0(P_DATA[2]), 
	.A1(n18), 
	.A0(shift_reg[3]));
   OAI2B1X2M U28 (.Y(n40), 
	.B0(n25), 
	.A1N(shift_reg[3]), 
	.A0(n19));
   AOI22X1M U29 (.Y(n25), 
	.B1(n21), 
	.B0(P_DATA[3]), 
	.A1(n18), 
	.A0(shift_reg[4]));
   OAI2B1X2M U30 (.Y(n39), 
	.B0(n24), 
	.A1N(shift_reg[4]), 
	.A0(n19));
   AOI22X1M U31 (.Y(n24), 
	.B1(n21), 
	.B0(P_DATA[4]), 
	.A1(n18), 
	.A0(shift_reg[5]));
   OAI2B1X2M U32 (.Y(n38), 
	.B0(n23), 
	.A1N(shift_reg[5]), 
	.A0(n19));
   AOI22X1M U33 (.Y(n23), 
	.B1(n21), 
	.B0(P_DATA[5]), 
	.A1(n18), 
	.A0(shift_reg[6]));
   OAI2B1X2M U34 (.Y(n37), 
	.B0(n22), 
	.A1N(shift_reg[6]), 
	.A0(n19));
   AOI22X1M U35 (.Y(n22), 
	.B1(n21), 
	.B0(P_DATA[6]), 
	.A1(n18), 
	.A0(shift_reg[7]));
   NOR3BX2M U36 (.Y(N33), 
	.C(n29), 
	.B(n28), 
	.AN(counter[3]));
   CLKXOR2X2M U37 (.Y(n32), 
	.B(counter[1]), 
	.A(n17));
   CLKXOR2X2M U38 (.Y(n29), 
	.B(n14), 
	.A(n32));
   INVX2M U39 (.Y(n17), 
	.A(counter[0]));
   AO2B2X2M U40 (.Y(n35), 
	.B1(shift_reg[0]), 
	.B0(n18), 
	.A1N(n18), 
	.A0(SER_DATA));
   AO2B2X2M U41 (.Y(n43), 
	.B1(n21), 
	.B0(P_DATA[7]), 
	.A1N(n21), 
	.A0(shift_reg[7]));
   OAI32X1M U42 (.Y(N27), 
	.B1(n14), 
	.B0(n34), 
	.A2(n17), 
	.A1(n44), 
	.A0(n33));
   NAND2X2M U43 (.Y(n33), 
	.B(n14), 
	.A(SER_EN));
   AOI21X2M U44 (.Y(n34), 
	.B0(N25), 
	.A1(n44), 
	.A0(SER_EN));
   OAI22X1M U45 (.Y(n28), 
	.B1(n14), 
	.B0(n32), 
	.A1(n17), 
	.A0(n44));
   NOR2X2M U46 (.Y(N25), 
	.B(counter[0]), 
	.A(n16));
   NOR2X2M U47 (.Y(N28), 
	.B(n16), 
	.A(n30));
   CLKXOR2X2M U48 (.Y(n30), 
	.B(counter[3]), 
	.A(n31));
   NAND2X2M U49 (.Y(n31), 
	.B(n28), 
	.A(n29));
   INVX2M U50 (.Y(n44), 
	.A(counter[1]));
   INVXLM U51 (.Y(n48), 
	.A(test_se));
   CLKINVX2M U52 (.Y(n49), 
	.A(n48));
endmodule

module UART_TX_FSM_test_1 (
	Data_Valid, 
	ser_done, 
	CLK, 
	RST, 
	PAR_EN, 
	ser_en, 
	mux_sel, 
	busy, 
	test_si, 
	test_so, 
	test_se);
   input Data_Valid;
   input ser_done;
   input CLK;
   input RST;
   input PAR_EN;
   output ser_en;
   output [1:0] mux_sel;
   output busy;
   input test_si;
   output test_so;
   input test_se;

   // Internal wires
   wire n9;
   wire n10;
   wire n11;
   wire n12;
   wire n13;
   wire n4;
   wire n5;
   wire n6;
   wire n7;
   wire n8;
   wire [2:0] cs;
   wire [2:0] ns;

   assign test_so = cs[2] ;

   SDFFRQX2M \cs_reg[2]  (.SI(cs[1]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(cs[2]), 
	.D(ns[2]), 
	.CK(CLK));
   SDFFRQX2M \cs_reg[0]  (.SI(test_si), 
	.SE(test_se), 
	.RN(RST), 
	.Q(cs[0]), 
	.D(ns[0]), 
	.CK(CLK));
   SDFFRQX2M \cs_reg[1]  (.SI(n4), 
	.SE(test_se), 
	.RN(RST), 
	.Q(cs[1]), 
	.D(ns[1]), 
	.CK(CLK));
   OAI21X2M U6 (.Y(mux_sel[1]), 
	.B0(n9), 
	.A1(n10), 
	.A0(cs[2]));
   NAND3X2M U7 (.Y(busy), 
	.C(n5), 
	.B(n6), 
	.A(n10));
   INVX2M U8 (.Y(n5), 
	.A(n13));
   NAND2X2M U9 (.Y(mux_sel[0]), 
	.B(n6), 
	.A(n13));
   OAI32X1M U10 (.Y(ns[2]), 
	.B1(n10), 
	.B0(cs[2]), 
	.A2(n9), 
	.A1(PAR_EN), 
	.A0(n7));
   OAI31X1M U11 (.Y(ns[0]), 
	.B0(n12), 
	.A2(n7), 
	.A1(n9), 
	.A0(n8));
   INVX2M U12 (.Y(n8), 
	.A(PAR_EN));
   NAND4BX1M U13 (.Y(n12), 
	.D(n6), 
	.C(n4), 
	.B(Data_Valid), 
	.AN(cs[1]));
   NOR2X2M U14 (.Y(ser_en), 
	.B(n5), 
	.A(cs[2]));
   INVX2M U15 (.Y(n7), 
	.A(ser_done));
   CLKXOR2X2M U16 (.Y(n13), 
	.B(cs[1]), 
	.A(cs[0]));
   OAI32X1M U17 (.Y(ns[1]), 
	.B1(n9), 
	.B0(n11), 
	.A2(cs[1]), 
	.A1(cs[2]), 
	.A0(n4));
   NOR2X2M U18 (.Y(n11), 
	.B(n7), 
	.A(PAR_EN));
   NAND3X2M U19 (.Y(n9), 
	.C(cs[1]), 
	.B(n6), 
	.A(n4));
   NAND2X2M U20 (.Y(n10), 
	.B(cs[1]), 
	.A(cs[0]));
   INVX2M U21 (.Y(n6), 
	.A(cs[2]));
   INVX2M U22 (.Y(n4), 
	.A(cs[0]));
endmodule

module MUX_4x1 (
	in0, 
	in1, 
	in2, 
	in3, 
	sel, 
	out);
   input in0;
   input in1;
   input in2;
   input in3;
   input [1:0] sel;
   output out;

   // Internal wires
   wire HTIE_LTIEHI_NET;
   wire LTIE_LTIELO_NET;
   wire n2;
   wire n3;
   wire n1;
   wire n4;
   wire n5;
   wire n6;
   wire n7;

   TIEHIM HTIE_LTIEHI (.Y(HTIE_LTIEHI_NET));
   TIELOM LTIE_LTIELO (.Y(LTIE_LTIELO_NET));
   CLKINVX12M U1 (.Y(out), 
	.A(n1));
   CLKINVX1M U2 (.Y(n4), 
	.A(sel[1]));
   NOR2X1M U3 (.Y(n5), 
	.B(n3), 
	.A(sel[1]));
   NOR2X1M U4 (.Y(n6), 
	.B(n4), 
	.A(n2));
   NOR2XLM U5 (.Y(n1), 
	.B(n6), 
	.A(n5));
   AOI22X1M U6 (.Y(n3), 
	.B1(HTIE_LTIEHI_NET), 
	.B0(sel[0]), 
	.A1(n7), 
	.A0(LTIE_LTIELO_NET));
   AOI22X1M U7 (.Y(n2), 
	.B1(sel[0]), 
	.B0(in3), 
	.A1(n7), 
	.A0(in2));
   INVX2M U8 (.Y(n7), 
	.A(sel[0]));
endmodule

module UART_TX_test_1 (
	P_DATA, 
	DATA_VALID, 
	PAR_EN, 
	PAR_TYPE, 
	CLK, 
	RST, 
	TX_OUT, 
	BUSY, 
	test_si, 
	test_so, 
	test_se, 
	FE_OFN3_SYNC_RST_1_M, 
	TX_CLK_M__L3_N1);
   input [7:0] P_DATA;
   input DATA_VALID;
   input PAR_EN;
   input PAR_TYPE;
   input CLK;
   input RST;
   output TX_OUT;
   output BUSY;
   input test_si;
   output test_so;
   input test_se;
   input FE_OFN3_SYNC_RST_1_M;
   input TX_CLK_M__L3_N1;

   // Internal wires
   wire PAR_BIT;
   wire SER_EN;
   wire SER_DONE;
   wire SER_DATA;
   wire n4;
   wire [1:0] MUX_SEL;

   Parity_Calc_test_1 PAR_calc (.p_data({ P_DATA[7],
		P_DATA[6],
		P_DATA[5],
		P_DATA[4],
		P_DATA[3],
		P_DATA[2],
		P_DATA[1],
		P_DATA[0] }), 
	.Data_Valid(DATA_VALID), 
	.PAR_EN(PAR_EN), 
	.Busy(BUSY), 
	.CLK(CLK), 
	.RST(RST), 
	.Par_Type(PAR_TYPE), 
	.Par_Bit(PAR_BIT), 
	.test_si(test_si), 
	.test_se(test_se), 
	.TX_CLK_M__L3_N1(TX_CLK_M__L3_N1));
   serializer_test_1 Serializer (.P_DATA({ P_DATA[7],
		P_DATA[6],
		P_DATA[5],
		P_DATA[4],
		P_DATA[3],
		P_DATA[2],
		P_DATA[1],
		P_DATA[0] }), 
	.DATA_VALID(DATA_VALID), 
	.CLK(TX_CLK_M__L3_N1), 
	.RST(RST), 
	.busy(BUSY), 
	.SER_EN(SER_EN), 
	.SER_DONE(SER_DONE), 
	.SER_DATA(SER_DATA), 
	.test_si(PAR_BIT), 
	.test_so(n4), 
	.test_se(test_se), 
	.FE_OFN3_SYNC_RST_1_M(FE_OFN3_SYNC_RST_1_M));
   UART_TX_FSM_test_1 fsm (.Data_Valid(DATA_VALID), 
	.ser_done(SER_DONE), 
	.CLK(TX_CLK_M__L3_N1), 
	.RST(FE_OFN3_SYNC_RST_1_M), 
	.PAR_EN(PAR_EN), 
	.ser_en(SER_EN), 
	.mux_sel({ MUX_SEL[1],
		MUX_SEL[0] }), 
	.busy(BUSY), 
	.test_si(n4), 
	.test_so(test_so), 
	.test_se(test_se));
   MUX_4x1 MUX (.in0(1'b0), 
	.in1(1'b1), 
	.in2(SER_DATA), 
	.in3(PAR_BIT), 
	.sel({ MUX_SEL[1],
		MUX_SEL[0] }), 
	.out(TX_OUT));
endmodule

module UART_RX_FSM_test_1 (
	CLK, 
	RST, 
	RX_IN, 
	PAR_EN, 
	bit_count, 
	edge_count, 
	Prescale, 
	sampling_done, 
	par_err, 
	strt_glitch, 
	stp_err, 
	deser_en, 
	par_chk_en, 
	strt_chk_en, 
	stp_chk_en, 
	edge_bit_en, 
	dat_sam_en, 
	data_valid, 
	test_si, 
	test_so, 
	test_se, 
	FE_OFN3_SYNC_RST_1_M);
   input CLK;
   input RST;
   input RX_IN;
   input PAR_EN;
   input [3:0] bit_count;
   input [5:0] edge_count;
   input [5:0] Prescale;
   input sampling_done;
   input par_err;
   input strt_glitch;
   input stp_err;
   output deser_en;
   output par_chk_en;
   output strt_chk_en;
   output stp_chk_en;
   output edge_bit_en;
   output dat_sam_en;
   output data_valid;
   input test_si;
   output test_so;
   input test_se;
   input FE_OFN3_SYNC_RST_1_M;

   // Internal wires
   wire N34;
   wire N35;
   wire N36;
   wire N37;
   wire N38;
   wire N39;
   wire N40;
   wire N41;
   wire n23;
   wire n24;
   wire n25;
   wire n26;
   wire n27;
   wire n28;
   wire n29;
   wire n30;
   wire n31;
   wire n32;
   wire n33;
   wire n34;
   wire n35;
   wire n36;
   wire n37;
   wire n38;
   wire n39;
   wire n40;
   wire n41;
   wire n42;
   wire n43;
   wire n44;
   wire n1;
   wire n2;
   wire n3;
   wire n4;
   wire n5;
   wire n6;
   wire n7;
   wire n8;
   wire n9;
   wire n10;
   wire n11;
   wire n12;
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire n20;
   wire n21;
   wire n22;
   wire n45;
   wire [2:0] cs;
   wire [2:0] ns;

   assign test_so = n45 ;

   SDFFRQX2M \cs_reg[2]  (.SI(cs[1]), 
	.SE(test_se), 
	.RN(FE_OFN3_SYNC_RST_1_M), 
	.Q(cs[2]), 
	.D(ns[2]), 
	.CK(CLK));
   SDFFRQX2M \cs_reg[1]  (.SI(cs[0]), 
	.SE(test_se), 
	.RN(FE_OFN3_SYNC_RST_1_M), 
	.Q(cs[1]), 
	.D(ns[1]), 
	.CK(CLK));
   SDFFRQX2M \cs_reg[0]  (.SI(test_si), 
	.SE(test_se), 
	.RN(RST), 
	.Q(cs[0]), 
	.D(ns[0]), 
	.CK(CLK));
   NOR3X2M U4 (.Y(par_chk_en), 
	.C(n21), 
	.B(n18), 
	.A(n26));
   NOR2X2M U5 (.Y(stp_chk_en), 
	.B(n25), 
	.A(n21));
   NAND3BX2M U8 (.Y(edge_bit_en), 
	.C(n40), 
	.B(n25), 
	.AN(n34));
   NOR4XLM U9 (.Y(data_valid), 
	.D(n42), 
	.C(n41), 
	.B(par_err), 
	.A(stp_err));
   OAI221X1M U10 (.Y(ns[1]), 
	.C0(n17), 
	.B1(n27), 
	.B0(n30), 
	.A1(n20), 
	.A0(n24));
   INVX2M U11 (.Y(n20), 
	.A(n23));
   INVX2M U12 (.Y(n17), 
	.A(n36));
   OAI32X1M U13 (.Y(n36), 
	.B1(n38), 
	.B0(n27), 
	.A2(n37), 
	.A1(n18), 
	.A0(n26));
   NOR2BXLM U14 (.Y(n37), 
	.B(n21), 
	.AN(par_err));
   NAND2X2M U15 (.Y(n25), 
	.B(n22), 
	.A(n41));
   INVX2M U16 (.Y(n18), 
	.A(n28));
   NOR3X2M U17 (.Y(strt_chk_en), 
	.C(n24), 
	.B(n23), 
	.A(n21));
   INVX2M U18 (.Y(n22), 
	.A(n42));
   NAND2X2M U19 (.Y(dat_sam_en), 
	.B(n42), 
	.A(n40));
   NOR3BX2M U20 (.Y(n23), 
	.C(bit_count[3]), 
	.B(bit_count[1]), 
	.AN(n39));
   NOR3BX2M U21 (.Y(n30), 
	.C(bit_count[1]), 
	.B(PAR_EN), 
	.AN(n43));
   NOR3BX2M U22 (.Y(n39), 
	.C(bit_count[2]), 
	.B(bit_count[0]), 
	.AN(N41));
   OAI221X1M U23 (.Y(ns[2]), 
	.C0(n29), 
	.B1(n26), 
	.B0(n28), 
	.A1(n19), 
	.A0(n27));
   INVX2M U24 (.Y(n19), 
	.A(n30));
   AO21XLM U25 (.Y(n29), 
	.B0(n25), 
	.A1(stp_err), 
	.A0(sampling_done));
   NAND4X2M U26 (.Y(n28), 
	.D(N41), 
	.C(n44), 
	.B(bit_count[0]), 
	.A(bit_count[3]));
   NOR2X2M U27 (.Y(n44), 
	.B(bit_count[1]), 
	.A(bit_count[2]));
   OAI211X2M U28 (.Y(ns[0]), 
	.C0(n32), 
	.B0(n17), 
	.A1(n31), 
	.A0(n24));
   AOI21X2M U29 (.Y(n32), 
	.B0(n34), 
	.A1(n33), 
	.A0(n22));
   OAI2BB1X2M U30 (.Y(n31), 
	.B0(n20), 
	.A1N(sampling_done), 
	.A0N(strt_glitch));
   OAI32X1M U31 (.Y(n33), 
	.B1(n35), 
	.B0(RX_IN), 
	.A2(PAR_EN), 
	.A1(RX_IN), 
	.A0(n28));
   OA21X2M U32 (.Y(n41), 
	.B0(n35), 
	.A1(n28), 
	.A0(PAR_EN));
   NAND3BX2M U33 (.Y(n38), 
	.C(PAR_EN), 
	.B(n43), 
	.AN(bit_count[1]));
   OR2X2M U34 (.Y(n1), 
	.B(Prescale[0]), 
	.A(Prescale[1]));
   NAND3X2M U35 (.Y(n35), 
	.C(bit_count[1]), 
	.B(n43), 
	.A(PAR_EN));
   AND2X2M U36 (.Y(n43), 
	.B(n39), 
	.A(bit_count[3]));
   NOR4BX1M U37 (.Y(deser_en), 
	.D(n27), 
	.C(n21), 
	.B(n30), 
	.AN(n38));
   NOR2X2M U38 (.Y(n40), 
	.B(cs[0]), 
	.A(cs[1]));
   NAND2X2M U39 (.Y(n42), 
	.B(n40), 
	.A(cs[2]));
   NAND3X2M U40 (.Y(n26), 
	.C(cs[1]), 
	.B(n45), 
	.A(cs[0]));
   INVX2M U41 (.Y(n21), 
	.A(sampling_done));
   INVX2M U42 (.Y(n45), 
	.A(cs[2]));
   NOR3BX2M U43 (.Y(n34), 
	.C(cs[2]), 
	.B(RX_IN), 
	.AN(n40));
   NAND3BX2M U44 (.Y(n27), 
	.C(cs[1]), 
	.B(n45), 
	.AN(cs[0]));
   NAND3BX2M U45 (.Y(n24), 
	.C(cs[0]), 
	.B(n45), 
	.AN(cs[1]));
   CLKINVX1M U46 (.Y(N34), 
	.A(Prescale[0]));
   OAI2BB1X1M U47 (.Y(N35), 
	.B0(n1), 
	.A1N(Prescale[1]), 
	.A0N(Prescale[0]));
   OR2X1M U48 (.Y(n2), 
	.B(Prescale[2]), 
	.A(n1));
   OAI2BB1X1M U49 (.Y(N36), 
	.B0(n2), 
	.A1N(Prescale[2]), 
	.A0N(n1));
   OR2X1M U50 (.Y(n3), 
	.B(Prescale[3]), 
	.A(n2));
   OAI2BB1X1M U51 (.Y(N37), 
	.B0(n3), 
	.A1N(Prescale[3]), 
	.A0N(n2));
   OR2X1M U52 (.Y(n4), 
	.B(Prescale[4]), 
	.A(n3));
   OAI2BB1X1M U53 (.Y(N38), 
	.B0(n4), 
	.A1N(Prescale[4]), 
	.A0N(n3));
   NOR2X1M U54 (.Y(N40), 
	.B(Prescale[5]), 
	.A(n4));
   AO21XLM U55 (.Y(N39), 
	.B0(N40), 
	.A1(Prescale[5]), 
	.A0(n4));
   NOR2BX1M U56 (.Y(n5), 
	.B(edge_count[0]), 
	.AN(N34));
   OAI2B2X1M U57 (.Y(n9), 
	.B1(n5), 
	.B0(N35), 
	.A1N(edge_count[1]), 
	.A0(n5));
   XNOR2X1M U58 (.Y(n8), 
	.B(edge_count[5]), 
	.A(N39));
   NOR2BX1M U59 (.Y(n6), 
	.B(N34), 
	.AN(edge_count[0]));
   OAI2B2X1M U60 (.Y(n7), 
	.B1(n6), 
	.B0(edge_count[1]), 
	.A1N(N35), 
	.A0(n6));
   NAND4BX1M U61 (.Y(n16), 
	.D(n7), 
	.C(n8), 
	.B(n9), 
	.AN(N40));
   CLKXOR2X2M U62 (.Y(n12), 
	.B(edge_count[4]), 
	.A(N38));
   CLKXOR2X2M U63 (.Y(n11), 
	.B(edge_count[2]), 
	.A(N36));
   CLKXOR2X2M U64 (.Y(n10), 
	.B(edge_count[3]), 
	.A(N37));
   NOR4X1M U65 (.Y(N41), 
	.D(n10), 
	.C(n11), 
	.B(n12), 
	.A(n16));
endmodule

module data_sampling_test_1 (
	CLK, 
	RST, 
	RX_IN, 
	dat_sam_en, 
	prescale, 
	edge_count, 
	sampled_bit, 
	sampling_done, 
	test_si, 
	test_se);
   input CLK;
   input RST;
   input RX_IN;
   input dat_sam_en;
   input [5:0] prescale;
   input [5:0] edge_count;
   output sampled_bit;
   output sampling_done;
   input test_si;
   input test_se;

   // Internal wires
   wire N2;
   wire N4;
   wire N5;
   wire N6;
   wire N10;
   wire N11;
   wire N12;
   wire N13;
   wire N14;
   wire N15;
   wire n21;
   wire n22;
   wire n23;
   wire \sub_26/carry[4] ;
   wire \sub_26/carry[3] ;
   wire n1;
   wire n2;
   wire n3;
   wire n4;
   wire n5;
   wire n6;
   wire n7;
   wire n8;
   wire n9;
   wire n10;
   wire n15;
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire n20;
   wire n24;
   wire n25;
   wire n26;
   wire n27;
   wire n28;
   wire n29;
   wire n30;
   wire n31;
   wire n32;
   wire n33;
   wire n34;
   wire n35;
   wire n36;
   wire n37;
   wire n38;
   wire n39;
   wire n40;
   wire n41;
   wire n42;
   wire n43;
   wire [2:0] sampled_bits;

   assign N2 = prescale[1] ;

   SDFFRQX2M \sampled_bits_reg[2]  (.SI(n6), 
	.SE(test_se), 
	.RN(RST), 
	.Q(sampled_bits[2]), 
	.D(n23), 
	.CK(CLK));
   SDFFRQX2M sampling_done_reg (.SI(sampled_bits[2]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(sampling_done), 
	.D(n43), 
	.CK(CLK));
   SDFFRQX2M \sampled_bits_reg[1]  (.SI(n5), 
	.SE(test_se), 
	.RN(RST), 
	.Q(sampled_bits[1]), 
	.D(n22), 
	.CK(CLK));
   SDFFRQX2M \sampled_bits_reg[0]  (.SI(test_si), 
	.SE(test_se), 
	.RN(RST), 
	.Q(sampled_bits[0]), 
	.D(n21), 
	.CK(CLK));
   NOR2X2M U4 (.Y(n1), 
	.B(\sub_26/carry[4] ), 
	.A(prescale[5]));
   OR2X2M U5 (.Y(n2), 
	.B(N2), 
	.A(prescale[2]));
   XNOR2X2M U6 (.Y(n41), 
	.B(prescale[2]), 
	.A(edge_count[1]));
   XNOR2X1M U7 (.Y(N6), 
	.B(prescale[5]), 
	.A(\sub_26/carry[4] ));
   OR2X1M U8 (.Y(\sub_26/carry[4] ), 
	.B(\sub_26/carry[3] ), 
	.A(prescale[4]));
   XNOR2X1M U12 (.Y(N5), 
	.B(prescale[4]), 
	.A(\sub_26/carry[3] ));
   OR2X1M U13 (.Y(\sub_26/carry[3] ), 
	.B(prescale[2]), 
	.A(prescale[3]));
   XNOR2X1M U14 (.Y(N4), 
	.B(prescale[3]), 
	.A(prescale[2]));
   CLKINVX1M U15 (.Y(N10), 
	.A(N2));
   OAI2BB1X1M U16 (.Y(N11), 
	.B0(n2), 
	.A1N(prescale[2]), 
	.A0N(N2));
   OR2X1M U17 (.Y(n3), 
	.B(prescale[3]), 
	.A(n2));
   OAI2BB1X1M U18 (.Y(N12), 
	.B0(n3), 
	.A1N(prescale[3]), 
	.A0N(n2));
   XNOR2X1M U19 (.Y(N13), 
	.B(n3), 
	.A(prescale[4]));
   NOR3X1M U20 (.Y(N15), 
	.C(n3), 
	.B(prescale[5]), 
	.A(prescale[4]));
   OAI21X1M U21 (.Y(n4), 
	.B0(prescale[5]), 
	.A1(n3), 
	.A0(prescale[4]));
   NAND2BX1M U22 (.Y(N14), 
	.B(n4), 
	.AN(N15));
   OAI21X1M U23 (.Y(sampled_bit), 
	.B0(n7), 
	.A1(n6), 
	.A0(n5));
   OAI21X1M U24 (.Y(n7), 
	.B0(sampled_bits[2]), 
	.A1(sampled_bits[1]), 
	.A0(sampled_bits[0]));
   CLKMX2X2M U25 (.Y(n23), 
	.S0(n43), 
	.B(RX_IN), 
	.A(sampled_bits[2]));
   AND4X1M U26 (.Y(n43), 
	.D(n10), 
	.C(n9), 
	.B(dat_sam_en), 
	.A(n8));
   NOR4X1M U27 (.Y(n10), 
	.D(n18), 
	.C(n17), 
	.B(n16), 
	.A(n15));
   XNOR2X1M U28 (.Y(n18), 
	.B(n19), 
	.A(prescale[5]));
   CLKXOR2X2M U29 (.Y(n17), 
	.B(edge_count[3]), 
	.A(prescale[4]));
   CLKXOR2X2M U30 (.Y(n16), 
	.B(edge_count[2]), 
	.A(prescale[3]));
   CLKXOR2X2M U31 (.Y(n15), 
	.B(edge_count[1]), 
	.A(prescale[2]));
   NOR3X1M U32 (.Y(n9), 
	.C(n24), 
	.B(edge_count[5]), 
	.A(n20));
   NOR4X1M U33 (.Y(n20), 
	.D(n28), 
	.C(n27), 
	.B(n26), 
	.A(n25));
   XNOR2X1M U34 (.Y(n8), 
	.B(N2), 
	.A(edge_count[0]));
   MXI2X1M U35 (.Y(n22), 
	.S0(n30), 
	.B(n29), 
	.A(n6));
   NOR4X1M U36 (.Y(n30), 
	.D(n32), 
	.C(n24), 
	.B(n25), 
	.A(n31));
   XNOR2X1M U37 (.Y(n25), 
	.B(N14), 
	.A(n19));
   CLKINVX1M U38 (.Y(n19), 
	.A(edge_count[4]));
   OR3X1M U39 (.Y(n31), 
	.C(n27), 
	.B(n26), 
	.A(n28));
   NAND3X1M U40 (.Y(n27), 
	.C(n35), 
	.B(n34), 
	.A(n33));
   XNOR2X1M U41 (.Y(n35), 
	.B(N11), 
	.A(edge_count[1]));
   XNOR2X1M U42 (.Y(n34), 
	.B(N15), 
	.A(edge_count[5]));
   XNOR2X1M U43 (.Y(n33), 
	.B(N10), 
	.A(edge_count[0]));
   CLKXOR2X2M U44 (.Y(n26), 
	.B(N13), 
	.A(edge_count[3]));
   CLKXOR2X2M U45 (.Y(n28), 
	.B(N12), 
	.A(edge_count[2]));
   CLKINVX1M U46 (.Y(n6), 
	.A(sampled_bits[1]));
   MXI2X1M U47 (.Y(n21), 
	.S0(n24), 
	.B(n29), 
	.A(n5));
   AND4X1M U48 (.Y(n24), 
	.D(n39), 
	.C(n38), 
	.B(n37), 
	.A(n36));
   NOR4X1M U49 (.Y(n39), 
	.D(n42), 
	.C(n41), 
	.B(n40), 
	.A(n32));
   CLKXOR2X2M U50 (.Y(n42), 
	.B(N4), 
	.A(edge_count[2]));
   CLKXOR2X2M U51 (.Y(n40), 
	.B(N2), 
	.A(edge_count[0]));
   CLKINVX1M U52 (.Y(n32), 
	.A(dat_sam_en));
   XNOR2X1M U53 (.Y(n38), 
	.B(N6), 
	.A(edge_count[4]));
   XNOR2X1M U54 (.Y(n37), 
	.B(n1), 
	.A(edge_count[5]));
   XNOR2X1M U55 (.Y(n36), 
	.B(N5), 
	.A(edge_count[3]));
   CLKINVX1M U56 (.Y(n29), 
	.A(RX_IN));
   CLKINVX1M U57 (.Y(n5), 
	.A(sampled_bits[0]));
endmodule

module edge_bit_counter_test_1 (
	CLK, 
	RST, 
	enable, 
	PAR_EN, 
	prescale, 
	bit_count, 
	edge_count, 
	test_si, 
	test_se);
   input CLK;
   input RST;
   input enable;
   input PAR_EN;
   input [5:0] prescale;
   output [3:0] bit_count;
   output [5:0] edge_count;
   input test_si;
   input test_se;

   // Internal wires
   wire N6;
   wire N7;
   wire N8;
   wire N9;
   wire N10;
   wire N11;
   wire N12;
   wire edge_done;
   wire N25;
   wire N26;
   wire N27;
   wire N28;
   wire n23;
   wire n24;
   wire n25;
   wire n26;
   wire n27;
   wire n28;
   wire n29;
   wire n30;
   wire n31;
   wire n32;
   wire n33;
   wire n34;
   wire n35;
   wire n36;
   wire n37;
   wire n38;
   wire n39;
   wire n40;
   wire n41;
   wire n42;
   wire n43;
   wire n44;
   wire n45;
   wire \add_26/carry[5] ;
   wire \add_26/carry[4] ;
   wire \add_26/carry[3] ;
   wire \add_26/carry[2] ;
   wire n1;
   wire n2;
   wire n3;
   wire n4;
   wire n15;
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire n20;
   wire n21;
   wire n22;
   wire n46;
   wire n47;
   wire n48;
   wire n49;
   wire n50;
   wire n51;
   wire n52;
   wire n53;
   wire n54;
   wire n55;
   wire n58;
   wire n59;

   SDFFRQX2M \edge_count_reg[5]  (.SI(edge_count[4]), 
	.SE(n59), 
	.RN(RST), 
	.Q(edge_count[5]), 
	.D(n43), 
	.CK(CLK));
   SDFFRQX2M \edge_count_reg[0]  (.SI(n54), 
	.SE(n59), 
	.RN(RST), 
	.Q(edge_count[0]), 
	.D(n42), 
	.CK(CLK));
   SDFFRQX2M \edge_count_reg[4]  (.SI(edge_count[3]), 
	.SE(n59), 
	.RN(RST), 
	.Q(edge_count[4]), 
	.D(n38), 
	.CK(CLK));
   SDFFRQX2M \edge_count_reg[3]  (.SI(edge_count[2]), 
	.SE(n59), 
	.RN(RST), 
	.Q(edge_count[3]), 
	.D(n39), 
	.CK(CLK));
   SDFFRQX2M \edge_count_reg[2]  (.SI(edge_count[1]), 
	.SE(n59), 
	.RN(RST), 
	.Q(edge_count[2]), 
	.D(n40), 
	.CK(CLK));
   SDFFRQX2M \edge_count_reg[1]  (.SI(edge_count[0]), 
	.SE(n59), 
	.RN(RST), 
	.Q(edge_count[1]), 
	.D(n41), 
	.CK(CLK));
   SDFFRQX2M \bit_count_reg[2]  (.SI(n53), 
	.SE(n59), 
	.RN(RST), 
	.Q(bit_count[2]), 
	.D(n36), 
	.CK(CLK));
   SDFFRQX2M \bit_count_reg[1]  (.SI(n52), 
	.SE(n59), 
	.RN(RST), 
	.Q(bit_count[1]), 
	.D(n37), 
	.CK(CLK));
   SDFFRQX2M \bit_count_reg[3]  (.SI(n55), 
	.SE(n59), 
	.RN(RST), 
	.Q(bit_count[3]), 
	.D(n44), 
	.CK(CLK));
   SDFFRQX2M \bit_count_reg[0]  (.SI(test_si), 
	.SE(n59), 
	.RN(RST), 
	.Q(bit_count[0]), 
	.D(n45), 
	.CK(CLK));
   NAND2X2M U6 (.Y(n30), 
	.B(n48), 
	.A(enable));
   INVX2M U7 (.Y(n50), 
	.A(enable));
   INVX2M U15 (.Y(n49), 
	.A(PAR_EN));
   INVX2M U16 (.Y(n51), 
	.A(n25));
   INVX2M U17 (.Y(n48), 
	.A(edge_done));
   NOR2X2M U18 (.Y(n29), 
	.B(edge_done), 
	.A(n50));
   NOR2BX2M U19 (.Y(n41), 
	.B(n30), 
	.AN(N25));
   NOR2BX2M U20 (.Y(n40), 
	.B(n30), 
	.AN(N26));
   NOR2BX2M U21 (.Y(n39), 
	.B(n30), 
	.AN(N27));
   NOR2BX2M U22 (.Y(n38), 
	.B(n30), 
	.AN(N28));
   NOR2X2M U23 (.Y(n25), 
	.B(n52), 
	.A(n53));
   NAND3XLM U24 (.Y(n27), 
	.C(enable), 
	.B(n34), 
	.A(edge_done));
   NAND4X2M U25 (.Y(n34), 
	.D(bit_count[3]), 
	.C(n35), 
	.B(bit_count[2]), 
	.A(PAR_EN));
   NOR2X2M U26 (.Y(n35), 
	.B(bit_count[0]), 
	.A(bit_count[1]));
   OAI32X1M U27 (.Y(n37), 
	.B1(n53), 
	.B0(n28), 
	.A2(n52), 
	.A1(bit_count[1]), 
	.A0(n27));
   AOI2BB1X2M U28 (.Y(n28), 
	.B0(n29), 
	.A1N(bit_count[0]), 
	.A0N(n27));
   OAI22X1M U29 (.Y(n36), 
	.B1(n50), 
	.B0(n24), 
	.A1(n55), 
	.A0(n23));
   AOI33XLM U30 (.Y(n24), 
	.B2(bit_count[2]), 
	.B1(n54), 
	.B0(n51), 
	.A2(n26), 
	.A1(n25), 
	.A0(edge_done));
   AOI21X2M U31 (.Y(n26), 
	.B0(bit_count[2]), 
	.A1(n49), 
	.A0(bit_count[3]));
   OAI22X1M U32 (.Y(n44), 
	.B1(n50), 
	.B0(n31), 
	.A1(n54), 
	.A0(n23));
   AOI31X2M U33 (.Y(n31), 
	.B0(n32), 
	.A2(PAR_EN), 
	.A1(n55), 
	.A0(bit_count[3]));
   NOR4X1M U34 (.Y(n32), 
	.D(n55), 
	.C(n48), 
	.B(n51), 
	.A(bit_count[3]));
   OAI2BB2X1M U35 (.Y(n45), 
	.B1(n27), 
	.B0(bit_count[0]), 
	.A1N(n29), 
	.A0N(bit_count[0]));
   OR2X2M U36 (.Y(n2), 
	.B(prescale[0]), 
	.A(prescale[1]));
   NOR2X2M U37 (.Y(n43), 
	.B(n30), 
	.A(n1));
   XNOR2X2M U38 (.Y(n1), 
	.B(edge_count[5]), 
	.A(\add_26/carry[5] ));
   NOR2X2M U39 (.Y(n42), 
	.B(n30), 
	.A(edge_count[0]));
   OA21X2M U40 (.Y(n23), 
	.B0(n30), 
	.A1(n33), 
	.A0(n50));
   OAI31X1M U41 (.Y(n33), 
	.B0(n51), 
	.A2(bit_count[0]), 
	.A1(bit_count[1]), 
	.A0(n49));
   INVX2M U42 (.Y(n52), 
	.A(bit_count[0]));
   INVX2M U43 (.Y(n55), 
	.A(bit_count[2]));
   INVX2M U44 (.Y(n53), 
	.A(bit_count[1]));
   INVX2M U45 (.Y(n54), 
	.A(bit_count[3]));
   ADDHX1M U46 (.S(N25), 
	.CO(\add_26/carry[2] ), 
	.B(edge_count[0]), 
	.A(edge_count[1]));
   ADDHX1M U47 (.S(N26), 
	.CO(\add_26/carry[3] ), 
	.B(\add_26/carry[2] ), 
	.A(edge_count[2]));
   ADDHX1M U48 (.S(N27), 
	.CO(\add_26/carry[4] ), 
	.B(\add_26/carry[3] ), 
	.A(edge_count[3]));
   ADDHX1M U49 (.S(N28), 
	.CO(\add_26/carry[5] ), 
	.B(\add_26/carry[4] ), 
	.A(edge_count[4]));
   CLKINVX1M U50 (.Y(N6), 
	.A(prescale[0]));
   OAI2BB1X1M U51 (.Y(N7), 
	.B0(n2), 
	.A1N(prescale[1]), 
	.A0N(prescale[0]));
   OR2X1M U52 (.Y(n3), 
	.B(prescale[2]), 
	.A(n2));
   OAI2BB1X1M U53 (.Y(N8), 
	.B0(n3), 
	.A1N(prescale[2]), 
	.A0N(n2));
   OR2X1M U54 (.Y(n4), 
	.B(prescale[3]), 
	.A(n3));
   OAI2BB1X1M U55 (.Y(N9), 
	.B0(n4), 
	.A1N(prescale[3]), 
	.A0N(n3));
   OR2X1M U56 (.Y(n15), 
	.B(prescale[4]), 
	.A(n4));
   OAI2BB1X1M U57 (.Y(N10), 
	.B0(n15), 
	.A1N(prescale[4]), 
	.A0N(n4));
   NOR2X1M U58 (.Y(N12), 
	.B(prescale[5]), 
	.A(n15));
   AO21XLM U59 (.Y(N11), 
	.B0(N12), 
	.A1(prescale[5]), 
	.A0(n15));
   NOR2BX1M U60 (.Y(n16), 
	.B(edge_count[0]), 
	.AN(N6));
   OAI2B2X1M U61 (.Y(n20), 
	.B1(n16), 
	.B0(N7), 
	.A1N(edge_count[1]), 
	.A0(n16));
   XNOR2X1M U62 (.Y(n19), 
	.B(edge_count[5]), 
	.A(N11));
   NOR2BX1M U63 (.Y(n17), 
	.B(N6), 
	.AN(edge_count[0]));
   OAI2B2X1M U64 (.Y(n18), 
	.B1(n17), 
	.B0(edge_count[1]), 
	.A1N(N7), 
	.A0(n17));
   NAND4BX1M U65 (.Y(n47), 
	.D(n18), 
	.C(n19), 
	.B(n20), 
	.AN(N12));
   CLKXOR2X2M U66 (.Y(n46), 
	.B(edge_count[4]), 
	.A(N10));
   CLKXOR2X2M U67 (.Y(n22), 
	.B(edge_count[2]), 
	.A(N8));
   CLKXOR2X2M U68 (.Y(n21), 
	.B(edge_count[3]), 
	.A(N9));
   NOR4X1M U69 (.Y(edge_done), 
	.D(n21), 
	.C(n22), 
	.B(n46), 
	.A(n47));
   INVXLM U70 (.Y(n58), 
	.A(test_se));
   CLKINVX2M U71 (.Y(n59), 
	.A(n58));
endmodule

module parity_check (
	P_DATA, 
	parity_bit, 
	PAR_TYP, 
	par_check_en, 
	par_err);
   input [7:0] P_DATA;
   input parity_bit;
   input PAR_TYP;
   input par_check_en;
   output par_err;

   // Internal wires
   wire n8;
   wire n1;
   wire n2;
   wire n3;
   wire n4;
   wire n5;
   wire n6;

   BUFX10M U2 (.Y(par_err), 
	.A(n8));
   NOR2BX2M U3 (.Y(n8), 
	.B(n1), 
	.AN(par_check_en));
   XOR3XLM U4 (.Y(n1), 
	.C(n4), 
	.B(n3), 
	.A(n2));
   XOR3XLM U5 (.Y(n3), 
	.C(n5), 
	.B(P_DATA[4]), 
	.A(P_DATA[5]));
   XOR3XLM U6 (.Y(n2), 
	.C(n6), 
	.B(P_DATA[0]), 
	.A(P_DATA[1]));
   XNOR2XLM U7 (.Y(n4), 
	.B(PAR_TYP), 
	.A(parity_bit));
   XNOR2X2M U8 (.Y(n6), 
	.B(P_DATA[2]), 
	.A(P_DATA[3]));
   XNOR2X2M U9 (.Y(n5), 
	.B(P_DATA[6]), 
	.A(P_DATA[7]));
endmodule

module start_check (
	start_bit, 
	start_check_en, 
	start_glitch);
   input start_bit;
   input start_check_en;
   output start_glitch;

   AND2X2M U1 (.Y(start_glitch), 
	.B(start_bit), 
	.A(start_check_en));
endmodule

module stop_check (
	stop_bit, 
	stop_check_en, 
	stop_err);
   input stop_bit;
   input stop_check_en;
   output stop_err;

   // Internal wires
   wire n2;

   BUFX10M U1 (.Y(stop_err), 
	.A(n2));
   NOR2BX2M U2 (.Y(n2), 
	.B(stop_bit), 
	.AN(stop_check_en));
endmodule

module desarilzer_test_1 (
	CLK, 
	RST, 
	deser_en, 
	sampled_bit, 
	bit_count, 
	P_DATA, 
	test_si, 
	test_se);
   input CLK;
   input RST;
   input deser_en;
   input sampled_bit;
   input [3:0] bit_count;
   output [7:0] P_DATA;
   input test_si;
   input test_se;

   // Internal wires
   wire N13;
   wire N14;
   wire N15;
   wire N16;
   wire N17;
   wire n14;
   wire n15;
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire n20;
   wire n21;
   wire n22;
   wire n23;
   wire n24;
   wire n25;
   wire n26;
   wire n27;
   wire n28;
   wire n29;
   wire n30;
   wire n31;
   wire n32;
   wire n33;
   wire n1;
   wire n2;
   wire n11;
   wire n12;

   SDFFRQX2M \P_DATA_reg[5]  (.SI(P_DATA[4]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(P_DATA[5]), 
	.D(n31), 
	.CK(CLK));
   SDFFRQX2M \P_DATA_reg[1]  (.SI(P_DATA[0]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(P_DATA[1]), 
	.D(n27), 
	.CK(CLK));
   SDFFRQX2M \P_DATA_reg[4]  (.SI(P_DATA[3]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(P_DATA[4]), 
	.D(n30), 
	.CK(CLK));
   SDFFRQX2M \P_DATA_reg[0]  (.SI(test_si), 
	.SE(test_se), 
	.RN(RST), 
	.Q(P_DATA[0]), 
	.D(n26), 
	.CK(CLK));
   SDFFRQX2M \P_DATA_reg[7]  (.SI(P_DATA[6]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(P_DATA[7]), 
	.D(n33), 
	.CK(CLK));
   SDFFRQX2M \P_DATA_reg[3]  (.SI(P_DATA[2]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(P_DATA[3]), 
	.D(n29), 
	.CK(CLK));
   SDFFRQX2M \P_DATA_reg[6]  (.SI(P_DATA[5]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(P_DATA[6]), 
	.D(n32), 
	.CK(CLK));
   SDFFRQX2M \P_DATA_reg[2]  (.SI(P_DATA[1]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(P_DATA[2]), 
	.D(n28), 
	.CK(CLK));
   NOR2BX2M U4 (.Y(n15), 
	.B(N15), 
	.AN(n19));
   AND2X2M U12 (.Y(n21), 
	.B(n19), 
	.A(N15));
   INVX2M U13 (.Y(n12), 
	.A(sampled_bit));
   INVX2M U14 (.Y(n11), 
	.A(N14));
   OAI2BB2X1M U15 (.Y(n29), 
	.B1(n18), 
	.B0(n12), 
	.A1N(n18), 
	.A0N(P_DATA[3]));
   NAND3X2M U16 (.Y(n18), 
	.C(N14), 
	.B(n15), 
	.A(N13));
   OAI2BB2X1M U17 (.Y(n31), 
	.B1(n22), 
	.B0(n12), 
	.A1N(n22), 
	.A0N(P_DATA[5]));
   NAND3X2M U18 (.Y(n22), 
	.C(n21), 
	.B(n11), 
	.A(N13));
   OAI2BB2X1M U19 (.Y(n27), 
	.B1(n16), 
	.B0(n12), 
	.A1N(n16), 
	.A0N(P_DATA[1]));
   NAND3X2M U20 (.Y(n16), 
	.C(N13), 
	.B(n11), 
	.A(n15));
   OAI2BB2X1M U21 (.Y(n28), 
	.B1(n17), 
	.B0(n12), 
	.A1N(n17), 
	.A0N(P_DATA[2]));
   NAND3X2M U22 (.Y(n17), 
	.C(N14), 
	.B(bit_count[0]), 
	.A(n15));
   OAI2BB2X1M U23 (.Y(n30), 
	.B1(n20), 
	.B0(n12), 
	.A1N(n20), 
	.A0N(P_DATA[4]));
   NAND3X2M U24 (.Y(n20), 
	.C(n21), 
	.B(n11), 
	.A(bit_count[0]));
   OAI2BB2X1M U25 (.Y(n32), 
	.B1(n23), 
	.B0(n12), 
	.A1N(n23), 
	.A0N(P_DATA[6]));
   NAND3X2M U26 (.Y(n23), 
	.C(n21), 
	.B(bit_count[0]), 
	.A(N14));
   OAI2BB2X1M U27 (.Y(n33), 
	.B1(n24), 
	.B0(n12), 
	.A1N(n24), 
	.A0N(P_DATA[7]));
   NAND3X2M U28 (.Y(n24), 
	.C(n21), 
	.B(N13), 
	.A(N14));
   OAI2BB2X1M U29 (.Y(n26), 
	.B1(n12), 
	.B0(n14), 
	.A1N(n14), 
	.A0N(P_DATA[0]));
   NAND3X2M U30 (.Y(n14), 
	.C(n15), 
	.B(n11), 
	.A(bit_count[0]));
   AND2X2M U31 (.Y(n19), 
	.B(deser_en), 
	.A(n25));
   NOR2X2M U32 (.Y(n25), 
	.B(N16), 
	.A(N17));
   OR2X2M U33 (.Y(n1), 
	.B(bit_count[0]), 
	.A(bit_count[1]));
   CLKINVX1M U34 (.Y(N13), 
	.A(bit_count[0]));
   OAI2BB1X1M U35 (.Y(N14), 
	.B0(n1), 
	.A1N(bit_count[1]), 
	.A0N(bit_count[0]));
   OR2X1M U36 (.Y(n2), 
	.B(bit_count[2]), 
	.A(n1));
   OAI2BB1X1M U37 (.Y(N15), 
	.B0(n2), 
	.A1N(bit_count[2]), 
	.A0N(n1));
   NOR2X1M U38 (.Y(N17), 
	.B(bit_count[3]), 
	.A(n2));
   AO21XLM U39 (.Y(N16), 
	.B0(N17), 
	.A1(bit_count[3]), 
	.A0(n2));
endmodule

module UART_RX_test_1 (
	RX_IN, 
	Prescale, 
	PAR_EN, 
	PAR_TYP, 
	CLK, 
	RST, 
	P_DATA, 
	Parity_Error, 
	Stop_Error, 
	Data_Valid, 
	test_si, 
	test_so, 
	test_se, 
	FE_OFN3_SYNC_RST_1_M);
   input RX_IN;
   input [5:0] Prescale;
   input PAR_EN;
   input PAR_TYP;
   input CLK;
   input RST;
   output [7:0] P_DATA;
   output Parity_Error;
   output Stop_Error;
   output Data_Valid;
   input test_si;
   output test_so;
   input test_se;
   input FE_OFN3_SYNC_RST_1_M;

   // Internal wires
   wire sampling_done;
   wire strt_glitch;
   wire deser_en;
   wire par_chk_en;
   wire strt_chk_en;
   wire stp_chk_en;
   wire edge_bit_en;
   wire dat_sam_en;
   wire sampled_bit;
   wire n3;
   wire [3:0] bit_count;
   wire [5:0] edge_count;

   assign test_so = edge_count[5] ;

   UART_RX_FSM_test_1 FSM_u0 (.CLK(CLK), 
	.RST(RST), 
	.RX_IN(RX_IN), 
	.PAR_EN(PAR_EN), 
	.bit_count({ bit_count[3],
		bit_count[2],
		bit_count[1],
		bit_count[0] }), 
	.edge_count({ edge_count[5],
		edge_count[4],
		edge_count[3],
		edge_count[2],
		edge_count[1],
		edge_count[0] }), 
	.Prescale({ Prescale[5],
		Prescale[4],
		Prescale[3],
		Prescale[2],
		Prescale[1],
		Prescale[0] }), 
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
	.data_valid(Data_Valid), 
	.test_si(test_si), 
	.test_so(n3), 
	.test_se(test_se), 
	.FE_OFN3_SYNC_RST_1_M(FE_OFN3_SYNC_RST_1_M));
   data_sampling_test_1 data_sampling_u0 (.CLK(CLK), 
	.RST(RST), 
	.RX_IN(RX_IN), 
	.dat_sam_en(dat_sam_en), 
	.prescale({ Prescale[5],
		Prescale[4],
		Prescale[3],
		Prescale[2],
		Prescale[1],
		Prescale[0] }), 
	.edge_count({ edge_count[5],
		edge_count[4],
		edge_count[3],
		edge_count[2],
		edge_count[1],
		edge_count[0] }), 
	.sampled_bit(sampled_bit), 
	.sampling_done(sampling_done), 
	.test_si(n3), 
	.test_se(test_se));
   edge_bit_counter_test_1 edge_bit_counter_u0 (.CLK(CLK), 
	.RST(FE_OFN3_SYNC_RST_1_M), 
	.enable(edge_bit_en), 
	.PAR_EN(par_chk_en), 
	.prescale({ Prescale[5],
		Prescale[4],
		Prescale[3],
		Prescale[2],
		Prescale[1],
		Prescale[0] }), 
	.bit_count({ bit_count[3],
		bit_count[2],
		bit_count[1],
		bit_count[0] }), 
	.edge_count({ edge_count[5],
		edge_count[4],
		edge_count[3],
		edge_count[2],
		edge_count[1],
		edge_count[0] }), 
	.test_si(P_DATA[7]), 
	.test_se(test_se));
   parity_check parity_check_u0 (.P_DATA({ P_DATA[7],
		P_DATA[6],
		P_DATA[5],
		P_DATA[4],
		P_DATA[3],
		P_DATA[2],
		P_DATA[1],
		P_DATA[0] }), 
	.parity_bit(sampled_bit), 
	.PAR_TYP(PAR_TYP), 
	.par_check_en(par_chk_en), 
	.par_err(Parity_Error));
   start_check start_check_u0 (.start_bit(sampled_bit), 
	.start_check_en(strt_chk_en), 
	.start_glitch(strt_glitch));
   stop_check stop_check_u0 (.stop_bit(sampled_bit), 
	.stop_check_en(stp_chk_en), 
	.stop_err(Stop_Error));
   desarilzer_test_1 desarilzer_u0 (.CLK(CLK), 
	.RST(RST), 
	.deser_en(deser_en), 
	.sampled_bit(sampled_bit), 
	.bit_count({ bit_count[3],
		bit_count[2],
		bit_count[1],
		bit_count[0] }), 
	.P_DATA({ P_DATA[7],
		P_DATA[6],
		P_DATA[5],
		P_DATA[4],
		P_DATA[3],
		P_DATA[2],
		P_DATA[1],
		P_DATA[0] }), 
	.test_si(sampling_done), 
	.test_se(test_se));
endmodule

module UART_test_1 (
	RST, 
	TX_CLK, 
	RX_CLK, 
	RX_IN_S, 
	RX_OUT_P, 
	RX_OUT_V, 
	TX_IN_P, 
	TX_IN_V, 
	TX_OUT_S, 
	TX_OUT_V, 
	Prescale, 
	parity_enable, 
	parity_type, 
	parity_error, 
	framing_error, 
	test_si, 
	test_so, 
	test_se, 
	TX_CLK_M__L3_N1);
   input RST;
   input TX_CLK;
   input RX_CLK;
   input RX_IN_S;
   output [7:0] RX_OUT_P;
   output RX_OUT_V;
   input [7:0] TX_IN_P;
   input TX_IN_V;
   output TX_OUT_S;
   output TX_OUT_V;
   input [5:0] Prescale;
   input parity_enable;
   input parity_type;
   output parity_error;
   output framing_error;
   input test_si;
   output test_so;
   input test_se;
   input TX_CLK_M__L3_N1;

   // Internal wires
   wire FE_OFN3_SYNC_RST_1_M;
   wire n4;

   BUFX4M FE_OFC3_SYNC_RST_1_M (.Y(FE_OFN3_SYNC_RST_1_M), 
	.A(RST));
   UART_TX_test_1 U0_UART_TX (.P_DATA({ TX_IN_P[7],
		TX_IN_P[6],
		TX_IN_P[5],
		TX_IN_P[4],
		TX_IN_P[3],
		TX_IN_P[2],
		TX_IN_P[1],
		TX_IN_P[0] }), 
	.DATA_VALID(TX_IN_V), 
	.PAR_EN(parity_enable), 
	.PAR_TYPE(parity_type), 
	.CLK(TX_CLK), 
	.RST(RST), 
	.TX_OUT(TX_OUT_S), 
	.BUSY(TX_OUT_V), 
	.test_si(n4), 
	.test_so(test_so), 
	.test_se(test_se), 
	.FE_OFN3_SYNC_RST_1_M(FE_OFN3_SYNC_RST_1_M), 
	.TX_CLK_M__L3_N1(TX_CLK_M__L3_N1));
   UART_RX_test_1 U0_UART_RX (.RX_IN(RX_IN_S), 
	.Prescale({ Prescale[5],
		Prescale[4],
		Prescale[3],
		Prescale[2],
		Prescale[1],
		Prescale[0] }), 
	.PAR_EN(parity_enable), 
	.PAR_TYP(parity_type), 
	.CLK(RX_CLK), 
	.RST(RST), 
	.P_DATA({ RX_OUT_P[7],
		RX_OUT_P[6],
		RX_OUT_P[5],
		RX_OUT_P[4],
		RX_OUT_P[3],
		RX_OUT_P[2],
		RX_OUT_P[1],
		RX_OUT_P[0] }), 
	.Parity_Error(parity_error), 
	.Stop_Error(framing_error), 
	.Data_Valid(RX_OUT_V), 
	.test_si(test_si), 
	.test_so(n4), 
	.test_se(test_se), 
	.FE_OFN3_SYNC_RST_1_M(FE_OFN3_SYNC_RST_1_M));
endmodule

module SYS_CTRL_test_1 (
	CLK, 
	RST, 
	ALU_OUT, 
	ALU_OUT_Valid, 
	RX_P_Data, 
	RX_D_VLD, 
	RegFile_RdData, 
	RegFile_RdData_Valid, 
	FIFO_FULL, 
	ClkGating_EN, 
	ClkDiv_EN, 
	ALU_EN, 
	ALU_FUN, 
	RegFile_Address, 
	RegFile_WrEn, 
	RegFile_RdEn, 
	RegFile_WrData, 
	FIFO_WrData, 
	FIFO_WrInc, 
	test_si, 
	test_so, 
	test_se, 
	FE_OFN2_SYNC_RST_0_M);
   input CLK;
   input RST;
   input [15:0] ALU_OUT;
   input ALU_OUT_Valid;
   input [7:0] RX_P_Data;
   input RX_D_VLD;
   input [7:0] RegFile_RdData;
   input RegFile_RdData_Valid;
   input FIFO_FULL;
   output ClkGating_EN;
   output ClkDiv_EN;
   output ALU_EN;
   output [3:0] ALU_FUN;
   output [3:0] RegFile_Address;
   output RegFile_WrEn;
   output RegFile_RdEn;
   output [7:0] RegFile_WrData;
   output [7:0] FIFO_WrData;
   output FIFO_WrInc;
   input test_si;
   output test_so;
   input test_se;
   input FE_OFN2_SYNC_RST_0_M;

   // Internal wires
   wire LTIE_LTIELO_NET;
   wire N118;
   wire N119;
   wire N120;
   wire N121;
   wire N143;
   wire N147;
   wire N148;
   wire N149;
   wire N150;
   wire n22;
   wire n23;
   wire n24;
   wire n25;
   wire n26;
   wire n27;
   wire n28;
   wire n29;
   wire n30;
   wire n31;
   wire n32;
   wire n33;
   wire n34;
   wire n35;
   wire n36;
   wire n37;
   wire n38;
   wire n39;
   wire n40;
   wire n41;
   wire n42;
   wire n43;
   wire n44;
   wire n45;
   wire n46;
   wire n47;
   wire n48;
   wire n49;
   wire n50;
   wire n51;
   wire n52;
   wire n53;
   wire n54;
   wire n55;
   wire n56;
   wire n57;
   wire n58;
   wire n59;
   wire n60;
   wire n61;
   wire n62;
   wire n13;
   wire n14;
   wire n15;
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire n20;
   wire n21;
   wire n63;
   wire n64;
   wire n65;
   wire n66;
   wire n67;
   wire n68;
   wire n69;
   wire n70;
   wire n71;
   wire n72;
   wire n73;
   wire n74;
   wire n75;
   wire n76;
   wire n77;
   wire n78;
   wire [3:0] cs;
   wire [3:0] RegFile_Address_seq;
   wire [3:0] ns;

   assign test_so = cs[3] ;

   TIELOM LTIE_LTIELO (.Y(LTIE_LTIELO_NET));
   SDFFRQX2M \cs_reg[2]  (.SI(cs[1]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(cs[2]), 
	.D(ns[2]), 
	.CK(CLK));
   SDFFRQX2M \RegFile_Address_seq_reg[3]  (.SI(RegFile_Address_seq[2]), 
	.SE(test_se), 
	.RN(FE_OFN2_SYNC_RST_0_M), 
	.Q(RegFile_Address_seq[3]), 
	.D(RegFile_Address[3]), 
	.CK(CLK));
   SDFFRQX2M \RegFile_Address_seq_reg[2]  (.SI(RegFile_Address_seq[1]), 
	.SE(test_se), 
	.RN(FE_OFN2_SYNC_RST_0_M), 
	.Q(RegFile_Address_seq[2]), 
	.D(RegFile_Address[2]), 
	.CK(CLK));
   SDFFRQX2M \RegFile_Address_seq_reg[1]  (.SI(RegFile_Address_seq[0]), 
	.SE(test_se), 
	.RN(FE_OFN2_SYNC_RST_0_M), 
	.Q(RegFile_Address_seq[1]), 
	.D(RegFile_Address[1]), 
	.CK(CLK));
   SDFFRQX2M \cs_reg[1]  (.SI(n69), 
	.SE(test_se), 
	.RN(FE_OFN2_SYNC_RST_0_M), 
	.Q(cs[1]), 
	.D(ns[1]), 
	.CK(CLK));
   SDFFRQX2M \cs_reg[3]  (.SI(n71), 
	.SE(test_se), 
	.RN(FE_OFN2_SYNC_RST_0_M), 
	.Q(cs[3]), 
	.D(ns[3]), 
	.CK(CLK));
   SDFFRQX2M \cs_reg[0]  (.SI(RegFile_Address_seq[3]), 
	.SE(test_se), 
	.RN(FE_OFN2_SYNC_RST_0_M), 
	.Q(cs[0]), 
	.D(ns[0]), 
	.CK(CLK));
   SDFFRQX2M \RegFile_Address_seq_reg[0]  (.SI(test_si), 
	.SE(test_se), 
	.RN(RST), 
	.Q(RegFile_Address_seq[0]), 
	.D(RegFile_Address[0]), 
	.CK(CLK));
   NOR2X2M U13 (.Y(ALU_FUN[2]), 
	.B(n26), 
	.A(n76));
   NOR2X2M U14 (.Y(ALU_FUN[0]), 
	.B(n26), 
	.A(n78));
   MX3X2M U16 (.Y(RegFile_Address[3]), 
	.S1(cs[3]), 
	.S0(cs[1]), 
	.C(RegFile_Address_seq[3]), 
	.B(n63), 
	.A(n65));
   MX3X1M U17 (.Y(RegFile_Address[2]), 
	.S1(cs[3]), 
	.S0(cs[1]), 
	.C(RegFile_Address_seq[2]), 
	.B(n19), 
	.A(n21));
   NOR2BX2M U18 (.Y(n40), 
	.B(cs[3]), 
	.AN(cs[1]));
   INVX2M U19 (.Y(n68), 
	.A(RegFile_WrEn));
   NAND2X2M U20 (.Y(FIFO_WrInc), 
	.B(n52), 
	.A(n51));
   INVX2M U21 (.Y(n70), 
	.A(n51));
   OAI21X2M U22 (.Y(N118), 
	.B0(n50), 
	.A1(n78), 
	.A0(n72));
   OAI21X2M U23 (.Y(N119), 
	.B0(n49), 
	.A1(n77), 
	.A0(n72));
   OAI21X2M U24 (.Y(N121), 
	.B0(n47), 
	.A1(n75), 
	.A0(n72));
   AND2X2M U25 (.Y(n17), 
	.B(cs[0]), 
	.A(N119));
   AND2X2M U26 (.Y(n64), 
	.B(cs[0]), 
	.A(N121));
   AND2X2M U27 (.Y(n14), 
	.B(N118), 
	.A(cs[0]));
   INVX2M U28 (.Y(N143), 
	.A(n50));
   AOI21X2M U29 (.Y(RegFile_WrEn), 
	.B0(n72), 
	.A1(n33), 
	.A0(n37));
   NOR2X2M U30 (.Y(n41), 
	.B(n52), 
	.A(n66));
   NOR2X2M U31 (.Y(RegFile_RdEn), 
	.B(n72), 
	.A(n34));
   OAI21X2M U32 (.Y(N120), 
	.B0(n48), 
	.A1(n76), 
	.A0(n72));
   NAND2X2M U33 (.Y(n52), 
	.B(n27), 
	.A(n28));
   NOR2X2M U34 (.Y(RegFile_WrData[0]), 
	.B(n68), 
	.A(n78));
   NOR2X2M U35 (.Y(RegFile_WrData[1]), 
	.B(n68), 
	.A(n77));
   NOR2X2M U36 (.Y(RegFile_WrData[2]), 
	.B(n68), 
	.A(n76));
   NOR2X2M U37 (.Y(RegFile_WrData[3]), 
	.B(n68), 
	.A(n75));
   NOR2X2M U38 (.Y(RegFile_WrData[4]), 
	.B(n68), 
	.A(n74));
   NOR2X2M U39 (.Y(RegFile_WrData[7]), 
	.B(n68), 
	.A(n73));
   NAND2X2M U40 (.Y(n51), 
	.B(cs[0]), 
	.A(n62));
   NAND3X2M U41 (.Y(n37), 
	.C(cs[2]), 
	.B(n69), 
	.A(n40));
   NAND4BX1M U42 (.Y(ns[2]), 
	.D(n26), 
	.C(n25), 
	.B(n67), 
	.AN(RegFile_RdEn));
   OAI2BB1X2M U43 (.Y(n25), 
	.B0(n28), 
	.A1N(n27), 
	.A0N(n66));
   NAND2X2M U44 (.Y(n33), 
	.B(n40), 
	.A(cs[0]));
   NAND3X2M U45 (.Y(n34), 
	.C(n40), 
	.B(n71), 
	.A(n69));
   INVX2M U46 (.Y(n69), 
	.A(cs[0]));
   AND2X2M U47 (.Y(n28), 
	.B(n69), 
	.A(n62));
   INVX2M U48 (.Y(n71), 
	.A(cs[2]));
   AND2X2M U49 (.Y(n20), 
	.B(cs[0]), 
	.A(N120));
   NAND3X2M U50 (.Y(n22), 
	.C(cs[2]), 
	.B(n40), 
	.A(cs[0]));
   NAND2X2M U51 (.Y(n29), 
	.B(n45), 
	.A(cs[0]));
   NOR2X2M U52 (.Y(ALU_FUN[1]), 
	.B(n26), 
	.A(n77));
   INVX2M U53 (.Y(ALU_EN), 
	.A(n26));
   NOR2X2M U54 (.Y(ALU_FUN[3]), 
	.B(n26), 
	.A(n75));
   MX4X1M U55 (.Y(n63), 
	.S1(cs[2]), 
	.S0(cs[0]), 
	.D(N150), 
	.C(N150), 
	.B(RegFile_Address_seq[3]), 
	.A(N121));
   MX2X2M U56 (.Y(n65), 
	.S0(cs[2]), 
	.B(RegFile_Address_seq[3]), 
	.A(n64));
   INVX2M U57 (.Y(N150), 
	.A(n47));
   INVX2M U58 (.Y(n72), 
	.A(RX_D_VLD));
   MX3X1M U59 (.Y(RegFile_Address[1]), 
	.S1(cs[3]), 
	.S0(cs[1]), 
	.C(RegFile_Address_seq[1]), 
	.B(n16), 
	.A(n18));
   MX4X1M U60 (.Y(n16), 
	.S1(cs[2]), 
	.S0(cs[0]), 
	.D(N148), 
	.C(N148), 
	.B(RegFile_Address_seq[1]), 
	.A(N119));
   MX2X2M U61 (.Y(n18), 
	.S0(cs[2]), 
	.B(RegFile_Address_seq[1]), 
	.A(n17));
   INVX2M U62 (.Y(N148), 
	.A(n49));
   INVX2M U63 (.Y(n78), 
	.A(RX_P_Data[0]));
   NAND2X2M U64 (.Y(n50), 
	.B(n72), 
	.A(RegFile_Address_seq[0]));
   NAND2X2M U65 (.Y(n49), 
	.B(n72), 
	.A(RegFile_Address_seq[1]));
   NAND2X2M U66 (.Y(n47), 
	.B(n72), 
	.A(RegFile_Address_seq[3]));
   MX3X1M U67 (.Y(RegFile_Address[0]), 
	.S1(cs[3]), 
	.S0(cs[1]), 
	.C(RegFile_Address_seq[0]), 
	.B(n13), 
	.A(n15));
   MX4X1M U68 (.Y(n13), 
	.S1(cs[2]), 
	.S0(cs[0]), 
	.D(N147), 
	.C(N143), 
	.B(RegFile_Address_seq[0]), 
	.A(N118));
   MX2X2M U69 (.Y(n15), 
	.S0(cs[2]), 
	.B(RegFile_Address_seq[0]), 
	.A(n14));
   NAND2BX2M U70 (.Y(N147), 
	.B(n72), 
	.AN(RegFile_Address_seq[0]));
   MX4X1M U71 (.Y(n19), 
	.S1(cs[2]), 
	.S0(cs[0]), 
	.D(N149), 
	.C(N149), 
	.B(RegFile_Address_seq[2]), 
	.A(N120));
   MX2X2M U72 (.Y(n21), 
	.S0(cs[2]), 
	.B(RegFile_Address_seq[2]), 
	.A(n20));
   INVX2M U73 (.Y(N149), 
	.A(n48));
   NOR3X2M U74 (.Y(n62), 
	.C(n71), 
	.B(cs[3]), 
	.A(cs[1]));
   NOR2X2M U75 (.Y(n54), 
	.B(ALU_OUT_Valid), 
	.A(n52));
   AOI2B1X1M U76 (.Y(n27), 
	.B0(FIFO_FULL), 
	.A1N(RegFile_RdData_Valid), 
	.A0(n66));
   OAI2BB1X2M U77 (.Y(FIFO_WrData[0]), 
	.B0(n61), 
	.A1N(n70), 
	.A0N(ALU_OUT[8]));
   AOI22X1M U78 (.Y(n61), 
	.B1(n41), 
	.B0(ALU_OUT[0]), 
	.A1(n54), 
	.A0(RegFile_RdData[0]));
   OAI2BB1X2M U79 (.Y(FIFO_WrData[1]), 
	.B0(n60), 
	.A1N(n70), 
	.A0N(ALU_OUT[9]));
   AOI22X1M U80 (.Y(n60), 
	.B1(n41), 
	.B0(ALU_OUT[1]), 
	.A1(n54), 
	.A0(RegFile_RdData[1]));
   OAI2BB1X2M U81 (.Y(FIFO_WrData[2]), 
	.B0(n59), 
	.A1N(n70), 
	.A0N(ALU_OUT[10]));
   AOI22X1M U82 (.Y(n59), 
	.B1(n41), 
	.B0(ALU_OUT[2]), 
	.A1(n54), 
	.A0(RegFile_RdData[2]));
   OAI2BB1X2M U83 (.Y(FIFO_WrData[3]), 
	.B0(n58), 
	.A1N(n70), 
	.A0N(ALU_OUT[11]));
   AOI22X1M U84 (.Y(n58), 
	.B1(n41), 
	.B0(ALU_OUT[3]), 
	.A1(n54), 
	.A0(RegFile_RdData[3]));
   OAI2BB1X2M U85 (.Y(FIFO_WrData[4]), 
	.B0(n57), 
	.A1N(n70), 
	.A0N(ALU_OUT[12]));
   AOI22X1M U86 (.Y(n57), 
	.B1(n41), 
	.B0(ALU_OUT[4]), 
	.A1(n54), 
	.A0(RegFile_RdData[4]));
   OAI2BB1X2M U87 (.Y(FIFO_WrData[5]), 
	.B0(n56), 
	.A1N(n70), 
	.A0N(ALU_OUT[13]));
   AOI22X1M U88 (.Y(n56), 
	.B1(n41), 
	.B0(ALU_OUT[5]), 
	.A1(n54), 
	.A0(RegFile_RdData[5]));
   OAI2BB1X2M U89 (.Y(FIFO_WrData[6]), 
	.B0(n55), 
	.A1N(n70), 
	.A0N(ALU_OUT[14]));
   AOI22X1M U90 (.Y(n55), 
	.B1(n41), 
	.B0(ALU_OUT[6]), 
	.A1(n54), 
	.A0(RegFile_RdData[6]));
   OAI2BB1X2M U91 (.Y(FIFO_WrData[7]), 
	.B0(n53), 
	.A1N(n70), 
	.A0N(ALU_OUT[15]));
   AOI22X1M U92 (.Y(n53), 
	.B1(n41), 
	.B0(ALU_OUT[7]), 
	.A1(n54), 
	.A0(RegFile_RdData[7]));
   AND2X2M U93 (.Y(RegFile_WrData[5]), 
	.B(RegFile_WrEn), 
	.A(RX_P_Data[5]));
   AND2X2M U94 (.Y(RegFile_WrData[6]), 
	.B(RegFile_WrEn), 
	.A(RX_P_Data[6]));
   NAND4BX1M U95 (.Y(ns[0]), 
	.D(n43), 
	.C(n42), 
	.B(n29), 
	.AN(n41));
   OA22X2M U96 (.Y(n43), 
	.B1(n72), 
	.B0(n37), 
	.A1(RX_D_VLD), 
	.A0(n33));
   NAND3X2M U97 (.Y(n42), 
	.C(n31), 
	.B(n74), 
	.A(n78));
   NAND2X2M U98 (.Y(n48), 
	.B(n72), 
	.A(RegFile_Address_seq[2]));
   INVX2M U100 (.Y(n75), 
	.A(RX_P_Data[3]));
   INVX2M U101 (.Y(n77), 
	.A(RX_P_Data[1]));
   INVX2M U102 (.Y(n76), 
	.A(RX_P_Data[2]));
   NOR4BX1M U103 (.Y(ClkGating_EN), 
	.D(cs[2]), 
	.C(cs[1]), 
	.B(cs[0]), 
	.AN(cs[3]));
   NOR3X2M U104 (.Y(n45), 
	.C(cs[1]), 
	.B(cs[3]), 
	.A(cs[2]));
   NAND2X2M U105 (.Y(n26), 
	.B(RX_D_VLD), 
	.A(ClkGating_EN));
   OAI211X2M U106 (.Y(ns[1]), 
	.C0(n30), 
	.B0(n67), 
	.A1(n29), 
	.A0(n72));
   AOI31X2M U107 (.Y(n30), 
	.B0(n32), 
	.A2(n31), 
	.A1(RX_P_Data[0]), 
	.A0(RX_P_Data[4]));
   AOI21X2M U108 (.Y(n32), 
	.B0(RX_D_VLD), 
	.A1(n34), 
	.A0(n33));
   OAI21X2M U109 (.Y(ns[3]), 
	.B0(n23), 
	.A1(n22), 
	.A0(n72));
   AOI32X1M U110 (.Y(n23), 
	.B1(n72), 
	.B0(ClkGating_EN), 
	.A2(RX_P_Data[4]), 
	.A1(n24), 
	.A0(RX_P_Data[0]));
   AND4X2M U111 (.Y(n24), 
	.D(n39), 
	.C(n38), 
	.B(RX_P_Data[2]), 
	.A(RX_P_Data[6]));
   NOR2X2M U112 (.Y(n38), 
	.B(RX_P_Data[1]), 
	.A(RX_P_Data[5]));
   AND4X2M U113 (.Y(n31), 
	.D(n39), 
	.C(n44), 
	.B(RX_P_Data[1]), 
	.A(RX_P_Data[5]));
   NOR2X2M U114 (.Y(n44), 
	.B(RX_P_Data[2]), 
	.A(RX_P_Data[6]));
   INVX2M U115 (.Y(n74), 
	.A(RX_P_Data[4]));
   AND4X2M U116 (.Y(n39), 
	.D(n46), 
	.C(RX_D_VLD), 
	.B(n69), 
	.A(n45));
   NOR2X2M U117 (.Y(n46), 
	.B(n73), 
	.A(n75));
   INVX2M U118 (.Y(n67), 
	.A(n35));
   OAI211X2M U119 (.Y(n35), 
	.C0(n37), 
	.B0(n36), 
	.A1(n22), 
	.A0(RX_D_VLD));
   NAND3X2M U120 (.Y(n36), 
	.C(n24), 
	.B(n74), 
	.A(n78));
   INVX2M U121 (.Y(n73), 
	.A(RX_P_Data[7]));
   INVX2M U122 (.Y(n66), 
	.A(ALU_OUT_Valid));
   INVX2M U3 (.Y(ClkDiv_EN), 
	.A(LTIE_LTIELO_NET));
endmodule

module RegFile_WIDTH8_DEPTH16_ADDR4_test_1 (
	CLK, 
	RST, 
	WrEn, 
	RdEn, 
	Address, 
	WrData, 
	RdData, 
	RdData_VLD, 
	REG0, 
	REG1, 
	REG2, 
	REG3, 
	test_si3, 
	test_si2, 
	test_si1, 
	test_so2, 
	test_so1, 
	test_se, 
	FE_OFN0_SYNC_RST_0_M, 
	FE_OFN1_SYNC_RST_0_M, 
	REF_CLK_M__L5_N1, 
	REF_CLK_M__L5_N2, 
	REF_CLK_M__L5_N3, 
	REF_CLK_M__L5_N5, 
	REF_CLK_M__L5_N7);
   input CLK;
   input RST;
   input WrEn;
   input RdEn;
   input [3:0] Address;
   input [7:0] WrData;
   output [7:0] RdData;
   output RdData_VLD;
   output [7:0] REG0;
   output [7:0] REG1;
   output [7:0] REG2;
   output [7:0] REG3;
   input test_si3;
   input test_si2;
   input test_si1;
   output test_so2;
   output test_so1;
   input test_se;
   input FE_OFN0_SYNC_RST_0_M;
   input FE_OFN1_SYNC_RST_0_M;
   input REF_CLK_M__L5_N1;
   input REF_CLK_M__L5_N2;
   input REF_CLK_M__L5_N3;
   input REF_CLK_M__L5_N5;
   input REF_CLK_M__L5_N7;

   // Internal wires
   wire FE_PHN3_test_si3;
   wire FE_PHN2_test_si3;
   wire FE_PHN1_test_si4;
   wire FE_PHN0_test_si4;
   wire N10;
   wire N11;
   wire N12;
   wire N13;
   wire \regArr[15][7] ;
   wire \regArr[15][6] ;
   wire \regArr[15][5] ;
   wire \regArr[15][4] ;
   wire \regArr[15][3] ;
   wire \regArr[15][2] ;
   wire \regArr[15][1] ;
   wire \regArr[15][0] ;
   wire \regArr[14][7] ;
   wire \regArr[14][6] ;
   wire \regArr[14][5] ;
   wire \regArr[14][4] ;
   wire \regArr[14][3] ;
   wire \regArr[14][2] ;
   wire \regArr[14][1] ;
   wire \regArr[14][0] ;
   wire \regArr[13][7] ;
   wire \regArr[13][6] ;
   wire \regArr[13][5] ;
   wire \regArr[13][4] ;
   wire \regArr[13][3] ;
   wire \regArr[13][2] ;
   wire \regArr[13][1] ;
   wire \regArr[13][0] ;
   wire \regArr[12][7] ;
   wire \regArr[12][6] ;
   wire \regArr[12][5] ;
   wire \regArr[12][4] ;
   wire \regArr[12][3] ;
   wire \regArr[12][2] ;
   wire \regArr[12][1] ;
   wire \regArr[12][0] ;
   wire \regArr[11][7] ;
   wire \regArr[11][6] ;
   wire \regArr[11][5] ;
   wire \regArr[11][4] ;
   wire \regArr[11][3] ;
   wire \regArr[11][2] ;
   wire \regArr[11][1] ;
   wire \regArr[11][0] ;
   wire \regArr[10][7] ;
   wire \regArr[10][6] ;
   wire \regArr[10][5] ;
   wire \regArr[10][4] ;
   wire \regArr[10][3] ;
   wire \regArr[10][2] ;
   wire \regArr[10][1] ;
   wire \regArr[10][0] ;
   wire \regArr[9][7] ;
   wire \regArr[9][6] ;
   wire \regArr[9][5] ;
   wire \regArr[9][4] ;
   wire \regArr[9][3] ;
   wire \regArr[9][2] ;
   wire \regArr[9][1] ;
   wire \regArr[9][0] ;
   wire \regArr[8][7] ;
   wire \regArr[8][6] ;
   wire \regArr[8][5] ;
   wire \regArr[8][4] ;
   wire \regArr[8][3] ;
   wire \regArr[8][2] ;
   wire \regArr[8][1] ;
   wire \regArr[8][0] ;
   wire \regArr[7][7] ;
   wire \regArr[7][6] ;
   wire \regArr[7][5] ;
   wire \regArr[7][4] ;
   wire \regArr[7][3] ;
   wire \regArr[7][2] ;
   wire \regArr[7][1] ;
   wire \regArr[7][0] ;
   wire \regArr[6][7] ;
   wire \regArr[6][6] ;
   wire \regArr[6][5] ;
   wire \regArr[6][4] ;
   wire \regArr[6][3] ;
   wire \regArr[6][2] ;
   wire \regArr[6][1] ;
   wire \regArr[6][0] ;
   wire \regArr[5][7] ;
   wire \regArr[5][6] ;
   wire \regArr[5][5] ;
   wire \regArr[5][4] ;
   wire \regArr[5][3] ;
   wire \regArr[5][2] ;
   wire \regArr[5][1] ;
   wire \regArr[5][0] ;
   wire \regArr[4][7] ;
   wire \regArr[4][6] ;
   wire \regArr[4][5] ;
   wire \regArr[4][4] ;
   wire \regArr[4][3] ;
   wire \regArr[4][2] ;
   wire \regArr[4][1] ;
   wire \regArr[4][0] ;
   wire N35;
   wire N36;
   wire N37;
   wire N38;
   wire N39;
   wire N40;
   wire N41;
   wire N42;
   wire n149;
   wire n150;
   wire n151;
   wire n152;
   wire n153;
   wire n154;
   wire n155;
   wire n156;
   wire n157;
   wire n158;
   wire n159;
   wire n160;
   wire n161;
   wire n162;
   wire n163;
   wire n164;
   wire n165;
   wire n166;
   wire n167;
   wire n168;
   wire n169;
   wire n170;
   wire n171;
   wire n172;
   wire n173;
   wire n174;
   wire n175;
   wire n176;
   wire n177;
   wire n178;
   wire n179;
   wire n180;
   wire n181;
   wire n182;
   wire n183;
   wire n184;
   wire n185;
   wire n186;
   wire n187;
   wire n188;
   wire n189;
   wire n190;
   wire n191;
   wire n192;
   wire n193;
   wire n194;
   wire n195;
   wire n196;
   wire n197;
   wire n198;
   wire n199;
   wire n200;
   wire n201;
   wire n202;
   wire n203;
   wire n204;
   wire n205;
   wire n206;
   wire n207;
   wire n208;
   wire n209;
   wire n210;
   wire n211;
   wire n212;
   wire n213;
   wire n214;
   wire n215;
   wire n216;
   wire n217;
   wire n218;
   wire n219;
   wire n220;
   wire n221;
   wire n222;
   wire n223;
   wire n224;
   wire n225;
   wire n226;
   wire n227;
   wire n228;
   wire n229;
   wire n230;
   wire n231;
   wire n232;
   wire n233;
   wire n234;
   wire n235;
   wire n236;
   wire n237;
   wire n238;
   wire n239;
   wire n240;
   wire n241;
   wire n242;
   wire n243;
   wire n244;
   wire n245;
   wire n246;
   wire n247;
   wire n248;
   wire n249;
   wire n250;
   wire n251;
   wire n252;
   wire n253;
   wire n254;
   wire n255;
   wire n256;
   wire n257;
   wire n258;
   wire n259;
   wire n260;
   wire n261;
   wire n262;
   wire n263;
   wire n264;
   wire n265;
   wire n266;
   wire n267;
   wire n268;
   wire n269;
   wire n270;
   wire n271;
   wire n272;
   wire n273;
   wire n274;
   wire n275;
   wire n276;
   wire n277;
   wire n278;
   wire n279;
   wire n280;
   wire n281;
   wire n282;
   wire n283;
   wire n284;
   wire n285;
   wire n286;
   wire n287;
   wire n288;
   wire n289;
   wire n290;
   wire n291;
   wire n292;
   wire n293;
   wire n294;
   wire n295;
   wire n296;
   wire n297;
   wire n298;
   wire n299;
   wire n300;
   wire n301;
   wire n302;
   wire n303;
   wire n304;
   wire n305;
   wire n306;
   wire n307;
   wire n308;
   wire n309;
   wire n310;
   wire n311;
   wire n312;
   wire n313;
   wire n139;
   wire n140;
   wire n141;
   wire n142;
   wire n143;
   wire n144;
   wire n145;
   wire n146;
   wire n147;
   wire n148;
   wire n314;
   wire n315;
   wire n316;
   wire n317;
   wire n318;
   wire n319;
   wire n320;
   wire n321;
   wire n322;
   wire n323;
   wire n324;
   wire n325;
   wire n326;
   wire n327;
   wire n328;
   wire n329;
   wire n330;
   wire n331;
   wire n332;
   wire n333;
   wire n334;
   wire n335;
   wire n336;
   wire n338;
   wire n339;
   wire n340;
   wire n341;
   wire n357;
   wire n358;
   wire n359;
   wire n360;
   wire n361;
   wire n362;
   wire n363;
   wire n364;
   wire n365;
   wire n370;
   wire n371;
   wire n372;
   wire n373;

   assign N10 = Address[0] ;
   assign N11 = Address[1] ;
   assign N12 = Address[2] ;
   assign N13 = Address[3] ;
   assign test_so2 = \regArr[15][7]  ;
   assign test_so1 = \regArr[12][4]  ;

   DLY4X1M FE_PHC3_test_si3 (.Y(FE_PHN3_test_si3), 
	.A(FE_PHN2_test_si3));
   DLY4X1M FE_PHC2_test_si3 (.Y(FE_PHN2_test_si3), 
	.A(test_si2));
   DLY4X1M FE_PHC1_test_si4 (.Y(FE_PHN1_test_si4), 
	.A(FE_PHN0_test_si4));
   DLY4X1M FE_PHC0_test_si4 (.Y(FE_PHN0_test_si4), 
	.A(test_si3));
   SDFFRQX2M \regArr_reg[13][7]  (.SI(\regArr[13][6] ), 
	.SE(n372), 
	.RN(RST), 
	.Q(\regArr[13][7] ), 
	.D(n297), 
	.CK(REF_CLK_M__L5_N5));
   SDFFRQX2M \regArr_reg[13][6]  (.SI(\regArr[13][5] ), 
	.SE(n371), 
	.RN(RST), 
	.Q(\regArr[13][6] ), 
	.D(n296), 
	.CK(REF_CLK_M__L5_N5));
   SDFFRQX2M \regArr_reg[13][5]  (.SI(\regArr[13][4] ), 
	.SE(n370), 
	.RN(RST), 
	.Q(\regArr[13][5] ), 
	.D(n295), 
	.CK(CLK));
   SDFFRQX2M \regArr_reg[13][4]  (.SI(\regArr[13][3] ), 
	.SE(n373), 
	.RN(FE_OFN0_SYNC_RST_0_M), 
	.Q(\regArr[13][4] ), 
	.D(n294), 
	.CK(CLK));
   SDFFRQX2M \regArr_reg[13][3]  (.SI(\regArr[13][2] ), 
	.SE(n372), 
	.RN(FE_OFN0_SYNC_RST_0_M), 
	.Q(\regArr[13][3] ), 
	.D(n293), 
	.CK(CLK));
   SDFFRQX2M \regArr_reg[13][2]  (.SI(\regArr[13][1] ), 
	.SE(n371), 
	.RN(RST), 
	.Q(\regArr[13][2] ), 
	.D(n292), 
	.CK(CLK));
   SDFFRQX2M \regArr_reg[13][1]  (.SI(\regArr[13][0] ), 
	.SE(n370), 
	.RN(RST), 
	.Q(\regArr[13][1] ), 
	.D(n291), 
	.CK(CLK));
   SDFFRQX2M \regArr_reg[13][0]  (.SI(\regArr[12][7] ), 
	.SE(n373), 
	.RN(RST), 
	.Q(\regArr[13][0] ), 
	.D(n290), 
	.CK(CLK));
   SDFFRQX2M \regArr_reg[9][7]  (.SI(\regArr[9][6] ), 
	.SE(n372), 
	.RN(RST), 
	.Q(\regArr[9][7] ), 
	.D(n265), 
	.CK(REF_CLK_M__L5_N2));
   SDFFRQX2M \regArr_reg[9][6]  (.SI(\regArr[9][5] ), 
	.SE(n371), 
	.RN(FE_OFN1_SYNC_RST_0_M), 
	.Q(\regArr[9][6] ), 
	.D(n264), 
	.CK(REF_CLK_M__L5_N2));
   SDFFRQX2M \regArr_reg[9][5]  (.SI(\regArr[9][4] ), 
	.SE(n370), 
	.RN(FE_OFN1_SYNC_RST_0_M), 
	.Q(\regArr[9][5] ), 
	.D(n263), 
	.CK(REF_CLK_M__L5_N3));
   SDFFRQX2M \regArr_reg[9][4]  (.SI(\regArr[9][3] ), 
	.SE(n373), 
	.RN(FE_OFN1_SYNC_RST_0_M), 
	.Q(\regArr[9][4] ), 
	.D(n262), 
	.CK(REF_CLK_M__L5_N3));
   SDFFRQX2M \regArr_reg[9][3]  (.SI(\regArr[9][2] ), 
	.SE(n372), 
	.RN(FE_OFN1_SYNC_RST_0_M), 
	.Q(\regArr[9][3] ), 
	.D(n261), 
	.CK(REF_CLK_M__L5_N3));
   SDFFRQX2M \regArr_reg[9][2]  (.SI(\regArr[9][1] ), 
	.SE(n371), 
	.RN(RST), 
	.Q(\regArr[9][2] ), 
	.D(n260), 
	.CK(REF_CLK_M__L5_N3));
   SDFFRQX2M \regArr_reg[9][1]  (.SI(\regArr[9][0] ), 
	.SE(n370), 
	.RN(RST), 
	.Q(\regArr[9][1] ), 
	.D(n259), 
	.CK(REF_CLK_M__L5_N3));
   SDFFRQX2M \regArr_reg[9][0]  (.SI(\regArr[8][7] ), 
	.SE(n373), 
	.RN(FE_OFN1_SYNC_RST_0_M), 
	.Q(\regArr[9][0] ), 
	.D(n258), 
	.CK(REF_CLK_M__L5_N2));
   SDFFRQX2M \regArr_reg[5][7]  (.SI(\regArr[5][6] ), 
	.SE(n372), 
	.RN(RST), 
	.Q(\regArr[5][7] ), 
	.D(n233), 
	.CK(REF_CLK_M__L5_N1));
   SDFFRQX2M \regArr_reg[5][6]  (.SI(\regArr[5][5] ), 
	.SE(n371), 
	.RN(RST), 
	.Q(\regArr[5][6] ), 
	.D(n232), 
	.CK(REF_CLK_M__L5_N1));
   SDFFRQX2M \regArr_reg[5][5]  (.SI(\regArr[5][4] ), 
	.SE(n370), 
	.RN(RST), 
	.Q(\regArr[5][5] ), 
	.D(n231), 
	.CK(REF_CLK_M__L5_N1));
   SDFFRQX2M \regArr_reg[5][4]  (.SI(\regArr[5][3] ), 
	.SE(n373), 
	.RN(FE_OFN0_SYNC_RST_0_M), 
	.Q(\regArr[5][4] ), 
	.D(n230), 
	.CK(REF_CLK_M__L5_N1));
   SDFFRQX2M \regArr_reg[5][3]  (.SI(\regArr[5][2] ), 
	.SE(n372), 
	.RN(FE_OFN0_SYNC_RST_0_M), 
	.Q(\regArr[5][3] ), 
	.D(n229), 
	.CK(REF_CLK_M__L5_N1));
   SDFFRQX2M \regArr_reg[5][2]  (.SI(\regArr[5][1] ), 
	.SE(n371), 
	.RN(FE_OFN0_SYNC_RST_0_M), 
	.Q(\regArr[5][2] ), 
	.D(n228), 
	.CK(REF_CLK_M__L5_N1));
   SDFFRQX2M \regArr_reg[5][1]  (.SI(\regArr[5][0] ), 
	.SE(n370), 
	.RN(RST), 
	.Q(\regArr[5][1] ), 
	.D(n227), 
	.CK(REF_CLK_M__L5_N1));
   SDFFRQX2M \regArr_reg[5][0]  (.SI(\regArr[4][7] ), 
	.SE(n373), 
	.RN(RST), 
	.Q(\regArr[5][0] ), 
	.D(n226), 
	.CK(REF_CLK_M__L5_N1));
   SDFFRQX2M \regArr_reg[15][7]  (.SI(\regArr[15][6] ), 
	.SE(n372), 
	.RN(RST), 
	.Q(\regArr[15][7] ), 
	.D(n313), 
	.CK(REF_CLK_M__L5_N5));
   SDFFRQX2M \regArr_reg[15][6]  (.SI(\regArr[15][5] ), 
	.SE(n371), 
	.RN(RST), 
	.Q(\regArr[15][6] ), 
	.D(n312), 
	.CK(REF_CLK_M__L5_N5));
   SDFFRQX2M \regArr_reg[15][5]  (.SI(\regArr[15][4] ), 
	.SE(n370), 
	.RN(FE_OFN0_SYNC_RST_0_M), 
	.Q(\regArr[15][5] ), 
	.D(n311), 
	.CK(REF_CLK_M__L5_N5));
   SDFFRQX2M \regArr_reg[15][4]  (.SI(\regArr[15][3] ), 
	.SE(n373), 
	.RN(RST), 
	.Q(\regArr[15][4] ), 
	.D(n310), 
	.CK(REF_CLK_M__L5_N5));
   SDFFRQX2M \regArr_reg[15][3]  (.SI(\regArr[15][2] ), 
	.SE(n372), 
	.RN(FE_OFN0_SYNC_RST_0_M), 
	.Q(\regArr[15][3] ), 
	.D(n309), 
	.CK(CLK));
   SDFFRQX2M \regArr_reg[15][2]  (.SI(\regArr[15][1] ), 
	.SE(n371), 
	.RN(RST), 
	.Q(\regArr[15][2] ), 
	.D(n308), 
	.CK(CLK));
   SDFFRQX2M \regArr_reg[15][1]  (.SI(\regArr[15][0] ), 
	.SE(n370), 
	.RN(RST), 
	.Q(\regArr[15][1] ), 
	.D(n307), 
	.CK(CLK));
   SDFFRQX2M \regArr_reg[15][0]  (.SI(\regArr[14][7] ), 
	.SE(n373), 
	.RN(RST), 
	.Q(\regArr[15][0] ), 
	.D(n306), 
	.CK(CLK));
   SDFFRQX2M \regArr_reg[11][7]  (.SI(\regArr[11][6] ), 
	.SE(n372), 
	.RN(FE_OFN1_SYNC_RST_0_M), 
	.Q(\regArr[11][7] ), 
	.D(n281), 
	.CK(REF_CLK_M__L5_N2));
   SDFFRQX2M \regArr_reg[11][6]  (.SI(\regArr[11][5] ), 
	.SE(n371), 
	.RN(FE_OFN1_SYNC_RST_0_M), 
	.Q(\regArr[11][6] ), 
	.D(n280), 
	.CK(REF_CLK_M__L5_N2));
   SDFFRQX2M \regArr_reg[11][5]  (.SI(\regArr[11][4] ), 
	.SE(n370), 
	.RN(FE_OFN1_SYNC_RST_0_M), 
	.Q(\regArr[11][5] ), 
	.D(n279), 
	.CK(REF_CLK_M__L5_N2));
   SDFFRQX2M \regArr_reg[11][4]  (.SI(\regArr[11][3] ), 
	.SE(n373), 
	.RN(FE_OFN1_SYNC_RST_0_M), 
	.Q(\regArr[11][4] ), 
	.D(n278), 
	.CK(REF_CLK_M__L5_N3));
   SDFFRQX2M \regArr_reg[11][3]  (.SI(\regArr[11][2] ), 
	.SE(n372), 
	.RN(FE_OFN1_SYNC_RST_0_M), 
	.Q(\regArr[11][3] ), 
	.D(n277), 
	.CK(REF_CLK_M__L5_N3));
   SDFFRQX2M \regArr_reg[11][2]  (.SI(\regArr[11][1] ), 
	.SE(n371), 
	.RN(RST), 
	.Q(\regArr[11][2] ), 
	.D(n276), 
	.CK(REF_CLK_M__L5_N3));
   SDFFRQX2M \regArr_reg[11][1]  (.SI(\regArr[11][0] ), 
	.SE(n370), 
	.RN(RST), 
	.Q(\regArr[11][1] ), 
	.D(n275), 
	.CK(REF_CLK_M__L5_N1));
   SDFFRQX2M \regArr_reg[11][0]  (.SI(\regArr[10][7] ), 
	.SE(n373), 
	.RN(RST), 
	.Q(\regArr[11][0] ), 
	.D(n274), 
	.CK(REF_CLK_M__L5_N1));
   SDFFRQX2M \regArr_reg[7][7]  (.SI(\regArr[7][6] ), 
	.SE(n372), 
	.RN(RST), 
	.Q(\regArr[7][7] ), 
	.D(n249), 
	.CK(REF_CLK_M__L5_N1));
   SDFFRQX2M \regArr_reg[7][6]  (.SI(\regArr[7][5] ), 
	.SE(n371), 
	.RN(RST), 
	.Q(\regArr[7][6] ), 
	.D(n248), 
	.CK(CLK));
   SDFFRQX2M \regArr_reg[7][5]  (.SI(\regArr[7][4] ), 
	.SE(n370), 
	.RN(FE_OFN0_SYNC_RST_0_M), 
	.Q(\regArr[7][5] ), 
	.D(n247), 
	.CK(CLK));
   SDFFRQX2M \regArr_reg[7][4]  (.SI(\regArr[7][3] ), 
	.SE(n373), 
	.RN(FE_OFN0_SYNC_RST_0_M), 
	.Q(\regArr[7][4] ), 
	.D(n246), 
	.CK(REF_CLK_M__L5_N1));
   SDFFRQX2M \regArr_reg[7][3]  (.SI(\regArr[7][2] ), 
	.SE(n372), 
	.RN(FE_OFN0_SYNC_RST_0_M), 
	.Q(\regArr[7][3] ), 
	.D(n245), 
	.CK(REF_CLK_M__L5_N1));
   SDFFRQX2M \regArr_reg[7][2]  (.SI(\regArr[7][1] ), 
	.SE(n371), 
	.RN(FE_OFN0_SYNC_RST_0_M), 
	.Q(\regArr[7][2] ), 
	.D(n244), 
	.CK(REF_CLK_M__L5_N1));
   SDFFRQX2M \regArr_reg[7][1]  (.SI(\regArr[7][0] ), 
	.SE(n370), 
	.RN(RST), 
	.Q(\regArr[7][1] ), 
	.D(n243), 
	.CK(REF_CLK_M__L5_N1));
   SDFFRQX2M \regArr_reg[7][0]  (.SI(\regArr[6][7] ), 
	.SE(n373), 
	.RN(RST), 
	.Q(\regArr[7][0] ), 
	.D(n242), 
	.CK(REF_CLK_M__L5_N1));
   SDFFRQX2M \regArr_reg[14][7]  (.SI(\regArr[14][6] ), 
	.SE(n372), 
	.RN(RST), 
	.Q(\regArr[14][7] ), 
	.D(n305), 
	.CK(REF_CLK_M__L5_N5));
   SDFFRQX2M \regArr_reg[14][6]  (.SI(\regArr[14][5] ), 
	.SE(n371), 
	.RN(RST), 
	.Q(\regArr[14][6] ), 
	.D(n304), 
	.CK(REF_CLK_M__L5_N5));
   SDFFRQX2M \regArr_reg[14][5]  (.SI(\regArr[14][4] ), 
	.SE(n370), 
	.RN(FE_OFN0_SYNC_RST_0_M), 
	.Q(\regArr[14][5] ), 
	.D(n303), 
	.CK(REF_CLK_M__L5_N5));
   SDFFRQX2M \regArr_reg[14][4]  (.SI(\regArr[14][3] ), 
	.SE(n373), 
	.RN(FE_OFN0_SYNC_RST_0_M), 
	.Q(\regArr[14][4] ), 
	.D(n302), 
	.CK(CLK));
   SDFFRQX2M \regArr_reg[14][3]  (.SI(\regArr[14][2] ), 
	.SE(n372), 
	.RN(FE_OFN0_SYNC_RST_0_M), 
	.Q(\regArr[14][3] ), 
	.D(n301), 
	.CK(CLK));
   SDFFRQX2M \regArr_reg[14][2]  (.SI(\regArr[14][1] ), 
	.SE(n371), 
	.RN(RST), 
	.Q(\regArr[14][2] ), 
	.D(n300), 
	.CK(CLK));
   SDFFRQX2M \regArr_reg[14][1]  (.SI(\regArr[14][0] ), 
	.SE(n370), 
	.RN(RST), 
	.Q(\regArr[14][1] ), 
	.D(n299), 
	.CK(CLK));
   SDFFRQX2M \regArr_reg[14][0]  (.SI(\regArr[13][7] ), 
	.SE(n373), 
	.RN(RST), 
	.Q(\regArr[14][0] ), 
	.D(n298), 
	.CK(CLK));
   SDFFRQX2M \regArr_reg[10][7]  (.SI(\regArr[10][6] ), 
	.SE(n372), 
	.RN(RST), 
	.Q(\regArr[10][7] ), 
	.D(n273), 
	.CK(REF_CLK_M__L5_N2));
   SDFFRQX2M \regArr_reg[10][6]  (.SI(\regArr[10][5] ), 
	.SE(n371), 
	.RN(FE_OFN1_SYNC_RST_0_M), 
	.Q(\regArr[10][6] ), 
	.D(n272), 
	.CK(REF_CLK_M__L5_N2));
   SDFFRQX2M \regArr_reg[10][5]  (.SI(\regArr[10][4] ), 
	.SE(n370), 
	.RN(FE_OFN1_SYNC_RST_0_M), 
	.Q(\regArr[10][5] ), 
	.D(n271), 
	.CK(REF_CLK_M__L5_N3));
   SDFFRQX2M \regArr_reg[10][4]  (.SI(\regArr[10][3] ), 
	.SE(n373), 
	.RN(FE_OFN1_SYNC_RST_0_M), 
	.Q(\regArr[10][4] ), 
	.D(n270), 
	.CK(REF_CLK_M__L5_N3));
   SDFFRQX2M \regArr_reg[10][3]  (.SI(\regArr[10][2] ), 
	.SE(n372), 
	.RN(FE_OFN1_SYNC_RST_0_M), 
	.Q(\regArr[10][3] ), 
	.D(n269), 
	.CK(REF_CLK_M__L5_N3));
   SDFFRQX2M \regArr_reg[10][2]  (.SI(\regArr[10][1] ), 
	.SE(n371), 
	.RN(FE_OFN1_SYNC_RST_0_M), 
	.Q(\regArr[10][2] ), 
	.D(n268), 
	.CK(REF_CLK_M__L5_N3));
   SDFFRQX2M \regArr_reg[10][1]  (.SI(\regArr[10][0] ), 
	.SE(n370), 
	.RN(RST), 
	.Q(\regArr[10][1] ), 
	.D(n267), 
	.CK(REF_CLK_M__L5_N3));
   SDFFRQX2M \regArr_reg[10][0]  (.SI(\regArr[9][7] ), 
	.SE(n373), 
	.RN(RST), 
	.Q(\regArr[10][0] ), 
	.D(n266), 
	.CK(REF_CLK_M__L5_N3));
   SDFFRQX2M \regArr_reg[6][7]  (.SI(\regArr[6][6] ), 
	.SE(n372), 
	.RN(RST), 
	.Q(\regArr[6][7] ), 
	.D(n241), 
	.CK(REF_CLK_M__L5_N1));
   SDFFRQX2M \regArr_reg[6][6]  (.SI(\regArr[6][5] ), 
	.SE(n371), 
	.RN(RST), 
	.Q(\regArr[6][6] ), 
	.D(n240), 
	.CK(REF_CLK_M__L5_N1));
   SDFFRQX2M \regArr_reg[6][5]  (.SI(\regArr[6][4] ), 
	.SE(n370), 
	.RN(FE_OFN0_SYNC_RST_0_M), 
	.Q(\regArr[6][5] ), 
	.D(n239), 
	.CK(REF_CLK_M__L5_N1));
   SDFFRQX2M \regArr_reg[6][4]  (.SI(\regArr[6][3] ), 
	.SE(n373), 
	.RN(FE_OFN0_SYNC_RST_0_M), 
	.Q(\regArr[6][4] ), 
	.D(n238), 
	.CK(REF_CLK_M__L5_N1));
   SDFFRQX2M \regArr_reg[6][3]  (.SI(\regArr[6][2] ), 
	.SE(n372), 
	.RN(FE_OFN0_SYNC_RST_0_M), 
	.Q(\regArr[6][3] ), 
	.D(n237), 
	.CK(REF_CLK_M__L5_N1));
   SDFFRQX2M \regArr_reg[6][2]  (.SI(\regArr[6][1] ), 
	.SE(n371), 
	.RN(FE_OFN0_SYNC_RST_0_M), 
	.Q(\regArr[6][2] ), 
	.D(n236), 
	.CK(REF_CLK_M__L5_N1));
   SDFFRQX2M \regArr_reg[6][1]  (.SI(\regArr[6][0] ), 
	.SE(n370), 
	.RN(RST), 
	.Q(\regArr[6][1] ), 
	.D(n235), 
	.CK(REF_CLK_M__L5_N1));
   SDFFRQX2M \regArr_reg[6][0]  (.SI(\regArr[5][7] ), 
	.SE(n373), 
	.RN(RST), 
	.Q(\regArr[6][0] ), 
	.D(n234), 
	.CK(REF_CLK_M__L5_N1));
   SDFFRQX2M \regArr_reg[12][7]  (.SI(\regArr[12][6] ), 
	.SE(n372), 
	.RN(RST), 
	.Q(\regArr[12][7] ), 
	.D(n289), 
	.CK(REF_CLK_M__L5_N5));
   SDFFRQX2M \regArr_reg[12][6]  (.SI(\regArr[12][5] ), 
	.SE(n371), 
	.RN(RST), 
	.Q(\regArr[12][6] ), 
	.D(n288), 
	.CK(REF_CLK_M__L5_N5));
   SDFFRQX2M \regArr_reg[12][5]  (.SI(FE_PHN1_test_si4), 
	.SE(n370), 
	.RN(FE_OFN0_SYNC_RST_0_M), 
	.Q(\regArr[12][5] ), 
	.D(n287), 
	.CK(REF_CLK_M__L5_N5));
   SDFFRQX2M \regArr_reg[12][4]  (.SI(\regArr[12][3] ), 
	.SE(n373), 
	.RN(FE_OFN0_SYNC_RST_0_M), 
	.Q(\regArr[12][4] ), 
	.D(n286), 
	.CK(CLK));
   SDFFRQX2M \regArr_reg[12][3]  (.SI(\regArr[12][2] ), 
	.SE(n372), 
	.RN(FE_OFN0_SYNC_RST_0_M), 
	.Q(\regArr[12][3] ), 
	.D(n285), 
	.CK(CLK));
   SDFFRQX2M \regArr_reg[12][2]  (.SI(\regArr[12][1] ), 
	.SE(n371), 
	.RN(RST), 
	.Q(\regArr[12][2] ), 
	.D(n284), 
	.CK(CLK));
   SDFFRQX2M \regArr_reg[12][1]  (.SI(\regArr[12][0] ), 
	.SE(n370), 
	.RN(RST), 
	.Q(\regArr[12][1] ), 
	.D(n283), 
	.CK(CLK));
   SDFFRQX2M \regArr_reg[12][0]  (.SI(\regArr[11][7] ), 
	.SE(n373), 
	.RN(RST), 
	.Q(\regArr[12][0] ), 
	.D(n282), 
	.CK(CLK));
   SDFFRQX2M \regArr_reg[8][7]  (.SI(\regArr[8][6] ), 
	.SE(n372), 
	.RN(RST), 
	.Q(\regArr[8][7] ), 
	.D(n257), 
	.CK(REF_CLK_M__L5_N2));
   SDFFRQX2M \regArr_reg[8][6]  (.SI(\regArr[8][5] ), 
	.SE(n371), 
	.RN(FE_OFN1_SYNC_RST_0_M), 
	.Q(\regArr[8][6] ), 
	.D(n256), 
	.CK(REF_CLK_M__L5_N2));
   SDFFRQX2M \regArr_reg[8][5]  (.SI(\regArr[8][4] ), 
	.SE(n370), 
	.RN(FE_OFN1_SYNC_RST_0_M), 
	.Q(\regArr[8][5] ), 
	.D(n255), 
	.CK(REF_CLK_M__L5_N3));
   SDFFRQX2M \regArr_reg[8][4]  (.SI(\regArr[8][3] ), 
	.SE(n373), 
	.RN(FE_OFN1_SYNC_RST_0_M), 
	.Q(\regArr[8][4] ), 
	.D(n254), 
	.CK(REF_CLK_M__L5_N3));
   SDFFRQX2M \regArr_reg[8][3]  (.SI(\regArr[8][2] ), 
	.SE(n372), 
	.RN(FE_OFN1_SYNC_RST_0_M), 
	.Q(\regArr[8][3] ), 
	.D(n253), 
	.CK(REF_CLK_M__L5_N3));
   SDFFRQX2M \regArr_reg[8][2]  (.SI(\regArr[8][1] ), 
	.SE(n371), 
	.RN(RST), 
	.Q(\regArr[8][2] ), 
	.D(n252), 
	.CK(REF_CLK_M__L5_N3));
   SDFFRQX2M \regArr_reg[8][1]  (.SI(\regArr[8][0] ), 
	.SE(n370), 
	.RN(RST), 
	.Q(\regArr[8][1] ), 
	.D(n251), 
	.CK(REF_CLK_M__L5_N1));
   SDFFRQX2M \regArr_reg[8][0]  (.SI(\regArr[7][7] ), 
	.SE(n373), 
	.RN(RST), 
	.Q(\regArr[8][0] ), 
	.D(n250), 
	.CK(REF_CLK_M__L5_N1));
   SDFFRQX2M \regArr_reg[4][7]  (.SI(\regArr[4][6] ), 
	.SE(n372), 
	.RN(RST), 
	.Q(\regArr[4][7] ), 
	.D(n225), 
	.CK(CLK));
   SDFFRQX2M \regArr_reg[4][6]  (.SI(\regArr[4][5] ), 
	.SE(n371), 
	.RN(RST), 
	.Q(\regArr[4][6] ), 
	.D(n224), 
	.CK(CLK));
   SDFFRQX2M \regArr_reg[4][5]  (.SI(\regArr[4][4] ), 
	.SE(n370), 
	.RN(FE_OFN0_SYNC_RST_0_M), 
	.Q(\regArr[4][5] ), 
	.D(n223), 
	.CK(CLK));
   SDFFRQX2M \regArr_reg[4][4]  (.SI(\regArr[4][3] ), 
	.SE(n373), 
	.RN(FE_OFN0_SYNC_RST_0_M), 
	.Q(\regArr[4][4] ), 
	.D(n222), 
	.CK(REF_CLK_M__L5_N1));
   SDFFRQX2M \regArr_reg[4][3]  (.SI(\regArr[4][2] ), 
	.SE(n372), 
	.RN(FE_OFN0_SYNC_RST_0_M), 
	.Q(\regArr[4][3] ), 
	.D(n221), 
	.CK(REF_CLK_M__L5_N1));
   SDFFRQX2M \regArr_reg[4][2]  (.SI(\regArr[4][1] ), 
	.SE(n371), 
	.RN(RST), 
	.Q(\regArr[4][2] ), 
	.D(n220), 
	.CK(REF_CLK_M__L5_N1));
   SDFFRQX2M \regArr_reg[4][1]  (.SI(\regArr[4][0] ), 
	.SE(n370), 
	.RN(RST), 
	.Q(\regArr[4][1] ), 
	.D(n219), 
	.CK(REF_CLK_M__L5_N1));
   SDFFRQX2M \regArr_reg[4][0]  (.SI(REG3[7]), 
	.SE(n373), 
	.RN(RST), 
	.Q(\regArr[4][0] ), 
	.D(n218), 
	.CK(CLK));
   SDFFRQX2M \regArr_reg[3][0]  (.SI(REG2[7]), 
	.SE(n372), 
	.RN(RST), 
	.Q(REG3[0]), 
	.D(n210), 
	.CK(REF_CLK_M__L5_N2));
   SDFFRQX2M \RdData_reg[7]  (.SI(RdData[6]), 
	.SE(n371), 
	.RN(FE_OFN1_SYNC_RST_0_M), 
	.Q(RdData[7]), 
	.D(n184), 
	.CK(REF_CLK_M__L5_N2));
   SDFFRQX2M \RdData_reg[6]  (.SI(RdData[5]), 
	.SE(n370), 
	.RN(FE_OFN1_SYNC_RST_0_M), 
	.Q(RdData[6]), 
	.D(n183), 
	.CK(REF_CLK_M__L5_N2));
   SDFFRQX2M \RdData_reg[5]  (.SI(RdData[4]), 
	.SE(n373), 
	.RN(FE_OFN1_SYNC_RST_0_M), 
	.Q(RdData[5]), 
	.D(n182), 
	.CK(REF_CLK_M__L5_N2));
   SDFFRQX2M \RdData_reg[4]  (.SI(RdData[3]), 
	.SE(n372), 
	.RN(FE_OFN1_SYNC_RST_0_M), 
	.Q(RdData[4]), 
	.D(n181), 
	.CK(REF_CLK_M__L5_N2));
   SDFFRQX2M \RdData_reg[3]  (.SI(RdData[2]), 
	.SE(n371), 
	.RN(FE_OFN1_SYNC_RST_0_M), 
	.Q(RdData[3]), 
	.D(n180), 
	.CK(REF_CLK_M__L5_N2));
   SDFFRQX2M \RdData_reg[2]  (.SI(RdData[1]), 
	.SE(n370), 
	.RN(FE_OFN1_SYNC_RST_0_M), 
	.Q(RdData[2]), 
	.D(n179), 
	.CK(REF_CLK_M__L5_N2));
   SDFFRQX2M \RdData_reg[1]  (.SI(RdData[0]), 
	.SE(n373), 
	.RN(RST), 
	.Q(RdData[1]), 
	.D(n178), 
	.CK(REF_CLK_M__L5_N2));
   SDFFRQX2M \RdData_reg[0]  (.SI(RdData_VLD), 
	.SE(n372), 
	.RN(FE_OFN1_SYNC_RST_0_M), 
	.Q(RdData[0]), 
	.D(n177), 
	.CK(REF_CLK_M__L5_N7));
   SDFFRQX2M \regArr_reg[1][6]  (.SI(REG1[5]), 
	.SE(n371), 
	.RN(FE_OFN1_SYNC_RST_0_M), 
	.Q(REG1[6]), 
	.D(n200), 
	.CK(REF_CLK_M__L5_N2));
   SDFFRQX2M \regArr_reg[0][7]  (.SI(REG0[6]), 
	.SE(n370), 
	.RN(FE_OFN1_SYNC_RST_0_M), 
	.Q(REG0[7]), 
	.D(n193), 
	.CK(REF_CLK_M__L5_N3));
   SDFFRQX2M \regArr_reg[0][6]  (.SI(REG0[5]), 
	.SE(n373), 
	.RN(FE_OFN1_SYNC_RST_0_M), 
	.Q(REG0[6]), 
	.D(n192), 
	.CK(REF_CLK_M__L5_N3));
   SDFFRQX2M \regArr_reg[0][5]  (.SI(REG0[4]), 
	.SE(n372), 
	.RN(FE_OFN1_SYNC_RST_0_M), 
	.Q(REG0[5]), 
	.D(n191), 
	.CK(REF_CLK_M__L5_N3));
   SDFFRQX2M \regArr_reg[0][4]  (.SI(REG0[3]), 
	.SE(n371), 
	.RN(FE_OFN1_SYNC_RST_0_M), 
	.Q(REG0[4]), 
	.D(n190), 
	.CK(REF_CLK_M__L5_N3));
   SDFFRQX2M \regArr_reg[0][3]  (.SI(REG0[2]), 
	.SE(n370), 
	.RN(FE_OFN1_SYNC_RST_0_M), 
	.Q(REG0[3]), 
	.D(n189), 
	.CK(REF_CLK_M__L5_N3));
   SDFFRQX2M \regArr_reg[0][2]  (.SI(REG0[1]), 
	.SE(n373), 
	.RN(FE_OFN1_SYNC_RST_0_M), 
	.Q(REG0[2]), 
	.D(n188), 
	.CK(REF_CLK_M__L5_N3));
   SDFFRQX2M \regArr_reg[0][1]  (.SI(REG0[0]), 
	.SE(n372), 
	.RN(FE_OFN1_SYNC_RST_0_M), 
	.Q(REG0[1]), 
	.D(n187), 
	.CK(REF_CLK_M__L5_N3));
   SDFFRQX2M \regArr_reg[0][0]  (.SI(RdData[7]), 
	.SE(n371), 
	.RN(FE_OFN1_SYNC_RST_0_M), 
	.Q(REG0[0]), 
	.D(n186), 
	.CK(REF_CLK_M__L5_N2));
   SDFFRQX2M \regArr_reg[1][1]  (.SI(REG1[0]), 
	.SE(n370), 
	.RN(FE_OFN1_SYNC_RST_0_M), 
	.Q(REG1[1]), 
	.D(n195), 
	.CK(REF_CLK_M__L5_N3));
   SDFFRQX2M \regArr_reg[1][5]  (.SI(REG1[4]), 
	.SE(n373), 
	.RN(FE_OFN1_SYNC_RST_0_M), 
	.Q(REG1[5]), 
	.D(n199), 
	.CK(REF_CLK_M__L5_N2));
   SDFFRQX2M \regArr_reg[1][4]  (.SI(REG1[3]), 
	.SE(n372), 
	.RN(FE_OFN1_SYNC_RST_0_M), 
	.Q(REG1[4]), 
	.D(n198), 
	.CK(REF_CLK_M__L5_N3));
   SDFFRQX2M \regArr_reg[1][7]  (.SI(REG1[6]), 
	.SE(n371), 
	.RN(FE_OFN1_SYNC_RST_0_M), 
	.Q(REG1[7]), 
	.D(n201), 
	.CK(REF_CLK_M__L5_N2));
   SDFFRQX2M \regArr_reg[1][3]  (.SI(REG1[2]), 
	.SE(n370), 
	.RN(FE_OFN1_SYNC_RST_0_M), 
	.Q(REG1[3]), 
	.D(n197), 
	.CK(REF_CLK_M__L5_N3));
   SDFFRQX2M \regArr_reg[1][2]  (.SI(REG1[1]), 
	.SE(n373), 
	.RN(FE_OFN1_SYNC_RST_0_M), 
	.Q(REG1[2]), 
	.D(n196), 
	.CK(REF_CLK_M__L5_N3));
   SDFFRQX2M \regArr_reg[1][0]  (.SI(REG0[7]), 
	.SE(n372), 
	.RN(FE_OFN1_SYNC_RST_0_M), 
	.Q(REG1[0]), 
	.D(n194), 
	.CK(REF_CLK_M__L5_N3));
   SDFFRQX2M RdData_VLD_reg (.SI(test_si1), 
	.SE(n371), 
	.RN(FE_OFN1_SYNC_RST_0_M), 
	.Q(RdData_VLD), 
	.D(n185), 
	.CK(REF_CLK_M__L5_N7));
   SDFFRQX2M \regArr_reg[3][6]  (.SI(REG3[5]), 
	.SE(n370), 
	.RN(RST), 
	.Q(REG3[6]), 
	.D(n216), 
	.CK(CLK));
   SDFFRQX2M \regArr_reg[3][7]  (.SI(REG3[6]), 
	.SE(n373), 
	.RN(RST), 
	.Q(REG3[7]), 
	.D(n217), 
	.CK(CLK));
   SDFFSQX2M \regArr_reg[3][5]  (.SN(RST), 
	.SI(REG3[4]), 
	.SE(test_se), 
	.Q(REG3[5]), 
	.D(n215), 
	.CK(CLK));
   SDFFRQX2M \regArr_reg[2][1]  (.SI(REG2[0]), 
	.SE(n372), 
	.RN(FE_OFN1_SYNC_RST_0_M), 
	.Q(REG2[1]), 
	.D(n203), 
	.CK(REF_CLK_M__L5_N2));
   SDFFSQX2M \regArr_reg[2][0]  (.SN(FE_OFN1_SYNC_RST_0_M), 
	.SI(FE_PHN3_test_si3), 
	.SE(n370), 
	.Q(REG2[0]), 
	.D(n202), 
	.CK(REF_CLK_M__L5_N2));
   SDFFRQX2M \regArr_reg[3][4]  (.SI(REG3[3]), 
	.SE(n371), 
	.RN(RST), 
	.Q(REG3[4]), 
	.D(n214), 
	.CK(REF_CLK_M__L5_N2));
   SDFFRQX2M \regArr_reg[3][2]  (.SI(REG3[1]), 
	.SE(n370), 
	.RN(FE_OFN1_SYNC_RST_0_M), 
	.Q(REG3[2]), 
	.D(n212), 
	.CK(REF_CLK_M__L5_N2));
   SDFFRQX2M \regArr_reg[3][3]  (.SI(REG3[2]), 
	.SE(n373), 
	.RN(RST), 
	.Q(REG3[3]), 
	.D(n213), 
	.CK(REF_CLK_M__L5_N7));
   SDFFRQX2M \regArr_reg[3][1]  (.SI(REG3[0]), 
	.SE(n372), 
	.RN(RST), 
	.Q(REG3[1]), 
	.D(n211), 
	.CK(REF_CLK_M__L5_N2));
   SDFFRQX2M \regArr_reg[2][4]  (.SI(REG2[3]), 
	.SE(n371), 
	.RN(FE_OFN1_SYNC_RST_0_M), 
	.Q(REG2[4]), 
	.D(n206), 
	.CK(REF_CLK_M__L5_N2));
   SDFFRQX2M \regArr_reg[2][3]  (.SI(REG2[2]), 
	.SE(n370), 
	.RN(FE_OFN1_SYNC_RST_0_M), 
	.Q(REG2[3]), 
	.D(n205), 
	.CK(REF_CLK_M__L5_N2));
   SDFFRQX2M \regArr_reg[2][5]  (.SI(REG2[4]), 
	.SE(n373), 
	.RN(FE_OFN1_SYNC_RST_0_M), 
	.Q(REG2[5]), 
	.D(n207), 
	.CK(REF_CLK_M__L5_N7));
   SDFFRQX2M \regArr_reg[2][6]  (.SI(REG2[5]), 
	.SE(n372), 
	.RN(FE_OFN1_SYNC_RST_0_M), 
	.Q(REG2[6]), 
	.D(n208), 
	.CK(REF_CLK_M__L5_N7));
   SDFFRQX2M \regArr_reg[2][2]  (.SI(REG2[1]), 
	.SE(n371), 
	.RN(FE_OFN1_SYNC_RST_0_M), 
	.Q(REG2[2]), 
	.D(n204), 
	.CK(REF_CLK_M__L5_N2));
   SDFFSQX1M \regArr_reg[2][7]  (.SN(FE_OFN1_SYNC_RST_0_M), 
	.SI(REG2[6]), 
	.SE(n373), 
	.Q(REG2[7]), 
	.D(n209), 
	.CK(REF_CLK_M__L5_N7));
   NOR2X2M U141 (.Y(n157), 
	.B(N12), 
	.A(n341));
   NOR2X2M U142 (.Y(n152), 
	.B(N12), 
	.A(N11));
   NOR2BX2M U143 (.Y(n160), 
	.B(N11), 
	.AN(N12));
   NOR2BX2M U144 (.Y(n163), 
	.B(n341), 
	.AN(N12));
   INVX2M U145 (.Y(n365), 
	.A(WrData[6]));
   INVX2M U146 (.Y(n364), 
	.A(WrData[5]));
   INVX4M U147 (.Y(n339), 
	.A(n340));
   INVX4M U148 (.Y(n338), 
	.A(n340));
   INVX2M U150 (.Y(n336), 
	.A(n341));
   INVX2M U151 (.Y(n357), 
	.A(n149));
   NOR2BX2M U152 (.Y(n153), 
	.B(n338), 
	.AN(n164));
   NOR2BX2M U153 (.Y(n155), 
	.B(n340), 
	.AN(n164));
   NOR2BX2M U154 (.Y(n167), 
	.B(n338), 
	.AN(n175));
   NOR2BX2M U155 (.Y(n169), 
	.B(n340), 
	.AN(n175));
   NAND2X2M U156 (.Y(n154), 
	.B(n152), 
	.A(n155));
   NAND2X2M U157 (.Y(n166), 
	.B(n152), 
	.A(n167));
   NAND2X2M U158 (.Y(n168), 
	.B(n152), 
	.A(n169));
   NAND2X2M U159 (.Y(n170), 
	.B(n157), 
	.A(n167));
   NAND2X2M U160 (.Y(n171), 
	.B(n157), 
	.A(n169));
   NAND2X2M U161 (.Y(n156), 
	.B(n153), 
	.A(n157));
   NAND2X2M U162 (.Y(n172), 
	.B(n160), 
	.A(n167));
   NAND2X2M U163 (.Y(n173), 
	.B(n160), 
	.A(n169));
   NAND2X2M U164 (.Y(n174), 
	.B(n163), 
	.A(n167));
   NAND2X2M U165 (.Y(n176), 
	.B(n163), 
	.A(n169));
   NAND2X2M U166 (.Y(n158), 
	.B(n155), 
	.A(n157));
   NAND2X2M U167 (.Y(n159), 
	.B(n153), 
	.A(n160));
   NAND2X2M U168 (.Y(n161), 
	.B(n155), 
	.A(n160));
   NAND2X2M U169 (.Y(n162), 
	.B(n153), 
	.A(n163));
   NAND2X2M U170 (.Y(n165), 
	.B(n155), 
	.A(n163));
   NAND2X2M U171 (.Y(n151), 
	.B(n153), 
	.A(n152));
   NAND2BX2M U172 (.Y(n149), 
	.B(RdEn), 
	.AN(WrEn));
   NOR2BX2M U173 (.Y(n150), 
	.B(RdEn), 
	.AN(WrEn));
   NOR2BX2M U184 (.Y(n164), 
	.B(N13), 
	.AN(n150));
   AND2X2M U185 (.Y(n175), 
	.B(n150), 
	.A(N13));
   INVX2M U186 (.Y(n340), 
	.A(N10));
   INVX2M U187 (.Y(n341), 
	.A(N11));
   INVX2M U188 (.Y(n363), 
	.A(WrData[0]));
   INVX2M U189 (.Y(n362), 
	.A(WrData[1]));
   INVX2M U190 (.Y(n361), 
	.A(WrData[2]));
   INVX2M U191 (.Y(n360), 
	.A(WrData[3]));
   INVX2M U192 (.Y(n359), 
	.A(WrData[4]));
   INVX2M U193 (.Y(n358), 
	.A(WrData[7]));
   OAI2BB2X1M U199 (.Y(n194), 
	.B1(n154), 
	.B0(n363), 
	.A1N(n154), 
	.A0N(REG1[0]));
   OAI2BB2X1M U200 (.Y(n195), 
	.B1(n154), 
	.B0(n362), 
	.A1N(n154), 
	.A0N(REG1[1]));
   OAI2BB2X1M U201 (.Y(n196), 
	.B1(n154), 
	.B0(n361), 
	.A1N(n154), 
	.A0N(REG1[2]));
   OAI2BB2X1M U202 (.Y(n197), 
	.B1(n154), 
	.B0(n360), 
	.A1N(n154), 
	.A0N(REG1[3]));
   OAI2BB2X1M U203 (.Y(n198), 
	.B1(n154), 
	.B0(n359), 
	.A1N(n154), 
	.A0N(REG1[4]));
   OAI2BB2X1M U204 (.Y(n199), 
	.B1(n154), 
	.B0(n364), 
	.A1N(n154), 
	.A0N(REG1[5]));
   OAI2BB2X1M U205 (.Y(n200), 
	.B1(n154), 
	.B0(n365), 
	.A1N(n154), 
	.A0N(REG1[6]));
   OAI2BB2X1M U206 (.Y(n201), 
	.B1(n154), 
	.B0(n358), 
	.A1N(n154), 
	.A0N(REG1[7]));
   OAI2BB2X1M U207 (.Y(n250), 
	.B1(n166), 
	.B0(n363), 
	.A1N(n166), 
	.A0N(\regArr[8][0] ));
   OAI2BB2X1M U208 (.Y(n251), 
	.B1(n166), 
	.B0(n362), 
	.A1N(n166), 
	.A0N(\regArr[8][1] ));
   OAI2BB2X1M U209 (.Y(n252), 
	.B1(n166), 
	.B0(n361), 
	.A1N(n166), 
	.A0N(\regArr[8][2] ));
   OAI2BB2X1M U210 (.Y(n253), 
	.B1(n166), 
	.B0(n360), 
	.A1N(n166), 
	.A0N(\regArr[8][3] ));
   OAI2BB2X1M U211 (.Y(n254), 
	.B1(n166), 
	.B0(n359), 
	.A1N(n166), 
	.A0N(\regArr[8][4] ));
   OAI2BB2X1M U212 (.Y(n255), 
	.B1(n166), 
	.B0(n364), 
	.A1N(n166), 
	.A0N(\regArr[8][5] ));
   OAI2BB2X1M U213 (.Y(n256), 
	.B1(n166), 
	.B0(n365), 
	.A1N(n166), 
	.A0N(\regArr[8][6] ));
   OAI2BB2X1M U214 (.Y(n257), 
	.B1(n166), 
	.B0(n358), 
	.A1N(n166), 
	.A0N(\regArr[8][7] ));
   OAI2BB2X1M U215 (.Y(n258), 
	.B1(n168), 
	.B0(n363), 
	.A1N(n168), 
	.A0N(\regArr[9][0] ));
   OAI2BB2X1M U216 (.Y(n259), 
	.B1(n168), 
	.B0(n362), 
	.A1N(n168), 
	.A0N(\regArr[9][1] ));
   OAI2BB2X1M U217 (.Y(n260), 
	.B1(n168), 
	.B0(n361), 
	.A1N(n168), 
	.A0N(\regArr[9][2] ));
   OAI2BB2X1M U218 (.Y(n261), 
	.B1(n168), 
	.B0(n360), 
	.A1N(n168), 
	.A0N(\regArr[9][3] ));
   OAI2BB2X1M U219 (.Y(n262), 
	.B1(n168), 
	.B0(n359), 
	.A1N(n168), 
	.A0N(\regArr[9][4] ));
   OAI2BB2X1M U220 (.Y(n263), 
	.B1(n168), 
	.B0(n364), 
	.A1N(n168), 
	.A0N(\regArr[9][5] ));
   OAI2BB2X1M U221 (.Y(n264), 
	.B1(n168), 
	.B0(n365), 
	.A1N(n168), 
	.A0N(\regArr[9][6] ));
   OAI2BB2X1M U222 (.Y(n265), 
	.B1(n168), 
	.B0(n358), 
	.A1N(n168), 
	.A0N(\regArr[9][7] ));
   OAI2BB2X1M U223 (.Y(n266), 
	.B1(n170), 
	.B0(n363), 
	.A1N(n170), 
	.A0N(\regArr[10][0] ));
   OAI2BB2X1M U224 (.Y(n267), 
	.B1(n170), 
	.B0(n362), 
	.A1N(n170), 
	.A0N(\regArr[10][1] ));
   OAI2BB2X1M U225 (.Y(n268), 
	.B1(n170), 
	.B0(n361), 
	.A1N(n170), 
	.A0N(\regArr[10][2] ));
   OAI2BB2X1M U226 (.Y(n269), 
	.B1(n170), 
	.B0(n360), 
	.A1N(n170), 
	.A0N(\regArr[10][3] ));
   OAI2BB2X1M U227 (.Y(n270), 
	.B1(n170), 
	.B0(n359), 
	.A1N(n170), 
	.A0N(\regArr[10][4] ));
   OAI2BB2X1M U228 (.Y(n271), 
	.B1(n170), 
	.B0(n364), 
	.A1N(n170), 
	.A0N(\regArr[10][5] ));
   OAI2BB2X1M U229 (.Y(n272), 
	.B1(n170), 
	.B0(n365), 
	.A1N(n170), 
	.A0N(\regArr[10][6] ));
   OAI2BB2X1M U230 (.Y(n273), 
	.B1(n170), 
	.B0(n358), 
	.A1N(n170), 
	.A0N(\regArr[10][7] ));
   OAI2BB2X1M U231 (.Y(n274), 
	.B1(n171), 
	.B0(n363), 
	.A1N(n171), 
	.A0N(\regArr[11][0] ));
   OAI2BB2X1M U232 (.Y(n275), 
	.B1(n171), 
	.B0(n362), 
	.A1N(n171), 
	.A0N(\regArr[11][1] ));
   OAI2BB2X1M U233 (.Y(n276), 
	.B1(n171), 
	.B0(n361), 
	.A1N(n171), 
	.A0N(\regArr[11][2] ));
   OAI2BB2X1M U234 (.Y(n277), 
	.B1(n171), 
	.B0(n360), 
	.A1N(n171), 
	.A0N(\regArr[11][3] ));
   OAI2BB2X1M U235 (.Y(n278), 
	.B1(n171), 
	.B0(n359), 
	.A1N(n171), 
	.A0N(\regArr[11][4] ));
   OAI2BB2X1M U236 (.Y(n279), 
	.B1(n171), 
	.B0(n364), 
	.A1N(n171), 
	.A0N(\regArr[11][5] ));
   OAI2BB2X1M U237 (.Y(n280), 
	.B1(n171), 
	.B0(n365), 
	.A1N(n171), 
	.A0N(\regArr[11][6] ));
   OAI2BB2X1M U238 (.Y(n281), 
	.B1(n171), 
	.B0(n358), 
	.A1N(n171), 
	.A0N(\regArr[11][7] ));
   OAI2BB2X1M U239 (.Y(n282), 
	.B1(n172), 
	.B0(n363), 
	.A1N(n172), 
	.A0N(\regArr[12][0] ));
   OAI2BB2X1M U240 (.Y(n283), 
	.B1(n172), 
	.B0(n362), 
	.A1N(n172), 
	.A0N(\regArr[12][1] ));
   OAI2BB2X1M U241 (.Y(n284), 
	.B1(n172), 
	.B0(n361), 
	.A1N(n172), 
	.A0N(\regArr[12][2] ));
   OAI2BB2X1M U242 (.Y(n285), 
	.B1(n172), 
	.B0(n360), 
	.A1N(n172), 
	.A0N(\regArr[12][3] ));
   OAI2BB2X1M U243 (.Y(n286), 
	.B1(n172), 
	.B0(n359), 
	.A1N(n172), 
	.A0N(\regArr[12][4] ));
   OAI2BB2X1M U244 (.Y(n287), 
	.B1(n172), 
	.B0(n364), 
	.A1N(n172), 
	.A0N(\regArr[12][5] ));
   OAI2BB2X1M U245 (.Y(n288), 
	.B1(n172), 
	.B0(n365), 
	.A1N(n172), 
	.A0N(\regArr[12][6] ));
   OAI2BB2X1M U246 (.Y(n289), 
	.B1(n172), 
	.B0(n358), 
	.A1N(n172), 
	.A0N(\regArr[12][7] ));
   OAI2BB2X1M U247 (.Y(n290), 
	.B1(n173), 
	.B0(n363), 
	.A1N(n173), 
	.A0N(\regArr[13][0] ));
   OAI2BB2X1M U248 (.Y(n291), 
	.B1(n173), 
	.B0(n362), 
	.A1N(n173), 
	.A0N(\regArr[13][1] ));
   OAI2BB2X1M U249 (.Y(n292), 
	.B1(n173), 
	.B0(n361), 
	.A1N(n173), 
	.A0N(\regArr[13][2] ));
   OAI2BB2X1M U250 (.Y(n293), 
	.B1(n173), 
	.B0(n360), 
	.A1N(n173), 
	.A0N(\regArr[13][3] ));
   OAI2BB2X1M U251 (.Y(n294), 
	.B1(n173), 
	.B0(n359), 
	.A1N(n173), 
	.A0N(\regArr[13][4] ));
   OAI2BB2X1M U252 (.Y(n295), 
	.B1(n173), 
	.B0(n364), 
	.A1N(n173), 
	.A0N(\regArr[13][5] ));
   OAI2BB2X1M U253 (.Y(n296), 
	.B1(n173), 
	.B0(n365), 
	.A1N(n173), 
	.A0N(\regArr[13][6] ));
   OAI2BB2X1M U254 (.Y(n297), 
	.B1(n173), 
	.B0(n358), 
	.A1N(n173), 
	.A0N(\regArr[13][7] ));
   OAI2BB2X1M U255 (.Y(n298), 
	.B1(n174), 
	.B0(n363), 
	.A1N(n174), 
	.A0N(\regArr[14][0] ));
   OAI2BB2X1M U256 (.Y(n299), 
	.B1(n174), 
	.B0(n362), 
	.A1N(n174), 
	.A0N(\regArr[14][1] ));
   OAI2BB2X1M U257 (.Y(n300), 
	.B1(n174), 
	.B0(n361), 
	.A1N(n174), 
	.A0N(\regArr[14][2] ));
   OAI2BB2X1M U258 (.Y(n301), 
	.B1(n174), 
	.B0(n360), 
	.A1N(n174), 
	.A0N(\regArr[14][3] ));
   OAI2BB2X1M U259 (.Y(n302), 
	.B1(n174), 
	.B0(n359), 
	.A1N(n174), 
	.A0N(\regArr[14][4] ));
   OAI2BB2X1M U260 (.Y(n303), 
	.B1(n174), 
	.B0(n364), 
	.A1N(n174), 
	.A0N(\regArr[14][5] ));
   OAI2BB2X1M U261 (.Y(n304), 
	.B1(n174), 
	.B0(n365), 
	.A1N(n174), 
	.A0N(\regArr[14][6] ));
   OAI2BB2X1M U262 (.Y(n305), 
	.B1(n174), 
	.B0(n358), 
	.A1N(n174), 
	.A0N(\regArr[14][7] ));
   OAI2BB2X1M U263 (.Y(n306), 
	.B1(n176), 
	.B0(n363), 
	.A1N(n176), 
	.A0N(\regArr[15][0] ));
   OAI2BB2X1M U264 (.Y(n307), 
	.B1(n176), 
	.B0(n362), 
	.A1N(n176), 
	.A0N(\regArr[15][1] ));
   OAI2BB2X1M U265 (.Y(n308), 
	.B1(n176), 
	.B0(n361), 
	.A1N(n176), 
	.A0N(\regArr[15][2] ));
   OAI2BB2X1M U266 (.Y(n309), 
	.B1(n176), 
	.B0(n360), 
	.A1N(n176), 
	.A0N(\regArr[15][3] ));
   OAI2BB2X1M U267 (.Y(n310), 
	.B1(n176), 
	.B0(n359), 
	.A1N(n176), 
	.A0N(\regArr[15][4] ));
   OAI2BB2X1M U268 (.Y(n311), 
	.B1(n176), 
	.B0(n364), 
	.A1N(n176), 
	.A0N(\regArr[15][5] ));
   OAI2BB2X1M U269 (.Y(n312), 
	.B1(n176), 
	.B0(n365), 
	.A1N(n176), 
	.A0N(\regArr[15][6] ));
   OAI2BB2X1M U270 (.Y(n313), 
	.B1(n176), 
	.B0(n358), 
	.A1N(n176), 
	.A0N(\regArr[15][7] ));
   OAI2BB2X1M U271 (.Y(n202), 
	.B1(n156), 
	.B0(n363), 
	.A1N(n156), 
	.A0N(REG2[0]));
   OAI2BB2X1M U272 (.Y(n209), 
	.B1(n156), 
	.B0(n358), 
	.A1N(n156), 
	.A0N(REG2[7]));
   OAI2BB2X1M U273 (.Y(n215), 
	.B1(n158), 
	.B0(n364), 
	.A1N(n158), 
	.A0N(REG3[5]));
   AO22X1M U274 (.Y(n182), 
	.B1(n149), 
	.B0(RdData[5]), 
	.A1(n357), 
	.A0(N37));
   MX4X1M U275 (.Y(N37), 
	.S1(N12), 
	.S0(N13), 
	.D(n324), 
	.C(n326), 
	.B(n325), 
	.A(n327));
   MX4X1M U276 (.Y(n327), 
	.S1(n336), 
	.S0(N10), 
	.D(REG3[5]), 
	.C(REG2[5]), 
	.B(REG1[5]), 
	.A(REG0[5]));
   MX4X1M U277 (.Y(n325), 
	.S1(n336), 
	.S0(n338), 
	.D(\regArr[11][5] ), 
	.C(\regArr[10][5] ), 
	.B(\regArr[9][5] ), 
	.A(\regArr[8][5] ));
   AO22X1M U278 (.Y(n183), 
	.B1(n149), 
	.B0(RdData[6]), 
	.A1(n357), 
	.A0(N36));
   MX4X1M U279 (.Y(N36), 
	.S1(N12), 
	.S0(N13), 
	.D(n328), 
	.C(n330), 
	.B(n329), 
	.A(n331));
   MX4X1M U280 (.Y(n331), 
	.S1(n336), 
	.S0(N10), 
	.D(REG3[6]), 
	.C(REG2[6]), 
	.B(REG1[6]), 
	.A(REG0[6]));
   MX4X1M U281 (.Y(n329), 
	.S1(n336), 
	.S0(n339), 
	.D(\regArr[11][6] ), 
	.C(\regArr[10][6] ), 
	.B(\regArr[9][6] ), 
	.A(\regArr[8][6] ));
   AO22X1M U282 (.Y(n184), 
	.B1(n149), 
	.B0(RdData[7]), 
	.A1(n357), 
	.A0(N35));
   MX4X1M U283 (.Y(N35), 
	.S1(N12), 
	.S0(N13), 
	.D(n332), 
	.C(n334), 
	.B(n333), 
	.A(n335));
   MX4X1M U284 (.Y(n335), 
	.S1(n336), 
	.S0(N10), 
	.D(REG3[7]), 
	.C(REG2[7]), 
	.B(REG1[7]), 
	.A(REG0[7]));
   MX4X1M U285 (.Y(n333), 
	.S1(n336), 
	.S0(N10), 
	.D(\regArr[11][7] ), 
	.C(\regArr[10][7] ), 
	.B(\regArr[9][7] ), 
	.A(\regArr[8][7] ));
   MX4X1M U286 (.Y(n146), 
	.S1(N11), 
	.S0(n339), 
	.D(REG3[1]), 
	.C(REG2[1]), 
	.B(REG1[1]), 
	.A(REG0[1]));
   MX4X1M U287 (.Y(n141), 
	.S1(N11), 
	.S0(n338), 
	.D(\regArr[7][0] ), 
	.C(\regArr[6][0] ), 
	.B(\regArr[5][0] ), 
	.A(\regArr[4][0] ));
   MX4X1M U288 (.Y(n145), 
	.S1(N11), 
	.S0(n339), 
	.D(\regArr[7][1] ), 
	.C(\regArr[6][1] ), 
	.B(\regArr[5][1] ), 
	.A(\regArr[4][1] ));
   MX4X1M U289 (.Y(n314), 
	.S1(N11), 
	.S0(n339), 
	.D(\regArr[7][2] ), 
	.C(\regArr[6][2] ), 
	.B(\regArr[5][2] ), 
	.A(\regArr[4][2] ));
   MX4X1M U290 (.Y(n318), 
	.S1(N11), 
	.S0(n339), 
	.D(\regArr[7][3] ), 
	.C(\regArr[6][3] ), 
	.B(\regArr[5][3] ), 
	.A(\regArr[4][3] ));
   MX4X1M U291 (.Y(n322), 
	.S1(N11), 
	.S0(n339), 
	.D(\regArr[7][4] ), 
	.C(\regArr[6][4] ), 
	.B(\regArr[5][4] ), 
	.A(\regArr[4][4] ));
   MX4X1M U292 (.Y(n326), 
	.S1(n336), 
	.S0(n338), 
	.D(\regArr[7][5] ), 
	.C(\regArr[6][5] ), 
	.B(\regArr[5][5] ), 
	.A(\regArr[4][5] ));
   MX4X1M U293 (.Y(n330), 
	.S1(n336), 
	.S0(n338), 
	.D(\regArr[7][6] ), 
	.C(\regArr[6][6] ), 
	.B(\regArr[5][6] ), 
	.A(\regArr[4][6] ));
   MX4X1M U294 (.Y(n334), 
	.S1(n336), 
	.S0(n338), 
	.D(\regArr[7][7] ), 
	.C(\regArr[6][7] ), 
	.B(\regArr[5][7] ), 
	.A(\regArr[4][7] ));
   MX4X1M U295 (.Y(n139), 
	.S1(N11), 
	.S0(n338), 
	.D(\regArr[15][0] ), 
	.C(\regArr[14][0] ), 
	.B(\regArr[13][0] ), 
	.A(\regArr[12][0] ));
   MX4X1M U296 (.Y(n147), 
	.S1(n336), 
	.S0(n339), 
	.D(\regArr[15][2] ), 
	.C(\regArr[14][2] ), 
	.B(\regArr[13][2] ), 
	.A(\regArr[12][2] ));
   MX4X1M U297 (.Y(n316), 
	.S1(N11), 
	.S0(n339), 
	.D(\regArr[15][3] ), 
	.C(\regArr[14][3] ), 
	.B(\regArr[13][3] ), 
	.A(\regArr[12][3] ));
   MX4X1M U298 (.Y(n320), 
	.S1(N11), 
	.S0(n339), 
	.D(\regArr[15][4] ), 
	.C(\regArr[14][4] ), 
	.B(\regArr[13][4] ), 
	.A(\regArr[12][4] ));
   MX4X1M U299 (.Y(n324), 
	.S1(n336), 
	.S0(n338), 
	.D(\regArr[15][5] ), 
	.C(\regArr[14][5] ), 
	.B(\regArr[13][5] ), 
	.A(\regArr[12][5] ));
   MX4X1M U300 (.Y(n328), 
	.S1(n336), 
	.S0(n338), 
	.D(\regArr[15][6] ), 
	.C(\regArr[14][6] ), 
	.B(\regArr[13][6] ), 
	.A(\regArr[12][6] ));
   MX4X1M U301 (.Y(n332), 
	.S1(n336), 
	.S0(n338), 
	.D(\regArr[15][7] ), 
	.C(\regArr[14][7] ), 
	.B(\regArr[13][7] ), 
	.A(\regArr[12][7] ));
   AO22X1M U302 (.Y(n177), 
	.B1(n149), 
	.B0(RdData[0]), 
	.A1(n357), 
	.A0(N42));
   MX4X1M U303 (.Y(N42), 
	.S1(N12), 
	.S0(N13), 
	.D(n139), 
	.C(n141), 
	.B(n140), 
	.A(n142));
   MX4X1M U304 (.Y(n142), 
	.S1(N11), 
	.S0(n338), 
	.D(REG3[0]), 
	.C(REG2[0]), 
	.B(REG1[0]), 
	.A(REG0[0]));
   MX4X1M U305 (.Y(n140), 
	.S1(N11), 
	.S0(n338), 
	.D(\regArr[11][0] ), 
	.C(\regArr[10][0] ), 
	.B(\regArr[9][0] ), 
	.A(\regArr[8][0] ));
   AO22X1M U306 (.Y(n178), 
	.B1(n149), 
	.B0(RdData[1]), 
	.A1(n357), 
	.A0(N41));
   MX4X1M U307 (.Y(N41), 
	.S1(N12), 
	.S0(N13), 
	.D(n143), 
	.C(n145), 
	.B(n144), 
	.A(n146));
   MX4X1M U308 (.Y(n144), 
	.S1(N11), 
	.S0(n338), 
	.D(\regArr[11][1] ), 
	.C(\regArr[10][1] ), 
	.B(\regArr[9][1] ), 
	.A(\regArr[8][1] ));
   MX4X1M U309 (.Y(n143), 
	.S1(n336), 
	.S0(n338), 
	.D(\regArr[15][1] ), 
	.C(\regArr[14][1] ), 
	.B(\regArr[13][1] ), 
	.A(\regArr[12][1] ));
   AO22X1M U310 (.Y(n179), 
	.B1(n149), 
	.B0(RdData[2]), 
	.A1(n357), 
	.A0(N40));
   MX4X1M U311 (.Y(N40), 
	.S1(N12), 
	.S0(N13), 
	.D(n147), 
	.C(n314), 
	.B(n148), 
	.A(n315));
   MX4X1M U312 (.Y(n315), 
	.S1(N11), 
	.S0(n339), 
	.D(REG3[2]), 
	.C(REG2[2]), 
	.B(REG1[2]), 
	.A(REG0[2]));
   MX4X1M U313 (.Y(n148), 
	.S1(N11), 
	.S0(n339), 
	.D(\regArr[11][2] ), 
	.C(\regArr[10][2] ), 
	.B(\regArr[9][2] ), 
	.A(\regArr[8][2] ));
   AO22X1M U314 (.Y(n180), 
	.B1(n149), 
	.B0(RdData[3]), 
	.A1(n357), 
	.A0(N39));
   MX4X1M U315 (.Y(N39), 
	.S1(N12), 
	.S0(N13), 
	.D(n316), 
	.C(n318), 
	.B(n317), 
	.A(n319));
   MX4X1M U316 (.Y(n319), 
	.S1(N11), 
	.S0(n339), 
	.D(REG3[3]), 
	.C(REG2[3]), 
	.B(REG1[3]), 
	.A(REG0[3]));
   MX4X1M U317 (.Y(n317), 
	.S1(N11), 
	.S0(n339), 
	.D(\regArr[11][3] ), 
	.C(\regArr[10][3] ), 
	.B(\regArr[9][3] ), 
	.A(\regArr[8][3] ));
   AO22X1M U318 (.Y(n181), 
	.B1(n149), 
	.B0(RdData[4]), 
	.A1(n357), 
	.A0(N38));
   MX4X1M U319 (.Y(N38), 
	.S1(N12), 
	.S0(N13), 
	.D(n320), 
	.C(n322), 
	.B(n321), 
	.A(n323));
   MX4X1M U320 (.Y(n323), 
	.S1(N11), 
	.S0(N10), 
	.D(REG3[4]), 
	.C(REG2[4]), 
	.B(REG1[4]), 
	.A(REG0[4]));
   MX4X1M U321 (.Y(n321), 
	.S1(N11), 
	.S0(n339), 
	.D(\regArr[11][4] ), 
	.C(\regArr[10][4] ), 
	.B(\regArr[9][4] ), 
	.A(\regArr[8][4] ));
   OAI2BB2X1M U322 (.Y(n186), 
	.B1(n363), 
	.B0(n151), 
	.A1N(n151), 
	.A0N(REG0[0]));
   OAI2BB2X1M U323 (.Y(n187), 
	.B1(n362), 
	.B0(n151), 
	.A1N(n151), 
	.A0N(REG0[1]));
   OAI2BB2X1M U324 (.Y(n188), 
	.B1(n361), 
	.B0(n151), 
	.A1N(n151), 
	.A0N(REG0[2]));
   OAI2BB2X1M U325 (.Y(n189), 
	.B1(n360), 
	.B0(n151), 
	.A1N(n151), 
	.A0N(REG0[3]));
   OAI2BB2X1M U326 (.Y(n190), 
	.B1(n359), 
	.B0(n151), 
	.A1N(n151), 
	.A0N(REG0[4]));
   OAI2BB2X1M U327 (.Y(n191), 
	.B1(n364), 
	.B0(n151), 
	.A1N(n151), 
	.A0N(REG0[5]));
   OAI2BB2X1M U328 (.Y(n192), 
	.B1(n365), 
	.B0(n151), 
	.A1N(n151), 
	.A0N(REG0[6]));
   OAI2BB2X1M U329 (.Y(n193), 
	.B1(n358), 
	.B0(n151), 
	.A1N(n151), 
	.A0N(REG0[7]));
   OAI2BB2X1M U330 (.Y(n218), 
	.B1(n159), 
	.B0(n363), 
	.A1N(n159), 
	.A0N(\regArr[4][0] ));
   OAI2BB2X1M U331 (.Y(n219), 
	.B1(n159), 
	.B0(n362), 
	.A1N(n159), 
	.A0N(\regArr[4][1] ));
   OAI2BB2X1M U332 (.Y(n220), 
	.B1(n159), 
	.B0(n361), 
	.A1N(n159), 
	.A0N(\regArr[4][2] ));
   OAI2BB2X1M U333 (.Y(n221), 
	.B1(n159), 
	.B0(n360), 
	.A1N(n159), 
	.A0N(\regArr[4][3] ));
   OAI2BB2X1M U334 (.Y(n222), 
	.B1(n159), 
	.B0(n359), 
	.A1N(n159), 
	.A0N(\regArr[4][4] ));
   OAI2BB2X1M U335 (.Y(n223), 
	.B1(n159), 
	.B0(n364), 
	.A1N(n159), 
	.A0N(\regArr[4][5] ));
   OAI2BB2X1M U336 (.Y(n224), 
	.B1(n159), 
	.B0(n365), 
	.A1N(n159), 
	.A0N(\regArr[4][6] ));
   OAI2BB2X1M U337 (.Y(n225), 
	.B1(n159), 
	.B0(n358), 
	.A1N(n159), 
	.A0N(\regArr[4][7] ));
   OAI2BB2X1M U338 (.Y(n226), 
	.B1(n161), 
	.B0(n363), 
	.A1N(n161), 
	.A0N(\regArr[5][0] ));
   OAI2BB2X1M U339 (.Y(n227), 
	.B1(n161), 
	.B0(n362), 
	.A1N(n161), 
	.A0N(\regArr[5][1] ));
   OAI2BB2X1M U340 (.Y(n228), 
	.B1(n161), 
	.B0(n361), 
	.A1N(n161), 
	.A0N(\regArr[5][2] ));
   OAI2BB2X1M U341 (.Y(n229), 
	.B1(n161), 
	.B0(n360), 
	.A1N(n161), 
	.A0N(\regArr[5][3] ));
   OAI2BB2X1M U342 (.Y(n230), 
	.B1(n161), 
	.B0(n359), 
	.A1N(n161), 
	.A0N(\regArr[5][4] ));
   OAI2BB2X1M U343 (.Y(n231), 
	.B1(n161), 
	.B0(n364), 
	.A1N(n161), 
	.A0N(\regArr[5][5] ));
   OAI2BB2X1M U344 (.Y(n232), 
	.B1(n161), 
	.B0(n365), 
	.A1N(n161), 
	.A0N(\regArr[5][6] ));
   OAI2BB2X1M U345 (.Y(n233), 
	.B1(n161), 
	.B0(n358), 
	.A1N(n161), 
	.A0N(\regArr[5][7] ));
   OAI2BB2X1M U346 (.Y(n234), 
	.B1(n162), 
	.B0(n363), 
	.A1N(n162), 
	.A0N(\regArr[6][0] ));
   OAI2BB2X1M U347 (.Y(n235), 
	.B1(n162), 
	.B0(n362), 
	.A1N(n162), 
	.A0N(\regArr[6][1] ));
   OAI2BB2X1M U348 (.Y(n236), 
	.B1(n162), 
	.B0(n361), 
	.A1N(n162), 
	.A0N(\regArr[6][2] ));
   OAI2BB2X1M U349 (.Y(n237), 
	.B1(n162), 
	.B0(n360), 
	.A1N(n162), 
	.A0N(\regArr[6][3] ));
   OAI2BB2X1M U350 (.Y(n238), 
	.B1(n162), 
	.B0(n359), 
	.A1N(n162), 
	.A0N(\regArr[6][4] ));
   OAI2BB2X1M U351 (.Y(n239), 
	.B1(n162), 
	.B0(n364), 
	.A1N(n162), 
	.A0N(\regArr[6][5] ));
   OAI2BB2X1M U352 (.Y(n240), 
	.B1(n162), 
	.B0(n365), 
	.A1N(n162), 
	.A0N(\regArr[6][6] ));
   OAI2BB2X1M U353 (.Y(n241), 
	.B1(n162), 
	.B0(n358), 
	.A1N(n162), 
	.A0N(\regArr[6][7] ));
   OAI2BB2X1M U354 (.Y(n242), 
	.B1(n165), 
	.B0(n363), 
	.A1N(n165), 
	.A0N(\regArr[7][0] ));
   OAI2BB2X1M U355 (.Y(n243), 
	.B1(n165), 
	.B0(n362), 
	.A1N(n165), 
	.A0N(\regArr[7][1] ));
   OAI2BB2X1M U356 (.Y(n244), 
	.B1(n165), 
	.B0(n361), 
	.A1N(n165), 
	.A0N(\regArr[7][2] ));
   OAI2BB2X1M U357 (.Y(n245), 
	.B1(n165), 
	.B0(n360), 
	.A1N(n165), 
	.A0N(\regArr[7][3] ));
   OAI2BB2X1M U358 (.Y(n246), 
	.B1(n165), 
	.B0(n359), 
	.A1N(n165), 
	.A0N(\regArr[7][4] ));
   OAI2BB2X1M U359 (.Y(n247), 
	.B1(n165), 
	.B0(n364), 
	.A1N(n165), 
	.A0N(\regArr[7][5] ));
   OAI2BB2X1M U360 (.Y(n248), 
	.B1(n165), 
	.B0(n365), 
	.A1N(n165), 
	.A0N(\regArr[7][6] ));
   OAI2BB2X1M U361 (.Y(n249), 
	.B1(n165), 
	.B0(n358), 
	.A1N(n165), 
	.A0N(\regArr[7][7] ));
   OAI2BB2X1M U362 (.Y(n203), 
	.B1(n156), 
	.B0(n362), 
	.A1N(n156), 
	.A0N(REG2[1]));
   OAI2BB2X1M U363 (.Y(n204), 
	.B1(n156), 
	.B0(n361), 
	.A1N(n156), 
	.A0N(REG2[2]));
   OAI2BB2X1M U364 (.Y(n205), 
	.B1(n156), 
	.B0(n360), 
	.A1N(n156), 
	.A0N(REG2[3]));
   OAI2BB2X1M U365 (.Y(n206), 
	.B1(n156), 
	.B0(n359), 
	.A1N(n156), 
	.A0N(REG2[4]));
   OAI2BB2X1M U366 (.Y(n207), 
	.B1(n156), 
	.B0(n364), 
	.A1N(n156), 
	.A0N(REG2[5]));
   OAI2BB2X1M U367 (.Y(n208), 
	.B1(n156), 
	.B0(n365), 
	.A1N(n156), 
	.A0N(REG2[6]));
   OAI2BB2X1M U368 (.Y(n210), 
	.B1(n158), 
	.B0(n363), 
	.A1N(n158), 
	.A0N(REG3[0]));
   OAI2BB2X1M U369 (.Y(n211), 
	.B1(n158), 
	.B0(n362), 
	.A1N(n158), 
	.A0N(REG3[1]));
   OAI2BB2X1M U370 (.Y(n212), 
	.B1(n158), 
	.B0(n361), 
	.A1N(n158), 
	.A0N(REG3[2]));
   OAI2BB2X1M U371 (.Y(n213), 
	.B1(n158), 
	.B0(n360), 
	.A1N(n158), 
	.A0N(REG3[3]));
   OAI2BB2X1M U372 (.Y(n214), 
	.B1(n158), 
	.B0(n359), 
	.A1N(n158), 
	.A0N(REG3[4]));
   OAI2BB2X1M U373 (.Y(n216), 
	.B1(n158), 
	.B0(n365), 
	.A1N(n158), 
	.A0N(REG3[6]));
   OAI2BB2X1M U374 (.Y(n217), 
	.B1(n158), 
	.B0(n358), 
	.A1N(n158), 
	.A0N(REG3[7]));
   OAI2BB1X2M U375 (.Y(n185), 
	.B0(n149), 
	.A1N(n150), 
	.A0N(RdData_VLD));
   BUFX4M U376 (.Y(n370), 
	.A(test_se));
   BUFX4M U377 (.Y(n371), 
	.A(test_se));
   BUFX4M U378 (.Y(n372), 
	.A(test_se));
   BUFX4M U379 (.Y(n373), 
	.A(test_se));
endmodule

module ALU_OPER_WIDTH8_OUT_WIDTH16_DW_div_uns_0 (
	a, 
	b, 
	quotient, 
	remainder, 
	divide_by_0, 
	n134, 
	n136, 
	n138, 
	n143, 
	n142, 
	n151, 
	n150, 
	n149, 
	n148, 
	n147, 
	n146, 
	n145, 
	n139);
   input [7:0] a;
   input [7:0] b;
   output [7:0] quotient;
   output [7:0] remainder;
   output divide_by_0;
   input n134;
   input n136;
   input n138;
   input n143;
   input n142;
   input n151;
   input n150;
   input n149;
   input n148;
   input n147;
   input n146;
   input n145;
   input n139;

   // Internal wires
   wire \u_div/SumTmp[1][0] ;
   wire \u_div/SumTmp[1][1] ;
   wire \u_div/SumTmp[1][2] ;
   wire \u_div/SumTmp[1][3] ;
   wire \u_div/SumTmp[1][4] ;
   wire \u_div/SumTmp[1][5] ;
   wire \u_div/SumTmp[1][6] ;
   wire \u_div/SumTmp[2][0] ;
   wire \u_div/SumTmp[2][1] ;
   wire \u_div/SumTmp[2][2] ;
   wire \u_div/SumTmp[2][3] ;
   wire \u_div/SumTmp[2][4] ;
   wire \u_div/SumTmp[2][5] ;
   wire \u_div/SumTmp[3][0] ;
   wire \u_div/SumTmp[3][1] ;
   wire \u_div/SumTmp[3][2] ;
   wire \u_div/SumTmp[3][3] ;
   wire \u_div/SumTmp[3][4] ;
   wire \u_div/SumTmp[4][0] ;
   wire \u_div/SumTmp[4][1] ;
   wire \u_div/SumTmp[4][2] ;
   wire \u_div/SumTmp[4][3] ;
   wire \u_div/SumTmp[5][0] ;
   wire \u_div/SumTmp[5][1] ;
   wire \u_div/SumTmp[5][2] ;
   wire \u_div/SumTmp[6][0] ;
   wire \u_div/SumTmp[6][1] ;
   wire \u_div/SumTmp[7][0] ;
   wire \u_div/CryTmp[0][1] ;
   wire \u_div/CryTmp[0][2] ;
   wire \u_div/CryTmp[0][3] ;
   wire \u_div/CryTmp[0][4] ;
   wire \u_div/CryTmp[0][5] ;
   wire \u_div/CryTmp[0][6] ;
   wire \u_div/CryTmp[0][7] ;
   wire \u_div/CryTmp[1][1] ;
   wire \u_div/CryTmp[1][2] ;
   wire \u_div/CryTmp[1][3] ;
   wire \u_div/CryTmp[1][4] ;
   wire \u_div/CryTmp[1][5] ;
   wire \u_div/CryTmp[1][6] ;
   wire \u_div/CryTmp[1][7] ;
   wire \u_div/CryTmp[2][1] ;
   wire \u_div/CryTmp[2][2] ;
   wire \u_div/CryTmp[2][3] ;
   wire \u_div/CryTmp[2][4] ;
   wire \u_div/CryTmp[2][5] ;
   wire \u_div/CryTmp[2][6] ;
   wire \u_div/CryTmp[3][1] ;
   wire \u_div/CryTmp[3][2] ;
   wire \u_div/CryTmp[3][3] ;
   wire \u_div/CryTmp[3][4] ;
   wire \u_div/CryTmp[3][5] ;
   wire \u_div/CryTmp[4][1] ;
   wire \u_div/CryTmp[4][2] ;
   wire \u_div/CryTmp[4][3] ;
   wire \u_div/CryTmp[4][4] ;
   wire \u_div/CryTmp[5][1] ;
   wire \u_div/CryTmp[5][2] ;
   wire \u_div/CryTmp[5][3] ;
   wire \u_div/CryTmp[6][1] ;
   wire \u_div/CryTmp[6][2] ;
   wire \u_div/CryTmp[7][1] ;
   wire \u_div/PartRem[1][1] ;
   wire \u_div/PartRem[1][2] ;
   wire \u_div/PartRem[1][3] ;
   wire \u_div/PartRem[1][4] ;
   wire \u_div/PartRem[1][5] ;
   wire \u_div/PartRem[1][6] ;
   wire \u_div/PartRem[1][7] ;
   wire \u_div/PartRem[2][1] ;
   wire \u_div/PartRem[2][2] ;
   wire \u_div/PartRem[2][3] ;
   wire \u_div/PartRem[2][4] ;
   wire \u_div/PartRem[2][5] ;
   wire \u_div/PartRem[2][6] ;
   wire \u_div/PartRem[3][1] ;
   wire \u_div/PartRem[3][2] ;
   wire \u_div/PartRem[3][3] ;
   wire \u_div/PartRem[3][4] ;
   wire \u_div/PartRem[3][5] ;
   wire \u_div/PartRem[4][1] ;
   wire \u_div/PartRem[4][2] ;
   wire \u_div/PartRem[4][3] ;
   wire \u_div/PartRem[4][4] ;
   wire \u_div/PartRem[5][1] ;
   wire \u_div/PartRem[5][2] ;
   wire \u_div/PartRem[5][3] ;
   wire \u_div/PartRem[6][1] ;
   wire \u_div/PartRem[6][2] ;
   wire \u_div/PartRem[7][1] ;
   wire n1;
   wire n2;
   wire n3;
   wire n5;
   wire n7;
   wire n8;
   wire n9;
   wire n10;
   wire n11;
   wire n12;
   wire n13;
   wire n14;
   wire n15;
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire n20;
   wire n21;

   ADDFX2M \u_div/u_fa_PartRem_0_2_5  (.S(\u_div/SumTmp[2][5] ), 
	.CO(\u_div/CryTmp[2][6] ), 
	.CI(\u_div/CryTmp[2][5] ), 
	.B(n13), 
	.A(\u_div/PartRem[3][5] ));
   ADDFX2M \u_div/u_fa_PartRem_0_4_3  (.S(\u_div/SumTmp[4][3] ), 
	.CO(\u_div/CryTmp[4][4] ), 
	.CI(\u_div/CryTmp[4][3] ), 
	.B(n15), 
	.A(\u_div/PartRem[5][3] ));
   ADDFX2M \u_div/u_fa_PartRem_0_5_2  (.S(\u_div/SumTmp[5][2] ), 
	.CO(\u_div/CryTmp[5][3] ), 
	.CI(\u_div/CryTmp[5][2] ), 
	.B(n16), 
	.A(\u_div/PartRem[6][2] ));
   ADDFX2M \u_div/u_fa_PartRem_0_6_1  (.S(\u_div/SumTmp[6][1] ), 
	.CO(\u_div/CryTmp[6][2] ), 
	.CI(\u_div/CryTmp[6][1] ), 
	.B(n17), 
	.A(\u_div/PartRem[7][1] ));
   ADDFX2M \u_div/u_fa_PartRem_0_3_4  (.S(\u_div/SumTmp[3][4] ), 
	.CO(\u_div/CryTmp[3][5] ), 
	.CI(\u_div/CryTmp[3][4] ), 
	.B(n14), 
	.A(\u_div/PartRem[4][4] ));
   ADDFX2M \u_div/u_fa_PartRem_0_0_5  (.CO(\u_div/CryTmp[0][6] ), 
	.CI(\u_div/CryTmp[0][5] ), 
	.B(n13), 
	.A(\u_div/PartRem[1][5] ));
   ADDFX2M \u_div/u_fa_PartRem_0_0_6  (.CO(\u_div/CryTmp[0][7] ), 
	.CI(\u_div/CryTmp[0][6] ), 
	.B(n12), 
	.A(\u_div/PartRem[1][6] ));
   ADDFX2M \u_div/u_fa_PartRem_0_0_7  (.CO(quotient[0]), 
	.CI(\u_div/CryTmp[0][7] ), 
	.B(n11), 
	.A(\u_div/PartRem[1][7] ));
   ADDFX2M \u_div/u_fa_PartRem_0_0_1  (.CO(\u_div/CryTmp[0][2] ), 
	.CI(\u_div/CryTmp[0][1] ), 
	.B(n17), 
	.A(\u_div/PartRem[1][1] ));
   ADDFX2M \u_div/u_fa_PartRem_0_1_1  (.S(\u_div/SumTmp[1][1] ), 
	.CO(\u_div/CryTmp[1][2] ), 
	.CI(\u_div/CryTmp[1][1] ), 
	.B(n17), 
	.A(\u_div/PartRem[2][1] ));
   ADDFX2M \u_div/u_fa_PartRem_0_2_1  (.S(\u_div/SumTmp[2][1] ), 
	.CO(\u_div/CryTmp[2][2] ), 
	.CI(\u_div/CryTmp[2][1] ), 
	.B(n17), 
	.A(\u_div/PartRem[3][1] ));
   ADDFX2M \u_div/u_fa_PartRem_0_3_1  (.S(\u_div/SumTmp[3][1] ), 
	.CO(\u_div/CryTmp[3][2] ), 
	.CI(\u_div/CryTmp[3][1] ), 
	.B(n17), 
	.A(\u_div/PartRem[4][1] ));
   ADDFX2M \u_div/u_fa_PartRem_0_4_1  (.S(\u_div/SumTmp[4][1] ), 
	.CO(\u_div/CryTmp[4][2] ), 
	.CI(\u_div/CryTmp[4][1] ), 
	.B(n17), 
	.A(\u_div/PartRem[5][1] ));
   ADDFX2M \u_div/u_fa_PartRem_0_5_1  (.S(\u_div/SumTmp[5][1] ), 
	.CO(\u_div/CryTmp[5][2] ), 
	.CI(\u_div/CryTmp[5][1] ), 
	.B(n17), 
	.A(\u_div/PartRem[6][1] ));
   ADDFX2M \u_div/u_fa_PartRem_0_0_2  (.CO(\u_div/CryTmp[0][3] ), 
	.CI(\u_div/CryTmp[0][2] ), 
	.B(n16), 
	.A(\u_div/PartRem[1][2] ));
   ADDFX2M \u_div/u_fa_PartRem_0_0_3  (.CO(\u_div/CryTmp[0][4] ), 
	.CI(\u_div/CryTmp[0][3] ), 
	.B(n15), 
	.A(\u_div/PartRem[1][3] ));
   ADDFX2M \u_div/u_fa_PartRem_0_0_4  (.CO(\u_div/CryTmp[0][5] ), 
	.CI(\u_div/CryTmp[0][4] ), 
	.B(n14), 
	.A(\u_div/PartRem[1][4] ));
   ADDFX2M \u_div/u_fa_PartRem_0_1_5  (.S(\u_div/SumTmp[1][5] ), 
	.CO(\u_div/CryTmp[1][6] ), 
	.CI(\u_div/CryTmp[1][5] ), 
	.B(n13), 
	.A(\u_div/PartRem[2][5] ));
   ADDFX2M \u_div/u_fa_PartRem_0_1_4  (.S(\u_div/SumTmp[1][4] ), 
	.CO(\u_div/CryTmp[1][5] ), 
	.CI(\u_div/CryTmp[1][4] ), 
	.B(n14), 
	.A(\u_div/PartRem[2][4] ));
   ADDFX2M \u_div/u_fa_PartRem_0_1_3  (.S(\u_div/SumTmp[1][3] ), 
	.CO(\u_div/CryTmp[1][4] ), 
	.CI(\u_div/CryTmp[1][3] ), 
	.B(n15), 
	.A(\u_div/PartRem[2][3] ));
   ADDFX2M \u_div/u_fa_PartRem_0_2_4  (.S(\u_div/SumTmp[2][4] ), 
	.CO(\u_div/CryTmp[2][5] ), 
	.CI(\u_div/CryTmp[2][4] ), 
	.B(n14), 
	.A(\u_div/PartRem[3][4] ));
   ADDFX2M \u_div/u_fa_PartRem_0_1_2  (.S(\u_div/SumTmp[1][2] ), 
	.CO(\u_div/CryTmp[1][3] ), 
	.CI(\u_div/CryTmp[1][2] ), 
	.B(n16), 
	.A(\u_div/PartRem[2][2] ));
   ADDFX2M \u_div/u_fa_PartRem_0_2_3  (.S(\u_div/SumTmp[2][3] ), 
	.CO(\u_div/CryTmp[2][4] ), 
	.CI(\u_div/CryTmp[2][3] ), 
	.B(n15), 
	.A(\u_div/PartRem[3][3] ));
   ADDFX2M \u_div/u_fa_PartRem_0_2_2  (.S(\u_div/SumTmp[2][2] ), 
	.CO(\u_div/CryTmp[2][3] ), 
	.CI(\u_div/CryTmp[2][2] ), 
	.B(n16), 
	.A(\u_div/PartRem[3][2] ));
   ADDFX2M \u_div/u_fa_PartRem_0_3_3  (.S(\u_div/SumTmp[3][3] ), 
	.CO(\u_div/CryTmp[3][4] ), 
	.CI(\u_div/CryTmp[3][3] ), 
	.B(n15), 
	.A(\u_div/PartRem[4][3] ));
   ADDFX2M \u_div/u_fa_PartRem_0_3_2  (.S(\u_div/SumTmp[3][2] ), 
	.CO(\u_div/CryTmp[3][3] ), 
	.CI(\u_div/CryTmp[3][2] ), 
	.B(n16), 
	.A(\u_div/PartRem[4][2] ));
   ADDFX2M \u_div/u_fa_PartRem_0_4_2  (.S(\u_div/SumTmp[4][2] ), 
	.CO(\u_div/CryTmp[4][3] ), 
	.CI(\u_div/CryTmp[4][2] ), 
	.B(n16), 
	.A(\u_div/PartRem[5][2] ));
   ADDFX2M \u_div/u_fa_PartRem_0_1_6  (.S(\u_div/SumTmp[1][6] ), 
	.CO(\u_div/CryTmp[1][7] ), 
	.CI(\u_div/CryTmp[1][6] ), 
	.B(n12), 
	.A(\u_div/PartRem[2][6] ));
   INVX2M U1 (.Y(n18), 
	.A(b[0]));
   XNOR2X2M U2 (.Y(\u_div/SumTmp[7][0] ), 
	.B(a[7]), 
	.A(n18));
   XNOR2X2M U3 (.Y(\u_div/SumTmp[6][0] ), 
	.B(a[6]), 
	.A(n18));
   XNOR2X2M U4 (.Y(\u_div/SumTmp[5][0] ), 
	.B(a[5]), 
	.A(n18));
   XNOR2X2M U5 (.Y(\u_div/SumTmp[4][0] ), 
	.B(a[4]), 
	.A(n18));
   XNOR2X2M U6 (.Y(\u_div/SumTmp[3][0] ), 
	.B(a[3]), 
	.A(n18));
   XNOR2X2M U7 (.Y(\u_div/SumTmp[2][0] ), 
	.B(a[2]), 
	.A(n18));
   OR2X2M U8 (.Y(\u_div/CryTmp[7][1] ), 
	.B(a[7]), 
	.A(n18));
   XNOR2X2M U9 (.Y(\u_div/SumTmp[1][0] ), 
	.B(a[1]), 
	.A(n18));
   NAND2X2M U10 (.Y(\u_div/CryTmp[5][1] ), 
	.B(n3), 
	.A(n2));
   INVX2M U11 (.Y(n3), 
	.A(a[5]));
   INVX2M U12 (.Y(n2), 
	.A(n18));
   NAND2X2M U13 (.Y(\u_div/CryTmp[4][1] ), 
	.B(n5), 
	.A(n2));
   INVX2M U14 (.Y(n5), 
	.A(a[4]));
   NAND2X2M U16 (.Y(\u_div/CryTmp[3][1] ), 
	.B(n7), 
	.A(n2));
   INVX2M U17 (.Y(n7), 
	.A(a[3]));
   NAND2X2M U19 (.Y(\u_div/CryTmp[2][1] ), 
	.B(n8), 
	.A(n2));
   INVX2M U20 (.Y(n8), 
	.A(a[2]));
   NAND2X2M U21 (.Y(\u_div/CryTmp[1][1] ), 
	.B(n9), 
	.A(n2));
   INVX2M U22 (.Y(n9), 
	.A(a[1]));
   NAND2X2M U23 (.Y(\u_div/CryTmp[0][1] ), 
	.B(n10), 
	.A(n2));
   INVX2M U24 (.Y(n10), 
	.A(a[0]));
   NAND2X2M U25 (.Y(\u_div/CryTmp[6][1] ), 
	.B(n1), 
	.A(n2));
   INVX2M U26 (.Y(n1), 
	.A(a[6]));
   INVX2M U27 (.Y(n12), 
	.A(b[6]));
   INVX2M U28 (.Y(n17), 
	.A(b[1]));
   INVX2M U29 (.Y(n16), 
	.A(b[2]));
   INVX2M U30 (.Y(n15), 
	.A(b[3]));
   INVX2M U31 (.Y(n14), 
	.A(b[4]));
   INVX2M U32 (.Y(n13), 
	.A(b[5]));
   INVX2M U33 (.Y(n11), 
	.A(b[7]));
   CLKMX2X2M U34 (.Y(\u_div/PartRem[1][7] ), 
	.S0(quotient[1]), 
	.B(\u_div/SumTmp[1][6] ), 
	.A(\u_div/PartRem[2][6] ));
   CLKMX2X2M U35 (.Y(\u_div/PartRem[2][6] ), 
	.S0(quotient[2]), 
	.B(\u_div/SumTmp[2][5] ), 
	.A(\u_div/PartRem[3][5] ));
   CLKMX2X2M U36 (.Y(\u_div/PartRem[3][5] ), 
	.S0(quotient[3]), 
	.B(\u_div/SumTmp[3][4] ), 
	.A(\u_div/PartRem[4][4] ));
   CLKMX2X2M U37 (.Y(\u_div/PartRem[4][4] ), 
	.S0(quotient[4]), 
	.B(\u_div/SumTmp[4][3] ), 
	.A(\u_div/PartRem[5][3] ));
   CLKMX2X2M U38 (.Y(\u_div/PartRem[5][3] ), 
	.S0(quotient[5]), 
	.B(\u_div/SumTmp[5][2] ), 
	.A(\u_div/PartRem[6][2] ));
   CLKMX2X2M U39 (.Y(\u_div/PartRem[6][2] ), 
	.S0(quotient[6]), 
	.B(\u_div/SumTmp[6][1] ), 
	.A(\u_div/PartRem[7][1] ));
   CLKMX2X2M U40 (.Y(\u_div/PartRem[7][1] ), 
	.S0(quotient[7]), 
	.B(\u_div/SumTmp[7][0] ), 
	.A(a[7]));
   CLKMX2X2M U41 (.Y(\u_div/PartRem[1][6] ), 
	.S0(quotient[1]), 
	.B(\u_div/SumTmp[1][5] ), 
	.A(\u_div/PartRem[2][5] ));
   CLKMX2X2M U42 (.Y(\u_div/PartRem[2][5] ), 
	.S0(quotient[2]), 
	.B(\u_div/SumTmp[2][4] ), 
	.A(\u_div/PartRem[3][4] ));
   CLKMX2X2M U43 (.Y(\u_div/PartRem[3][4] ), 
	.S0(quotient[3]), 
	.B(\u_div/SumTmp[3][3] ), 
	.A(\u_div/PartRem[4][3] ));
   CLKMX2X2M U44 (.Y(\u_div/PartRem[4][3] ), 
	.S0(quotient[4]), 
	.B(\u_div/SumTmp[4][2] ), 
	.A(\u_div/PartRem[5][2] ));
   CLKMX2X2M U45 (.Y(\u_div/PartRem[5][2] ), 
	.S0(quotient[5]), 
	.B(\u_div/SumTmp[5][1] ), 
	.A(\u_div/PartRem[6][1] ));
   CLKMX2X2M U46 (.Y(\u_div/PartRem[6][1] ), 
	.S0(quotient[6]), 
	.B(\u_div/SumTmp[6][0] ), 
	.A(a[6]));
   CLKMX2X2M U47 (.Y(\u_div/PartRem[1][5] ), 
	.S0(quotient[1]), 
	.B(\u_div/SumTmp[1][4] ), 
	.A(\u_div/PartRem[2][4] ));
   CLKMX2X2M U48 (.Y(\u_div/PartRem[2][4] ), 
	.S0(quotient[2]), 
	.B(\u_div/SumTmp[2][3] ), 
	.A(\u_div/PartRem[3][3] ));
   CLKMX2X2M U49 (.Y(\u_div/PartRem[3][3] ), 
	.S0(quotient[3]), 
	.B(\u_div/SumTmp[3][2] ), 
	.A(\u_div/PartRem[4][2] ));
   CLKMX2X2M U50 (.Y(\u_div/PartRem[4][2] ), 
	.S0(quotient[4]), 
	.B(\u_div/SumTmp[4][1] ), 
	.A(\u_div/PartRem[5][1] ));
   CLKMX2X2M U51 (.Y(\u_div/PartRem[5][1] ), 
	.S0(quotient[5]), 
	.B(\u_div/SumTmp[5][0] ), 
	.A(a[5]));
   CLKMX2X2M U52 (.Y(\u_div/PartRem[1][4] ), 
	.S0(quotient[1]), 
	.B(\u_div/SumTmp[1][3] ), 
	.A(\u_div/PartRem[2][3] ));
   CLKMX2X2M U53 (.Y(\u_div/PartRem[2][3] ), 
	.S0(quotient[2]), 
	.B(\u_div/SumTmp[2][2] ), 
	.A(\u_div/PartRem[3][2] ));
   CLKMX2X2M U54 (.Y(\u_div/PartRem[3][2] ), 
	.S0(quotient[3]), 
	.B(\u_div/SumTmp[3][1] ), 
	.A(\u_div/PartRem[4][1] ));
   CLKMX2X2M U55 (.Y(\u_div/PartRem[4][1] ), 
	.S0(quotient[4]), 
	.B(\u_div/SumTmp[4][0] ), 
	.A(a[4]));
   CLKMX2X2M U56 (.Y(\u_div/PartRem[1][3] ), 
	.S0(quotient[1]), 
	.B(\u_div/SumTmp[1][2] ), 
	.A(\u_div/PartRem[2][2] ));
   CLKMX2X2M U57 (.Y(\u_div/PartRem[2][2] ), 
	.S0(quotient[2]), 
	.B(\u_div/SumTmp[2][1] ), 
	.A(\u_div/PartRem[3][1] ));
   CLKMX2X2M U58 (.Y(\u_div/PartRem[3][1] ), 
	.S0(quotient[3]), 
	.B(\u_div/SumTmp[3][0] ), 
	.A(a[3]));
   CLKMX2X2M U59 (.Y(\u_div/PartRem[1][2] ), 
	.S0(quotient[1]), 
	.B(\u_div/SumTmp[1][1] ), 
	.A(\u_div/PartRem[2][1] ));
   CLKMX2X2M U60 (.Y(\u_div/PartRem[2][1] ), 
	.S0(quotient[2]), 
	.B(\u_div/SumTmp[2][0] ), 
	.A(a[2]));
   CLKMX2X2M U61 (.Y(\u_div/PartRem[1][1] ), 
	.S0(quotient[1]), 
	.B(\u_div/SumTmp[1][0] ), 
	.A(a[1]));
   AND4X1M U62 (.Y(quotient[7]), 
	.D(n16), 
	.C(n17), 
	.B(n19), 
	.A(\u_div/CryTmp[7][1] ));
   AND3X1M U63 (.Y(quotient[6]), 
	.C(\u_div/CryTmp[6][2] ), 
	.B(n16), 
	.A(n19));
   AND2X1M U64 (.Y(quotient[5]), 
	.B(n19), 
	.A(\u_div/CryTmp[5][3] ));
   AND2X1M U65 (.Y(n19), 
	.B(n15), 
	.A(n20));
   AND2X1M U66 (.Y(quotient[4]), 
	.B(n20), 
	.A(\u_div/CryTmp[4][4] ));
   AND3X1M U67 (.Y(n20), 
	.C(n13), 
	.B(n14), 
	.A(n21));
   AND3X1M U68 (.Y(quotient[3]), 
	.C(\u_div/CryTmp[3][5] ), 
	.B(n13), 
	.A(n21));
   AND2X1M U69 (.Y(quotient[2]), 
	.B(n21), 
	.A(\u_div/CryTmp[2][6] ));
   NOR2X1M U70 (.Y(n21), 
	.B(b[7]), 
	.A(b[6]));
   AND2X1M U71 (.Y(quotient[1]), 
	.B(n11), 
	.A(\u_div/CryTmp[1][7] ));
endmodule

module ALU_OPER_WIDTH8_OUT_WIDTH16_DW01_sub_0 (
	A, 
	B, 
	CI, 
	DIFF, 
	CO, 
	n134, 
	n136, 
	n138, 
	n143, 
	n142, 
	n151, 
	n139);
   input [8:0] A;
   input [8:0] B;
   input CI;
   output [8:0] DIFF;
   output CO;
   input n134;
   input n136;
   input n138;
   input n143;
   input n142;
   input n151;
   input n139;

   // Internal wires
   wire n1;
   wire n2;
   wire n3;
   wire n4;
   wire n5;
   wire n6;
   wire n7;
   wire n8;
   wire n9;
   wire [9:0] carry;

   ADDFX2M U2_7 (.S(DIFF[7]), 
	.CO(carry[8]), 
	.CI(carry[7]), 
	.B(n2), 
	.A(A[7]));
   ADDFX2M U2_1 (.S(DIFF[1]), 
	.CO(carry[2]), 
	.CI(carry[1]), 
	.B(n8), 
	.A(A[1]));
   ADDFX2M U2_5 (.S(DIFF[5]), 
	.CO(carry[6]), 
	.CI(carry[5]), 
	.B(n4), 
	.A(A[5]));
   ADDFX2M U2_4 (.S(DIFF[4]), 
	.CO(carry[5]), 
	.CI(carry[4]), 
	.B(n5), 
	.A(A[4]));
   ADDFX2M U2_3 (.S(DIFF[3]), 
	.CO(carry[4]), 
	.CI(carry[3]), 
	.B(n6), 
	.A(A[3]));
   ADDFX2M U2_2 (.S(DIFF[2]), 
	.CO(carry[3]), 
	.CI(carry[2]), 
	.B(n7), 
	.A(A[2]));
   ADDFX2M U2_6 (.S(DIFF[6]), 
	.CO(carry[7]), 
	.CI(carry[6]), 
	.B(n3), 
	.A(A[6]));
   XNOR2X2M U1 (.Y(DIFF[0]), 
	.B(A[0]), 
	.A(n9));
   INVX2M U2 (.Y(n3), 
	.A(B[6]));
   INVX2M U3 (.Y(n9), 
	.A(B[0]));
   INVX2M U4 (.Y(n7), 
	.A(B[2]));
   INVX2M U5 (.Y(n6), 
	.A(B[3]));
   INVX2M U6 (.Y(n5), 
	.A(B[4]));
   INVX2M U7 (.Y(n4), 
	.A(B[5]));
   NAND2X2M U8 (.Y(carry[1]), 
	.B(n1), 
	.A(B[0]));
   INVX2M U9 (.Y(n8), 
	.A(B[1]));
   INVX2M U10 (.Y(n1), 
	.A(A[0]));
   INVX2M U11 (.Y(n2), 
	.A(B[7]));
   CLKINVX1M U12 (.Y(DIFF[8]), 
	.A(carry[8]));
endmodule

module ALU_OPER_WIDTH8_OUT_WIDTH16_DW01_add_0 (
	A, 
	B, 
	CI, 
	SUM, 
	CO);
   input [8:0] A;
   input [8:0] B;
   input CI;
   output [8:0] SUM;
   output CO;

   // Internal wires
   wire n1;
   wire [8:1] carry;

   ADDFX2M U1_7 (.S(SUM[7]), 
	.CO(SUM[8]), 
	.CI(carry[7]), 
	.B(B[7]), 
	.A(A[7]));
   ADDFX2M U1_1 (.S(SUM[1]), 
	.CO(carry[2]), 
	.CI(n1), 
	.B(B[1]), 
	.A(A[1]));
   ADDFX2M U1_5 (.S(SUM[5]), 
	.CO(carry[6]), 
	.CI(carry[5]), 
	.B(B[5]), 
	.A(A[5]));
   ADDFX2M U1_4 (.S(SUM[4]), 
	.CO(carry[5]), 
	.CI(carry[4]), 
	.B(B[4]), 
	.A(A[4]));
   ADDFX2M U1_3 (.S(SUM[3]), 
	.CO(carry[4]), 
	.CI(carry[3]), 
	.B(B[3]), 
	.A(A[3]));
   ADDFX2M U1_2 (.S(SUM[2]), 
	.CO(carry[3]), 
	.CI(carry[2]), 
	.B(B[2]), 
	.A(A[2]));
   ADDFX2M U1_6 (.S(SUM[6]), 
	.CO(carry[7]), 
	.CI(carry[6]), 
	.B(B[6]), 
	.A(A[6]));
   AND2X2M U1 (.Y(n1), 
	.B(A[0]), 
	.A(B[0]));
   CLKXOR2X2M U2 (.Y(SUM[0]), 
	.B(A[0]), 
	.A(B[0]));
endmodule

module ALU_OPER_WIDTH8_OUT_WIDTH16_DW01_add_1 (
	A, 
	B, 
	CI, 
	SUM, 
	CO);
   input [13:0] A;
   input [13:0] B;
   input CI;
   output [13:0] SUM;
   output CO;

   // Internal wires
   wire n1;
   wire n8;
   wire n9;
   wire n10;
   wire n11;
   wire n12;
   wire n13;
   wire n14;
   wire n15;
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire n20;
   wire n21;
   wire n22;
   wire n23;
   wire n24;
   wire n25;
   wire n26;
   wire n27;

   AOI21BX2M U2 (.Y(n1), 
	.B0N(n19), 
	.A1(A[12]), 
	.A0(n18));
   NAND2X2M U3 (.Y(n15), 
	.B(B[7]), 
	.A(A[7]));
   XNOR2X2M U4 (.Y(SUM[7]), 
	.B(n8), 
	.A(A[7]));
   INVX2M U5 (.Y(n8), 
	.A(B[7]));
   XNOR2X2M U6 (.Y(SUM[13]), 
	.B(n1), 
	.A(B[13]));
   INVX2M U7 (.Y(n9), 
	.A(A[6]));
   INVX2M U8 (.Y(SUM[6]), 
	.A(n9));
   BUFX2M U9 (.Y(SUM[0]), 
	.A(A[0]));
   BUFX2M U10 (.Y(SUM[1]), 
	.A(A[1]));
   BUFX2M U11 (.Y(SUM[2]), 
	.A(A[2]));
   BUFX2M U12 (.Y(SUM[3]), 
	.A(A[3]));
   BUFX2M U13 (.Y(SUM[4]), 
	.A(A[4]));
   BUFX2M U14 (.Y(SUM[5]), 
	.A(A[5]));
   XNOR2X1M U15 (.Y(SUM[9]), 
	.B(n11), 
	.A(n10));
   NOR2X1M U16 (.Y(n11), 
	.B(n13), 
	.A(n12));
   CLKXOR2X2M U17 (.Y(SUM[8]), 
	.B(n15), 
	.A(n14));
   NAND2BX1M U18 (.Y(n14), 
	.B(n17), 
	.AN(n16));
   OAI21X1M U19 (.Y(n19), 
	.B0(B[12]), 
	.A1(n18), 
	.A0(A[12]));
   XOR3XLM U20 (.Y(SUM[12]), 
	.C(n18), 
	.B(A[12]), 
	.A(B[12]));
   OAI21BX1M U21 (.Y(n18), 
	.B0N(n22), 
	.A1(n21), 
	.A0(n20));
   XNOR2X1M U22 (.Y(SUM[11]), 
	.B(n23), 
	.A(n21));
   NOR2X1M U23 (.Y(n23), 
	.B(n20), 
	.A(n22));
   NOR2X1M U24 (.Y(n20), 
	.B(A[11]), 
	.A(B[11]));
   AND2X1M U25 (.Y(n22), 
	.B(A[11]), 
	.A(B[11]));
   OA21X1M U26 (.Y(n21), 
	.B0(n26), 
	.A1(n25), 
	.A0(n24));
   CLKXOR2X2M U27 (.Y(SUM[10]), 
	.B(n25), 
	.A(n27));
   AOI2BB1X1M U28 (.Y(n25), 
	.B0(n12), 
	.A1N(n13), 
	.A0N(n10));
   AND2X1M U29 (.Y(n12), 
	.B(A[9]), 
	.A(B[9]));
   NOR2X1M U30 (.Y(n13), 
	.B(A[9]), 
	.A(B[9]));
   OA21X1M U31 (.Y(n10), 
	.B0(n17), 
	.A1(n16), 
	.A0(n15));
   CLKNAND2X2M U32 (.Y(n17), 
	.B(A[8]), 
	.A(B[8]));
   NOR2X1M U33 (.Y(n16), 
	.B(A[8]), 
	.A(B[8]));
   NAND2BX1M U34 (.Y(n27), 
	.B(n26), 
	.AN(n24));
   CLKNAND2X2M U35 (.Y(n26), 
	.B(A[10]), 
	.A(B[10]));
   NOR2X1M U36 (.Y(n24), 
	.B(A[10]), 
	.A(B[10]));
endmodule

module ALU_OPER_WIDTH8_OUT_WIDTH16_DW02_mult_0 (
	A, 
	B, 
	TC, 
	PRODUCT, 
	n134, 
	n136, 
	n138, 
	n143, 
	n142, 
	n151, 
	n150, 
	n149, 
	n148, 
	n147, 
	n146, 
	n145, 
	n144, 
	n139);
   input [7:0] A;
   input [7:0] B;
   input TC;
   output [15:0] PRODUCT;
   input n134;
   input n136;
   input n138;
   input n143;
   input n142;
   input n151;
   input n150;
   input n149;
   input n148;
   input n147;
   input n146;
   input n145;
   input n144;
   input n139;

   // Internal wires
   wire \ab[7][7] ;
   wire \ab[7][6] ;
   wire \ab[7][5] ;
   wire \ab[7][4] ;
   wire \ab[7][3] ;
   wire \ab[7][2] ;
   wire \ab[7][1] ;
   wire \ab[7][0] ;
   wire \ab[6][7] ;
   wire \ab[6][6] ;
   wire \ab[6][5] ;
   wire \ab[6][4] ;
   wire \ab[6][3] ;
   wire \ab[6][2] ;
   wire \ab[6][1] ;
   wire \ab[6][0] ;
   wire \ab[5][7] ;
   wire \ab[5][6] ;
   wire \ab[5][5] ;
   wire \ab[5][4] ;
   wire \ab[5][3] ;
   wire \ab[5][2] ;
   wire \ab[5][1] ;
   wire \ab[5][0] ;
   wire \ab[4][7] ;
   wire \ab[4][6] ;
   wire \ab[4][5] ;
   wire \ab[4][4] ;
   wire \ab[4][3] ;
   wire \ab[4][2] ;
   wire \ab[4][1] ;
   wire \ab[4][0] ;
   wire \ab[3][7] ;
   wire \ab[3][6] ;
   wire \ab[3][5] ;
   wire \ab[3][4] ;
   wire \ab[3][3] ;
   wire \ab[3][2] ;
   wire \ab[3][1] ;
   wire \ab[3][0] ;
   wire \ab[2][7] ;
   wire \ab[2][6] ;
   wire \ab[2][5] ;
   wire \ab[2][4] ;
   wire \ab[2][3] ;
   wire \ab[2][2] ;
   wire \ab[2][1] ;
   wire \ab[2][0] ;
   wire \ab[1][7] ;
   wire \ab[1][6] ;
   wire \ab[1][5] ;
   wire \ab[1][4] ;
   wire \ab[1][3] ;
   wire \ab[1][2] ;
   wire \ab[1][1] ;
   wire \ab[1][0] ;
   wire \ab[0][7] ;
   wire \ab[0][6] ;
   wire \ab[0][5] ;
   wire \ab[0][4] ;
   wire \ab[0][3] ;
   wire \ab[0][2] ;
   wire \ab[0][1] ;
   wire \CARRYB[7][6] ;
   wire \CARRYB[7][5] ;
   wire \CARRYB[7][4] ;
   wire \CARRYB[7][3] ;
   wire \CARRYB[7][2] ;
   wire \CARRYB[7][1] ;
   wire \CARRYB[7][0] ;
   wire \CARRYB[6][6] ;
   wire \CARRYB[6][5] ;
   wire \CARRYB[6][4] ;
   wire \CARRYB[6][3] ;
   wire \CARRYB[6][2] ;
   wire \CARRYB[6][1] ;
   wire \CARRYB[6][0] ;
   wire \CARRYB[5][6] ;
   wire \CARRYB[5][5] ;
   wire \CARRYB[5][4] ;
   wire \CARRYB[5][3] ;
   wire \CARRYB[5][2] ;
   wire \CARRYB[5][1] ;
   wire \CARRYB[5][0] ;
   wire \CARRYB[4][6] ;
   wire \CARRYB[4][5] ;
   wire \CARRYB[4][4] ;
   wire \CARRYB[4][3] ;
   wire \CARRYB[4][2] ;
   wire \CARRYB[4][1] ;
   wire \CARRYB[4][0] ;
   wire \CARRYB[3][6] ;
   wire \CARRYB[3][5] ;
   wire \CARRYB[3][4] ;
   wire \CARRYB[3][3] ;
   wire \CARRYB[3][2] ;
   wire \CARRYB[3][1] ;
   wire \CARRYB[3][0] ;
   wire \CARRYB[2][6] ;
   wire \CARRYB[2][5] ;
   wire \CARRYB[2][4] ;
   wire \CARRYB[2][3] ;
   wire \CARRYB[2][2] ;
   wire \CARRYB[2][1] ;
   wire \CARRYB[2][0] ;
   wire \SUMB[7][6] ;
   wire \SUMB[7][5] ;
   wire \SUMB[7][4] ;
   wire \SUMB[7][3] ;
   wire \SUMB[7][2] ;
   wire \SUMB[7][1] ;
   wire \SUMB[7][0] ;
   wire \SUMB[6][6] ;
   wire \SUMB[6][5] ;
   wire \SUMB[6][4] ;
   wire \SUMB[6][3] ;
   wire \SUMB[6][2] ;
   wire \SUMB[6][1] ;
   wire \SUMB[5][6] ;
   wire \SUMB[5][5] ;
   wire \SUMB[5][4] ;
   wire \SUMB[5][3] ;
   wire \SUMB[5][2] ;
   wire \SUMB[5][1] ;
   wire \SUMB[4][6] ;
   wire \SUMB[4][5] ;
   wire \SUMB[4][4] ;
   wire \SUMB[4][3] ;
   wire \SUMB[4][2] ;
   wire \SUMB[4][1] ;
   wire \SUMB[3][6] ;
   wire \SUMB[3][5] ;
   wire \SUMB[3][4] ;
   wire \SUMB[3][3] ;
   wire \SUMB[3][2] ;
   wire \SUMB[3][1] ;
   wire \SUMB[2][6] ;
   wire \SUMB[2][5] ;
   wire \SUMB[2][4] ;
   wire \SUMB[2][3] ;
   wire \SUMB[2][2] ;
   wire \SUMB[2][1] ;
   wire \SUMB[1][6] ;
   wire \SUMB[1][5] ;
   wire \SUMB[1][4] ;
   wire \SUMB[1][3] ;
   wire \SUMB[1][2] ;
   wire \SUMB[1][1] ;
   wire \A1[12] ;
   wire \A1[11] ;
   wire \A1[10] ;
   wire \A1[9] ;
   wire \A1[8] ;
   wire \A1[7] ;
   wire \A1[6] ;
   wire \A1[4] ;
   wire \A1[3] ;
   wire \A1[2] ;
   wire \A1[1] ;
   wire \A1[0] ;
   wire n3;
   wire n4;
   wire n5;
   wire n6;
   wire n7;
   wire n8;
   wire n9;
   wire n10;
   wire n11;
   wire n12;
   wire n13;
   wire n14;
   wire n15;
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire n20;
   wire n21;
   wire n22;
   wire n23;
   wire n24;
   wire n25;
   wire n26;
   wire n27;
   wire n28;
   wire n29;
   wire n30;
   wire n31;
   wire n32;
   wire n33;
   wire n34;
   wire n35;
   wire n36;
   wire n37;
   wire n38;
   wire n39;

   ADDFX2M S2_6_5 (.S(\SUMB[6][5] ), 
	.CO(\CARRYB[6][5] ), 
	.CI(\SUMB[5][6] ), 
	.B(\CARRYB[5][5] ), 
	.A(\ab[6][5] ));
   ADDFX2M S2_6_4 (.S(\SUMB[6][4] ), 
	.CO(\CARRYB[6][4] ), 
	.CI(\SUMB[5][5] ), 
	.B(\CARRYB[5][4] ), 
	.A(\ab[6][4] ));
   ADDFX2M S2_5_5 (.S(\SUMB[5][5] ), 
	.CO(\CARRYB[5][5] ), 
	.CI(\SUMB[4][6] ), 
	.B(\CARRYB[4][5] ), 
	.A(\ab[5][5] ));
   ADDFX2M S2_6_3 (.S(\SUMB[6][3] ), 
	.CO(\CARRYB[6][3] ), 
	.CI(\SUMB[5][4] ), 
	.B(\CARRYB[5][3] ), 
	.A(\ab[6][3] ));
   ADDFX2M S2_5_4 (.S(\SUMB[5][4] ), 
	.CO(\CARRYB[5][4] ), 
	.CI(\SUMB[4][5] ), 
	.B(\CARRYB[4][4] ), 
	.A(\ab[5][4] ));
   ADDFX2M S1_6_0 (.S(\A1[4] ), 
	.CO(\CARRYB[6][0] ), 
	.CI(\SUMB[5][1] ), 
	.B(\CARRYB[5][0] ), 
	.A(\ab[6][0] ));
   ADDFX2M S2_6_1 (.S(\SUMB[6][1] ), 
	.CO(\CARRYB[6][1] ), 
	.CI(\SUMB[5][2] ), 
	.B(\CARRYB[5][1] ), 
	.A(\ab[6][1] ));
   ADDFX2M S2_6_2 (.S(\SUMB[6][2] ), 
	.CO(\CARRYB[6][2] ), 
	.CI(\SUMB[5][3] ), 
	.B(\CARRYB[5][2] ), 
	.A(\ab[6][2] ));
   ADDFX2M S2_4_5 (.S(\SUMB[4][5] ), 
	.CO(\CARRYB[4][5] ), 
	.CI(\SUMB[3][6] ), 
	.B(\CARRYB[3][5] ), 
	.A(\ab[4][5] ));
   ADDFX2M S1_5_0 (.S(\A1[3] ), 
	.CO(\CARRYB[5][0] ), 
	.CI(\SUMB[4][1] ), 
	.B(\CARRYB[4][0] ), 
	.A(\ab[5][0] ));
   ADDFX2M S2_5_1 (.S(\SUMB[5][1] ), 
	.CO(\CARRYB[5][1] ), 
	.CI(\SUMB[4][2] ), 
	.B(\CARRYB[4][1] ), 
	.A(\ab[5][1] ));
   ADDFX2M S2_5_2 (.S(\SUMB[5][2] ), 
	.CO(\CARRYB[5][2] ), 
	.CI(\SUMB[4][3] ), 
	.B(\CARRYB[4][2] ), 
	.A(\ab[5][2] ));
   ADDFX2M S2_5_3 (.S(\SUMB[5][3] ), 
	.CO(\CARRYB[5][3] ), 
	.CI(\SUMB[4][4] ), 
	.B(\CARRYB[4][3] ), 
	.A(\ab[5][3] ));
   ADDFX2M S1_4_0 (.S(\A1[2] ), 
	.CO(\CARRYB[4][0] ), 
	.CI(\SUMB[3][1] ), 
	.B(\CARRYB[3][0] ), 
	.A(\ab[4][0] ));
   ADDFX2M S2_4_1 (.S(\SUMB[4][1] ), 
	.CO(\CARRYB[4][1] ), 
	.CI(\SUMB[3][2] ), 
	.B(\CARRYB[3][1] ), 
	.A(\ab[4][1] ));
   ADDFX2M S2_4_2 (.S(\SUMB[4][2] ), 
	.CO(\CARRYB[4][2] ), 
	.CI(\SUMB[3][3] ), 
	.B(\CARRYB[3][2] ), 
	.A(\ab[4][2] ));
   ADDFX2M S2_4_3 (.S(\SUMB[4][3] ), 
	.CO(\CARRYB[4][3] ), 
	.CI(\SUMB[3][4] ), 
	.B(\CARRYB[3][3] ), 
	.A(\ab[4][3] ));
   ADDFX2M S2_4_4 (.S(\SUMB[4][4] ), 
	.CO(\CARRYB[4][4] ), 
	.CI(\SUMB[3][5] ), 
	.B(\CARRYB[3][4] ), 
	.A(\ab[4][4] ));
   ADDFX2M S1_3_0 (.S(\A1[1] ), 
	.CO(\CARRYB[3][0] ), 
	.CI(\SUMB[2][1] ), 
	.B(\CARRYB[2][0] ), 
	.A(\ab[3][0] ));
   ADDFX2M S2_3_1 (.S(\SUMB[3][1] ), 
	.CO(\CARRYB[3][1] ), 
	.CI(\SUMB[2][2] ), 
	.B(\CARRYB[2][1] ), 
	.A(\ab[3][1] ));
   ADDFX2M S2_3_2 (.S(\SUMB[3][2] ), 
	.CO(\CARRYB[3][2] ), 
	.CI(\SUMB[2][3] ), 
	.B(\CARRYB[2][2] ), 
	.A(\ab[3][2] ));
   ADDFX2M S2_3_3 (.S(\SUMB[3][3] ), 
	.CO(\CARRYB[3][3] ), 
	.CI(\SUMB[2][4] ), 
	.B(\CARRYB[2][3] ), 
	.A(\ab[3][3] ));
   ADDFX2M S2_3_4 (.S(\SUMB[3][4] ), 
	.CO(\CARRYB[3][4] ), 
	.CI(\SUMB[2][5] ), 
	.B(\CARRYB[2][4] ), 
	.A(\ab[3][4] ));
   ADDFX2M S2_3_5 (.S(\SUMB[3][5] ), 
	.CO(\CARRYB[3][5] ), 
	.CI(\SUMB[2][6] ), 
	.B(\CARRYB[2][5] ), 
	.A(\ab[3][5] ));
   ADDFX2M S3_6_6 (.S(\SUMB[6][6] ), 
	.CO(\CARRYB[6][6] ), 
	.CI(\ab[5][7] ), 
	.B(\CARRYB[5][6] ), 
	.A(\ab[6][6] ));
   ADDFX2M S3_5_6 (.S(\SUMB[5][6] ), 
	.CO(\CARRYB[5][6] ), 
	.CI(\ab[4][7] ), 
	.B(\CARRYB[4][6] ), 
	.A(\ab[5][6] ));
   ADDFX2M S3_4_6 (.S(\SUMB[4][6] ), 
	.CO(\CARRYB[4][6] ), 
	.CI(\ab[3][7] ), 
	.B(\CARRYB[3][6] ), 
	.A(\ab[4][6] ));
   ADDFX2M S3_3_6 (.S(\SUMB[3][6] ), 
	.CO(\CARRYB[3][6] ), 
	.CI(\ab[2][7] ), 
	.B(\CARRYB[2][6] ), 
	.A(\ab[3][6] ));
   ADDFX2M S3_2_6 (.S(\SUMB[2][6] ), 
	.CO(\CARRYB[2][6] ), 
	.CI(\ab[1][7] ), 
	.B(n8), 
	.A(\ab[2][6] ));
   ADDFX2M S1_2_0 (.S(\A1[0] ), 
	.CO(\CARRYB[2][0] ), 
	.CI(\SUMB[1][1] ), 
	.B(n9), 
	.A(\ab[2][0] ));
   ADDFX2M S2_2_1 (.S(\SUMB[2][1] ), 
	.CO(\CARRYB[2][1] ), 
	.CI(\SUMB[1][2] ), 
	.B(n7), 
	.A(\ab[2][1] ));
   ADDFX2M S2_2_2 (.S(\SUMB[2][2] ), 
	.CO(\CARRYB[2][2] ), 
	.CI(\SUMB[1][3] ), 
	.B(n6), 
	.A(\ab[2][2] ));
   ADDFX2M S2_2_3 (.S(\SUMB[2][3] ), 
	.CO(\CARRYB[2][3] ), 
	.CI(\SUMB[1][4] ), 
	.B(n5), 
	.A(\ab[2][3] ));
   ADDFX2M S2_2_4 (.S(\SUMB[2][4] ), 
	.CO(\CARRYB[2][4] ), 
	.CI(\SUMB[1][5] ), 
	.B(n4), 
	.A(\ab[2][4] ));
   ADDFX2M S2_2_5 (.S(\SUMB[2][5] ), 
	.CO(\CARRYB[2][5] ), 
	.CI(\SUMB[1][6] ), 
	.B(n3), 
	.A(\ab[2][5] ));
   ADDFX2M S5_6 (.S(\SUMB[7][6] ), 
	.CO(\CARRYB[7][6] ), 
	.CI(\ab[6][7] ), 
	.B(\CARRYB[6][6] ), 
	.A(\ab[7][6] ));
   ADDFX2M S4_5 (.S(\SUMB[7][5] ), 
	.CO(\CARRYB[7][5] ), 
	.CI(\SUMB[6][6] ), 
	.B(\CARRYB[6][5] ), 
	.A(\ab[7][5] ));
   ADDFX2M S4_4 (.S(\SUMB[7][4] ), 
	.CO(\CARRYB[7][4] ), 
	.CI(\SUMB[6][5] ), 
	.B(\CARRYB[6][4] ), 
	.A(\ab[7][4] ));
   ADDFX2M S4_3 (.S(\SUMB[7][3] ), 
	.CO(\CARRYB[7][3] ), 
	.CI(\SUMB[6][4] ), 
	.B(\CARRYB[6][3] ), 
	.A(\ab[7][3] ));
   ADDFX2M S4_2 (.S(\SUMB[7][2] ), 
	.CO(\CARRYB[7][2] ), 
	.CI(\SUMB[6][3] ), 
	.B(\CARRYB[6][2] ), 
	.A(\ab[7][2] ));
   ADDFX2M S4_0 (.S(\SUMB[7][0] ), 
	.CO(\CARRYB[7][0] ), 
	.CI(\SUMB[6][1] ), 
	.B(\CARRYB[6][0] ), 
	.A(\ab[7][0] ));
   ADDFX2M S4_1 (.S(\SUMB[7][1] ), 
	.CO(\CARRYB[7][1] ), 
	.CI(\SUMB[6][2] ), 
	.B(\CARRYB[6][1] ), 
	.A(\ab[7][1] ));
   AND2X2M U2 (.Y(n3), 
	.B(\ab[1][5] ), 
	.A(\ab[0][6] ));
   AND2X2M U3 (.Y(n4), 
	.B(\ab[1][4] ), 
	.A(\ab[0][5] ));
   AND2X2M U4 (.Y(n5), 
	.B(\ab[1][3] ), 
	.A(\ab[0][4] ));
   AND2X2M U5 (.Y(n6), 
	.B(\ab[1][2] ), 
	.A(\ab[0][3] ));
   AND2X2M U6 (.Y(n7), 
	.B(\ab[1][1] ), 
	.A(\ab[0][2] ));
   AND2X2M U7 (.Y(n8), 
	.B(\ab[1][6] ), 
	.A(\ab[0][7] ));
   AND2X2M U8 (.Y(n9), 
	.B(\ab[1][0] ), 
	.A(\ab[0][1] ));
   AND2X2M U9 (.Y(n10), 
	.B(\ab[7][7] ), 
	.A(\CARRYB[7][6] ));
   INVX2M U10 (.Y(n22), 
	.A(\ab[0][6] ));
   CLKXOR2X2M U11 (.Y(\A1[7] ), 
	.B(\SUMB[7][2] ), 
	.A(\CARRYB[7][1] ));
   CLKXOR2X2M U12 (.Y(PRODUCT[1]), 
	.B(\ab[0][1] ), 
	.A(\ab[1][0] ));
   CLKXOR2X2M U13 (.Y(\A1[12] ), 
	.B(\ab[7][7] ), 
	.A(\CARRYB[7][6] ));
   CLKXOR2X2M U14 (.Y(\A1[8] ), 
	.B(\SUMB[7][3] ), 
	.A(\CARRYB[7][2] ));
   CLKXOR2X2M U15 (.Y(\A1[10] ), 
	.B(\SUMB[7][5] ), 
	.A(\CARRYB[7][4] ));
   CLKXOR2X2M U16 (.Y(\A1[9] ), 
	.B(\SUMB[7][4] ), 
	.A(\CARRYB[7][3] ));
   CLKXOR2X2M U17 (.Y(\A1[11] ), 
	.B(\SUMB[7][6] ), 
	.A(\CARRYB[7][5] ));
   INVX2M U18 (.Y(n23), 
	.A(\ab[0][7] ));
   INVX2M U19 (.Y(n21), 
	.A(\ab[0][5] ));
   INVX2M U20 (.Y(n20), 
	.A(\ab[0][4] ));
   INVX2M U21 (.Y(n19), 
	.A(\ab[0][3] ));
   INVX2M U22 (.Y(n18), 
	.A(\ab[0][2] ));
   XNOR2X2M U23 (.Y(\A1[6] ), 
	.B(n17), 
	.A(\CARRYB[7][0] ));
   INVX2M U24 (.Y(n17), 
	.A(\SUMB[7][1] ));
   AND2X2M U25 (.Y(n11), 
	.B(\SUMB[7][1] ), 
	.A(\CARRYB[7][0] ));
   AND2X2M U26 (.Y(n12), 
	.B(\SUMB[7][2] ), 
	.A(\CARRYB[7][1] ));
   AND2X2M U27 (.Y(n13), 
	.B(\SUMB[7][4] ), 
	.A(\CARRYB[7][3] ));
   AND2X2M U28 (.Y(n14), 
	.B(\SUMB[7][6] ), 
	.A(\CARRYB[7][5] ));
   AND2X2M U29 (.Y(n15), 
	.B(\SUMB[7][3] ), 
	.A(\CARRYB[7][2] ));
   AND2X2M U30 (.Y(n16), 
	.B(\SUMB[7][5] ), 
	.A(\CARRYB[7][4] ));
   XNOR2X2M U31 (.Y(\SUMB[1][6] ), 
	.B(n23), 
	.A(\ab[1][6] ));
   XNOR2X2M U32 (.Y(\SUMB[1][5] ), 
	.B(n22), 
	.A(\ab[1][5] ));
   XNOR2X2M U33 (.Y(\SUMB[1][4] ), 
	.B(n21), 
	.A(\ab[1][4] ));
   XNOR2X2M U34 (.Y(\SUMB[1][3] ), 
	.B(n20), 
	.A(\ab[1][3] ));
   XNOR2X2M U35 (.Y(\SUMB[1][2] ), 
	.B(n19), 
	.A(\ab[1][2] ));
   XNOR2X2M U36 (.Y(\SUMB[1][1] ), 
	.B(n18), 
	.A(\ab[1][1] ));
   INVX2M U37 (.Y(n32), 
	.A(A[7]));
   INVX2M U38 (.Y(n33), 
	.A(A[6]));
   INVX2M U39 (.Y(n38), 
	.A(A[1]));
   INVX2M U40 (.Y(n39), 
	.A(A[0]));
   INVX2M U41 (.Y(n36), 
	.A(A[3]));
   INVX2M U42 (.Y(n37), 
	.A(A[2]));
   INVX2M U43 (.Y(n34), 
	.A(A[5]));
   INVX2M U44 (.Y(n35), 
	.A(A[4]));
   INVX2M U45 (.Y(n25), 
	.A(B[6]));
   INVX2M U46 (.Y(n31), 
	.A(B[0]));
   INVX2M U47 (.Y(n29), 
	.A(B[2]));
   INVX2M U48 (.Y(n28), 
	.A(B[3]));
   INVX2M U49 (.Y(n24), 
	.A(B[7]));
   INVX2M U50 (.Y(n27), 
	.A(B[4]));
   INVX2M U51 (.Y(n26), 
	.A(B[5]));
   INVX2M U52 (.Y(n30), 
	.A(B[1]));
   NOR2X1M U54 (.Y(\ab[7][7] ), 
	.B(n24), 
	.A(n32));
   NOR2X1M U55 (.Y(\ab[7][6] ), 
	.B(n25), 
	.A(n32));
   NOR2X1M U56 (.Y(\ab[7][5] ), 
	.B(n26), 
	.A(n32));
   NOR2X1M U57 (.Y(\ab[7][4] ), 
	.B(n27), 
	.A(n32));
   NOR2X1M U58 (.Y(\ab[7][3] ), 
	.B(n28), 
	.A(n32));
   NOR2X1M U59 (.Y(\ab[7][2] ), 
	.B(n29), 
	.A(n32));
   NOR2X1M U60 (.Y(\ab[7][1] ), 
	.B(n30), 
	.A(n32));
   NOR2X1M U61 (.Y(\ab[7][0] ), 
	.B(n31), 
	.A(n32));
   NOR2X1M U62 (.Y(\ab[6][7] ), 
	.B(n33), 
	.A(n24));
   NOR2X1M U63 (.Y(\ab[6][6] ), 
	.B(n33), 
	.A(n25));
   NOR2X1M U64 (.Y(\ab[6][5] ), 
	.B(n33), 
	.A(n26));
   NOR2X1M U65 (.Y(\ab[6][4] ), 
	.B(n33), 
	.A(n27));
   NOR2X1M U66 (.Y(\ab[6][3] ), 
	.B(n33), 
	.A(n28));
   NOR2X1M U67 (.Y(\ab[6][2] ), 
	.B(n33), 
	.A(n29));
   NOR2X1M U68 (.Y(\ab[6][1] ), 
	.B(n33), 
	.A(n30));
   NOR2X1M U69 (.Y(\ab[6][0] ), 
	.B(n33), 
	.A(n31));
   NOR2X1M U70 (.Y(\ab[5][7] ), 
	.B(n34), 
	.A(n24));
   NOR2X1M U71 (.Y(\ab[5][6] ), 
	.B(n34), 
	.A(n25));
   NOR2X1M U72 (.Y(\ab[5][5] ), 
	.B(n34), 
	.A(n26));
   NOR2X1M U73 (.Y(\ab[5][4] ), 
	.B(n34), 
	.A(n27));
   NOR2X1M U74 (.Y(\ab[5][3] ), 
	.B(n34), 
	.A(n28));
   NOR2X1M U75 (.Y(\ab[5][2] ), 
	.B(n34), 
	.A(n29));
   NOR2X1M U76 (.Y(\ab[5][1] ), 
	.B(n34), 
	.A(n30));
   NOR2X1M U77 (.Y(\ab[5][0] ), 
	.B(n34), 
	.A(n31));
   NOR2X1M U78 (.Y(\ab[4][7] ), 
	.B(n35), 
	.A(n24));
   NOR2X1M U79 (.Y(\ab[4][6] ), 
	.B(n35), 
	.A(n25));
   NOR2X1M U80 (.Y(\ab[4][5] ), 
	.B(n35), 
	.A(n26));
   NOR2X1M U81 (.Y(\ab[4][4] ), 
	.B(n35), 
	.A(n27));
   NOR2X1M U82 (.Y(\ab[4][3] ), 
	.B(n35), 
	.A(n28));
   NOR2X1M U83 (.Y(\ab[4][2] ), 
	.B(n35), 
	.A(n29));
   NOR2X1M U84 (.Y(\ab[4][1] ), 
	.B(n35), 
	.A(n30));
   NOR2X1M U85 (.Y(\ab[4][0] ), 
	.B(n35), 
	.A(n31));
   NOR2X1M U86 (.Y(\ab[3][7] ), 
	.B(n36), 
	.A(n24));
   NOR2X1M U87 (.Y(\ab[3][6] ), 
	.B(n36), 
	.A(n25));
   NOR2X1M U88 (.Y(\ab[3][5] ), 
	.B(n36), 
	.A(n26));
   NOR2X1M U89 (.Y(\ab[3][4] ), 
	.B(n36), 
	.A(n27));
   NOR2X1M U90 (.Y(\ab[3][3] ), 
	.B(n36), 
	.A(n28));
   NOR2X1M U91 (.Y(\ab[3][2] ), 
	.B(n36), 
	.A(n29));
   NOR2X1M U92 (.Y(\ab[3][1] ), 
	.B(n36), 
	.A(n30));
   NOR2X1M U93 (.Y(\ab[3][0] ), 
	.B(n36), 
	.A(n31));
   NOR2X1M U94 (.Y(\ab[2][7] ), 
	.B(n37), 
	.A(n24));
   NOR2X1M U95 (.Y(\ab[2][6] ), 
	.B(n37), 
	.A(n25));
   NOR2X1M U96 (.Y(\ab[2][5] ), 
	.B(n37), 
	.A(n26));
   NOR2X1M U97 (.Y(\ab[2][4] ), 
	.B(n37), 
	.A(n27));
   NOR2X1M U98 (.Y(\ab[2][3] ), 
	.B(n37), 
	.A(n28));
   NOR2X1M U99 (.Y(\ab[2][2] ), 
	.B(n37), 
	.A(n29));
   NOR2X1M U100 (.Y(\ab[2][1] ), 
	.B(n37), 
	.A(n30));
   NOR2X1M U101 (.Y(\ab[2][0] ), 
	.B(n37), 
	.A(n31));
   NOR2X1M U102 (.Y(\ab[1][7] ), 
	.B(n38), 
	.A(n24));
   NOR2X1M U103 (.Y(\ab[1][6] ), 
	.B(n38), 
	.A(n25));
   NOR2X1M U104 (.Y(\ab[1][5] ), 
	.B(n38), 
	.A(n26));
   NOR2X1M U105 (.Y(\ab[1][4] ), 
	.B(n38), 
	.A(n27));
   NOR2X1M U106 (.Y(\ab[1][3] ), 
	.B(n38), 
	.A(n28));
   NOR2X1M U107 (.Y(\ab[1][2] ), 
	.B(n38), 
	.A(n29));
   NOR2X1M U108 (.Y(\ab[1][1] ), 
	.B(n38), 
	.A(n30));
   NOR2X1M U109 (.Y(\ab[1][0] ), 
	.B(n38), 
	.A(n31));
   NOR2X1M U110 (.Y(\ab[0][7] ), 
	.B(n39), 
	.A(n24));
   NOR2X1M U111 (.Y(\ab[0][6] ), 
	.B(n39), 
	.A(n25));
   NOR2X1M U112 (.Y(\ab[0][5] ), 
	.B(n39), 
	.A(n26));
   NOR2X1M U113 (.Y(\ab[0][4] ), 
	.B(n39), 
	.A(n27));
   NOR2X1M U114 (.Y(\ab[0][3] ), 
	.B(n39), 
	.A(n28));
   NOR2X1M U115 (.Y(\ab[0][2] ), 
	.B(n39), 
	.A(n29));
   NOR2X1M U116 (.Y(\ab[0][1] ), 
	.B(n39), 
	.A(n30));
   NOR2X1M U117 (.Y(PRODUCT[0]), 
	.B(n39), 
	.A(n31));
   ALU_OPER_WIDTH8_OUT_WIDTH16_DW01_add_1 FS_1 (.A({ 1'b0,
		\A1[12] ,
		\A1[11] ,
		\A1[10] ,
		\A1[9] ,
		\A1[8] ,
		\A1[7] ,
		\A1[6] ,
		\SUMB[7][0] ,
		\A1[4] ,
		\A1[3] ,
		\A1[2] ,
		\A1[1] ,
		\A1[0]  }), 
	.B({ n10,
		n14,
		n16,
		n13,
		n15,
		n12,
		n11,
		1'b0,
		1'b0,
		1'b0,
		1'b0,
		1'b0,
		1'b0,
		1'b0 }), 
	.CI(1'b0), 
	.SUM({ PRODUCT[15],
		PRODUCT[14],
		PRODUCT[13],
		PRODUCT[12],
		PRODUCT[11],
		PRODUCT[10],
		PRODUCT[9],
		PRODUCT[8],
		PRODUCT[7],
		PRODUCT[6],
		PRODUCT[5],
		PRODUCT[4],
		PRODUCT[3],
		PRODUCT[2] }));
endmodule

module ALU_OPER_WIDTH8_OUT_WIDTH16_test_1 (
	A, 
	B, 
	EN, 
	ALU_FUN, 
	CLK, 
	RST, 
	ALU_OUT, 
	OUT_VALID, 
	test_si, 
	test_se);
   input [7:0] A;
   input [7:0] B;
   input EN;
   input [3:0] ALU_FUN;
   input CLK;
   input RST;
   output [15:0] ALU_OUT;
   output OUT_VALID;
   input test_si;
   input test_se;

   // Internal wires
   wire N67;
   wire N68;
   wire N69;
   wire N70;
   wire N71;
   wire N72;
   wire N73;
   wire N74;
   wire N75;
   wire N76;
   wire N77;
   wire N78;
   wire N79;
   wire N80;
   wire N81;
   wire N82;
   wire N83;
   wire N84;
   wire N85;
   wire N86;
   wire N87;
   wire N88;
   wire N89;
   wire N90;
   wire N91;
   wire N92;
   wire N93;
   wire N94;
   wire N95;
   wire N96;
   wire N97;
   wire N98;
   wire N99;
   wire N100;
   wire N101;
   wire N102;
   wire N103;
   wire N104;
   wire N105;
   wire N106;
   wire N107;
   wire N108;
   wire N157;
   wire N158;
   wire N159;
   wire n48;
   wire n49;
   wire n50;
   wire n51;
   wire n52;
   wire n53;
   wire n54;
   wire n55;
   wire n56;
   wire n57;
   wire n58;
   wire n59;
   wire n60;
   wire n61;
   wire n62;
   wire n63;
   wire n64;
   wire n65;
   wire n66;
   wire n67;
   wire n68;
   wire n69;
   wire n70;
   wire n71;
   wire n72;
   wire n73;
   wire n74;
   wire n75;
   wire n76;
   wire n77;
   wire n78;
   wire n79;
   wire n80;
   wire n81;
   wire n82;
   wire n83;
   wire n84;
   wire n85;
   wire n86;
   wire n87;
   wire n88;
   wire n89;
   wire n90;
   wire n91;
   wire n92;
   wire n93;
   wire n94;
   wire n95;
   wire n96;
   wire n97;
   wire n98;
   wire n99;
   wire n100;
   wire n101;
   wire n102;
   wire n103;
   wire n104;
   wire n105;
   wire n106;
   wire n107;
   wire n108;
   wire n109;
   wire n110;
   wire n111;
   wire n112;
   wire n113;
   wire n114;
   wire n115;
   wire n116;
   wire n117;
   wire n118;
   wire n119;
   wire n120;
   wire n121;
   wire n122;
   wire n123;
   wire n124;
   wire n31;
   wire n32;
   wire n33;
   wire n34;
   wire n35;
   wire n36;
   wire n37;
   wire n38;
   wire n39;
   wire n40;
   wire n41;
   wire n42;
   wire n43;
   wire n44;
   wire n45;
   wire n46;
   wire n47;
   wire n125;
   wire n126;
   wire n127;
   wire n128;
   wire n129;
   wire n130;
   wire n131;
   wire n132;
   wire n133;
   wire n134;
   wire n135;
   wire n136;
   wire n137;
   wire n138;
   wire n139;
   wire n140;
   wire n141;
   wire n142;
   wire n143;
   wire n144;
   wire n145;
   wire n146;
   wire n147;
   wire n148;
   wire n149;
   wire n150;
   wire n151;
   wire n152;
   wire n153;
   wire n154;
   wire n155;
   wire n156;
   wire n157;
   wire [15:0] ALU_OUT_Comb;

   SDFFRQX2M \ALU_OUT_reg[15]  (.SI(ALU_OUT[14]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(ALU_OUT[15]), 
	.D(ALU_OUT_Comb[15]), 
	.CK(CLK));
   SDFFRQX2M \ALU_OUT_reg[14]  (.SI(ALU_OUT[13]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(ALU_OUT[14]), 
	.D(ALU_OUT_Comb[14]), 
	.CK(CLK));
   SDFFRQX2M \ALU_OUT_reg[13]  (.SI(ALU_OUT[12]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(ALU_OUT[13]), 
	.D(ALU_OUT_Comb[13]), 
	.CK(CLK));
   SDFFRQX2M \ALU_OUT_reg[12]  (.SI(ALU_OUT[11]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(ALU_OUT[12]), 
	.D(ALU_OUT_Comb[12]), 
	.CK(CLK));
   SDFFRQX2M \ALU_OUT_reg[11]  (.SI(ALU_OUT[10]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(ALU_OUT[11]), 
	.D(ALU_OUT_Comb[11]), 
	.CK(CLK));
   SDFFRQX2M \ALU_OUT_reg[10]  (.SI(ALU_OUT[9]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(ALU_OUT[10]), 
	.D(ALU_OUT_Comb[10]), 
	.CK(CLK));
   SDFFRQX2M \ALU_OUT_reg[9]  (.SI(ALU_OUT[8]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(ALU_OUT[9]), 
	.D(ALU_OUT_Comb[9]), 
	.CK(CLK));
   SDFFRQX2M \ALU_OUT_reg[8]  (.SI(ALU_OUT[7]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(ALU_OUT[8]), 
	.D(ALU_OUT_Comb[8]), 
	.CK(CLK));
   SDFFRQX2M \ALU_OUT_reg[7]  (.SI(ALU_OUT[6]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(ALU_OUT[7]), 
	.D(ALU_OUT_Comb[7]), 
	.CK(CLK));
   SDFFRQX2M \ALU_OUT_reg[6]  (.SI(ALU_OUT[5]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(ALU_OUT[6]), 
	.D(ALU_OUT_Comb[6]), 
	.CK(CLK));
   SDFFRQX2M \ALU_OUT_reg[5]  (.SI(ALU_OUT[4]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(ALU_OUT[5]), 
	.D(ALU_OUT_Comb[5]), 
	.CK(CLK));
   SDFFRQX2M \ALU_OUT_reg[4]  (.SI(ALU_OUT[3]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(ALU_OUT[4]), 
	.D(ALU_OUT_Comb[4]), 
	.CK(CLK));
   SDFFRQX2M \ALU_OUT_reg[3]  (.SI(ALU_OUT[2]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(ALU_OUT[3]), 
	.D(ALU_OUT_Comb[3]), 
	.CK(CLK));
   SDFFRQX2M \ALU_OUT_reg[2]  (.SI(ALU_OUT[1]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(ALU_OUT[2]), 
	.D(ALU_OUT_Comb[2]), 
	.CK(CLK));
   SDFFRQX2M \ALU_OUT_reg[1]  (.SI(ALU_OUT[0]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(ALU_OUT[1]), 
	.D(ALU_OUT_Comb[1]), 
	.CK(CLK));
   SDFFRQX2M \ALU_OUT_reg[0]  (.SI(test_si), 
	.SE(test_se), 
	.RN(RST), 
	.Q(ALU_OUT[0]), 
	.D(ALU_OUT_Comb[0]), 
	.CK(CLK));
   SDFFRQX2M OUT_VALID_reg (.SI(ALU_OUT[15]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(OUT_VALID), 
	.D(EN), 
	.CK(CLK));
   OAI2BB1X2M U23 (.Y(n64), 
	.B0(n118), 
	.A1N(n122), 
	.A0N(n157));
   OAI2BB1X2M U24 (.Y(n65), 
	.B0(n118), 
	.A1N(n116), 
	.A0N(n117));
   NOR2BX2M U25 (.Y(n54), 
	.B(n154), 
	.AN(n123));
   AND2X2M U26 (.Y(n59), 
	.B(n122), 
	.A(n116));
   NOR2BX2M U27 (.Y(n48), 
	.B(n152), 
	.AN(n52));
   AND2X2M U28 (.Y(n67), 
	.B(n122), 
	.A(n123));
   NOR2X2M U30 (.Y(n58), 
	.B(n154), 
	.A(n124));
   INVX2M U31 (.Y(n154), 
	.A(n117));
   INVX2M U32 (.Y(n155), 
	.A(n108));
   OAI2BB1X2M U33 (.Y(ALU_OUT_Comb[9]), 
	.B0(n49), 
	.A1N(n48), 
	.A0N(N94));
   OAI2BB1X2M U34 (.Y(ALU_OUT_Comb[10]), 
	.B0(n49), 
	.A1N(n48), 
	.A0N(N95));
   OAI2BB1X2M U35 (.Y(ALU_OUT_Comb[11]), 
	.B0(n49), 
	.A1N(n48), 
	.A0N(N96));
   OAI2BB1X2M U36 (.Y(ALU_OUT_Comb[12]), 
	.B0(n49), 
	.A1N(n48), 
	.A0N(N97));
   OAI2BB1X2M U37 (.Y(ALU_OUT_Comb[13]), 
	.B0(n49), 
	.A1N(n48), 
	.A0N(N98));
   OAI2BB1X2M U38 (.Y(ALU_OUT_Comb[14]), 
	.B0(n49), 
	.A1N(n48), 
	.A0N(N99));
   OAI2BB1X2M U39 (.Y(ALU_OUT_Comb[15]), 
	.B0(n49), 
	.A1N(n48), 
	.A0N(N100));
   INVX2M U40 (.Y(n157), 
	.A(n124));
   NOR3BX2M U41 (.Y(n66), 
	.C(ALU_FUN[2]), 
	.B(n156), 
	.AN(n122));
   NOR3X2M U42 (.Y(n52), 
	.C(n156), 
	.B(ALU_FUN[2]), 
	.A(n154));
   NOR2X2M U43 (.Y(n123), 
	.B(ALU_FUN[1]), 
	.A(ALU_FUN[2]));
   AND3X2M U44 (.Y(n63), 
	.C(ALU_FUN[3]), 
	.B(n153), 
	.A(n123));
   NAND3X2M U45 (.Y(n53), 
	.C(ALU_FUN[3]), 
	.B(n153), 
	.A(n157));
   NAND2X2M U46 (.Y(n124), 
	.B(ALU_FUN[1]), 
	.A(ALU_FUN[2]));
   INVX2M U47 (.Y(n153), 
	.A(ALU_FUN[0]));
   NOR2X2M U48 (.Y(n122), 
	.B(ALU_FUN[3]), 
	.A(n153));
   NOR2X2M U49 (.Y(n117), 
	.B(ALU_FUN[0]), 
	.A(ALU_FUN[3]));
   NAND3X2M U50 (.Y(n108), 
	.C(n116), 
	.B(ALU_FUN[0]), 
	.A(ALU_FUN[3]));
   INVX2M U51 (.Y(n156), 
	.A(ALU_FUN[1]));
   NAND3X2M U52 (.Y(n118), 
	.C(ALU_FUN[3]), 
	.B(ALU_FUN[0]), 
	.A(n123));
   NAND2X2M U53 (.Y(n49), 
	.B(n140), 
	.A(EN));
   AND2X2M U54 (.Y(n116), 
	.B(n156), 
	.A(ALU_FUN[2]));
   AND4X2M U55 (.Y(n107), 
	.D(n153), 
	.C(ALU_FUN[3]), 
	.B(n116), 
	.A(N159));
   INVX2M U56 (.Y(n152), 
	.A(EN));
   INVX2M U57 (.Y(n139), 
	.A(B[6]));
   OAI222X1M U58 (.Y(n71), 
	.C1(n146), 
	.C0(n53), 
	.B1(n73), 
	.B0(B[6]), 
	.A1(n139), 
	.A0(n72));
   AOI221XLM U59 (.Y(n73), 
	.C0(n58), 
	.B1(n145), 
	.B0(n64), 
	.A1(n63), 
	.A0(A[6]));
   AOI221XLM U60 (.Y(n72), 
	.C0(n59), 
	.B1(n65), 
	.B0(A[6]), 
	.A1(n145), 
	.A0(n63));
   AOI31X2M U61 (.Y(ALU_OUT_Comb[2]), 
	.B0(n152), 
	.A2(n94), 
	.A1(n93), 
	.A0(n92));
   AOI22X1M U62 (.Y(n92), 
	.B1(n54), 
	.B0(N69), 
	.A1(n67), 
	.A0(N78));
   AOI221XLM U63 (.Y(n94), 
	.C0(n95), 
	.B1(n149), 
	.B0(n58), 
	.A1(n155), 
	.A0(A[3]));
   AOI222X1M U64 (.Y(n93), 
	.C1(n66), 
	.C0(N103), 
	.B1(n59), 
	.B0(A[2]), 
	.A1(n52), 
	.A0(N87));
   AOI31X2M U65 (.Y(ALU_OUT_Comb[3]), 
	.B0(n152), 
	.A2(n88), 
	.A1(n87), 
	.A0(n86));
   AOI22X1M U66 (.Y(n86), 
	.B1(n54), 
	.B0(N70), 
	.A1(n67), 
	.A0(N79));
   AOI221XLM U67 (.Y(n88), 
	.C0(n89), 
	.B1(n148), 
	.B0(n58), 
	.A1(n155), 
	.A0(A[4]));
   AOI222X1M U68 (.Y(n87), 
	.C1(n66), 
	.C0(N104), 
	.B1(n59), 
	.B0(A[3]), 
	.A1(n52), 
	.A0(N88));
   AOI31X2M U69 (.Y(ALU_OUT_Comb[4]), 
	.B0(n152), 
	.A2(n82), 
	.A1(n81), 
	.A0(n80));
   AOI22X1M U70 (.Y(n80), 
	.B1(n54), 
	.B0(N71), 
	.A1(n67), 
	.A0(N80));
   AOI221XLM U71 (.Y(n82), 
	.C0(n83), 
	.B1(n147), 
	.B0(n58), 
	.A1(A[5]), 
	.A0(n155));
   AOI222X1M U72 (.Y(n81), 
	.C1(n66), 
	.C0(N105), 
	.B1(n59), 
	.B0(A[4]), 
	.A1(n52), 
	.A0(N89));
   AOI31X2M U73 (.Y(ALU_OUT_Comb[5]), 
	.B0(n152), 
	.A2(n76), 
	.A1(n75), 
	.A0(n74));
   AOI22X1M U74 (.Y(n74), 
	.B1(n54), 
	.B0(N72), 
	.A1(n67), 
	.A0(N81));
   AOI221XLM U75 (.Y(n76), 
	.C0(n77), 
	.B1(n146), 
	.B0(n58), 
	.A1(A[6]), 
	.A0(n155));
   AOI222X1M U76 (.Y(n75), 
	.C1(n66), 
	.C0(N106), 
	.B1(n59), 
	.B0(A[5]), 
	.A1(n52), 
	.A0(N90));
   AOI31X2M U77 (.Y(ALU_OUT_Comb[6]), 
	.B0(n152), 
	.A2(n70), 
	.A1(n69), 
	.A0(n68));
   AOI22X1M U78 (.Y(n68), 
	.B1(n54), 
	.B0(N73), 
	.A1(n67), 
	.A0(N82));
   AOI221XLM U79 (.Y(n70), 
	.C0(n71), 
	.B1(n145), 
	.B0(n58), 
	.A1(A[7]), 
	.A0(n155));
   AOI222X1M U80 (.Y(n69), 
	.C1(n66), 
	.C0(N107), 
	.B1(A[6]), 
	.B0(n59), 
	.A1(n52), 
	.A0(N91));
   AOI31X2M U81 (.Y(ALU_OUT_Comb[7]), 
	.B0(n152), 
	.A2(n57), 
	.A1(n56), 
	.A0(n55));
   AOI22X1M U82 (.Y(n56), 
	.B1(n52), 
	.B0(N92), 
	.A1(n66), 
	.A0(N108));
   AOI22X1M U83 (.Y(n55), 
	.B1(n54), 
	.B0(N74), 
	.A1(n67), 
	.A0(N83));
   AOI221XLM U84 (.Y(n57), 
	.C0(n60), 
	.B1(A[7]), 
	.B0(n59), 
	.A1(n144), 
	.A0(n58));
   AOI31X2M U85 (.Y(ALU_OUT_Comb[0]), 
	.B0(n152), 
	.A2(n112), 
	.A1(n111), 
	.A0(n110));
   AOI22X1M U86 (.Y(n110), 
	.B1(n54), 
	.B0(N67), 
	.A1(n67), 
	.A0(N76));
   AOI211X2M U87 (.Y(n112), 
	.C0(n114), 
	.B0(n113), 
	.A1(n151), 
	.A0(n58));
   AOI222X1M U88 (.Y(n111), 
	.C1(n66), 
	.C0(N101), 
	.B1(n59), 
	.B0(A[0]), 
	.A1(n52), 
	.A0(N85));
   AOI31X2M U89 (.Y(ALU_OUT_Comb[1]), 
	.B0(n152), 
	.A2(n100), 
	.A1(n99), 
	.A0(n98));
   AOI211X2M U90 (.Y(n100), 
	.C0(n102), 
	.B0(n101), 
	.A1(n155), 
	.A0(A[2]));
   AOI222X1M U91 (.Y(n99), 
	.C1(n59), 
	.C0(A[1]), 
	.B1(n150), 
	.B0(n58), 
	.A1(n66), 
	.A0(N102));
   AOI222X1M U92 (.Y(n98), 
	.C1(n67), 
	.C0(N77), 
	.B1(n52), 
	.B0(N86), 
	.A1(n54), 
	.A0(N68));
   INVX2M U93 (.Y(n140), 
	.A(n109));
   AOI211X2M U94 (.Y(n109), 
	.C0(n64), 
	.B0(n58), 
	.A1(n67), 
	.A0(N84));
   AOI21X2M U95 (.Y(ALU_OUT_Comb[8]), 
	.B0(n152), 
	.A1(n51), 
	.A0(n50));
   AOI21X2M U96 (.Y(n50), 
	.B0(n140), 
	.A1(n54), 
	.A0(N75));
   AOI2BB2XLM U97 (.Y(n51), 
	.B1(n52), 
	.B0(N93), 
	.A1N(n53), 
	.A0N(n144));
   INVX2M U99 (.Y(n150), 
	.A(A[1]));
   INVX2M U100 (.Y(n151), 
	.A(A[0]));
   INVX2M U101 (.Y(n145), 
	.A(A[6]));
   INVX2M U102 (.Y(n144), 
	.A(A[7]));
   INVX2M U103 (.Y(n148), 
	.A(A[3]));
   INVX2M U104 (.Y(n149), 
	.A(A[2]));
   INVX2M U105 (.Y(n146), 
	.A(A[5]));
   INVX2M U106 (.Y(n147), 
	.A(A[4]));
   OAI222X1M U107 (.Y(n95), 
	.C1(n150), 
	.C0(n53), 
	.B1(n97), 
	.B0(B[2]), 
	.A1(n136), 
	.A0(n96));
   AOI221XLM U108 (.Y(n97), 
	.C0(n58), 
	.B1(n149), 
	.B0(n64), 
	.A1(n63), 
	.A0(A[2]));
   AOI221XLM U109 (.Y(n96), 
	.C0(n59), 
	.B1(n65), 
	.B0(A[2]), 
	.A1(n149), 
	.A0(n63));
   OAI222X1M U110 (.Y(n89), 
	.C1(n149), 
	.C0(n53), 
	.B1(n91), 
	.B0(B[3]), 
	.A1(n138), 
	.A0(n90));
   AOI221XLM U111 (.Y(n91), 
	.C0(n58), 
	.B1(n148), 
	.B0(n64), 
	.A1(n63), 
	.A0(A[3]));
   AOI221XLM U112 (.Y(n90), 
	.C0(n59), 
	.B1(n65), 
	.B0(A[3]), 
	.A1(n148), 
	.A0(n63));
   OAI222X1M U113 (.Y(n83), 
	.C1(n148), 
	.C0(n53), 
	.B1(n85), 
	.B0(B[4]), 
	.A1(n143), 
	.A0(n84));
   INVX2M U114 (.Y(n143), 
	.A(B[4]));
   AOI221XLM U115 (.Y(n85), 
	.C0(n58), 
	.B1(n147), 
	.B0(n64), 
	.A1(n63), 
	.A0(A[4]));
   AOI221XLM U116 (.Y(n84), 
	.C0(n59), 
	.B1(n65), 
	.B0(A[4]), 
	.A1(n147), 
	.A0(n63));
   OAI222X1M U117 (.Y(n77), 
	.C1(n147), 
	.C0(n53), 
	.B1(n79), 
	.B0(B[5]), 
	.A1(n142), 
	.A0(n78));
   INVX2M U118 (.Y(n142), 
	.A(B[5]));
   AOI221XLM U119 (.Y(n79), 
	.C0(n58), 
	.B1(n146), 
	.B0(n64), 
	.A1(n63), 
	.A0(A[5]));
   AOI221XLM U120 (.Y(n78), 
	.C0(n59), 
	.B1(n65), 
	.B0(A[5]), 
	.A1(n146), 
	.A0(n63));
   OAI222X1M U121 (.Y(n60), 
	.C1(n145), 
	.C0(n53), 
	.B1(n62), 
	.B0(B[7]), 
	.A1(n141), 
	.A0(n61));
   INVX2M U122 (.Y(n141), 
	.A(B[7]));
   AOI221XLM U123 (.Y(n62), 
	.C0(n58), 
	.B1(n144), 
	.B0(n64), 
	.A1(A[7]), 
	.A0(n63));
   AOI221XLM U124 (.Y(n61), 
	.C0(n59), 
	.B1(n65), 
	.B0(A[7]), 
	.A1(n144), 
	.A0(n63));
   INVX2M U125 (.Y(n135), 
	.A(n31));
   OAI2B2X1M U126 (.Y(n114), 
	.B1(n150), 
	.B0(n108), 
	.A1N(B[0]), 
	.A0(n115));
   AOI221XLM U127 (.Y(n115), 
	.C0(n59), 
	.B1(n65), 
	.B0(A[0]), 
	.A1(n151), 
	.A0(n63));
   OAI2B2X1M U128 (.Y(n102), 
	.B1(n151), 
	.B0(n53), 
	.A1N(B[1]), 
	.A0(n103));
   AOI221XLM U129 (.Y(n103), 
	.C0(n59), 
	.B1(n65), 
	.B0(A[1]), 
	.A1(n150), 
	.A0(n63));
   INVX2M U130 (.Y(n137), 
	.A(n42));
   OAI21X2M U131 (.Y(n113), 
	.B0(n120), 
	.A1(n119), 
	.A0(B[0]));
   AOI31X2M U132 (.Y(n120), 
	.B0(n107), 
	.A2(n121), 
	.A1(ALU_FUN[3]), 
	.A0(N157));
   AOI221XLM U133 (.Y(n119), 
	.C0(n58), 
	.B1(n151), 
	.B0(n64), 
	.A1(n63), 
	.A0(A[0]));
   NOR3X2M U134 (.Y(n121), 
	.C(ALU_FUN[0]), 
	.B(ALU_FUN[2]), 
	.A(n156));
   OAI21X2M U135 (.Y(n101), 
	.B0(n105), 
	.A1(n104), 
	.A0(B[1]));
   AOI31X2M U136 (.Y(n105), 
	.B0(n107), 
	.A2(n106), 
	.A1(ALU_FUN[3]), 
	.A0(N158));
   AOI221XLM U137 (.Y(n104), 
	.C0(n58), 
	.B1(n150), 
	.B0(n64), 
	.A1(n63), 
	.A0(A[1]));
   NOR3X2M U138 (.Y(n106), 
	.C(n156), 
	.B(ALU_FUN[2]), 
	.A(n153));
   INVX2M U147 (.Y(n134), 
	.A(B[0]));
   INVX2M U148 (.Y(n136), 
	.A(B[2]));
   INVX2M U149 (.Y(n138), 
	.A(B[3]));
   NOR2X1M U150 (.Y(n130), 
	.B(B[7]), 
	.A(n144));
   NAND2BX1M U151 (.Y(n46), 
	.B(A[4]), 
	.AN(B[4]));
   NAND2BX1M U152 (.Y(n35), 
	.B(B[4]), 
	.AN(A[4]));
   CLKNAND2X2M U153 (.Y(n125), 
	.B(n35), 
	.A(n46));
   NOR2X1M U154 (.Y(n43), 
	.B(A[3]), 
	.A(n138));
   NOR2X1M U155 (.Y(n34), 
	.B(A[2]), 
	.A(n136));
   NOR2X1M U156 (.Y(n31), 
	.B(A[0]), 
	.A(n134));
   CLKNAND2X2M U157 (.Y(n45), 
	.B(n136), 
	.A(A[2]));
   NAND2BX1M U158 (.Y(n40), 
	.B(n45), 
	.AN(n34));
   AOI21X1M U159 (.Y(n32), 
	.B0(B[1]), 
	.A1(n150), 
	.A0(n31));
   AOI211X1M U160 (.Y(n33), 
	.C0(n32), 
	.B0(n40), 
	.A1(n135), 
	.A0(A[1]));
   CLKNAND2X2M U161 (.Y(n44), 
	.B(n138), 
	.A(A[3]));
   OAI31X1M U162 (.Y(n36), 
	.B0(n44), 
	.A2(n33), 
	.A1(n34), 
	.A0(n43));
   NAND2BX1M U163 (.Y(n128), 
	.B(B[5]), 
	.AN(A[5]));
   OAI211X1M U164 (.Y(n37), 
	.C0(n128), 
	.B0(n35), 
	.A1(n36), 
	.A0(n125));
   NAND2BX1M U165 (.Y(n47), 
	.B(A[5]), 
	.AN(B[5]));
   XNOR2X1M U166 (.Y(n127), 
	.B(B[6]), 
	.A(A[6]));
   AOI32X1M U167 (.Y(n38), 
	.B1(n145), 
	.B0(B[6]), 
	.A2(n127), 
	.A1(n47), 
	.A0(n37));
   CLKNAND2X2M U168 (.Y(n131), 
	.B(n144), 
	.A(B[7]));
   OAI21X1M U169 (.Y(N159), 
	.B0(n131), 
	.A1(n38), 
	.A0(n130));
   CLKNAND2X2M U170 (.Y(n41), 
	.B(n134), 
	.A(A[0]));
   OA21X1M U171 (.Y(n39), 
	.B0(B[1]), 
	.A1(n150), 
	.A0(n41));
   AOI211X1M U172 (.Y(n42), 
	.C0(n39), 
	.B0(n40), 
	.A1(n150), 
	.A0(n41));
   AOI31X1M U173 (.Y(n126), 
	.B0(n43), 
	.A2(n44), 
	.A1(n45), 
	.A0(n137));
   OAI2B11X1M U174 (.Y(n129), 
	.C0(n46), 
	.B0(n47), 
	.A1N(n126), 
	.A0(n125));
   AOI32X1M U175 (.Y(n132), 
	.B1(n139), 
	.B0(A[6]), 
	.A2(n127), 
	.A1(n128), 
	.A0(n129));
   AOI2B1X1M U176 (.Y(n133), 
	.B0(n130), 
	.A1N(n132), 
	.A0(n131));
   CLKINVX1M U177 (.Y(N158), 
	.A(n133));
   NOR2X1M U178 (.Y(N157), 
	.B(N158), 
	.A(N159));
   ALU_OPER_WIDTH8_OUT_WIDTH16_DW_div_uns_0 div_52 (.a({ A[7],
		A[6],
		A[5],
		A[4],
		A[3],
		A[2],
		A[1],
		A[0] }), 
	.b({ B[7],
		B[6],
		B[5],
		B[4],
		B[3],
		B[2],
		B[1],
		B[0] }), 
	.quotient({ N108,
		N107,
		N106,
		N105,
		N104,
		N103,
		N102,
		N101 }), 
	.n134(n134), 
	.n136(n136), 
	.n138(n138), 
	.n143(n143), 
	.n142(n142), 
	.n151(n151), 
	.n150(n150), 
	.n149(n149), 
	.n148(n148), 
	.n147(n147), 
	.n146(n146), 
	.n145(n145), 
	.n139(n139));
   ALU_OPER_WIDTH8_OUT_WIDTH16_DW01_sub_0 sub_46 (.A({ 1'b0,
		A[7],
		A[6],
		A[5],
		A[4],
		A[3],
		A[2],
		A[1],
		A[0] }), 
	.B({ 1'b0,
		B[7],
		B[6],
		B[5],
		B[4],
		B[3],
		B[2],
		B[1],
		B[0] }), 
	.CI(1'b0), 
	.DIFF({ N84,
		N83,
		N82,
		N81,
		N80,
		N79,
		N78,
		N77,
		N76 }), 
	.n134(n134), 
	.n136(n136), 
	.n138(n138), 
	.n143(n143), 
	.n142(n142), 
	.n151(n151), 
	.n139(n139));
   ALU_OPER_WIDTH8_OUT_WIDTH16_DW01_add_0 add_43 (.A({ 1'b0,
		A[7],
		A[6],
		A[5],
		A[4],
		A[3],
		A[2],
		A[1],
		A[0] }), 
	.B({ 1'b0,
		B[7],
		B[6],
		B[5],
		B[4],
		B[3],
		B[2],
		B[1],
		B[0] }), 
	.CI(1'b0), 
	.SUM({ N75,
		N74,
		N73,
		N72,
		N71,
		N70,
		N69,
		N68,
		N67 }));
   ALU_OPER_WIDTH8_OUT_WIDTH16_DW02_mult_0 mult_49 (.A({ A[7],
		A[6],
		A[5],
		A[4],
		A[3],
		A[2],
		A[1],
		A[0] }), 
	.B({ B[7],
		B[6],
		B[5],
		B[4],
		B[3],
		B[2],
		B[1],
		B[0] }), 
	.TC(1'b0), 
	.PRODUCT({ N100,
		N99,
		N98,
		N97,
		N96,
		N95,
		N94,
		N93,
		N92,
		N91,
		N90,
		N89,
		N88,
		N87,
		N86,
		N85 }), 
	.n134(n134), 
	.n136(n136), 
	.n138(n138), 
	.n143(n143), 
	.n142(n142), 
	.n151(n151), 
	.n150(n150), 
	.n149(n149), 
	.n148(n148), 
	.n147(n147), 
	.n146(n146), 
	.n145(n145), 
	.n144(n144), 
	.n139(n139));
endmodule

module CLK_GATE (
	CLK_EN, 
	CLK, 
	GATED_CLK);
   input CLK_EN;
   input CLK;
   output GATED_CLK;

   TLATNCAX12M U0_TLATNCAX12M (.ECK(GATED_CLK), 
	.E(CLK_EN), 
	.CK(CLK));
endmodule

module SYS_TOP (
	RST_N, 
	UART_CLK, 
	REF_CLK, 
	UART_RX_IN, 
	SI, 
	SE, 
	scan_clk, 
	scan_rst, 
	test_mode, 
	UART_TX_O, 
	parity_error, 
	framing_error, 
	SO, 
	test_si2, 
	test_so2, 
	test_si3, 
	test_so3, 
	test_si4, 
	test_so4);
   input RST_N;
   input UART_CLK;
   input REF_CLK;
   input UART_RX_IN;
   input SI;
   input SE;
   input scan_clk;
   input scan_rst;
   input test_mode;
   output UART_TX_O;
   output parity_error;
   output framing_error;
   output SO;
   input test_si2;
   output test_so2;
   input test_si3;
   output test_so3;
   input test_si4;
   output test_so4;

   // Internal wires
   wire REF_CLK__L2_N0;
   wire REF_CLK__L1_N0;
   wire UART_CLK__L2_N0;
   wire UART_CLK__L1_N0;
   wire scan_clk__L11_N0;
   wire scan_clk__L10_N0;
   wire scan_clk__L9_N0;
   wire scan_clk__L8_N1;
   wire scan_clk__L8_N0;
   wire scan_clk__L7_N1;
   wire scan_clk__L7_N0;
   wire scan_clk__L6_N0;
   wire scan_clk__L5_N0;
   wire scan_clk__L4_N0;
   wire scan_clk__L3_N0;
   wire scan_clk__L2_N0;
   wire scan_clk__L1_N0;
   wire UART_CLK_M__L11_N0;
   wire UART_CLK_M__L10_N0;
   wire UART_CLK_M__L9_N0;
   wire UART_CLK_M__L8_N0;
   wire UART_CLK_M__L7_N0;
   wire UART_CLK_M__L6_N1;
   wire UART_CLK_M__L6_N0;
   wire UART_CLK_M__L5_N0;
   wire UART_CLK_M__L4_N0;
   wire UART_CLK_M__L3_N0;
   wire UART_CLK_M__L2_N0;
   wire UART_CLK_M__L1_N0;
   wire n22__Exclude_0_NET;
   wire n21__Exclude_0_NET;
   wire REF_CLK_M__L5_N7;
   wire REF_CLK_M__L5_N6;
   wire REF_CLK_M__L5_N5;
   wire REF_CLK_M__L5_N4;
   wire REF_CLK_M__L5_N3;
   wire REF_CLK_M__L5_N2;
   wire REF_CLK_M__L5_N1;
   wire REF_CLK_M__L5_N0;
   wire REF_CLK_M__L4_N3;
   wire REF_CLK_M__L4_N2;
   wire REF_CLK_M__L4_N1;
   wire REF_CLK_M__L4_N0;
   wire REF_CLK_M__L3_N1;
   wire REF_CLK_M__L3_N0;
   wire REF_CLK_M__L2_N0;
   wire REF_CLK_M__L1_N0;
   wire ALU_CLK__L3_N0;
   wire ALU_CLK__L2_N0;
   wire ALU_CLK__L1_N0;
   wire TX_CLK_M__L3_N1;
   wire TX_CLK_M__L3_N0;
   wire TX_CLK_M__L2_N0;
   wire TX_CLK_M__L1_N0;
   wire RX_CLK_M__L3_N0;
   wire RX_CLK_M__L2_N0;
   wire RX_CLK_M__L1_N0;
   wire FE_OFN5_SE;
   wire FE_OFN2_SYNC_RST_0_M;
   wire FE_OFN1_SYNC_RST_0_M;
   wire FE_OFN0_SYNC_RST_0_M;
   wire UART_CLK_M;
   wire REF_CLK_M;
   wire TX_CLK;
   wire TX_CLK_M;
   wire RX_CLK;
   wire RX_CLK_M;
   wire RST_N_M;
   wire SYNC_RST_0;
   wire SYNC_RST_0_M;
   wire SYNC_RST_1;
   wire SYNC_RST_1_M;
   wire RX_OUT_V;
   wire RX_D_VLD;
   wire FIFO_WrInc;
   wire FIFO_RINC;
   wire FIFO_EMPTY;
   wire FIFO_FULL;
   wire TX_BUSY;
   wire ALU_OUT_Valid;
   wire RegFile_RdData_Valid;
   wire ClkGating_EN;
   wire ALU_EN;
   wire RegFile_WrEn;
   wire RegFile_RdEn;
   wire ALU_CLK;
   wire _4_net_;
   wire n2;
   wire n3;
   wire n4;
   wire n11;
   wire n12;
   wire n16;
   wire n17;
   wire n20;
   wire n21;
   wire n22;
   wire n24;
   wire n25;
   wire n26;
   wire n28;
   wire n29;
   wire n31;
   wire n32;
   wire n33;
   wire n36;
   wire [7:0] RX_OUT_P;
   wire [7:0] RX_P_Data;
   wire [7:0] FIFO_WrData;
   wire [7:0] FIFO_RD_DATA;
   wire [7:0] REG3;
   wire [7:0] REG2;
   wire [3:0] RX_CLK_div_ratio;
   wire [15:0] ALU_OUT;
   wire [7:0] RegFile_RdData;
   wire [3:0] ALU_FUN;
   wire [3:0] RegFile_Address;
   wire [7:0] RegFile_WrData;
   wire [7:0] REG0;
   wire [7:0] REG1;

   assign test_so2 = REG1[7] ;

   CLKINVX8M REF_CLK__L2_I0 (.Y(REF_CLK__L2_N0), 
	.A(REF_CLK__L1_N0));
   CLKINVX40M REF_CLK__L1_I0 (.Y(REF_CLK__L1_N0), 
	.A(REF_CLK));
   CLKINVX8M UART_CLK__L2_I0 (.Y(UART_CLK__L2_N0), 
	.A(UART_CLK__L1_N0));
   CLKINVX40M UART_CLK__L1_I0 (.Y(UART_CLK__L1_N0), 
	.A(UART_CLK));
   CLKINVX40M scan_clk__L11_I0 (.Y(scan_clk__L11_N0), 
	.A(scan_clk__L10_N0));
   CLKINVX40M scan_clk__L10_I0 (.Y(scan_clk__L10_N0), 
	.A(scan_clk__L9_N0));
   CLKBUFX40M scan_clk__L9_I0 (.Y(scan_clk__L9_N0), 
	.A(scan_clk__L8_N1));
   CLKBUFX40M scan_clk__L8_I1 (.Y(scan_clk__L8_N1), 
	.A(scan_clk__L7_N1));
   CLKBUFX24M scan_clk__L8_I0 (.Y(scan_clk__L8_N0), 
	.A(scan_clk__L7_N0));
   CLKBUFX24M scan_clk__L7_I1 (.Y(scan_clk__L7_N1), 
	.A(scan_clk__L6_N0));
   CLKBUFX24M scan_clk__L7_I0 (.Y(scan_clk__L7_N0), 
	.A(scan_clk__L6_N0));
   CLKBUFX24M scan_clk__L6_I0 (.Y(scan_clk__L6_N0), 
	.A(scan_clk__L5_N0));
   CLKBUFX24M scan_clk__L5_I0 (.Y(scan_clk__L5_N0), 
	.A(scan_clk__L4_N0));
   CLKBUFX24M scan_clk__L4_I0 (.Y(scan_clk__L4_N0), 
	.A(scan_clk__L3_N0));
   CLKBUFX24M scan_clk__L3_I0 (.Y(scan_clk__L3_N0), 
	.A(scan_clk__L2_N0));
   CLKINVX24M scan_clk__L2_I0 (.Y(scan_clk__L2_N0), 
	.A(scan_clk__L1_N0));
   CLKINVX40M scan_clk__L1_I0 (.Y(scan_clk__L1_N0), 
	.A(scan_clk));
   CLKINVX40M UART_CLK_M__L11_I0 (.Y(UART_CLK_M__L11_N0), 
	.A(UART_CLK_M__L10_N0));
   CLKBUFX20M UART_CLK_M__L10_I0 (.Y(UART_CLK_M__L10_N0), 
	.A(UART_CLK_M__L9_N0));
   CLKBUFX20M UART_CLK_M__L9_I0 (.Y(UART_CLK_M__L9_N0), 
	.A(UART_CLK_M__L8_N0));
   CLKBUFX20M UART_CLK_M__L8_I0 (.Y(UART_CLK_M__L8_N0), 
	.A(UART_CLK_M__L7_N0));
   CLKBUFX20M UART_CLK_M__L7_I0 (.Y(UART_CLK_M__L7_N0), 
	.A(UART_CLK_M__L6_N0));
   CLKINVX40M UART_CLK_M__L6_I1 (.Y(UART_CLK_M__L6_N1), 
	.A(UART_CLK_M__L5_N0));
   CLKBUFX20M UART_CLK_M__L6_I0 (.Y(UART_CLK_M__L6_N0), 
	.A(UART_CLK_M__L5_N0));
   CLKINVX40M UART_CLK_M__L5_I0 (.Y(UART_CLK_M__L5_N0), 
	.A(UART_CLK_M__L4_N0));
   CLKBUFX40M UART_CLK_M__L4_I0 (.Y(UART_CLK_M__L4_N0), 
	.A(UART_CLK_M__L3_N0));
   CLKBUFX24M UART_CLK_M__L3_I0 (.Y(UART_CLK_M__L3_N0), 
	.A(UART_CLK_M__L2_N0));
   CLKINVX24M UART_CLK_M__L2_I0 (.Y(UART_CLK_M__L2_N0), 
	.A(UART_CLK_M__L1_N0));
   CLKINVX8M UART_CLK_M__L1_I0 (.Y(UART_CLK_M__L1_N0), 
	.A(UART_CLK_M));
   BUFX8M n22__Exclude_0 (.Y(n22__Exclude_0_NET), 
	.A(n22));
   BUFX8M n21__Exclude_0 (.Y(n21__Exclude_0_NET), 
	.A(n21));
   CLKINVX40M REF_CLK_M__L5_I7 (.Y(REF_CLK_M__L5_N7), 
	.A(REF_CLK_M__L4_N3));
   CLKINVX40M REF_CLK_M__L5_I6 (.Y(REF_CLK_M__L5_N6), 
	.A(REF_CLK_M__L4_N3));
   CLKINVX40M REF_CLK_M__L5_I5 (.Y(REF_CLK_M__L5_N5), 
	.A(REF_CLK_M__L4_N2));
   CLKINVX40M REF_CLK_M__L5_I4 (.Y(REF_CLK_M__L5_N4), 
	.A(REF_CLK_M__L4_N2));
   CLKINVX40M REF_CLK_M__L5_I3 (.Y(REF_CLK_M__L5_N3), 
	.A(REF_CLK_M__L4_N1));
   CLKINVX40M REF_CLK_M__L5_I2 (.Y(REF_CLK_M__L5_N2), 
	.A(REF_CLK_M__L4_N1));
   CLKINVX40M REF_CLK_M__L5_I1 (.Y(REF_CLK_M__L5_N1), 
	.A(REF_CLK_M__L4_N0));
   CLKINVX40M REF_CLK_M__L5_I0 (.Y(REF_CLK_M__L5_N0), 
	.A(REF_CLK_M__L4_N0));
   CLKINVX40M REF_CLK_M__L4_I3 (.Y(REF_CLK_M__L4_N3), 
	.A(REF_CLK_M__L3_N1));
   CLKINVX40M REF_CLK_M__L4_I2 (.Y(REF_CLK_M__L4_N2), 
	.A(REF_CLK_M__L3_N1));
   CLKINVX40M REF_CLK_M__L4_I1 (.Y(REF_CLK_M__L4_N1), 
	.A(REF_CLK_M__L3_N0));
   CLKINVX40M REF_CLK_M__L4_I0 (.Y(REF_CLK_M__L4_N0), 
	.A(REF_CLK_M__L3_N0));
   CLKINVX40M REF_CLK_M__L3_I1 (.Y(REF_CLK_M__L3_N1), 
	.A(REF_CLK_M__L2_N0));
   CLKINVX40M REF_CLK_M__L3_I0 (.Y(REF_CLK_M__L3_N0), 
	.A(REF_CLK_M__L2_N0));
   CLKINVX40M REF_CLK_M__L2_I0 (.Y(REF_CLK_M__L2_N0), 
	.A(REF_CLK_M__L1_N0));
   CLKBUFX12M REF_CLK_M__L1_I0 (.Y(REF_CLK_M__L1_N0), 
	.A(REF_CLK_M));
   CLKINVX32M ALU_CLK__L3_I0 (.Y(ALU_CLK__L3_N0), 
	.A(ALU_CLK__L2_N0));
   BUFX18M ALU_CLK__L2_I0 (.Y(ALU_CLK__L2_N0), 
	.A(ALU_CLK__L1_N0));
   CLKINVX6M ALU_CLK__L1_I0 (.Y(ALU_CLK__L1_N0), 
	.A(ALU_CLK));
   CLKINVX32M TX_CLK_M__L3_I1 (.Y(TX_CLK_M__L3_N1), 
	.A(TX_CLK_M__L2_N0));
   CLKINVX32M TX_CLK_M__L3_I0 (.Y(TX_CLK_M__L3_N0), 
	.A(TX_CLK_M__L2_N0));
   BUFX20M TX_CLK_M__L2_I0 (.Y(TX_CLK_M__L2_N0), 
	.A(TX_CLK_M__L1_N0));
   CLKINVX6M TX_CLK_M__L1_I0 (.Y(TX_CLK_M__L1_N0), 
	.A(TX_CLK_M));
   CLKINVX40M RX_CLK_M__L3_I0 (.Y(RX_CLK_M__L3_N0), 
	.A(RX_CLK_M__L2_N0));
   BUFX14M RX_CLK_M__L2_I0 (.Y(RX_CLK_M__L2_N0), 
	.A(RX_CLK_M__L1_N0));
   CLKINVX6M RX_CLK_M__L1_I0 (.Y(RX_CLK_M__L1_N0), 
	.A(RX_CLK_M));
   BUFX4M FE_OFC5_SE (.Y(FE_OFN5_SE), 
	.A(SE));
   CLKBUFX8M FE_OFC2_SYNC_RST_0_M (.Y(FE_OFN2_SYNC_RST_0_M), 
	.A(FE_OFN0_SYNC_RST_0_M));
   CLKBUFX8M FE_OFC1_SYNC_RST_0_M (.Y(FE_OFN1_SYNC_RST_0_M), 
	.A(SYNC_RST_0_M));
   BUFX6M FE_OFC0_SYNC_RST_0_M (.Y(FE_OFN0_SYNC_RST_0_M), 
	.A(SYNC_RST_0_M));
   BUFX2M U5 (.Y(n3), 
	.A(RegFile_Address[0]));
   BUFX4M U6 (.Y(n4), 
	.A(RegFile_Address[1]));
   OR2X2M U8 (.Y(_4_net_), 
	.B(n2), 
	.A(ClkGating_EN));
   BUFX2M U13 (.Y(n2), 
	.A(test_mode));
   INVXLM U14 (.Y(n24), 
	.A(n33));
   CLKINVX2M U15 (.Y(n25), 
	.A(n24));
   BUFX4M U16 (.Y(n26), 
	.A(n33));
   CLKBUFX1M U18 (.Y(n28), 
	.A(n31));
   INVXLM U19 (.Y(n29), 
	.A(n36));
   CLKINVX2M U21 (.Y(n31), 
	.A(n29));
   INVXLM U22 (.Y(n32), 
	.A(FE_OFN5_SE));
   INVXLM U23 (.Y(n33), 
	.A(n32));
   CLKINVX2M U26 (.Y(n36), 
	.A(n32));
   MUX_2x1_1 UART_CLK_MUX (.in0(UART_CLK__L2_N0), 
	.in1(scan_clk__L2_N0), 
	.sel(n2), 
	.out(UART_CLK_M));
   MUX_2x1_4 REF_CLK_MUX (.in0(REF_CLK__L2_N0), 
	.in1(scan_clk__L8_N0), 
	.sel(n2), 
	.out(REF_CLK_M));
   MUX_2x1_3 TX_CLK_MUX (.in0(TX_CLK), 
	.in1(scan_clk__L11_N0), 
	.sel(n2), 
	.out(TX_CLK_M));
   MUX_2x1_2 RX_CLK_MUX (.in0(RX_CLK), 
	.in1(scan_clk__L11_N0), 
	.sel(n2), 
	.out(RX_CLK_M));
   MUX_2x1_0 RST_MUX (.in0(RST_N), 
	.in1(scan_rst), 
	.sel(n2), 
	.out(RST_N_M));
   MUX_2x1_6 SYNC_RST_0_MUX (.in0(SYNC_RST_0), 
	.in1(scan_rst), 
	.sel(n2), 
	.out(SYNC_RST_0_M));
   MUX_2x1_5 SYNC_RST_1_MUX (.in0(SYNC_RST_1), 
	.in1(scan_rst), 
	.sel(n2), 
	.out(SYNC_RST_1_M));
   RST_SYNC_NUM_STAGES2_test_0 RST_SYNC_U0 (.rst(RST_N_M), 
	.clk(REF_CLK_M__L5_N7), 
	.sync_rst(SYNC_RST_0), 
	.test_si(n16), 
	.test_se(n26), 
	.n26(n26));
   RST_SYNC_NUM_STAGES2_test_1 RST_SYNC_U1 (.rst(RST_N_M), 
	.clk(UART_CLK_M__L11_N0), 
	.sync_rst(SYNC_RST_1), 
	.test_si(SYNC_RST_0), 
	.test_se(n28));
   DATA_SYNC_NUM_STAGES2_BUS_WIDTH8_test_1 DATA_SYNC_U0 (.unsync_bus({ RX_OUT_P[7],
		RX_OUT_P[6],
		RX_OUT_P[5],
		RX_OUT_P[4],
		RX_OUT_P[3],
		RX_OUT_P[2],
		RX_OUT_P[1],
		RX_OUT_P[0] }), 
	.bus_enable(RX_OUT_V), 
	.clk(REF_CLK_M__L5_N7), 
	.rst(FE_OFN2_SYNC_RST_0_M), 
	.sync_bus({ RX_P_Data[7],
		RX_P_Data[6],
		RX_P_Data[5],
		RX_P_Data[4],
		RX_P_Data[3],
		RX_P_Data[2],
		RX_P_Data[1],
		RX_P_Data[0] }), 
	.enable_pulse(RX_D_VLD), 
	.test_si(n21__Exclude_0_NET), 
	.test_so(n20), 
	.test_se(n25));
   FIFO_DATA_WIDTH8_test_1 FIFO_U0 (.w_clk(REF_CLK_M__L5_N4), 
	.w_rst_n(FE_OFN0_SYNC_RST_0_M), 
	.wr_data({ FIFO_WrData[7],
		FIFO_WrData[6],
		FIFO_WrData[5],
		FIFO_WrData[4],
		FIFO_WrData[3],
		FIFO_WrData[2],
		FIFO_WrData[1],
		FIFO_WrData[0] }), 
	.w_inc(FIFO_WrInc), 
	.r_clk(TX_CLK_M__L3_N0), 
	.r_inc(FIFO_RINC), 
	.r_rst_n(SYNC_RST_1_M), 
	.rd_data({ FIFO_RD_DATA[7],
		FIFO_RD_DATA[6],
		FIFO_RD_DATA[5],
		FIFO_RD_DATA[4],
		FIFO_RD_DATA[3],
		FIFO_RD_DATA[2],
		FIFO_RD_DATA[1],
		FIFO_RD_DATA[0] }), 
	.empty(FIFO_EMPTY), 
	.full(FIFO_FULL), 
	.test_si2(test_si2), 
	.test_si1(n20), 
	.test_so2(n17), 
	.test_so1(SO), 
	.test_se(FE_OFN5_SE), 
	.FE_OFN2_SYNC_RST_0_M(FE_OFN2_SYNC_RST_0_M), 
	.REF_CLK_M__L5_N5(REF_CLK_M__L5_N5), 
	.REF_CLK_M__L5_N6(REF_CLK_M__L5_N6), 
	.REF_CLK_M__L5_N7(REF_CLK_M__L5_N7));
   PULSE_GEN_test_1 PULSE_GEN_U0 (.clk(TX_CLK_M__L3_N0), 
	.rst(SYNC_RST_1_M), 
	.lvl_sig(TX_BUSY), 
	.pulse_sig(FIFO_RINC), 
	.test_si(n17), 
	.test_so(n16), 
	.test_se(n36), 
	.n36(n36));
   Clk_Div_test_0 Clk_Div_U0 (.i_ref_clk(UART_CLK_M__L11_N0), 
	.i_rst_n(SYNC_RST_1_M), 
	.i_clk_en(1'b1), 
	.i_div_ratio({ REG3[7],
		REG3[6],
		REG3[5],
		REG3[4],
		REG3[3],
		REG3[2],
		REG3[1],
		REG3[0] }), 
	.o_div_clk(TX_CLK), 
	.test_si(ALU_OUT_Valid), 
	.test_so(n22), 
	.test_se(n36), 
	.FE_PT1_n36(n36), 
	.n22__Exclude_0_NET(n22__Exclude_0_NET), 
	.UART_CLK_M__L2_N0(UART_CLK_M__L2_N0), 
	.UART_CLK_M__L6_N1(UART_CLK_M__L6_N1));
   CLKDIV_MUX_WIDTH4 CLKDIV_MUX_U0 (.IN({ REG2[7],
		REG2[6],
		REG2[5],
		REG2[4],
		REG2[3],
		REG2[2] }), 
	.OUT({ RX_CLK_div_ratio[3],
		RX_CLK_div_ratio[2],
		RX_CLK_div_ratio[1],
		RX_CLK_div_ratio[0] }));
   Clk_Div_test_1 Clk_Div_U1 (.i_ref_clk(UART_CLK_M__L11_N0), 
	.i_rst_n(SYNC_RST_1_M), 
	.i_clk_en(1'b1), 
	.i_div_ratio({ 1'b0,
		1'b0,
		1'b0,
		1'b0,
		RX_CLK_div_ratio[3],
		RX_CLK_div_ratio[2],
		RX_CLK_div_ratio[1],
		RX_CLK_div_ratio[0] }), 
	.o_div_clk(RX_CLK), 
	.test_si(n22__Exclude_0_NET), 
	.test_so(n21), 
	.test_se(n36), 
	.n21__Exclude_0_NET(n21__Exclude_0_NET), 
	.UART_CLK_M__L2_N0(UART_CLK_M__L2_N0), 
	.UART_CLK_M__L6_N1(UART_CLK_M__L6_N1));
   UART_test_1 UART_U0 (.RST(SYNC_RST_1_M), 
	.TX_CLK(TX_CLK_M__L3_N0), 
	.RX_CLK(RX_CLK_M__L3_N0), 
	.RX_IN_S(UART_RX_IN), 
	.RX_OUT_P({ RX_OUT_P[7],
		RX_OUT_P[6],
		RX_OUT_P[5],
		RX_OUT_P[4],
		RX_OUT_P[3],
		RX_OUT_P[2],
		RX_OUT_P[1],
		RX_OUT_P[0] }), 
	.RX_OUT_V(RX_OUT_V), 
	.TX_IN_P({ FIFO_RD_DATA[7],
		FIFO_RD_DATA[6],
		FIFO_RD_DATA[5],
		FIFO_RD_DATA[4],
		FIFO_RD_DATA[3],
		FIFO_RD_DATA[2],
		FIFO_RD_DATA[1],
		FIFO_RD_DATA[0] }), 
	.TX_IN_V(FIFO_EMPTY), 
	.TX_OUT_S(UART_TX_O), 
	.TX_OUT_V(TX_BUSY), 
	.Prescale({ REG2[7],
		REG2[6],
		REG2[5],
		REG2[4],
		REG2[3],
		REG2[2] }), 
	.parity_enable(REG2[0]), 
	.parity_type(REG2[1]), 
	.parity_error(parity_error), 
	.framing_error(framing_error), 
	.test_si(n11), 
	.test_so(test_so4), 
	.test_se(n26), 
	.TX_CLK_M__L3_N1(TX_CLK_M__L3_N1));
   SYS_CTRL_test_1 SYS_CTRL_U0 (.CLK(REF_CLK_M__L5_N7), 
	.RST(FE_OFN1_SYNC_RST_0_M), 
	.ALU_OUT({ ALU_OUT[15],
		ALU_OUT[14],
		ALU_OUT[13],
		ALU_OUT[12],
		ALU_OUT[11],
		ALU_OUT[10],
		ALU_OUT[9],
		ALU_OUT[8],
		ALU_OUT[7],
		ALU_OUT[6],
		ALU_OUT[5],
		ALU_OUT[4],
		ALU_OUT[3],
		ALU_OUT[2],
		ALU_OUT[1],
		ALU_OUT[0] }), 
	.ALU_OUT_Valid(ALU_OUT_Valid), 
	.RX_P_Data({ RX_P_Data[7],
		RX_P_Data[6],
		RX_P_Data[5],
		RX_P_Data[4],
		RX_P_Data[3],
		RX_P_Data[2],
		RX_P_Data[1],
		RX_P_Data[0] }), 
	.RX_D_VLD(RX_D_VLD), 
	.RegFile_RdData({ RegFile_RdData[7],
		RegFile_RdData[6],
		RegFile_RdData[5],
		RegFile_RdData[4],
		RegFile_RdData[3],
		RegFile_RdData[2],
		RegFile_RdData[1],
		RegFile_RdData[0] }), 
	.RegFile_RdData_Valid(RegFile_RdData_Valid), 
	.FIFO_FULL(FIFO_FULL), 
	.ClkGating_EN(ClkGating_EN), 
	.ALU_EN(ALU_EN), 
	.ALU_FUN({ ALU_FUN[3],
		ALU_FUN[2],
		ALU_FUN[1],
		ALU_FUN[0] }), 
	.RegFile_Address({ RegFile_Address[3],
		RegFile_Address[2],
		RegFile_Address[1],
		RegFile_Address[0] }), 
	.RegFile_WrEn(RegFile_WrEn), 
	.RegFile_RdEn(RegFile_RdEn), 
	.RegFile_WrData({ RegFile_WrData[7],
		RegFile_WrData[6],
		RegFile_WrData[5],
		RegFile_WrData[4],
		RegFile_WrData[3],
		RegFile_WrData[2],
		RegFile_WrData[1],
		RegFile_WrData[0] }), 
	.FIFO_WrData({ FIFO_WrData[7],
		FIFO_WrData[6],
		FIFO_WrData[5],
		FIFO_WrData[4],
		FIFO_WrData[3],
		FIFO_WrData[2],
		FIFO_WrData[1],
		FIFO_WrData[0] }), 
	.FIFO_WrInc(FIFO_WrInc), 
	.test_si(n12), 
	.test_so(n11), 
	.test_se(n36), 
	.FE_OFN2_SYNC_RST_0_M(FE_OFN2_SYNC_RST_0_M));
   RegFile_WIDTH8_DEPTH16_ADDR4_test_1 RegFile_U0 (.CLK(REF_CLK_M__L5_N0), 
	.RST(SYNC_RST_0_M), 
	.WrEn(RegFile_WrEn), 
	.RdEn(RegFile_RdEn), 
	.Address({ RegFile_Address[3],
		RegFile_Address[2],
		n4,
		n3 }), 
	.WrData({ RegFile_WrData[7],
		RegFile_WrData[6],
		RegFile_WrData[5],
		RegFile_WrData[4],
		RegFile_WrData[3],
		RegFile_WrData[2],
		RegFile_WrData[1],
		RegFile_WrData[0] }), 
	.RdData({ RegFile_RdData[7],
		RegFile_RdData[6],
		RegFile_RdData[5],
		RegFile_RdData[4],
		RegFile_RdData[3],
		RegFile_RdData[2],
		RegFile_RdData[1],
		RegFile_RdData[0] }), 
	.RdData_VLD(RegFile_RdData_Valid), 
	.REG0({ REG0[7],
		REG0[6],
		REG0[5],
		REG0[4],
		REG0[3],
		REG0[2],
		REG0[1],
		REG0[0] }), 
	.REG1({ REG1[7],
		REG1[6],
		REG1[5],
		REG1[4],
		REG1[3],
		REG1[2],
		REG1[1],
		REG1[0] }), 
	.REG2({ REG2[7],
		REG2[6],
		REG2[5],
		REG2[4],
		REG2[3],
		REG2[2],
		REG2[1],
		REG2[0] }), 
	.REG3({ REG3[7],
		REG3[6],
		REG3[5],
		REG3[4],
		REG3[3],
		REG3[2],
		REG3[1],
		REG3[0] }), 
	.test_si3(test_si4), 
	.test_si2(test_si3), 
	.test_si1(SYNC_RST_1), 
	.test_so2(n12), 
	.test_so1(test_so3), 
	.test_se(FE_OFN5_SE), 
	.FE_OFN0_SYNC_RST_0_M(FE_OFN0_SYNC_RST_0_M), 
	.FE_OFN1_SYNC_RST_0_M(FE_OFN1_SYNC_RST_0_M), 
	.REF_CLK_M__L5_N1(REF_CLK_M__L5_N1), 
	.REF_CLK_M__L5_N2(REF_CLK_M__L5_N2), 
	.REF_CLK_M__L5_N3(REF_CLK_M__L5_N3), 
	.REF_CLK_M__L5_N5(REF_CLK_M__L5_N5), 
	.REF_CLK_M__L5_N7(REF_CLK_M__L5_N7));
   ALU_OPER_WIDTH8_OUT_WIDTH16_test_1 ALU_U0 (.A({ REG0[7],
		REG0[6],
		REG0[5],
		REG0[4],
		REG0[3],
		REG0[2],
		REG0[1],
		REG0[0] }), 
	.B({ REG1[7],
		REG1[6],
		REG1[5],
		REG1[4],
		REG1[3],
		REG1[2],
		REG1[1],
		REG1[0] }), 
	.EN(ALU_EN), 
	.ALU_FUN({ ALU_FUN[3],
		ALU_FUN[2],
		ALU_FUN[1],
		ALU_FUN[0] }), 
	.CLK(ALU_CLK__L3_N0), 
	.RST(FE_OFN1_SYNC_RST_0_M), 
	.ALU_OUT({ ALU_OUT[15],
		ALU_OUT[14],
		ALU_OUT[13],
		ALU_OUT[12],
		ALU_OUT[11],
		ALU_OUT[10],
		ALU_OUT[9],
		ALU_OUT[8],
		ALU_OUT[7],
		ALU_OUT[6],
		ALU_OUT[5],
		ALU_OUT[4],
		ALU_OUT[3],
		ALU_OUT[2],
		ALU_OUT[1],
		ALU_OUT[0] }), 
	.OUT_VALID(ALU_OUT_Valid), 
	.test_si(SI), 
	.test_se(n31));
   CLK_GATE CLK_GATE_U0 (.CLK_EN(_4_net_), 
	.CLK(REF_CLK_M), 
	.GATED_CLK(ALU_CLK));
endmodule

