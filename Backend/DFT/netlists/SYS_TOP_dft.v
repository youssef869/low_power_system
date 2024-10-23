/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : K-2015.06
// Date      : Wed Oct 23 22:21:52 2024
/////////////////////////////////////////////////////////////


module MUX_2x1_1 ( in0, in1, sel, out );
  input in0, in1, sel;
  output out;
  wire   N0;
  assign N0 = sel;

  MX2X2M U1 ( .A(in0), .B(in1), .S0(N0), .Y(out) );
endmodule


module MUX_2x1_4 ( in0, in1, sel, out );
  input in0, in1, sel;
  output out;
  wire   N0;
  assign N0 = sel;

  MX2X6M U1 ( .A(in0), .B(in1), .S0(N0), .Y(out) );
endmodule


module MUX_2x1_3 ( in0, in1, sel, out );
  input in0, in1, sel;
  output out;
  wire   N0;
  assign N0 = sel;

  MX2X2M U1 ( .A(in0), .B(in1), .S0(N0), .Y(out) );
endmodule


module MUX_2x1_2 ( in0, in1, sel, out );
  input in0, in1, sel;
  output out;
  wire   N0;
  assign N0 = sel;

  MX2X2M U1 ( .A(in0), .B(in1), .S0(N0), .Y(out) );
endmodule


module MUX_2x1_0 ( in0, in1, sel, out );
  input in0, in1, sel;
  output out;
  wire   N0;
  assign N0 = sel;

  MX2X2M U1 ( .A(in0), .B(in1), .S0(N0), .Y(out) );
endmodule


module MUX_2x1_6 ( in0, in1, sel, out );
  input in0, in1, sel;
  output out;
  wire   N0;
  assign N0 = sel;

  MX2X2M U1 ( .A(in0), .B(in1), .S0(N0), .Y(out) );
endmodule


module MUX_2x1_5 ( in0, in1, sel, out );
  input in0, in1, sel;
  output out;
  wire   N0;
  assign N0 = sel;

  MX2X2M U1 ( .A(in0), .B(in1), .S0(N0), .Y(out) );
endmodule


module RST_SYNC_NUM_STAGES2_test_0 ( rst, clk, sync_rst, test_si, test_se );
  input rst, clk, test_si, test_se;
  output sync_rst;
  wire   \sync_rst_reg[0] ;

  SDFFRQX2M \sync_rst_reg_reg[0]  ( .D(1'b1), .SI(test_si), .SE(test_se), .CK(
        clk), .RN(rst), .Q(\sync_rst_reg[0] ) );
  SDFFRQX1M \sync_rst_reg_reg[1]  ( .D(\sync_rst_reg[0] ), .SI(
        \sync_rst_reg[0] ), .SE(test_se), .CK(clk), .RN(rst), .Q(sync_rst) );
endmodule


module RST_SYNC_NUM_STAGES2_test_1 ( rst, clk, sync_rst, test_si, test_se );
  input rst, clk, test_si, test_se;
  output sync_rst;
  wire   \sync_rst_reg[0] ;

  SDFFRQX2M \sync_rst_reg_reg[0]  ( .D(1'b1), .SI(test_si), .SE(test_se), .CK(
        clk), .RN(rst), .Q(\sync_rst_reg[0] ) );
  SDFFRQX1M \sync_rst_reg_reg[1]  ( .D(\sync_rst_reg[0] ), .SI(
        \sync_rst_reg[0] ), .SE(test_se), .CK(clk), .RN(rst), .Q(sync_rst) );
endmodule


module DATA_SYNC_NUM_STAGES2_BUS_WIDTH8_test_1 ( unsync_bus, bus_enable, clk, 
        rst, sync_bus, enable_pulse, test_si, test_so, test_se );
  input [7:0] unsync_bus;
  output [7:0] sync_bus;
  input bus_enable, clk, rst, test_si, test_se;
  output enable_pulse, test_so;
  wire   pulse_gen_reg, n1, n3, n5, n7, n9, n11, n13, n15, n17, n22;
  wire   [1:0] sync_enable_reg;
  assign test_so = sync_enable_reg[1];

  SDFFRQX2M pulse_gen_reg_reg ( .D(sync_enable_reg[1]), .SI(enable_pulse), 
        .SE(test_se), .CK(clk), .RN(rst), .Q(pulse_gen_reg) );
  SDFFRQX2M \sync_enable_reg_reg[1]  ( .D(sync_enable_reg[0]), .SI(
        sync_enable_reg[0]), .SE(test_se), .CK(clk), .RN(rst), .Q(
        sync_enable_reg[1]) );
  SDFFRQX2M \sync_bus_reg[7]  ( .D(n17), .SI(sync_bus[6]), .SE(test_se), .CK(
        clk), .RN(rst), .Q(sync_bus[7]) );
  SDFFRQX2M \sync_bus_reg[4]  ( .D(n11), .SI(sync_bus[3]), .SE(test_se), .CK(
        clk), .RN(rst), .Q(sync_bus[4]) );
  SDFFRQX2M \sync_bus_reg[6]  ( .D(n15), .SI(sync_bus[5]), .SE(test_se), .CK(
        clk), .RN(rst), .Q(sync_bus[6]) );
  SDFFRQX2M \sync_bus_reg[5]  ( .D(n13), .SI(sync_bus[4]), .SE(test_se), .CK(
        clk), .RN(rst), .Q(sync_bus[5]) );
  SDFFRQX2M \sync_bus_reg[3]  ( .D(n9), .SI(sync_bus[2]), .SE(test_se), .CK(
        clk), .RN(rst), .Q(sync_bus[3]) );
  SDFFRQX2M \sync_bus_reg[2]  ( .D(n7), .SI(sync_bus[1]), .SE(test_se), .CK(
        clk), .RN(rst), .Q(sync_bus[2]) );
  SDFFRQX2M \sync_bus_reg[1]  ( .D(n5), .SI(sync_bus[0]), .SE(test_se), .CK(
        clk), .RN(rst), .Q(sync_bus[1]) );
  SDFFRQX2M \sync_bus_reg[0]  ( .D(n3), .SI(pulse_gen_reg), .SE(test_se), .CK(
        clk), .RN(rst), .Q(sync_bus[0]) );
  SDFFRQX2M enable_pulse_reg ( .D(n22), .SI(test_si), .SE(test_se), .CK(clk), 
        .RN(rst), .Q(enable_pulse) );
  SDFFRQX2M \sync_enable_reg_reg[0]  ( .D(bus_enable), .SI(sync_bus[7]), .SE(
        test_se), .CK(clk), .RN(rst), .Q(sync_enable_reg[0]) );
  INVX2M U3 ( .A(n1), .Y(n22) );
  NAND2BX2M U4 ( .AN(pulse_gen_reg), .B(sync_enable_reg[1]), .Y(n1) );
  AO22X1M U5 ( .A0(unsync_bus[0]), .A1(n22), .B0(sync_bus[0]), .B1(n1), .Y(n3)
         );
  AO22X1M U6 ( .A0(unsync_bus[1]), .A1(n22), .B0(sync_bus[1]), .B1(n1), .Y(n5)
         );
  AO22X1M U7 ( .A0(unsync_bus[2]), .A1(n22), .B0(sync_bus[2]), .B1(n1), .Y(n7)
         );
  AO22X1M U8 ( .A0(unsync_bus[3]), .A1(n22), .B0(sync_bus[3]), .B1(n1), .Y(n9)
         );
  AO22X1M U9 ( .A0(unsync_bus[4]), .A1(n22), .B0(sync_bus[4]), .B1(n1), .Y(n11) );
  AO22X1M U10 ( .A0(unsync_bus[5]), .A1(n22), .B0(sync_bus[5]), .B1(n1), .Y(
        n13) );
  AO22X1M U11 ( .A0(unsync_bus[6]), .A1(n22), .B0(sync_bus[6]), .B1(n1), .Y(
        n15) );
  AO22X1M U12 ( .A0(unsync_bus[7]), .A1(n22), .B0(sync_bus[7]), .B1(n1), .Y(
        n17) );
endmodule


module FIFO_MEM_CNTRL_DATA_WIDTH8_test_1 ( w_clk, w_rst_n, w_data, w_clken, 
        w_addr, r_addr, r_data, test_si2, test_si1, test_so2, test_so1, 
        test_se );
  input [7:0] w_data;
  input [2:0] w_addr;
  input [2:0] r_addr;
  output [7:0] r_data;
  input w_clk, w_rst_n, w_clken, test_si2, test_si1, test_se;
  output test_so2, test_so1;
  wire   N10, N11, N12, \FIFO_BUFFER[7][7] , \FIFO_BUFFER[7][6] ,
         \FIFO_BUFFER[7][5] , \FIFO_BUFFER[7][4] , \FIFO_BUFFER[7][3] ,
         \FIFO_BUFFER[7][2] , \FIFO_BUFFER[7][1] , \FIFO_BUFFER[7][0] ,
         \FIFO_BUFFER[6][7] , \FIFO_BUFFER[6][6] , \FIFO_BUFFER[6][5] ,
         \FIFO_BUFFER[6][4] , \FIFO_BUFFER[6][3] , \FIFO_BUFFER[6][2] ,
         \FIFO_BUFFER[6][1] , \FIFO_BUFFER[6][0] , \FIFO_BUFFER[5][7] ,
         \FIFO_BUFFER[5][6] , \FIFO_BUFFER[5][5] , \FIFO_BUFFER[5][4] ,
         \FIFO_BUFFER[5][3] , \FIFO_BUFFER[5][2] , \FIFO_BUFFER[5][1] ,
         \FIFO_BUFFER[5][0] , \FIFO_BUFFER[4][7] , \FIFO_BUFFER[4][6] ,
         \FIFO_BUFFER[4][5] , \FIFO_BUFFER[4][4] , \FIFO_BUFFER[4][3] ,
         \FIFO_BUFFER[4][2] , \FIFO_BUFFER[4][1] , \FIFO_BUFFER[4][0] ,
         \FIFO_BUFFER[3][7] , \FIFO_BUFFER[3][6] , \FIFO_BUFFER[3][5] ,
         \FIFO_BUFFER[3][4] , \FIFO_BUFFER[3][3] , \FIFO_BUFFER[3][2] ,
         \FIFO_BUFFER[3][1] , \FIFO_BUFFER[3][0] , \FIFO_BUFFER[2][7] ,
         \FIFO_BUFFER[2][6] , \FIFO_BUFFER[2][5] , \FIFO_BUFFER[2][4] ,
         \FIFO_BUFFER[2][3] , \FIFO_BUFFER[2][2] , \FIFO_BUFFER[2][1] ,
         \FIFO_BUFFER[2][0] , \FIFO_BUFFER[1][7] , \FIFO_BUFFER[1][6] ,
         \FIFO_BUFFER[1][5] , \FIFO_BUFFER[1][4] , \FIFO_BUFFER[1][3] ,
         \FIFO_BUFFER[1][2] , \FIFO_BUFFER[1][1] , \FIFO_BUFFER[1][0] ,
         \FIFO_BUFFER[0][7] , \FIFO_BUFFER[0][6] , \FIFO_BUFFER[0][5] ,
         \FIFO_BUFFER[0][4] , \FIFO_BUFFER[0][3] , \FIFO_BUFFER[0][2] ,
         \FIFO_BUFFER[0][1] , \FIFO_BUFFER[0][0] , n75, n76, n77, n78, n79,
         n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93,
         n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116,
         n117, n118, n119, n120, n121, n122, n123, n124, n125, n126, n127,
         n128, n129, n130, n131, n132, n133, n134, n135, n136, n137, n138,
         n139, n140, n141, n142, n143, n144, n145, n146, n147, n148, n65, n66,
         n67, n68, n69, n70, n71, n72, n73, n74, n149, n150, n151, n152, n153,
         n154, n155, n156, n157, n158, n159, n160, n161, n162, n163, n164,
         n165, n166, n167, n168, n169, n170, n171, n172, n173, n174, n175,
         n176, n180, n181, n182, n183, n184, n185, n186;
  assign N10 = r_addr[0];
  assign N11 = r_addr[1];
  assign N12 = r_addr[2];
  assign test_so2 = \FIFO_BUFFER[7][7] ;
  assign test_so1 = \FIFO_BUFFER[2][7] ;

  SDFFRQX2M \FIFO_BUFFER_reg[5][7]  ( .D(n132), .SI(\FIFO_BUFFER[5][6] ), .SE(
        n184), .CK(w_clk), .RN(n162), .Q(\FIFO_BUFFER[5][7] ) );
  SDFFRQX2M \FIFO_BUFFER_reg[5][6]  ( .D(n131), .SI(\FIFO_BUFFER[5][5] ), .SE(
        n183), .CK(w_clk), .RN(n162), .Q(\FIFO_BUFFER[5][6] ) );
  SDFFRQX2M \FIFO_BUFFER_reg[5][5]  ( .D(n130), .SI(\FIFO_BUFFER[5][4] ), .SE(
        n182), .CK(w_clk), .RN(n162), .Q(\FIFO_BUFFER[5][5] ) );
  SDFFRQX2M \FIFO_BUFFER_reg[5][4]  ( .D(n129), .SI(\FIFO_BUFFER[5][3] ), .SE(
        n181), .CK(w_clk), .RN(n162), .Q(\FIFO_BUFFER[5][4] ) );
  SDFFRQX2M \FIFO_BUFFER_reg[5][3]  ( .D(n128), .SI(\FIFO_BUFFER[5][2] ), .SE(
        n184), .CK(w_clk), .RN(n162), .Q(\FIFO_BUFFER[5][3] ) );
  SDFFRQX2M \FIFO_BUFFER_reg[5][2]  ( .D(n127), .SI(\FIFO_BUFFER[5][1] ), .SE(
        n183), .CK(w_clk), .RN(n162), .Q(\FIFO_BUFFER[5][2] ) );
  SDFFRQX2M \FIFO_BUFFER_reg[5][1]  ( .D(n126), .SI(\FIFO_BUFFER[5][0] ), .SE(
        n182), .CK(w_clk), .RN(n162), .Q(\FIFO_BUFFER[5][1] ) );
  SDFFRQX2M \FIFO_BUFFER_reg[5][0]  ( .D(n125), .SI(\FIFO_BUFFER[4][7] ), .SE(
        n181), .CK(w_clk), .RN(n162), .Q(\FIFO_BUFFER[5][0] ) );
  SDFFRQX2M \FIFO_BUFFER_reg[1][7]  ( .D(n100), .SI(\FIFO_BUFFER[1][6] ), .SE(
        n184), .CK(w_clk), .RN(n165), .Q(\FIFO_BUFFER[1][7] ) );
  SDFFRQX2M \FIFO_BUFFER_reg[1][6]  ( .D(n99), .SI(\FIFO_BUFFER[1][5] ), .SE(
        n183), .CK(w_clk), .RN(n165), .Q(\FIFO_BUFFER[1][6] ) );
  SDFFRQX2M \FIFO_BUFFER_reg[1][5]  ( .D(n98), .SI(\FIFO_BUFFER[1][4] ), .SE(
        n182), .CK(w_clk), .RN(n165), .Q(\FIFO_BUFFER[1][5] ) );
  SDFFRQX2M \FIFO_BUFFER_reg[1][4]  ( .D(n97), .SI(\FIFO_BUFFER[1][3] ), .SE(
        n181), .CK(w_clk), .RN(n165), .Q(\FIFO_BUFFER[1][4] ) );
  SDFFRQX2M \FIFO_BUFFER_reg[1][3]  ( .D(n96), .SI(\FIFO_BUFFER[1][2] ), .SE(
        n184), .CK(w_clk), .RN(n165), .Q(\FIFO_BUFFER[1][3] ) );
  SDFFRQX2M \FIFO_BUFFER_reg[1][2]  ( .D(n95), .SI(\FIFO_BUFFER[1][1] ), .SE(
        n183), .CK(w_clk), .RN(n165), .Q(\FIFO_BUFFER[1][2] ) );
  SDFFRQX2M \FIFO_BUFFER_reg[1][1]  ( .D(n94), .SI(\FIFO_BUFFER[1][0] ), .SE(
        n182), .CK(w_clk), .RN(n165), .Q(\FIFO_BUFFER[1][1] ) );
  SDFFRQX2M \FIFO_BUFFER_reg[1][0]  ( .D(n93), .SI(\FIFO_BUFFER[0][7] ), .SE(
        n181), .CK(w_clk), .RN(n165), .Q(\FIFO_BUFFER[1][0] ) );
  SDFFRQX2M \FIFO_BUFFER_reg[7][7]  ( .D(n148), .SI(\FIFO_BUFFER[7][6] ), .SE(
        n184), .CK(w_clk), .RN(n161), .Q(\FIFO_BUFFER[7][7] ) );
  SDFFRQX2M \FIFO_BUFFER_reg[7][6]  ( .D(n147), .SI(\FIFO_BUFFER[7][5] ), .SE(
        n183), .CK(w_clk), .RN(n161), .Q(\FIFO_BUFFER[7][6] ) );
  SDFFRQX2M \FIFO_BUFFER_reg[7][5]  ( .D(n146), .SI(\FIFO_BUFFER[7][4] ), .SE(
        n182), .CK(w_clk), .RN(n161), .Q(\FIFO_BUFFER[7][5] ) );
  SDFFRQX2M \FIFO_BUFFER_reg[7][4]  ( .D(n145), .SI(\FIFO_BUFFER[7][3] ), .SE(
        n181), .CK(w_clk), .RN(n161), .Q(\FIFO_BUFFER[7][4] ) );
  SDFFRQX2M \FIFO_BUFFER_reg[7][3]  ( .D(n144), .SI(\FIFO_BUFFER[7][2] ), .SE(
        n184), .CK(w_clk), .RN(n161), .Q(\FIFO_BUFFER[7][3] ) );
  SDFFRQX2M \FIFO_BUFFER_reg[7][2]  ( .D(n143), .SI(\FIFO_BUFFER[7][1] ), .SE(
        n183), .CK(w_clk), .RN(n161), .Q(\FIFO_BUFFER[7][2] ) );
  SDFFRQX2M \FIFO_BUFFER_reg[7][1]  ( .D(n142), .SI(\FIFO_BUFFER[7][0] ), .SE(
        n182), .CK(w_clk), .RN(n161), .Q(\FIFO_BUFFER[7][1] ) );
  SDFFRQX2M \FIFO_BUFFER_reg[7][0]  ( .D(n141), .SI(\FIFO_BUFFER[6][7] ), .SE(
        n181), .CK(w_clk), .RN(n161), .Q(\FIFO_BUFFER[7][0] ) );
  SDFFRQX2M \FIFO_BUFFER_reg[3][7]  ( .D(n116), .SI(\FIFO_BUFFER[3][6] ), .SE(
        n184), .CK(w_clk), .RN(n163), .Q(\FIFO_BUFFER[3][7] ) );
  SDFFRQX2M \FIFO_BUFFER_reg[3][6]  ( .D(n115), .SI(\FIFO_BUFFER[3][5] ), .SE(
        n183), .CK(w_clk), .RN(n163), .Q(\FIFO_BUFFER[3][6] ) );
  SDFFRQX2M \FIFO_BUFFER_reg[3][5]  ( .D(n114), .SI(\FIFO_BUFFER[3][4] ), .SE(
        n182), .CK(w_clk), .RN(n163), .Q(\FIFO_BUFFER[3][5] ) );
  SDFFRQX2M \FIFO_BUFFER_reg[3][4]  ( .D(n113), .SI(\FIFO_BUFFER[3][3] ), .SE(
        n181), .CK(w_clk), .RN(n163), .Q(\FIFO_BUFFER[3][4] ) );
  SDFFRQX2M \FIFO_BUFFER_reg[3][3]  ( .D(n112), .SI(\FIFO_BUFFER[3][2] ), .SE(
        n184), .CK(w_clk), .RN(n164), .Q(\FIFO_BUFFER[3][3] ) );
  SDFFRQX2M \FIFO_BUFFER_reg[3][2]  ( .D(n111), .SI(\FIFO_BUFFER[3][1] ), .SE(
        n183), .CK(w_clk), .RN(n164), .Q(\FIFO_BUFFER[3][2] ) );
  SDFFRQX2M \FIFO_BUFFER_reg[3][1]  ( .D(n110), .SI(\FIFO_BUFFER[3][0] ), .SE(
        n182), .CK(w_clk), .RN(n164), .Q(\FIFO_BUFFER[3][1] ) );
  SDFFRQX2M \FIFO_BUFFER_reg[3][0]  ( .D(n109), .SI(test_si2), .SE(n181), .CK(
        w_clk), .RN(n164), .Q(\FIFO_BUFFER[3][0] ) );
  SDFFRQX2M \FIFO_BUFFER_reg[6][7]  ( .D(n140), .SI(\FIFO_BUFFER[6][6] ), .SE(
        n184), .CK(w_clk), .RN(n161), .Q(\FIFO_BUFFER[6][7] ) );
  SDFFRQX2M \FIFO_BUFFER_reg[6][6]  ( .D(n139), .SI(\FIFO_BUFFER[6][5] ), .SE(
        n183), .CK(w_clk), .RN(n161), .Q(\FIFO_BUFFER[6][6] ) );
  SDFFRQX2M \FIFO_BUFFER_reg[6][5]  ( .D(n138), .SI(\FIFO_BUFFER[6][4] ), .SE(
        n182), .CK(w_clk), .RN(n161), .Q(\FIFO_BUFFER[6][5] ) );
  SDFFRQX2M \FIFO_BUFFER_reg[6][4]  ( .D(n137), .SI(\FIFO_BUFFER[6][3] ), .SE(
        n181), .CK(w_clk), .RN(n161), .Q(\FIFO_BUFFER[6][4] ) );
  SDFFRQX2M \FIFO_BUFFER_reg[6][3]  ( .D(n136), .SI(\FIFO_BUFFER[6][2] ), .SE(
        n184), .CK(w_clk), .RN(n162), .Q(\FIFO_BUFFER[6][3] ) );
  SDFFRQX2M \FIFO_BUFFER_reg[6][2]  ( .D(n135), .SI(\FIFO_BUFFER[6][1] ), .SE(
        n183), .CK(w_clk), .RN(n162), .Q(\FIFO_BUFFER[6][2] ) );
  SDFFRQX2M \FIFO_BUFFER_reg[6][1]  ( .D(n134), .SI(\FIFO_BUFFER[6][0] ), .SE(
        n182), .CK(w_clk), .RN(n162), .Q(\FIFO_BUFFER[6][1] ) );
  SDFFRQX2M \FIFO_BUFFER_reg[6][0]  ( .D(n133), .SI(\FIFO_BUFFER[5][7] ), .SE(
        n181), .CK(w_clk), .RN(n162), .Q(\FIFO_BUFFER[6][0] ) );
  SDFFRQX2M \FIFO_BUFFER_reg[2][6]  ( .D(n107), .SI(\FIFO_BUFFER[2][5] ), .SE(
        n183), .CK(w_clk), .RN(n164), .Q(\FIFO_BUFFER[2][6] ) );
  SDFFRQX2M \FIFO_BUFFER_reg[2][5]  ( .D(n106), .SI(\FIFO_BUFFER[2][4] ), .SE(
        n182), .CK(w_clk), .RN(n164), .Q(\FIFO_BUFFER[2][5] ) );
  SDFFRQX2M \FIFO_BUFFER_reg[2][4]  ( .D(n105), .SI(\FIFO_BUFFER[2][3] ), .SE(
        n181), .CK(w_clk), .RN(n164), .Q(\FIFO_BUFFER[2][4] ) );
  SDFFRQX2M \FIFO_BUFFER_reg[2][3]  ( .D(n104), .SI(\FIFO_BUFFER[2][2] ), .SE(
        n184), .CK(w_clk), .RN(n164), .Q(\FIFO_BUFFER[2][3] ) );
  SDFFRQX2M \FIFO_BUFFER_reg[2][2]  ( .D(n103), .SI(\FIFO_BUFFER[2][1] ), .SE(
        n183), .CK(w_clk), .RN(n164), .Q(\FIFO_BUFFER[2][2] ) );
  SDFFRQX2M \FIFO_BUFFER_reg[2][1]  ( .D(n102), .SI(\FIFO_BUFFER[2][0] ), .SE(
        n182), .CK(w_clk), .RN(n164), .Q(\FIFO_BUFFER[2][1] ) );
  SDFFRQX2M \FIFO_BUFFER_reg[2][0]  ( .D(n101), .SI(\FIFO_BUFFER[1][7] ), .SE(
        n181), .CK(w_clk), .RN(n164), .Q(\FIFO_BUFFER[2][0] ) );
  SDFFRQX2M \FIFO_BUFFER_reg[4][7]  ( .D(n124), .SI(\FIFO_BUFFER[4][6] ), .SE(
        n184), .CK(w_clk), .RN(n163), .Q(\FIFO_BUFFER[4][7] ) );
  SDFFRQX2M \FIFO_BUFFER_reg[4][6]  ( .D(n123), .SI(\FIFO_BUFFER[4][5] ), .SE(
        n183), .CK(w_clk), .RN(n163), .Q(\FIFO_BUFFER[4][6] ) );
  SDFFRQX2M \FIFO_BUFFER_reg[4][5]  ( .D(n122), .SI(\FIFO_BUFFER[4][4] ), .SE(
        n182), .CK(w_clk), .RN(n163), .Q(\FIFO_BUFFER[4][5] ) );
  SDFFRQX2M \FIFO_BUFFER_reg[4][4]  ( .D(n121), .SI(\FIFO_BUFFER[4][3] ), .SE(
        n181), .CK(w_clk), .RN(n163), .Q(\FIFO_BUFFER[4][4] ) );
  SDFFRQX2M \FIFO_BUFFER_reg[4][3]  ( .D(n120), .SI(\FIFO_BUFFER[4][2] ), .SE(
        n184), .CK(w_clk), .RN(n163), .Q(\FIFO_BUFFER[4][3] ) );
  SDFFRQX2M \FIFO_BUFFER_reg[4][2]  ( .D(n119), .SI(\FIFO_BUFFER[4][1] ), .SE(
        n183), .CK(w_clk), .RN(n163), .Q(\FIFO_BUFFER[4][2] ) );
  SDFFRQX2M \FIFO_BUFFER_reg[4][1]  ( .D(n118), .SI(\FIFO_BUFFER[4][0] ), .SE(
        n182), .CK(w_clk), .RN(n163), .Q(\FIFO_BUFFER[4][1] ) );
  SDFFRQX2M \FIFO_BUFFER_reg[4][0]  ( .D(n117), .SI(\FIFO_BUFFER[3][7] ), .SE(
        n181), .CK(w_clk), .RN(n163), .Q(\FIFO_BUFFER[4][0] ) );
  SDFFRQX2M \FIFO_BUFFER_reg[0][7]  ( .D(n92), .SI(\FIFO_BUFFER[0][6] ), .SE(
        n184), .CK(w_clk), .RN(n165), .Q(\FIFO_BUFFER[0][7] ) );
  SDFFRQX2M \FIFO_BUFFER_reg[0][6]  ( .D(n91), .SI(\FIFO_BUFFER[0][5] ), .SE(
        n183), .CK(w_clk), .RN(n165), .Q(\FIFO_BUFFER[0][6] ) );
  SDFFRQX2M \FIFO_BUFFER_reg[0][5]  ( .D(n90), .SI(\FIFO_BUFFER[0][4] ), .SE(
        n182), .CK(w_clk), .RN(n165), .Q(\FIFO_BUFFER[0][5] ) );
  SDFFRQX2M \FIFO_BUFFER_reg[0][4]  ( .D(n89), .SI(\FIFO_BUFFER[0][3] ), .SE(
        n181), .CK(w_clk), .RN(n165), .Q(\FIFO_BUFFER[0][4] ) );
  SDFFRQX2M \FIFO_BUFFER_reg[0][3]  ( .D(n88), .SI(\FIFO_BUFFER[0][2] ), .SE(
        n184), .CK(w_clk), .RN(n166), .Q(\FIFO_BUFFER[0][3] ) );
  SDFFRQX2M \FIFO_BUFFER_reg[0][2]  ( .D(n87), .SI(\FIFO_BUFFER[0][1] ), .SE(
        n183), .CK(w_clk), .RN(n166), .Q(\FIFO_BUFFER[0][2] ) );
  SDFFRQX2M \FIFO_BUFFER_reg[0][1]  ( .D(n86), .SI(\FIFO_BUFFER[0][0] ), .SE(
        n182), .CK(w_clk), .RN(n166), .Q(\FIFO_BUFFER[0][1] ) );
  SDFFRQX2M \FIFO_BUFFER_reg[0][0]  ( .D(n85), .SI(test_si1), .SE(n181), .CK(
        w_clk), .RN(n166), .Q(\FIFO_BUFFER[0][0] ) );
  NOR2BX2M U66 ( .AN(w_clken), .B(w_addr[2]), .Y(n76) );
  BUFX2M U67 ( .A(n83), .Y(n158) );
  BUFX2M U68 ( .A(n84), .Y(n157) );
  BUFX2M U69 ( .A(n160), .Y(n165) );
  BUFX2M U70 ( .A(n160), .Y(n164) );
  BUFX2M U71 ( .A(n159), .Y(n163) );
  BUFX2M U72 ( .A(n159), .Y(n162) );
  BUFX2M U73 ( .A(n159), .Y(n161) );
  BUFX2M U74 ( .A(n160), .Y(n166) );
  BUFX2M U75 ( .A(w_rst_n), .Y(n160) );
  BUFX2M U76 ( .A(w_rst_n), .Y(n159) );
  NAND3X2M U77 ( .A(n175), .B(n176), .C(n81), .Y(n80) );
  NAND3X2M U78 ( .A(n175), .B(n176), .C(n76), .Y(n75) );
  NAND3X2M U79 ( .A(n76), .B(n175), .C(w_addr[1]), .Y(n78) );
  NAND3X2M U80 ( .A(w_addr[0]), .B(n76), .C(w_addr[1]), .Y(n79) );
  NAND3X2M U81 ( .A(w_addr[0]), .B(n176), .C(n81), .Y(n82) );
  NAND3X2M U82 ( .A(n76), .B(n176), .C(w_addr[0]), .Y(n77) );
  OAI2BB2X1M U83 ( .B0(n75), .B1(n167), .A0N(\FIFO_BUFFER[0][0] ), .A1N(n75), 
        .Y(n85) );
  OAI2BB2X1M U84 ( .B0(n75), .B1(n168), .A0N(\FIFO_BUFFER[0][1] ), .A1N(n75), 
        .Y(n86) );
  OAI2BB2X1M U85 ( .B0(n75), .B1(n169), .A0N(\FIFO_BUFFER[0][2] ), .A1N(n75), 
        .Y(n87) );
  OAI2BB2X1M U86 ( .B0(n75), .B1(n170), .A0N(\FIFO_BUFFER[0][3] ), .A1N(n75), 
        .Y(n88) );
  OAI2BB2X1M U87 ( .B0(n75), .B1(n171), .A0N(\FIFO_BUFFER[0][4] ), .A1N(n75), 
        .Y(n89) );
  OAI2BB2X1M U88 ( .B0(n75), .B1(n172), .A0N(\FIFO_BUFFER[0][5] ), .A1N(n75), 
        .Y(n90) );
  OAI2BB2X1M U89 ( .B0(n75), .B1(n173), .A0N(\FIFO_BUFFER[0][6] ), .A1N(n75), 
        .Y(n91) );
  OAI2BB2X1M U90 ( .B0(n75), .B1(n174), .A0N(\FIFO_BUFFER[0][7] ), .A1N(n75), 
        .Y(n92) );
  OAI2BB2X1M U91 ( .B0(n167), .B1(n79), .A0N(\FIFO_BUFFER[3][0] ), .A1N(n79), 
        .Y(n109) );
  OAI2BB2X1M U92 ( .B0(n168), .B1(n79), .A0N(\FIFO_BUFFER[3][1] ), .A1N(n79), 
        .Y(n110) );
  OAI2BB2X1M U93 ( .B0(n169), .B1(n79), .A0N(\FIFO_BUFFER[3][2] ), .A1N(n79), 
        .Y(n111) );
  OAI2BB2X1M U94 ( .B0(n170), .B1(n79), .A0N(\FIFO_BUFFER[3][3] ), .A1N(n79), 
        .Y(n112) );
  OAI2BB2X1M U95 ( .B0(n171), .B1(n79), .A0N(\FIFO_BUFFER[3][4] ), .A1N(n79), 
        .Y(n113) );
  OAI2BB2X1M U96 ( .B0(n172), .B1(n79), .A0N(\FIFO_BUFFER[3][5] ), .A1N(n79), 
        .Y(n114) );
  OAI2BB2X1M U97 ( .B0(n173), .B1(n79), .A0N(\FIFO_BUFFER[3][6] ), .A1N(n79), 
        .Y(n115) );
  OAI2BB2X1M U98 ( .B0(n174), .B1(n79), .A0N(\FIFO_BUFFER[3][7] ), .A1N(n79), 
        .Y(n116) );
  OAI2BB2X1M U99 ( .B0(n167), .B1(n82), .A0N(\FIFO_BUFFER[5][0] ), .A1N(n82), 
        .Y(n125) );
  OAI2BB2X1M U100 ( .B0(n168), .B1(n82), .A0N(\FIFO_BUFFER[5][1] ), .A1N(n82), 
        .Y(n126) );
  OAI2BB2X1M U101 ( .B0(n169), .B1(n82), .A0N(\FIFO_BUFFER[5][2] ), .A1N(n82), 
        .Y(n127) );
  OAI2BB2X1M U102 ( .B0(n170), .B1(n82), .A0N(\FIFO_BUFFER[5][3] ), .A1N(n82), 
        .Y(n128) );
  OAI2BB2X1M U103 ( .B0(n171), .B1(n82), .A0N(\FIFO_BUFFER[5][4] ), .A1N(n82), 
        .Y(n129) );
  OAI2BB2X1M U104 ( .B0(n172), .B1(n82), .A0N(\FIFO_BUFFER[5][5] ), .A1N(n82), 
        .Y(n130) );
  OAI2BB2X1M U105 ( .B0(n173), .B1(n82), .A0N(\FIFO_BUFFER[5][6] ), .A1N(n82), 
        .Y(n131) );
  OAI2BB2X1M U106 ( .B0(n174), .B1(n82), .A0N(\FIFO_BUFFER[5][7] ), .A1N(n82), 
        .Y(n132) );
  OAI2BB2X1M U107 ( .B0(n167), .B1(n78), .A0N(\FIFO_BUFFER[2][0] ), .A1N(n78), 
        .Y(n101) );
  OAI2BB2X1M U108 ( .B0(n168), .B1(n78), .A0N(\FIFO_BUFFER[2][1] ), .A1N(n78), 
        .Y(n102) );
  OAI2BB2X1M U109 ( .B0(n169), .B1(n78), .A0N(\FIFO_BUFFER[2][2] ), .A1N(n78), 
        .Y(n103) );
  OAI2BB2X1M U110 ( .B0(n170), .B1(n78), .A0N(\FIFO_BUFFER[2][3] ), .A1N(n78), 
        .Y(n104) );
  OAI2BB2X1M U111 ( .B0(n171), .B1(n78), .A0N(\FIFO_BUFFER[2][4] ), .A1N(n78), 
        .Y(n105) );
  OAI2BB2X1M U112 ( .B0(n172), .B1(n78), .A0N(\FIFO_BUFFER[2][5] ), .A1N(n78), 
        .Y(n106) );
  OAI2BB2X1M U113 ( .B0(n173), .B1(n78), .A0N(\FIFO_BUFFER[2][6] ), .A1N(n78), 
        .Y(n107) );
  OAI2BB2X1M U114 ( .B0(n174), .B1(n78), .A0N(n186), .A1N(n78), .Y(n108) );
  OAI2BB2X1M U115 ( .B0(n167), .B1(n77), .A0N(\FIFO_BUFFER[1][0] ), .A1N(n77), 
        .Y(n93) );
  OAI2BB2X1M U116 ( .B0(n168), .B1(n77), .A0N(\FIFO_BUFFER[1][1] ), .A1N(n77), 
        .Y(n94) );
  OAI2BB2X1M U117 ( .B0(n169), .B1(n77), .A0N(\FIFO_BUFFER[1][2] ), .A1N(n77), 
        .Y(n95) );
  OAI2BB2X1M U118 ( .B0(n170), .B1(n77), .A0N(\FIFO_BUFFER[1][3] ), .A1N(n77), 
        .Y(n96) );
  OAI2BB2X1M U119 ( .B0(n171), .B1(n77), .A0N(\FIFO_BUFFER[1][4] ), .A1N(n77), 
        .Y(n97) );
  OAI2BB2X1M U120 ( .B0(n172), .B1(n77), .A0N(\FIFO_BUFFER[1][5] ), .A1N(n77), 
        .Y(n98) );
  OAI2BB2X1M U121 ( .B0(n173), .B1(n77), .A0N(\FIFO_BUFFER[1][6] ), .A1N(n77), 
        .Y(n99) );
  OAI2BB2X1M U122 ( .B0(n174), .B1(n77), .A0N(\FIFO_BUFFER[1][7] ), .A1N(n77), 
        .Y(n100) );
  OAI2BB2X1M U123 ( .B0(n167), .B1(n80), .A0N(\FIFO_BUFFER[4][0] ), .A1N(n80), 
        .Y(n117) );
  OAI2BB2X1M U124 ( .B0(n168), .B1(n80), .A0N(\FIFO_BUFFER[4][1] ), .A1N(n80), 
        .Y(n118) );
  OAI2BB2X1M U125 ( .B0(n169), .B1(n80), .A0N(\FIFO_BUFFER[4][2] ), .A1N(n80), 
        .Y(n119) );
  OAI2BB2X1M U126 ( .B0(n170), .B1(n80), .A0N(\FIFO_BUFFER[4][3] ), .A1N(n80), 
        .Y(n120) );
  OAI2BB2X1M U127 ( .B0(n171), .B1(n80), .A0N(\FIFO_BUFFER[4][4] ), .A1N(n80), 
        .Y(n121) );
  OAI2BB2X1M U128 ( .B0(n172), .B1(n80), .A0N(\FIFO_BUFFER[4][5] ), .A1N(n80), 
        .Y(n122) );
  OAI2BB2X1M U129 ( .B0(n173), .B1(n80), .A0N(\FIFO_BUFFER[4][6] ), .A1N(n80), 
        .Y(n123) );
  OAI2BB2X1M U130 ( .B0(n174), .B1(n80), .A0N(\FIFO_BUFFER[4][7] ), .A1N(n80), 
        .Y(n124) );
  INVX2M U131 ( .A(w_data[0]), .Y(n167) );
  INVX2M U132 ( .A(w_data[1]), .Y(n168) );
  INVX2M U133 ( .A(w_data[2]), .Y(n169) );
  INVX2M U134 ( .A(w_data[3]), .Y(n170) );
  INVX2M U135 ( .A(w_data[4]), .Y(n171) );
  INVX2M U136 ( .A(w_data[5]), .Y(n172) );
  INVX2M U137 ( .A(w_data[6]), .Y(n173) );
  INVX2M U138 ( .A(w_data[7]), .Y(n174) );
  OAI2BB2X1M U139 ( .B0(n167), .B1(n158), .A0N(\FIFO_BUFFER[6][0] ), .A1N(n158), .Y(n133) );
  OAI2BB2X1M U140 ( .B0(n168), .B1(n158), .A0N(\FIFO_BUFFER[6][1] ), .A1N(n158), .Y(n134) );
  OAI2BB2X1M U141 ( .B0(n169), .B1(n158), .A0N(\FIFO_BUFFER[6][2] ), .A1N(n158), .Y(n135) );
  OAI2BB2X1M U142 ( .B0(n170), .B1(n158), .A0N(\FIFO_BUFFER[6][3] ), .A1N(n158), .Y(n136) );
  OAI2BB2X1M U143 ( .B0(n171), .B1(n158), .A0N(\FIFO_BUFFER[6][4] ), .A1N(n158), .Y(n137) );
  OAI2BB2X1M U144 ( .B0(n172), .B1(n158), .A0N(\FIFO_BUFFER[6][5] ), .A1N(n158), .Y(n138) );
  OAI2BB2X1M U145 ( .B0(n173), .B1(n158), .A0N(\FIFO_BUFFER[6][6] ), .A1N(n158), .Y(n139) );
  OAI2BB2X1M U146 ( .B0(n174), .B1(n158), .A0N(\FIFO_BUFFER[6][7] ), .A1N(n158), .Y(n140) );
  OAI2BB2X1M U147 ( .B0(n167), .B1(n157), .A0N(\FIFO_BUFFER[7][0] ), .A1N(n157), .Y(n141) );
  OAI2BB2X1M U148 ( .B0(n168), .B1(n157), .A0N(\FIFO_BUFFER[7][1] ), .A1N(n157), .Y(n142) );
  OAI2BB2X1M U149 ( .B0(n169), .B1(n157), .A0N(\FIFO_BUFFER[7][2] ), .A1N(n157), .Y(n143) );
  OAI2BB2X1M U150 ( .B0(n170), .B1(n157), .A0N(\FIFO_BUFFER[7][3] ), .A1N(n157), .Y(n144) );
  OAI2BB2X1M U151 ( .B0(n171), .B1(n157), .A0N(\FIFO_BUFFER[7][4] ), .A1N(n157), .Y(n145) );
  OAI2BB2X1M U152 ( .B0(n172), .B1(n157), .A0N(\FIFO_BUFFER[7][5] ), .A1N(n157), .Y(n146) );
  OAI2BB2X1M U153 ( .B0(n173), .B1(n157), .A0N(\FIFO_BUFFER[7][6] ), .A1N(n157), .Y(n147) );
  OAI2BB2X1M U154 ( .B0(n174), .B1(n157), .A0N(\FIFO_BUFFER[7][7] ), .A1N(n157), .Y(n148) );
  AND2X2M U155 ( .A(w_addr[2]), .B(w_clken), .Y(n81) );
  NAND3X2M U156 ( .A(w_addr[1]), .B(n175), .C(n81), .Y(n83) );
  NAND3X2M U157 ( .A(w_addr[1]), .B(w_addr[0]), .C(n81), .Y(n84) );
  INVX2M U158 ( .A(w_addr[1]), .Y(n176) );
  INVX2M U159 ( .A(w_addr[0]), .Y(n175) );
  MX2X2M U160 ( .A(n66), .B(n65), .S0(N12), .Y(r_data[0]) );
  MX4X1M U161 ( .A(\FIFO_BUFFER[0][0] ), .B(\FIFO_BUFFER[1][0] ), .C(
        \FIFO_BUFFER[2][0] ), .D(\FIFO_BUFFER[3][0] ), .S0(n156), .S1(N11), 
        .Y(n66) );
  MX4X1M U162 ( .A(\FIFO_BUFFER[4][0] ), .B(\FIFO_BUFFER[5][0] ), .C(
        \FIFO_BUFFER[6][0] ), .D(\FIFO_BUFFER[7][0] ), .S0(n155), .S1(N11), 
        .Y(n65) );
  MX2X2M U163 ( .A(n68), .B(n67), .S0(N12), .Y(r_data[1]) );
  MX4X1M U164 ( .A(\FIFO_BUFFER[0][1] ), .B(\FIFO_BUFFER[1][1] ), .C(
        \FIFO_BUFFER[2][1] ), .D(\FIFO_BUFFER[3][1] ), .S0(n156), .S1(N11), 
        .Y(n68) );
  MX4X1M U165 ( .A(\FIFO_BUFFER[4][1] ), .B(\FIFO_BUFFER[5][1] ), .C(
        \FIFO_BUFFER[6][1] ), .D(\FIFO_BUFFER[7][1] ), .S0(n155), .S1(N11), 
        .Y(n67) );
  MX2X2M U166 ( .A(n70), .B(n69), .S0(N12), .Y(r_data[2]) );
  MX4X1M U167 ( .A(\FIFO_BUFFER[0][2] ), .B(\FIFO_BUFFER[1][2] ), .C(
        \FIFO_BUFFER[2][2] ), .D(\FIFO_BUFFER[3][2] ), .S0(n156), .S1(N11), 
        .Y(n70) );
  MX4X1M U168 ( .A(\FIFO_BUFFER[4][2] ), .B(\FIFO_BUFFER[5][2] ), .C(
        \FIFO_BUFFER[6][2] ), .D(\FIFO_BUFFER[7][2] ), .S0(n155), .S1(N11), 
        .Y(n69) );
  MX2X2M U169 ( .A(n72), .B(n71), .S0(N12), .Y(r_data[3]) );
  MX4X1M U170 ( .A(\FIFO_BUFFER[0][3] ), .B(\FIFO_BUFFER[1][3] ), .C(
        \FIFO_BUFFER[2][3] ), .D(\FIFO_BUFFER[3][3] ), .S0(n156), .S1(N11), 
        .Y(n72) );
  MX4X1M U171 ( .A(\FIFO_BUFFER[4][3] ), .B(\FIFO_BUFFER[5][3] ), .C(
        \FIFO_BUFFER[6][3] ), .D(\FIFO_BUFFER[7][3] ), .S0(n155), .S1(N11), 
        .Y(n71) );
  MX2X2M U172 ( .A(n74), .B(n73), .S0(N12), .Y(r_data[4]) );
  MX4X1M U173 ( .A(\FIFO_BUFFER[0][4] ), .B(\FIFO_BUFFER[1][4] ), .C(
        \FIFO_BUFFER[2][4] ), .D(\FIFO_BUFFER[3][4] ), .S0(n156), .S1(N11), 
        .Y(n74) );
  MX4X1M U174 ( .A(\FIFO_BUFFER[4][4] ), .B(\FIFO_BUFFER[5][4] ), .C(
        \FIFO_BUFFER[6][4] ), .D(\FIFO_BUFFER[7][4] ), .S0(n155), .S1(N11), 
        .Y(n73) );
  MX2X2M U175 ( .A(n150), .B(n149), .S0(N12), .Y(r_data[5]) );
  MX4X1M U176 ( .A(\FIFO_BUFFER[0][5] ), .B(\FIFO_BUFFER[1][5] ), .C(
        \FIFO_BUFFER[2][5] ), .D(\FIFO_BUFFER[3][5] ), .S0(n156), .S1(N11), 
        .Y(n150) );
  MX4X1M U177 ( .A(\FIFO_BUFFER[4][5] ), .B(\FIFO_BUFFER[5][5] ), .C(
        \FIFO_BUFFER[6][5] ), .D(\FIFO_BUFFER[7][5] ), .S0(n155), .S1(N11), 
        .Y(n149) );
  MX2X2M U178 ( .A(n152), .B(n151), .S0(N12), .Y(r_data[6]) );
  MX4X1M U179 ( .A(\FIFO_BUFFER[0][6] ), .B(\FIFO_BUFFER[1][6] ), .C(
        \FIFO_BUFFER[2][6] ), .D(\FIFO_BUFFER[3][6] ), .S0(n156), .S1(N11), 
        .Y(n152) );
  MX4X1M U180 ( .A(\FIFO_BUFFER[4][6] ), .B(\FIFO_BUFFER[5][6] ), .C(
        \FIFO_BUFFER[6][6] ), .D(\FIFO_BUFFER[7][6] ), .S0(n155), .S1(N11), 
        .Y(n151) );
  MX2X2M U181 ( .A(n154), .B(n153), .S0(N12), .Y(r_data[7]) );
  MX4X1M U182 ( .A(\FIFO_BUFFER[0][7] ), .B(\FIFO_BUFFER[1][7] ), .C(n186), 
        .D(\FIFO_BUFFER[3][7] ), .S0(n156), .S1(N11), .Y(n154) );
  MX4X1M U183 ( .A(\FIFO_BUFFER[4][7] ), .B(\FIFO_BUFFER[5][7] ), .C(
        \FIFO_BUFFER[6][7] ), .D(\FIFO_BUFFER[7][7] ), .S0(n155), .S1(N11), 
        .Y(n153) );
  BUFX2M U184 ( .A(N10), .Y(n155) );
  BUFX2M U185 ( .A(N10), .Y(n156) );
  INVXLM U186 ( .A(test_se), .Y(n180) );
  INVXLM U187 ( .A(n180), .Y(n181) );
  INVXLM U188 ( .A(n180), .Y(n182) );
  INVXLM U189 ( .A(n180), .Y(n183) );
  INVXLM U190 ( .A(n180), .Y(n184) );
  INVXLM U191 ( .A(\FIFO_BUFFER[2][7] ), .Y(n185) );
  INVXLM U192 ( .A(n185), .Y(n186) );
  SDFFRHQX8M \FIFO_BUFFER_reg[2][7]  ( .D(n108), .SI(\FIFO_BUFFER[2][6] ), 
        .SE(n184), .CK(w_clk), .RN(n164), .Q(\FIFO_BUFFER[2][7] ) );
endmodule


module FIFO_WR_test_1 ( w_clk, w_inc, w_rst_n, wq2_rptr, w_addr, w_ptr, w_full, 
        test_si, test_so, test_se );
  input [3:0] wq2_rptr;
  output [2:0] w_addr;
  output [3:0] w_ptr;
  input w_clk, w_inc, w_rst_n, test_si, test_se;
  output w_full, test_so;
  wire   n14, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28,
         n29, n30, n31, n32, n33, n1, n2, n10, n11, n12;
  wire   [3:0] w_ptr_bin;
  assign test_so = n12;

  SDFFRQX2M \w_addr_reg[2]  ( .D(n27), .SI(w_addr[1]), .SE(test_se), .CK(w_clk), .RN(w_rst_n), .Q(w_addr[2]) );
  SDFFRQX2M \w_addr_reg[0]  ( .D(n29), .SI(test_si), .SE(test_se), .CK(w_clk), 
        .RN(w_rst_n), .Q(w_addr[0]) );
  SDFFRQX2M \w_addr_reg[1]  ( .D(n28), .SI(w_addr[0]), .SE(test_se), .CK(w_clk), .RN(w_rst_n), .Q(w_addr[1]) );
  SDFFRQX2M \w_ptr_bin_reg[2]  ( .D(n31), .SI(n10), .SE(test_se), .CK(w_clk), 
        .RN(w_rst_n), .Q(w_ptr_bin[2]) );
  SDFFRQX2M \w_ptr_bin_reg[1]  ( .D(n32), .SI(w_ptr_bin[0]), .SE(test_se), 
        .CK(w_clk), .RN(w_rst_n), .Q(w_ptr_bin[1]) );
  SDFFRQX2M \w_ptr_bin_reg[0]  ( .D(n33), .SI(w_addr[2]), .SE(test_se), .CK(
        w_clk), .RN(w_rst_n), .Q(w_ptr_bin[0]) );
  OAI22X1M U10 ( .A0(n17), .A1(n22), .B0(n21), .B1(n10), .Y(n32) );
  NAND2X2M U11 ( .A(w_inc), .B(n14), .Y(n17) );
  INVX2M U12 ( .A(n14), .Y(w_full) );
  CLKXOR2X2M U13 ( .A(n10), .B(n11), .Y(w_ptr[1]) );
  CLKXOR2X2M U14 ( .A(n11), .B(n20), .Y(n31) );
  OAI21X2M U15 ( .A0(w_ptr[3]), .A1(n11), .B0(n19), .Y(w_ptr[2]) );
  OAI21X2M U16 ( .A0(w_ptr_bin[0]), .A1(n10), .B0(n22), .Y(w_ptr[0]) );
  XNOR2X2M U17 ( .A(w_addr[0]), .B(n17), .Y(n29) );
  XNOR2X2M U18 ( .A(w_ptr_bin[0]), .B(n17), .Y(n33) );
  NOR2BX2M U19 ( .AN(w_ptr_bin[0]), .B(n17), .Y(n21) );
  NAND4X2M U20 ( .A(n23), .B(n24), .C(n25), .D(n26), .Y(n14) );
  CLKXOR2X2M U21 ( .A(wq2_rptr[3]), .B(w_ptr[3]), .Y(n24) );
  XNOR2X2M U22 ( .A(wq2_rptr[0]), .B(w_ptr[0]), .Y(n26) );
  XNOR2X2M U23 ( .A(w_ptr[1]), .B(wq2_rptr[1]), .Y(n25) );
  OAI211X2M U24 ( .A0(n2), .A1(n12), .B0(n18), .C0(n19), .Y(n30) );
  NAND3X2M U25 ( .A(w_ptr_bin[2]), .B(n12), .C(n2), .Y(n18) );
  INVX2M U27 ( .A(n20), .Y(n2) );
  NOR2BX2M U28 ( .AN(w_addr[0]), .B(n17), .Y(n16) );
  NAND2X2M U29 ( .A(n21), .B(w_ptr_bin[1]), .Y(n20) );
  NAND2X2M U30 ( .A(w_ptr[3]), .B(n11), .Y(n19) );
  INVX2M U31 ( .A(w_ptr_bin[2]), .Y(n11) );
  NAND2X2M U32 ( .A(w_ptr_bin[0]), .B(n10), .Y(n22) );
  INVX2M U33 ( .A(w_ptr_bin[1]), .Y(n10) );
  CLKXOR2X2M U34 ( .A(w_ptr[2]), .B(wq2_rptr[2]), .Y(n23) );
  CLKXOR2X2M U35 ( .A(w_addr[1]), .B(n16), .Y(n28) );
  XNOR2X2M U36 ( .A(w_addr[2]), .B(n1), .Y(n27) );
  NAND2X2M U37 ( .A(n16), .B(w_addr[1]), .Y(n1) );
  SDFFRX1M \w_ptr_bin_reg[3]  ( .D(n30), .SI(n11), .SE(test_se), .CK(w_clk), 
        .RN(w_rst_n), .Q(w_ptr[3]), .QN(n12) );
endmodule


module FIFO_RD_test_1 ( r_clk, r_inc, r_rst_n, rq2_wptr, r_addr, r_ptr, 
        r_empty, test_si, test_so, test_se );
  input [3:0] rq2_wptr;
  output [2:0] r_addr;
  output [3:0] r_ptr;
  input r_clk, r_inc, r_rst_n, test_si, test_se;
  output r_empty, test_so;
  wire   n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25,
         n26, n27, n28, n29, n30, n31, n32, n1, n2, n3;
  wire   [3:0] r_ptr_bin;
  assign test_so = n2;

  SDFFRQX2M \r_addr_reg[0]  ( .D(n28), .SI(test_si), .SE(test_se), .CK(r_clk), 
        .RN(r_rst_n), .Q(r_addr[0]) );
  SDFFRQX2M \r_addr_reg[2]  ( .D(n26), .SI(r_addr[1]), .SE(test_se), .CK(r_clk), .RN(r_rst_n), .Q(r_addr[2]) );
  SDFFRQX2M \r_addr_reg[1]  ( .D(n27), .SI(r_addr[0]), .SE(test_se), .CK(r_clk), .RN(r_rst_n), .Q(r_addr[1]) );
  SDFFRQX2M \r_ptr_bin_reg[0]  ( .D(n32), .SI(r_addr[2]), .SE(test_se), .CK(
        r_clk), .RN(r_rst_n), .Q(r_ptr_bin[0]) );
  SDFFRQX2M \r_ptr_bin_reg[2]  ( .D(n30), .SI(n3), .SE(test_se), .CK(r_clk), 
        .RN(r_rst_n), .Q(r_ptr_bin[2]) );
  SDFFRQX2M \r_ptr_bin_reg[3]  ( .D(n29), .SI(r_ptr_bin[2]), .SE(test_se), 
        .CK(r_clk), .RN(r_rst_n), .Q(r_ptr[3]) );
  SDFFRX1M \r_ptr_bin_reg[1]  ( .D(n31), .SI(r_ptr_bin[0]), .SE(test_se), .CK(
        r_clk), .RN(r_rst_n), .Q(n3), .QN(n12) );
  INVX2M U10 ( .A(n13), .Y(r_empty) );
  XNOR2X2M U11 ( .A(rq2_wptr[0]), .B(r_ptr[0]), .Y(n23) );
  NOR2BX2M U12 ( .AN(n20), .B(n12), .Y(n17) );
  OAI21X2M U13 ( .A0(r_ptr_bin[0]), .A1(n12), .B0(n21), .Y(r_ptr[0]) );
  OAI21X2M U14 ( .A0(r_ptr[3]), .A1(n1), .B0(n19), .Y(r_ptr[2]) );
  NAND4X2M U15 ( .A(n22), .B(n23), .C(n24), .D(n25), .Y(n13) );
  CLKXOR2X2M U16 ( .A(n2), .B(rq2_wptr[3]), .Y(n24) );
  XNOR2X2M U17 ( .A(r_ptr[1]), .B(rq2_wptr[1]), .Y(n22) );
  XNOR2X2M U18 ( .A(rq2_wptr[2]), .B(r_ptr[2]), .Y(n25) );
  NAND2X2M U19 ( .A(r_inc), .B(n13), .Y(n16) );
  NOR2BX2M U20 ( .AN(r_ptr_bin[0]), .B(n16), .Y(n20) );
  NAND2X2M U21 ( .A(r_ptr_bin[0]), .B(n12), .Y(n21) );
  CLKXOR2X2M U22 ( .A(r_addr[2]), .B(n14), .Y(n26) );
  NOR2BX2M U23 ( .AN(r_addr[1]), .B(n15), .Y(n14) );
  NAND2BX2M U24 ( .AN(n16), .B(r_addr[0]), .Y(n15) );
  NAND2X2M U25 ( .A(r_ptr[3]), .B(n1), .Y(n19) );
  INVX2M U26 ( .A(r_ptr_bin[2]), .Y(n1) );
  OAI211X2M U27 ( .A0(n17), .A1(n2), .B0(n18), .C0(n19), .Y(n29) );
  NAND3X2M U28 ( .A(r_ptr_bin[2]), .B(n2), .C(n17), .Y(n18) );
  INVX2M U29 ( .A(r_ptr[3]), .Y(n2) );
  CLKXOR2X2M U30 ( .A(n12), .B(n1), .Y(r_ptr[1]) );
  CLKXOR2X2M U31 ( .A(r_ptr_bin[2]), .B(n17), .Y(n30) );
  OAI22X1M U32 ( .A0(n16), .A1(n21), .B0(n20), .B1(n12), .Y(n31) );
  XNOR2X2M U33 ( .A(r_addr[0]), .B(n16), .Y(n28) );
  XNOR2X2M U34 ( .A(r_ptr_bin[0]), .B(n16), .Y(n32) );
  XNOR2X2M U35 ( .A(r_addr[1]), .B(n15), .Y(n27) );
endmodule


module DF_SYNC_test_0 ( CLK, RST, ASYNC, SYNC, test_si, test_se );
  input [3:0] ASYNC;
  output [3:0] SYNC;
  input CLK, RST, test_si, test_se;
  wire   \sync_reg[3][0] , \sync_reg[2][0] , \sync_reg[1][0] ,
         \sync_reg[0][0] ;

  SDFFRQX2M \sync_reg_reg[0][1]  ( .D(\sync_reg[0][0] ), .SI(\sync_reg[0][0] ), 
        .SE(test_se), .CK(CLK), .RN(RST), .Q(SYNC[0]) );
  SDFFRQX2M \sync_reg_reg[1][1]  ( .D(\sync_reg[1][0] ), .SI(\sync_reg[1][0] ), 
        .SE(test_se), .CK(CLK), .RN(RST), .Q(SYNC[1]) );
  SDFFRQX2M \sync_reg_reg[2][1]  ( .D(\sync_reg[2][0] ), .SI(\sync_reg[2][0] ), 
        .SE(test_se), .CK(CLK), .RN(RST), .Q(SYNC[2]) );
  SDFFRQX2M \sync_reg_reg[3][1]  ( .D(\sync_reg[3][0] ), .SI(\sync_reg[3][0] ), 
        .SE(test_se), .CK(CLK), .RN(RST), .Q(SYNC[3]) );
  SDFFRQX2M \sync_reg_reg[3][0]  ( .D(ASYNC[3]), .SI(SYNC[2]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(\sync_reg[3][0] ) );
  SDFFRQX2M \sync_reg_reg[2][0]  ( .D(ASYNC[2]), .SI(SYNC[1]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(\sync_reg[2][0] ) );
  SDFFRQX2M \sync_reg_reg[1][0]  ( .D(ASYNC[1]), .SI(SYNC[0]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(\sync_reg[1][0] ) );
  SDFFRQX2M \sync_reg_reg[0][0]  ( .D(ASYNC[0]), .SI(test_si), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(\sync_reg[0][0] ) );
endmodule


module DF_SYNC_test_1 ( CLK, RST, ASYNC, SYNC, test_si, test_se );
  input [3:0] ASYNC;
  output [3:0] SYNC;
  input CLK, RST, test_si, test_se;
  wire   \sync_reg[3][0] , \sync_reg[2][0] , \sync_reg[1][0] ,
         \sync_reg[0][0] ;

  SDFFRQX2M \sync_reg_reg[2][1]  ( .D(\sync_reg[2][0] ), .SI(\sync_reg[2][0] ), 
        .SE(test_se), .CK(CLK), .RN(RST), .Q(SYNC[2]) );
  SDFFRQX2M \sync_reg_reg[0][1]  ( .D(\sync_reg[0][0] ), .SI(\sync_reg[0][0] ), 
        .SE(test_se), .CK(CLK), .RN(RST), .Q(SYNC[0]) );
  SDFFRQX2M \sync_reg_reg[1][1]  ( .D(\sync_reg[1][0] ), .SI(\sync_reg[1][0] ), 
        .SE(test_se), .CK(CLK), .RN(RST), .Q(SYNC[1]) );
  SDFFRQX2M \sync_reg_reg[3][1]  ( .D(\sync_reg[3][0] ), .SI(\sync_reg[3][0] ), 
        .SE(test_se), .CK(CLK), .RN(RST), .Q(SYNC[3]) );
  SDFFRQX2M \sync_reg_reg[3][0]  ( .D(ASYNC[3]), .SI(SYNC[2]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(\sync_reg[3][0] ) );
  SDFFRQX2M \sync_reg_reg[2][0]  ( .D(ASYNC[2]), .SI(SYNC[1]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(\sync_reg[2][0] ) );
  SDFFRQX2M \sync_reg_reg[1][0]  ( .D(ASYNC[1]), .SI(SYNC[0]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(\sync_reg[1][0] ) );
  SDFFRQX2M \sync_reg_reg[0][0]  ( .D(ASYNC[0]), .SI(test_si), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(\sync_reg[0][0] ) );
endmodule


module FIFO_DATA_WIDTH8_test_1 ( w_clk, w_rst_n, wr_data, w_inc, r_clk, r_inc, 
        r_rst_n, rd_data, empty, full, test_si2, test_si1, test_so2, test_so1, 
        test_se );
  input [7:0] wr_data;
  output [7:0] rd_data;
  input w_clk, w_rst_n, w_inc, r_clk, r_inc, r_rst_n, test_si2, test_si1,
         test_se;
  output empty, full, test_so2, test_so1;
  wire   _0_net_, n1, n2, n4, n5;
  wire   [2:0] w_addr;
  wire   [2:0] r_addr;
  wire   [3:0] wq2_rptr;
  wire   [3:0] w_ptr;
  wire   [3:0] rq2_wptr;
  wire   [3:0] r_ptr;

  NOR2BX2M U1 ( .AN(w_inc), .B(full), .Y(_0_net_) );
  INVX2M U2 ( .A(n2), .Y(n1) );
  INVX2M U3 ( .A(w_rst_n), .Y(n2) );
  FIFO_MEM_CNTRL_DATA_WIDTH8_test_1 FIFO_MEM_CNTRL_U0 ( .w_clk(w_clk), 
        .w_rst_n(n1), .w_data(wr_data), .w_clken(_0_net_), .w_addr(w_addr), 
        .r_addr(r_addr), .r_data(rd_data), .test_si2(test_si2), .test_si1(
        rq2_wptr[3]), .test_so2(n5), .test_so1(test_so1), .test_se(test_se) );
  FIFO_WR_test_1 FIFO_WR_U0 ( .w_clk(w_clk), .w_inc(w_inc), .w_rst_n(n1), 
        .wq2_rptr(wq2_rptr), .w_addr(w_addr), .w_ptr(w_ptr), .w_full(full), 
        .test_si(n4), .test_so(test_so2), .test_se(test_se) );
  FIFO_RD_test_1 FIFO_RD_U0 ( .r_clk(r_clk), .r_inc(r_inc), .r_rst_n(r_rst_n), 
        .rq2_wptr(rq2_wptr), .r_addr(r_addr), .r_ptr(r_ptr), .r_empty(empty), 
        .test_si(n5), .test_so(n4), .test_se(test_se) );
  DF_SYNC_test_0 DF_SYNC_U0 ( .CLK(w_clk), .RST(n1), .ASYNC(r_ptr), .SYNC(
        wq2_rptr), .test_si(test_si1), .test_se(test_se) );
  DF_SYNC_test_1 DF_SYNC_U1 ( .CLK(r_clk), .RST(r_rst_n), .ASYNC(w_ptr), 
        .SYNC(rq2_wptr), .test_si(wq2_rptr[3]), .test_se(test_se) );
endmodule


module PULSE_GEN_test_1 ( clk, rst, lvl_sig, pulse_sig, test_si, test_so, 
        test_se );
  input clk, rst, lvl_sig, test_si, test_se;
  output pulse_sig, test_so;
  wire   rcv_flop, pls_flop;
  assign test_so = rcv_flop;

  SDFFRQX2M rcv_flop_reg ( .D(lvl_sig), .SI(pls_flop), .SE(test_se), .CK(clk), 
        .RN(rst), .Q(rcv_flop) );
  SDFFRQX2M pls_flop_reg ( .D(rcv_flop), .SI(test_si), .SE(test_se), .CK(clk), 
        .RN(rst), .Q(pls_flop) );
  NOR2BX2M U5 ( .AN(rcv_flop), .B(pls_flop), .Y(pulse_sig) );
endmodule


module Clk_Div_0_DW01_inc_0 ( A, SUM );
  input [6:0] A;
  output [6:0] SUM;

  wire   [6:2] carry;

  ADDHX1M U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHX1M U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHX1M U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHX1M U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHX1M U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  CLKXOR2X2M U1 ( .A(carry[6]), .B(A[6]), .Y(SUM[6]) );
  CLKINVX1M U2 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module Clk_Div_test_0 ( i_ref_clk, i_rst_n, i_clk_en, i_div_ratio, o_div_clk, 
        test_si, test_so, test_se );
  input [7:0] i_div_ratio;
  input i_ref_clk, i_rst_n, i_clk_en, test_si, test_se;
  output o_div_clk, test_so;
  wire   N0, div_clk, N15, N16, N17, N18, N19, N20, N21, n23, n24, n25, n26,
         n27, n28, n29, n30, n1, n2, n3, n4, n5, n14, n15, n16, n17, n18, n19,
         n20, n21, n22, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41,
         n42, n43, n44, n45, n46, n47, n48, n49;
  wire   [6:0] half_period;
  wire   [6:0] counter;
  assign test_so = div_clk;

  SDFFRQX2M div_clk_reg ( .D(n30), .SI(counter[6]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(div_clk) );
  SDFFRQX2M \counter_reg[6]  ( .D(n29), .SI(counter[5]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(counter[6]) );
  SDFFRQX2M \counter_reg[0]  ( .D(n28), .SI(test_si), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(counter[0]) );
  SDFFRQX2M \counter_reg[3]  ( .D(n25), .SI(counter[2]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(counter[3]) );
  SDFFRQX2M \counter_reg[4]  ( .D(n24), .SI(counter[3]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(counter[4]) );
  SDFFRQX2M \counter_reg[5]  ( .D(n23), .SI(counter[4]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(counter[5]) );
  SDFFRQX2M \counter_reg[1]  ( .D(n27), .SI(counter[0]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(counter[1]) );
  SDFFRQX2M \counter_reg[2]  ( .D(n26), .SI(counter[1]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(counter[2]) );
  OR2X2M U5 ( .A(i_div_ratio[2]), .B(i_div_ratio[1]), .Y(n1) );
  INVX2M U6 ( .A(i_div_ratio[5]), .Y(n14) );
  MX2X2M U9 ( .A(div_clk), .B(i_ref_clk), .S0(N0), .Y(o_div_clk) );
  CLKINVX1M U14 ( .A(i_div_ratio[1]), .Y(half_period[0]) );
  OAI2BB1X1M U15 ( .A0N(i_div_ratio[1]), .A1N(i_div_ratio[2]), .B0(n1), .Y(
        half_period[1]) );
  OR2X1M U16 ( .A(n1), .B(i_div_ratio[3]), .Y(n2) );
  OAI2BB1X1M U17 ( .A0N(n1), .A1N(i_div_ratio[3]), .B0(n2), .Y(half_period[2])
         );
  NOR2X1M U18 ( .A(n2), .B(i_div_ratio[4]), .Y(n3) );
  AO21XLM U19 ( .A0(n2), .A1(i_div_ratio[4]), .B0(n3), .Y(half_period[3]) );
  CLKNAND2X2M U20 ( .A(n3), .B(n14), .Y(n4) );
  OAI21X1M U21 ( .A0(n3), .A1(n14), .B0(n4), .Y(half_period[4]) );
  XNOR2X1M U22 ( .A(i_div_ratio[6]), .B(n4), .Y(half_period[5]) );
  NOR2X1M U23 ( .A(i_div_ratio[6]), .B(n4), .Y(n5) );
  CLKXOR2X2M U24 ( .A(i_div_ratio[7]), .B(n5), .Y(half_period[6]) );
  XNOR2X1M U25 ( .A(div_clk), .B(n15), .Y(n30) );
  AO2B2X1M U26 ( .B0(N21), .B1(n16), .A0(counter[6]), .A1N(n17), .Y(n29) );
  AO2B2X1M U27 ( .B0(N15), .B1(n16), .A0(counter[0]), .A1N(n17), .Y(n28) );
  AO2B2X1M U28 ( .B0(N16), .B1(n16), .A0(counter[1]), .A1N(n17), .Y(n27) );
  AO2B2X1M U29 ( .B0(N17), .B1(n16), .A0(counter[2]), .A1N(n17), .Y(n26) );
  AO2B2X1M U30 ( .B0(N18), .B1(n16), .A0(counter[3]), .A1N(n17), .Y(n25) );
  AO2B2X1M U31 ( .B0(N19), .B1(n16), .A0(counter[4]), .A1N(n17), .Y(n24) );
  AO2B2X1M U32 ( .B0(N20), .B1(n16), .A0(counter[5]), .A1N(n17), .Y(n23) );
  CLKNAND2X2M U33 ( .A(n18), .B(n15), .Y(n17) );
  CLKINVX1M U34 ( .A(n18), .Y(n16) );
  CLKNAND2X2M U35 ( .A(n15), .B(n19), .Y(n18) );
  CLKNAND2X2M U36 ( .A(n20), .B(n19), .Y(n15) );
  CLKINVX1M U37 ( .A(N0), .Y(n19) );
  MXI2X1M U38 ( .A(n21), .B(n22), .S0(n31), .Y(n20) );
  NOR2BX1M U39 ( .AN(i_div_ratio[0]), .B(div_clk), .Y(n31) );
  NAND4X1M U40 ( .A(n32), .B(n33), .C(n34), .D(n35), .Y(n22) );
  NOR4X1M U41 ( .A(n36), .B(n37), .C(n38), .D(n39), .Y(n35) );
  CLKXOR2X2M U42 ( .A(i_div_ratio[3]), .B(counter[2]), .Y(n39) );
  CLKXOR2X2M U43 ( .A(i_div_ratio[2]), .B(counter[1]), .Y(n38) );
  CLKXOR2X2M U44 ( .A(i_div_ratio[1]), .B(counter[0]), .Y(n37) );
  CLKXOR2X2M U45 ( .A(i_div_ratio[7]), .B(counter[6]), .Y(n36) );
  XNOR2X1M U46 ( .A(counter[4]), .B(i_div_ratio[5]), .Y(n34) );
  XNOR2X1M U47 ( .A(counter[5]), .B(i_div_ratio[6]), .Y(n33) );
  XNOR2X1M U48 ( .A(counter[3]), .B(i_div_ratio[4]), .Y(n32) );
  NAND4X1M U49 ( .A(n40), .B(n41), .C(n42), .D(n43), .Y(n21) );
  NOR4X1M U50 ( .A(n44), .B(n45), .C(n46), .D(n47), .Y(n43) );
  CLKXOR2X2M U51 ( .A(half_period[2]), .B(counter[2]), .Y(n47) );
  CLKXOR2X2M U52 ( .A(half_period[1]), .B(counter[1]), .Y(n46) );
  CLKXOR2X2M U53 ( .A(half_period[0]), .B(counter[0]), .Y(n45) );
  CLKXOR2X2M U54 ( .A(half_period[6]), .B(counter[6]), .Y(n44) );
  XNOR2X1M U55 ( .A(counter[4]), .B(half_period[4]), .Y(n42) );
  XNOR2X1M U56 ( .A(counter[5]), .B(half_period[5]), .Y(n41) );
  XNOR2X1M U57 ( .A(counter[3]), .B(half_period[3]), .Y(n40) );
  OAI21X1M U58 ( .A0(n48), .A1(n49), .B0(i_clk_en), .Y(N0) );
  OR3X1M U59 ( .A(i_div_ratio[2]), .B(i_div_ratio[3]), .C(i_div_ratio[1]), .Y(
        n49) );
  OR4X1M U60 ( .A(i_div_ratio[4]), .B(i_div_ratio[5]), .C(i_div_ratio[6]), .D(
        i_div_ratio[7]), .Y(n48) );
  Clk_Div_0_DW01_inc_0 add_44 ( .A(counter), .SUM({N21, N20, N19, N18, N17, 
        N16, N15}) );
endmodule


module CLKDIV_MUX_WIDTH4 ( IN, OUT );
  input [5:0] IN;
  output [3:0] OUT;
  wire   n5, n6, n7, n8, n9, n1, n2, n3, n4;

  NAND4BX1M U3 ( .AN(IN[4]), .B(IN[3]), .C(n2), .D(n1), .Y(n6) );
  NOR3X2M U4 ( .A(n6), .B(IN[1]), .C(IN[0]), .Y(OUT[2]) );
  INVX2M U5 ( .A(IN[2]), .Y(n2) );
  NAND4BX1M U6 ( .AN(IN[3]), .B(IN[4]), .C(n2), .D(n1), .Y(n7) );
  NOR3X2M U7 ( .A(n7), .B(IN[1]), .C(IN[0]), .Y(OUT[1]) );
  NOR4X1M U8 ( .A(n5), .B(IN[3]), .C(IN[5]), .D(IN[4]), .Y(OUT[3]) );
  NAND3X2M U9 ( .A(n4), .B(n3), .C(IN[2]), .Y(n5) );
  INVX2M U10 ( .A(IN[0]), .Y(n4) );
  INVX2M U11 ( .A(IN[1]), .Y(n3) );
  INVX2M U12 ( .A(IN[5]), .Y(n1) );
  OAI211X2M U13 ( .A0(n8), .A1(n9), .B0(n4), .C0(n3), .Y(OUT[0]) );
  NOR4X1M U14 ( .A(IN[5]), .B(IN[4]), .C(IN[3]), .D(n2), .Y(n8) );
  NAND2X2M U15 ( .A(n7), .B(n6), .Y(n9) );
endmodule


module Clk_Div_1_DW01_inc_0 ( A, SUM );
  input [6:0] A;
  output [6:0] SUM;

  wire   [6:2] carry;

  ADDHX1M U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHX1M U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHX1M U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHX1M U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHX1M U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  CLKXOR2X2M U1 ( .A(carry[6]), .B(A[6]), .Y(SUM[6]) );
  CLKINVX1M U2 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module Clk_Div_test_1 ( i_ref_clk, i_rst_n, i_clk_en, i_div_ratio, o_div_clk, 
        test_si, test_so, test_se );
  input [7:0] i_div_ratio;
  input i_ref_clk, i_rst_n, i_clk_en, test_si, test_se;
  output o_div_clk, test_so;
  wire   N0, div_clk, N15, N16, N17, N18, N19, N20, N21, n1, n2, n3, n4, n5,
         n14, n15, n16, n17, n18, n19, n20, n21, n22, n31, n32, n33, n34, n35,
         n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49,
         n50, n51, n52, n53, n54, n55, n56, n57;
  wire   [6:0] half_period;
  wire   [6:0] counter;
  assign test_so = div_clk;

  SDFFRQX2M div_clk_reg ( .D(n50), .SI(counter[6]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(div_clk) );
  SDFFRQX2M \counter_reg[6]  ( .D(n51), .SI(counter[5]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(counter[6]) );
  SDFFRQX2M \counter_reg[0]  ( .D(n52), .SI(test_si), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(counter[0]) );
  SDFFRQX2M \counter_reg[3]  ( .D(n55), .SI(counter[2]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(counter[3]) );
  SDFFRQX2M \counter_reg[4]  ( .D(n56), .SI(counter[3]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(counter[4]) );
  SDFFRQX2M \counter_reg[5]  ( .D(n57), .SI(counter[4]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(counter[5]) );
  SDFFRQX2M \counter_reg[1]  ( .D(n53), .SI(counter[0]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(counter[1]) );
  SDFFRQX2M \counter_reg[2]  ( .D(n54), .SI(counter[1]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(counter[2]) );
  OR2X2M U5 ( .A(i_div_ratio[2]), .B(i_div_ratio[1]), .Y(n1) );
  INVX2M U6 ( .A(i_div_ratio[5]), .Y(n14) );
  MX2X2M U9 ( .A(div_clk), .B(i_ref_clk), .S0(N0), .Y(o_div_clk) );
  CLKINVX1M U14 ( .A(i_div_ratio[1]), .Y(half_period[0]) );
  OAI2BB1X1M U15 ( .A0N(i_div_ratio[1]), .A1N(i_div_ratio[2]), .B0(n1), .Y(
        half_period[1]) );
  OR2X1M U16 ( .A(n1), .B(i_div_ratio[3]), .Y(n2) );
  OAI2BB1X1M U17 ( .A0N(n1), .A1N(i_div_ratio[3]), .B0(n2), .Y(half_period[2])
         );
  NOR2X1M U18 ( .A(n2), .B(i_div_ratio[4]), .Y(n3) );
  AO21XLM U19 ( .A0(n2), .A1(i_div_ratio[4]), .B0(n3), .Y(half_period[3]) );
  CLKNAND2X2M U20 ( .A(n3), .B(n14), .Y(n4) );
  OAI21X1M U21 ( .A0(n3), .A1(n14), .B0(n4), .Y(half_period[4]) );
  XNOR2X1M U22 ( .A(i_div_ratio[6]), .B(n4), .Y(half_period[5]) );
  NOR2X1M U23 ( .A(i_div_ratio[6]), .B(n4), .Y(n5) );
  CLKXOR2X2M U24 ( .A(i_div_ratio[7]), .B(n5), .Y(half_period[6]) );
  XNOR2X1M U25 ( .A(div_clk), .B(n15), .Y(n50) );
  AO2B2X1M U26 ( .B0(N21), .B1(n16), .A0(counter[6]), .A1N(n17), .Y(n51) );
  AO2B2X1M U27 ( .B0(N15), .B1(n16), .A0(counter[0]), .A1N(n17), .Y(n52) );
  AO2B2X1M U28 ( .B0(N16), .B1(n16), .A0(counter[1]), .A1N(n17), .Y(n53) );
  AO2B2X1M U29 ( .B0(N17), .B1(n16), .A0(counter[2]), .A1N(n17), .Y(n54) );
  AO2B2X1M U30 ( .B0(N18), .B1(n16), .A0(counter[3]), .A1N(n17), .Y(n55) );
  AO2B2X1M U31 ( .B0(N19), .B1(n16), .A0(counter[4]), .A1N(n17), .Y(n56) );
  AO2B2X1M U32 ( .B0(N20), .B1(n16), .A0(counter[5]), .A1N(n17), .Y(n57) );
  CLKNAND2X2M U33 ( .A(n18), .B(n15), .Y(n17) );
  CLKINVX1M U34 ( .A(n18), .Y(n16) );
  CLKNAND2X2M U35 ( .A(n15), .B(n19), .Y(n18) );
  CLKNAND2X2M U36 ( .A(n20), .B(n19), .Y(n15) );
  CLKINVX1M U37 ( .A(N0), .Y(n19) );
  MXI2X1M U38 ( .A(n21), .B(n22), .S0(n31), .Y(n20) );
  NOR2BX1M U39 ( .AN(i_div_ratio[0]), .B(div_clk), .Y(n31) );
  NAND4X1M U40 ( .A(n32), .B(n33), .C(n34), .D(n35), .Y(n22) );
  NOR4X1M U41 ( .A(n36), .B(n37), .C(n38), .D(n39), .Y(n35) );
  CLKXOR2X2M U42 ( .A(i_div_ratio[3]), .B(counter[2]), .Y(n39) );
  CLKXOR2X2M U43 ( .A(i_div_ratio[2]), .B(counter[1]), .Y(n38) );
  CLKXOR2X2M U44 ( .A(i_div_ratio[1]), .B(counter[0]), .Y(n37) );
  CLKXOR2X2M U45 ( .A(i_div_ratio[7]), .B(counter[6]), .Y(n36) );
  XNOR2X1M U46 ( .A(counter[4]), .B(i_div_ratio[5]), .Y(n34) );
  XNOR2X1M U47 ( .A(counter[5]), .B(i_div_ratio[6]), .Y(n33) );
  XNOR2X1M U48 ( .A(counter[3]), .B(i_div_ratio[4]), .Y(n32) );
  NAND4X1M U49 ( .A(n40), .B(n41), .C(n42), .D(n43), .Y(n21) );
  NOR4X1M U50 ( .A(n44), .B(n45), .C(n46), .D(n47), .Y(n43) );
  CLKXOR2X2M U51 ( .A(half_period[2]), .B(counter[2]), .Y(n47) );
  CLKXOR2X2M U52 ( .A(half_period[1]), .B(counter[1]), .Y(n46) );
  CLKXOR2X2M U53 ( .A(half_period[0]), .B(counter[0]), .Y(n45) );
  CLKXOR2X2M U54 ( .A(half_period[6]), .B(counter[6]), .Y(n44) );
  XNOR2X1M U55 ( .A(counter[4]), .B(half_period[4]), .Y(n42) );
  XNOR2X1M U56 ( .A(counter[5]), .B(half_period[5]), .Y(n41) );
  XNOR2X1M U57 ( .A(counter[3]), .B(half_period[3]), .Y(n40) );
  OAI21X1M U58 ( .A0(n48), .A1(n49), .B0(i_clk_en), .Y(N0) );
  OR3X1M U59 ( .A(i_div_ratio[2]), .B(i_div_ratio[3]), .C(i_div_ratio[1]), .Y(
        n49) );
  OR4X1M U60 ( .A(i_div_ratio[4]), .B(i_div_ratio[5]), .C(i_div_ratio[6]), .D(
        i_div_ratio[7]), .Y(n48) );
  Clk_Div_1_DW01_inc_0 add_44 ( .A(counter), .SUM({N21, N20, N19, N18, N17, 
        N16, N15}) );
endmodule


module Parity_Calc_test_1 ( p_data, Data_Valid, PAR_EN, Busy, CLK, RST, 
        Par_Type, Par_Bit, test_si, test_se );
  input [7:0] p_data;
  input Data_Valid, PAR_EN, Busy, CLK, RST, Par_Type, test_si, test_se;
  output Par_Bit;
  wire   n1, n2, n4, n5, n6, n7, n10, n12, n14, n16, n18, n20, n22, n24, n25,
         n3;
  wire   [7:0] DATA_V;

  SDFFRQX2M Par_Bit_reg ( .D(n25), .SI(DATA_V[7]), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(Par_Bit) );
  SDFFRQX2M \DATA_V_reg[5]  ( .D(n20), .SI(DATA_V[4]), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(DATA_V[5]) );
  SDFFRQX2M \DATA_V_reg[1]  ( .D(n12), .SI(DATA_V[0]), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(DATA_V[1]) );
  SDFFRQX2M \DATA_V_reg[4]  ( .D(n18), .SI(DATA_V[3]), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(DATA_V[4]) );
  SDFFRQX2M \DATA_V_reg[0]  ( .D(n10), .SI(test_si), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(DATA_V[0]) );
  SDFFRQX2M \DATA_V_reg[2]  ( .D(n14), .SI(DATA_V[1]), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(DATA_V[2]) );
  SDFFRQX2M \DATA_V_reg[3]  ( .D(n16), .SI(DATA_V[2]), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(DATA_V[3]) );
  SDFFRQX2M \DATA_V_reg[6]  ( .D(n22), .SI(DATA_V[5]), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(DATA_V[6]) );
  SDFFRQX2M \DATA_V_reg[7]  ( .D(n24), .SI(DATA_V[6]), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(DATA_V[7]) );
  NOR2BX2M U3 ( .AN(Data_Valid), .B(Busy), .Y(n1) );
  AO2B2X2M U4 ( .B0(p_data[0]), .B1(n1), .A0(DATA_V[0]), .A1N(n1), .Y(n10) );
  AO2B2X2M U5 ( .B0(p_data[1]), .B1(n1), .A0(DATA_V[1]), .A1N(n1), .Y(n12) );
  AO2B2X2M U6 ( .B0(p_data[2]), .B1(n1), .A0(DATA_V[2]), .A1N(n1), .Y(n14) );
  AO2B2X2M U7 ( .B0(p_data[3]), .B1(n1), .A0(DATA_V[3]), .A1N(n1), .Y(n16) );
  AO2B2X2M U8 ( .B0(p_data[4]), .B1(n1), .A0(DATA_V[4]), .A1N(n1), .Y(n18) );
  AO2B2X2M U9 ( .B0(p_data[5]), .B1(n1), .A0(DATA_V[5]), .A1N(n1), .Y(n20) );
  AO2B2X2M U10 ( .B0(p_data[6]), .B1(n1), .A0(DATA_V[6]), .A1N(n1), .Y(n22) );
  AO2B2X2M U11 ( .B0(p_data[7]), .B1(n1), .A0(DATA_V[7]), .A1N(n1), .Y(n24) );
  XNOR2X2M U12 ( .A(DATA_V[2]), .B(DATA_V[3]), .Y(n6) );
  XOR3XLM U13 ( .A(DATA_V[5]), .B(DATA_V[4]), .C(n7), .Y(n4) );
  CLKXOR2X2M U14 ( .A(DATA_V[7]), .B(DATA_V[6]), .Y(n7) );
  OAI2BB2X1M U15 ( .B0(n2), .B1(n3), .A0N(Par_Bit), .A1N(n3), .Y(n25) );
  INVX2M U16 ( .A(PAR_EN), .Y(n3) );
  XOR3XLM U17 ( .A(n4), .B(Par_Type), .C(n5), .Y(n2) );
  XOR3XLM U18 ( .A(DATA_V[1]), .B(DATA_V[0]), .C(n6), .Y(n5) );
endmodule


module serializer_test_1 ( P_DATA, DATA_VALID, CLK, RST, busy, SER_EN, 
        SER_DONE, SER_DATA, test_si, test_so, test_se );
  input [7:0] P_DATA;
  input DATA_VALID, CLK, RST, busy, SER_EN, test_si, test_se;
  output SER_DONE, SER_DATA, test_so;
  wire   N25, N26, N27, N28, N33, n14, n18, n19, n20, n21, n22, n23, n24, n25,
         n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39,
         n40, n41, n42, n43, n16, n17, n44, n45, n48, n49;
  wire   [7:0] shift_reg;
  wire   [3:0] counter;
  assign test_so = shift_reg[7];
  assign SER_DONE = N33;

  SDFFRQX2M SER_DATA_reg ( .D(n35), .SI(test_si), .SE(n49), .CK(CLK), .RN(RST), 
        .Q(SER_DATA) );
  SDFFRQX2M \shift_reg_reg[0]  ( .D(n36), .SI(counter[3]), .SE(n49), .CK(CLK), 
        .RN(RST), .Q(shift_reg[0]) );
  SDFFRQX2M \shift_reg_reg[7]  ( .D(n43), .SI(shift_reg[6]), .SE(n49), .CK(CLK), .RN(RST), .Q(shift_reg[7]) );
  SDFFRQX2M \shift_reg_reg[6]  ( .D(n37), .SI(shift_reg[5]), .SE(n49), .CK(CLK), .RN(RST), .Q(shift_reg[6]) );
  SDFFRQX2M \shift_reg_reg[5]  ( .D(n38), .SI(shift_reg[4]), .SE(n49), .CK(CLK), .RN(RST), .Q(shift_reg[5]) );
  SDFFRQX2M \shift_reg_reg[4]  ( .D(n39), .SI(shift_reg[3]), .SE(n49), .CK(CLK), .RN(RST), .Q(shift_reg[4]) );
  SDFFRQX2M \shift_reg_reg[3]  ( .D(n40), .SI(shift_reg[2]), .SE(n49), .CK(CLK), .RN(RST), .Q(shift_reg[3]) );
  SDFFRQX2M \shift_reg_reg[2]  ( .D(n41), .SI(shift_reg[1]), .SE(n49), .CK(CLK), .RN(RST), .Q(shift_reg[2]) );
  SDFFRQX2M \shift_reg_reg[1]  ( .D(n42), .SI(shift_reg[0]), .SE(n49), .CK(CLK), .RN(RST), .Q(shift_reg[1]) );
  SDFFRQX2M \counter_reg[3]  ( .D(N28), .SI(n45), .SE(n49), .CK(CLK), .RN(RST), 
        .Q(counter[3]) );
  SDFFRQX2M \counter_reg[1]  ( .D(N26), .SI(n17), .SE(n49), .CK(CLK), .RN(RST), 
        .Q(counter[1]) );
  SDFFRQX2M \counter_reg[0]  ( .D(N25), .SI(SER_DATA), .SE(n49), .CK(CLK), 
        .RN(RST), .Q(counter[0]) );
  SDFFRX1M \counter_reg[2]  ( .D(N27), .SI(n44), .SE(n49), .CK(CLK), .RN(RST), 
        .Q(n45), .QN(n14) );
  OR2X2M U17 ( .A(n21), .B(n18), .Y(n19) );
  NOR2BX2M U18 ( .AN(DATA_VALID), .B(busy), .Y(n21) );
  NOR2X2M U19 ( .A(n16), .B(n21), .Y(n18) );
  INVX2M U20 ( .A(SER_EN), .Y(n16) );
  NOR2X2M U21 ( .A(n32), .B(n16), .Y(N26) );
  OAI2B1X2M U22 ( .A1N(shift_reg[0]), .A0(n19), .B0(n20), .Y(n36) );
  AOI22X1M U23 ( .A0(shift_reg[1]), .A1(n18), .B0(P_DATA[0]), .B1(n21), .Y(n20) );
  OAI2B1X2M U24 ( .A1N(shift_reg[1]), .A0(n19), .B0(n27), .Y(n42) );
  AOI22X1M U25 ( .A0(shift_reg[2]), .A1(n18), .B0(P_DATA[1]), .B1(n21), .Y(n27) );
  OAI2B1X2M U26 ( .A1N(shift_reg[2]), .A0(n19), .B0(n26), .Y(n41) );
  AOI22X1M U27 ( .A0(shift_reg[3]), .A1(n18), .B0(P_DATA[2]), .B1(n21), .Y(n26) );
  OAI2B1X2M U28 ( .A1N(shift_reg[3]), .A0(n19), .B0(n25), .Y(n40) );
  AOI22X1M U29 ( .A0(shift_reg[4]), .A1(n18), .B0(P_DATA[3]), .B1(n21), .Y(n25) );
  OAI2B1X2M U30 ( .A1N(shift_reg[4]), .A0(n19), .B0(n24), .Y(n39) );
  AOI22X1M U31 ( .A0(shift_reg[5]), .A1(n18), .B0(P_DATA[4]), .B1(n21), .Y(n24) );
  OAI2B1X2M U32 ( .A1N(shift_reg[5]), .A0(n19), .B0(n23), .Y(n38) );
  AOI22X1M U33 ( .A0(shift_reg[6]), .A1(n18), .B0(P_DATA[5]), .B1(n21), .Y(n23) );
  OAI2B1X2M U34 ( .A1N(shift_reg[6]), .A0(n19), .B0(n22), .Y(n37) );
  AOI22X1M U35 ( .A0(shift_reg[7]), .A1(n18), .B0(P_DATA[6]), .B1(n21), .Y(n22) );
  NOR3BX2M U36 ( .AN(counter[3]), .B(n28), .C(n29), .Y(N33) );
  CLKXOR2X2M U37 ( .A(n17), .B(counter[1]), .Y(n32) );
  CLKXOR2X2M U38 ( .A(n32), .B(n14), .Y(n29) );
  INVX2M U39 ( .A(counter[0]), .Y(n17) );
  AO2B2X2M U40 ( .B0(n18), .B1(shift_reg[0]), .A0(SER_DATA), .A1N(n18), .Y(n35) );
  AO2B2X2M U41 ( .B0(P_DATA[7]), .B1(n21), .A0(shift_reg[7]), .A1N(n21), .Y(
        n43) );
  OAI32X1M U42 ( .A0(n33), .A1(n44), .A2(n17), .B0(n34), .B1(n14), .Y(N27) );
  NAND2X2M U43 ( .A(SER_EN), .B(n14), .Y(n33) );
  AOI21X2M U44 ( .A0(SER_EN), .A1(n44), .B0(N25), .Y(n34) );
  OAI22X1M U45 ( .A0(n44), .A1(n17), .B0(n32), .B1(n14), .Y(n28) );
  NOR2X2M U46 ( .A(n16), .B(counter[0]), .Y(N25) );
  NOR2X2M U47 ( .A(n30), .B(n16), .Y(N28) );
  CLKXOR2X2M U48 ( .A(n31), .B(counter[3]), .Y(n30) );
  NAND2X2M U49 ( .A(n29), .B(n28), .Y(n31) );
  INVX2M U50 ( .A(counter[1]), .Y(n44) );
  INVXLM U51 ( .A(test_se), .Y(n48) );
  INVXLM U52 ( .A(n48), .Y(n49) );
endmodule


module UART_TX_FSM_test_1 ( Data_Valid, ser_done, CLK, RST, PAR_EN, ser_en, 
        mux_sel, busy, test_si, test_so, test_se );
  output [1:0] mux_sel;
  input Data_Valid, ser_done, CLK, RST, PAR_EN, test_si, test_se;
  output ser_en, busy, test_so;
  wire   n9, n10, n11, n12, n13, n4, n5, n6, n7, n8;
  wire   [2:0] cs;
  wire   [2:0] ns;
  assign test_so = cs[2];

  SDFFRQX2M \cs_reg[2]  ( .D(ns[2]), .SI(cs[1]), .SE(test_se), .CK(CLK), .RN(
        RST), .Q(cs[2]) );
  SDFFRQX2M \cs_reg[0]  ( .D(ns[0]), .SI(test_si), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(cs[0]) );
  SDFFRQX2M \cs_reg[1]  ( .D(ns[1]), .SI(n4), .SE(test_se), .CK(CLK), .RN(RST), 
        .Q(cs[1]) );
  OAI21X2M U6 ( .A0(cs[2]), .A1(n10), .B0(n9), .Y(mux_sel[1]) );
  NAND3X2M U7 ( .A(n10), .B(n6), .C(n5), .Y(busy) );
  INVX2M U8 ( .A(n13), .Y(n5) );
  NAND2X2M U9 ( .A(n13), .B(n6), .Y(mux_sel[0]) );
  OAI32X1M U10 ( .A0(n7), .A1(PAR_EN), .A2(n9), .B0(cs[2]), .B1(n10), .Y(ns[2]) );
  OAI31X1M U11 ( .A0(n8), .A1(n9), .A2(n7), .B0(n12), .Y(ns[0]) );
  INVX2M U12 ( .A(PAR_EN), .Y(n8) );
  NAND4BX1M U13 ( .AN(cs[1]), .B(Data_Valid), .C(n4), .D(n6), .Y(n12) );
  NOR2X2M U14 ( .A(cs[2]), .B(n5), .Y(ser_en) );
  INVX2M U15 ( .A(ser_done), .Y(n7) );
  CLKXOR2X2M U16 ( .A(cs[0]), .B(cs[1]), .Y(n13) );
  OAI32X1M U17 ( .A0(n4), .A1(cs[2]), .A2(cs[1]), .B0(n11), .B1(n9), .Y(ns[1])
         );
  NOR2X2M U18 ( .A(PAR_EN), .B(n7), .Y(n11) );
  NAND3X2M U19 ( .A(n4), .B(n6), .C(cs[1]), .Y(n9) );
  NAND2X2M U20 ( .A(cs[0]), .B(cs[1]), .Y(n10) );
  INVX2M U21 ( .A(cs[2]), .Y(n6) );
  INVX2M U22 ( .A(cs[0]), .Y(n4) );
endmodule


module MUX_4x1 ( in0, in1, in2, in3, sel, out );
  input [1:0] sel;
  input in0, in1, in2, in3;
  output out;
  wire   n2, n3, n1, n4, n5, n6, n7;

  INVX8M U1 ( .A(n1), .Y(out) );
  CLKINVX1M U2 ( .A(sel[1]), .Y(n4) );
  NOR2X1M U3 ( .A(sel[1]), .B(n3), .Y(n5) );
  NOR2X1M U4 ( .A(n2), .B(n4), .Y(n6) );
  NOR2XLM U5 ( .A(n5), .B(n6), .Y(n1) );
  AOI22X1M U6 ( .A0(in0), .A1(n7), .B0(sel[0]), .B1(in1), .Y(n3) );
  AOI22X1M U7 ( .A0(in2), .A1(n7), .B0(in3), .B1(sel[0]), .Y(n2) );
  INVX2M U8 ( .A(sel[0]), .Y(n7) );
endmodule


module UART_TX_test_1 ( P_DATA, DATA_VALID, PAR_EN, PAR_TYPE, CLK, RST, TX_OUT, 
        BUSY, test_si, test_so, test_se );
  input [7:0] P_DATA;
  input DATA_VALID, PAR_EN, PAR_TYPE, CLK, RST, test_si, test_se;
  output TX_OUT, BUSY, test_so;
  wire   PAR_BIT, SER_EN, SER_DONE, SER_DATA, n1, n2, n4;
  wire   [1:0] MUX_SEL;

  INVX2M U3 ( .A(n2), .Y(n1) );
  INVX2M U4 ( .A(RST), .Y(n2) );
  Parity_Calc_test_1 PAR_calc ( .p_data(P_DATA), .Data_Valid(DATA_VALID), 
        .PAR_EN(PAR_EN), .Busy(BUSY), .CLK(CLK), .RST(n1), .Par_Type(PAR_TYPE), 
        .Par_Bit(PAR_BIT), .test_si(test_si), .test_se(test_se) );
  serializer_test_1 Serializer ( .P_DATA(P_DATA), .DATA_VALID(DATA_VALID), 
        .CLK(CLK), .RST(n1), .busy(BUSY), .SER_EN(SER_EN), .SER_DONE(SER_DONE), 
        .SER_DATA(SER_DATA), .test_si(PAR_BIT), .test_so(n4), .test_se(test_se) );
  UART_TX_FSM_test_1 fsm ( .Data_Valid(DATA_VALID), .ser_done(SER_DONE), .CLK(
        CLK), .RST(n1), .PAR_EN(PAR_EN), .ser_en(SER_EN), .mux_sel(MUX_SEL), 
        .busy(BUSY), .test_si(n4), .test_so(test_so), .test_se(test_se) );
  MUX_4x1 MUX ( .in0(1'b0), .in1(1'b1), .in2(SER_DATA), .in3(PAR_BIT), .sel(
        MUX_SEL), .out(TX_OUT) );
endmodule


module UART_RX_FSM_test_1 ( CLK, RST, RX_IN, PAR_EN, bit_count, edge_count, 
        Prescale, sampling_done, par_err, strt_glitch, stp_err, deser_en, 
        par_chk_en, strt_chk_en, stp_chk_en, edge_bit_en, dat_sam_en, 
        data_valid, test_si, test_so, test_se );
  input [3:0] bit_count;
  input [5:0] edge_count;
  input [5:0] Prescale;
  input CLK, RST, RX_IN, PAR_EN, sampling_done, par_err, strt_glitch, stp_err,
         test_si, test_se;
  output deser_en, par_chk_en, strt_chk_en, stp_chk_en, edge_bit_en,
         dat_sam_en, data_valid, test_so;
  wire   N34, N35, N36, N37, N38, N39, N40, N41, n23, n24, n25, n26, n27, n28,
         n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42,
         n43, n44, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n16, n17,
         n18, n19, n20, n21, n22, n45;
  wire   [2:0] cs;
  wire   [2:0] ns;
  assign test_so = n45;

  SDFFRQX2M \cs_reg[2]  ( .D(ns[2]), .SI(cs[1]), .SE(test_se), .CK(CLK), .RN(
        RST), .Q(cs[2]) );
  SDFFRQX2M \cs_reg[1]  ( .D(ns[1]), .SI(cs[0]), .SE(test_se), .CK(CLK), .RN(
        RST), .Q(cs[1]) );
  SDFFRQX2M \cs_reg[0]  ( .D(ns[0]), .SI(test_si), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(cs[0]) );
  NOR3X2M U4 ( .A(n26), .B(n18), .C(n21), .Y(par_chk_en) );
  NOR2X2M U5 ( .A(n21), .B(n25), .Y(stp_chk_en) );
  NAND3BX2M U8 ( .AN(n34), .B(n25), .C(n40), .Y(edge_bit_en) );
  NOR4XLM U9 ( .A(stp_err), .B(par_err), .C(n41), .D(n42), .Y(data_valid) );
  OAI221X1M U10 ( .A0(n24), .A1(n20), .B0(n30), .B1(n27), .C0(n17), .Y(ns[1])
         );
  INVX2M U11 ( .A(n23), .Y(n20) );
  INVX2M U12 ( .A(n36), .Y(n17) );
  OAI32X1M U13 ( .A0(n26), .A1(n18), .A2(n37), .B0(n27), .B1(n38), .Y(n36) );
  NOR2BXLM U14 ( .AN(par_err), .B(n21), .Y(n37) );
  NAND2X2M U15 ( .A(n41), .B(n22), .Y(n25) );
  INVX2M U16 ( .A(n28), .Y(n18) );
  NOR3X2M U17 ( .A(n21), .B(n23), .C(n24), .Y(strt_chk_en) );
  INVX2M U18 ( .A(n42), .Y(n22) );
  NAND2X2M U19 ( .A(n40), .B(n42), .Y(dat_sam_en) );
  NOR3BX2M U20 ( .AN(n39), .B(bit_count[1]), .C(bit_count[3]), .Y(n23) );
  NOR3BX2M U21 ( .AN(n43), .B(PAR_EN), .C(bit_count[1]), .Y(n30) );
  NOR3BX2M U22 ( .AN(N41), .B(bit_count[0]), .C(bit_count[2]), .Y(n39) );
  OAI221X1M U23 ( .A0(n27), .A1(n19), .B0(n28), .B1(n26), .C0(n29), .Y(ns[2])
         );
  INVX2M U24 ( .A(n30), .Y(n19) );
  AO21XLM U25 ( .A0(sampling_done), .A1(stp_err), .B0(n25), .Y(n29) );
  NAND4X2M U26 ( .A(bit_count[3]), .B(bit_count[0]), .C(n44), .D(N41), .Y(n28)
         );
  NOR2X2M U27 ( .A(bit_count[2]), .B(bit_count[1]), .Y(n44) );
  OAI211X2M U28 ( .A0(n24), .A1(n31), .B0(n17), .C0(n32), .Y(ns[0]) );
  AOI21X2M U29 ( .A0(n22), .A1(n33), .B0(n34), .Y(n32) );
  OAI2BB1X2M U30 ( .A0N(strt_glitch), .A1N(sampling_done), .B0(n20), .Y(n31)
         );
  OAI32X1M U31 ( .A0(n28), .A1(RX_IN), .A2(PAR_EN), .B0(RX_IN), .B1(n35), .Y(
        n33) );
  OA21X2M U32 ( .A0(PAR_EN), .A1(n28), .B0(n35), .Y(n41) );
  NAND3BX2M U33 ( .AN(bit_count[1]), .B(n43), .C(PAR_EN), .Y(n38) );
  OR2X2M U34 ( .A(Prescale[1]), .B(Prescale[0]), .Y(n1) );
  NAND3X2M U35 ( .A(PAR_EN), .B(n43), .C(bit_count[1]), .Y(n35) );
  AND2X2M U36 ( .A(bit_count[3]), .B(n39), .Y(n43) );
  NOR4BX1M U37 ( .AN(n38), .B(n30), .C(n21), .D(n27), .Y(deser_en) );
  NOR2X2M U38 ( .A(cs[1]), .B(cs[0]), .Y(n40) );
  NAND2X2M U39 ( .A(cs[2]), .B(n40), .Y(n42) );
  NAND3X2M U40 ( .A(cs[0]), .B(n45), .C(cs[1]), .Y(n26) );
  INVX2M U41 ( .A(sampling_done), .Y(n21) );
  INVX2M U42 ( .A(cs[2]), .Y(n45) );
  NOR3BX2M U43 ( .AN(n40), .B(RX_IN), .C(cs[2]), .Y(n34) );
  NAND3BX2M U44 ( .AN(cs[0]), .B(n45), .C(cs[1]), .Y(n27) );
  NAND3BX2M U45 ( .AN(cs[1]), .B(n45), .C(cs[0]), .Y(n24) );
  CLKINVX1M U46 ( .A(Prescale[0]), .Y(N34) );
  OAI2BB1X1M U47 ( .A0N(Prescale[0]), .A1N(Prescale[1]), .B0(n1), .Y(N35) );
  OR2X1M U48 ( .A(n1), .B(Prescale[2]), .Y(n2) );
  OAI2BB1X1M U49 ( .A0N(n1), .A1N(Prescale[2]), .B0(n2), .Y(N36) );
  OR2X1M U50 ( .A(n2), .B(Prescale[3]), .Y(n3) );
  OAI2BB1X1M U51 ( .A0N(n2), .A1N(Prescale[3]), .B0(n3), .Y(N37) );
  OR2X1M U52 ( .A(n3), .B(Prescale[4]), .Y(n4) );
  OAI2BB1X1M U53 ( .A0N(n3), .A1N(Prescale[4]), .B0(n4), .Y(N38) );
  NOR2X1M U54 ( .A(n4), .B(Prescale[5]), .Y(N40) );
  AO21XLM U55 ( .A0(n4), .A1(Prescale[5]), .B0(N40), .Y(N39) );
  NOR2BX1M U56 ( .AN(N34), .B(edge_count[0]), .Y(n5) );
  OAI2B2X1M U57 ( .A1N(edge_count[1]), .A0(n5), .B0(N35), .B1(n5), .Y(n9) );
  XNOR2X1M U58 ( .A(N39), .B(edge_count[5]), .Y(n8) );
  NOR2BX1M U59 ( .AN(edge_count[0]), .B(N34), .Y(n6) );
  OAI2B2X1M U60 ( .A1N(N35), .A0(n6), .B0(edge_count[1]), .B1(n6), .Y(n7) );
  NAND4BX1M U61 ( .AN(N40), .B(n9), .C(n8), .D(n7), .Y(n16) );
  CLKXOR2X2M U62 ( .A(N38), .B(edge_count[4]), .Y(n12) );
  CLKXOR2X2M U63 ( .A(N36), .B(edge_count[2]), .Y(n11) );
  CLKXOR2X2M U64 ( .A(N37), .B(edge_count[3]), .Y(n10) );
  NOR4X1M U65 ( .A(n16), .B(n12), .C(n11), .D(n10), .Y(N41) );
endmodule


module data_sampling_test_1 ( CLK, RST, RX_IN, dat_sam_en, prescale, 
        edge_count, sampled_bit, sampling_done, test_si, test_se );
  input [5:0] prescale;
  input [5:0] edge_count;
  input CLK, RST, RX_IN, dat_sam_en, test_si, test_se;
  output sampled_bit, sampling_done;
  wire   N2, N4, N5, N6, N10, N11, N12, N13, N14, N15, n21, n22, n23,
         \sub_26/carry[4] , \sub_26/carry[3] , n1, n2, n3, n4, n5, n6, n7, n8,
         n9, n10, n15, n16, n17, n18, n19, n20, n24, n25, n26, n27, n28, n29,
         n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43;
  wire   [2:0] sampled_bits;
  assign N2 = prescale[1];

  SDFFRQX2M \sampled_bits_reg[2]  ( .D(n23), .SI(n6), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(sampled_bits[2]) );
  SDFFRQX2M sampling_done_reg ( .D(n43), .SI(sampled_bits[2]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(sampling_done) );
  SDFFRQX2M \sampled_bits_reg[1]  ( .D(n22), .SI(n5), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(sampled_bits[1]) );
  SDFFRQX2M \sampled_bits_reg[0]  ( .D(n21), .SI(test_si), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(sampled_bits[0]) );
  NOR2X2M U4 ( .A(prescale[5]), .B(\sub_26/carry[4] ), .Y(n1) );
  OR2X2M U5 ( .A(prescale[2]), .B(N2), .Y(n2) );
  XNOR2X2M U6 ( .A(edge_count[1]), .B(prescale[2]), .Y(n41) );
  XNOR2X1M U7 ( .A(\sub_26/carry[4] ), .B(prescale[5]), .Y(N6) );
  OR2X1M U8 ( .A(prescale[4]), .B(\sub_26/carry[3] ), .Y(\sub_26/carry[4] ) );
  XNOR2X1M U12 ( .A(\sub_26/carry[3] ), .B(prescale[4]), .Y(N5) );
  OR2X1M U13 ( .A(prescale[3]), .B(prescale[2]), .Y(\sub_26/carry[3] ) );
  XNOR2X1M U14 ( .A(prescale[2]), .B(prescale[3]), .Y(N4) );
  CLKINVX1M U15 ( .A(N2), .Y(N10) );
  OAI2BB1X1M U16 ( .A0N(N2), .A1N(prescale[2]), .B0(n2), .Y(N11) );
  OR2X1M U17 ( .A(n2), .B(prescale[3]), .Y(n3) );
  OAI2BB1X1M U18 ( .A0N(n2), .A1N(prescale[3]), .B0(n3), .Y(N12) );
  XNOR2X1M U19 ( .A(prescale[4]), .B(n3), .Y(N13) );
  NOR3X1M U20 ( .A(prescale[4]), .B(prescale[5]), .C(n3), .Y(N15) );
  OAI21X1M U21 ( .A0(prescale[4]), .A1(n3), .B0(prescale[5]), .Y(n4) );
  NAND2BX1M U22 ( .AN(N15), .B(n4), .Y(N14) );
  OAI21X1M U23 ( .A0(n5), .A1(n6), .B0(n7), .Y(sampled_bit) );
  OAI21X1M U24 ( .A0(sampled_bits[0]), .A1(sampled_bits[1]), .B0(
        sampled_bits[2]), .Y(n7) );
  CLKMX2X2M U25 ( .A(sampled_bits[2]), .B(RX_IN), .S0(n43), .Y(n23) );
  AND4X1M U26 ( .A(n8), .B(dat_sam_en), .C(n9), .D(n10), .Y(n43) );
  NOR4X1M U27 ( .A(n15), .B(n16), .C(n17), .D(n18), .Y(n10) );
  XNOR2X1M U28 ( .A(prescale[5]), .B(n19), .Y(n18) );
  CLKXOR2X2M U29 ( .A(prescale[4]), .B(edge_count[3]), .Y(n17) );
  CLKXOR2X2M U30 ( .A(prescale[3]), .B(edge_count[2]), .Y(n16) );
  CLKXOR2X2M U31 ( .A(prescale[2]), .B(edge_count[1]), .Y(n15) );
  NOR3X1M U32 ( .A(n20), .B(edge_count[5]), .C(n24), .Y(n9) );
  NOR4X1M U33 ( .A(n25), .B(n26), .C(n27), .D(n28), .Y(n20) );
  XNOR2X1M U34 ( .A(edge_count[0]), .B(N2), .Y(n8) );
  MXI2X1M U35 ( .A(n6), .B(n29), .S0(n30), .Y(n22) );
  NOR4X1M U36 ( .A(n31), .B(n25), .C(n24), .D(n32), .Y(n30) );
  XNOR2X1M U37 ( .A(n19), .B(N14), .Y(n25) );
  CLKINVX1M U38 ( .A(edge_count[4]), .Y(n19) );
  OR3X1M U39 ( .A(n28), .B(n26), .C(n27), .Y(n31) );
  NAND3X1M U40 ( .A(n33), .B(n34), .C(n35), .Y(n27) );
  XNOR2X1M U41 ( .A(edge_count[1]), .B(N11), .Y(n35) );
  XNOR2X1M U42 ( .A(edge_count[5]), .B(N15), .Y(n34) );
  XNOR2X1M U43 ( .A(edge_count[0]), .B(N10), .Y(n33) );
  CLKXOR2X2M U44 ( .A(edge_count[3]), .B(N13), .Y(n26) );
  CLKXOR2X2M U45 ( .A(edge_count[2]), .B(N12), .Y(n28) );
  CLKINVX1M U46 ( .A(sampled_bits[1]), .Y(n6) );
  MXI2X1M U47 ( .A(n5), .B(n29), .S0(n24), .Y(n21) );
  AND4X1M U48 ( .A(n36), .B(n37), .C(n38), .D(n39), .Y(n24) );
  NOR4X1M U49 ( .A(n32), .B(n40), .C(n41), .D(n42), .Y(n39) );
  CLKXOR2X2M U50 ( .A(edge_count[2]), .B(N4), .Y(n42) );
  CLKXOR2X2M U51 ( .A(edge_count[0]), .B(N2), .Y(n40) );
  CLKINVX1M U52 ( .A(dat_sam_en), .Y(n32) );
  XNOR2X1M U53 ( .A(edge_count[4]), .B(N6), .Y(n38) );
  XNOR2X1M U54 ( .A(edge_count[5]), .B(n1), .Y(n37) );
  XNOR2X1M U55 ( .A(edge_count[3]), .B(N5), .Y(n36) );
  CLKINVX1M U56 ( .A(RX_IN), .Y(n29) );
  CLKINVX1M U57 ( .A(sampled_bits[0]), .Y(n5) );
endmodule


module edge_bit_counter_test_1 ( CLK, RST, enable, PAR_EN, prescale, bit_count, 
        edge_count, test_si, test_se );
  input [5:0] prescale;
  output [3:0] bit_count;
  output [5:0] edge_count;
  input CLK, RST, enable, PAR_EN, test_si, test_se;
  wire   N6, N7, N8, N9, N10, N11, N12, edge_done, N25, N26, N27, N28, n23,
         n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37,
         n38, n39, n40, n41, n42, n43, n44, n45, \add_26/carry[5] ,
         \add_26/carry[4] , \add_26/carry[3] , \add_26/carry[2] , n1, n2, n3,
         n4, n15, n16, n17, n18, n19, n20, n21, n22, n46, n47, n48, n49, n50,
         n51, n52, n53, n54, n55, n58, n59;

  SDFFRQX2M \edge_count_reg[5]  ( .D(n43), .SI(edge_count[4]), .SE(n59), .CK(
        CLK), .RN(RST), .Q(edge_count[5]) );
  SDFFRQX2M \edge_count_reg[0]  ( .D(n42), .SI(n54), .SE(n59), .CK(CLK), .RN(
        RST), .Q(edge_count[0]) );
  SDFFRQX2M \edge_count_reg[4]  ( .D(n38), .SI(edge_count[3]), .SE(n59), .CK(
        CLK), .RN(RST), .Q(edge_count[4]) );
  SDFFRQX2M \edge_count_reg[3]  ( .D(n39), .SI(edge_count[2]), .SE(n59), .CK(
        CLK), .RN(RST), .Q(edge_count[3]) );
  SDFFRQX2M \edge_count_reg[2]  ( .D(n40), .SI(edge_count[1]), .SE(n59), .CK(
        CLK), .RN(RST), .Q(edge_count[2]) );
  SDFFRQX2M \edge_count_reg[1]  ( .D(n41), .SI(edge_count[0]), .SE(n59), .CK(
        CLK), .RN(RST), .Q(edge_count[1]) );
  SDFFRQX2M \bit_count_reg[2]  ( .D(n36), .SI(n53), .SE(n59), .CK(CLK), .RN(
        RST), .Q(bit_count[2]) );
  SDFFRQX2M \bit_count_reg[1]  ( .D(n37), .SI(n52), .SE(n59), .CK(CLK), .RN(
        RST), .Q(bit_count[1]) );
  SDFFRQX2M \bit_count_reg[3]  ( .D(n44), .SI(n55), .SE(n59), .CK(CLK), .RN(
        RST), .Q(bit_count[3]) );
  SDFFRQX2M \bit_count_reg[0]  ( .D(n45), .SI(test_si), .SE(n59), .CK(CLK), 
        .RN(RST), .Q(bit_count[0]) );
  NAND2X2M U6 ( .A(enable), .B(n48), .Y(n30) );
  INVX2M U7 ( .A(enable), .Y(n50) );
  INVX2M U15 ( .A(PAR_EN), .Y(n49) );
  INVX2M U16 ( .A(n25), .Y(n51) );
  INVX2M U17 ( .A(edge_done), .Y(n48) );
  NOR2X2M U18 ( .A(n50), .B(edge_done), .Y(n29) );
  NOR2BX2M U19 ( .AN(N25), .B(n30), .Y(n41) );
  NOR2BX2M U20 ( .AN(N26), .B(n30), .Y(n40) );
  NOR2BX2M U21 ( .AN(N27), .B(n30), .Y(n39) );
  NOR2BX2M U22 ( .AN(N28), .B(n30), .Y(n38) );
  NOR2X2M U23 ( .A(n53), .B(n52), .Y(n25) );
  NAND3XLM U24 ( .A(edge_done), .B(n34), .C(enable), .Y(n27) );
  NAND4X2M U25 ( .A(PAR_EN), .B(bit_count[2]), .C(n35), .D(bit_count[3]), .Y(
        n34) );
  NOR2X2M U26 ( .A(bit_count[1]), .B(bit_count[0]), .Y(n35) );
  OAI32X1M U27 ( .A0(n27), .A1(bit_count[1]), .A2(n52), .B0(n28), .B1(n53), 
        .Y(n37) );
  AOI2BB1X2M U28 ( .A0N(n27), .A1N(bit_count[0]), .B0(n29), .Y(n28) );
  OAI22X1M U29 ( .A0(n23), .A1(n55), .B0(n24), .B1(n50), .Y(n36) );
  AOI33XLM U30 ( .A0(edge_done), .A1(n25), .A2(n26), .B0(n51), .B1(n54), .B2(
        bit_count[2]), .Y(n24) );
  AOI21X2M U31 ( .A0(bit_count[3]), .A1(n49), .B0(bit_count[2]), .Y(n26) );
  OAI22X1M U32 ( .A0(n23), .A1(n54), .B0(n31), .B1(n50), .Y(n44) );
  AOI31X2M U33 ( .A0(bit_count[3]), .A1(n55), .A2(PAR_EN), .B0(n32), .Y(n31)
         );
  NOR4X1M U34 ( .A(bit_count[3]), .B(n51), .C(n48), .D(n55), .Y(n32) );
  OAI2BB2X1M U35 ( .B0(bit_count[0]), .B1(n27), .A0N(bit_count[0]), .A1N(n29), 
        .Y(n45) );
  OR2X2M U36 ( .A(prescale[1]), .B(prescale[0]), .Y(n2) );
  NOR2X2M U37 ( .A(n1), .B(n30), .Y(n43) );
  XNOR2X2M U38 ( .A(\add_26/carry[5] ), .B(edge_count[5]), .Y(n1) );
  NOR2X2M U39 ( .A(edge_count[0]), .B(n30), .Y(n42) );
  OA21X2M U40 ( .A0(n50), .A1(n33), .B0(n30), .Y(n23) );
  OAI31X1M U41 ( .A0(n49), .A1(bit_count[1]), .A2(bit_count[0]), .B0(n51), .Y(
        n33) );
  INVX2M U42 ( .A(bit_count[0]), .Y(n52) );
  INVX2M U43 ( .A(bit_count[2]), .Y(n55) );
  INVX2M U44 ( .A(bit_count[1]), .Y(n53) );
  INVX2M U45 ( .A(bit_count[3]), .Y(n54) );
  ADDHX1M U46 ( .A(edge_count[1]), .B(edge_count[0]), .CO(\add_26/carry[2] ), 
        .S(N25) );
  ADDHX1M U47 ( .A(edge_count[2]), .B(\add_26/carry[2] ), .CO(
        \add_26/carry[3] ), .S(N26) );
  ADDHX1M U48 ( .A(edge_count[3]), .B(\add_26/carry[3] ), .CO(
        \add_26/carry[4] ), .S(N27) );
  ADDHX1M U49 ( .A(edge_count[4]), .B(\add_26/carry[4] ), .CO(
        \add_26/carry[5] ), .S(N28) );
  CLKINVX1M U50 ( .A(prescale[0]), .Y(N6) );
  OAI2BB1X1M U51 ( .A0N(prescale[0]), .A1N(prescale[1]), .B0(n2), .Y(N7) );
  OR2X1M U52 ( .A(n2), .B(prescale[2]), .Y(n3) );
  OAI2BB1X1M U53 ( .A0N(n2), .A1N(prescale[2]), .B0(n3), .Y(N8) );
  OR2X1M U54 ( .A(n3), .B(prescale[3]), .Y(n4) );
  OAI2BB1X1M U55 ( .A0N(n3), .A1N(prescale[3]), .B0(n4), .Y(N9) );
  OR2X1M U56 ( .A(n4), .B(prescale[4]), .Y(n15) );
  OAI2BB1X1M U57 ( .A0N(n4), .A1N(prescale[4]), .B0(n15), .Y(N10) );
  NOR2X1M U58 ( .A(n15), .B(prescale[5]), .Y(N12) );
  AO21XLM U59 ( .A0(n15), .A1(prescale[5]), .B0(N12), .Y(N11) );
  NOR2BX1M U60 ( .AN(N6), .B(edge_count[0]), .Y(n16) );
  OAI2B2X1M U61 ( .A1N(edge_count[1]), .A0(n16), .B0(N7), .B1(n16), .Y(n20) );
  XNOR2X1M U62 ( .A(N11), .B(edge_count[5]), .Y(n19) );
  NOR2BX1M U63 ( .AN(edge_count[0]), .B(N6), .Y(n17) );
  OAI2B2X1M U64 ( .A1N(N7), .A0(n17), .B0(edge_count[1]), .B1(n17), .Y(n18) );
  NAND4BX1M U65 ( .AN(N12), .B(n20), .C(n19), .D(n18), .Y(n47) );
  CLKXOR2X2M U66 ( .A(N10), .B(edge_count[4]), .Y(n46) );
  CLKXOR2X2M U67 ( .A(N8), .B(edge_count[2]), .Y(n22) );
  CLKXOR2X2M U68 ( .A(N9), .B(edge_count[3]), .Y(n21) );
  NOR4X1M U69 ( .A(n47), .B(n46), .C(n22), .D(n21), .Y(edge_done) );
  INVXLM U70 ( .A(test_se), .Y(n58) );
  INVXLM U71 ( .A(n58), .Y(n59) );
endmodule


module parity_check ( P_DATA, parity_bit, PAR_TYP, par_check_en, par_err );
  input [7:0] P_DATA;
  input parity_bit, PAR_TYP, par_check_en;
  output par_err;
  wire   n8, n1, n2, n3, n4, n5, n6;

  CLKBUFX8M U2 ( .A(n8), .Y(par_err) );
  NOR2BX2M U3 ( .AN(par_check_en), .B(n1), .Y(n8) );
  XOR3XLM U4 ( .A(n2), .B(n3), .C(n4), .Y(n1) );
  XOR3XLM U5 ( .A(P_DATA[5]), .B(P_DATA[4]), .C(n5), .Y(n3) );
  XOR3XLM U6 ( .A(P_DATA[1]), .B(P_DATA[0]), .C(n6), .Y(n2) );
  XNOR2XLM U7 ( .A(parity_bit), .B(PAR_TYP), .Y(n4) );
  XNOR2X2M U8 ( .A(P_DATA[3]), .B(P_DATA[2]), .Y(n6) );
  XNOR2X2M U9 ( .A(P_DATA[7]), .B(P_DATA[6]), .Y(n5) );
endmodule


module start_check ( start_bit, start_check_en, start_glitch );
  input start_bit, start_check_en;
  output start_glitch;


  AND2X2M U1 ( .A(start_check_en), .B(start_bit), .Y(start_glitch) );
endmodule


module stop_check ( stop_bit, stop_check_en, stop_err );
  input stop_bit, stop_check_en;
  output stop_err;
  wire   n2;

  CLKBUFX8M U1 ( .A(n2), .Y(stop_err) );
  NOR2BX2M U2 ( .AN(stop_check_en), .B(stop_bit), .Y(n2) );
endmodule


module desarilzer_test_1 ( CLK, RST, deser_en, sampled_bit, bit_count, P_DATA, 
        test_si, test_se );
  input [3:0] bit_count;
  output [7:0] P_DATA;
  input CLK, RST, deser_en, sampled_bit, test_si, test_se;
  wire   N13, N14, N15, N16, N17, n14, n15, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n1, n2, n11,
         n12;

  SDFFRQX2M \P_DATA_reg[5]  ( .D(n31), .SI(P_DATA[4]), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(P_DATA[5]) );
  SDFFRQX2M \P_DATA_reg[1]  ( .D(n27), .SI(P_DATA[0]), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(P_DATA[1]) );
  SDFFRQX2M \P_DATA_reg[4]  ( .D(n30), .SI(P_DATA[3]), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(P_DATA[4]) );
  SDFFRQX2M \P_DATA_reg[0]  ( .D(n26), .SI(test_si), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(P_DATA[0]) );
  SDFFRQX2M \P_DATA_reg[7]  ( .D(n33), .SI(P_DATA[6]), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(P_DATA[7]) );
  SDFFRQX2M \P_DATA_reg[3]  ( .D(n29), .SI(P_DATA[2]), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(P_DATA[3]) );
  SDFFRQX2M \P_DATA_reg[6]  ( .D(n32), .SI(P_DATA[5]), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(P_DATA[6]) );
  SDFFRQX2M \P_DATA_reg[2]  ( .D(n28), .SI(P_DATA[1]), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(P_DATA[2]) );
  NOR2BX2M U4 ( .AN(n19), .B(N15), .Y(n15) );
  AND2X2M U12 ( .A(N15), .B(n19), .Y(n21) );
  INVX2M U13 ( .A(sampled_bit), .Y(n12) );
  INVX2M U14 ( .A(N14), .Y(n11) );
  OAI2BB2X1M U15 ( .B0(n12), .B1(n18), .A0N(P_DATA[3]), .A1N(n18), .Y(n29) );
  NAND3X2M U16 ( .A(N13), .B(n15), .C(N14), .Y(n18) );
  OAI2BB2X1M U17 ( .B0(n12), .B1(n22), .A0N(P_DATA[5]), .A1N(n22), .Y(n31) );
  NAND3X2M U18 ( .A(N13), .B(n11), .C(n21), .Y(n22) );
  OAI2BB2X1M U19 ( .B0(n12), .B1(n16), .A0N(P_DATA[1]), .A1N(n16), .Y(n27) );
  NAND3X2M U20 ( .A(n15), .B(n11), .C(N13), .Y(n16) );
  OAI2BB2X1M U21 ( .B0(n12), .B1(n17), .A0N(P_DATA[2]), .A1N(n17), .Y(n28) );
  NAND3X2M U22 ( .A(n15), .B(bit_count[0]), .C(N14), .Y(n17) );
  OAI2BB2X1M U23 ( .B0(n12), .B1(n20), .A0N(P_DATA[4]), .A1N(n20), .Y(n30) );
  NAND3X2M U24 ( .A(bit_count[0]), .B(n11), .C(n21), .Y(n20) );
  OAI2BB2X1M U25 ( .B0(n12), .B1(n23), .A0N(P_DATA[6]), .A1N(n23), .Y(n32) );
  NAND3X2M U26 ( .A(N14), .B(bit_count[0]), .C(n21), .Y(n23) );
  OAI2BB2X1M U27 ( .B0(n12), .B1(n24), .A0N(P_DATA[7]), .A1N(n24), .Y(n33) );
  NAND3X2M U28 ( .A(N14), .B(N13), .C(n21), .Y(n24) );
  OAI2BB2X1M U29 ( .B0(n14), .B1(n12), .A0N(P_DATA[0]), .A1N(n14), .Y(n26) );
  NAND3X2M U30 ( .A(bit_count[0]), .B(n11), .C(n15), .Y(n14) );
  AND2X2M U31 ( .A(n25), .B(deser_en), .Y(n19) );
  NOR2X2M U32 ( .A(N17), .B(N16), .Y(n25) );
  OR2X2M U33 ( .A(bit_count[1]), .B(bit_count[0]), .Y(n1) );
  CLKINVX1M U34 ( .A(bit_count[0]), .Y(N13) );
  OAI2BB1X1M U35 ( .A0N(bit_count[0]), .A1N(bit_count[1]), .B0(n1), .Y(N14) );
  OR2X1M U36 ( .A(n1), .B(bit_count[2]), .Y(n2) );
  OAI2BB1X1M U37 ( .A0N(n1), .A1N(bit_count[2]), .B0(n2), .Y(N15) );
  NOR2X1M U38 ( .A(n2), .B(bit_count[3]), .Y(N17) );
  AO21XLM U39 ( .A0(n2), .A1(bit_count[3]), .B0(N17), .Y(N16) );
endmodule


module UART_RX_test_1 ( RX_IN, Prescale, PAR_EN, PAR_TYP, CLK, RST, P_DATA, 
        Parity_Error, Stop_Error, Data_Valid, test_si, test_so, test_se );
  input [5:0] Prescale;
  output [7:0] P_DATA;
  input RX_IN, PAR_EN, PAR_TYP, CLK, RST, test_si, test_se;
  output Parity_Error, Stop_Error, Data_Valid, test_so;
  wire   sampling_done, strt_glitch, deser_en, par_chk_en, strt_chk_en,
         stp_chk_en, edge_bit_en, dat_sam_en, sampled_bit, n1, n2, n3;
  wire   [3:0] bit_count;
  wire   [5:0] edge_count;
  assign test_so = edge_count[5];

  INVX2M U1 ( .A(n2), .Y(n1) );
  INVX2M U2 ( .A(RST), .Y(n2) );
  UART_RX_FSM_test_1 FSM_u0 ( .CLK(CLK), .RST(n1), .RX_IN(RX_IN), .PAR_EN(
        PAR_EN), .bit_count(bit_count), .edge_count(edge_count), .Prescale(
        Prescale), .sampling_done(sampling_done), .par_err(Parity_Error), 
        .strt_glitch(strt_glitch), .stp_err(Stop_Error), .deser_en(deser_en), 
        .par_chk_en(par_chk_en), .strt_chk_en(strt_chk_en), .stp_chk_en(
        stp_chk_en), .edge_bit_en(edge_bit_en), .dat_sam_en(dat_sam_en), 
        .data_valid(Data_Valid), .test_si(test_si), .test_so(n3), .test_se(
        test_se) );
  data_sampling_test_1 data_sampling_u0 ( .CLK(CLK), .RST(n1), .RX_IN(RX_IN), 
        .dat_sam_en(dat_sam_en), .prescale(Prescale), .edge_count(edge_count), 
        .sampled_bit(sampled_bit), .sampling_done(sampling_done), .test_si(n3), 
        .test_se(test_se) );
  edge_bit_counter_test_1 edge_bit_counter_u0 ( .CLK(CLK), .RST(n1), .enable(
        edge_bit_en), .PAR_EN(par_chk_en), .prescale(Prescale), .bit_count(
        bit_count), .edge_count(edge_count), .test_si(P_DATA[7]), .test_se(
        test_se) );
  parity_check parity_check_u0 ( .P_DATA(P_DATA), .parity_bit(sampled_bit), 
        .PAR_TYP(PAR_TYP), .par_check_en(par_chk_en), .par_err(Parity_Error)
         );
  start_check start_check_u0 ( .start_bit(sampled_bit), .start_check_en(
        strt_chk_en), .start_glitch(strt_glitch) );
  stop_check stop_check_u0 ( .stop_bit(sampled_bit), .stop_check_en(stp_chk_en), .stop_err(Stop_Error) );
  desarilzer_test_1 desarilzer_u0 ( .CLK(CLK), .RST(n1), .deser_en(deser_en), 
        .sampled_bit(sampled_bit), .bit_count(bit_count), .P_DATA(P_DATA), 
        .test_si(sampling_done), .test_se(test_se) );
endmodule


module UART_test_1 ( RST, TX_CLK, RX_CLK, RX_IN_S, RX_OUT_P, RX_OUT_V, TX_IN_P, 
        TX_IN_V, TX_OUT_S, TX_OUT_V, Prescale, parity_enable, parity_type, 
        parity_error, framing_error, test_si, test_so, test_se );
  output [7:0] RX_OUT_P;
  input [7:0] TX_IN_P;
  input [5:0] Prescale;
  input RST, TX_CLK, RX_CLK, RX_IN_S, TX_IN_V, parity_enable, parity_type,
         test_si, test_se;
  output RX_OUT_V, TX_OUT_S, TX_OUT_V, parity_error, framing_error, test_so;
  wire   n1, n2, n4;

  INVX2M U1 ( .A(n2), .Y(n1) );
  INVX2M U2 ( .A(RST), .Y(n2) );
  UART_TX_test_1 U0_UART_TX ( .P_DATA(TX_IN_P), .DATA_VALID(TX_IN_V), .PAR_EN(
        parity_enable), .PAR_TYPE(parity_type), .CLK(TX_CLK), .RST(n1), 
        .TX_OUT(TX_OUT_S), .BUSY(TX_OUT_V), .test_si(n4), .test_so(test_so), 
        .test_se(test_se) );
  UART_RX_test_1 U0_UART_RX ( .RX_IN(RX_IN_S), .Prescale(Prescale), .PAR_EN(
        parity_enable), .PAR_TYP(parity_type), .CLK(RX_CLK), .RST(n1), 
        .P_DATA(RX_OUT_P), .Parity_Error(parity_error), .Stop_Error(
        framing_error), .Data_Valid(RX_OUT_V), .test_si(test_si), .test_so(n4), 
        .test_se(test_se) );
endmodule


module SYS_CTRL_test_1 ( CLK, RST, ALU_OUT, ALU_OUT_Valid, RX_P_Data, RX_D_VLD, 
        RegFile_RdData, RegFile_RdData_Valid, FIFO_FULL, ClkGating_EN, 
        ClkDiv_EN, ALU_EN, ALU_FUN, RegFile_Address, RegFile_WrEn, 
        RegFile_RdEn, RegFile_WrData, FIFO_WrData, FIFO_WrInc, test_si, 
        test_so, test_se );
  input [15:0] ALU_OUT;
  input [7:0] RX_P_Data;
  input [7:0] RegFile_RdData;
  output [3:0] ALU_FUN;
  output [3:0] RegFile_Address;
  output [7:0] RegFile_WrData;
  output [7:0] FIFO_WrData;
  input CLK, RST, ALU_OUT_Valid, RX_D_VLD, RegFile_RdData_Valid, FIFO_FULL,
         test_si, test_se;
  output ClkGating_EN, ClkDiv_EN, ALU_EN, RegFile_WrEn, RegFile_RdEn,
         FIFO_WrInc, test_so;
  wire   N118, N119, N120, N121, N143, N147, N148, N149, N150, n22, n23, n24,
         n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38,
         n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52,
         n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n11, n12, n13, n14,
         n15, n16, n17, n18, n19, n20, n21, n63, n64, n65, n66, n67, n68, n69,
         n70, n71, n72, n73, n74, n75, n76, n77, n78;
  wire   [3:0] cs;
  wire   [3:0] RegFile_Address_seq;
  wire   [3:0] ns;
  assign test_so = cs[3];

  SDFFRQX2M \cs_reg[2]  ( .D(ns[2]), .SI(cs[1]), .SE(test_se), .CK(CLK), .RN(
        RST), .Q(cs[2]) );
  SDFFRQX2M \RegFile_Address_seq_reg[3]  ( .D(RegFile_Address[3]), .SI(
        RegFile_Address_seq[2]), .SE(test_se), .CK(CLK), .RN(RST), .Q(
        RegFile_Address_seq[3]) );
  SDFFRQX2M \RegFile_Address_seq_reg[2]  ( .D(RegFile_Address[2]), .SI(
        RegFile_Address_seq[1]), .SE(test_se), .CK(CLK), .RN(RST), .Q(
        RegFile_Address_seq[2]) );
  SDFFRQX2M \RegFile_Address_seq_reg[1]  ( .D(RegFile_Address[1]), .SI(
        RegFile_Address_seq[0]), .SE(test_se), .CK(CLK), .RN(RST), .Q(
        RegFile_Address_seq[1]) );
  SDFFRQX2M \cs_reg[1]  ( .D(ns[1]), .SI(n69), .SE(test_se), .CK(CLK), .RN(RST), .Q(cs[1]) );
  SDFFRQX2M \cs_reg[3]  ( .D(ns[3]), .SI(n71), .SE(test_se), .CK(CLK), .RN(RST), .Q(cs[3]) );
  SDFFRQX2M \cs_reg[0]  ( .D(ns[0]), .SI(RegFile_Address_seq[3]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(cs[0]) );
  SDFFRQX2M \RegFile_Address_seq_reg[0]  ( .D(RegFile_Address[0]), .SI(test_si), .SE(test_se), .CK(CLK), .RN(RST), .Q(RegFile_Address_seq[0]) );
  NOR2X2M U13 ( .A(n76), .B(n26), .Y(ALU_FUN[2]) );
  NOR2X2M U14 ( .A(n78), .B(n26), .Y(ALU_FUN[0]) );
  BUFX2M U15 ( .A(cs[0]), .Y(n12) );
  MX3X1M U16 ( .A(n65), .B(n63), .C(RegFile_Address_seq[3]), .S0(cs[1]), .S1(
        cs[3]), .Y(RegFile_Address[3]) );
  MX3X1M U17 ( .A(n21), .B(n19), .C(RegFile_Address_seq[2]), .S0(cs[1]), .S1(
        cs[3]), .Y(RegFile_Address[2]) );
  NOR2BX2M U18 ( .AN(cs[1]), .B(cs[3]), .Y(n40) );
  INVX2M U19 ( .A(RegFile_WrEn), .Y(n68) );
  NAND2X2M U20 ( .A(n51), .B(n52), .Y(FIFO_WrInc) );
  INVX2M U21 ( .A(n51), .Y(n70) );
  OAI21X2M U22 ( .A0(n72), .A1(n78), .B0(n50), .Y(N118) );
  OAI21X2M U23 ( .A0(n72), .A1(n77), .B0(n49), .Y(N119) );
  OAI21X2M U24 ( .A0(n72), .A1(n75), .B0(n47), .Y(N121) );
  AND2X2M U25 ( .A(N119), .B(n12), .Y(n17) );
  AND2X2M U26 ( .A(N121), .B(n12), .Y(n64) );
  AND2X2M U27 ( .A(n12), .B(N118), .Y(n14) );
  INVX2M U28 ( .A(n50), .Y(N143) );
  AOI21X2M U29 ( .A0(n37), .A1(n33), .B0(n72), .Y(RegFile_WrEn) );
  NOR2X2M U30 ( .A(n66), .B(n52), .Y(n41) );
  NOR2X2M U31 ( .A(n34), .B(n72), .Y(RegFile_RdEn) );
  OAI21X2M U32 ( .A0(n72), .A1(n76), .B0(n48), .Y(N120) );
  NAND2X2M U33 ( .A(n28), .B(n27), .Y(n52) );
  NOR2X2M U34 ( .A(n78), .B(n68), .Y(RegFile_WrData[0]) );
  NOR2X2M U35 ( .A(n77), .B(n68), .Y(RegFile_WrData[1]) );
  NOR2X2M U36 ( .A(n76), .B(n68), .Y(RegFile_WrData[2]) );
  NOR2X2M U37 ( .A(n75), .B(n68), .Y(RegFile_WrData[3]) );
  NOR2X2M U38 ( .A(n74), .B(n68), .Y(RegFile_WrData[4]) );
  NOR2X2M U39 ( .A(n73), .B(n68), .Y(RegFile_WrData[7]) );
  NAND2X2M U40 ( .A(n62), .B(n12), .Y(n51) );
  NAND3X2M U41 ( .A(n40), .B(n69), .C(n11), .Y(n37) );
  NAND4BX1M U42 ( .AN(RegFile_RdEn), .B(n67), .C(n25), .D(n26), .Y(ns[2]) );
  OAI2BB1X2M U43 ( .A0N(n66), .A1N(n27), .B0(n28), .Y(n25) );
  NAND2X2M U44 ( .A(n12), .B(n40), .Y(n33) );
  NAND3X2M U45 ( .A(n69), .B(n71), .C(n40), .Y(n34) );
  INVX2M U46 ( .A(n12), .Y(n69) );
  AND2X2M U47 ( .A(n62), .B(n69), .Y(n28) );
  INVX2M U48 ( .A(n11), .Y(n71) );
  AND2X2M U49 ( .A(N120), .B(n12), .Y(n20) );
  NAND3X2M U50 ( .A(n12), .B(n40), .C(n11), .Y(n22) );
  NAND2X2M U51 ( .A(n12), .B(n45), .Y(n29) );
  NOR2X2M U52 ( .A(n77), .B(n26), .Y(ALU_FUN[1]) );
  INVX2M U53 ( .A(n26), .Y(ALU_EN) );
  NOR2X2M U54 ( .A(n75), .B(n26), .Y(ALU_FUN[3]) );
  MX4X1M U55 ( .A(N121), .B(RegFile_Address_seq[3]), .C(N150), .D(N150), .S0(
        n12), .S1(n11), .Y(n63) );
  MX2X2M U56 ( .A(n64), .B(RegFile_Address_seq[3]), .S0(n11), .Y(n65) );
  INVX2M U57 ( .A(n47), .Y(N150) );
  INVX2M U58 ( .A(RX_D_VLD), .Y(n72) );
  MX3X1M U59 ( .A(n18), .B(n16), .C(RegFile_Address_seq[1]), .S0(cs[1]), .S1(
        cs[3]), .Y(RegFile_Address[1]) );
  MX4X1M U60 ( .A(N119), .B(RegFile_Address_seq[1]), .C(N148), .D(N148), .S0(
        n12), .S1(n11), .Y(n16) );
  MX2X2M U61 ( .A(n17), .B(RegFile_Address_seq[1]), .S0(n11), .Y(n18) );
  INVX2M U62 ( .A(n49), .Y(N148) );
  INVX2M U63 ( .A(RX_P_Data[0]), .Y(n78) );
  NAND2X2M U64 ( .A(RegFile_Address_seq[0]), .B(n72), .Y(n50) );
  NAND2X2M U65 ( .A(RegFile_Address_seq[1]), .B(n72), .Y(n49) );
  NAND2X2M U66 ( .A(RegFile_Address_seq[3]), .B(n72), .Y(n47) );
  MX3X1M U67 ( .A(n15), .B(n13), .C(RegFile_Address_seq[0]), .S0(cs[1]), .S1(
        cs[3]), .Y(RegFile_Address[0]) );
  MX4X1M U68 ( .A(N118), .B(RegFile_Address_seq[0]), .C(N143), .D(N147), .S0(
        n12), .S1(n11), .Y(n13) );
  MX2X2M U69 ( .A(n14), .B(RegFile_Address_seq[0]), .S0(n11), .Y(n15) );
  NAND2BX2M U70 ( .AN(RegFile_Address_seq[0]), .B(n72), .Y(N147) );
  MX4X1M U71 ( .A(N120), .B(RegFile_Address_seq[2]), .C(N149), .D(N149), .S0(
        n12), .S1(n11), .Y(n19) );
  MX2X2M U72 ( .A(n20), .B(RegFile_Address_seq[2]), .S0(n11), .Y(n21) );
  INVX2M U73 ( .A(n48), .Y(N149) );
  NOR3X2M U74 ( .A(cs[1]), .B(cs[3]), .C(n71), .Y(n62) );
  NOR2X2M U75 ( .A(n52), .B(ALU_OUT_Valid), .Y(n54) );
  AOI2B1X1M U76 ( .A1N(RegFile_RdData_Valid), .A0(n66), .B0(FIFO_FULL), .Y(n27) );
  OAI2BB1X2M U77 ( .A0N(ALU_OUT[8]), .A1N(n70), .B0(n61), .Y(FIFO_WrData[0])
         );
  AOI22X1M U78 ( .A0(RegFile_RdData[0]), .A1(n54), .B0(ALU_OUT[0]), .B1(n41), 
        .Y(n61) );
  OAI2BB1X2M U79 ( .A0N(ALU_OUT[9]), .A1N(n70), .B0(n60), .Y(FIFO_WrData[1])
         );
  AOI22X1M U80 ( .A0(RegFile_RdData[1]), .A1(n54), .B0(ALU_OUT[1]), .B1(n41), 
        .Y(n60) );
  OAI2BB1X2M U81 ( .A0N(ALU_OUT[10]), .A1N(n70), .B0(n59), .Y(FIFO_WrData[2])
         );
  AOI22X1M U82 ( .A0(RegFile_RdData[2]), .A1(n54), .B0(ALU_OUT[2]), .B1(n41), 
        .Y(n59) );
  OAI2BB1X2M U83 ( .A0N(ALU_OUT[11]), .A1N(n70), .B0(n58), .Y(FIFO_WrData[3])
         );
  AOI22X1M U84 ( .A0(RegFile_RdData[3]), .A1(n54), .B0(ALU_OUT[3]), .B1(n41), 
        .Y(n58) );
  OAI2BB1X2M U85 ( .A0N(ALU_OUT[12]), .A1N(n70), .B0(n57), .Y(FIFO_WrData[4])
         );
  AOI22X1M U86 ( .A0(RegFile_RdData[4]), .A1(n54), .B0(ALU_OUT[4]), .B1(n41), 
        .Y(n57) );
  OAI2BB1X2M U87 ( .A0N(ALU_OUT[13]), .A1N(n70), .B0(n56), .Y(FIFO_WrData[5])
         );
  AOI22X1M U88 ( .A0(RegFile_RdData[5]), .A1(n54), .B0(ALU_OUT[5]), .B1(n41), 
        .Y(n56) );
  OAI2BB1X2M U89 ( .A0N(ALU_OUT[14]), .A1N(n70), .B0(n55), .Y(FIFO_WrData[6])
         );
  AOI22X1M U90 ( .A0(RegFile_RdData[6]), .A1(n54), .B0(ALU_OUT[6]), .B1(n41), 
        .Y(n55) );
  OAI2BB1X2M U91 ( .A0N(ALU_OUT[15]), .A1N(n70), .B0(n53), .Y(FIFO_WrData[7])
         );
  AOI22X1M U92 ( .A0(RegFile_RdData[7]), .A1(n54), .B0(ALU_OUT[7]), .B1(n41), 
        .Y(n53) );
  AND2X2M U93 ( .A(RX_P_Data[5]), .B(RegFile_WrEn), .Y(RegFile_WrData[5]) );
  AND2X2M U94 ( .A(RX_P_Data[6]), .B(RegFile_WrEn), .Y(RegFile_WrData[6]) );
  NAND4BX1M U95 ( .AN(n41), .B(n29), .C(n42), .D(n43), .Y(ns[0]) );
  OA22X2M U96 ( .A0(n33), .A1(RX_D_VLD), .B0(n37), .B1(n72), .Y(n43) );
  NAND3X2M U97 ( .A(n78), .B(n74), .C(n31), .Y(n42) );
  NAND2X2M U98 ( .A(RegFile_Address_seq[2]), .B(n72), .Y(n48) );
  BUFX2M U99 ( .A(cs[2]), .Y(n11) );
  INVX2M U100 ( .A(RX_P_Data[3]), .Y(n75) );
  INVX2M U101 ( .A(RX_P_Data[1]), .Y(n77) );
  INVX2M U102 ( .A(RX_P_Data[2]), .Y(n76) );
  NOR4BX1M U103 ( .AN(cs[3]), .B(n12), .C(cs[1]), .D(n11), .Y(ClkGating_EN) );
  NOR3X2M U104 ( .A(n11), .B(cs[3]), .C(cs[1]), .Y(n45) );
  NAND2X2M U105 ( .A(ClkGating_EN), .B(RX_D_VLD), .Y(n26) );
  OAI211X2M U106 ( .A0(n72), .A1(n29), .B0(n67), .C0(n30), .Y(ns[1]) );
  AOI31X2M U107 ( .A0(RX_P_Data[4]), .A1(RX_P_Data[0]), .A2(n31), .B0(n32), 
        .Y(n30) );
  AOI21X2M U108 ( .A0(n33), .A1(n34), .B0(RX_D_VLD), .Y(n32) );
  OAI21X2M U109 ( .A0(n72), .A1(n22), .B0(n23), .Y(ns[3]) );
  AOI32X1M U110 ( .A0(RX_P_Data[0]), .A1(n24), .A2(RX_P_Data[4]), .B0(
        ClkGating_EN), .B1(n72), .Y(n23) );
  AND4X2M U111 ( .A(RX_P_Data[6]), .B(RX_P_Data[2]), .C(n38), .D(n39), .Y(n24)
         );
  NOR2X2M U112 ( .A(RX_P_Data[5]), .B(RX_P_Data[1]), .Y(n38) );
  AND4X2M U113 ( .A(RX_P_Data[5]), .B(RX_P_Data[1]), .C(n44), .D(n39), .Y(n31)
         );
  NOR2X2M U114 ( .A(RX_P_Data[6]), .B(RX_P_Data[2]), .Y(n44) );
  INVX2M U115 ( .A(RX_P_Data[4]), .Y(n74) );
  AND4X2M U116 ( .A(n45), .B(n69), .C(RX_D_VLD), .D(n46), .Y(n39) );
  NOR2X2M U117 ( .A(n75), .B(n73), .Y(n46) );
  INVX2M U118 ( .A(n35), .Y(n67) );
  OAI211X2M U119 ( .A0(RX_D_VLD), .A1(n22), .B0(n36), .C0(n37), .Y(n35) );
  NAND3X2M U120 ( .A(n78), .B(n74), .C(n24), .Y(n36) );
  INVX2M U121 ( .A(RX_P_Data[7]), .Y(n73) );
  INVX2M U122 ( .A(ALU_OUT_Valid), .Y(n66) );
  INVX2M U3 ( .A(1'b0), .Y(ClkDiv_EN) );
endmodule


module RegFile_WIDTH8_DEPTH16_ADDR4_test_1 ( CLK, RST, WrEn, RdEn, Address, 
        WrData, RdData, RdData_VLD, REG0, REG1, REG2, REG3, test_si3, test_si2, 
        test_si1, test_so2, test_so1, test_se );
  input [3:0] Address;
  input [7:0] WrData;
  output [7:0] RdData;
  output [7:0] REG0;
  output [7:0] REG1;
  output [7:0] REG2;
  output [7:0] REG3;
  input CLK, RST, WrEn, RdEn, test_si3, test_si2, test_si1, test_se;
  output RdData_VLD, test_so2, test_so1;
  wire   N10, N11, N12, N13, \regArr[15][7] , \regArr[15][6] , \regArr[15][5] ,
         \regArr[15][4] , \regArr[15][3] , \regArr[15][2] , \regArr[15][1] ,
         \regArr[15][0] , \regArr[14][7] , \regArr[14][6] , \regArr[14][5] ,
         \regArr[14][4] , \regArr[14][3] , \regArr[14][2] , \regArr[14][1] ,
         \regArr[14][0] , \regArr[13][7] , \regArr[13][6] , \regArr[13][5] ,
         \regArr[13][4] , \regArr[13][3] , \regArr[13][2] , \regArr[13][1] ,
         \regArr[13][0] , \regArr[12][7] , \regArr[12][6] , \regArr[12][5] ,
         \regArr[12][4] , \regArr[12][3] , \regArr[12][2] , \regArr[12][1] ,
         \regArr[12][0] , \regArr[11][7] , \regArr[11][6] , \regArr[11][5] ,
         \regArr[11][4] , \regArr[11][3] , \regArr[11][2] , \regArr[11][1] ,
         \regArr[11][0] , \regArr[10][7] , \regArr[10][6] , \regArr[10][5] ,
         \regArr[10][4] , \regArr[10][3] , \regArr[10][2] , \regArr[10][1] ,
         \regArr[10][0] , \regArr[9][7] , \regArr[9][6] , \regArr[9][5] ,
         \regArr[9][4] , \regArr[9][3] , \regArr[9][2] , \regArr[9][1] ,
         \regArr[9][0] , \regArr[8][7] , \regArr[8][6] , \regArr[8][5] ,
         \regArr[8][4] , \regArr[8][3] , \regArr[8][2] , \regArr[8][1] ,
         \regArr[8][0] , \regArr[7][7] , \regArr[7][6] , \regArr[7][5] ,
         \regArr[7][4] , \regArr[7][3] , \regArr[7][2] , \regArr[7][1] ,
         \regArr[7][0] , \regArr[6][7] , \regArr[6][6] , \regArr[6][5] ,
         \regArr[6][4] , \regArr[6][3] , \regArr[6][2] , \regArr[6][1] ,
         \regArr[6][0] , \regArr[5][7] , \regArr[5][6] , \regArr[5][5] ,
         \regArr[5][4] , \regArr[5][3] , \regArr[5][2] , \regArr[5][1] ,
         \regArr[5][0] , \regArr[4][7] , \regArr[4][6] , \regArr[4][5] ,
         \regArr[4][4] , \regArr[4][3] , \regArr[4][2] , \regArr[4][1] ,
         \regArr[4][0] , N35, N36, N37, N38, N39, N40, N41, N42, n149, n150,
         n151, n152, n153, n154, n155, n156, n157, n158, n159, n160, n161,
         n162, n163, n164, n165, n166, n167, n168, n169, n170, n171, n172,
         n173, n174, n175, n176, n177, n178, n179, n180, n181, n182, n183,
         n184, n185, n186, n187, n188, n189, n190, n191, n192, n193, n194,
         n195, n196, n197, n198, n199, n200, n201, n202, n203, n204, n205,
         n206, n207, n208, n209, n210, n211, n212, n213, n214, n215, n216,
         n217, n218, n219, n220, n221, n222, n223, n224, n225, n226, n227,
         n228, n229, n230, n231, n232, n233, n234, n235, n236, n237, n238,
         n239, n240, n241, n242, n243, n244, n245, n246, n247, n248, n249,
         n250, n251, n252, n253, n254, n255, n256, n257, n258, n259, n260,
         n261, n262, n263, n264, n265, n266, n267, n268, n269, n270, n271,
         n272, n273, n274, n275, n276, n277, n278, n279, n280, n281, n282,
         n283, n284, n285, n286, n287, n288, n289, n290, n291, n292, n293,
         n294, n295, n296, n297, n298, n299, n300, n301, n302, n303, n304,
         n305, n306, n307, n308, n309, n310, n311, n312, n313, n139, n140,
         n141, n142, n143, n144, n145, n146, n147, n148, n314, n315, n316,
         n317, n318, n319, n320, n321, n322, n323, n324, n325, n326, n327,
         n328, n329, n330, n331, n332, n333, n334, n335, n336, n337, n338,
         n339, n340, n341, n342, n343, n344, n345, n346, n347, n348, n349,
         n350, n351, n352, n353, n354, n355, n356, n357, n358, n359, n360,
         n361, n362, n363, n364, n365, n370, n371, n372, n373;
  assign N10 = Address[0];
  assign N11 = Address[1];
  assign N12 = Address[2];
  assign N13 = Address[3];
  assign test_so2 = \regArr[15][7] ;
  assign test_so1 = \regArr[12][4] ;

  SDFFRQX2M \regArr_reg[13][7]  ( .D(n297), .SI(\regArr[13][6] ), .SE(n372), 
        .CK(CLK), .RN(n350), .Q(\regArr[13][7] ) );
  SDFFRQX2M \regArr_reg[13][6]  ( .D(n296), .SI(\regArr[13][5] ), .SE(n371), 
        .CK(CLK), .RN(n350), .Q(\regArr[13][6] ) );
  SDFFRQX2M \regArr_reg[13][5]  ( .D(n295), .SI(\regArr[13][4] ), .SE(n370), 
        .CK(CLK), .RN(n350), .Q(\regArr[13][5] ) );
  SDFFRQX2M \regArr_reg[13][4]  ( .D(n294), .SI(\regArr[13][3] ), .SE(n373), 
        .CK(CLK), .RN(n350), .Q(\regArr[13][4] ) );
  SDFFRQX2M \regArr_reg[13][3]  ( .D(n293), .SI(\regArr[13][2] ), .SE(n372), 
        .CK(CLK), .RN(n350), .Q(\regArr[13][3] ) );
  SDFFRQX2M \regArr_reg[13][2]  ( .D(n292), .SI(\regArr[13][1] ), .SE(n371), 
        .CK(CLK), .RN(n350), .Q(\regArr[13][2] ) );
  SDFFRQX2M \regArr_reg[13][1]  ( .D(n291), .SI(\regArr[13][0] ), .SE(n370), 
        .CK(CLK), .RN(n350), .Q(\regArr[13][1] ) );
  SDFFRQX2M \regArr_reg[13][0]  ( .D(n290), .SI(\regArr[12][7] ), .SE(n373), 
        .CK(CLK), .RN(n350), .Q(\regArr[13][0] ) );
  SDFFRQX2M \regArr_reg[9][7]  ( .D(n265), .SI(\regArr[9][6] ), .SE(n372), 
        .CK(CLK), .RN(n348), .Q(\regArr[9][7] ) );
  SDFFRQX2M \regArr_reg[9][6]  ( .D(n264), .SI(\regArr[9][5] ), .SE(n371), 
        .CK(CLK), .RN(n348), .Q(\regArr[9][6] ) );
  SDFFRQX2M \regArr_reg[9][5]  ( .D(n263), .SI(\regArr[9][4] ), .SE(n370), 
        .CK(CLK), .RN(n348), .Q(\regArr[9][5] ) );
  SDFFRQX2M \regArr_reg[9][4]  ( .D(n262), .SI(\regArr[9][3] ), .SE(n373), 
        .CK(CLK), .RN(n348), .Q(\regArr[9][4] ) );
  SDFFRQX2M \regArr_reg[9][3]  ( .D(n261), .SI(\regArr[9][2] ), .SE(n372), 
        .CK(CLK), .RN(n348), .Q(\regArr[9][3] ) );
  SDFFRQX2M \regArr_reg[9][2]  ( .D(n260), .SI(\regArr[9][1] ), .SE(n371), 
        .CK(CLK), .RN(n348), .Q(\regArr[9][2] ) );
  SDFFRQX2M \regArr_reg[9][1]  ( .D(n259), .SI(\regArr[9][0] ), .SE(n370), 
        .CK(CLK), .RN(n348), .Q(\regArr[9][1] ) );
  SDFFRQX2M \regArr_reg[9][0]  ( .D(n258), .SI(\regArr[8][7] ), .SE(n373), 
        .CK(CLK), .RN(n347), .Q(\regArr[9][0] ) );
  SDFFRQX2M \regArr_reg[5][7]  ( .D(n233), .SI(\regArr[5][6] ), .SE(n372), 
        .CK(CLK), .RN(n346), .Q(\regArr[5][7] ) );
  SDFFRQX2M \regArr_reg[5][6]  ( .D(n232), .SI(\regArr[5][5] ), .SE(n371), 
        .CK(CLK), .RN(n346), .Q(\regArr[5][6] ) );
  SDFFRQX2M \regArr_reg[5][5]  ( .D(n231), .SI(\regArr[5][4] ), .SE(n370), 
        .CK(CLK), .RN(n345), .Q(\regArr[5][5] ) );
  SDFFRQX2M \regArr_reg[5][4]  ( .D(n230), .SI(\regArr[5][3] ), .SE(n373), 
        .CK(CLK), .RN(n345), .Q(\regArr[5][4] ) );
  SDFFRQX2M \regArr_reg[5][3]  ( .D(n229), .SI(\regArr[5][2] ), .SE(n372), 
        .CK(CLK), .RN(n345), .Q(\regArr[5][3] ) );
  SDFFRQX2M \regArr_reg[5][2]  ( .D(n228), .SI(\regArr[5][1] ), .SE(n371), 
        .CK(CLK), .RN(n345), .Q(\regArr[5][2] ) );
  SDFFRQX2M \regArr_reg[5][1]  ( .D(n227), .SI(\regArr[5][0] ), .SE(n370), 
        .CK(CLK), .RN(n345), .Q(\regArr[5][1] ) );
  SDFFRQX2M \regArr_reg[5][0]  ( .D(n226), .SI(\regArr[4][7] ), .SE(n373), 
        .CK(CLK), .RN(n345), .Q(\regArr[5][0] ) );
  SDFFRQX2M \regArr_reg[15][7]  ( .D(n313), .SI(\regArr[15][6] ), .SE(n372), 
        .CK(CLK), .RN(n342), .Q(\regArr[15][7] ) );
  SDFFRQX2M \regArr_reg[15][6]  ( .D(n312), .SI(\regArr[15][5] ), .SE(n371), 
        .CK(CLK), .RN(n351), .Q(\regArr[15][6] ) );
  SDFFRQX2M \regArr_reg[15][5]  ( .D(n311), .SI(\regArr[15][4] ), .SE(n370), 
        .CK(CLK), .RN(n351), .Q(\regArr[15][5] ) );
  SDFFRQX2M \regArr_reg[15][4]  ( .D(n310), .SI(\regArr[15][3] ), .SE(n373), 
        .CK(CLK), .RN(n351), .Q(\regArr[15][4] ) );
  SDFFRQX2M \regArr_reg[15][3]  ( .D(n309), .SI(\regArr[15][2] ), .SE(n372), 
        .CK(CLK), .RN(n351), .Q(\regArr[15][3] ) );
  SDFFRQX2M \regArr_reg[15][2]  ( .D(n308), .SI(\regArr[15][1] ), .SE(n371), 
        .CK(CLK), .RN(n351), .Q(\regArr[15][2] ) );
  SDFFRQX2M \regArr_reg[15][1]  ( .D(n307), .SI(\regArr[15][0] ), .SE(n370), 
        .CK(CLK), .RN(n351), .Q(\regArr[15][1] ) );
  SDFFRQX2M \regArr_reg[15][0]  ( .D(n306), .SI(\regArr[14][7] ), .SE(n373), 
        .CK(CLK), .RN(n351), .Q(\regArr[15][0] ) );
  SDFFRQX2M \regArr_reg[11][7]  ( .D(n281), .SI(\regArr[11][6] ), .SE(n372), 
        .CK(CLK), .RN(n349), .Q(\regArr[11][7] ) );
  SDFFRQX2M \regArr_reg[11][6]  ( .D(n280), .SI(\regArr[11][5] ), .SE(n371), 
        .CK(CLK), .RN(n349), .Q(\regArr[11][6] ) );
  SDFFRQX2M \regArr_reg[11][5]  ( .D(n279), .SI(\regArr[11][4] ), .SE(n370), 
        .CK(CLK), .RN(n349), .Q(\regArr[11][5] ) );
  SDFFRQX2M \regArr_reg[11][4]  ( .D(n278), .SI(\regArr[11][3] ), .SE(n373), 
        .CK(CLK), .RN(n349), .Q(\regArr[11][4] ) );
  SDFFRQX2M \regArr_reg[11][3]  ( .D(n277), .SI(\regArr[11][2] ), .SE(n372), 
        .CK(CLK), .RN(n349), .Q(\regArr[11][3] ) );
  SDFFRQX2M \regArr_reg[11][2]  ( .D(n276), .SI(\regArr[11][1] ), .SE(n371), 
        .CK(CLK), .RN(n349), .Q(\regArr[11][2] ) );
  SDFFRQX2M \regArr_reg[11][1]  ( .D(n275), .SI(\regArr[11][0] ), .SE(n370), 
        .CK(CLK), .RN(n349), .Q(\regArr[11][1] ) );
  SDFFRQX2M \regArr_reg[11][0]  ( .D(n274), .SI(\regArr[10][7] ), .SE(n373), 
        .CK(CLK), .RN(n349), .Q(\regArr[11][0] ) );
  SDFFRQX2M \regArr_reg[7][7]  ( .D(n249), .SI(\regArr[7][6] ), .SE(n372), 
        .CK(CLK), .RN(n347), .Q(\regArr[7][7] ) );
  SDFFRQX2M \regArr_reg[7][6]  ( .D(n248), .SI(\regArr[7][5] ), .SE(n371), 
        .CK(CLK), .RN(n347), .Q(\regArr[7][6] ) );
  SDFFRQX2M \regArr_reg[7][5]  ( .D(n247), .SI(\regArr[7][4] ), .SE(n370), 
        .CK(CLK), .RN(n347), .Q(\regArr[7][5] ) );
  SDFFRQX2M \regArr_reg[7][4]  ( .D(n246), .SI(\regArr[7][3] ), .SE(n373), 
        .CK(CLK), .RN(n347), .Q(\regArr[7][4] ) );
  SDFFRQX2M \regArr_reg[7][3]  ( .D(n245), .SI(\regArr[7][2] ), .SE(n372), 
        .CK(CLK), .RN(n347), .Q(\regArr[7][3] ) );
  SDFFRQX2M \regArr_reg[7][2]  ( .D(n244), .SI(\regArr[7][1] ), .SE(n371), 
        .CK(CLK), .RN(n346), .Q(\regArr[7][2] ) );
  SDFFRQX2M \regArr_reg[7][1]  ( .D(n243), .SI(\regArr[7][0] ), .SE(n370), 
        .CK(CLK), .RN(n346), .Q(\regArr[7][1] ) );
  SDFFRQX2M \regArr_reg[7][0]  ( .D(n242), .SI(\regArr[6][7] ), .SE(n373), 
        .CK(CLK), .RN(n346), .Q(\regArr[7][0] ) );
  SDFFRQX2M \regArr_reg[14][7]  ( .D(n305), .SI(\regArr[14][6] ), .SE(n372), 
        .CK(CLK), .RN(n351), .Q(\regArr[14][7] ) );
  SDFFRQX2M \regArr_reg[14][6]  ( .D(n304), .SI(\regArr[14][5] ), .SE(n371), 
        .CK(CLK), .RN(n351), .Q(\regArr[14][6] ) );
  SDFFRQX2M \regArr_reg[14][5]  ( .D(n303), .SI(\regArr[14][4] ), .SE(n370), 
        .CK(CLK), .RN(n351), .Q(\regArr[14][5] ) );
  SDFFRQX2M \regArr_reg[14][4]  ( .D(n302), .SI(\regArr[14][3] ), .SE(n373), 
        .CK(CLK), .RN(n351), .Q(\regArr[14][4] ) );
  SDFFRQX2M \regArr_reg[14][3]  ( .D(n301), .SI(\regArr[14][2] ), .SE(n372), 
        .CK(CLK), .RN(n351), .Q(\regArr[14][3] ) );
  SDFFRQX2M \regArr_reg[14][2]  ( .D(n300), .SI(\regArr[14][1] ), .SE(n371), 
        .CK(CLK), .RN(n350), .Q(\regArr[14][2] ) );
  SDFFRQX2M \regArr_reg[14][1]  ( .D(n299), .SI(\regArr[14][0] ), .SE(n370), 
        .CK(CLK), .RN(n350), .Q(\regArr[14][1] ) );
  SDFFRQX2M \regArr_reg[14][0]  ( .D(n298), .SI(\regArr[13][7] ), .SE(n373), 
        .CK(CLK), .RN(n350), .Q(\regArr[14][0] ) );
  SDFFRQX2M \regArr_reg[10][7]  ( .D(n273), .SI(\regArr[10][6] ), .SE(n372), 
        .CK(CLK), .RN(n349), .Q(\regArr[10][7] ) );
  SDFFRQX2M \regArr_reg[10][6]  ( .D(n272), .SI(\regArr[10][5] ), .SE(n371), 
        .CK(CLK), .RN(n348), .Q(\regArr[10][6] ) );
  SDFFRQX2M \regArr_reg[10][5]  ( .D(n271), .SI(\regArr[10][4] ), .SE(n370), 
        .CK(CLK), .RN(n348), .Q(\regArr[10][5] ) );
  SDFFRQX2M \regArr_reg[10][4]  ( .D(n270), .SI(\regArr[10][3] ), .SE(n373), 
        .CK(CLK), .RN(n348), .Q(\regArr[10][4] ) );
  SDFFRQX2M \regArr_reg[10][3]  ( .D(n269), .SI(\regArr[10][2] ), .SE(n372), 
        .CK(CLK), .RN(n348), .Q(\regArr[10][3] ) );
  SDFFRQX2M \regArr_reg[10][2]  ( .D(n268), .SI(\regArr[10][1] ), .SE(n371), 
        .CK(CLK), .RN(n348), .Q(\regArr[10][2] ) );
  SDFFRQX2M \regArr_reg[10][1]  ( .D(n267), .SI(\regArr[10][0] ), .SE(n370), 
        .CK(CLK), .RN(n348), .Q(\regArr[10][1] ) );
  SDFFRQX2M \regArr_reg[10][0]  ( .D(n266), .SI(\regArr[9][7] ), .SE(n373), 
        .CK(CLK), .RN(n348), .Q(\regArr[10][0] ) );
  SDFFRQX2M \regArr_reg[6][7]  ( .D(n241), .SI(\regArr[6][6] ), .SE(n372), 
        .CK(CLK), .RN(n346), .Q(\regArr[6][7] ) );
  SDFFRQX2M \regArr_reg[6][6]  ( .D(n240), .SI(\regArr[6][5] ), .SE(n371), 
        .CK(CLK), .RN(n346), .Q(\regArr[6][6] ) );
  SDFFRQX2M \regArr_reg[6][5]  ( .D(n239), .SI(\regArr[6][4] ), .SE(n370), 
        .CK(CLK), .RN(n346), .Q(\regArr[6][5] ) );
  SDFFRQX2M \regArr_reg[6][4]  ( .D(n238), .SI(\regArr[6][3] ), .SE(n373), 
        .CK(CLK), .RN(n346), .Q(\regArr[6][4] ) );
  SDFFRQX2M \regArr_reg[6][3]  ( .D(n237), .SI(\regArr[6][2] ), .SE(n372), 
        .CK(CLK), .RN(n346), .Q(\regArr[6][3] ) );
  SDFFRQX2M \regArr_reg[6][2]  ( .D(n236), .SI(\regArr[6][1] ), .SE(n371), 
        .CK(CLK), .RN(n346), .Q(\regArr[6][2] ) );
  SDFFRQX2M \regArr_reg[6][1]  ( .D(n235), .SI(\regArr[6][0] ), .SE(n370), 
        .CK(CLK), .RN(n346), .Q(\regArr[6][1] ) );
  SDFFRQX2M \regArr_reg[6][0]  ( .D(n234), .SI(\regArr[5][7] ), .SE(n373), 
        .CK(CLK), .RN(n346), .Q(\regArr[6][0] ) );
  SDFFRQX2M \regArr_reg[12][7]  ( .D(n289), .SI(\regArr[12][6] ), .SE(n372), 
        .CK(CLK), .RN(n350), .Q(\regArr[12][7] ) );
  SDFFRQX2M \regArr_reg[12][6]  ( .D(n288), .SI(\regArr[12][5] ), .SE(n371), 
        .CK(CLK), .RN(n350), .Q(\regArr[12][6] ) );
  SDFFRQX2M \regArr_reg[12][5]  ( .D(n287), .SI(test_si3), .SE(n370), .CK(CLK), 
        .RN(n350), .Q(\regArr[12][5] ) );
  SDFFRQX2M \regArr_reg[12][4]  ( .D(n286), .SI(\regArr[12][3] ), .SE(n373), 
        .CK(CLK), .RN(n349), .Q(\regArr[12][4] ) );
  SDFFRQX2M \regArr_reg[12][3]  ( .D(n285), .SI(\regArr[12][2] ), .SE(n372), 
        .CK(CLK), .RN(n349), .Q(\regArr[12][3] ) );
  SDFFRQX2M \regArr_reg[12][2]  ( .D(n284), .SI(\regArr[12][1] ), .SE(n371), 
        .CK(CLK), .RN(n349), .Q(\regArr[12][2] ) );
  SDFFRQX2M \regArr_reg[12][1]  ( .D(n283), .SI(\regArr[12][0] ), .SE(n370), 
        .CK(CLK), .RN(n349), .Q(\regArr[12][1] ) );
  SDFFRQX2M \regArr_reg[12][0]  ( .D(n282), .SI(\regArr[11][7] ), .SE(n373), 
        .CK(CLK), .RN(n349), .Q(\regArr[12][0] ) );
  SDFFRQX2M \regArr_reg[8][7]  ( .D(n257), .SI(\regArr[8][6] ), .SE(n372), 
        .CK(CLK), .RN(n347), .Q(\regArr[8][7] ) );
  SDFFRQX2M \regArr_reg[8][6]  ( .D(n256), .SI(\regArr[8][5] ), .SE(n371), 
        .CK(CLK), .RN(n347), .Q(\regArr[8][6] ) );
  SDFFRQX2M \regArr_reg[8][5]  ( .D(n255), .SI(\regArr[8][4] ), .SE(n370), 
        .CK(CLK), .RN(n347), .Q(\regArr[8][5] ) );
  SDFFRQX2M \regArr_reg[8][4]  ( .D(n254), .SI(\regArr[8][3] ), .SE(n373), 
        .CK(CLK), .RN(n347), .Q(\regArr[8][4] ) );
  SDFFRQX2M \regArr_reg[8][3]  ( .D(n253), .SI(\regArr[8][2] ), .SE(n372), 
        .CK(CLK), .RN(n347), .Q(\regArr[8][3] ) );
  SDFFRQX2M \regArr_reg[8][2]  ( .D(n252), .SI(\regArr[8][1] ), .SE(n371), 
        .CK(CLK), .RN(n347), .Q(\regArr[8][2] ) );
  SDFFRQX2M \regArr_reg[8][1]  ( .D(n251), .SI(\regArr[8][0] ), .SE(n370), 
        .CK(CLK), .RN(n347), .Q(\regArr[8][1] ) );
  SDFFRQX2M \regArr_reg[8][0]  ( .D(n250), .SI(\regArr[7][7] ), .SE(n373), 
        .CK(CLK), .RN(n347), .Q(\regArr[8][0] ) );
  SDFFRQX2M \regArr_reg[4][7]  ( .D(n225), .SI(\regArr[4][6] ), .SE(n372), 
        .CK(CLK), .RN(n345), .Q(\regArr[4][7] ) );
  SDFFRQX2M \regArr_reg[4][6]  ( .D(n224), .SI(\regArr[4][5] ), .SE(n371), 
        .CK(CLK), .RN(n345), .Q(\regArr[4][6] ) );
  SDFFRQX2M \regArr_reg[4][5]  ( .D(n223), .SI(\regArr[4][4] ), .SE(n370), 
        .CK(CLK), .RN(n345), .Q(\regArr[4][5] ) );
  SDFFRQX2M \regArr_reg[4][4]  ( .D(n222), .SI(\regArr[4][3] ), .SE(n373), 
        .CK(CLK), .RN(n345), .Q(\regArr[4][4] ) );
  SDFFRQX2M \regArr_reg[4][3]  ( .D(n221), .SI(\regArr[4][2] ), .SE(n372), 
        .CK(CLK), .RN(n345), .Q(\regArr[4][3] ) );
  SDFFRQX2M \regArr_reg[4][2]  ( .D(n220), .SI(\regArr[4][1] ), .SE(n371), 
        .CK(CLK), .RN(n345), .Q(\regArr[4][2] ) );
  SDFFRQX2M \regArr_reg[4][1]  ( .D(n219), .SI(\regArr[4][0] ), .SE(n370), 
        .CK(CLK), .RN(n345), .Q(\regArr[4][1] ) );
  SDFFRQX2M \regArr_reg[4][0]  ( .D(n218), .SI(REG3[7]), .SE(n373), .CK(CLK), 
        .RN(n345), .Q(\regArr[4][0] ) );
  SDFFRQX2M \regArr_reg[3][0]  ( .D(n210), .SI(REG2[7]), .SE(n372), .CK(CLK), 
        .RN(n344), .Q(REG3[0]) );
  SDFFRQX2M \RdData_reg[7]  ( .D(n184), .SI(RdData[6]), .SE(n371), .CK(CLK), 
        .RN(n343), .Q(RdData[7]) );
  SDFFRQX2M \RdData_reg[6]  ( .D(n183), .SI(RdData[5]), .SE(n370), .CK(CLK), 
        .RN(n342), .Q(RdData[6]) );
  SDFFRQX2M \RdData_reg[5]  ( .D(n182), .SI(RdData[4]), .SE(n373), .CK(CLK), 
        .RN(n342), .Q(RdData[5]) );
  SDFFRQX2M \RdData_reg[4]  ( .D(n181), .SI(RdData[3]), .SE(n372), .CK(CLK), 
        .RN(n342), .Q(RdData[4]) );
  SDFFRQX2M \RdData_reg[3]  ( .D(n180), .SI(RdData[2]), .SE(n371), .CK(CLK), 
        .RN(n342), .Q(RdData[3]) );
  SDFFRQX2M \RdData_reg[2]  ( .D(n179), .SI(RdData[1]), .SE(n370), .CK(CLK), 
        .RN(n342), .Q(RdData[2]) );
  SDFFRQX2M \RdData_reg[1]  ( .D(n178), .SI(RdData[0]), .SE(n373), .CK(CLK), 
        .RN(n342), .Q(RdData[1]) );
  SDFFRQX2M \RdData_reg[0]  ( .D(n177), .SI(RdData_VLD), .SE(n372), .CK(CLK), 
        .RN(n346), .Q(RdData[0]) );
  SDFFRQX2M \regArr_reg[1][6]  ( .D(n200), .SI(REG1[5]), .SE(n371), .CK(CLK), 
        .RN(n343), .Q(REG1[6]) );
  SDFFRQX2M \regArr_reg[0][7]  ( .D(n193), .SI(REG0[6]), .SE(n370), .CK(CLK), 
        .RN(n343), .Q(REG0[7]) );
  SDFFRQX2M \regArr_reg[0][6]  ( .D(n192), .SI(REG0[5]), .SE(n373), .CK(CLK), 
        .RN(n343), .Q(REG0[6]) );
  SDFFRQX2M \regArr_reg[0][5]  ( .D(n191), .SI(REG0[4]), .SE(n372), .CK(CLK), 
        .RN(n343), .Q(REG0[5]) );
  SDFFRQX2M \regArr_reg[0][4]  ( .D(n190), .SI(REG0[3]), .SE(n371), .CK(CLK), 
        .RN(n343), .Q(REG0[4]) );
  SDFFRQX2M \regArr_reg[0][3]  ( .D(n189), .SI(REG0[2]), .SE(n370), .CK(CLK), 
        .RN(n343), .Q(REG0[3]) );
  SDFFRQX2M \regArr_reg[0][2]  ( .D(n188), .SI(REG0[1]), .SE(n373), .CK(CLK), 
        .RN(n343), .Q(REG0[2]) );
  SDFFRQX2M \regArr_reg[0][1]  ( .D(n187), .SI(REG0[0]), .SE(n372), .CK(CLK), 
        .RN(n342), .Q(REG0[1]) );
  SDFFRQX2M \regArr_reg[0][0]  ( .D(n186), .SI(RdData[7]), .SE(n371), .CK(CLK), 
        .RN(n342), .Q(REG0[0]) );
  SDFFRQX2M \regArr_reg[1][1]  ( .D(n195), .SI(REG1[0]), .SE(n370), .CK(CLK), 
        .RN(n343), .Q(REG1[1]) );
  SDFFRQX2M \regArr_reg[1][5]  ( .D(n199), .SI(REG1[4]), .SE(n373), .CK(CLK), 
        .RN(n344), .Q(REG1[5]) );
  SDFFRQX2M \regArr_reg[1][4]  ( .D(n198), .SI(REG1[3]), .SE(n372), .CK(CLK), 
        .RN(n343), .Q(REG1[4]) );
  SDFFRQX2M \regArr_reg[1][7]  ( .D(n201), .SI(REG1[6]), .SE(n371), .CK(CLK), 
        .RN(n343), .Q(REG1[7]) );
  SDFFRQX2M \regArr_reg[1][3]  ( .D(n197), .SI(REG1[2]), .SE(n370), .CK(CLK), 
        .RN(n343), .Q(REG1[3]) );
  SDFFRQX2M \regArr_reg[1][2]  ( .D(n196), .SI(REG1[1]), .SE(n373), .CK(CLK), 
        .RN(n343), .Q(REG1[2]) );
  SDFFRQX2M \regArr_reg[1][0]  ( .D(n194), .SI(REG0[7]), .SE(n372), .CK(CLK), 
        .RN(n343), .Q(REG1[0]) );
  SDFFRQX2M RdData_VLD_reg ( .D(n185), .SI(test_si1), .SE(n371), .CK(CLK), 
        .RN(n342), .Q(RdData_VLD) );
  SDFFRQX2M \regArr_reg[3][6]  ( .D(n216), .SI(REG3[5]), .SE(n370), .CK(CLK), 
        .RN(n344), .Q(REG3[6]) );
  SDFFRQX2M \regArr_reg[3][7]  ( .D(n217), .SI(REG3[6]), .SE(n373), .CK(CLK), 
        .RN(n344), .Q(REG3[7]) );
  SDFFSQX2M \regArr_reg[3][5]  ( .D(n215), .SI(REG3[4]), .SE(test_se), .CK(CLK), .SN(n342), .Q(REG3[5]) );
  SDFFRQX2M \regArr_reg[2][1]  ( .D(n203), .SI(REG2[0]), .SE(n372), .CK(CLK), 
        .RN(n344), .Q(REG2[1]) );
  SDFFSQX2M \regArr_reg[2][0]  ( .D(n202), .SI(test_si2), .SE(n370), .CK(CLK), 
        .SN(n342), .Q(REG2[0]) );
  SDFFRQX2M \regArr_reg[3][4]  ( .D(n214), .SI(REG3[3]), .SE(n371), .CK(CLK), 
        .RN(n344), .Q(REG3[4]) );
  SDFFRQX2M \regArr_reg[3][2]  ( .D(n212), .SI(REG3[1]), .SE(n370), .CK(CLK), 
        .RN(n344), .Q(REG3[2]) );
  SDFFRQX2M \regArr_reg[3][3]  ( .D(n213), .SI(REG3[2]), .SE(n373), .CK(CLK), 
        .RN(n344), .Q(REG3[3]) );
  SDFFRQX2M \regArr_reg[3][1]  ( .D(n211), .SI(REG3[0]), .SE(n372), .CK(CLK), 
        .RN(n344), .Q(REG3[1]) );
  SDFFRQX2M \regArr_reg[2][4]  ( .D(n206), .SI(REG2[3]), .SE(n371), .CK(CLK), 
        .RN(n344), .Q(REG2[4]) );
  SDFFRQX2M \regArr_reg[2][3]  ( .D(n205), .SI(REG2[2]), .SE(n370), .CK(CLK), 
        .RN(n344), .Q(REG2[3]) );
  SDFFRQX2M \regArr_reg[2][5]  ( .D(n207), .SI(REG2[4]), .SE(n373), .CK(CLK), 
        .RN(n344), .Q(REG2[5]) );
  SDFFRQX2M \regArr_reg[2][6]  ( .D(n208), .SI(REG2[5]), .SE(n372), .CK(CLK), 
        .RN(n344), .Q(REG2[6]) );
  SDFFRQX2M \regArr_reg[2][2]  ( .D(n204), .SI(REG2[1]), .SE(n371), .CK(CLK), 
        .RN(n344), .Q(REG2[2]) );
  SDFFSQX1M \regArr_reg[2][7]  ( .D(n209), .SI(REG2[6]), .SE(n373), .CK(CLK), 
        .SN(RST), .Q(REG2[7]) );
  NOR2X2M U141 ( .A(n341), .B(N12), .Y(n157) );
  NOR2X2M U142 ( .A(N11), .B(N12), .Y(n152) );
  NOR2BX2M U143 ( .AN(N12), .B(N11), .Y(n160) );
  NOR2BX2M U144 ( .AN(N12), .B(n341), .Y(n163) );
  INVX2M U145 ( .A(WrData[6]), .Y(n365) );
  INVX2M U146 ( .A(WrData[5]), .Y(n364) );
  INVX2M U147 ( .A(n337), .Y(n339) );
  INVX2M U148 ( .A(n337), .Y(n338) );
  BUFX2M U149 ( .A(n340), .Y(n337) );
  INVX2M U150 ( .A(n341), .Y(n336) );
  INVX2M U151 ( .A(n149), .Y(n357) );
  NOR2BX2M U152 ( .AN(n164), .B(n338), .Y(n153) );
  NOR2BX2M U153 ( .AN(n164), .B(n340), .Y(n155) );
  NOR2BX2M U154 ( .AN(n175), .B(n338), .Y(n167) );
  NOR2BX2M U155 ( .AN(n175), .B(n340), .Y(n169) );
  NAND2X2M U156 ( .A(n155), .B(n152), .Y(n154) );
  NAND2X2M U157 ( .A(n167), .B(n152), .Y(n166) );
  NAND2X2M U158 ( .A(n169), .B(n152), .Y(n168) );
  NAND2X2M U159 ( .A(n167), .B(n157), .Y(n170) );
  NAND2X2M U160 ( .A(n169), .B(n157), .Y(n171) );
  NAND2X2M U161 ( .A(n157), .B(n153), .Y(n156) );
  NAND2X2M U162 ( .A(n167), .B(n160), .Y(n172) );
  NAND2X2M U163 ( .A(n169), .B(n160), .Y(n173) );
  NAND2X2M U164 ( .A(n167), .B(n163), .Y(n174) );
  NAND2X2M U165 ( .A(n169), .B(n163), .Y(n176) );
  NAND2X2M U166 ( .A(n157), .B(n155), .Y(n158) );
  NAND2X2M U167 ( .A(n160), .B(n153), .Y(n159) );
  NAND2X2M U168 ( .A(n160), .B(n155), .Y(n161) );
  NAND2X2M U169 ( .A(n163), .B(n153), .Y(n162) );
  NAND2X2M U170 ( .A(n163), .B(n155), .Y(n165) );
  NAND2X2M U171 ( .A(n152), .B(n153), .Y(n151) );
  NAND2BX2M U172 ( .AN(WrEn), .B(RdEn), .Y(n149) );
  NOR2BX2M U173 ( .AN(WrEn), .B(RdEn), .Y(n150) );
  BUFX2M U174 ( .A(n356), .Y(n343) );
  BUFX2M U175 ( .A(n355), .Y(n344) );
  BUFX2M U176 ( .A(n355), .Y(n345) );
  BUFX2M U177 ( .A(n354), .Y(n346) );
  BUFX2M U178 ( .A(n354), .Y(n347) );
  BUFX2M U179 ( .A(n353), .Y(n348) );
  BUFX2M U180 ( .A(n353), .Y(n349) );
  BUFX2M U181 ( .A(n352), .Y(n350) );
  BUFX2M U182 ( .A(n356), .Y(n342) );
  BUFX2M U183 ( .A(n352), .Y(n351) );
  NOR2BX2M U184 ( .AN(n150), .B(N13), .Y(n164) );
  AND2X2M U185 ( .A(N13), .B(n150), .Y(n175) );
  INVX2M U186 ( .A(N10), .Y(n340) );
  INVX2M U187 ( .A(N11), .Y(n341) );
  INVX2M U188 ( .A(WrData[0]), .Y(n363) );
  INVX2M U189 ( .A(WrData[1]), .Y(n362) );
  INVX2M U190 ( .A(WrData[2]), .Y(n361) );
  INVX2M U191 ( .A(WrData[3]), .Y(n360) );
  INVX2M U192 ( .A(WrData[4]), .Y(n359) );
  INVX2M U193 ( .A(WrData[7]), .Y(n358) );
  BUFX2M U194 ( .A(RST), .Y(n355) );
  BUFX2M U195 ( .A(RST), .Y(n354) );
  BUFX2M U196 ( .A(RST), .Y(n353) );
  BUFX2M U197 ( .A(RST), .Y(n352) );
  BUFX2M U198 ( .A(RST), .Y(n356) );
  OAI2BB2X1M U199 ( .B0(n363), .B1(n154), .A0N(REG1[0]), .A1N(n154), .Y(n194)
         );
  OAI2BB2X1M U200 ( .B0(n362), .B1(n154), .A0N(REG1[1]), .A1N(n154), .Y(n195)
         );
  OAI2BB2X1M U201 ( .B0(n361), .B1(n154), .A0N(REG1[2]), .A1N(n154), .Y(n196)
         );
  OAI2BB2X1M U202 ( .B0(n360), .B1(n154), .A0N(REG1[3]), .A1N(n154), .Y(n197)
         );
  OAI2BB2X1M U203 ( .B0(n359), .B1(n154), .A0N(REG1[4]), .A1N(n154), .Y(n198)
         );
  OAI2BB2X1M U204 ( .B0(n364), .B1(n154), .A0N(REG1[5]), .A1N(n154), .Y(n199)
         );
  OAI2BB2X1M U205 ( .B0(n365), .B1(n154), .A0N(REG1[6]), .A1N(n154), .Y(n200)
         );
  OAI2BB2X1M U206 ( .B0(n358), .B1(n154), .A0N(REG1[7]), .A1N(n154), .Y(n201)
         );
  OAI2BB2X1M U207 ( .B0(n363), .B1(n166), .A0N(\regArr[8][0] ), .A1N(n166), 
        .Y(n250) );
  OAI2BB2X1M U208 ( .B0(n362), .B1(n166), .A0N(\regArr[8][1] ), .A1N(n166), 
        .Y(n251) );
  OAI2BB2X1M U209 ( .B0(n361), .B1(n166), .A0N(\regArr[8][2] ), .A1N(n166), 
        .Y(n252) );
  OAI2BB2X1M U210 ( .B0(n360), .B1(n166), .A0N(\regArr[8][3] ), .A1N(n166), 
        .Y(n253) );
  OAI2BB2X1M U211 ( .B0(n359), .B1(n166), .A0N(\regArr[8][4] ), .A1N(n166), 
        .Y(n254) );
  OAI2BB2X1M U212 ( .B0(n364), .B1(n166), .A0N(\regArr[8][5] ), .A1N(n166), 
        .Y(n255) );
  OAI2BB2X1M U213 ( .B0(n365), .B1(n166), .A0N(\regArr[8][6] ), .A1N(n166), 
        .Y(n256) );
  OAI2BB2X1M U214 ( .B0(n358), .B1(n166), .A0N(\regArr[8][7] ), .A1N(n166), 
        .Y(n257) );
  OAI2BB2X1M U215 ( .B0(n363), .B1(n168), .A0N(\regArr[9][0] ), .A1N(n168), 
        .Y(n258) );
  OAI2BB2X1M U216 ( .B0(n362), .B1(n168), .A0N(\regArr[9][1] ), .A1N(n168), 
        .Y(n259) );
  OAI2BB2X1M U217 ( .B0(n361), .B1(n168), .A0N(\regArr[9][2] ), .A1N(n168), 
        .Y(n260) );
  OAI2BB2X1M U218 ( .B0(n360), .B1(n168), .A0N(\regArr[9][3] ), .A1N(n168), 
        .Y(n261) );
  OAI2BB2X1M U219 ( .B0(n359), .B1(n168), .A0N(\regArr[9][4] ), .A1N(n168), 
        .Y(n262) );
  OAI2BB2X1M U220 ( .B0(n364), .B1(n168), .A0N(\regArr[9][5] ), .A1N(n168), 
        .Y(n263) );
  OAI2BB2X1M U221 ( .B0(n365), .B1(n168), .A0N(\regArr[9][6] ), .A1N(n168), 
        .Y(n264) );
  OAI2BB2X1M U222 ( .B0(n358), .B1(n168), .A0N(\regArr[9][7] ), .A1N(n168), 
        .Y(n265) );
  OAI2BB2X1M U223 ( .B0(n363), .B1(n170), .A0N(\regArr[10][0] ), .A1N(n170), 
        .Y(n266) );
  OAI2BB2X1M U224 ( .B0(n362), .B1(n170), .A0N(\regArr[10][1] ), .A1N(n170), 
        .Y(n267) );
  OAI2BB2X1M U225 ( .B0(n361), .B1(n170), .A0N(\regArr[10][2] ), .A1N(n170), 
        .Y(n268) );
  OAI2BB2X1M U226 ( .B0(n360), .B1(n170), .A0N(\regArr[10][3] ), .A1N(n170), 
        .Y(n269) );
  OAI2BB2X1M U227 ( .B0(n359), .B1(n170), .A0N(\regArr[10][4] ), .A1N(n170), 
        .Y(n270) );
  OAI2BB2X1M U228 ( .B0(n364), .B1(n170), .A0N(\regArr[10][5] ), .A1N(n170), 
        .Y(n271) );
  OAI2BB2X1M U229 ( .B0(n365), .B1(n170), .A0N(\regArr[10][6] ), .A1N(n170), 
        .Y(n272) );
  OAI2BB2X1M U230 ( .B0(n358), .B1(n170), .A0N(\regArr[10][7] ), .A1N(n170), 
        .Y(n273) );
  OAI2BB2X1M U231 ( .B0(n363), .B1(n171), .A0N(\regArr[11][0] ), .A1N(n171), 
        .Y(n274) );
  OAI2BB2X1M U232 ( .B0(n362), .B1(n171), .A0N(\regArr[11][1] ), .A1N(n171), 
        .Y(n275) );
  OAI2BB2X1M U233 ( .B0(n361), .B1(n171), .A0N(\regArr[11][2] ), .A1N(n171), 
        .Y(n276) );
  OAI2BB2X1M U234 ( .B0(n360), .B1(n171), .A0N(\regArr[11][3] ), .A1N(n171), 
        .Y(n277) );
  OAI2BB2X1M U235 ( .B0(n359), .B1(n171), .A0N(\regArr[11][4] ), .A1N(n171), 
        .Y(n278) );
  OAI2BB2X1M U236 ( .B0(n364), .B1(n171), .A0N(\regArr[11][5] ), .A1N(n171), 
        .Y(n279) );
  OAI2BB2X1M U237 ( .B0(n365), .B1(n171), .A0N(\regArr[11][6] ), .A1N(n171), 
        .Y(n280) );
  OAI2BB2X1M U238 ( .B0(n358), .B1(n171), .A0N(\regArr[11][7] ), .A1N(n171), 
        .Y(n281) );
  OAI2BB2X1M U239 ( .B0(n363), .B1(n172), .A0N(\regArr[12][0] ), .A1N(n172), 
        .Y(n282) );
  OAI2BB2X1M U240 ( .B0(n362), .B1(n172), .A0N(\regArr[12][1] ), .A1N(n172), 
        .Y(n283) );
  OAI2BB2X1M U241 ( .B0(n361), .B1(n172), .A0N(\regArr[12][2] ), .A1N(n172), 
        .Y(n284) );
  OAI2BB2X1M U242 ( .B0(n360), .B1(n172), .A0N(\regArr[12][3] ), .A1N(n172), 
        .Y(n285) );
  OAI2BB2X1M U243 ( .B0(n359), .B1(n172), .A0N(\regArr[12][4] ), .A1N(n172), 
        .Y(n286) );
  OAI2BB2X1M U244 ( .B0(n364), .B1(n172), .A0N(\regArr[12][5] ), .A1N(n172), 
        .Y(n287) );
  OAI2BB2X1M U245 ( .B0(n365), .B1(n172), .A0N(\regArr[12][6] ), .A1N(n172), 
        .Y(n288) );
  OAI2BB2X1M U246 ( .B0(n358), .B1(n172), .A0N(\regArr[12][7] ), .A1N(n172), 
        .Y(n289) );
  OAI2BB2X1M U247 ( .B0(n363), .B1(n173), .A0N(\regArr[13][0] ), .A1N(n173), 
        .Y(n290) );
  OAI2BB2X1M U248 ( .B0(n362), .B1(n173), .A0N(\regArr[13][1] ), .A1N(n173), 
        .Y(n291) );
  OAI2BB2X1M U249 ( .B0(n361), .B1(n173), .A0N(\regArr[13][2] ), .A1N(n173), 
        .Y(n292) );
  OAI2BB2X1M U250 ( .B0(n360), .B1(n173), .A0N(\regArr[13][3] ), .A1N(n173), 
        .Y(n293) );
  OAI2BB2X1M U251 ( .B0(n359), .B1(n173), .A0N(\regArr[13][4] ), .A1N(n173), 
        .Y(n294) );
  OAI2BB2X1M U252 ( .B0(n364), .B1(n173), .A0N(\regArr[13][5] ), .A1N(n173), 
        .Y(n295) );
  OAI2BB2X1M U253 ( .B0(n365), .B1(n173), .A0N(\regArr[13][6] ), .A1N(n173), 
        .Y(n296) );
  OAI2BB2X1M U254 ( .B0(n358), .B1(n173), .A0N(\regArr[13][7] ), .A1N(n173), 
        .Y(n297) );
  OAI2BB2X1M U255 ( .B0(n363), .B1(n174), .A0N(\regArr[14][0] ), .A1N(n174), 
        .Y(n298) );
  OAI2BB2X1M U256 ( .B0(n362), .B1(n174), .A0N(\regArr[14][1] ), .A1N(n174), 
        .Y(n299) );
  OAI2BB2X1M U257 ( .B0(n361), .B1(n174), .A0N(\regArr[14][2] ), .A1N(n174), 
        .Y(n300) );
  OAI2BB2X1M U258 ( .B0(n360), .B1(n174), .A0N(\regArr[14][3] ), .A1N(n174), 
        .Y(n301) );
  OAI2BB2X1M U259 ( .B0(n359), .B1(n174), .A0N(\regArr[14][4] ), .A1N(n174), 
        .Y(n302) );
  OAI2BB2X1M U260 ( .B0(n364), .B1(n174), .A0N(\regArr[14][5] ), .A1N(n174), 
        .Y(n303) );
  OAI2BB2X1M U261 ( .B0(n365), .B1(n174), .A0N(\regArr[14][6] ), .A1N(n174), 
        .Y(n304) );
  OAI2BB2X1M U262 ( .B0(n358), .B1(n174), .A0N(\regArr[14][7] ), .A1N(n174), 
        .Y(n305) );
  OAI2BB2X1M U263 ( .B0(n363), .B1(n176), .A0N(\regArr[15][0] ), .A1N(n176), 
        .Y(n306) );
  OAI2BB2X1M U264 ( .B0(n362), .B1(n176), .A0N(\regArr[15][1] ), .A1N(n176), 
        .Y(n307) );
  OAI2BB2X1M U265 ( .B0(n361), .B1(n176), .A0N(\regArr[15][2] ), .A1N(n176), 
        .Y(n308) );
  OAI2BB2X1M U266 ( .B0(n360), .B1(n176), .A0N(\regArr[15][3] ), .A1N(n176), 
        .Y(n309) );
  OAI2BB2X1M U267 ( .B0(n359), .B1(n176), .A0N(\regArr[15][4] ), .A1N(n176), 
        .Y(n310) );
  OAI2BB2X1M U268 ( .B0(n364), .B1(n176), .A0N(\regArr[15][5] ), .A1N(n176), 
        .Y(n311) );
  OAI2BB2X1M U269 ( .B0(n365), .B1(n176), .A0N(\regArr[15][6] ), .A1N(n176), 
        .Y(n312) );
  OAI2BB2X1M U270 ( .B0(n358), .B1(n176), .A0N(\regArr[15][7] ), .A1N(n176), 
        .Y(n313) );
  OAI2BB2X1M U271 ( .B0(n363), .B1(n156), .A0N(REG2[0]), .A1N(n156), .Y(n202)
         );
  OAI2BB2X1M U272 ( .B0(n358), .B1(n156), .A0N(REG2[7]), .A1N(n156), .Y(n209)
         );
  OAI2BB2X1M U273 ( .B0(n364), .B1(n158), .A0N(REG3[5]), .A1N(n158), .Y(n215)
         );
  AO22X1M U274 ( .A0(N37), .A1(n357), .B0(RdData[5]), .B1(n149), .Y(n182) );
  MX4X1M U275 ( .A(n327), .B(n325), .C(n326), .D(n324), .S0(N13), .S1(N12), 
        .Y(N37) );
  MX4X1M U276 ( .A(REG0[5]), .B(REG1[5]), .C(REG2[5]), .D(REG3[5]), .S0(N10), 
        .S1(n336), .Y(n327) );
  MX4X1M U277 ( .A(\regArr[8][5] ), .B(\regArr[9][5] ), .C(\regArr[10][5] ), 
        .D(\regArr[11][5] ), .S0(n338), .S1(n336), .Y(n325) );
  AO22X1M U278 ( .A0(N36), .A1(n357), .B0(RdData[6]), .B1(n149), .Y(n183) );
  MX4X1M U279 ( .A(n331), .B(n329), .C(n330), .D(n328), .S0(N13), .S1(N12), 
        .Y(N36) );
  MX4X1M U280 ( .A(REG0[6]), .B(REG1[6]), .C(REG2[6]), .D(REG3[6]), .S0(N10), 
        .S1(n336), .Y(n331) );
  MX4X1M U281 ( .A(\regArr[8][6] ), .B(\regArr[9][6] ), .C(\regArr[10][6] ), 
        .D(\regArr[11][6] ), .S0(n339), .S1(n336), .Y(n329) );
  AO22X1M U282 ( .A0(N35), .A1(n357), .B0(RdData[7]), .B1(n149), .Y(n184) );
  MX4X1M U283 ( .A(n335), .B(n333), .C(n334), .D(n332), .S0(N13), .S1(N12), 
        .Y(N35) );
  MX4X1M U284 ( .A(REG0[7]), .B(REG1[7]), .C(REG2[7]), .D(REG3[7]), .S0(N10), 
        .S1(n336), .Y(n335) );
  MX4X1M U285 ( .A(\regArr[8][7] ), .B(\regArr[9][7] ), .C(\regArr[10][7] ), 
        .D(\regArr[11][7] ), .S0(N10), .S1(n336), .Y(n333) );
  MX4X1M U286 ( .A(REG0[1]), .B(REG1[1]), .C(REG2[1]), .D(REG3[1]), .S0(n339), 
        .S1(N11), .Y(n146) );
  MX4X1M U287 ( .A(\regArr[4][0] ), .B(\regArr[5][0] ), .C(\regArr[6][0] ), 
        .D(\regArr[7][0] ), .S0(n338), .S1(N11), .Y(n141) );
  MX4X1M U288 ( .A(\regArr[4][1] ), .B(\regArr[5][1] ), .C(\regArr[6][1] ), 
        .D(\regArr[7][1] ), .S0(n339), .S1(N11), .Y(n145) );
  MX4X1M U289 ( .A(\regArr[4][2] ), .B(\regArr[5][2] ), .C(\regArr[6][2] ), 
        .D(\regArr[7][2] ), .S0(n339), .S1(N11), .Y(n314) );
  MX4X1M U290 ( .A(\regArr[4][3] ), .B(\regArr[5][3] ), .C(\regArr[6][3] ), 
        .D(\regArr[7][3] ), .S0(n339), .S1(N11), .Y(n318) );
  MX4X1M U291 ( .A(\regArr[4][4] ), .B(\regArr[5][4] ), .C(\regArr[6][4] ), 
        .D(\regArr[7][4] ), .S0(n339), .S1(N11), .Y(n322) );
  MX4X1M U292 ( .A(\regArr[4][5] ), .B(\regArr[5][5] ), .C(\regArr[6][5] ), 
        .D(\regArr[7][5] ), .S0(n338), .S1(n336), .Y(n326) );
  MX4X1M U293 ( .A(\regArr[4][6] ), .B(\regArr[5][6] ), .C(\regArr[6][6] ), 
        .D(\regArr[7][6] ), .S0(n338), .S1(n336), .Y(n330) );
  MX4X1M U294 ( .A(\regArr[4][7] ), .B(\regArr[5][7] ), .C(\regArr[6][7] ), 
        .D(\regArr[7][7] ), .S0(n338), .S1(n336), .Y(n334) );
  MX4X1M U295 ( .A(\regArr[12][0] ), .B(\regArr[13][0] ), .C(\regArr[14][0] ), 
        .D(\regArr[15][0] ), .S0(n338), .S1(N11), .Y(n139) );
  MX4X1M U296 ( .A(\regArr[12][2] ), .B(\regArr[13][2] ), .C(\regArr[14][2] ), 
        .D(\regArr[15][2] ), .S0(n339), .S1(n336), .Y(n147) );
  MX4X1M U297 ( .A(\regArr[12][3] ), .B(\regArr[13][3] ), .C(\regArr[14][3] ), 
        .D(\regArr[15][3] ), .S0(n339), .S1(N11), .Y(n316) );
  MX4X1M U298 ( .A(\regArr[12][4] ), .B(\regArr[13][4] ), .C(\regArr[14][4] ), 
        .D(\regArr[15][4] ), .S0(n339), .S1(N11), .Y(n320) );
  MX4X1M U299 ( .A(\regArr[12][5] ), .B(\regArr[13][5] ), .C(\regArr[14][5] ), 
        .D(\regArr[15][5] ), .S0(n338), .S1(n336), .Y(n324) );
  MX4X1M U300 ( .A(\regArr[12][6] ), .B(\regArr[13][6] ), .C(\regArr[14][6] ), 
        .D(\regArr[15][6] ), .S0(n338), .S1(n336), .Y(n328) );
  MX4X1M U301 ( .A(\regArr[12][7] ), .B(\regArr[13][7] ), .C(\regArr[14][7] ), 
        .D(\regArr[15][7] ), .S0(n338), .S1(n336), .Y(n332) );
  AO22X1M U302 ( .A0(N42), .A1(n357), .B0(RdData[0]), .B1(n149), .Y(n177) );
  MX4X1M U303 ( .A(n142), .B(n140), .C(n141), .D(n139), .S0(N13), .S1(N12), 
        .Y(N42) );
  MX4X1M U304 ( .A(REG0[0]), .B(REG1[0]), .C(REG2[0]), .D(REG3[0]), .S0(n338), 
        .S1(N11), .Y(n142) );
  MX4X1M U305 ( .A(\regArr[8][0] ), .B(\regArr[9][0] ), .C(\regArr[10][0] ), 
        .D(\regArr[11][0] ), .S0(n338), .S1(N11), .Y(n140) );
  AO22X1M U306 ( .A0(N41), .A1(n357), .B0(RdData[1]), .B1(n149), .Y(n178) );
  MX4X1M U307 ( .A(n146), .B(n144), .C(n145), .D(n143), .S0(N13), .S1(N12), 
        .Y(N41) );
  MX4X1M U308 ( .A(\regArr[8][1] ), .B(\regArr[9][1] ), .C(\regArr[10][1] ), 
        .D(\regArr[11][1] ), .S0(n338), .S1(N11), .Y(n144) );
  MX4X1M U309 ( .A(\regArr[12][1] ), .B(\regArr[13][1] ), .C(\regArr[14][1] ), 
        .D(\regArr[15][1] ), .S0(n338), .S1(n336), .Y(n143) );
  AO22X1M U310 ( .A0(N40), .A1(n357), .B0(RdData[2]), .B1(n149), .Y(n179) );
  MX4X1M U311 ( .A(n315), .B(n148), .C(n314), .D(n147), .S0(N13), .S1(N12), 
        .Y(N40) );
  MX4X1M U312 ( .A(REG0[2]), .B(REG1[2]), .C(REG2[2]), .D(REG3[2]), .S0(n339), 
        .S1(N11), .Y(n315) );
  MX4X1M U313 ( .A(\regArr[8][2] ), .B(\regArr[9][2] ), .C(\regArr[10][2] ), 
        .D(\regArr[11][2] ), .S0(n339), .S1(N11), .Y(n148) );
  AO22X1M U314 ( .A0(N39), .A1(n357), .B0(RdData[3]), .B1(n149), .Y(n180) );
  MX4X1M U315 ( .A(n319), .B(n317), .C(n318), .D(n316), .S0(N13), .S1(N12), 
        .Y(N39) );
  MX4X1M U316 ( .A(REG0[3]), .B(REG1[3]), .C(REG2[3]), .D(REG3[3]), .S0(n339), 
        .S1(N11), .Y(n319) );
  MX4X1M U317 ( .A(\regArr[8][3] ), .B(\regArr[9][3] ), .C(\regArr[10][3] ), 
        .D(\regArr[11][3] ), .S0(n339), .S1(N11), .Y(n317) );
  AO22X1M U318 ( .A0(N38), .A1(n357), .B0(RdData[4]), .B1(n149), .Y(n181) );
  MX4X1M U319 ( .A(n323), .B(n321), .C(n322), .D(n320), .S0(N13), .S1(N12), 
        .Y(N38) );
  MX4X1M U320 ( .A(REG0[4]), .B(REG1[4]), .C(REG2[4]), .D(REG3[4]), .S0(N10), 
        .S1(N11), .Y(n323) );
  MX4X1M U321 ( .A(\regArr[8][4] ), .B(\regArr[9][4] ), .C(\regArr[10][4] ), 
        .D(\regArr[11][4] ), .S0(n339), .S1(N11), .Y(n321) );
  OAI2BB2X1M U322 ( .B0(n151), .B1(n363), .A0N(REG0[0]), .A1N(n151), .Y(n186)
         );
  OAI2BB2X1M U323 ( .B0(n151), .B1(n362), .A0N(REG0[1]), .A1N(n151), .Y(n187)
         );
  OAI2BB2X1M U324 ( .B0(n151), .B1(n361), .A0N(REG0[2]), .A1N(n151), .Y(n188)
         );
  OAI2BB2X1M U325 ( .B0(n151), .B1(n360), .A0N(REG0[3]), .A1N(n151), .Y(n189)
         );
  OAI2BB2X1M U326 ( .B0(n151), .B1(n359), .A0N(REG0[4]), .A1N(n151), .Y(n190)
         );
  OAI2BB2X1M U327 ( .B0(n151), .B1(n364), .A0N(REG0[5]), .A1N(n151), .Y(n191)
         );
  OAI2BB2X1M U328 ( .B0(n151), .B1(n365), .A0N(REG0[6]), .A1N(n151), .Y(n192)
         );
  OAI2BB2X1M U329 ( .B0(n151), .B1(n358), .A0N(REG0[7]), .A1N(n151), .Y(n193)
         );
  OAI2BB2X1M U330 ( .B0(n363), .B1(n159), .A0N(\regArr[4][0] ), .A1N(n159), 
        .Y(n218) );
  OAI2BB2X1M U331 ( .B0(n362), .B1(n159), .A0N(\regArr[4][1] ), .A1N(n159), 
        .Y(n219) );
  OAI2BB2X1M U332 ( .B0(n361), .B1(n159), .A0N(\regArr[4][2] ), .A1N(n159), 
        .Y(n220) );
  OAI2BB2X1M U333 ( .B0(n360), .B1(n159), .A0N(\regArr[4][3] ), .A1N(n159), 
        .Y(n221) );
  OAI2BB2X1M U334 ( .B0(n359), .B1(n159), .A0N(\regArr[4][4] ), .A1N(n159), 
        .Y(n222) );
  OAI2BB2X1M U335 ( .B0(n364), .B1(n159), .A0N(\regArr[4][5] ), .A1N(n159), 
        .Y(n223) );
  OAI2BB2X1M U336 ( .B0(n365), .B1(n159), .A0N(\regArr[4][6] ), .A1N(n159), 
        .Y(n224) );
  OAI2BB2X1M U337 ( .B0(n358), .B1(n159), .A0N(\regArr[4][7] ), .A1N(n159), 
        .Y(n225) );
  OAI2BB2X1M U338 ( .B0(n363), .B1(n161), .A0N(\regArr[5][0] ), .A1N(n161), 
        .Y(n226) );
  OAI2BB2X1M U339 ( .B0(n362), .B1(n161), .A0N(\regArr[5][1] ), .A1N(n161), 
        .Y(n227) );
  OAI2BB2X1M U340 ( .B0(n361), .B1(n161), .A0N(\regArr[5][2] ), .A1N(n161), 
        .Y(n228) );
  OAI2BB2X1M U341 ( .B0(n360), .B1(n161), .A0N(\regArr[5][3] ), .A1N(n161), 
        .Y(n229) );
  OAI2BB2X1M U342 ( .B0(n359), .B1(n161), .A0N(\regArr[5][4] ), .A1N(n161), 
        .Y(n230) );
  OAI2BB2X1M U343 ( .B0(n364), .B1(n161), .A0N(\regArr[5][5] ), .A1N(n161), 
        .Y(n231) );
  OAI2BB2X1M U344 ( .B0(n365), .B1(n161), .A0N(\regArr[5][6] ), .A1N(n161), 
        .Y(n232) );
  OAI2BB2X1M U345 ( .B0(n358), .B1(n161), .A0N(\regArr[5][7] ), .A1N(n161), 
        .Y(n233) );
  OAI2BB2X1M U346 ( .B0(n363), .B1(n162), .A0N(\regArr[6][0] ), .A1N(n162), 
        .Y(n234) );
  OAI2BB2X1M U347 ( .B0(n362), .B1(n162), .A0N(\regArr[6][1] ), .A1N(n162), 
        .Y(n235) );
  OAI2BB2X1M U348 ( .B0(n361), .B1(n162), .A0N(\regArr[6][2] ), .A1N(n162), 
        .Y(n236) );
  OAI2BB2X1M U349 ( .B0(n360), .B1(n162), .A0N(\regArr[6][3] ), .A1N(n162), 
        .Y(n237) );
  OAI2BB2X1M U350 ( .B0(n359), .B1(n162), .A0N(\regArr[6][4] ), .A1N(n162), 
        .Y(n238) );
  OAI2BB2X1M U351 ( .B0(n364), .B1(n162), .A0N(\regArr[6][5] ), .A1N(n162), 
        .Y(n239) );
  OAI2BB2X1M U352 ( .B0(n365), .B1(n162), .A0N(\regArr[6][6] ), .A1N(n162), 
        .Y(n240) );
  OAI2BB2X1M U353 ( .B0(n358), .B1(n162), .A0N(\regArr[6][7] ), .A1N(n162), 
        .Y(n241) );
  OAI2BB2X1M U354 ( .B0(n363), .B1(n165), .A0N(\regArr[7][0] ), .A1N(n165), 
        .Y(n242) );
  OAI2BB2X1M U355 ( .B0(n362), .B1(n165), .A0N(\regArr[7][1] ), .A1N(n165), 
        .Y(n243) );
  OAI2BB2X1M U356 ( .B0(n361), .B1(n165), .A0N(\regArr[7][2] ), .A1N(n165), 
        .Y(n244) );
  OAI2BB2X1M U357 ( .B0(n360), .B1(n165), .A0N(\regArr[7][3] ), .A1N(n165), 
        .Y(n245) );
  OAI2BB2X1M U358 ( .B0(n359), .B1(n165), .A0N(\regArr[7][4] ), .A1N(n165), 
        .Y(n246) );
  OAI2BB2X1M U359 ( .B0(n364), .B1(n165), .A0N(\regArr[7][5] ), .A1N(n165), 
        .Y(n247) );
  OAI2BB2X1M U360 ( .B0(n365), .B1(n165), .A0N(\regArr[7][6] ), .A1N(n165), 
        .Y(n248) );
  OAI2BB2X1M U361 ( .B0(n358), .B1(n165), .A0N(\regArr[7][7] ), .A1N(n165), 
        .Y(n249) );
  OAI2BB2X1M U362 ( .B0(n362), .B1(n156), .A0N(REG2[1]), .A1N(n156), .Y(n203)
         );
  OAI2BB2X1M U363 ( .B0(n361), .B1(n156), .A0N(REG2[2]), .A1N(n156), .Y(n204)
         );
  OAI2BB2X1M U364 ( .B0(n360), .B1(n156), .A0N(REG2[3]), .A1N(n156), .Y(n205)
         );
  OAI2BB2X1M U365 ( .B0(n359), .B1(n156), .A0N(REG2[4]), .A1N(n156), .Y(n206)
         );
  OAI2BB2X1M U366 ( .B0(n364), .B1(n156), .A0N(REG2[5]), .A1N(n156), .Y(n207)
         );
  OAI2BB2X1M U367 ( .B0(n365), .B1(n156), .A0N(REG2[6]), .A1N(n156), .Y(n208)
         );
  OAI2BB2X1M U368 ( .B0(n363), .B1(n158), .A0N(REG3[0]), .A1N(n158), .Y(n210)
         );
  OAI2BB2X1M U369 ( .B0(n362), .B1(n158), .A0N(REG3[1]), .A1N(n158), .Y(n211)
         );
  OAI2BB2X1M U370 ( .B0(n361), .B1(n158), .A0N(REG3[2]), .A1N(n158), .Y(n212)
         );
  OAI2BB2X1M U371 ( .B0(n360), .B1(n158), .A0N(REG3[3]), .A1N(n158), .Y(n213)
         );
  OAI2BB2X1M U372 ( .B0(n359), .B1(n158), .A0N(REG3[4]), .A1N(n158), .Y(n214)
         );
  OAI2BB2X1M U373 ( .B0(n365), .B1(n158), .A0N(REG3[6]), .A1N(n158), .Y(n216)
         );
  OAI2BB2X1M U374 ( .B0(n358), .B1(n158), .A0N(REG3[7]), .A1N(n158), .Y(n217)
         );
  OAI2BB1X2M U375 ( .A0N(RdData_VLD), .A1N(n150), .B0(n149), .Y(n185) );
  DLY1X1M U376 ( .A(test_se), .Y(n370) );
  DLY1X1M U377 ( .A(test_se), .Y(n371) );
  DLY1X1M U378 ( .A(test_se), .Y(n372) );
  DLY1X1M U379 ( .A(test_se), .Y(n373) );
endmodule


module ALU_OPER_WIDTH8_OUT_WIDTH16_DW_div_uns_0 ( a, b, quotient, remainder, 
        divide_by_0 );
  input [7:0] a;
  input [7:0] b;
  output [7:0] quotient;
  output [7:0] remainder;
  output divide_by_0;
  wire   \u_div/SumTmp[1][0] , \u_div/SumTmp[1][1] , \u_div/SumTmp[1][2] ,
         \u_div/SumTmp[1][3] , \u_div/SumTmp[1][4] , \u_div/SumTmp[1][5] ,
         \u_div/SumTmp[1][6] , \u_div/SumTmp[2][0] , \u_div/SumTmp[2][1] ,
         \u_div/SumTmp[2][2] , \u_div/SumTmp[2][3] , \u_div/SumTmp[2][4] ,
         \u_div/SumTmp[2][5] , \u_div/SumTmp[3][0] , \u_div/SumTmp[3][1] ,
         \u_div/SumTmp[3][2] , \u_div/SumTmp[3][3] , \u_div/SumTmp[3][4] ,
         \u_div/SumTmp[4][0] , \u_div/SumTmp[4][1] , \u_div/SumTmp[4][2] ,
         \u_div/SumTmp[4][3] , \u_div/SumTmp[5][0] , \u_div/SumTmp[5][1] ,
         \u_div/SumTmp[5][2] , \u_div/SumTmp[6][0] , \u_div/SumTmp[6][1] ,
         \u_div/SumTmp[7][0] , \u_div/CryTmp[0][1] , \u_div/CryTmp[0][2] ,
         \u_div/CryTmp[0][3] , \u_div/CryTmp[0][4] , \u_div/CryTmp[0][5] ,
         \u_div/CryTmp[0][6] , \u_div/CryTmp[0][7] , \u_div/CryTmp[1][1] ,
         \u_div/CryTmp[1][2] , \u_div/CryTmp[1][3] , \u_div/CryTmp[1][4] ,
         \u_div/CryTmp[1][5] , \u_div/CryTmp[1][6] , \u_div/CryTmp[1][7] ,
         \u_div/CryTmp[2][1] , \u_div/CryTmp[2][2] , \u_div/CryTmp[2][3] ,
         \u_div/CryTmp[2][4] , \u_div/CryTmp[2][5] , \u_div/CryTmp[2][6] ,
         \u_div/CryTmp[3][1] , \u_div/CryTmp[3][2] , \u_div/CryTmp[3][3] ,
         \u_div/CryTmp[3][4] , \u_div/CryTmp[3][5] , \u_div/CryTmp[4][1] ,
         \u_div/CryTmp[4][2] , \u_div/CryTmp[4][3] , \u_div/CryTmp[4][4] ,
         \u_div/CryTmp[5][1] , \u_div/CryTmp[5][2] , \u_div/CryTmp[5][3] ,
         \u_div/CryTmp[6][1] , \u_div/CryTmp[6][2] , \u_div/CryTmp[7][1] ,
         \u_div/PartRem[1][1] , \u_div/PartRem[1][2] , \u_div/PartRem[1][3] ,
         \u_div/PartRem[1][4] , \u_div/PartRem[1][5] , \u_div/PartRem[1][6] ,
         \u_div/PartRem[1][7] , \u_div/PartRem[2][1] , \u_div/PartRem[2][2] ,
         \u_div/PartRem[2][3] , \u_div/PartRem[2][4] , \u_div/PartRem[2][5] ,
         \u_div/PartRem[2][6] , \u_div/PartRem[3][1] , \u_div/PartRem[3][2] ,
         \u_div/PartRem[3][3] , \u_div/PartRem[3][4] , \u_div/PartRem[3][5] ,
         \u_div/PartRem[4][1] , \u_div/PartRem[4][2] , \u_div/PartRem[4][3] ,
         \u_div/PartRem[4][4] , \u_div/PartRem[5][1] , \u_div/PartRem[5][2] ,
         \u_div/PartRem[5][3] , \u_div/PartRem[6][1] , \u_div/PartRem[6][2] ,
         \u_div/PartRem[7][1] , n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11,
         n12, n13, n14, n15, n16, n17, n18, n19, n20, n21;

  ADDFX2M \u_div/u_fa_PartRem_0_2_5  ( .A(\u_div/PartRem[3][5] ), .B(n13), 
        .CI(\u_div/CryTmp[2][5] ), .CO(\u_div/CryTmp[2][6] ), .S(
        \u_div/SumTmp[2][5] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_4_3  ( .A(\u_div/PartRem[5][3] ), .B(n15), 
        .CI(\u_div/CryTmp[4][3] ), .CO(\u_div/CryTmp[4][4] ), .S(
        \u_div/SumTmp[4][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_5_2  ( .A(\u_div/PartRem[6][2] ), .B(n16), 
        .CI(\u_div/CryTmp[5][2] ), .CO(\u_div/CryTmp[5][3] ), .S(
        \u_div/SumTmp[5][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_6_1  ( .A(\u_div/PartRem[7][1] ), .B(n17), 
        .CI(\u_div/CryTmp[6][1] ), .CO(\u_div/CryTmp[6][2] ), .S(
        \u_div/SumTmp[6][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_3_4  ( .A(\u_div/PartRem[4][4] ), .B(n14), 
        .CI(\u_div/CryTmp[3][4] ), .CO(\u_div/CryTmp[3][5] ), .S(
        \u_div/SumTmp[3][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_5  ( .A(\u_div/PartRem[1][5] ), .B(n13), 
        .CI(\u_div/CryTmp[0][5] ), .CO(\u_div/CryTmp[0][6] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_6  ( .A(\u_div/PartRem[1][6] ), .B(n12), 
        .CI(\u_div/CryTmp[0][6] ), .CO(\u_div/CryTmp[0][7] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_7  ( .A(\u_div/PartRem[1][7] ), .B(n11), 
        .CI(\u_div/CryTmp[0][7] ), .CO(quotient[0]) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_1  ( .A(\u_div/PartRem[1][1] ), .B(n17), 
        .CI(\u_div/CryTmp[0][1] ), .CO(\u_div/CryTmp[0][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_1  ( .A(\u_div/PartRem[2][1] ), .B(n17), 
        .CI(\u_div/CryTmp[1][1] ), .CO(\u_div/CryTmp[1][2] ), .S(
        \u_div/SumTmp[1][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_1  ( .A(\u_div/PartRem[3][1] ), .B(n17), 
        .CI(\u_div/CryTmp[2][1] ), .CO(\u_div/CryTmp[2][2] ), .S(
        \u_div/SumTmp[2][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_3_1  ( .A(\u_div/PartRem[4][1] ), .B(n17), 
        .CI(\u_div/CryTmp[3][1] ), .CO(\u_div/CryTmp[3][2] ), .S(
        \u_div/SumTmp[3][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_4_1  ( .A(\u_div/PartRem[5][1] ), .B(n17), 
        .CI(\u_div/CryTmp[4][1] ), .CO(\u_div/CryTmp[4][2] ), .S(
        \u_div/SumTmp[4][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_5_1  ( .A(\u_div/PartRem[6][1] ), .B(n17), 
        .CI(\u_div/CryTmp[5][1] ), .CO(\u_div/CryTmp[5][2] ), .S(
        \u_div/SumTmp[5][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_2  ( .A(\u_div/PartRem[1][2] ), .B(n16), 
        .CI(\u_div/CryTmp[0][2] ), .CO(\u_div/CryTmp[0][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_3  ( .A(\u_div/PartRem[1][3] ), .B(n15), 
        .CI(\u_div/CryTmp[0][3] ), .CO(\u_div/CryTmp[0][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_4  ( .A(\u_div/PartRem[1][4] ), .B(n14), 
        .CI(\u_div/CryTmp[0][4] ), .CO(\u_div/CryTmp[0][5] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_5  ( .A(\u_div/PartRem[2][5] ), .B(n13), 
        .CI(\u_div/CryTmp[1][5] ), .CO(\u_div/CryTmp[1][6] ), .S(
        \u_div/SumTmp[1][5] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_4  ( .A(\u_div/PartRem[2][4] ), .B(n14), 
        .CI(\u_div/CryTmp[1][4] ), .CO(\u_div/CryTmp[1][5] ), .S(
        \u_div/SumTmp[1][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_3  ( .A(\u_div/PartRem[2][3] ), .B(n15), 
        .CI(\u_div/CryTmp[1][3] ), .CO(\u_div/CryTmp[1][4] ), .S(
        \u_div/SumTmp[1][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_4  ( .A(\u_div/PartRem[3][4] ), .B(n14), 
        .CI(\u_div/CryTmp[2][4] ), .CO(\u_div/CryTmp[2][5] ), .S(
        \u_div/SumTmp[2][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_2  ( .A(\u_div/PartRem[2][2] ), .B(n16), 
        .CI(\u_div/CryTmp[1][2] ), .CO(\u_div/CryTmp[1][3] ), .S(
        \u_div/SumTmp[1][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_3  ( .A(\u_div/PartRem[3][3] ), .B(n15), 
        .CI(\u_div/CryTmp[2][3] ), .CO(\u_div/CryTmp[2][4] ), .S(
        \u_div/SumTmp[2][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_2  ( .A(\u_div/PartRem[3][2] ), .B(n16), 
        .CI(\u_div/CryTmp[2][2] ), .CO(\u_div/CryTmp[2][3] ), .S(
        \u_div/SumTmp[2][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_3_3  ( .A(\u_div/PartRem[4][3] ), .B(n15), 
        .CI(\u_div/CryTmp[3][3] ), .CO(\u_div/CryTmp[3][4] ), .S(
        \u_div/SumTmp[3][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_3_2  ( .A(\u_div/PartRem[4][2] ), .B(n16), 
        .CI(\u_div/CryTmp[3][2] ), .CO(\u_div/CryTmp[3][3] ), .S(
        \u_div/SumTmp[3][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_4_2  ( .A(\u_div/PartRem[5][2] ), .B(n16), 
        .CI(\u_div/CryTmp[4][2] ), .CO(\u_div/CryTmp[4][3] ), .S(
        \u_div/SumTmp[4][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_6  ( .A(\u_div/PartRem[2][6] ), .B(n12), 
        .CI(\u_div/CryTmp[1][6] ), .CO(\u_div/CryTmp[1][7] ), .S(
        \u_div/SumTmp[1][6] ) );
  INVX2M U1 ( .A(b[0]), .Y(n18) );
  XNOR2X2M U2 ( .A(n18), .B(a[7]), .Y(\u_div/SumTmp[7][0] ) );
  XNOR2X2M U3 ( .A(n18), .B(a[6]), .Y(\u_div/SumTmp[6][0] ) );
  XNOR2X2M U4 ( .A(n18), .B(a[5]), .Y(\u_div/SumTmp[5][0] ) );
  XNOR2X2M U5 ( .A(n18), .B(a[4]), .Y(\u_div/SumTmp[4][0] ) );
  XNOR2X2M U6 ( .A(n18), .B(a[3]), .Y(\u_div/SumTmp[3][0] ) );
  XNOR2X2M U7 ( .A(n18), .B(a[2]), .Y(\u_div/SumTmp[2][0] ) );
  OR2X2M U8 ( .A(n18), .B(a[7]), .Y(\u_div/CryTmp[7][1] ) );
  XNOR2X2M U9 ( .A(n18), .B(a[1]), .Y(\u_div/SumTmp[1][0] ) );
  NAND2X2M U10 ( .A(n2), .B(n3), .Y(\u_div/CryTmp[5][1] ) );
  INVX2M U11 ( .A(a[5]), .Y(n3) );
  INVX2M U12 ( .A(n18), .Y(n2) );
  NAND2X2M U13 ( .A(n4), .B(n5), .Y(\u_div/CryTmp[4][1] ) );
  INVX2M U14 ( .A(a[4]), .Y(n5) );
  INVX2M U15 ( .A(n18), .Y(n4) );
  NAND2X2M U16 ( .A(n6), .B(n7), .Y(\u_div/CryTmp[3][1] ) );
  INVX2M U17 ( .A(a[3]), .Y(n7) );
  INVX2M U18 ( .A(n18), .Y(n6) );
  NAND2X2M U19 ( .A(n2), .B(n8), .Y(\u_div/CryTmp[2][1] ) );
  INVX2M U20 ( .A(a[2]), .Y(n8) );
  NAND2X2M U21 ( .A(n6), .B(n9), .Y(\u_div/CryTmp[1][1] ) );
  INVX2M U22 ( .A(a[1]), .Y(n9) );
  NAND2X2M U23 ( .A(n4), .B(n10), .Y(\u_div/CryTmp[0][1] ) );
  INVX2M U24 ( .A(a[0]), .Y(n10) );
  NAND2X2M U25 ( .A(n2), .B(n1), .Y(\u_div/CryTmp[6][1] ) );
  INVX2M U26 ( .A(a[6]), .Y(n1) );
  INVX2M U27 ( .A(b[6]), .Y(n12) );
  INVX2M U28 ( .A(b[1]), .Y(n17) );
  INVX2M U29 ( .A(b[2]), .Y(n16) );
  INVX2M U30 ( .A(b[3]), .Y(n15) );
  INVX2M U31 ( .A(b[4]), .Y(n14) );
  INVX2M U32 ( .A(b[5]), .Y(n13) );
  INVX2M U33 ( .A(b[7]), .Y(n11) );
  CLKMX2X2M U34 ( .A(\u_div/PartRem[2][6] ), .B(\u_div/SumTmp[1][6] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][7] ) );
  CLKMX2X2M U35 ( .A(\u_div/PartRem[3][5] ), .B(\u_div/SumTmp[2][5] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][6] ) );
  CLKMX2X2M U36 ( .A(\u_div/PartRem[4][4] ), .B(\u_div/SumTmp[3][4] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][5] ) );
  CLKMX2X2M U37 ( .A(\u_div/PartRem[5][3] ), .B(\u_div/SumTmp[4][3] ), .S0(
        quotient[4]), .Y(\u_div/PartRem[4][4] ) );
  CLKMX2X2M U38 ( .A(\u_div/PartRem[6][2] ), .B(\u_div/SumTmp[5][2] ), .S0(
        quotient[5]), .Y(\u_div/PartRem[5][3] ) );
  CLKMX2X2M U39 ( .A(\u_div/PartRem[7][1] ), .B(\u_div/SumTmp[6][1] ), .S0(
        quotient[6]), .Y(\u_div/PartRem[6][2] ) );
  CLKMX2X2M U40 ( .A(a[7]), .B(\u_div/SumTmp[7][0] ), .S0(quotient[7]), .Y(
        \u_div/PartRem[7][1] ) );
  CLKMX2X2M U41 ( .A(\u_div/PartRem[2][5] ), .B(\u_div/SumTmp[1][5] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][6] ) );
  CLKMX2X2M U42 ( .A(\u_div/PartRem[3][4] ), .B(\u_div/SumTmp[2][4] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][5] ) );
  CLKMX2X2M U43 ( .A(\u_div/PartRem[4][3] ), .B(\u_div/SumTmp[3][3] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][4] ) );
  CLKMX2X2M U44 ( .A(\u_div/PartRem[5][2] ), .B(\u_div/SumTmp[4][2] ), .S0(
        quotient[4]), .Y(\u_div/PartRem[4][3] ) );
  CLKMX2X2M U45 ( .A(\u_div/PartRem[6][1] ), .B(\u_div/SumTmp[5][1] ), .S0(
        quotient[5]), .Y(\u_div/PartRem[5][2] ) );
  CLKMX2X2M U46 ( .A(a[6]), .B(\u_div/SumTmp[6][0] ), .S0(quotient[6]), .Y(
        \u_div/PartRem[6][1] ) );
  CLKMX2X2M U47 ( .A(\u_div/PartRem[2][4] ), .B(\u_div/SumTmp[1][4] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][5] ) );
  CLKMX2X2M U48 ( .A(\u_div/PartRem[3][3] ), .B(\u_div/SumTmp[2][3] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][4] ) );
  CLKMX2X2M U49 ( .A(\u_div/PartRem[4][2] ), .B(\u_div/SumTmp[3][2] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][3] ) );
  CLKMX2X2M U50 ( .A(\u_div/PartRem[5][1] ), .B(\u_div/SumTmp[4][1] ), .S0(
        quotient[4]), .Y(\u_div/PartRem[4][2] ) );
  CLKMX2X2M U51 ( .A(a[5]), .B(\u_div/SumTmp[5][0] ), .S0(quotient[5]), .Y(
        \u_div/PartRem[5][1] ) );
  CLKMX2X2M U52 ( .A(\u_div/PartRem[2][3] ), .B(\u_div/SumTmp[1][3] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][4] ) );
  CLKMX2X2M U53 ( .A(\u_div/PartRem[3][2] ), .B(\u_div/SumTmp[2][2] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][3] ) );
  CLKMX2X2M U54 ( .A(\u_div/PartRem[4][1] ), .B(\u_div/SumTmp[3][1] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][2] ) );
  CLKMX2X2M U55 ( .A(a[4]), .B(\u_div/SumTmp[4][0] ), .S0(quotient[4]), .Y(
        \u_div/PartRem[4][1] ) );
  CLKMX2X2M U56 ( .A(\u_div/PartRem[2][2] ), .B(\u_div/SumTmp[1][2] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][3] ) );
  CLKMX2X2M U57 ( .A(\u_div/PartRem[3][1] ), .B(\u_div/SumTmp[2][1] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][2] ) );
  CLKMX2X2M U58 ( .A(a[3]), .B(\u_div/SumTmp[3][0] ), .S0(quotient[3]), .Y(
        \u_div/PartRem[3][1] ) );
  CLKMX2X2M U59 ( .A(\u_div/PartRem[2][1] ), .B(\u_div/SumTmp[1][1] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][2] ) );
  CLKMX2X2M U60 ( .A(a[2]), .B(\u_div/SumTmp[2][0] ), .S0(quotient[2]), .Y(
        \u_div/PartRem[2][1] ) );
  CLKMX2X2M U61 ( .A(a[1]), .B(\u_div/SumTmp[1][0] ), .S0(quotient[1]), .Y(
        \u_div/PartRem[1][1] ) );
  AND4X1M U62 ( .A(\u_div/CryTmp[7][1] ), .B(n19), .C(n17), .D(n16), .Y(
        quotient[7]) );
  AND3X1M U63 ( .A(n19), .B(n16), .C(\u_div/CryTmp[6][2] ), .Y(quotient[6]) );
  AND2X1M U64 ( .A(\u_div/CryTmp[5][3] ), .B(n19), .Y(quotient[5]) );
  AND2X1M U65 ( .A(n20), .B(n15), .Y(n19) );
  AND2X1M U66 ( .A(\u_div/CryTmp[4][4] ), .B(n20), .Y(quotient[4]) );
  AND3X1M U67 ( .A(n21), .B(n14), .C(n13), .Y(n20) );
  AND3X1M U68 ( .A(n21), .B(n13), .C(\u_div/CryTmp[3][5] ), .Y(quotient[3]) );
  AND2X1M U69 ( .A(\u_div/CryTmp[2][6] ), .B(n21), .Y(quotient[2]) );
  NOR2X1M U70 ( .A(b[6]), .B(b[7]), .Y(n21) );
  AND2X1M U71 ( .A(\u_div/CryTmp[1][7] ), .B(n11), .Y(quotient[1]) );
endmodule


module ALU_OPER_WIDTH8_OUT_WIDTH16_DW01_sub_0 ( A, B, CI, DIFF, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9;
  wire   [9:0] carry;

  ADDFX2M U2_7 ( .A(A[7]), .B(n2), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7])
         );
  ADDFX2M U2_1 ( .A(A[1]), .B(n8), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  ADDFX2M U2_5 ( .A(A[5]), .B(n4), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5])
         );
  ADDFX2M U2_4 ( .A(A[4]), .B(n5), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4])
         );
  ADDFX2M U2_3 ( .A(A[3]), .B(n6), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  ADDFX2M U2_2 ( .A(A[2]), .B(n7), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  ADDFX2M U2_6 ( .A(A[6]), .B(n3), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6])
         );
  XNOR2X2M U1 ( .A(n9), .B(A[0]), .Y(DIFF[0]) );
  INVX2M U2 ( .A(B[6]), .Y(n3) );
  INVX2M U3 ( .A(B[0]), .Y(n9) );
  INVX2M U4 ( .A(B[2]), .Y(n7) );
  INVX2M U5 ( .A(B[3]), .Y(n6) );
  INVX2M U6 ( .A(B[4]), .Y(n5) );
  INVX2M U7 ( .A(B[5]), .Y(n4) );
  NAND2X2M U8 ( .A(B[0]), .B(n1), .Y(carry[1]) );
  INVX2M U9 ( .A(B[1]), .Y(n8) );
  INVX2M U10 ( .A(A[0]), .Y(n1) );
  INVX2M U11 ( .A(B[7]), .Y(n2) );
  CLKINVX1M U12 ( .A(carry[8]), .Y(DIFF[8]) );
endmodule


module ALU_OPER_WIDTH8_OUT_WIDTH16_DW01_add_0 ( A, B, CI, SUM, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [8:1] carry;

  ADDFX2M U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(SUM[8]), .S(SUM[7]) );
  ADDFX2M U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  ADDFX2M U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFX2M U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFX2M U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFX2M U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFX2M U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  AND2X2M U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  CLKXOR2X2M U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module ALU_OPER_WIDTH8_OUT_WIDTH16_DW01_add_1 ( A, B, CI, SUM, CO );
  input [13:0] A;
  input [13:0] B;
  output [13:0] SUM;
  input CI;
  output CO;
  wire   n1, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27;

  AOI21BX2M U2 ( .A0(n18), .A1(A[12]), .B0N(n19), .Y(n1) );
  NAND2X2M U3 ( .A(A[7]), .B(B[7]), .Y(n15) );
  XNOR2X2M U4 ( .A(A[7]), .B(n8), .Y(SUM[7]) );
  INVX2M U5 ( .A(B[7]), .Y(n8) );
  XNOR2X2M U6 ( .A(B[13]), .B(n1), .Y(SUM[13]) );
  INVX2M U7 ( .A(A[6]), .Y(n9) );
  INVX2M U8 ( .A(n9), .Y(SUM[6]) );
  BUFX2M U9 ( .A(A[0]), .Y(SUM[0]) );
  BUFX2M U10 ( .A(A[1]), .Y(SUM[1]) );
  BUFX2M U11 ( .A(A[2]), .Y(SUM[2]) );
  BUFX2M U12 ( .A(A[3]), .Y(SUM[3]) );
  BUFX2M U13 ( .A(A[4]), .Y(SUM[4]) );
  BUFX2M U14 ( .A(A[5]), .Y(SUM[5]) );
  XNOR2X1M U15 ( .A(n10), .B(n11), .Y(SUM[9]) );
  NOR2X1M U16 ( .A(n12), .B(n13), .Y(n11) );
  CLKXOR2X2M U17 ( .A(n14), .B(n15), .Y(SUM[8]) );
  NAND2BX1M U18 ( .AN(n16), .B(n17), .Y(n14) );
  OAI21X1M U19 ( .A0(A[12]), .A1(n18), .B0(B[12]), .Y(n19) );
  XOR3XLM U20 ( .A(B[12]), .B(A[12]), .C(n18), .Y(SUM[12]) );
  OAI21BX1M U21 ( .A0(n20), .A1(n21), .B0N(n22), .Y(n18) );
  XNOR2X1M U22 ( .A(n21), .B(n23), .Y(SUM[11]) );
  NOR2X1M U23 ( .A(n22), .B(n20), .Y(n23) );
  NOR2X1M U24 ( .A(B[11]), .B(A[11]), .Y(n20) );
  AND2X1M U25 ( .A(B[11]), .B(A[11]), .Y(n22) );
  OA21X1M U26 ( .A0(n24), .A1(n25), .B0(n26), .Y(n21) );
  CLKXOR2X2M U27 ( .A(n27), .B(n25), .Y(SUM[10]) );
  AOI2BB1X1M U28 ( .A0N(n10), .A1N(n13), .B0(n12), .Y(n25) );
  AND2X1M U29 ( .A(B[9]), .B(A[9]), .Y(n12) );
  NOR2X1M U30 ( .A(B[9]), .B(A[9]), .Y(n13) );
  OA21X1M U31 ( .A0(n15), .A1(n16), .B0(n17), .Y(n10) );
  CLKNAND2X2M U32 ( .A(B[8]), .B(A[8]), .Y(n17) );
  NOR2X1M U33 ( .A(B[8]), .B(A[8]), .Y(n16) );
  NAND2BX1M U34 ( .AN(n24), .B(n26), .Y(n27) );
  CLKNAND2X2M U35 ( .A(B[10]), .B(A[10]), .Y(n26) );
  NOR2X1M U36 ( .A(B[10]), .B(A[10]), .Y(n24) );
endmodule


module ALU_OPER_WIDTH8_OUT_WIDTH16_DW02_mult_0 ( A, B, TC, PRODUCT );
  input [7:0] A;
  input [7:0] B;
  output [15:0] PRODUCT;
  input TC;
  wire   \ab[7][7] , \ab[7][6] , \ab[7][5] , \ab[7][4] , \ab[7][3] ,
         \ab[7][2] , \ab[7][1] , \ab[7][0] , \ab[6][7] , \ab[6][6] ,
         \ab[6][5] , \ab[6][4] , \ab[6][3] , \ab[6][2] , \ab[6][1] ,
         \ab[6][0] , \ab[5][7] , \ab[5][6] , \ab[5][5] , \ab[5][4] ,
         \ab[5][3] , \ab[5][2] , \ab[5][1] , \ab[5][0] , \ab[4][7] ,
         \ab[4][6] , \ab[4][5] , \ab[4][4] , \ab[4][3] , \ab[4][2] ,
         \ab[4][1] , \ab[4][0] , \ab[3][7] , \ab[3][6] , \ab[3][5] ,
         \ab[3][4] , \ab[3][3] , \ab[3][2] , \ab[3][1] , \ab[3][0] ,
         \ab[2][7] , \ab[2][6] , \ab[2][5] , \ab[2][4] , \ab[2][3] ,
         \ab[2][2] , \ab[2][1] , \ab[2][0] , \ab[1][7] , \ab[1][6] ,
         \ab[1][5] , \ab[1][4] , \ab[1][3] , \ab[1][2] , \ab[1][1] ,
         \ab[1][0] , \ab[0][7] , \ab[0][6] , \ab[0][5] , \ab[0][4] ,
         \ab[0][3] , \ab[0][2] , \ab[0][1] , \CARRYB[7][6] , \CARRYB[7][5] ,
         \CARRYB[7][4] , \CARRYB[7][3] , \CARRYB[7][2] , \CARRYB[7][1] ,
         \CARRYB[7][0] , \CARRYB[6][6] , \CARRYB[6][5] , \CARRYB[6][4] ,
         \CARRYB[6][3] , \CARRYB[6][2] , \CARRYB[6][1] , \CARRYB[6][0] ,
         \CARRYB[5][6] , \CARRYB[5][5] , \CARRYB[5][4] , \CARRYB[5][3] ,
         \CARRYB[5][2] , \CARRYB[5][1] , \CARRYB[5][0] , \CARRYB[4][6] ,
         \CARRYB[4][5] , \CARRYB[4][4] , \CARRYB[4][3] , \CARRYB[4][2] ,
         \CARRYB[4][1] , \CARRYB[4][0] , \CARRYB[3][6] , \CARRYB[3][5] ,
         \CARRYB[3][4] , \CARRYB[3][3] , \CARRYB[3][2] , \CARRYB[3][1] ,
         \CARRYB[3][0] , \CARRYB[2][6] , \CARRYB[2][5] , \CARRYB[2][4] ,
         \CARRYB[2][3] , \CARRYB[2][2] , \CARRYB[2][1] , \CARRYB[2][0] ,
         \SUMB[7][6] , \SUMB[7][5] , \SUMB[7][4] , \SUMB[7][3] , \SUMB[7][2] ,
         \SUMB[7][1] , \SUMB[7][0] , \SUMB[6][6] , \SUMB[6][5] , \SUMB[6][4] ,
         \SUMB[6][3] , \SUMB[6][2] , \SUMB[6][1] , \SUMB[5][6] , \SUMB[5][5] ,
         \SUMB[5][4] , \SUMB[5][3] , \SUMB[5][2] , \SUMB[5][1] , \SUMB[4][6] ,
         \SUMB[4][5] , \SUMB[4][4] , \SUMB[4][3] , \SUMB[4][2] , \SUMB[4][1] ,
         \SUMB[3][6] , \SUMB[3][5] , \SUMB[3][4] , \SUMB[3][3] , \SUMB[3][2] ,
         \SUMB[3][1] , \SUMB[2][6] , \SUMB[2][5] , \SUMB[2][4] , \SUMB[2][3] ,
         \SUMB[2][2] , \SUMB[2][1] , \SUMB[1][6] , \SUMB[1][5] , \SUMB[1][4] ,
         \SUMB[1][3] , \SUMB[1][2] , \SUMB[1][1] , \A1[12] , \A1[11] ,
         \A1[10] , \A1[9] , \A1[8] , \A1[7] , \A1[6] , \A1[4] , \A1[3] ,
         \A1[2] , \A1[1] , \A1[0] , n3, n4, n5, n6, n7, n8, n9, n10, n11, n12,
         n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26,
         n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39;

  ADDFX2M S2_6_5 ( .A(\ab[6][5] ), .B(\CARRYB[5][5] ), .CI(\SUMB[5][6] ), .CO(
        \CARRYB[6][5] ), .S(\SUMB[6][5] ) );
  ADDFX2M S2_6_4 ( .A(\ab[6][4] ), .B(\CARRYB[5][4] ), .CI(\SUMB[5][5] ), .CO(
        \CARRYB[6][4] ), .S(\SUMB[6][4] ) );
  ADDFX2M S2_5_5 ( .A(\ab[5][5] ), .B(\CARRYB[4][5] ), .CI(\SUMB[4][6] ), .CO(
        \CARRYB[5][5] ), .S(\SUMB[5][5] ) );
  ADDFX2M S2_6_3 ( .A(\ab[6][3] ), .B(\CARRYB[5][3] ), .CI(\SUMB[5][4] ), .CO(
        \CARRYB[6][3] ), .S(\SUMB[6][3] ) );
  ADDFX2M S2_5_4 ( .A(\ab[5][4] ), .B(\CARRYB[4][4] ), .CI(\SUMB[4][5] ), .CO(
        \CARRYB[5][4] ), .S(\SUMB[5][4] ) );
  ADDFX2M S1_6_0 ( .A(\ab[6][0] ), .B(\CARRYB[5][0] ), .CI(\SUMB[5][1] ), .CO(
        \CARRYB[6][0] ), .S(\A1[4] ) );
  ADDFX2M S2_6_1 ( .A(\ab[6][1] ), .B(\CARRYB[5][1] ), .CI(\SUMB[5][2] ), .CO(
        \CARRYB[6][1] ), .S(\SUMB[6][1] ) );
  ADDFX2M S2_6_2 ( .A(\ab[6][2] ), .B(\CARRYB[5][2] ), .CI(\SUMB[5][3] ), .CO(
        \CARRYB[6][2] ), .S(\SUMB[6][2] ) );
  ADDFX2M S2_4_5 ( .A(\ab[4][5] ), .B(\CARRYB[3][5] ), .CI(\SUMB[3][6] ), .CO(
        \CARRYB[4][5] ), .S(\SUMB[4][5] ) );
  ADDFX2M S1_5_0 ( .A(\ab[5][0] ), .B(\CARRYB[4][0] ), .CI(\SUMB[4][1] ), .CO(
        \CARRYB[5][0] ), .S(\A1[3] ) );
  ADDFX2M S2_5_1 ( .A(\ab[5][1] ), .B(\CARRYB[4][1] ), .CI(\SUMB[4][2] ), .CO(
        \CARRYB[5][1] ), .S(\SUMB[5][1] ) );
  ADDFX2M S2_5_2 ( .A(\ab[5][2] ), .B(\CARRYB[4][2] ), .CI(\SUMB[4][3] ), .CO(
        \CARRYB[5][2] ), .S(\SUMB[5][2] ) );
  ADDFX2M S2_5_3 ( .A(\ab[5][3] ), .B(\CARRYB[4][3] ), .CI(\SUMB[4][4] ), .CO(
        \CARRYB[5][3] ), .S(\SUMB[5][3] ) );
  ADDFX2M S1_4_0 ( .A(\ab[4][0] ), .B(\CARRYB[3][0] ), .CI(\SUMB[3][1] ), .CO(
        \CARRYB[4][0] ), .S(\A1[2] ) );
  ADDFX2M S2_4_1 ( .A(\ab[4][1] ), .B(\CARRYB[3][1] ), .CI(\SUMB[3][2] ), .CO(
        \CARRYB[4][1] ), .S(\SUMB[4][1] ) );
  ADDFX2M S2_4_2 ( .A(\ab[4][2] ), .B(\CARRYB[3][2] ), .CI(\SUMB[3][3] ), .CO(
        \CARRYB[4][2] ), .S(\SUMB[4][2] ) );
  ADDFX2M S2_4_3 ( .A(\ab[4][3] ), .B(\CARRYB[3][3] ), .CI(\SUMB[3][4] ), .CO(
        \CARRYB[4][3] ), .S(\SUMB[4][3] ) );
  ADDFX2M S2_4_4 ( .A(\ab[4][4] ), .B(\CARRYB[3][4] ), .CI(\SUMB[3][5] ), .CO(
        \CARRYB[4][4] ), .S(\SUMB[4][4] ) );
  ADDFX2M S1_3_0 ( .A(\ab[3][0] ), .B(\CARRYB[2][0] ), .CI(\SUMB[2][1] ), .CO(
        \CARRYB[3][0] ), .S(\A1[1] ) );
  ADDFX2M S2_3_1 ( .A(\ab[3][1] ), .B(\CARRYB[2][1] ), .CI(\SUMB[2][2] ), .CO(
        \CARRYB[3][1] ), .S(\SUMB[3][1] ) );
  ADDFX2M S2_3_2 ( .A(\ab[3][2] ), .B(\CARRYB[2][2] ), .CI(\SUMB[2][3] ), .CO(
        \CARRYB[3][2] ), .S(\SUMB[3][2] ) );
  ADDFX2M S2_3_3 ( .A(\ab[3][3] ), .B(\CARRYB[2][3] ), .CI(\SUMB[2][4] ), .CO(
        \CARRYB[3][3] ), .S(\SUMB[3][3] ) );
  ADDFX2M S2_3_4 ( .A(\ab[3][4] ), .B(\CARRYB[2][4] ), .CI(\SUMB[2][5] ), .CO(
        \CARRYB[3][4] ), .S(\SUMB[3][4] ) );
  ADDFX2M S2_3_5 ( .A(\ab[3][5] ), .B(\CARRYB[2][5] ), .CI(\SUMB[2][6] ), .CO(
        \CARRYB[3][5] ), .S(\SUMB[3][5] ) );
  ADDFX2M S3_6_6 ( .A(\ab[6][6] ), .B(\CARRYB[5][6] ), .CI(\ab[5][7] ), .CO(
        \CARRYB[6][6] ), .S(\SUMB[6][6] ) );
  ADDFX2M S3_5_6 ( .A(\ab[5][6] ), .B(\CARRYB[4][6] ), .CI(\ab[4][7] ), .CO(
        \CARRYB[5][6] ), .S(\SUMB[5][6] ) );
  ADDFX2M S3_4_6 ( .A(\ab[4][6] ), .B(\CARRYB[3][6] ), .CI(\ab[3][7] ), .CO(
        \CARRYB[4][6] ), .S(\SUMB[4][6] ) );
  ADDFX2M S3_3_6 ( .A(\ab[3][6] ), .B(\CARRYB[2][6] ), .CI(\ab[2][7] ), .CO(
        \CARRYB[3][6] ), .S(\SUMB[3][6] ) );
  ADDFX2M S3_2_6 ( .A(\ab[2][6] ), .B(n8), .CI(\ab[1][7] ), .CO(\CARRYB[2][6] ), .S(\SUMB[2][6] ) );
  ADDFX2M S1_2_0 ( .A(\ab[2][0] ), .B(n9), .CI(\SUMB[1][1] ), .CO(
        \CARRYB[2][0] ), .S(\A1[0] ) );
  ADDFX2M S2_2_1 ( .A(\ab[2][1] ), .B(n7), .CI(\SUMB[1][2] ), .CO(
        \CARRYB[2][1] ), .S(\SUMB[2][1] ) );
  ADDFX2M S2_2_2 ( .A(\ab[2][2] ), .B(n6), .CI(\SUMB[1][3] ), .CO(
        \CARRYB[2][2] ), .S(\SUMB[2][2] ) );
  ADDFX2M S2_2_3 ( .A(\ab[2][3] ), .B(n5), .CI(\SUMB[1][4] ), .CO(
        \CARRYB[2][3] ), .S(\SUMB[2][3] ) );
  ADDFX2M S2_2_4 ( .A(\ab[2][4] ), .B(n4), .CI(\SUMB[1][5] ), .CO(
        \CARRYB[2][4] ), .S(\SUMB[2][4] ) );
  ADDFX2M S2_2_5 ( .A(\ab[2][5] ), .B(n3), .CI(\SUMB[1][6] ), .CO(
        \CARRYB[2][5] ), .S(\SUMB[2][5] ) );
  ADDFX2M S5_6 ( .A(\ab[7][6] ), .B(\CARRYB[6][6] ), .CI(\ab[6][7] ), .CO(
        \CARRYB[7][6] ), .S(\SUMB[7][6] ) );
  ADDFX2M S4_5 ( .A(\ab[7][5] ), .B(\CARRYB[6][5] ), .CI(\SUMB[6][6] ), .CO(
        \CARRYB[7][5] ), .S(\SUMB[7][5] ) );
  ADDFX2M S4_4 ( .A(\ab[7][4] ), .B(\CARRYB[6][4] ), .CI(\SUMB[6][5] ), .CO(
        \CARRYB[7][4] ), .S(\SUMB[7][4] ) );
  ADDFX2M S4_3 ( .A(\ab[7][3] ), .B(\CARRYB[6][3] ), .CI(\SUMB[6][4] ), .CO(
        \CARRYB[7][3] ), .S(\SUMB[7][3] ) );
  ADDFX2M S4_2 ( .A(\ab[7][2] ), .B(\CARRYB[6][2] ), .CI(\SUMB[6][3] ), .CO(
        \CARRYB[7][2] ), .S(\SUMB[7][2] ) );
  ADDFX2M S4_0 ( .A(\ab[7][0] ), .B(\CARRYB[6][0] ), .CI(\SUMB[6][1] ), .CO(
        \CARRYB[7][0] ), .S(\SUMB[7][0] ) );
  ADDFX2M S4_1 ( .A(\ab[7][1] ), .B(\CARRYB[6][1] ), .CI(\SUMB[6][2] ), .CO(
        \CARRYB[7][1] ), .S(\SUMB[7][1] ) );
  AND2X2M U2 ( .A(\ab[0][6] ), .B(\ab[1][5] ), .Y(n3) );
  AND2X2M U3 ( .A(\ab[0][5] ), .B(\ab[1][4] ), .Y(n4) );
  AND2X2M U4 ( .A(\ab[0][4] ), .B(\ab[1][3] ), .Y(n5) );
  AND2X2M U5 ( .A(\ab[0][3] ), .B(\ab[1][2] ), .Y(n6) );
  AND2X2M U6 ( .A(\ab[0][2] ), .B(\ab[1][1] ), .Y(n7) );
  AND2X2M U7 ( .A(\ab[0][7] ), .B(\ab[1][6] ), .Y(n8) );
  AND2X2M U8 ( .A(\ab[0][1] ), .B(\ab[1][0] ), .Y(n9) );
  AND2X2M U9 ( .A(\CARRYB[7][6] ), .B(\ab[7][7] ), .Y(n10) );
  INVX2M U10 ( .A(\ab[0][6] ), .Y(n22) );
  CLKXOR2X2M U11 ( .A(\CARRYB[7][1] ), .B(\SUMB[7][2] ), .Y(\A1[7] ) );
  CLKXOR2X2M U12 ( .A(\ab[1][0] ), .B(\ab[0][1] ), .Y(PRODUCT[1]) );
  CLKXOR2X2M U13 ( .A(\CARRYB[7][6] ), .B(\ab[7][7] ), .Y(\A1[12] ) );
  CLKXOR2X2M U14 ( .A(\CARRYB[7][2] ), .B(\SUMB[7][3] ), .Y(\A1[8] ) );
  CLKXOR2X2M U15 ( .A(\CARRYB[7][4] ), .B(\SUMB[7][5] ), .Y(\A1[10] ) );
  CLKXOR2X2M U16 ( .A(\CARRYB[7][3] ), .B(\SUMB[7][4] ), .Y(\A1[9] ) );
  CLKXOR2X2M U17 ( .A(\CARRYB[7][5] ), .B(\SUMB[7][6] ), .Y(\A1[11] ) );
  INVX2M U18 ( .A(\ab[0][7] ), .Y(n23) );
  INVX2M U19 ( .A(\ab[0][5] ), .Y(n21) );
  INVX2M U20 ( .A(\ab[0][4] ), .Y(n20) );
  INVX2M U21 ( .A(\ab[0][3] ), .Y(n19) );
  INVX2M U22 ( .A(\ab[0][2] ), .Y(n18) );
  XNOR2X2M U23 ( .A(\CARRYB[7][0] ), .B(n17), .Y(\A1[6] ) );
  INVX2M U24 ( .A(\SUMB[7][1] ), .Y(n17) );
  AND2X2M U25 ( .A(\CARRYB[7][0] ), .B(\SUMB[7][1] ), .Y(n11) );
  AND2X2M U26 ( .A(\CARRYB[7][1] ), .B(\SUMB[7][2] ), .Y(n12) );
  AND2X2M U27 ( .A(\CARRYB[7][3] ), .B(\SUMB[7][4] ), .Y(n13) );
  AND2X2M U28 ( .A(\CARRYB[7][5] ), .B(\SUMB[7][6] ), .Y(n14) );
  AND2X2M U29 ( .A(\CARRYB[7][2] ), .B(\SUMB[7][3] ), .Y(n15) );
  AND2X2M U30 ( .A(\CARRYB[7][4] ), .B(\SUMB[7][5] ), .Y(n16) );
  XNOR2X2M U31 ( .A(\ab[1][6] ), .B(n23), .Y(\SUMB[1][6] ) );
  XNOR2X2M U32 ( .A(\ab[1][5] ), .B(n22), .Y(\SUMB[1][5] ) );
  XNOR2X2M U33 ( .A(\ab[1][4] ), .B(n21), .Y(\SUMB[1][4] ) );
  XNOR2X2M U34 ( .A(\ab[1][3] ), .B(n20), .Y(\SUMB[1][3] ) );
  XNOR2X2M U35 ( .A(\ab[1][2] ), .B(n19), .Y(\SUMB[1][2] ) );
  XNOR2X2M U36 ( .A(\ab[1][1] ), .B(n18), .Y(\SUMB[1][1] ) );
  INVX2M U37 ( .A(A[7]), .Y(n32) );
  INVX2M U38 ( .A(A[6]), .Y(n33) );
  INVX2M U39 ( .A(A[1]), .Y(n38) );
  INVX2M U40 ( .A(A[0]), .Y(n39) );
  INVX2M U41 ( .A(A[3]), .Y(n36) );
  INVX2M U42 ( .A(A[2]), .Y(n37) );
  INVX2M U43 ( .A(A[5]), .Y(n34) );
  INVX2M U44 ( .A(A[4]), .Y(n35) );
  INVX2M U45 ( .A(B[6]), .Y(n25) );
  INVX2M U46 ( .A(B[0]), .Y(n31) );
  INVX2M U47 ( .A(B[2]), .Y(n29) );
  INVX2M U48 ( .A(B[3]), .Y(n28) );
  INVX2M U49 ( .A(B[7]), .Y(n24) );
  INVX2M U50 ( .A(B[4]), .Y(n27) );
  INVX2M U51 ( .A(B[5]), .Y(n26) );
  INVX2M U52 ( .A(B[1]), .Y(n30) );
  NOR2X1M U54 ( .A(n32), .B(n24), .Y(\ab[7][7] ) );
  NOR2X1M U55 ( .A(n32), .B(n25), .Y(\ab[7][6] ) );
  NOR2X1M U56 ( .A(n32), .B(n26), .Y(\ab[7][5] ) );
  NOR2X1M U57 ( .A(n32), .B(n27), .Y(\ab[7][4] ) );
  NOR2X1M U58 ( .A(n32), .B(n28), .Y(\ab[7][3] ) );
  NOR2X1M U59 ( .A(n32), .B(n29), .Y(\ab[7][2] ) );
  NOR2X1M U60 ( .A(n32), .B(n30), .Y(\ab[7][1] ) );
  NOR2X1M U61 ( .A(n32), .B(n31), .Y(\ab[7][0] ) );
  NOR2X1M U62 ( .A(n24), .B(n33), .Y(\ab[6][7] ) );
  NOR2X1M U63 ( .A(n25), .B(n33), .Y(\ab[6][6] ) );
  NOR2X1M U64 ( .A(n26), .B(n33), .Y(\ab[6][5] ) );
  NOR2X1M U65 ( .A(n27), .B(n33), .Y(\ab[6][4] ) );
  NOR2X1M U66 ( .A(n28), .B(n33), .Y(\ab[6][3] ) );
  NOR2X1M U67 ( .A(n29), .B(n33), .Y(\ab[6][2] ) );
  NOR2X1M U68 ( .A(n30), .B(n33), .Y(\ab[6][1] ) );
  NOR2X1M U69 ( .A(n31), .B(n33), .Y(\ab[6][0] ) );
  NOR2X1M U70 ( .A(n24), .B(n34), .Y(\ab[5][7] ) );
  NOR2X1M U71 ( .A(n25), .B(n34), .Y(\ab[5][6] ) );
  NOR2X1M U72 ( .A(n26), .B(n34), .Y(\ab[5][5] ) );
  NOR2X1M U73 ( .A(n27), .B(n34), .Y(\ab[5][4] ) );
  NOR2X1M U74 ( .A(n28), .B(n34), .Y(\ab[5][3] ) );
  NOR2X1M U75 ( .A(n29), .B(n34), .Y(\ab[5][2] ) );
  NOR2X1M U76 ( .A(n30), .B(n34), .Y(\ab[5][1] ) );
  NOR2X1M U77 ( .A(n31), .B(n34), .Y(\ab[5][0] ) );
  NOR2X1M U78 ( .A(n24), .B(n35), .Y(\ab[4][7] ) );
  NOR2X1M U79 ( .A(n25), .B(n35), .Y(\ab[4][6] ) );
  NOR2X1M U80 ( .A(n26), .B(n35), .Y(\ab[4][5] ) );
  NOR2X1M U81 ( .A(n27), .B(n35), .Y(\ab[4][4] ) );
  NOR2X1M U82 ( .A(n28), .B(n35), .Y(\ab[4][3] ) );
  NOR2X1M U83 ( .A(n29), .B(n35), .Y(\ab[4][2] ) );
  NOR2X1M U84 ( .A(n30), .B(n35), .Y(\ab[4][1] ) );
  NOR2X1M U85 ( .A(n31), .B(n35), .Y(\ab[4][0] ) );
  NOR2X1M U86 ( .A(n24), .B(n36), .Y(\ab[3][7] ) );
  NOR2X1M U87 ( .A(n25), .B(n36), .Y(\ab[3][6] ) );
  NOR2X1M U88 ( .A(n26), .B(n36), .Y(\ab[3][5] ) );
  NOR2X1M U89 ( .A(n27), .B(n36), .Y(\ab[3][4] ) );
  NOR2X1M U90 ( .A(n28), .B(n36), .Y(\ab[3][3] ) );
  NOR2X1M U91 ( .A(n29), .B(n36), .Y(\ab[3][2] ) );
  NOR2X1M U92 ( .A(n30), .B(n36), .Y(\ab[3][1] ) );
  NOR2X1M U93 ( .A(n31), .B(n36), .Y(\ab[3][0] ) );
  NOR2X1M U94 ( .A(n24), .B(n37), .Y(\ab[2][7] ) );
  NOR2X1M U95 ( .A(n25), .B(n37), .Y(\ab[2][6] ) );
  NOR2X1M U96 ( .A(n26), .B(n37), .Y(\ab[2][5] ) );
  NOR2X1M U97 ( .A(n27), .B(n37), .Y(\ab[2][4] ) );
  NOR2X1M U98 ( .A(n28), .B(n37), .Y(\ab[2][3] ) );
  NOR2X1M U99 ( .A(n29), .B(n37), .Y(\ab[2][2] ) );
  NOR2X1M U100 ( .A(n30), .B(n37), .Y(\ab[2][1] ) );
  NOR2X1M U101 ( .A(n31), .B(n37), .Y(\ab[2][0] ) );
  NOR2X1M U102 ( .A(n24), .B(n38), .Y(\ab[1][7] ) );
  NOR2X1M U103 ( .A(n25), .B(n38), .Y(\ab[1][6] ) );
  NOR2X1M U104 ( .A(n26), .B(n38), .Y(\ab[1][5] ) );
  NOR2X1M U105 ( .A(n27), .B(n38), .Y(\ab[1][4] ) );
  NOR2X1M U106 ( .A(n28), .B(n38), .Y(\ab[1][3] ) );
  NOR2X1M U107 ( .A(n29), .B(n38), .Y(\ab[1][2] ) );
  NOR2X1M U108 ( .A(n30), .B(n38), .Y(\ab[1][1] ) );
  NOR2X1M U109 ( .A(n31), .B(n38), .Y(\ab[1][0] ) );
  NOR2X1M U110 ( .A(n24), .B(n39), .Y(\ab[0][7] ) );
  NOR2X1M U111 ( .A(n25), .B(n39), .Y(\ab[0][6] ) );
  NOR2X1M U112 ( .A(n26), .B(n39), .Y(\ab[0][5] ) );
  NOR2X1M U113 ( .A(n27), .B(n39), .Y(\ab[0][4] ) );
  NOR2X1M U114 ( .A(n28), .B(n39), .Y(\ab[0][3] ) );
  NOR2X1M U115 ( .A(n29), .B(n39), .Y(\ab[0][2] ) );
  NOR2X1M U116 ( .A(n30), .B(n39), .Y(\ab[0][1] ) );
  NOR2X1M U117 ( .A(n31), .B(n39), .Y(PRODUCT[0]) );
  ALU_OPER_WIDTH8_OUT_WIDTH16_DW01_add_1 FS_1 ( .A({1'b0, \A1[12] , \A1[11] , 
        \A1[10] , \A1[9] , \A1[8] , \A1[7] , \A1[6] , \SUMB[7][0] , \A1[4] , 
        \A1[3] , \A1[2] , \A1[1] , \A1[0] }), .B({n10, n14, n16, n13, n15, n12, 
        n11, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .CI(1'b0), .SUM(
        PRODUCT[15:2]) );
endmodule


module ALU_OPER_WIDTH8_OUT_WIDTH16_test_1 ( A, B, EN, ALU_FUN, CLK, RST, 
        ALU_OUT, OUT_VALID, test_si, test_se );
  input [7:0] A;
  input [7:0] B;
  input [3:0] ALU_FUN;
  output [15:0] ALU_OUT;
  input EN, CLK, RST, test_si, test_se;
  output OUT_VALID;
  wire   N67, N68, N69, N70, N71, N72, N73, N74, N75, N76, N77, N78, N79, N80,
         N81, N82, N83, N84, N85, N86, N87, N88, N89, N90, N91, N92, N93, N94,
         N95, N96, N97, N98, N99, N100, N101, N102, N103, N104, N105, N106,
         N107, N108, N157, N158, N159, n48, n49, n50, n51, n52, n53, n54, n55,
         n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69,
         n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83,
         n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97,
         n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109,
         n110, n111, n112, n113, n114, n115, n116, n117, n118, n119, n120,
         n121, n122, n123, n124, n3, n4, n5, n6, n7, n8, n9, n27, n28, n29,
         n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43,
         n44, n45, n46, n47, n125, n126, n127, n128, n129, n130, n131, n132,
         n133, n134, n135, n136, n137, n138, n139, n140, n141, n142, n143,
         n144, n145, n146, n147, n148, n149, n150, n151, n152, n153, n154,
         n155, n156, n157;
  wire   [15:0] ALU_OUT_Comb;

  SDFFRQX2M \ALU_OUT_reg[15]  ( .D(ALU_OUT_Comb[15]), .SI(ALU_OUT[14]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(ALU_OUT[15]) );
  SDFFRQX2M \ALU_OUT_reg[14]  ( .D(ALU_OUT_Comb[14]), .SI(ALU_OUT[13]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(ALU_OUT[14]) );
  SDFFRQX2M \ALU_OUT_reg[13]  ( .D(ALU_OUT_Comb[13]), .SI(ALU_OUT[12]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(ALU_OUT[13]) );
  SDFFRQX2M \ALU_OUT_reg[12]  ( .D(ALU_OUT_Comb[12]), .SI(ALU_OUT[11]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(ALU_OUT[12]) );
  SDFFRQX2M \ALU_OUT_reg[11]  ( .D(ALU_OUT_Comb[11]), .SI(ALU_OUT[10]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(ALU_OUT[11]) );
  SDFFRQX2M \ALU_OUT_reg[10]  ( .D(ALU_OUT_Comb[10]), .SI(ALU_OUT[9]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(ALU_OUT[10]) );
  SDFFRQX2M \ALU_OUT_reg[9]  ( .D(ALU_OUT_Comb[9]), .SI(ALU_OUT[8]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(ALU_OUT[9]) );
  SDFFRQX2M \ALU_OUT_reg[8]  ( .D(ALU_OUT_Comb[8]), .SI(ALU_OUT[7]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(ALU_OUT[8]) );
  SDFFRQX2M \ALU_OUT_reg[7]  ( .D(ALU_OUT_Comb[7]), .SI(ALU_OUT[6]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(ALU_OUT[7]) );
  SDFFRQX2M \ALU_OUT_reg[6]  ( .D(ALU_OUT_Comb[6]), .SI(ALU_OUT[5]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(ALU_OUT[6]) );
  SDFFRQX2M \ALU_OUT_reg[5]  ( .D(ALU_OUT_Comb[5]), .SI(ALU_OUT[4]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(ALU_OUT[5]) );
  SDFFRQX2M \ALU_OUT_reg[4]  ( .D(ALU_OUT_Comb[4]), .SI(ALU_OUT[3]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(ALU_OUT[4]) );
  SDFFRQX2M \ALU_OUT_reg[3]  ( .D(ALU_OUT_Comb[3]), .SI(ALU_OUT[2]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(ALU_OUT[3]) );
  SDFFRQX2M \ALU_OUT_reg[2]  ( .D(ALU_OUT_Comb[2]), .SI(ALU_OUT[1]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(ALU_OUT[2]) );
  SDFFRQX2M \ALU_OUT_reg[1]  ( .D(ALU_OUT_Comb[1]), .SI(ALU_OUT[0]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(ALU_OUT[1]) );
  SDFFRQX2M \ALU_OUT_reg[0]  ( .D(ALU_OUT_Comb[0]), .SI(test_si), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(ALU_OUT[0]) );
  SDFFRQX2M OUT_VALID_reg ( .D(EN), .SI(ALU_OUT[15]), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(OUT_VALID) );
  BUFX2M U7 ( .A(A[6]), .Y(n28) );
  OAI2BB1X2M U23 ( .A0N(n157), .A1N(n122), .B0(n118), .Y(n64) );
  OAI2BB1X2M U24 ( .A0N(n117), .A1N(n116), .B0(n118), .Y(n65) );
  NOR2BX2M U25 ( .AN(n123), .B(n154), .Y(n54) );
  AND2X2M U26 ( .A(n116), .B(n122), .Y(n59) );
  NOR2BX2M U27 ( .AN(n52), .B(n152), .Y(n48) );
  AND2X2M U28 ( .A(n123), .B(n122), .Y(n67) );
  BUFX2M U29 ( .A(n58), .Y(n30) );
  NOR2X2M U30 ( .A(n124), .B(n154), .Y(n58) );
  INVX2M U31 ( .A(n117), .Y(n154) );
  INVX2M U32 ( .A(n108), .Y(n155) );
  OAI2BB1X2M U33 ( .A0N(N94), .A1N(n48), .B0(n49), .Y(ALU_OUT_Comb[9]) );
  OAI2BB1X2M U34 ( .A0N(N95), .A1N(n48), .B0(n49), .Y(ALU_OUT_Comb[10]) );
  OAI2BB1X2M U35 ( .A0N(N96), .A1N(n48), .B0(n49), .Y(ALU_OUT_Comb[11]) );
  OAI2BB1X2M U36 ( .A0N(N97), .A1N(n48), .B0(n49), .Y(ALU_OUT_Comb[12]) );
  OAI2BB1X2M U37 ( .A0N(N98), .A1N(n48), .B0(n49), .Y(ALU_OUT_Comb[13]) );
  OAI2BB1X2M U38 ( .A0N(N99), .A1N(n48), .B0(n49), .Y(ALU_OUT_Comb[14]) );
  OAI2BB1X2M U39 ( .A0N(N100), .A1N(n48), .B0(n49), .Y(ALU_OUT_Comb[15]) );
  INVX2M U40 ( .A(n124), .Y(n157) );
  NOR3BX2M U41 ( .AN(n122), .B(n156), .C(ALU_FUN[2]), .Y(n66) );
  NOR3X2M U42 ( .A(n154), .B(ALU_FUN[2]), .C(n156), .Y(n52) );
  NOR2X2M U43 ( .A(ALU_FUN[2]), .B(ALU_FUN[1]), .Y(n123) );
  AND3X2M U44 ( .A(n123), .B(n153), .C(n3), .Y(n63) );
  NAND3X2M U45 ( .A(n157), .B(n153), .C(n3), .Y(n53) );
  NAND2X2M U46 ( .A(ALU_FUN[2]), .B(ALU_FUN[1]), .Y(n124) );
  INVX2M U47 ( .A(ALU_FUN[0]), .Y(n153) );
  NOR2X2M U48 ( .A(n153), .B(n3), .Y(n122) );
  NOR2X2M U49 ( .A(n3), .B(ALU_FUN[0]), .Y(n117) );
  NAND3X2M U50 ( .A(n3), .B(ALU_FUN[0]), .C(n116), .Y(n108) );
  INVX2M U51 ( .A(ALU_FUN[1]), .Y(n156) );
  NAND3X2M U52 ( .A(n123), .B(ALU_FUN[0]), .C(n3), .Y(n118) );
  NAND2X2M U53 ( .A(EN), .B(n140), .Y(n49) );
  AND2X2M U54 ( .A(ALU_FUN[2]), .B(n156), .Y(n116) );
  AND4X2M U55 ( .A(N159), .B(n116), .C(n3), .D(n153), .Y(n107) );
  INVX2M U56 ( .A(EN), .Y(n152) );
  INVX2M U57 ( .A(n4), .Y(n139) );
  OAI222X1M U58 ( .A0(n72), .A1(n139), .B0(n4), .B1(n73), .C0(n53), .C1(n146), 
        .Y(n71) );
  AOI221XLM U59 ( .A0(n28), .A1(n63), .B0(n64), .B1(n145), .C0(n30), .Y(n73)
         );
  AOI221XLM U60 ( .A0(n63), .A1(n145), .B0(n28), .B1(n65), .C0(n59), .Y(n72)
         );
  AOI31X2M U61 ( .A0(n92), .A1(n93), .A2(n94), .B0(n152), .Y(ALU_OUT_Comb[2])
         );
  AOI22X1M U62 ( .A0(N78), .A1(n67), .B0(N69), .B1(n54), .Y(n92) );
  AOI221XLM U63 ( .A0(n8), .A1(n155), .B0(n30), .B1(n149), .C0(n95), .Y(n94)
         );
  AOI222X1M U64 ( .A0(N87), .A1(n52), .B0(n7), .B1(n59), .C0(N103), .C1(n66), 
        .Y(n93) );
  AOI31X2M U65 ( .A0(n86), .A1(n87), .A2(n88), .B0(n152), .Y(ALU_OUT_Comb[3])
         );
  AOI22X1M U66 ( .A0(N79), .A1(n67), .B0(N70), .B1(n54), .Y(n86) );
  AOI221XLM U67 ( .A0(n9), .A1(n155), .B0(n30), .B1(n148), .C0(n89), .Y(n88)
         );
  AOI222X1M U68 ( .A0(N88), .A1(n52), .B0(n8), .B1(n59), .C0(N104), .C1(n66), 
        .Y(n87) );
  AOI31X2M U69 ( .A0(n80), .A1(n81), .A2(n82), .B0(n152), .Y(ALU_OUT_Comb[4])
         );
  AOI22X1M U70 ( .A0(N80), .A1(n67), .B0(N71), .B1(n54), .Y(n80) );
  AOI221XLM U71 ( .A0(n155), .A1(n27), .B0(n30), .B1(n147), .C0(n83), .Y(n82)
         );
  AOI222X1M U72 ( .A0(N89), .A1(n52), .B0(n9), .B1(n59), .C0(N105), .C1(n66), 
        .Y(n81) );
  AOI31X2M U73 ( .A0(n74), .A1(n75), .A2(n76), .B0(n152), .Y(ALU_OUT_Comb[5])
         );
  AOI22X1M U74 ( .A0(N81), .A1(n67), .B0(N72), .B1(n54), .Y(n74) );
  AOI221XLM U75 ( .A0(n155), .A1(n28), .B0(n30), .B1(n146), .C0(n77), .Y(n76)
         );
  AOI222X1M U76 ( .A0(N90), .A1(n52), .B0(n27), .B1(n59), .C0(N106), .C1(n66), 
        .Y(n75) );
  AOI31X2M U77 ( .A0(n68), .A1(n69), .A2(n70), .B0(n152), .Y(ALU_OUT_Comb[6])
         );
  AOI22X1M U78 ( .A0(N82), .A1(n67), .B0(N73), .B1(n54), .Y(n68) );
  AOI221XLM U79 ( .A0(n155), .A1(n29), .B0(n30), .B1(n145), .C0(n71), .Y(n70)
         );
  AOI222X1M U80 ( .A0(N91), .A1(n52), .B0(n59), .B1(n28), .C0(N107), .C1(n66), 
        .Y(n69) );
  AOI31X2M U81 ( .A0(n55), .A1(n56), .A2(n57), .B0(n152), .Y(ALU_OUT_Comb[7])
         );
  AOI22X1M U82 ( .A0(N108), .A1(n66), .B0(N92), .B1(n52), .Y(n56) );
  AOI22X1M U83 ( .A0(N83), .A1(n67), .B0(N74), .B1(n54), .Y(n55) );
  AOI221XLM U84 ( .A0(n30), .A1(n144), .B0(n59), .B1(n29), .C0(n60), .Y(n57)
         );
  AOI31X2M U85 ( .A0(n110), .A1(n111), .A2(n112), .B0(n152), .Y(
        ALU_OUT_Comb[0]) );
  AOI22X1M U86 ( .A0(N76), .A1(n67), .B0(N67), .B1(n54), .Y(n110) );
  AOI211X2M U87 ( .A0(n30), .A1(n151), .B0(n113), .C0(n114), .Y(n112) );
  AOI222X1M U88 ( .A0(N85), .A1(n52), .B0(n5), .B1(n59), .C0(N101), .C1(n66), 
        .Y(n111) );
  AOI31X2M U89 ( .A0(n98), .A1(n99), .A2(n100), .B0(n152), .Y(ALU_OUT_Comb[1])
         );
  AOI211X2M U90 ( .A0(n7), .A1(n155), .B0(n101), .C0(n102), .Y(n100) );
  AOI222X1M U91 ( .A0(N102), .A1(n66), .B0(n30), .B1(n150), .C0(n6), .C1(n59), 
        .Y(n99) );
  AOI222X1M U92 ( .A0(N68), .A1(n54), .B0(N86), .B1(n52), .C0(N77), .C1(n67), 
        .Y(n98) );
  INVX2M U93 ( .A(n109), .Y(n140) );
  AOI211X2M U94 ( .A0(N84), .A1(n67), .B0(n30), .C0(n64), .Y(n109) );
  AOI21X2M U95 ( .A0(n50), .A1(n51), .B0(n152), .Y(ALU_OUT_Comb[8]) );
  AOI21X2M U96 ( .A0(N75), .A1(n54), .B0(n140), .Y(n50) );
  AOI2BB2XLM U97 ( .B0(N93), .B1(n52), .A0N(n144), .A1N(n53), .Y(n51) );
  BUFX2M U98 ( .A(ALU_FUN[3]), .Y(n3) );
  INVX2M U99 ( .A(n6), .Y(n150) );
  INVX2M U100 ( .A(n5), .Y(n151) );
  INVX2M U101 ( .A(n28), .Y(n145) );
  INVX2M U102 ( .A(n29), .Y(n144) );
  INVX2M U103 ( .A(n8), .Y(n148) );
  INVX2M U104 ( .A(n7), .Y(n149) );
  INVX2M U105 ( .A(n27), .Y(n146) );
  INVX2M U106 ( .A(n9), .Y(n147) );
  OAI222X1M U107 ( .A0(n96), .A1(n136), .B0(B[2]), .B1(n97), .C0(n53), .C1(
        n150), .Y(n95) );
  AOI221XLM U108 ( .A0(n7), .A1(n63), .B0(n64), .B1(n149), .C0(n30), .Y(n97)
         );
  AOI221XLM U109 ( .A0(n63), .A1(n149), .B0(n7), .B1(n65), .C0(n59), .Y(n96)
         );
  OAI222X1M U110 ( .A0(n90), .A1(n138), .B0(B[3]), .B1(n91), .C0(n53), .C1(
        n149), .Y(n89) );
  AOI221XLM U111 ( .A0(n8), .A1(n63), .B0(n64), .B1(n148), .C0(n30), .Y(n91)
         );
  AOI221XLM U112 ( .A0(n63), .A1(n148), .B0(n8), .B1(n65), .C0(n59), .Y(n90)
         );
  OAI222X1M U113 ( .A0(n84), .A1(n143), .B0(B[4]), .B1(n85), .C0(n53), .C1(
        n148), .Y(n83) );
  INVX2M U114 ( .A(B[4]), .Y(n143) );
  AOI221XLM U115 ( .A0(n9), .A1(n63), .B0(n64), .B1(n147), .C0(n30), .Y(n85)
         );
  AOI221XLM U116 ( .A0(n63), .A1(n147), .B0(n9), .B1(n65), .C0(n59), .Y(n84)
         );
  OAI222X1M U117 ( .A0(n78), .A1(n142), .B0(B[5]), .B1(n79), .C0(n53), .C1(
        n147), .Y(n77) );
  INVX2M U118 ( .A(B[5]), .Y(n142) );
  AOI221XLM U119 ( .A0(n27), .A1(n63), .B0(n64), .B1(n146), .C0(n30), .Y(n79)
         );
  AOI221XLM U120 ( .A0(n63), .A1(n146), .B0(n27), .B1(n65), .C0(n59), .Y(n78)
         );
  OAI222X1M U121 ( .A0(n61), .A1(n141), .B0(B[7]), .B1(n62), .C0(n53), .C1(
        n145), .Y(n60) );
  INVX2M U122 ( .A(B[7]), .Y(n141) );
  AOI221XLM U123 ( .A0(n63), .A1(n29), .B0(n64), .B1(n144), .C0(n30), .Y(n62)
         );
  AOI221XLM U124 ( .A0(n63), .A1(n144), .B0(n29), .B1(n65), .C0(n59), .Y(n61)
         );
  INVX2M U125 ( .A(n31), .Y(n135) );
  OAI2B2X1M U126 ( .A1N(B[0]), .A0(n115), .B0(n108), .B1(n150), .Y(n114) );
  AOI221XLM U127 ( .A0(n63), .A1(n151), .B0(n5), .B1(n65), .C0(n59), .Y(n115)
         );
  OAI2B2X1M U128 ( .A1N(B[1]), .A0(n103), .B0(n53), .B1(n151), .Y(n102) );
  AOI221XLM U129 ( .A0(n63), .A1(n150), .B0(n6), .B1(n65), .C0(n59), .Y(n103)
         );
  INVX2M U130 ( .A(n42), .Y(n137) );
  OAI21X2M U131 ( .A0(B[0]), .A1(n119), .B0(n120), .Y(n113) );
  AOI31X2M U132 ( .A0(N157), .A1(n3), .A2(n121), .B0(n107), .Y(n120) );
  AOI221XLM U133 ( .A0(n5), .A1(n63), .B0(n64), .B1(n151), .C0(n30), .Y(n119)
         );
  NOR3X2M U134 ( .A(n156), .B(ALU_FUN[2]), .C(ALU_FUN[0]), .Y(n121) );
  OAI21X2M U135 ( .A0(B[1]), .A1(n104), .B0(n105), .Y(n101) );
  AOI31X2M U136 ( .A0(N158), .A1(n3), .A2(n106), .B0(n107), .Y(n105) );
  AOI221XLM U137 ( .A0(n6), .A1(n63), .B0(n64), .B1(n150), .C0(n30), .Y(n104)
         );
  NOR3X2M U138 ( .A(n153), .B(ALU_FUN[2]), .C(n156), .Y(n106) );
  BUFX2M U139 ( .A(A[7]), .Y(n29) );
  BUFX2M U140 ( .A(A[1]), .Y(n6) );
  BUFX2M U141 ( .A(A[0]), .Y(n5) );
  BUFX2M U142 ( .A(A[3]), .Y(n8) );
  BUFX2M U143 ( .A(A[2]), .Y(n7) );
  BUFX2M U144 ( .A(A[5]), .Y(n27) );
  BUFX2M U145 ( .A(A[4]), .Y(n9) );
  BUFX2M U146 ( .A(B[6]), .Y(n4) );
  INVX2M U147 ( .A(B[0]), .Y(n134) );
  INVX2M U148 ( .A(B[2]), .Y(n136) );
  INVX2M U149 ( .A(B[3]), .Y(n138) );
  NOR2X1M U150 ( .A(n144), .B(B[7]), .Y(n130) );
  NAND2BX1M U151 ( .AN(B[4]), .B(n9), .Y(n46) );
  NAND2BX1M U152 ( .AN(n9), .B(B[4]), .Y(n35) );
  CLKNAND2X2M U153 ( .A(n46), .B(n35), .Y(n125) );
  NOR2X1M U154 ( .A(n138), .B(n8), .Y(n43) );
  NOR2X1M U155 ( .A(n136), .B(n7), .Y(n34) );
  NOR2X1M U156 ( .A(n134), .B(n5), .Y(n31) );
  CLKNAND2X2M U157 ( .A(n7), .B(n136), .Y(n45) );
  NAND2BX1M U158 ( .AN(n34), .B(n45), .Y(n40) );
  AOI21X1M U159 ( .A0(n31), .A1(n150), .B0(B[1]), .Y(n32) );
  AOI211X1M U160 ( .A0(n6), .A1(n135), .B0(n40), .C0(n32), .Y(n33) );
  CLKNAND2X2M U161 ( .A(n8), .B(n138), .Y(n44) );
  OAI31X1M U162 ( .A0(n43), .A1(n34), .A2(n33), .B0(n44), .Y(n36) );
  NAND2BX1M U163 ( .AN(n27), .B(B[5]), .Y(n128) );
  OAI211X1M U164 ( .A0(n125), .A1(n36), .B0(n35), .C0(n128), .Y(n37) );
  NAND2BX1M U165 ( .AN(B[5]), .B(n27), .Y(n47) );
  XNOR2X1M U166 ( .A(n28), .B(n4), .Y(n127) );
  AOI32X1M U167 ( .A0(n37), .A1(n47), .A2(n127), .B0(n4), .B1(n145), .Y(n38)
         );
  CLKNAND2X2M U168 ( .A(B[7]), .B(n144), .Y(n131) );
  OAI21X1M U169 ( .A0(n130), .A1(n38), .B0(n131), .Y(N159) );
  CLKNAND2X2M U170 ( .A(n5), .B(n134), .Y(n41) );
  OA21X1M U171 ( .A0(n41), .A1(n150), .B0(B[1]), .Y(n39) );
  AOI211X1M U172 ( .A0(n41), .A1(n150), .B0(n40), .C0(n39), .Y(n42) );
  AOI31X1M U173 ( .A0(n137), .A1(n45), .A2(n44), .B0(n43), .Y(n126) );
  OAI2B11X1M U174 ( .A1N(n126), .A0(n125), .B0(n47), .C0(n46), .Y(n129) );
  AOI32X1M U175 ( .A0(n129), .A1(n128), .A2(n127), .B0(n28), .B1(n139), .Y(
        n132) );
  AOI2B1X1M U176 ( .A1N(n132), .A0(n131), .B0(n130), .Y(n133) );
  CLKINVX1M U177 ( .A(n133), .Y(N158) );
  NOR2X1M U178 ( .A(N159), .B(N158), .Y(N157) );
  ALU_OPER_WIDTH8_OUT_WIDTH16_DW_div_uns_0 div_52 ( .a({n29, n28, n27, n9, n8, 
        n7, n6, n5}), .b({B[7], n4, B[5:0]}), .quotient({N108, N107, N106, 
        N105, N104, N103, N102, N101}) );
  ALU_OPER_WIDTH8_OUT_WIDTH16_DW01_sub_0 sub_46 ( .A({1'b0, n29, n28, n27, n9, 
        n8, n7, n6, n5}), .B({1'b0, B[7], n4, B[5:0]}), .CI(1'b0), .DIFF({N84, 
        N83, N82, N81, N80, N79, N78, N77, N76}) );
  ALU_OPER_WIDTH8_OUT_WIDTH16_DW01_add_0 add_43 ( .A({1'b0, n29, n28, n27, n9, 
        n8, n7, n6, n5}), .B({1'b0, B[7], n4, B[5:0]}), .CI(1'b0), .SUM({N75, 
        N74, N73, N72, N71, N70, N69, N68, N67}) );
  ALU_OPER_WIDTH8_OUT_WIDTH16_DW02_mult_0 mult_49 ( .A({n29, n28, n27, n9, n8, 
        n7, n6, n5}), .B({B[7], n4, B[5:0]}), .TC(1'b0), .PRODUCT({N100, N99, 
        N98, N97, N96, N95, N94, N93, N92, N91, N90, N89, N88, N87, N86, N85})
         );
endmodule


module CLK_GATE ( CLK_EN, CLK, GATED_CLK );
  input CLK_EN, CLK;
  output GATED_CLK;


  TLATNCAX12M U0_TLATNCAX12M ( .E(CLK_EN), .CK(CLK), .ECK(GATED_CLK) );
endmodule


module SYS_TOP_dft ( RST_N, UART_CLK, REF_CLK, UART_RX_IN, SCAN_IN, SCAN_EN, 
        SCAN_CLK, SCAN_RST, TEST_MODE, UART_TX_O, parity_error, framing_error, 
        SCAN_OUT, test_si2, test_so2, test_si3, test_so3, test_si4, test_so4
 );
  input RST_N, UART_CLK, REF_CLK, UART_RX_IN, SCAN_IN, SCAN_EN, SCAN_CLK,
         SCAN_RST, TEST_MODE, test_si2, test_si3, test_si4;
  output UART_TX_O, parity_error, framing_error, SCAN_OUT, test_so2, test_so3,
         test_so4;
  wire   UART_CLK_M, REF_CLK_M, TX_CLK, TX_CLK_M, RX_CLK, RX_CLK_M, RST_N_M,
         SYNC_RST_0, SYNC_RST_0_M, SYNC_RST_1, SYNC_RST_1_M, RX_OUT_V,
         RX_D_VLD, FIFO_WrInc, FIFO_RINC, FIFO_EMPTY, FIFO_FULL, TX_BUSY,
         ALU_OUT_Valid, RegFile_RdData_Valid, ClkGating_EN, ALU_EN,
         RegFile_WrEn, RegFile_RdEn, ALU_CLK, _4_net_, n1, n2, n3, n4, n5, n6,
         n7, n8, n11, n12, n16, n17, n20, n21, n22, n24, n25, n26, n27, n28,
         n29, n30, n31, n32, n33, n34, n35, n36;
  wire   [7:0] RX_OUT_P;
  wire   [7:0] RX_P_Data;
  wire   [7:0] FIFO_WrData;
  wire   [7:0] FIFO_RD_DATA;
  wire   [7:0] REG3;
  wire   [7:0] REG2;
  wire   [3:0] RX_CLK_div_ratio;
  wire   [15:0] ALU_OUT;
  wire   [7:0] RegFile_RdData;
  wire   [3:0] ALU_FUN;
  wire   [3:0] RegFile_Address;
  wire   [7:0] RegFile_WrData;
  wire   [7:0] REG0;
  wire   [7:0] REG1;
  assign test_so2 = REG1[7];

  BUFX2M U5 ( .A(RegFile_Address[0]), .Y(n3) );
  BUFX2M U6 ( .A(RegFile_Address[1]), .Y(n4) );
  INVX2M U7 ( .A(FIFO_EMPTY), .Y(n1) );
  OR2X2M U8 ( .A(ClkGating_EN), .B(n2), .Y(_4_net_) );
  INVX4M U9 ( .A(n8), .Y(n7) );
  INVX2M U10 ( .A(SYNC_RST_0_M), .Y(n8) );
  INVX4M U11 ( .A(n6), .Y(n5) );
  INVX2M U12 ( .A(SYNC_RST_1_M), .Y(n6) );
  BUFX2M U13 ( .A(TEST_MODE), .Y(n2) );
  INVXLM U14 ( .A(n34), .Y(n24) );
  INVXLM U15 ( .A(n24), .Y(n25) );
  DLY1X1M U16 ( .A(n33), .Y(n26) );
  DLY1X1M U17 ( .A(n33), .Y(n27) );
  DLY1X1M U18 ( .A(n30), .Y(n28) );
  INVXLM U19 ( .A(n35), .Y(n29) );
  INVXLM U20 ( .A(n29), .Y(n30) );
  INVXLM U21 ( .A(n29), .Y(n31) );
  INVXLM U22 ( .A(SCAN_EN), .Y(n32) );
  INVXLM U23 ( .A(n32), .Y(n33) );
  INVXLM U24 ( .A(n32), .Y(n34) );
  INVXLM U25 ( .A(n32), .Y(n35) );
  INVXLM U26 ( .A(n32), .Y(n36) );
  MUX_2x1_1 UART_CLK_MUX ( .in0(UART_CLK), .in1(SCAN_CLK), .sel(n2), .out(
        UART_CLK_M) );
  MUX_2x1_4 REF_CLK_MUX ( .in0(REF_CLK), .in1(SCAN_CLK), .sel(n2), .out(
        REF_CLK_M) );
  MUX_2x1_3 TX_CLK_MUX ( .in0(TX_CLK), .in1(SCAN_CLK), .sel(n2), .out(TX_CLK_M) );
  MUX_2x1_2 RX_CLK_MUX ( .in0(RX_CLK), .in1(SCAN_CLK), .sel(n2), .out(RX_CLK_M) );
  MUX_2x1_0 RST_MUX ( .in0(RST_N), .in1(SCAN_RST), .sel(n2), .out(RST_N_M) );
  MUX_2x1_6 SYNC_RST_0_MUX ( .in0(SYNC_RST_0), .in1(SCAN_RST), .sel(n2), .out(
        SYNC_RST_0_M) );
  MUX_2x1_5 SYNC_RST_1_MUX ( .in0(SYNC_RST_1), .in1(SCAN_RST), .sel(n2), .out(
        SYNC_RST_1_M) );
  RST_SYNC_NUM_STAGES2_test_0 RST_SYNC_U0 ( .rst(RST_N_M), .clk(REF_CLK_M), 
        .sync_rst(SYNC_RST_0), .test_si(n16), .test_se(n27) );
  RST_SYNC_NUM_STAGES2_test_1 RST_SYNC_U1 ( .rst(RST_N_M), .clk(UART_CLK_M), 
        .sync_rst(SYNC_RST_1), .test_si(SYNC_RST_0), .test_se(n28) );
  DATA_SYNC_NUM_STAGES2_BUS_WIDTH8_test_1 DATA_SYNC_U0 ( .unsync_bus(RX_OUT_P), 
        .bus_enable(RX_OUT_V), .clk(REF_CLK_M), .rst(n7), .sync_bus(RX_P_Data), 
        .enable_pulse(RX_D_VLD), .test_si(n21), .test_so(n20), .test_se(n25)
         );
  FIFO_DATA_WIDTH8_test_1 FIFO_U0 ( .w_clk(REF_CLK_M), .w_rst_n(n7), .wr_data(
        FIFO_WrData), .w_inc(FIFO_WrInc), .r_clk(TX_CLK_M), .r_inc(FIFO_RINC), 
        .r_rst_n(n5), .rd_data(FIFO_RD_DATA), .empty(FIFO_EMPTY), .full(
        FIFO_FULL), .test_si2(test_si2), .test_si1(n20), .test_so2(n17), 
        .test_so1(SCAN_OUT), .test_se(SCAN_EN) );
  PULSE_GEN_test_1 PULSE_GEN_U0 ( .clk(TX_CLK_M), .rst(n5), .lvl_sig(TX_BUSY), 
        .pulse_sig(FIFO_RINC), .test_si(n17), .test_so(n16), .test_se(n35) );
  Clk_Div_test_0 Clk_Div_U0 ( .i_ref_clk(UART_CLK_M), .i_rst_n(n5), .i_clk_en(
        1'b1), .i_div_ratio(REG3), .o_div_clk(TX_CLK), .test_si(ALU_OUT_Valid), 
        .test_so(n22), .test_se(n35) );
  CLKDIV_MUX_WIDTH4 CLKDIV_MUX_U0 ( .IN(REG2[7:2]), .OUT(RX_CLK_div_ratio) );
  Clk_Div_test_1 Clk_Div_U1 ( .i_ref_clk(UART_CLK_M), .i_rst_n(n5), .i_clk_en(
        1'b1), .i_div_ratio({1'b0, 1'b0, 1'b0, 1'b0, RX_CLK_div_ratio}), 
        .o_div_clk(RX_CLK), .test_si(n22), .test_so(n21), .test_se(n36) );
  UART_test_1 UART_U0 ( .RST(n5), .TX_CLK(TX_CLK_M), .RX_CLK(RX_CLK_M), 
        .RX_IN_S(UART_RX_IN), .RX_OUT_P(RX_OUT_P), .RX_OUT_V(RX_OUT_V), 
        .TX_IN_P(FIFO_RD_DATA), .TX_IN_V(n1), .TX_OUT_S(UART_TX_O), .TX_OUT_V(
        TX_BUSY), .Prescale(REG2[7:2]), .parity_enable(REG2[0]), .parity_type(
        REG2[1]), .parity_error(parity_error), .framing_error(framing_error), 
        .test_si(n11), .test_so(test_so4), .test_se(n26) );
  SYS_CTRL_test_1 SYS_CTRL_U0 ( .CLK(REF_CLK_M), .RST(n7), .ALU_OUT(ALU_OUT), 
        .ALU_OUT_Valid(ALU_OUT_Valid), .RX_P_Data(RX_P_Data), .RX_D_VLD(
        RX_D_VLD), .RegFile_RdData(RegFile_RdData), .RegFile_RdData_Valid(
        RegFile_RdData_Valid), .FIFO_FULL(FIFO_FULL), .ClkGating_EN(
        ClkGating_EN), .ALU_EN(ALU_EN), .ALU_FUN(ALU_FUN), .RegFile_Address(
        RegFile_Address), .RegFile_WrEn(RegFile_WrEn), .RegFile_RdEn(
        RegFile_RdEn), .RegFile_WrData(RegFile_WrData), .FIFO_WrData(
        FIFO_WrData), .FIFO_WrInc(FIFO_WrInc), .test_si(n12), .test_so(n11), 
        .test_se(n36) );
  RegFile_WIDTH8_DEPTH16_ADDR4_test_1 RegFile_U0 ( .CLK(REF_CLK_M), .RST(n7), 
        .WrEn(RegFile_WrEn), .RdEn(RegFile_RdEn), .Address({
        RegFile_Address[3:2], n4, n3}), .WrData(RegFile_WrData), .RdData(
        RegFile_RdData), .RdData_VLD(RegFile_RdData_Valid), .REG0(REG0), 
        .REG1(REG1), .REG2(REG2), .REG3(REG3), .test_si3(test_si4), .test_si2(
        test_si3), .test_si1(SYNC_RST_1), .test_so2(n12), .test_so1(test_so3), 
        .test_se(SCAN_EN) );
  ALU_OPER_WIDTH8_OUT_WIDTH16_test_1 ALU_U0 ( .A(REG0), .B(REG1), .EN(ALU_EN), 
        .ALU_FUN(ALU_FUN), .CLK(ALU_CLK), .RST(n7), .ALU_OUT(ALU_OUT), 
        .OUT_VALID(ALU_OUT_Valid), .test_si(SCAN_IN), .test_se(n31) );
  CLK_GATE CLK_GATE_U0 ( .CLK_EN(_4_net_), .CLK(REF_CLK_M), .GATED_CLK(ALU_CLK) );
endmodule

