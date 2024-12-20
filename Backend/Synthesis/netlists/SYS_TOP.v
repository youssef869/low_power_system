/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : K-2015.06
// Date      : Sat Oct 26 06:57:37 2024
/////////////////////////////////////////////////////////////


module RST_SYNC_NUM_STAGES2_0 ( rst, clk, sync_rst );
  input rst, clk;
  output sync_rst;
  wire   \sync_rst_reg[0] ;

  DFFRQX2M \sync_rst_reg_reg[1]  ( .D(\sync_rst_reg[0] ), .CK(clk), .RN(rst), 
        .Q(sync_rst) );
  DFFRQX2M \sync_rst_reg_reg[0]  ( .D(1'b1), .CK(clk), .RN(rst), .Q(
        \sync_rst_reg[0] ) );
endmodule


module RST_SYNC_NUM_STAGES2_1 ( rst, clk, sync_rst );
  input rst, clk;
  output sync_rst;
  wire   \sync_rst_reg[0] ;

  DFFRQX2M \sync_rst_reg_reg[1]  ( .D(\sync_rst_reg[0] ), .CK(clk), .RN(rst), 
        .Q(sync_rst) );
  DFFRQX2M \sync_rst_reg_reg[0]  ( .D(1'b1), .CK(clk), .RN(rst), .Q(
        \sync_rst_reg[0] ) );
endmodule


module DATA_SYNC_NUM_STAGES2_BUS_WIDTH8 ( unsync_bus, bus_enable, clk, rst, 
        sync_bus, enable_pulse );
  input [7:0] unsync_bus;
  output [7:0] sync_bus;
  input bus_enable, clk, rst;
  output enable_pulse;
  wire   pulse_gen_reg, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10;
  wire   [1:0] sync_enable_reg;

  DFFRQX2M pulse_gen_reg_reg ( .D(sync_enable_reg[1]), .CK(clk), .RN(rst), .Q(
        pulse_gen_reg) );
  DFFRQX2M \sync_enable_reg_reg[1]  ( .D(sync_enable_reg[0]), .CK(clk), .RN(
        rst), .Q(sync_enable_reg[1]) );
  DFFRQX2M \sync_bus_reg[7]  ( .D(n9), .CK(clk), .RN(rst), .Q(sync_bus[7]) );
  DFFRQX2M \sync_bus_reg[4]  ( .D(n6), .CK(clk), .RN(rst), .Q(sync_bus[4]) );
  DFFRQX2M \sync_bus_reg[6]  ( .D(n8), .CK(clk), .RN(rst), .Q(sync_bus[6]) );
  DFFRQX2M \sync_bus_reg[5]  ( .D(n7), .CK(clk), .RN(rst), .Q(sync_bus[5]) );
  DFFRQX2M \sync_bus_reg[3]  ( .D(n5), .CK(clk), .RN(rst), .Q(sync_bus[3]) );
  DFFRQX2M \sync_bus_reg[2]  ( .D(n4), .CK(clk), .RN(rst), .Q(sync_bus[2]) );
  DFFRQX2M \sync_bus_reg[1]  ( .D(n3), .CK(clk), .RN(rst), .Q(sync_bus[1]) );
  DFFRQX2M \sync_bus_reg[0]  ( .D(n2), .CK(clk), .RN(rst), .Q(sync_bus[0]) );
  DFFRQX2M enable_pulse_reg ( .D(n10), .CK(clk), .RN(rst), .Q(enable_pulse) );
  DFFRQX2M \sync_enable_reg_reg[0]  ( .D(bus_enable), .CK(clk), .RN(rst), .Q(
        sync_enable_reg[0]) );
  INVX2M U3 ( .A(n1), .Y(n10) );
  NAND2BX2M U4 ( .AN(pulse_gen_reg), .B(sync_enable_reg[1]), .Y(n1) );
  AO22X1M U5 ( .A0(unsync_bus[0]), .A1(n10), .B0(sync_bus[0]), .B1(n1), .Y(n2)
         );
  AO22X1M U6 ( .A0(unsync_bus[1]), .A1(n10), .B0(sync_bus[1]), .B1(n1), .Y(n3)
         );
  AO22X1M U7 ( .A0(unsync_bus[2]), .A1(n10), .B0(sync_bus[2]), .B1(n1), .Y(n4)
         );
  AO22X1M U8 ( .A0(unsync_bus[3]), .A1(n10), .B0(sync_bus[3]), .B1(n1), .Y(n5)
         );
  AO22X1M U9 ( .A0(unsync_bus[4]), .A1(n10), .B0(sync_bus[4]), .B1(n1), .Y(n6)
         );
  AO22X1M U10 ( .A0(unsync_bus[5]), .A1(n10), .B0(sync_bus[5]), .B1(n1), .Y(n7) );
  AO22X1M U11 ( .A0(unsync_bus[6]), .A1(n10), .B0(sync_bus[6]), .B1(n1), .Y(n8) );
  AO22X1M U12 ( .A0(unsync_bus[7]), .A1(n10), .B0(sync_bus[7]), .B1(n1), .Y(n9) );
endmodule


module FIFO_MEM_CNTRL_DATA_WIDTH8 ( w_clk, w_rst_n, w_data, w_clken, w_addr, 
        r_addr, r_data );
  input [7:0] w_data;
  input [2:0] w_addr;
  input [2:0] r_addr;
  output [7:0] r_data;
  input w_clk, w_rst_n, w_clken;
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
         \FIFO_BUFFER[0][1] , \FIFO_BUFFER[0][0] , n11, n12, n13, n14, n15,
         n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29,
         n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43,
         n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57,
         n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71,
         n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n1,
         n2, n3, n4, n5, n6, n7, n8, n9, n10, n85, n86, n87, n88, n89, n90,
         n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103,
         n104, n105, n106, n107, n108, n109, n110, n111;
  assign N10 = r_addr[0];
  assign N11 = r_addr[1];
  assign N12 = r_addr[2];

  DFFRQX2M \FIFO_BUFFER_reg[5][7]  ( .D(n68), .CK(w_clk), .RN(n98), .Q(
        \FIFO_BUFFER[5][7] ) );
  DFFRQX2M \FIFO_BUFFER_reg[5][6]  ( .D(n67), .CK(w_clk), .RN(n98), .Q(
        \FIFO_BUFFER[5][6] ) );
  DFFRQX2M \FIFO_BUFFER_reg[5][5]  ( .D(n66), .CK(w_clk), .RN(n98), .Q(
        \FIFO_BUFFER[5][5] ) );
  DFFRQX2M \FIFO_BUFFER_reg[5][4]  ( .D(n65), .CK(w_clk), .RN(n98), .Q(
        \FIFO_BUFFER[5][4] ) );
  DFFRQX2M \FIFO_BUFFER_reg[5][3]  ( .D(n64), .CK(w_clk), .RN(n98), .Q(
        \FIFO_BUFFER[5][3] ) );
  DFFRQX2M \FIFO_BUFFER_reg[5][2]  ( .D(n63), .CK(w_clk), .RN(n98), .Q(
        \FIFO_BUFFER[5][2] ) );
  DFFRQX2M \FIFO_BUFFER_reg[5][1]  ( .D(n62), .CK(w_clk), .RN(n98), .Q(
        \FIFO_BUFFER[5][1] ) );
  DFFRQX2M \FIFO_BUFFER_reg[5][0]  ( .D(n61), .CK(w_clk), .RN(n98), .Q(
        \FIFO_BUFFER[5][0] ) );
  DFFRQX2M \FIFO_BUFFER_reg[1][7]  ( .D(n36), .CK(w_clk), .RN(n100), .Q(
        \FIFO_BUFFER[1][7] ) );
  DFFRQX2M \FIFO_BUFFER_reg[1][6]  ( .D(n35), .CK(w_clk), .RN(n100), .Q(
        \FIFO_BUFFER[1][6] ) );
  DFFRQX2M \FIFO_BUFFER_reg[1][5]  ( .D(n34), .CK(w_clk), .RN(n100), .Q(
        \FIFO_BUFFER[1][5] ) );
  DFFRQX2M \FIFO_BUFFER_reg[1][4]  ( .D(n33), .CK(w_clk), .RN(n100), .Q(
        \FIFO_BUFFER[1][4] ) );
  DFFRQX2M \FIFO_BUFFER_reg[1][3]  ( .D(n32), .CK(w_clk), .RN(n101), .Q(
        \FIFO_BUFFER[1][3] ) );
  DFFRQX2M \FIFO_BUFFER_reg[1][2]  ( .D(n31), .CK(w_clk), .RN(n101), .Q(
        \FIFO_BUFFER[1][2] ) );
  DFFRQX2M \FIFO_BUFFER_reg[1][1]  ( .D(n30), .CK(w_clk), .RN(n101), .Q(
        \FIFO_BUFFER[1][1] ) );
  DFFRQX2M \FIFO_BUFFER_reg[1][0]  ( .D(n29), .CK(w_clk), .RN(n101), .Q(
        \FIFO_BUFFER[1][0] ) );
  DFFRQX2M \FIFO_BUFFER_reg[7][7]  ( .D(n84), .CK(w_clk), .RN(n97), .Q(
        \FIFO_BUFFER[7][7] ) );
  DFFRQX2M \FIFO_BUFFER_reg[7][6]  ( .D(n83), .CK(w_clk), .RN(n97), .Q(
        \FIFO_BUFFER[7][6] ) );
  DFFRQX2M \FIFO_BUFFER_reg[7][5]  ( .D(n82), .CK(w_clk), .RN(n97), .Q(
        \FIFO_BUFFER[7][5] ) );
  DFFRQX2M \FIFO_BUFFER_reg[7][4]  ( .D(n81), .CK(w_clk), .RN(n97), .Q(
        \FIFO_BUFFER[7][4] ) );
  DFFRQX2M \FIFO_BUFFER_reg[7][3]  ( .D(n80), .CK(w_clk), .RN(n97), .Q(
        \FIFO_BUFFER[7][3] ) );
  DFFRQX2M \FIFO_BUFFER_reg[7][2]  ( .D(n79), .CK(w_clk), .RN(n97), .Q(
        \FIFO_BUFFER[7][2] ) );
  DFFRQX2M \FIFO_BUFFER_reg[7][1]  ( .D(n78), .CK(w_clk), .RN(n97), .Q(
        \FIFO_BUFFER[7][1] ) );
  DFFRQX2M \FIFO_BUFFER_reg[7][0]  ( .D(n77), .CK(w_clk), .RN(n97), .Q(
        \FIFO_BUFFER[7][0] ) );
  DFFRQX2M \FIFO_BUFFER_reg[3][7]  ( .D(n52), .CK(w_clk), .RN(n99), .Q(
        \FIFO_BUFFER[3][7] ) );
  DFFRQX2M \FIFO_BUFFER_reg[3][6]  ( .D(n51), .CK(w_clk), .RN(n99), .Q(
        \FIFO_BUFFER[3][6] ) );
  DFFRQX2M \FIFO_BUFFER_reg[3][5]  ( .D(n50), .CK(w_clk), .RN(n99), .Q(
        \FIFO_BUFFER[3][5] ) );
  DFFRQX2M \FIFO_BUFFER_reg[3][4]  ( .D(n49), .CK(w_clk), .RN(n99), .Q(
        \FIFO_BUFFER[3][4] ) );
  DFFRQX2M \FIFO_BUFFER_reg[3][3]  ( .D(n48), .CK(w_clk), .RN(n99), .Q(
        \FIFO_BUFFER[3][3] ) );
  DFFRQX2M \FIFO_BUFFER_reg[3][2]  ( .D(n47), .CK(w_clk), .RN(n99), .Q(
        \FIFO_BUFFER[3][2] ) );
  DFFRQX2M \FIFO_BUFFER_reg[3][1]  ( .D(n46), .CK(w_clk), .RN(n99), .Q(
        \FIFO_BUFFER[3][1] ) );
  DFFRQX2M \FIFO_BUFFER_reg[3][0]  ( .D(n45), .CK(w_clk), .RN(n100), .Q(
        \FIFO_BUFFER[3][0] ) );
  DFFRQX2M \FIFO_BUFFER_reg[6][7]  ( .D(n76), .CK(w_clk), .RN(n97), .Q(
        \FIFO_BUFFER[6][7] ) );
  DFFRQX2M \FIFO_BUFFER_reg[6][6]  ( .D(n75), .CK(w_clk), .RN(n97), .Q(
        \FIFO_BUFFER[6][6] ) );
  DFFRQX2M \FIFO_BUFFER_reg[6][5]  ( .D(n74), .CK(w_clk), .RN(n97), .Q(
        \FIFO_BUFFER[6][5] ) );
  DFFRQX2M \FIFO_BUFFER_reg[6][4]  ( .D(n73), .CK(w_clk), .RN(n97), .Q(
        \FIFO_BUFFER[6][4] ) );
  DFFRQX2M \FIFO_BUFFER_reg[6][3]  ( .D(n72), .CK(w_clk), .RN(n97), .Q(
        \FIFO_BUFFER[6][3] ) );
  DFFRQX2M \FIFO_BUFFER_reg[6][2]  ( .D(n71), .CK(w_clk), .RN(n98), .Q(
        \FIFO_BUFFER[6][2] ) );
  DFFRQX2M \FIFO_BUFFER_reg[6][1]  ( .D(n70), .CK(w_clk), .RN(n98), .Q(
        \FIFO_BUFFER[6][1] ) );
  DFFRQX2M \FIFO_BUFFER_reg[6][0]  ( .D(n69), .CK(w_clk), .RN(n98), .Q(
        \FIFO_BUFFER[6][0] ) );
  DFFRQX2M \FIFO_BUFFER_reg[2][7]  ( .D(n44), .CK(w_clk), .RN(n100), .Q(
        \FIFO_BUFFER[2][7] ) );
  DFFRQX2M \FIFO_BUFFER_reg[2][6]  ( .D(n43), .CK(w_clk), .RN(n100), .Q(
        \FIFO_BUFFER[2][6] ) );
  DFFRQX2M \FIFO_BUFFER_reg[2][5]  ( .D(n42), .CK(w_clk), .RN(n100), .Q(
        \FIFO_BUFFER[2][5] ) );
  DFFRQX2M \FIFO_BUFFER_reg[2][4]  ( .D(n41), .CK(w_clk), .RN(n100), .Q(
        \FIFO_BUFFER[2][4] ) );
  DFFRQX2M \FIFO_BUFFER_reg[2][3]  ( .D(n40), .CK(w_clk), .RN(n100), .Q(
        \FIFO_BUFFER[2][3] ) );
  DFFRQX2M \FIFO_BUFFER_reg[2][2]  ( .D(n39), .CK(w_clk), .RN(n100), .Q(
        \FIFO_BUFFER[2][2] ) );
  DFFRQX2M \FIFO_BUFFER_reg[2][1]  ( .D(n38), .CK(w_clk), .RN(n100), .Q(
        \FIFO_BUFFER[2][1] ) );
  DFFRQX2M \FIFO_BUFFER_reg[2][0]  ( .D(n37), .CK(w_clk), .RN(n100), .Q(
        \FIFO_BUFFER[2][0] ) );
  DFFRQX2M \FIFO_BUFFER_reg[4][7]  ( .D(n60), .CK(w_clk), .RN(n98), .Q(
        \FIFO_BUFFER[4][7] ) );
  DFFRQX2M \FIFO_BUFFER_reg[4][6]  ( .D(n59), .CK(w_clk), .RN(n98), .Q(
        \FIFO_BUFFER[4][6] ) );
  DFFRQX2M \FIFO_BUFFER_reg[4][5]  ( .D(n58), .CK(w_clk), .RN(n99), .Q(
        \FIFO_BUFFER[4][5] ) );
  DFFRQX2M \FIFO_BUFFER_reg[4][4]  ( .D(n57), .CK(w_clk), .RN(n99), .Q(
        \FIFO_BUFFER[4][4] ) );
  DFFRQX2M \FIFO_BUFFER_reg[4][3]  ( .D(n56), .CK(w_clk), .RN(n99), .Q(
        \FIFO_BUFFER[4][3] ) );
  DFFRQX2M \FIFO_BUFFER_reg[4][2]  ( .D(n55), .CK(w_clk), .RN(n99), .Q(
        \FIFO_BUFFER[4][2] ) );
  DFFRQX2M \FIFO_BUFFER_reg[4][1]  ( .D(n54), .CK(w_clk), .RN(n99), .Q(
        \FIFO_BUFFER[4][1] ) );
  DFFRQX2M \FIFO_BUFFER_reg[4][0]  ( .D(n53), .CK(w_clk), .RN(n99), .Q(
        \FIFO_BUFFER[4][0] ) );
  DFFRQX2M \FIFO_BUFFER_reg[0][7]  ( .D(n28), .CK(w_clk), .RN(n101), .Q(
        \FIFO_BUFFER[0][7] ) );
  DFFRQX2M \FIFO_BUFFER_reg[0][6]  ( .D(n27), .CK(w_clk), .RN(n101), .Q(
        \FIFO_BUFFER[0][6] ) );
  DFFRQX2M \FIFO_BUFFER_reg[0][5]  ( .D(n26), .CK(w_clk), .RN(n101), .Q(
        \FIFO_BUFFER[0][5] ) );
  DFFRQX2M \FIFO_BUFFER_reg[0][4]  ( .D(n25), .CK(w_clk), .RN(n101), .Q(
        \FIFO_BUFFER[0][4] ) );
  DFFRQX2M \FIFO_BUFFER_reg[0][3]  ( .D(n24), .CK(w_clk), .RN(n101), .Q(
        \FIFO_BUFFER[0][3] ) );
  DFFRQX2M \FIFO_BUFFER_reg[0][2]  ( .D(n23), .CK(w_clk), .RN(n101), .Q(
        \FIFO_BUFFER[0][2] ) );
  DFFRQX2M \FIFO_BUFFER_reg[0][1]  ( .D(n22), .CK(w_clk), .RN(n101), .Q(
        \FIFO_BUFFER[0][1] ) );
  DFFRQX2M \FIFO_BUFFER_reg[0][0]  ( .D(n21), .CK(w_clk), .RN(n101), .Q(
        \FIFO_BUFFER[0][0] ) );
  NOR2BX2M U2 ( .AN(w_clken), .B(w_addr[2]), .Y(n12) );
  BUFX2M U3 ( .A(n19), .Y(n94) );
  BUFX2M U4 ( .A(n20), .Y(n93) );
  BUFX2M U5 ( .A(n95), .Y(n99) );
  BUFX2M U6 ( .A(n95), .Y(n98) );
  BUFX2M U7 ( .A(n95), .Y(n97) );
  BUFX2M U8 ( .A(n96), .Y(n100) );
  BUFX2M U9 ( .A(n96), .Y(n101) );
  BUFX2M U10 ( .A(w_rst_n), .Y(n95) );
  BUFX2M U11 ( .A(w_rst_n), .Y(n96) );
  NAND3X2M U12 ( .A(n110), .B(n111), .C(n17), .Y(n16) );
  NAND3X2M U13 ( .A(n110), .B(n111), .C(n12), .Y(n11) );
  NAND3X2M U14 ( .A(n12), .B(n110), .C(w_addr[1]), .Y(n14) );
  NAND3X2M U15 ( .A(w_addr[0]), .B(n12), .C(w_addr[1]), .Y(n15) );
  NAND3X2M U16 ( .A(w_addr[0]), .B(n111), .C(n17), .Y(n18) );
  NAND3X2M U17 ( .A(n12), .B(n111), .C(w_addr[0]), .Y(n13) );
  OAI2BB2X1M U18 ( .B0(n11), .B1(n102), .A0N(\FIFO_BUFFER[0][0] ), .A1N(n11), 
        .Y(n21) );
  OAI2BB2X1M U19 ( .B0(n11), .B1(n103), .A0N(\FIFO_BUFFER[0][1] ), .A1N(n11), 
        .Y(n22) );
  OAI2BB2X1M U20 ( .B0(n11), .B1(n104), .A0N(\FIFO_BUFFER[0][2] ), .A1N(n11), 
        .Y(n23) );
  OAI2BB2X1M U21 ( .B0(n11), .B1(n105), .A0N(\FIFO_BUFFER[0][3] ), .A1N(n11), 
        .Y(n24) );
  OAI2BB2X1M U22 ( .B0(n11), .B1(n106), .A0N(\FIFO_BUFFER[0][4] ), .A1N(n11), 
        .Y(n25) );
  OAI2BB2X1M U23 ( .B0(n11), .B1(n107), .A0N(\FIFO_BUFFER[0][5] ), .A1N(n11), 
        .Y(n26) );
  OAI2BB2X1M U24 ( .B0(n11), .B1(n108), .A0N(\FIFO_BUFFER[0][6] ), .A1N(n11), 
        .Y(n27) );
  OAI2BB2X1M U25 ( .B0(n11), .B1(n109), .A0N(\FIFO_BUFFER[0][7] ), .A1N(n11), 
        .Y(n28) );
  OAI2BB2X1M U26 ( .B0(n102), .B1(n15), .A0N(\FIFO_BUFFER[3][0] ), .A1N(n15), 
        .Y(n45) );
  OAI2BB2X1M U27 ( .B0(n103), .B1(n15), .A0N(\FIFO_BUFFER[3][1] ), .A1N(n15), 
        .Y(n46) );
  OAI2BB2X1M U28 ( .B0(n104), .B1(n15), .A0N(\FIFO_BUFFER[3][2] ), .A1N(n15), 
        .Y(n47) );
  OAI2BB2X1M U29 ( .B0(n105), .B1(n15), .A0N(\FIFO_BUFFER[3][3] ), .A1N(n15), 
        .Y(n48) );
  OAI2BB2X1M U30 ( .B0(n106), .B1(n15), .A0N(\FIFO_BUFFER[3][4] ), .A1N(n15), 
        .Y(n49) );
  OAI2BB2X1M U31 ( .B0(n107), .B1(n15), .A0N(\FIFO_BUFFER[3][5] ), .A1N(n15), 
        .Y(n50) );
  OAI2BB2X1M U32 ( .B0(n108), .B1(n15), .A0N(\FIFO_BUFFER[3][6] ), .A1N(n15), 
        .Y(n51) );
  OAI2BB2X1M U33 ( .B0(n109), .B1(n15), .A0N(\FIFO_BUFFER[3][7] ), .A1N(n15), 
        .Y(n52) );
  OAI2BB2X1M U34 ( .B0(n102), .B1(n18), .A0N(\FIFO_BUFFER[5][0] ), .A1N(n18), 
        .Y(n61) );
  OAI2BB2X1M U35 ( .B0(n103), .B1(n18), .A0N(\FIFO_BUFFER[5][1] ), .A1N(n18), 
        .Y(n62) );
  OAI2BB2X1M U36 ( .B0(n104), .B1(n18), .A0N(\FIFO_BUFFER[5][2] ), .A1N(n18), 
        .Y(n63) );
  OAI2BB2X1M U37 ( .B0(n105), .B1(n18), .A0N(\FIFO_BUFFER[5][3] ), .A1N(n18), 
        .Y(n64) );
  OAI2BB2X1M U38 ( .B0(n106), .B1(n18), .A0N(\FIFO_BUFFER[5][4] ), .A1N(n18), 
        .Y(n65) );
  OAI2BB2X1M U39 ( .B0(n107), .B1(n18), .A0N(\FIFO_BUFFER[5][5] ), .A1N(n18), 
        .Y(n66) );
  OAI2BB2X1M U40 ( .B0(n108), .B1(n18), .A0N(\FIFO_BUFFER[5][6] ), .A1N(n18), 
        .Y(n67) );
  OAI2BB2X1M U41 ( .B0(n109), .B1(n18), .A0N(\FIFO_BUFFER[5][7] ), .A1N(n18), 
        .Y(n68) );
  OAI2BB2X1M U42 ( .B0(n102), .B1(n14), .A0N(\FIFO_BUFFER[2][0] ), .A1N(n14), 
        .Y(n37) );
  OAI2BB2X1M U43 ( .B0(n103), .B1(n14), .A0N(\FIFO_BUFFER[2][1] ), .A1N(n14), 
        .Y(n38) );
  OAI2BB2X1M U44 ( .B0(n104), .B1(n14), .A0N(\FIFO_BUFFER[2][2] ), .A1N(n14), 
        .Y(n39) );
  OAI2BB2X1M U45 ( .B0(n105), .B1(n14), .A0N(\FIFO_BUFFER[2][3] ), .A1N(n14), 
        .Y(n40) );
  OAI2BB2X1M U46 ( .B0(n106), .B1(n14), .A0N(\FIFO_BUFFER[2][4] ), .A1N(n14), 
        .Y(n41) );
  OAI2BB2X1M U47 ( .B0(n107), .B1(n14), .A0N(\FIFO_BUFFER[2][5] ), .A1N(n14), 
        .Y(n42) );
  OAI2BB2X1M U48 ( .B0(n108), .B1(n14), .A0N(\FIFO_BUFFER[2][6] ), .A1N(n14), 
        .Y(n43) );
  OAI2BB2X1M U49 ( .B0(n109), .B1(n14), .A0N(\FIFO_BUFFER[2][7] ), .A1N(n14), 
        .Y(n44) );
  OAI2BB2X1M U50 ( .B0(n102), .B1(n13), .A0N(\FIFO_BUFFER[1][0] ), .A1N(n13), 
        .Y(n29) );
  OAI2BB2X1M U51 ( .B0(n103), .B1(n13), .A0N(\FIFO_BUFFER[1][1] ), .A1N(n13), 
        .Y(n30) );
  OAI2BB2X1M U52 ( .B0(n104), .B1(n13), .A0N(\FIFO_BUFFER[1][2] ), .A1N(n13), 
        .Y(n31) );
  OAI2BB2X1M U53 ( .B0(n105), .B1(n13), .A0N(\FIFO_BUFFER[1][3] ), .A1N(n13), 
        .Y(n32) );
  OAI2BB2X1M U54 ( .B0(n106), .B1(n13), .A0N(\FIFO_BUFFER[1][4] ), .A1N(n13), 
        .Y(n33) );
  OAI2BB2X1M U55 ( .B0(n107), .B1(n13), .A0N(\FIFO_BUFFER[1][5] ), .A1N(n13), 
        .Y(n34) );
  OAI2BB2X1M U56 ( .B0(n108), .B1(n13), .A0N(\FIFO_BUFFER[1][6] ), .A1N(n13), 
        .Y(n35) );
  OAI2BB2X1M U57 ( .B0(n109), .B1(n13), .A0N(\FIFO_BUFFER[1][7] ), .A1N(n13), 
        .Y(n36) );
  OAI2BB2X1M U58 ( .B0(n102), .B1(n16), .A0N(\FIFO_BUFFER[4][0] ), .A1N(n16), 
        .Y(n53) );
  OAI2BB2X1M U59 ( .B0(n103), .B1(n16), .A0N(\FIFO_BUFFER[4][1] ), .A1N(n16), 
        .Y(n54) );
  OAI2BB2X1M U60 ( .B0(n104), .B1(n16), .A0N(\FIFO_BUFFER[4][2] ), .A1N(n16), 
        .Y(n55) );
  OAI2BB2X1M U61 ( .B0(n105), .B1(n16), .A0N(\FIFO_BUFFER[4][3] ), .A1N(n16), 
        .Y(n56) );
  OAI2BB2X1M U62 ( .B0(n106), .B1(n16), .A0N(\FIFO_BUFFER[4][4] ), .A1N(n16), 
        .Y(n57) );
  OAI2BB2X1M U63 ( .B0(n107), .B1(n16), .A0N(\FIFO_BUFFER[4][5] ), .A1N(n16), 
        .Y(n58) );
  OAI2BB2X1M U64 ( .B0(n108), .B1(n16), .A0N(\FIFO_BUFFER[4][6] ), .A1N(n16), 
        .Y(n59) );
  OAI2BB2X1M U65 ( .B0(n109), .B1(n16), .A0N(\FIFO_BUFFER[4][7] ), .A1N(n16), 
        .Y(n60) );
  INVX2M U66 ( .A(w_data[0]), .Y(n102) );
  INVX2M U67 ( .A(w_data[1]), .Y(n103) );
  INVX2M U68 ( .A(w_data[2]), .Y(n104) );
  INVX2M U69 ( .A(w_data[3]), .Y(n105) );
  INVX2M U70 ( .A(w_data[4]), .Y(n106) );
  INVX2M U71 ( .A(w_data[5]), .Y(n107) );
  INVX2M U72 ( .A(w_data[6]), .Y(n108) );
  INVX2M U73 ( .A(w_data[7]), .Y(n109) );
  OAI2BB2X1M U74 ( .B0(n102), .B1(n94), .A0N(\FIFO_BUFFER[6][0] ), .A1N(n94), 
        .Y(n69) );
  OAI2BB2X1M U75 ( .B0(n103), .B1(n94), .A0N(\FIFO_BUFFER[6][1] ), .A1N(n94), 
        .Y(n70) );
  OAI2BB2X1M U76 ( .B0(n104), .B1(n94), .A0N(\FIFO_BUFFER[6][2] ), .A1N(n94), 
        .Y(n71) );
  OAI2BB2X1M U77 ( .B0(n105), .B1(n94), .A0N(\FIFO_BUFFER[6][3] ), .A1N(n94), 
        .Y(n72) );
  OAI2BB2X1M U78 ( .B0(n106), .B1(n94), .A0N(\FIFO_BUFFER[6][4] ), .A1N(n94), 
        .Y(n73) );
  OAI2BB2X1M U79 ( .B0(n107), .B1(n94), .A0N(\FIFO_BUFFER[6][5] ), .A1N(n94), 
        .Y(n74) );
  OAI2BB2X1M U80 ( .B0(n108), .B1(n94), .A0N(\FIFO_BUFFER[6][6] ), .A1N(n94), 
        .Y(n75) );
  OAI2BB2X1M U81 ( .B0(n109), .B1(n94), .A0N(\FIFO_BUFFER[6][7] ), .A1N(n94), 
        .Y(n76) );
  OAI2BB2X1M U82 ( .B0(n102), .B1(n93), .A0N(\FIFO_BUFFER[7][0] ), .A1N(n93), 
        .Y(n77) );
  OAI2BB2X1M U83 ( .B0(n103), .B1(n93), .A0N(\FIFO_BUFFER[7][1] ), .A1N(n93), 
        .Y(n78) );
  OAI2BB2X1M U84 ( .B0(n104), .B1(n93), .A0N(\FIFO_BUFFER[7][2] ), .A1N(n93), 
        .Y(n79) );
  OAI2BB2X1M U85 ( .B0(n105), .B1(n93), .A0N(\FIFO_BUFFER[7][3] ), .A1N(n93), 
        .Y(n80) );
  OAI2BB2X1M U86 ( .B0(n106), .B1(n93), .A0N(\FIFO_BUFFER[7][4] ), .A1N(n93), 
        .Y(n81) );
  OAI2BB2X1M U87 ( .B0(n107), .B1(n93), .A0N(\FIFO_BUFFER[7][5] ), .A1N(n93), 
        .Y(n82) );
  OAI2BB2X1M U88 ( .B0(n108), .B1(n93), .A0N(\FIFO_BUFFER[7][6] ), .A1N(n93), 
        .Y(n83) );
  OAI2BB2X1M U89 ( .B0(n109), .B1(n93), .A0N(\FIFO_BUFFER[7][7] ), .A1N(n93), 
        .Y(n84) );
  AND2X2M U90 ( .A(w_addr[2]), .B(w_clken), .Y(n17) );
  NAND3X2M U91 ( .A(w_addr[1]), .B(n110), .C(n17), .Y(n19) );
  NAND3X2M U92 ( .A(w_addr[1]), .B(w_addr[0]), .C(n17), .Y(n20) );
  INVX2M U93 ( .A(w_addr[1]), .Y(n111) );
  INVX2M U94 ( .A(w_addr[0]), .Y(n110) );
  MX2X2M U95 ( .A(n2), .B(n1), .S0(N12), .Y(r_data[0]) );
  MX4X1M U96 ( .A(\FIFO_BUFFER[4][0] ), .B(\FIFO_BUFFER[5][0] ), .C(
        \FIFO_BUFFER[6][0] ), .D(\FIFO_BUFFER[7][0] ), .S0(n91), .S1(N11), .Y(
        n1) );
  MX4X1M U97 ( .A(\FIFO_BUFFER[0][0] ), .B(\FIFO_BUFFER[1][0] ), .C(
        \FIFO_BUFFER[2][0] ), .D(\FIFO_BUFFER[3][0] ), .S0(n92), .S1(N11), .Y(
        n2) );
  MX2X2M U98 ( .A(n4), .B(n3), .S0(N12), .Y(r_data[1]) );
  MX4X1M U99 ( .A(\FIFO_BUFFER[4][1] ), .B(\FIFO_BUFFER[5][1] ), .C(
        \FIFO_BUFFER[6][1] ), .D(\FIFO_BUFFER[7][1] ), .S0(n91), .S1(N11), .Y(
        n3) );
  MX4X1M U100 ( .A(\FIFO_BUFFER[0][1] ), .B(\FIFO_BUFFER[1][1] ), .C(
        \FIFO_BUFFER[2][1] ), .D(\FIFO_BUFFER[3][1] ), .S0(n92), .S1(N11), .Y(
        n4) );
  MX2X2M U101 ( .A(n6), .B(n5), .S0(N12), .Y(r_data[2]) );
  MX4X1M U102 ( .A(\FIFO_BUFFER[4][2] ), .B(\FIFO_BUFFER[5][2] ), .C(
        \FIFO_BUFFER[6][2] ), .D(\FIFO_BUFFER[7][2] ), .S0(n91), .S1(N11), .Y(
        n5) );
  MX4X1M U103 ( .A(\FIFO_BUFFER[0][2] ), .B(\FIFO_BUFFER[1][2] ), .C(
        \FIFO_BUFFER[2][2] ), .D(\FIFO_BUFFER[3][2] ), .S0(n92), .S1(N11), .Y(
        n6) );
  MX2X2M U104 ( .A(n8), .B(n7), .S0(N12), .Y(r_data[3]) );
  MX4X1M U105 ( .A(\FIFO_BUFFER[4][3] ), .B(\FIFO_BUFFER[5][3] ), .C(
        \FIFO_BUFFER[6][3] ), .D(\FIFO_BUFFER[7][3] ), .S0(n91), .S1(N11), .Y(
        n7) );
  MX4X1M U106 ( .A(\FIFO_BUFFER[0][3] ), .B(\FIFO_BUFFER[1][3] ), .C(
        \FIFO_BUFFER[2][3] ), .D(\FIFO_BUFFER[3][3] ), .S0(n92), .S1(N11), .Y(
        n8) );
  MX2X2M U107 ( .A(n10), .B(n9), .S0(N12), .Y(r_data[4]) );
  MX4X1M U108 ( .A(\FIFO_BUFFER[4][4] ), .B(\FIFO_BUFFER[5][4] ), .C(
        \FIFO_BUFFER[6][4] ), .D(\FIFO_BUFFER[7][4] ), .S0(n91), .S1(N11), .Y(
        n9) );
  MX4X1M U109 ( .A(\FIFO_BUFFER[0][4] ), .B(\FIFO_BUFFER[1][4] ), .C(
        \FIFO_BUFFER[2][4] ), .D(\FIFO_BUFFER[3][4] ), .S0(n92), .S1(N11), .Y(
        n10) );
  MX2X2M U110 ( .A(n86), .B(n85), .S0(N12), .Y(r_data[5]) );
  MX4X1M U111 ( .A(\FIFO_BUFFER[4][5] ), .B(\FIFO_BUFFER[5][5] ), .C(
        \FIFO_BUFFER[6][5] ), .D(\FIFO_BUFFER[7][5] ), .S0(n91), .S1(N11), .Y(
        n85) );
  MX4X1M U112 ( .A(\FIFO_BUFFER[0][5] ), .B(\FIFO_BUFFER[1][5] ), .C(
        \FIFO_BUFFER[2][5] ), .D(\FIFO_BUFFER[3][5] ), .S0(n92), .S1(N11), .Y(
        n86) );
  MX2X2M U113 ( .A(n88), .B(n87), .S0(N12), .Y(r_data[6]) );
  MX4X1M U114 ( .A(\FIFO_BUFFER[4][6] ), .B(\FIFO_BUFFER[5][6] ), .C(
        \FIFO_BUFFER[6][6] ), .D(\FIFO_BUFFER[7][6] ), .S0(n91), .S1(N11), .Y(
        n87) );
  MX4X1M U115 ( .A(\FIFO_BUFFER[0][6] ), .B(\FIFO_BUFFER[1][6] ), .C(
        \FIFO_BUFFER[2][6] ), .D(\FIFO_BUFFER[3][6] ), .S0(n92), .S1(N11), .Y(
        n88) );
  MX2X2M U116 ( .A(n90), .B(n89), .S0(N12), .Y(r_data[7]) );
  MX4X1M U117 ( .A(\FIFO_BUFFER[4][7] ), .B(\FIFO_BUFFER[5][7] ), .C(
        \FIFO_BUFFER[6][7] ), .D(\FIFO_BUFFER[7][7] ), .S0(n91), .S1(N11), .Y(
        n89) );
  MX4X1M U118 ( .A(\FIFO_BUFFER[0][7] ), .B(\FIFO_BUFFER[1][7] ), .C(
        \FIFO_BUFFER[2][7] ), .D(\FIFO_BUFFER[3][7] ), .S0(n92), .S1(N11), .Y(
        n90) );
  BUFX2M U119 ( .A(N10), .Y(n92) );
  BUFX2M U120 ( .A(N10), .Y(n91) );
endmodule


module FIFO_WR ( w_clk, w_inc, w_rst_n, wq2_rptr, w_addr, w_ptr, w_full );
  input [3:0] wq2_rptr;
  output [2:0] w_addr;
  output [3:0] w_ptr;
  input w_clk, w_inc, w_rst_n;
  output w_full;
  wire   n7, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21,
         n22, n23, n24, n25, n26, n1, n2, n3, n4, n5;
  wire   [3:0] w_ptr_bin;

  DFFRQX2M \w_addr_reg[2]  ( .D(n20), .CK(w_clk), .RN(w_rst_n), .Q(w_addr[2])
         );
  DFFRQX2M \w_addr_reg[0]  ( .D(n22), .CK(w_clk), .RN(w_rst_n), .Q(w_addr[0])
         );
  DFFRQX2M \w_addr_reg[1]  ( .D(n21), .CK(w_clk), .RN(w_rst_n), .Q(w_addr[1])
         );
  DFFRQX2M \w_ptr_bin_reg[2]  ( .D(n24), .CK(w_clk), .RN(w_rst_n), .Q(
        w_ptr_bin[2]) );
  DFFRQX2M \w_ptr_bin_reg[1]  ( .D(n25), .CK(w_clk), .RN(w_rst_n), .Q(
        w_ptr_bin[1]) );
  DFFRQX2M \w_ptr_bin_reg[0]  ( .D(n26), .CK(w_clk), .RN(w_rst_n), .Q(
        w_ptr_bin[0]) );
  DFFRQX2M \w_ptr_bin_reg[3]  ( .D(n23), .CK(w_clk), .RN(w_rst_n), .Q(w_ptr[3]) );
  OAI22X1M U3 ( .A0(n10), .A1(n15), .B0(n14), .B1(n3), .Y(n25) );
  NAND2X2M U4 ( .A(w_inc), .B(n7), .Y(n10) );
  INVX2M U5 ( .A(n7), .Y(w_full) );
  CLKXOR2X2M U6 ( .A(n3), .B(n4), .Y(w_ptr[1]) );
  CLKXOR2X2M U7 ( .A(n4), .B(n13), .Y(n24) );
  OAI21X2M U8 ( .A0(w_ptr[3]), .A1(n4), .B0(n12), .Y(w_ptr[2]) );
  OAI21X2M U9 ( .A0(w_ptr_bin[0]), .A1(n3), .B0(n15), .Y(w_ptr[0]) );
  XNOR2X2M U10 ( .A(w_addr[0]), .B(n10), .Y(n22) );
  XNOR2X2M U11 ( .A(w_ptr_bin[0]), .B(n10), .Y(n26) );
  NOR2BX2M U12 ( .AN(w_ptr_bin[0]), .B(n10), .Y(n14) );
  NAND4X2M U13 ( .A(n16), .B(n17), .C(n18), .D(n19), .Y(n7) );
  CLKXOR2X2M U14 ( .A(wq2_rptr[3]), .B(w_ptr[3]), .Y(n17) );
  XNOR2X2M U15 ( .A(wq2_rptr[0]), .B(w_ptr[0]), .Y(n19) );
  XNOR2X2M U16 ( .A(w_ptr[1]), .B(wq2_rptr[1]), .Y(n18) );
  OAI211X2M U17 ( .A0(n2), .A1(n5), .B0(n11), .C0(n12), .Y(n23) );
  NAND3X2M U18 ( .A(w_ptr_bin[2]), .B(n5), .C(n2), .Y(n11) );
  INVX2M U19 ( .A(w_ptr[3]), .Y(n5) );
  INVX2M U20 ( .A(n13), .Y(n2) );
  NOR2BX2M U21 ( .AN(w_addr[0]), .B(n10), .Y(n9) );
  NAND2X2M U22 ( .A(n14), .B(w_ptr_bin[1]), .Y(n13) );
  NAND2X2M U23 ( .A(w_ptr[3]), .B(n4), .Y(n12) );
  INVX2M U24 ( .A(w_ptr_bin[2]), .Y(n4) );
  NAND2X2M U25 ( .A(w_ptr_bin[0]), .B(n3), .Y(n15) );
  INVX2M U26 ( .A(w_ptr_bin[1]), .Y(n3) );
  CLKXOR2X2M U27 ( .A(w_ptr[2]), .B(wq2_rptr[2]), .Y(n16) );
  CLKXOR2X2M U28 ( .A(w_addr[1]), .B(n9), .Y(n21) );
  XNOR2X2M U29 ( .A(w_addr[2]), .B(n1), .Y(n20) );
  NAND2X2M U30 ( .A(n9), .B(w_addr[1]), .Y(n1) );
endmodule


module FIFO_RD ( r_clk, r_inc, r_rst_n, rq2_wptr, r_addr, r_ptr, r_empty );
  input [3:0] rq2_wptr;
  output [2:0] r_addr;
  output [3:0] r_ptr;
  input r_clk, r_inc, r_rst_n;
  output r_empty;
  wire   n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19,
         n20, n21, n22, n23, n24, n25, n1, n2;
  wire   [3:0] r_ptr_bin;

  DFFRQX2M \r_addr_reg[2]  ( .D(n19), .CK(r_clk), .RN(r_rst_n), .Q(r_addr[2])
         );
  DFFRQX2M \r_ptr_bin_reg[0]  ( .D(n25), .CK(r_clk), .RN(r_rst_n), .Q(
        r_ptr_bin[0]) );
  DFFRQX2M \r_ptr_bin_reg[2]  ( .D(n23), .CK(r_clk), .RN(r_rst_n), .Q(
        r_ptr_bin[2]) );
  DFFRQX2M \r_ptr_bin_reg[3]  ( .D(n22), .CK(r_clk), .RN(r_rst_n), .Q(r_ptr[3]) );
  DFFRQX2M \r_addr_reg[0]  ( .D(n21), .CK(r_clk), .RN(r_rst_n), .Q(r_addr[0])
         );
  DFFRQX2M \r_addr_reg[1]  ( .D(n20), .CK(r_clk), .RN(r_rst_n), .Q(r_addr[1])
         );
  DFFRX1M \r_ptr_bin_reg[1]  ( .D(n24), .CK(r_clk), .RN(r_rst_n), .QN(n5) );
  INVX2M U3 ( .A(n6), .Y(r_empty) );
  XNOR2X2M U4 ( .A(r_ptr[1]), .B(rq2_wptr[1]), .Y(n15) );
  NOR2BX2M U5 ( .AN(n13), .B(n5), .Y(n10) );
  OAI22X1M U6 ( .A0(n9), .A1(n14), .B0(n13), .B1(n5), .Y(n24) );
  OAI21X2M U7 ( .A0(r_ptr_bin[0]), .A1(n5), .B0(n14), .Y(r_ptr[0]) );
  OAI21X2M U8 ( .A0(r_ptr[3]), .A1(n1), .B0(n12), .Y(r_ptr[2]) );
  XNOR2X2M U9 ( .A(r_addr[0]), .B(n9), .Y(n21) );
  XNOR2X2M U10 ( .A(r_ptr_bin[0]), .B(n9), .Y(n25) );
  XNOR2X2M U11 ( .A(r_addr[1]), .B(n8), .Y(n20) );
  NAND4X2M U12 ( .A(n15), .B(n16), .C(n17), .D(n18), .Y(n6) );
  CLKXOR2X2M U13 ( .A(n2), .B(rq2_wptr[3]), .Y(n17) );
  XNOR2X2M U14 ( .A(rq2_wptr[2]), .B(r_ptr[2]), .Y(n18) );
  XNOR2X2M U15 ( .A(rq2_wptr[0]), .B(r_ptr[0]), .Y(n16) );
  NAND2X2M U16 ( .A(r_inc), .B(n6), .Y(n9) );
  NOR2BX2M U17 ( .AN(r_ptr_bin[0]), .B(n9), .Y(n13) );
  NAND2X2M U18 ( .A(r_ptr_bin[0]), .B(n5), .Y(n14) );
  NAND2BX2M U19 ( .AN(n9), .B(r_addr[0]), .Y(n8) );
  NAND2X2M U20 ( .A(r_ptr[3]), .B(n1), .Y(n12) );
  INVX2M U21 ( .A(r_ptr_bin[2]), .Y(n1) );
  OAI211X2M U22 ( .A0(n10), .A1(n2), .B0(n11), .C0(n12), .Y(n22) );
  NAND3X2M U23 ( .A(r_ptr_bin[2]), .B(n2), .C(n10), .Y(n11) );
  INVX2M U24 ( .A(r_ptr[3]), .Y(n2) );
  CLKXOR2X2M U25 ( .A(n5), .B(n1), .Y(r_ptr[1]) );
  CLKXOR2X2M U26 ( .A(r_addr[2]), .B(n7), .Y(n19) );
  NOR2BX2M U27 ( .AN(r_addr[1]), .B(n8), .Y(n7) );
  CLKXOR2X2M U28 ( .A(r_ptr_bin[2]), .B(n10), .Y(n23) );
endmodule


module DF_SYNC_0 ( CLK, RST, ASYNC, SYNC );
  input [3:0] ASYNC;
  output [3:0] SYNC;
  input CLK, RST;
  wire   \sync_reg[3][0] , \sync_reg[2][0] , \sync_reg[1][0] ,
         \sync_reg[0][0] ;

  DFFRQX2M \sync_reg_reg[0][1]  ( .D(\sync_reg[0][0] ), .CK(CLK), .RN(RST), 
        .Q(SYNC[0]) );
  DFFRQX2M \sync_reg_reg[1][1]  ( .D(\sync_reg[1][0] ), .CK(CLK), .RN(RST), 
        .Q(SYNC[1]) );
  DFFRQX2M \sync_reg_reg[2][1]  ( .D(\sync_reg[2][0] ), .CK(CLK), .RN(RST), 
        .Q(SYNC[2]) );
  DFFRQX2M \sync_reg_reg[3][1]  ( .D(\sync_reg[3][0] ), .CK(CLK), .RN(RST), 
        .Q(SYNC[3]) );
  DFFRQX2M \sync_reg_reg[2][0]  ( .D(ASYNC[2]), .CK(CLK), .RN(RST), .Q(
        \sync_reg[2][0] ) );
  DFFRQX2M \sync_reg_reg[1][0]  ( .D(ASYNC[1]), .CK(CLK), .RN(RST), .Q(
        \sync_reg[1][0] ) );
  DFFRQX2M \sync_reg_reg[0][0]  ( .D(ASYNC[0]), .CK(CLK), .RN(RST), .Q(
        \sync_reg[0][0] ) );
  DFFRQX2M \sync_reg_reg[3][0]  ( .D(ASYNC[3]), .CK(CLK), .RN(RST), .Q(
        \sync_reg[3][0] ) );
endmodule


module DF_SYNC_1 ( CLK, RST, ASYNC, SYNC );
  input [3:0] ASYNC;
  output [3:0] SYNC;
  input CLK, RST;
  wire   \sync_reg[3][0] , \sync_reg[2][0] , \sync_reg[1][0] ,
         \sync_reg[0][0] ;

  DFFRQX2M \sync_reg_reg[2][1]  ( .D(\sync_reg[2][0] ), .CK(CLK), .RN(RST), 
        .Q(SYNC[2]) );
  DFFRQX2M \sync_reg_reg[0][1]  ( .D(\sync_reg[0][0] ), .CK(CLK), .RN(RST), 
        .Q(SYNC[0]) );
  DFFRQX2M \sync_reg_reg[1][1]  ( .D(\sync_reg[1][0] ), .CK(CLK), .RN(RST), 
        .Q(SYNC[1]) );
  DFFRQX2M \sync_reg_reg[3][1]  ( .D(\sync_reg[3][0] ), .CK(CLK), .RN(RST), 
        .Q(SYNC[3]) );
  DFFRQX2M \sync_reg_reg[3][0]  ( .D(ASYNC[3]), .CK(CLK), .RN(RST), .Q(
        \sync_reg[3][0] ) );
  DFFRQX2M \sync_reg_reg[2][0]  ( .D(ASYNC[2]), .CK(CLK), .RN(RST), .Q(
        \sync_reg[2][0] ) );
  DFFRQX2M \sync_reg_reg[1][0]  ( .D(ASYNC[1]), .CK(CLK), .RN(RST), .Q(
        \sync_reg[1][0] ) );
  DFFRQX2M \sync_reg_reg[0][0]  ( .D(ASYNC[0]), .CK(CLK), .RN(RST), .Q(
        \sync_reg[0][0] ) );
endmodule


module FIFO_DATA_WIDTH8 ( w_clk, w_rst_n, wr_data, w_inc, r_clk, r_inc, 
        r_rst_n, rd_data, empty, full );
  input [7:0] wr_data;
  output [7:0] rd_data;
  input w_clk, w_rst_n, w_inc, r_clk, r_inc, r_rst_n;
  output empty, full;
  wire   _0_net_, n1, n2;
  wire   [2:0] w_addr;
  wire   [2:0] r_addr;
  wire   [3:0] wq2_rptr;
  wire   [3:0] w_ptr;
  wire   [3:0] rq2_wptr;
  wire   [3:0] r_ptr;

  FIFO_MEM_CNTRL_DATA_WIDTH8 FIFO_MEM_CNTRL_U0 ( .w_clk(w_clk), .w_rst_n(n1), 
        .w_data(wr_data), .w_clken(_0_net_), .w_addr(w_addr), .r_addr(r_addr), 
        .r_data(rd_data) );
  FIFO_WR FIFO_WR_U0 ( .w_clk(w_clk), .w_inc(w_inc), .w_rst_n(n1), .wq2_rptr(
        wq2_rptr), .w_addr(w_addr), .w_ptr(w_ptr), .w_full(full) );
  FIFO_RD FIFO_RD_U0 ( .r_clk(r_clk), .r_inc(r_inc), .r_rst_n(r_rst_n), 
        .rq2_wptr(rq2_wptr), .r_addr(r_addr), .r_ptr(r_ptr), .r_empty(empty)
         );
  DF_SYNC_0 DF_SYNC_U0 ( .CLK(w_clk), .RST(n1), .ASYNC(r_ptr), .SYNC(wq2_rptr)
         );
  DF_SYNC_1 DF_SYNC_U1 ( .CLK(r_clk), .RST(r_rst_n), .ASYNC(w_ptr), .SYNC(
        rq2_wptr) );
  NOR2BX2M U1 ( .AN(w_inc), .B(full), .Y(_0_net_) );
  INVX2M U2 ( .A(n2), .Y(n1) );
  INVX2M U3 ( .A(w_rst_n), .Y(n2) );
endmodule


module PULSE_GEN ( clk, rst, lvl_sig, pulse_sig );
  input clk, rst, lvl_sig;
  output pulse_sig;
  wire   rcv_flop, pls_flop;

  DFFRQX2M pls_flop_reg ( .D(rcv_flop), .CK(clk), .RN(rst), .Q(pls_flop) );
  DFFRQX2M rcv_flop_reg ( .D(lvl_sig), .CK(clk), .RN(rst), .Q(rcv_flop) );
  NOR2BX2M U3 ( .AN(rcv_flop), .B(pls_flop), .Y(pulse_sig) );
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


module Clk_Div_0 ( i_ref_clk, i_rst_n, i_clk_en, i_div_ratio, o_div_clk );
  input [7:0] i_div_ratio;
  input i_ref_clk, i_rst_n, i_clk_en;
  output o_div_clk;
  wire   N0, div_clk, N15, N16, N17, N18, N19, N20, N21, n15, n16, n17, n18,
         n19, n20, n21, n22, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12,
         n13, n14, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n35, n36, n37, n38, n39, n40, n41;
  wire   [6:0] half_period;
  wire   [6:0] counter;

  Clk_Div_0_DW01_inc_0 add_44 ( .A(counter), .SUM({N21, N20, N19, N18, N17, 
        N16, N15}) );
  DFFRQX2M div_clk_reg ( .D(n22), .CK(i_ref_clk), .RN(i_rst_n), .Q(div_clk) );
  DFFRQX2M \counter_reg[3]  ( .D(n17), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[3]) );
  DFFRQX2M \counter_reg[4]  ( .D(n16), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[4]) );
  DFFRQX2M \counter_reg[5]  ( .D(n15), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[5]) );
  DFFRQX2M \counter_reg[6]  ( .D(n21), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[6]) );
  DFFRQX2M \counter_reg[0]  ( .D(n20), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[0]) );
  DFFRQX2M \counter_reg[1]  ( .D(n19), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[1]) );
  DFFRQX2M \counter_reg[2]  ( .D(n18), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[2]) );
  MX2X2M U3 ( .A(div_clk), .B(i_ref_clk), .S0(N0), .Y(o_div_clk) );
  OR2X2M U4 ( .A(i_div_ratio[2]), .B(i_div_ratio[1]), .Y(n1) );
  INVX2M U5 ( .A(i_div_ratio[5]), .Y(n6) );
  CLKINVX1M U6 ( .A(i_div_ratio[1]), .Y(half_period[0]) );
  OAI2BB1X1M U7 ( .A0N(i_div_ratio[1]), .A1N(i_div_ratio[2]), .B0(n1), .Y(
        half_period[1]) );
  OR2X1M U8 ( .A(n1), .B(i_div_ratio[3]), .Y(n2) );
  OAI2BB1X1M U9 ( .A0N(n1), .A1N(i_div_ratio[3]), .B0(n2), .Y(half_period[2])
         );
  NOR2X1M U10 ( .A(n2), .B(i_div_ratio[4]), .Y(n3) );
  AO21XLM U11 ( .A0(n2), .A1(i_div_ratio[4]), .B0(n3), .Y(half_period[3]) );
  CLKNAND2X2M U12 ( .A(n3), .B(n6), .Y(n4) );
  OAI21X1M U13 ( .A0(n3), .A1(n6), .B0(n4), .Y(half_period[4]) );
  XNOR2X1M U14 ( .A(i_div_ratio[6]), .B(n4), .Y(half_period[5]) );
  NOR2X1M U15 ( .A(i_div_ratio[6]), .B(n4), .Y(n5) );
  CLKXOR2X2M U16 ( .A(i_div_ratio[7]), .B(n5), .Y(half_period[6]) );
  XNOR2X1M U17 ( .A(div_clk), .B(n7), .Y(n22) );
  AO2B2X1M U18 ( .B0(N21), .B1(n8), .A0(counter[6]), .A1N(n9), .Y(n21) );
  AO2B2X1M U19 ( .B0(N15), .B1(n8), .A0(counter[0]), .A1N(n9), .Y(n20) );
  AO2B2X1M U20 ( .B0(N16), .B1(n8), .A0(counter[1]), .A1N(n9), .Y(n19) );
  AO2B2X1M U21 ( .B0(N17), .B1(n8), .A0(counter[2]), .A1N(n9), .Y(n18) );
  AO2B2X1M U22 ( .B0(N18), .B1(n8), .A0(counter[3]), .A1N(n9), .Y(n17) );
  AO2B2X1M U23 ( .B0(N19), .B1(n8), .A0(counter[4]), .A1N(n9), .Y(n16) );
  AO2B2X1M U24 ( .B0(N20), .B1(n8), .A0(counter[5]), .A1N(n9), .Y(n15) );
  CLKNAND2X2M U25 ( .A(n10), .B(n7), .Y(n9) );
  CLKINVX1M U26 ( .A(n10), .Y(n8) );
  CLKNAND2X2M U27 ( .A(n7), .B(n11), .Y(n10) );
  CLKNAND2X2M U28 ( .A(n12), .B(n11), .Y(n7) );
  CLKINVX1M U29 ( .A(N0), .Y(n11) );
  MXI2X1M U30 ( .A(n13), .B(n14), .S0(n23), .Y(n12) );
  NOR2BX1M U31 ( .AN(i_div_ratio[0]), .B(div_clk), .Y(n23) );
  NAND4X1M U32 ( .A(n24), .B(n25), .C(n26), .D(n27), .Y(n14) );
  NOR4X1M U33 ( .A(n28), .B(n29), .C(n30), .D(n31), .Y(n27) );
  CLKXOR2X2M U34 ( .A(i_div_ratio[3]), .B(counter[2]), .Y(n31) );
  CLKXOR2X2M U35 ( .A(i_div_ratio[2]), .B(counter[1]), .Y(n30) );
  CLKXOR2X2M U36 ( .A(i_div_ratio[1]), .B(counter[0]), .Y(n29) );
  CLKXOR2X2M U37 ( .A(i_div_ratio[7]), .B(counter[6]), .Y(n28) );
  XNOR2X1M U38 ( .A(counter[4]), .B(i_div_ratio[5]), .Y(n26) );
  XNOR2X1M U39 ( .A(counter[5]), .B(i_div_ratio[6]), .Y(n25) );
  XNOR2X1M U40 ( .A(counter[3]), .B(i_div_ratio[4]), .Y(n24) );
  NAND4X1M U41 ( .A(n32), .B(n33), .C(n34), .D(n35), .Y(n13) );
  NOR4X1M U42 ( .A(n36), .B(n37), .C(n38), .D(n39), .Y(n35) );
  CLKXOR2X2M U43 ( .A(half_period[2]), .B(counter[2]), .Y(n39) );
  CLKXOR2X2M U44 ( .A(half_period[1]), .B(counter[1]), .Y(n38) );
  CLKXOR2X2M U45 ( .A(half_period[0]), .B(counter[0]), .Y(n37) );
  CLKXOR2X2M U46 ( .A(half_period[6]), .B(counter[6]), .Y(n36) );
  XNOR2X1M U47 ( .A(counter[4]), .B(half_period[4]), .Y(n34) );
  XNOR2X1M U48 ( .A(counter[5]), .B(half_period[5]), .Y(n33) );
  XNOR2X1M U49 ( .A(counter[3]), .B(half_period[3]), .Y(n32) );
  OAI21X1M U50 ( .A0(n40), .A1(n41), .B0(i_clk_en), .Y(N0) );
  OR3X1M U51 ( .A(i_div_ratio[2]), .B(i_div_ratio[3]), .C(i_div_ratio[1]), .Y(
        n41) );
  OR4X1M U52 ( .A(i_div_ratio[4]), .B(i_div_ratio[5]), .C(i_div_ratio[6]), .D(
        i_div_ratio[7]), .Y(n40) );
endmodule


module CLKDIV_MUX_WIDTH4 ( IN, OUT );
  input [5:0] IN;
  output [3:0] OUT;
  wire   n5, n6, n7, n8, n9, n1, n2, n3, n4;

  NAND4BX1M U3 ( .AN(IN[4]), .B(IN[3]), .C(n2), .D(n1), .Y(n6) );
  NAND4BX1M U4 ( .AN(IN[3]), .B(IN[4]), .C(n2), .D(n1), .Y(n7) );
  NOR3X2M U5 ( .A(n7), .B(IN[1]), .C(IN[0]), .Y(OUT[1]) );
  NOR3X2M U6 ( .A(n6), .B(IN[1]), .C(IN[0]), .Y(OUT[2]) );
  NOR4X1M U7 ( .A(n5), .B(IN[3]), .C(IN[5]), .D(IN[4]), .Y(OUT[3]) );
  NAND3X2M U8 ( .A(n4), .B(n3), .C(IN[2]), .Y(n5) );
  OAI211X2M U9 ( .A0(n8), .A1(n9), .B0(n4), .C0(n3), .Y(OUT[0]) );
  NAND2X2M U10 ( .A(n7), .B(n6), .Y(n9) );
  NOR4X1M U11 ( .A(IN[5]), .B(IN[4]), .C(IN[3]), .D(n2), .Y(n8) );
  INVX2M U12 ( .A(IN[0]), .Y(n4) );
  INVX2M U13 ( .A(IN[2]), .Y(n2) );
  INVX2M U14 ( .A(IN[1]), .Y(n3) );
  INVX2M U15 ( .A(IN[5]), .Y(n1) );
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


module Clk_Div_1 ( i_ref_clk, i_rst_n, i_clk_en, i_div_ratio, o_div_clk );
  input [7:0] i_div_ratio;
  input i_ref_clk, i_rst_n, i_clk_en;
  output o_div_clk;
  wire   N0, div_clk, N15, N16, N17, N18, N19, N20, N21, n1, n2, n3, n4, n5,
         n6, n7, n8, n9, n10, n11, n12, n13, n14, n23, n24, n25, n26, n27, n28,
         n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42,
         n43, n44, n45, n46, n47, n48, n49;
  wire   [6:0] half_period;
  wire   [6:0] counter;

  Clk_Div_1_DW01_inc_0 add_44 ( .A(counter), .SUM({N21, N20, N19, N18, N17, 
        N16, N15}) );
  DFFRQX2M div_clk_reg ( .D(n42), .CK(i_ref_clk), .RN(i_rst_n), .Q(div_clk) );
  DFFRQX2M \counter_reg[6]  ( .D(n43), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[6]) );
  DFFRQX2M \counter_reg[3]  ( .D(n47), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[3]) );
  DFFRQX2M \counter_reg[4]  ( .D(n48), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[4]) );
  DFFRQX2M \counter_reg[5]  ( .D(n49), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[5]) );
  DFFRQX2M \counter_reg[0]  ( .D(n44), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[0]) );
  DFFRQX2M \counter_reg[1]  ( .D(n45), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[1]) );
  DFFRQX2M \counter_reg[2]  ( .D(n46), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[2]) );
  OR2X2M U3 ( .A(i_div_ratio[2]), .B(i_div_ratio[1]), .Y(n1) );
  MX2X2M U4 ( .A(div_clk), .B(i_ref_clk), .S0(N0), .Y(o_div_clk) );
  INVX2M U5 ( .A(i_div_ratio[5]), .Y(n6) );
  CLKINVX1M U6 ( .A(i_div_ratio[1]), .Y(half_period[0]) );
  OAI2BB1X1M U7 ( .A0N(i_div_ratio[1]), .A1N(i_div_ratio[2]), .B0(n1), .Y(
        half_period[1]) );
  OR2X1M U8 ( .A(n1), .B(i_div_ratio[3]), .Y(n2) );
  OAI2BB1X1M U9 ( .A0N(n1), .A1N(i_div_ratio[3]), .B0(n2), .Y(half_period[2])
         );
  NOR2X1M U10 ( .A(n2), .B(i_div_ratio[4]), .Y(n3) );
  AO21XLM U11 ( .A0(n2), .A1(i_div_ratio[4]), .B0(n3), .Y(half_period[3]) );
  CLKNAND2X2M U12 ( .A(n3), .B(n6), .Y(n4) );
  OAI21X1M U13 ( .A0(n3), .A1(n6), .B0(n4), .Y(half_period[4]) );
  XNOR2X1M U14 ( .A(i_div_ratio[6]), .B(n4), .Y(half_period[5]) );
  NOR2X1M U15 ( .A(i_div_ratio[6]), .B(n4), .Y(n5) );
  CLKXOR2X2M U16 ( .A(i_div_ratio[7]), .B(n5), .Y(half_period[6]) );
  XNOR2X1M U17 ( .A(div_clk), .B(n7), .Y(n42) );
  AO2B2X1M U18 ( .B0(N21), .B1(n8), .A0(counter[6]), .A1N(n9), .Y(n43) );
  AO2B2X1M U19 ( .B0(N15), .B1(n8), .A0(counter[0]), .A1N(n9), .Y(n44) );
  AO2B2X1M U20 ( .B0(N16), .B1(n8), .A0(counter[1]), .A1N(n9), .Y(n45) );
  AO2B2X1M U21 ( .B0(N17), .B1(n8), .A0(counter[2]), .A1N(n9), .Y(n46) );
  AO2B2X1M U22 ( .B0(N18), .B1(n8), .A0(counter[3]), .A1N(n9), .Y(n47) );
  AO2B2X1M U23 ( .B0(N19), .B1(n8), .A0(counter[4]), .A1N(n9), .Y(n48) );
  AO2B2X1M U24 ( .B0(N20), .B1(n8), .A0(counter[5]), .A1N(n9), .Y(n49) );
  CLKNAND2X2M U25 ( .A(n10), .B(n7), .Y(n9) );
  CLKINVX1M U26 ( .A(n10), .Y(n8) );
  CLKNAND2X2M U27 ( .A(n7), .B(n11), .Y(n10) );
  CLKNAND2X2M U28 ( .A(n12), .B(n11), .Y(n7) );
  CLKINVX1M U29 ( .A(N0), .Y(n11) );
  MXI2X1M U30 ( .A(n13), .B(n14), .S0(n23), .Y(n12) );
  NOR2BX1M U31 ( .AN(i_div_ratio[0]), .B(div_clk), .Y(n23) );
  NAND4X1M U32 ( .A(n24), .B(n25), .C(n26), .D(n27), .Y(n14) );
  NOR4X1M U33 ( .A(n28), .B(n29), .C(n30), .D(n31), .Y(n27) );
  CLKXOR2X2M U34 ( .A(i_div_ratio[3]), .B(counter[2]), .Y(n31) );
  CLKXOR2X2M U35 ( .A(i_div_ratio[2]), .B(counter[1]), .Y(n30) );
  CLKXOR2X2M U36 ( .A(i_div_ratio[1]), .B(counter[0]), .Y(n29) );
  CLKXOR2X2M U37 ( .A(i_div_ratio[7]), .B(counter[6]), .Y(n28) );
  XNOR2X1M U38 ( .A(counter[4]), .B(i_div_ratio[5]), .Y(n26) );
  XNOR2X1M U39 ( .A(counter[5]), .B(i_div_ratio[6]), .Y(n25) );
  XNOR2X1M U40 ( .A(counter[3]), .B(i_div_ratio[4]), .Y(n24) );
  NAND4X1M U41 ( .A(n32), .B(n33), .C(n34), .D(n35), .Y(n13) );
  NOR4X1M U42 ( .A(n36), .B(n37), .C(n38), .D(n39), .Y(n35) );
  CLKXOR2X2M U43 ( .A(half_period[2]), .B(counter[2]), .Y(n39) );
  CLKXOR2X2M U44 ( .A(half_period[1]), .B(counter[1]), .Y(n38) );
  CLKXOR2X2M U45 ( .A(half_period[0]), .B(counter[0]), .Y(n37) );
  CLKXOR2X2M U46 ( .A(half_period[6]), .B(counter[6]), .Y(n36) );
  XNOR2X1M U47 ( .A(counter[4]), .B(half_period[4]), .Y(n34) );
  XNOR2X1M U48 ( .A(counter[5]), .B(half_period[5]), .Y(n33) );
  XNOR2X1M U49 ( .A(counter[3]), .B(half_period[3]), .Y(n32) );
  OAI21X1M U50 ( .A0(n40), .A1(n41), .B0(i_clk_en), .Y(N0) );
  OR3X1M U51 ( .A(i_div_ratio[2]), .B(i_div_ratio[3]), .C(i_div_ratio[1]), .Y(
        n41) );
  OR4X1M U52 ( .A(i_div_ratio[4]), .B(i_div_ratio[5]), .C(i_div_ratio[6]), .D(
        i_div_ratio[7]), .Y(n40) );
endmodule


module Parity_Calc ( p_data, Data_Valid, PAR_EN, Busy, CLK, RST, Par_Type, 
        Par_Bit );
  input [7:0] p_data;
  input Data_Valid, PAR_EN, Busy, CLK, RST, Par_Type;
  output Par_Bit;
  wire   n1, n2, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n3
;
  wire   [7:0] DATA_V;

  DFFRQX2M \DATA_V_reg[1]  ( .D(n9), .CK(CLK), .RN(RST), .Q(DATA_V[1]) );
  DFFRQX2M \DATA_V_reg[0]  ( .D(n8), .CK(CLK), .RN(RST), .Q(DATA_V[0]) );
  DFFRQX2M \DATA_V_reg[2]  ( .D(n10), .CK(CLK), .RN(RST), .Q(DATA_V[2]) );
  DFFRQX2M \DATA_V_reg[3]  ( .D(n11), .CK(CLK), .RN(RST), .Q(DATA_V[3]) );
  DFFRQX2M \DATA_V_reg[5]  ( .D(n13), .CK(CLK), .RN(RST), .Q(DATA_V[5]) );
  DFFRQX2M \DATA_V_reg[4]  ( .D(n12), .CK(CLK), .RN(RST), .Q(DATA_V[4]) );
  DFFRQX2M \DATA_V_reg[6]  ( .D(n14), .CK(CLK), .RN(RST), .Q(DATA_V[6]) );
  DFFRQX2M \DATA_V_reg[7]  ( .D(n15), .CK(CLK), .RN(RST), .Q(DATA_V[7]) );
  DFFRQX2M Par_Bit_reg ( .D(n16), .CK(CLK), .RN(RST), .Q(Par_Bit) );
  NOR2BX2M U3 ( .AN(Data_Valid), .B(Busy), .Y(n1) );
  OAI2BB2X1M U4 ( .B0(n2), .B1(n3), .A0N(Par_Bit), .A1N(n3), .Y(n16) );
  INVX2M U5 ( .A(PAR_EN), .Y(n3) );
  XOR3XLM U6 ( .A(n4), .B(Par_Type), .C(n5), .Y(n2) );
  XOR3XLM U7 ( .A(DATA_V[1]), .B(DATA_V[0]), .C(n6), .Y(n5) );
  XOR3XLM U8 ( .A(DATA_V[5]), .B(DATA_V[4]), .C(n7), .Y(n4) );
  CLKXOR2X2M U9 ( .A(DATA_V[7]), .B(DATA_V[6]), .Y(n7) );
  AO2B2X2M U10 ( .B0(p_data[0]), .B1(n1), .A0(DATA_V[0]), .A1N(n1), .Y(n8) );
  AO2B2X2M U11 ( .B0(p_data[1]), .B1(n1), .A0(DATA_V[1]), .A1N(n1), .Y(n9) );
  AO2B2X2M U12 ( .B0(p_data[2]), .B1(n1), .A0(DATA_V[2]), .A1N(n1), .Y(n10) );
  AO2B2X2M U13 ( .B0(p_data[3]), .B1(n1), .A0(DATA_V[3]), .A1N(n1), .Y(n11) );
  AO2B2X2M U14 ( .B0(p_data[4]), .B1(n1), .A0(DATA_V[4]), .A1N(n1), .Y(n12) );
  AO2B2X2M U15 ( .B0(p_data[5]), .B1(n1), .A0(DATA_V[5]), .A1N(n1), .Y(n13) );
  AO2B2X2M U16 ( .B0(p_data[6]), .B1(n1), .A0(DATA_V[6]), .A1N(n1), .Y(n14) );
  AO2B2X2M U17 ( .B0(p_data[7]), .B1(n1), .A0(DATA_V[7]), .A1N(n1), .Y(n15) );
  XNOR2X2M U18 ( .A(DATA_V[2]), .B(DATA_V[3]), .Y(n6) );
endmodule


module serializer ( P_DATA, DATA_VALID, CLK, RST, busy, SER_EN, SER_DONE, 
        SER_DATA );
  input [7:0] P_DATA;
  input DATA_VALID, CLK, RST, busy, SER_EN;
  output SER_DONE, SER_DATA;
  wire   N25, N26, N27, N28, N33, n1, n5, n6, n7, n8, n9, n10, n11, n12, n13,
         n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27,
         n28, n29, n30, n2, n3, n4;
  wire   [7:0] shift_reg;
  wire   [3:0] counter;
  assign SER_DONE = N33;

  DFFRQX2M \shift_reg_reg[0]  ( .D(n23), .CK(CLK), .RN(RST), .Q(shift_reg[0])
         );
  DFFRQX2M \shift_reg_reg[7]  ( .D(n30), .CK(CLK), .RN(RST), .Q(shift_reg[7])
         );
  DFFRQX2M \shift_reg_reg[6]  ( .D(n24), .CK(CLK), .RN(RST), .Q(shift_reg[6])
         );
  DFFRQX2M \shift_reg_reg[5]  ( .D(n25), .CK(CLK), .RN(RST), .Q(shift_reg[5])
         );
  DFFRQX2M \shift_reg_reg[4]  ( .D(n26), .CK(CLK), .RN(RST), .Q(shift_reg[4])
         );
  DFFRQX2M \shift_reg_reg[3]  ( .D(n27), .CK(CLK), .RN(RST), .Q(shift_reg[3])
         );
  DFFRQX2M \shift_reg_reg[2]  ( .D(n28), .CK(CLK), .RN(RST), .Q(shift_reg[2])
         );
  DFFRQX2M \shift_reg_reg[1]  ( .D(n29), .CK(CLK), .RN(RST), .Q(shift_reg[1])
         );
  DFFRQX2M \counter_reg[3]  ( .D(N28), .CK(CLK), .RN(RST), .Q(counter[3]) );
  DFFRQX2M \counter_reg[1]  ( .D(N26), .CK(CLK), .RN(RST), .Q(counter[1]) );
  DFFRQX2M \counter_reg[0]  ( .D(N25), .CK(CLK), .RN(RST), .Q(counter[0]) );
  DFFRX1M \counter_reg[2]  ( .D(N27), .CK(CLK), .RN(RST), .QN(n1) );
  DFFRQX2M SER_DATA_reg ( .D(n22), .CK(CLK), .RN(RST), .Q(SER_DATA) );
  OR2X2M U3 ( .A(n8), .B(n5), .Y(n6) );
  NOR2BX2M U4 ( .AN(DATA_VALID), .B(busy), .Y(n8) );
  NOR2X2M U5 ( .A(n2), .B(n8), .Y(n5) );
  INVX2M U6 ( .A(SER_EN), .Y(n2) );
  NOR2X2M U7 ( .A(n19), .B(n2), .Y(N26) );
  OAI32X1M U8 ( .A0(n20), .A1(n4), .A2(n3), .B0(n21), .B1(n1), .Y(N27) );
  NAND2X2M U9 ( .A(SER_EN), .B(n1), .Y(n20) );
  AOI21X2M U10 ( .A0(SER_EN), .A1(n4), .B0(N25), .Y(n21) );
  OAI22X1M U11 ( .A0(n4), .A1(n3), .B0(n19), .B1(n1), .Y(n15) );
  OAI2B1X2M U12 ( .A1N(shift_reg[0]), .A0(n6), .B0(n7), .Y(n23) );
  AOI22X1M U13 ( .A0(shift_reg[1]), .A1(n5), .B0(P_DATA[0]), .B1(n8), .Y(n7)
         );
  OAI2B1X2M U14 ( .A1N(shift_reg[1]), .A0(n6), .B0(n14), .Y(n29) );
  AOI22X1M U15 ( .A0(shift_reg[2]), .A1(n5), .B0(P_DATA[1]), .B1(n8), .Y(n14)
         );
  OAI2B1X2M U16 ( .A1N(shift_reg[2]), .A0(n6), .B0(n13), .Y(n28) );
  AOI22X1M U17 ( .A0(shift_reg[3]), .A1(n5), .B0(P_DATA[2]), .B1(n8), .Y(n13)
         );
  OAI2B1X2M U18 ( .A1N(shift_reg[3]), .A0(n6), .B0(n12), .Y(n27) );
  AOI22X1M U19 ( .A0(shift_reg[4]), .A1(n5), .B0(P_DATA[3]), .B1(n8), .Y(n12)
         );
  OAI2B1X2M U20 ( .A1N(shift_reg[4]), .A0(n6), .B0(n11), .Y(n26) );
  AOI22X1M U21 ( .A0(shift_reg[5]), .A1(n5), .B0(P_DATA[4]), .B1(n8), .Y(n11)
         );
  OAI2B1X2M U22 ( .A1N(shift_reg[5]), .A0(n6), .B0(n10), .Y(n25) );
  AOI22X1M U23 ( .A0(shift_reg[6]), .A1(n5), .B0(P_DATA[5]), .B1(n8), .Y(n10)
         );
  OAI2B1X2M U24 ( .A1N(shift_reg[6]), .A0(n6), .B0(n9), .Y(n24) );
  AOI22X1M U25 ( .A0(shift_reg[7]), .A1(n5), .B0(P_DATA[6]), .B1(n8), .Y(n9)
         );
  NOR3BX2M U26 ( .AN(counter[3]), .B(n15), .C(n16), .Y(N33) );
  NOR2X2M U27 ( .A(n2), .B(counter[0]), .Y(N25) );
  CLKXOR2X2M U28 ( .A(n3), .B(counter[1]), .Y(n19) );
  CLKXOR2X2M U29 ( .A(n19), .B(n1), .Y(n16) );
  NOR2X2M U30 ( .A(n17), .B(n2), .Y(N28) );
  CLKXOR2X2M U31 ( .A(n18), .B(counter[3]), .Y(n17) );
  NAND2X2M U32 ( .A(n16), .B(n15), .Y(n18) );
  INVX2M U33 ( .A(counter[0]), .Y(n3) );
  AO2B2X2M U34 ( .B0(n5), .B1(shift_reg[0]), .A0(SER_DATA), .A1N(n5), .Y(n22)
         );
  AO2B2X2M U35 ( .B0(P_DATA[7]), .B1(n8), .A0(shift_reg[7]), .A1N(n8), .Y(n30)
         );
  INVX2M U36 ( .A(counter[1]), .Y(n4) );
endmodule


module UART_TX_FSM ( Data_Valid, ser_done, CLK, RST, PAR_EN, ser_en, mux_sel, 
        busy );
  output [1:0] mux_sel;
  input Data_Valid, ser_done, CLK, RST, PAR_EN;
  output ser_en, busy;
  wire   n6, n7, n8, n9, n10, n1, n2, n3, n4, n5;
  wire   [2:0] cs;
  wire   [2:0] ns;

  DFFRQX2M \cs_reg[0]  ( .D(ns[0]), .CK(CLK), .RN(RST), .Q(cs[0]) );
  DFFRQX2M \cs_reg[2]  ( .D(ns[2]), .CK(CLK), .RN(RST), .Q(cs[2]) );
  DFFRQX2M \cs_reg[1]  ( .D(ns[1]), .CK(CLK), .RN(RST), .Q(cs[1]) );
  NAND2X2M U3 ( .A(n10), .B(n3), .Y(mux_sel[0]) );
  NAND3X2M U4 ( .A(n7), .B(n3), .C(n2), .Y(busy) );
  INVX2M U5 ( .A(n10), .Y(n2) );
  OAI21X2M U6 ( .A0(cs[2]), .A1(n7), .B0(n6), .Y(mux_sel[1]) );
  NAND3X2M U7 ( .A(n1), .B(n3), .C(cs[1]), .Y(n6) );
  NAND2X2M U8 ( .A(cs[0]), .B(cs[1]), .Y(n7) );
  INVX2M U9 ( .A(cs[2]), .Y(n3) );
  CLKXOR2X2M U10 ( .A(cs[0]), .B(cs[1]), .Y(n10) );
  INVX2M U11 ( .A(cs[0]), .Y(n1) );
  OAI32X1M U12 ( .A0(n1), .A1(cs[2]), .A2(cs[1]), .B0(n8), .B1(n6), .Y(ns[1])
         );
  NOR2X2M U13 ( .A(PAR_EN), .B(n4), .Y(n8) );
  OAI32X1M U14 ( .A0(n4), .A1(PAR_EN), .A2(n6), .B0(cs[2]), .B1(n7), .Y(ns[2])
         );
  OAI31X1M U15 ( .A0(n5), .A1(n6), .A2(n4), .B0(n9), .Y(ns[0]) );
  INVX2M U16 ( .A(PAR_EN), .Y(n5) );
  NAND4BX1M U17 ( .AN(cs[1]), .B(Data_Valid), .C(n1), .D(n3), .Y(n9) );
  NOR2X2M U18 ( .A(cs[2]), .B(n2), .Y(ser_en) );
  INVX2M U19 ( .A(ser_done), .Y(n4) );
endmodule


module MUX_4x1 ( in0, in1, in2, in3, sel, out );
  input [1:0] sel;
  input in0, in1, in2, in3;
  output out;
  wire   n5, n2, n3, n4;

  CLKBUFX8M U1 ( .A(n5), .Y(out) );
  OAI2B2X1M U2 ( .A1N(sel[1]), .A0(n2), .B0(sel[1]), .B1(n3), .Y(n5) );
  INVX2M U3 ( .A(sel[0]), .Y(n4) );
  AOI22X1M U4 ( .A0(in0), .A1(n4), .B0(sel[0]), .B1(in1), .Y(n3) );
  AOI22X1M U5 ( .A0(in2), .A1(n4), .B0(in3), .B1(sel[0]), .Y(n2) );
endmodule


module UART_TX ( P_DATA, DATA_VALID, PAR_EN, PAR_TYPE, CLK, RST, TX_OUT, BUSY
 );
  input [7:0] P_DATA;
  input DATA_VALID, PAR_EN, PAR_TYPE, CLK, RST;
  output TX_OUT, BUSY;
  wire   PAR_BIT, SER_EN, SER_DONE, SER_DATA, n1, n2;
  wire   [1:0] MUX_SEL;

  Parity_Calc PAR_calc ( .p_data(P_DATA), .Data_Valid(DATA_VALID), .PAR_EN(
        PAR_EN), .Busy(BUSY), .CLK(CLK), .RST(n1), .Par_Type(PAR_TYPE), 
        .Par_Bit(PAR_BIT) );
  serializer Serializer ( .P_DATA(P_DATA), .DATA_VALID(DATA_VALID), .CLK(CLK), 
        .RST(n1), .busy(BUSY), .SER_EN(SER_EN), .SER_DONE(SER_DONE), 
        .SER_DATA(SER_DATA) );
  UART_TX_FSM fsm ( .Data_Valid(DATA_VALID), .ser_done(SER_DONE), .CLK(CLK), 
        .RST(n1), .PAR_EN(PAR_EN), .ser_en(SER_EN), .mux_sel(MUX_SEL), .busy(
        BUSY) );
  MUX_4x1 MUX ( .in0(1'b0), .in1(1'b1), .in2(SER_DATA), .in3(PAR_BIT), .sel(
        MUX_SEL), .out(TX_OUT) );
  INVX2M U3 ( .A(n2), .Y(n1) );
  INVX2M U4 ( .A(RST), .Y(n2) );
endmodule


module UART_RX_FSM ( CLK, RST, RX_IN, PAR_EN, bit_count, edge_count, Prescale, 
        sampling_done, par_err, strt_glitch, stp_err, deser_en, par_chk_en, 
        strt_chk_en, stp_chk_en, edge_bit_en, dat_sam_en, data_valid );
  input [3:0] bit_count;
  input [5:0] edge_count;
  input [5:0] Prescale;
  input CLK, RST, RX_IN, PAR_EN, sampling_done, par_err, strt_glitch, stp_err;
  output deser_en, par_chk_en, strt_chk_en, stp_chk_en, edge_bit_en,
         dat_sam_en, data_valid;
  wire   N34, N35, N36, N37, N38, N39, N40, N41, n20, n21, n22, n23, n24, n25,
         n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39,
         n40, n41, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14,
         n15, n16, n17, n18, n19, n42;
  wire   [2:0] cs;
  wire   [2:0] ns;

  DFFRQX2M \cs_reg[2]  ( .D(ns[2]), .CK(CLK), .RN(RST), .Q(cs[2]) );
  DFFRQX2M \cs_reg[1]  ( .D(ns[1]), .CK(CLK), .RN(RST), .Q(cs[1]) );
  DFFRQX2M \cs_reg[0]  ( .D(ns[0]), .CK(CLK), .RN(RST), .Q(cs[0]) );
  NOR3X2M U3 ( .A(n23), .B(n15), .C(n18), .Y(par_chk_en) );
  NOR2X2M U4 ( .A(n18), .B(n22), .Y(stp_chk_en) );
  NOR4XLM U5 ( .A(stp_err), .B(par_err), .C(n38), .D(n39), .Y(data_valid) );
  NAND2X2M U6 ( .A(n38), .B(n19), .Y(n22) );
  INVX2M U7 ( .A(n25), .Y(n15) );
  INVX2M U8 ( .A(n39), .Y(n19) );
  NAND3BX2M U9 ( .AN(n31), .B(n22), .C(n37), .Y(edge_bit_en) );
  OAI221X1M U10 ( .A0(n21), .A1(n17), .B0(n27), .B1(n24), .C0(n14), .Y(ns[1])
         );
  NOR3X2M U11 ( .A(n18), .B(n20), .C(n21), .Y(strt_chk_en) );
  INVX2M U12 ( .A(n33), .Y(n14) );
  OAI32X1M U13 ( .A0(n23), .A1(n15), .A2(n34), .B0(n24), .B1(n35), .Y(n33) );
  NOR2BXLM U14 ( .AN(par_err), .B(n18), .Y(n34) );
  INVX2M U15 ( .A(n20), .Y(n17) );
  NAND2X2M U16 ( .A(n37), .B(n39), .Y(dat_sam_en) );
  NOR3BX2M U17 ( .AN(N41), .B(bit_count[0]), .C(bit_count[2]), .Y(n36) );
  NAND4X2M U18 ( .A(bit_count[3]), .B(bit_count[0]), .C(n41), .D(N41), .Y(n25)
         );
  NOR2X2M U19 ( .A(bit_count[2]), .B(bit_count[1]), .Y(n41) );
  OA21X2M U20 ( .A0(PAR_EN), .A1(n25), .B0(n32), .Y(n38) );
  OR2X2M U21 ( .A(Prescale[1]), .B(Prescale[0]), .Y(n1) );
  NAND3X2M U22 ( .A(PAR_EN), .B(n40), .C(bit_count[1]), .Y(n32) );
  AND2X2M U23 ( .A(bit_count[3]), .B(n36), .Y(n40) );
  NOR2X2M U24 ( .A(cs[1]), .B(cs[0]), .Y(n37) );
  NAND2X2M U25 ( .A(cs[2]), .B(n37), .Y(n39) );
  NAND3X2M U26 ( .A(cs[0]), .B(n42), .C(cs[1]), .Y(n23) );
  INVX2M U27 ( .A(sampling_done), .Y(n18) );
  INVX2M U28 ( .A(cs[2]), .Y(n42) );
  OAI32X1M U29 ( .A0(n25), .A1(RX_IN), .A2(PAR_EN), .B0(RX_IN), .B1(n32), .Y(
        n30) );
  NOR3BX2M U30 ( .AN(n37), .B(RX_IN), .C(cs[2]), .Y(n31) );
  OAI211X2M U31 ( .A0(n21), .A1(n28), .B0(n14), .C0(n29), .Y(ns[0]) );
  OAI2BB1X2M U32 ( .A0N(strt_glitch), .A1N(sampling_done), .B0(n17), .Y(n28)
         );
  AOI21X2M U33 ( .A0(n19), .A1(n30), .B0(n31), .Y(n29) );
  NOR3BX2M U34 ( .AN(n36), .B(bit_count[1]), .C(bit_count[3]), .Y(n20) );
  NOR3BX2M U35 ( .AN(n40), .B(PAR_EN), .C(bit_count[1]), .Y(n27) );
  NAND3BX2M U36 ( .AN(bit_count[1]), .B(n40), .C(PAR_EN), .Y(n35) );
  OAI221X1M U37 ( .A0(n24), .A1(n16), .B0(n25), .B1(n23), .C0(n26), .Y(ns[2])
         );
  INVX2M U38 ( .A(n27), .Y(n16) );
  AO21XLM U39 ( .A0(sampling_done), .A1(stp_err), .B0(n22), .Y(n26) );
  NOR4BX1M U40 ( .AN(n35), .B(n27), .C(n18), .D(n24), .Y(deser_en) );
  NAND3BX2M U41 ( .AN(cs[1]), .B(n42), .C(cs[0]), .Y(n21) );
  NAND3BX2M U42 ( .AN(cs[0]), .B(n42), .C(cs[1]), .Y(n24) );
  CLKINVX1M U43 ( .A(Prescale[0]), .Y(N34) );
  OAI2BB1X1M U44 ( .A0N(Prescale[0]), .A1N(Prescale[1]), .B0(n1), .Y(N35) );
  OR2X1M U45 ( .A(n1), .B(Prescale[2]), .Y(n2) );
  OAI2BB1X1M U46 ( .A0N(n1), .A1N(Prescale[2]), .B0(n2), .Y(N36) );
  OR2X1M U47 ( .A(n2), .B(Prescale[3]), .Y(n3) );
  OAI2BB1X1M U48 ( .A0N(n2), .A1N(Prescale[3]), .B0(n3), .Y(N37) );
  OR2X1M U49 ( .A(n3), .B(Prescale[4]), .Y(n4) );
  OAI2BB1X1M U50 ( .A0N(n3), .A1N(Prescale[4]), .B0(n4), .Y(N38) );
  NOR2X1M U51 ( .A(n4), .B(Prescale[5]), .Y(N40) );
  AO21XLM U52 ( .A0(n4), .A1(Prescale[5]), .B0(N40), .Y(N39) );
  NOR2BX1M U53 ( .AN(N34), .B(edge_count[0]), .Y(n5) );
  OAI2B2X1M U54 ( .A1N(edge_count[1]), .A0(n5), .B0(N35), .B1(n5), .Y(n9) );
  XNOR2X1M U55 ( .A(N39), .B(edge_count[5]), .Y(n8) );
  NOR2BX1M U56 ( .AN(edge_count[0]), .B(N34), .Y(n6) );
  OAI2B2X1M U57 ( .A1N(N35), .A0(n6), .B0(edge_count[1]), .B1(n6), .Y(n7) );
  NAND4BX1M U58 ( .AN(N40), .B(n9), .C(n8), .D(n7), .Y(n13) );
  CLKXOR2X2M U59 ( .A(N38), .B(edge_count[4]), .Y(n12) );
  CLKXOR2X2M U60 ( .A(N36), .B(edge_count[2]), .Y(n11) );
  CLKXOR2X2M U61 ( .A(N37), .B(edge_count[3]), .Y(n10) );
  NOR4X1M U62 ( .A(n13), .B(n12), .C(n11), .D(n10), .Y(N41) );
endmodule


module data_sampling ( CLK, RST, RX_IN, dat_sam_en, prescale, edge_count, 
        sampled_bit, sampling_done );
  input [5:0] prescale;
  input [5:0] edge_count;
  input CLK, RST, RX_IN, dat_sam_en;
  output sampled_bit, sampling_done;
  wire   N2, N3, N4, N5, N6, N10, N11, N12, N13, N14, N15, n17, n18, n19,
         \sub_26/carry[4] , \sub_26/carry[3] , n1, n2, n3, n4, n5, n6, n7, n8,
         n9, n10, n11, n12, n13, n14, n15, n16, n20, n21, n22, n23, n24, n25,
         n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39;
  wire   [2:0] sampled_bits;
  assign N2 = prescale[1];

  DFFRQX2M \sampled_bits_reg[2]  ( .D(n19), .CK(CLK), .RN(RST), .Q(
        sampled_bits[2]) );
  DFFRQX2M sampling_done_reg ( .D(n39), .CK(CLK), .RN(RST), .Q(sampling_done)
         );
  DFFRQX2M \sampled_bits_reg[1]  ( .D(n18), .CK(CLK), .RN(RST), .Q(
        sampled_bits[1]) );
  DFFRQX2M \sampled_bits_reg[0]  ( .D(n17), .CK(CLK), .RN(RST), .Q(
        sampled_bits[0]) );
  NOR2X2M U3 ( .A(prescale[5]), .B(\sub_26/carry[4] ), .Y(n1) );
  OR2X2M U4 ( .A(prescale[2]), .B(N2), .Y(n2) );
  INVX2M U5 ( .A(prescale[2]), .Y(N3) );
  XNOR2X1M U6 ( .A(\sub_26/carry[4] ), .B(prescale[5]), .Y(N6) );
  OR2X1M U7 ( .A(prescale[4]), .B(\sub_26/carry[3] ), .Y(\sub_26/carry[4] ) );
  XNOR2X1M U8 ( .A(\sub_26/carry[3] ), .B(prescale[4]), .Y(N5) );
  OR2X1M U9 ( .A(prescale[3]), .B(prescale[2]), .Y(\sub_26/carry[3] ) );
  XNOR2X1M U10 ( .A(prescale[2]), .B(prescale[3]), .Y(N4) );
  CLKINVX1M U11 ( .A(N2), .Y(N10) );
  OAI2BB1X1M U12 ( .A0N(N2), .A1N(prescale[2]), .B0(n2), .Y(N11) );
  OR2X1M U13 ( .A(n2), .B(prescale[3]), .Y(n3) );
  OAI2BB1X1M U14 ( .A0N(n2), .A1N(prescale[3]), .B0(n3), .Y(N12) );
  XNOR2X1M U15 ( .A(prescale[4]), .B(n3), .Y(N13) );
  NOR3X1M U16 ( .A(prescale[4]), .B(prescale[5]), .C(n3), .Y(N15) );
  OAI21X1M U17 ( .A0(prescale[4]), .A1(n3), .B0(prescale[5]), .Y(n4) );
  NAND2BX1M U18 ( .AN(N15), .B(n4), .Y(N14) );
  OAI21X1M U19 ( .A0(n5), .A1(n6), .B0(n7), .Y(sampled_bit) );
  OAI21X1M U20 ( .A0(sampled_bits[0]), .A1(sampled_bits[1]), .B0(
        sampled_bits[2]), .Y(n7) );
  CLKMX2X2M U21 ( .A(sampled_bits[2]), .B(RX_IN), .S0(n39), .Y(n19) );
  AND4X1M U22 ( .A(n8), .B(dat_sam_en), .C(n9), .D(n10), .Y(n39) );
  NOR4X1M U23 ( .A(n11), .B(n12), .C(n13), .D(n14), .Y(n10) );
  XNOR2X1M U24 ( .A(prescale[5]), .B(n15), .Y(n14) );
  CLKXOR2X2M U25 ( .A(prescale[4]), .B(edge_count[3]), .Y(n13) );
  CLKXOR2X2M U26 ( .A(prescale[3]), .B(edge_count[2]), .Y(n12) );
  CLKXOR2X2M U27 ( .A(prescale[2]), .B(edge_count[1]), .Y(n11) );
  NOR3X1M U28 ( .A(n16), .B(edge_count[5]), .C(n20), .Y(n9) );
  NOR4X1M U29 ( .A(n21), .B(n22), .C(n23), .D(n24), .Y(n16) );
  XNOR2X1M U30 ( .A(edge_count[0]), .B(N2), .Y(n8) );
  MXI2X1M U31 ( .A(n6), .B(n25), .S0(n26), .Y(n18) );
  NOR4X1M U32 ( .A(n27), .B(n21), .C(n20), .D(n28), .Y(n26) );
  XNOR2X1M U33 ( .A(n15), .B(N14), .Y(n21) );
  CLKINVX1M U34 ( .A(edge_count[4]), .Y(n15) );
  OR3X1M U35 ( .A(n24), .B(n22), .C(n23), .Y(n27) );
  NAND3X1M U36 ( .A(n29), .B(n30), .C(n31), .Y(n23) );
  XNOR2X1M U37 ( .A(edge_count[1]), .B(N11), .Y(n31) );
  XNOR2X1M U38 ( .A(edge_count[5]), .B(N15), .Y(n30) );
  XNOR2X1M U39 ( .A(edge_count[0]), .B(N10), .Y(n29) );
  CLKXOR2X2M U40 ( .A(edge_count[3]), .B(N13), .Y(n22) );
  CLKXOR2X2M U41 ( .A(edge_count[2]), .B(N12), .Y(n24) );
  CLKINVX1M U42 ( .A(sampled_bits[1]), .Y(n6) );
  MXI2X1M U43 ( .A(n5), .B(n25), .S0(n20), .Y(n17) );
  AND4X1M U44 ( .A(n32), .B(n33), .C(n34), .D(n35), .Y(n20) );
  NOR4X1M U45 ( .A(n28), .B(n36), .C(n37), .D(n38), .Y(n35) );
  CLKXOR2X2M U46 ( .A(edge_count[2]), .B(N4), .Y(n38) );
  CLKXOR2X2M U47 ( .A(edge_count[1]), .B(N3), .Y(n37) );
  CLKXOR2X2M U48 ( .A(edge_count[0]), .B(N2), .Y(n36) );
  CLKINVX1M U49 ( .A(dat_sam_en), .Y(n28) );
  XNOR2X1M U50 ( .A(edge_count[4]), .B(N6), .Y(n34) );
  XNOR2X1M U51 ( .A(edge_count[5]), .B(n1), .Y(n33) );
  XNOR2X1M U52 ( .A(edge_count[3]), .B(N5), .Y(n32) );
  CLKINVX1M U53 ( .A(RX_IN), .Y(n25) );
  CLKINVX1M U54 ( .A(sampled_bits[0]), .Y(n5) );
endmodule


module edge_bit_counter ( CLK, RST, enable, PAR_EN, prescale, bit_count, 
        edge_count );
  input [5:0] prescale;
  output [3:0] bit_count;
  output [5:0] edge_count;
  input CLK, RST, enable, PAR_EN;
  wire   N6, N7, N8, N9, N10, N11, N12, edge_done, N25, N26, N27, N28, n13,
         n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27,
         n28, n29, n30, n31, n32, n33, n34, n35, \add_26/carry[5] ,
         \add_26/carry[4] , \add_26/carry[3] , \add_26/carry[2] , n1, n2, n3,
         n4, n5, n6, n7, n8, n9, n10, n11, n12, n36, n37, n38, n39, n40, n41,
         n42, n43, n44, n45;

  DFFRQX2M \edge_count_reg[5]  ( .D(n33), .CK(CLK), .RN(RST), .Q(edge_count[5]) );
  DFFRQX2M \edge_count_reg[4]  ( .D(n28), .CK(CLK), .RN(RST), .Q(edge_count[4]) );
  DFFRQX2M \edge_count_reg[3]  ( .D(n29), .CK(CLK), .RN(RST), .Q(edge_count[3]) );
  DFFRQX2M \edge_count_reg[2]  ( .D(n30), .CK(CLK), .RN(RST), .Q(edge_count[2]) );
  DFFRQX2M \bit_count_reg[2]  ( .D(n26), .CK(CLK), .RN(RST), .Q(bit_count[2])
         );
  DFFRQX2M \bit_count_reg[1]  ( .D(n27), .CK(CLK), .RN(RST), .Q(bit_count[1])
         );
  DFFRQX2M \bit_count_reg[3]  ( .D(n34), .CK(CLK), .RN(RST), .Q(bit_count[3])
         );
  DFFRQX2M \edge_count_reg[0]  ( .D(n32), .CK(CLK), .RN(RST), .Q(edge_count[0]) );
  DFFRQX2M \edge_count_reg[1]  ( .D(n31), .CK(CLK), .RN(RST), .Q(edge_count[1]) );
  DFFRQX2M \bit_count_reg[0]  ( .D(n35), .CK(CLK), .RN(RST), .Q(bit_count[0])
         );
  NAND2X2M U3 ( .A(enable), .B(n38), .Y(n20) );
  INVX2M U4 ( .A(enable), .Y(n40) );
  INVX2M U5 ( .A(PAR_EN), .Y(n39) );
  INVX2M U6 ( .A(n15), .Y(n41) );
  NOR2X2M U7 ( .A(n40), .B(edge_done), .Y(n19) );
  NOR2BX2M U8 ( .AN(N25), .B(n20), .Y(n31) );
  NOR2BX2M U9 ( .AN(N26), .B(n20), .Y(n30) );
  NOR2BX2M U10 ( .AN(N27), .B(n20), .Y(n29) );
  NOR2BX2M U11 ( .AN(N28), .B(n20), .Y(n28) );
  INVX2M U12 ( .A(edge_done), .Y(n38) );
  NOR2X2M U13 ( .A(n43), .B(n42), .Y(n15) );
  NAND3XLM U14 ( .A(edge_done), .B(n24), .C(enable), .Y(n17) );
  NAND4X2M U15 ( .A(PAR_EN), .B(bit_count[2]), .C(n25), .D(bit_count[3]), .Y(
        n24) );
  NOR2X2M U16 ( .A(bit_count[1]), .B(bit_count[0]), .Y(n25) );
  OAI32X1M U17 ( .A0(n17), .A1(bit_count[1]), .A2(n42), .B0(n18), .B1(n43), 
        .Y(n27) );
  AOI2BB1X2M U18 ( .A0N(n17), .A1N(bit_count[0]), .B0(n19), .Y(n18) );
  OAI22X1M U19 ( .A0(n13), .A1(n45), .B0(n14), .B1(n40), .Y(n26) );
  AOI33XLM U20 ( .A0(edge_done), .A1(n15), .A2(n16), .B0(n41), .B1(n44), .B2(
        bit_count[2]), .Y(n14) );
  AOI21X2M U21 ( .A0(bit_count[3]), .A1(n39), .B0(bit_count[2]), .Y(n16) );
  OAI22X1M U22 ( .A0(n13), .A1(n44), .B0(n21), .B1(n40), .Y(n34) );
  AOI31X2M U23 ( .A0(bit_count[3]), .A1(n45), .A2(PAR_EN), .B0(n22), .Y(n21)
         );
  NOR4X1M U24 ( .A(bit_count[3]), .B(n41), .C(n38), .D(n45), .Y(n22) );
  OAI2BB2X1M U25 ( .B0(bit_count[0]), .B1(n17), .A0N(bit_count[0]), .A1N(n19), 
        .Y(n35) );
  NOR2X2M U26 ( .A(n1), .B(n20), .Y(n33) );
  XNOR2X2M U27 ( .A(\add_26/carry[5] ), .B(edge_count[5]), .Y(n1) );
  NOR2X2M U28 ( .A(edge_count[0]), .B(n20), .Y(n32) );
  OA21X2M U29 ( .A0(n40), .A1(n23), .B0(n20), .Y(n13) );
  OAI31X1M U30 ( .A0(n39), .A1(bit_count[1]), .A2(bit_count[0]), .B0(n41), .Y(
        n23) );
  INVX2M U31 ( .A(bit_count[0]), .Y(n42) );
  INVX2M U32 ( .A(bit_count[2]), .Y(n45) );
  INVX2M U33 ( .A(bit_count[1]), .Y(n43) );
  INVX2M U34 ( .A(bit_count[3]), .Y(n44) );
  ADDHX1M U35 ( .A(edge_count[1]), .B(edge_count[0]), .CO(\add_26/carry[2] ), 
        .S(N25) );
  ADDHX1M U36 ( .A(edge_count[2]), .B(\add_26/carry[2] ), .CO(
        \add_26/carry[3] ), .S(N26) );
  ADDHX1M U37 ( .A(edge_count[3]), .B(\add_26/carry[3] ), .CO(
        \add_26/carry[4] ), .S(N27) );
  ADDHX1M U38 ( .A(edge_count[4]), .B(\add_26/carry[4] ), .CO(
        \add_26/carry[5] ), .S(N28) );
  OR2X2M U39 ( .A(prescale[1]), .B(prescale[0]), .Y(n2) );
  CLKINVX1M U40 ( .A(prescale[0]), .Y(N6) );
  OAI2BB1X1M U41 ( .A0N(prescale[0]), .A1N(prescale[1]), .B0(n2), .Y(N7) );
  OR2X1M U42 ( .A(n2), .B(prescale[2]), .Y(n3) );
  OAI2BB1X1M U43 ( .A0N(n2), .A1N(prescale[2]), .B0(n3), .Y(N8) );
  OR2X1M U44 ( .A(n3), .B(prescale[3]), .Y(n4) );
  OAI2BB1X1M U45 ( .A0N(n3), .A1N(prescale[3]), .B0(n4), .Y(N9) );
  OR2X1M U46 ( .A(n4), .B(prescale[4]), .Y(n5) );
  OAI2BB1X1M U47 ( .A0N(n4), .A1N(prescale[4]), .B0(n5), .Y(N10) );
  NOR2X1M U48 ( .A(n5), .B(prescale[5]), .Y(N12) );
  AO21XLM U49 ( .A0(n5), .A1(prescale[5]), .B0(N12), .Y(N11) );
  NOR2BX1M U50 ( .AN(N6), .B(edge_count[0]), .Y(n6) );
  OAI2B2X1M U51 ( .A1N(edge_count[1]), .A0(n6), .B0(N7), .B1(n6), .Y(n10) );
  XNOR2X1M U52 ( .A(N11), .B(edge_count[5]), .Y(n9) );
  NOR2BX1M U53 ( .AN(edge_count[0]), .B(N6), .Y(n7) );
  OAI2B2X1M U54 ( .A1N(N7), .A0(n7), .B0(edge_count[1]), .B1(n7), .Y(n8) );
  NAND4BX1M U55 ( .AN(N12), .B(n10), .C(n9), .D(n8), .Y(n37) );
  CLKXOR2X2M U56 ( .A(N10), .B(edge_count[4]), .Y(n36) );
  CLKXOR2X2M U57 ( .A(N8), .B(edge_count[2]), .Y(n12) );
  CLKXOR2X2M U58 ( .A(N9), .B(edge_count[3]), .Y(n11) );
  NOR4X1M U59 ( .A(n37), .B(n36), .C(n12), .D(n11), .Y(edge_done) );
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
  XNOR2X2M U7 ( .A(parity_bit), .B(PAR_TYP), .Y(n4) );
  XNOR2X2M U8 ( .A(P_DATA[3]), .B(P_DATA[2]), .Y(n6) );
  XNOR2X2M U9 ( .A(P_DATA[7]), .B(P_DATA[6]), .Y(n5) );
endmodule


module start_check ( start_bit, start_check_en, start_glitch );
  input start_bit, start_check_en;
  output start_glitch;


  AND2X1M U1 ( .A(start_check_en), .B(start_bit), .Y(start_glitch) );
endmodule


module stop_check ( stop_bit, stop_check_en, stop_err );
  input stop_bit, stop_check_en;
  output stop_err;
  wire   n2;

  CLKBUFX8M U1 ( .A(n2), .Y(stop_err) );
  NOR2BX2M U2 ( .AN(stop_check_en), .B(stop_bit), .Y(n2) );
endmodule


module desarilzer ( CLK, RST, deser_en, sampled_bit, bit_count, P_DATA );
  input [3:0] bit_count;
  output [7:0] P_DATA;
  input CLK, RST, deser_en, sampled_bit;
  wire   N13, N14, N15, N16, N17, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15,
         n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n1, n2, n3, n4;

  DFFRQX2M \P_DATA_reg[5]  ( .D(n23), .CK(CLK), .RN(RST), .Q(P_DATA[5]) );
  DFFRQX2M \P_DATA_reg[1]  ( .D(n19), .CK(CLK), .RN(RST), .Q(P_DATA[1]) );
  DFFRQX2M \P_DATA_reg[4]  ( .D(n22), .CK(CLK), .RN(RST), .Q(P_DATA[4]) );
  DFFRQX2M \P_DATA_reg[0]  ( .D(n18), .CK(CLK), .RN(RST), .Q(P_DATA[0]) );
  DFFRQX2M \P_DATA_reg[7]  ( .D(n25), .CK(CLK), .RN(RST), .Q(P_DATA[7]) );
  DFFRQX2M \P_DATA_reg[3]  ( .D(n21), .CK(CLK), .RN(RST), .Q(P_DATA[3]) );
  DFFRQX2M \P_DATA_reg[6]  ( .D(n24), .CK(CLK), .RN(RST), .Q(P_DATA[6]) );
  DFFRQX2M \P_DATA_reg[2]  ( .D(n20), .CK(CLK), .RN(RST), .Q(P_DATA[2]) );
  NOR2BX2M U3 ( .AN(n11), .B(N15), .Y(n7) );
  AND2X2M U4 ( .A(N15), .B(n11), .Y(n13) );
  INVX2M U5 ( .A(sampled_bit), .Y(n4) );
  INVX2M U6 ( .A(N14), .Y(n3) );
  OAI2BB2X1M U7 ( .B0(n4), .B1(n8), .A0N(P_DATA[1]), .A1N(n8), .Y(n19) );
  NAND3X2M U8 ( .A(n7), .B(n3), .C(N13), .Y(n8) );
  OAI2BB2X1M U9 ( .B0(n4), .B1(n9), .A0N(P_DATA[2]), .A1N(n9), .Y(n20) );
  NAND3X2M U10 ( .A(n7), .B(bit_count[0]), .C(N14), .Y(n9) );
  OAI2BB2X1M U11 ( .B0(n4), .B1(n10), .A0N(P_DATA[3]), .A1N(n10), .Y(n21) );
  NAND3X2M U12 ( .A(N13), .B(n7), .C(N14), .Y(n10) );
  OAI2BB2X1M U13 ( .B0(n4), .B1(n14), .A0N(P_DATA[5]), .A1N(n14), .Y(n23) );
  NAND3X2M U14 ( .A(N13), .B(n3), .C(n13), .Y(n14) );
  OAI2BB2X1M U15 ( .B0(n4), .B1(n15), .A0N(P_DATA[6]), .A1N(n15), .Y(n24) );
  NAND3X2M U16 ( .A(N14), .B(bit_count[0]), .C(n13), .Y(n15) );
  OAI2BB2X1M U17 ( .B0(n4), .B1(n16), .A0N(P_DATA[7]), .A1N(n16), .Y(n25) );
  NAND3X2M U18 ( .A(N14), .B(N13), .C(n13), .Y(n16) );
  OAI2BB2X1M U19 ( .B0(n6), .B1(n4), .A0N(P_DATA[0]), .A1N(n6), .Y(n18) );
  NAND3X2M U20 ( .A(bit_count[0]), .B(n3), .C(n7), .Y(n6) );
  OAI2BB2X1M U21 ( .B0(n4), .B1(n12), .A0N(P_DATA[4]), .A1N(n12), .Y(n22) );
  NAND3X2M U22 ( .A(bit_count[0]), .B(n3), .C(n13), .Y(n12) );
  AND2X2M U23 ( .A(n17), .B(deser_en), .Y(n11) );
  NOR2X2M U24 ( .A(N17), .B(N16), .Y(n17) );
  OR2X2M U25 ( .A(bit_count[1]), .B(bit_count[0]), .Y(n1) );
  CLKINVX1M U26 ( .A(bit_count[0]), .Y(N13) );
  OAI2BB1X1M U27 ( .A0N(bit_count[0]), .A1N(bit_count[1]), .B0(n1), .Y(N14) );
  OR2X1M U28 ( .A(n1), .B(bit_count[2]), .Y(n2) );
  OAI2BB1X1M U29 ( .A0N(n1), .A1N(bit_count[2]), .B0(n2), .Y(N15) );
  NOR2X1M U30 ( .A(n2), .B(bit_count[3]), .Y(N17) );
  AO21XLM U31 ( .A0(n2), .A1(bit_count[3]), .B0(N17), .Y(N16) );
endmodule


module UART_RX ( RX_IN, Prescale, PAR_EN, PAR_TYP, CLK, RST, P_DATA, 
        Parity_Error, Stop_Error, Data_Valid );
  input [5:0] Prescale;
  output [7:0] P_DATA;
  input RX_IN, PAR_EN, PAR_TYP, CLK, RST;
  output Parity_Error, Stop_Error, Data_Valid;
  wire   sampling_done, strt_glitch, deser_en, par_chk_en, strt_chk_en,
         stp_chk_en, edge_bit_en, dat_sam_en, sampled_bit, n1, n2;
  wire   [3:0] bit_count;
  wire   [5:0] edge_count;

  UART_RX_FSM FSM_u0 ( .CLK(CLK), .RST(n1), .RX_IN(RX_IN), .PAR_EN(PAR_EN), 
        .bit_count(bit_count), .edge_count(edge_count), .Prescale(Prescale), 
        .sampling_done(sampling_done), .par_err(Parity_Error), .strt_glitch(
        strt_glitch), .stp_err(Stop_Error), .deser_en(deser_en), .par_chk_en(
        par_chk_en), .strt_chk_en(strt_chk_en), .stp_chk_en(stp_chk_en), 
        .edge_bit_en(edge_bit_en), .dat_sam_en(dat_sam_en), .data_valid(
        Data_Valid) );
  data_sampling data_sampling_u0 ( .CLK(CLK), .RST(n1), .RX_IN(RX_IN), 
        .dat_sam_en(dat_sam_en), .prescale(Prescale), .edge_count(edge_count), 
        .sampled_bit(sampled_bit), .sampling_done(sampling_done) );
  edge_bit_counter edge_bit_counter_u0 ( .CLK(CLK), .RST(n1), .enable(
        edge_bit_en), .PAR_EN(par_chk_en), .prescale(Prescale), .bit_count(
        bit_count), .edge_count(edge_count) );
  parity_check parity_check_u0 ( .P_DATA(P_DATA), .parity_bit(sampled_bit), 
        .PAR_TYP(PAR_TYP), .par_check_en(par_chk_en), .par_err(Parity_Error)
         );
  start_check start_check_u0 ( .start_bit(sampled_bit), .start_check_en(
        strt_chk_en), .start_glitch(strt_glitch) );
  stop_check stop_check_u0 ( .stop_bit(sampled_bit), .stop_check_en(stp_chk_en), .stop_err(Stop_Error) );
  desarilzer desarilzer_u0 ( .CLK(CLK), .RST(n1), .deser_en(deser_en), 
        .sampled_bit(sampled_bit), .bit_count(bit_count), .P_DATA(P_DATA) );
  INVX2M U1 ( .A(n2), .Y(n1) );
  INVX2M U2 ( .A(RST), .Y(n2) );
endmodule


module UART ( RST, TX_CLK, RX_CLK, RX_IN_S, RX_OUT_P, RX_OUT_V, TX_IN_P, 
        TX_IN_V, TX_OUT_S, TX_OUT_V, Prescale, parity_enable, parity_type, 
        parity_error, framing_error );
  output [7:0] RX_OUT_P;
  input [7:0] TX_IN_P;
  input [5:0] Prescale;
  input RST, TX_CLK, RX_CLK, RX_IN_S, TX_IN_V, parity_enable, parity_type;
  output RX_OUT_V, TX_OUT_S, TX_OUT_V, parity_error, framing_error;
  wire   n1, n2;

  UART_TX U0_UART_TX ( .P_DATA(TX_IN_P), .DATA_VALID(TX_IN_V), .PAR_EN(
        parity_enable), .PAR_TYPE(parity_type), .CLK(TX_CLK), .RST(n1), 
        .TX_OUT(TX_OUT_S), .BUSY(TX_OUT_V) );
  UART_RX U0_UART_RX ( .RX_IN(RX_IN_S), .Prescale(Prescale), .PAR_EN(
        parity_enable), .PAR_TYP(parity_type), .CLK(RX_CLK), .RST(n1), 
        .P_DATA(RX_OUT_P), .Parity_Error(parity_error), .Stop_Error(
        framing_error), .Data_Valid(RX_OUT_V) );
  INVX2M U1 ( .A(n2), .Y(n1) );
  INVX2M U2 ( .A(RST), .Y(n2) );
endmodule


module SYS_CTRL ( CLK, RST, ALU_OUT, ALU_OUT_Valid, RX_P_Data, RX_D_VLD, 
        RegFile_RdData, RegFile_RdData_Valid, FIFO_FULL, ClkGating_EN, 
        ClkDiv_EN, ALU_EN, ALU_FUN, RegFile_Address, RegFile_WrEn, 
        RegFile_RdEn, RegFile_WrData, FIFO_WrData, FIFO_WrInc );
  input [15:0] ALU_OUT;
  input [7:0] RX_P_Data;
  input [7:0] RegFile_RdData;
  output [3:0] ALU_FUN;
  output [3:0] RegFile_Address;
  output [7:0] RegFile_WrData;
  output [7:0] FIFO_WrData;
  input CLK, RST, ALU_OUT_Valid, RX_D_VLD, RegFile_RdData_Valid, FIFO_FULL;
  output ClkGating_EN, ClkDiv_EN, ALU_EN, RegFile_WrEn, RegFile_RdEn,
         FIFO_WrInc;
  wire   N118, N119, N120, N121, N143, N147, N148, N149, N150, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n3, n4, n5, n6, n7,
         n8, n9, n10, n11, n12, n13, n55, n56, n57, n58, n59, n60, n61, n62,
         n63, n64, n65, n66, n67, n68, n69, n70;
  wire   [3:0] cs;
  wire   [3:0] RegFile_Address_seq;
  wire   [3:0] ns;

  DFFRQX2M \RegFile_Address_seq_reg[3]  ( .D(RegFile_Address[3]), .CK(CLK), 
        .RN(RST), .Q(RegFile_Address_seq[3]) );
  DFFRQX2M \RegFile_Address_seq_reg[2]  ( .D(RegFile_Address[2]), .CK(CLK), 
        .RN(RST), .Q(RegFile_Address_seq[2]) );
  DFFRQX2M \RegFile_Address_seq_reg[1]  ( .D(RegFile_Address[1]), .CK(CLK), 
        .RN(RST), .Q(RegFile_Address_seq[1]) );
  DFFRQX2M \RegFile_Address_seq_reg[0]  ( .D(RegFile_Address[0]), .CK(CLK), 
        .RN(RST), .Q(RegFile_Address_seq[0]) );
  DFFRQX2M \cs_reg[0]  ( .D(ns[0]), .CK(CLK), .RN(RST), .Q(cs[0]) );
  DFFRQX2M \cs_reg[2]  ( .D(ns[2]), .CK(CLK), .RN(RST), .Q(cs[2]) );
  DFFRQX2M \cs_reg[1]  ( .D(ns[1]), .CK(CLK), .RN(RST), .Q(cs[1]) );
  DFFRQX2M \cs_reg[3]  ( .D(ns[3]), .CK(CLK), .RN(RST), .Q(cs[3]) );
  INVX2M U3 ( .A(1'b0), .Y(ClkDiv_EN) );
  NOR2X2M U5 ( .A(n68), .B(n18), .Y(ALU_FUN[2]) );
  NOR2X2M U6 ( .A(n70), .B(n18), .Y(ALU_FUN[0]) );
  MX3X1M U7 ( .A(n57), .B(n55), .C(RegFile_Address_seq[3]), .S0(cs[1]), .S1(
        cs[3]), .Y(RegFile_Address[3]) );
  MX3X1M U8 ( .A(n13), .B(n11), .C(RegFile_Address_seq[2]), .S0(cs[1]), .S1(
        cs[3]), .Y(RegFile_Address[2]) );
  BUFX2M U9 ( .A(cs[0]), .Y(n4) );
  NOR2BX2M U10 ( .AN(cs[1]), .B(cs[3]), .Y(n32) );
  INVX2M U11 ( .A(RegFile_WrEn), .Y(n60) );
  NAND2X2M U12 ( .A(n43), .B(n44), .Y(FIFO_WrInc) );
  INVX2M U13 ( .A(n43), .Y(n62) );
  NOR2X2M U14 ( .A(n69), .B(n18), .Y(ALU_FUN[1]) );
  OAI21X2M U15 ( .A0(n64), .A1(n70), .B0(n42), .Y(N118) );
  OAI21X2M U16 ( .A0(n64), .A1(n69), .B0(n41), .Y(N119) );
  OAI21X2M U17 ( .A0(n64), .A1(n67), .B0(n39), .Y(N121) );
  NOR2X2M U18 ( .A(n67), .B(n18), .Y(ALU_FUN[3]) );
  AND2X2M U19 ( .A(N119), .B(n4), .Y(n9) );
  AND2X2M U20 ( .A(N121), .B(n4), .Y(n56) );
  AND2X2M U21 ( .A(n4), .B(N118), .Y(n6) );
  INVX2M U22 ( .A(n42), .Y(N143) );
  AOI21X2M U23 ( .A0(n29), .A1(n25), .B0(n64), .Y(RegFile_WrEn) );
  NOR2X2M U24 ( .A(n70), .B(n60), .Y(RegFile_WrData[0]) );
  NOR2X2M U25 ( .A(n69), .B(n60), .Y(RegFile_WrData[1]) );
  NOR2X2M U26 ( .A(n68), .B(n60), .Y(RegFile_WrData[2]) );
  NOR2X2M U27 ( .A(n67), .B(n60), .Y(RegFile_WrData[3]) );
  NOR2X2M U28 ( .A(n66), .B(n60), .Y(RegFile_WrData[4]) );
  NOR2X2M U29 ( .A(n65), .B(n60), .Y(RegFile_WrData[7]) );
  NOR2X2M U30 ( .A(n58), .B(n44), .Y(n33) );
  NOR2X2M U31 ( .A(n26), .B(n64), .Y(RegFile_RdEn) );
  OAI21X2M U32 ( .A0(n64), .A1(n68), .B0(n40), .Y(N120) );
  NAND2X2M U33 ( .A(n20), .B(n19), .Y(n44) );
  NAND2X2M U34 ( .A(n54), .B(n4), .Y(n43) );
  NAND3X2M U35 ( .A(n32), .B(n61), .C(n3), .Y(n29) );
  NAND2X2M U36 ( .A(n4), .B(n32), .Y(n25) );
  NAND3X2M U37 ( .A(n61), .B(n63), .C(n32), .Y(n26) );
  INVX2M U38 ( .A(n18), .Y(ALU_EN) );
  INVX2M U39 ( .A(n4), .Y(n61) );
  AND2X2M U40 ( .A(n54), .B(n61), .Y(n20) );
  INVX2M U41 ( .A(n3), .Y(n63) );
  AND2X2M U42 ( .A(N120), .B(n4), .Y(n12) );
  NAND4BX1M U43 ( .AN(RegFile_RdEn), .B(n59), .C(n17), .D(n18), .Y(ns[2]) );
  OAI2BB1X2M U44 ( .A0N(n58), .A1N(n19), .B0(n20), .Y(n17) );
  NAND3X2M U45 ( .A(n4), .B(n32), .C(n3), .Y(n14) );
  NAND2X2M U46 ( .A(n4), .B(n37), .Y(n21) );
  MX4X1M U47 ( .A(N121), .B(RegFile_Address_seq[3]), .C(N150), .D(N150), .S0(
        n4), .S1(n3), .Y(n55) );
  MX2X2M U48 ( .A(n56), .B(RegFile_Address_seq[3]), .S0(n3), .Y(n57) );
  INVX2M U49 ( .A(n39), .Y(N150) );
  NOR4BX1M U50 ( .AN(cs[3]), .B(n4), .C(cs[1]), .D(n3), .Y(ClkGating_EN) );
  NAND2X2M U51 ( .A(ClkGating_EN), .B(RX_D_VLD), .Y(n18) );
  INVX2M U52 ( .A(RX_D_VLD), .Y(n64) );
  MX3X1M U53 ( .A(n7), .B(n5), .C(RegFile_Address_seq[0]), .S0(cs[1]), .S1(
        cs[3]), .Y(RegFile_Address[0]) );
  MX4X1M U54 ( .A(N118), .B(RegFile_Address_seq[0]), .C(N143), .D(N147), .S0(
        n4), .S1(n3), .Y(n5) );
  MX2X2M U55 ( .A(n6), .B(RegFile_Address_seq[0]), .S0(n3), .Y(n7) );
  NAND2BX2M U56 ( .AN(RegFile_Address_seq[0]), .B(n64), .Y(N147) );
  MX3X1M U57 ( .A(n10), .B(n8), .C(RegFile_Address_seq[1]), .S0(cs[1]), .S1(
        cs[3]), .Y(RegFile_Address[1]) );
  MX4X1M U58 ( .A(N119), .B(RegFile_Address_seq[1]), .C(N148), .D(N148), .S0(
        n4), .S1(n3), .Y(n8) );
  MX2X2M U59 ( .A(n9), .B(RegFile_Address_seq[1]), .S0(n3), .Y(n10) );
  INVX2M U60 ( .A(n41), .Y(N148) );
  INVX2M U61 ( .A(RX_P_Data[0]), .Y(n70) );
  NAND2X2M U62 ( .A(RegFile_Address_seq[0]), .B(n64), .Y(n42) );
  NAND2X2M U63 ( .A(RegFile_Address_seq[1]), .B(n64), .Y(n41) );
  NAND2X2M U64 ( .A(RegFile_Address_seq[3]), .B(n64), .Y(n39) );
  BUFX2M U65 ( .A(cs[2]), .Y(n3) );
  MX4X1M U66 ( .A(N120), .B(RegFile_Address_seq[2]), .C(N149), .D(N149), .S0(
        n4), .S1(n3), .Y(n11) );
  MX2X2M U67 ( .A(n12), .B(RegFile_Address_seq[2]), .S0(n3), .Y(n13) );
  INVX2M U68 ( .A(n40), .Y(N149) );
  NOR3X2M U69 ( .A(cs[1]), .B(cs[3]), .C(n63), .Y(n54) );
  NOR2X2M U70 ( .A(n44), .B(ALU_OUT_Valid), .Y(n46) );
  AOI2B1X1M U71 ( .A1N(RegFile_RdData_Valid), .A0(n58), .B0(FIFO_FULL), .Y(n19) );
  OAI2BB1X2M U72 ( .A0N(ALU_OUT[8]), .A1N(n62), .B0(n53), .Y(FIFO_WrData[0])
         );
  AOI22X1M U73 ( .A0(RegFile_RdData[0]), .A1(n46), .B0(ALU_OUT[0]), .B1(n33), 
        .Y(n53) );
  OAI2BB1X2M U74 ( .A0N(ALU_OUT[9]), .A1N(n62), .B0(n52), .Y(FIFO_WrData[1])
         );
  AOI22X1M U75 ( .A0(RegFile_RdData[1]), .A1(n46), .B0(ALU_OUT[1]), .B1(n33), 
        .Y(n52) );
  OAI2BB1X2M U76 ( .A0N(ALU_OUT[10]), .A1N(n62), .B0(n51), .Y(FIFO_WrData[2])
         );
  AOI22X1M U77 ( .A0(RegFile_RdData[2]), .A1(n46), .B0(ALU_OUT[2]), .B1(n33), 
        .Y(n51) );
  OAI2BB1X2M U78 ( .A0N(ALU_OUT[11]), .A1N(n62), .B0(n50), .Y(FIFO_WrData[3])
         );
  AOI22X1M U79 ( .A0(RegFile_RdData[3]), .A1(n46), .B0(ALU_OUT[3]), .B1(n33), 
        .Y(n50) );
  OAI2BB1X2M U80 ( .A0N(ALU_OUT[12]), .A1N(n62), .B0(n49), .Y(FIFO_WrData[4])
         );
  AOI22X1M U81 ( .A0(RegFile_RdData[4]), .A1(n46), .B0(ALU_OUT[4]), .B1(n33), 
        .Y(n49) );
  OAI2BB1X2M U82 ( .A0N(ALU_OUT[13]), .A1N(n62), .B0(n48), .Y(FIFO_WrData[5])
         );
  AOI22X1M U83 ( .A0(RegFile_RdData[5]), .A1(n46), .B0(ALU_OUT[5]), .B1(n33), 
        .Y(n48) );
  OAI2BB1X2M U84 ( .A0N(ALU_OUT[14]), .A1N(n62), .B0(n47), .Y(FIFO_WrData[6])
         );
  AOI22X1M U85 ( .A0(RegFile_RdData[6]), .A1(n46), .B0(ALU_OUT[6]), .B1(n33), 
        .Y(n47) );
  OAI2BB1X2M U86 ( .A0N(ALU_OUT[15]), .A1N(n62), .B0(n45), .Y(FIFO_WrData[7])
         );
  AOI22X1M U87 ( .A0(RegFile_RdData[7]), .A1(n46), .B0(ALU_OUT[7]), .B1(n33), 
        .Y(n45) );
  AND2X2M U88 ( .A(RX_P_Data[5]), .B(RegFile_WrEn), .Y(RegFile_WrData[5]) );
  AND2X2M U89 ( .A(RX_P_Data[6]), .B(RegFile_WrEn), .Y(RegFile_WrData[6]) );
  NAND4BX1M U90 ( .AN(n33), .B(n21), .C(n34), .D(n35), .Y(ns[0]) );
  OA22X2M U91 ( .A0(n25), .A1(RX_D_VLD), .B0(n29), .B1(n64), .Y(n35) );
  NAND3X2M U92 ( .A(n70), .B(n66), .C(n23), .Y(n34) );
  NAND2X2M U93 ( .A(RegFile_Address_seq[2]), .B(n64), .Y(n40) );
  INVX2M U94 ( .A(RX_P_Data[3]), .Y(n67) );
  INVX2M U95 ( .A(RX_P_Data[1]), .Y(n69) );
  INVX2M U96 ( .A(RX_P_Data[2]), .Y(n68) );
  INVX2M U97 ( .A(ALU_OUT_Valid), .Y(n58) );
  NOR3X2M U98 ( .A(n3), .B(cs[3]), .C(cs[1]), .Y(n37) );
  OAI211X2M U99 ( .A0(n64), .A1(n21), .B0(n59), .C0(n22), .Y(ns[1]) );
  AOI31X2M U100 ( .A0(RX_P_Data[4]), .A1(RX_P_Data[0]), .A2(n23), .B0(n24), 
        .Y(n22) );
  AOI21X2M U101 ( .A0(n25), .A1(n26), .B0(RX_D_VLD), .Y(n24) );
  OAI21X2M U102 ( .A0(n64), .A1(n14), .B0(n15), .Y(ns[3]) );
  AOI32X1M U103 ( .A0(RX_P_Data[0]), .A1(n16), .A2(RX_P_Data[4]), .B0(
        ClkGating_EN), .B1(n64), .Y(n15) );
  AND4X2M U104 ( .A(RX_P_Data[6]), .B(RX_P_Data[2]), .C(n30), .D(n31), .Y(n16)
         );
  NOR2X2M U105 ( .A(RX_P_Data[5]), .B(RX_P_Data[1]), .Y(n30) );
  AND4X2M U106 ( .A(RX_P_Data[5]), .B(RX_P_Data[1]), .C(n36), .D(n31), .Y(n23)
         );
  NOR2X2M U107 ( .A(RX_P_Data[6]), .B(RX_P_Data[2]), .Y(n36) );
  INVX2M U108 ( .A(RX_P_Data[4]), .Y(n66) );
  AND4X2M U109 ( .A(n37), .B(n61), .C(RX_D_VLD), .D(n38), .Y(n31) );
  NOR2X2M U110 ( .A(n67), .B(n65), .Y(n38) );
  INVX2M U111 ( .A(n27), .Y(n59) );
  OAI211X2M U112 ( .A0(RX_D_VLD), .A1(n14), .B0(n28), .C0(n29), .Y(n27) );
  NAND3X2M U113 ( .A(n70), .B(n66), .C(n16), .Y(n28) );
  INVX2M U114 ( .A(RX_P_Data[7]), .Y(n65) );
endmodule


module RegFile_WIDTH8_DEPTH16_ADDR4 ( CLK, RST, WrEn, RdEn, Address, WrData, 
        RdData, RdData_VLD, REG0, REG1, REG2, REG3 );
  input [3:0] Address;
  input [7:0] WrData;
  output [7:0] RdData;
  output [7:0] REG0;
  output [7:0] REG1;
  output [7:0] REG2;
  output [7:0] REG3;
  input CLK, RST, WrEn, RdEn;
  output RdData_VLD;
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
         \regArr[4][0] , N35, N36, N37, N38, N39, N40, N41, N42, n12, n13, n14,
         n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28,
         n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42,
         n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56,
         n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70,
         n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84,
         n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98,
         n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
         n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121,
         n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132,
         n133, n134, n135, n136, n137, n138, n139, n140, n141, n142, n143,
         n144, n145, n146, n147, n148, n149, n150, n151, n152, n153, n154,
         n155, n156, n157, n158, n159, n160, n161, n162, n163, n164, n165,
         n166, n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n1,
         n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n177, n178, n179, n180,
         n181, n182, n183, n184, n185, n186, n187, n188, n189, n190, n191,
         n192, n193, n194, n195, n196, n197, n198, n199, n200, n201, n202,
         n203, n204, n205, n206, n207, n208, n209, n210, n211, n212, n213,
         n214, n215, n216, n217, n218, n219, n220, n221, n222, n223, n224,
         n225, n226, n227;
  assign N10 = Address[0];
  assign N11 = Address[1];
  assign N12 = Address[2];
  assign N13 = Address[3];

  DFFRQX2M \regArr_reg[13][7]  ( .D(n160), .CK(CLK), .RN(n212), .Q(
        \regArr[13][7] ) );
  DFFRQX2M \regArr_reg[13][6]  ( .D(n159), .CK(CLK), .RN(n212), .Q(
        \regArr[13][6] ) );
  DFFRQX2M \regArr_reg[13][5]  ( .D(n158), .CK(CLK), .RN(n211), .Q(
        \regArr[13][5] ) );
  DFFRQX2M \regArr_reg[13][4]  ( .D(n157), .CK(CLK), .RN(n211), .Q(
        \regArr[13][4] ) );
  DFFRQX2M \regArr_reg[13][3]  ( .D(n156), .CK(CLK), .RN(n211), .Q(
        \regArr[13][3] ) );
  DFFRQX2M \regArr_reg[13][2]  ( .D(n155), .CK(CLK), .RN(n211), .Q(
        \regArr[13][2] ) );
  DFFRQX2M \regArr_reg[13][1]  ( .D(n154), .CK(CLK), .RN(n211), .Q(
        \regArr[13][1] ) );
  DFFRQX2M \regArr_reg[13][0]  ( .D(n153), .CK(CLK), .RN(n211), .Q(
        \regArr[13][0] ) );
  DFFRQX2M \regArr_reg[9][7]  ( .D(n128), .CK(CLK), .RN(n209), .Q(
        \regArr[9][7] ) );
  DFFRQX2M \regArr_reg[9][6]  ( .D(n127), .CK(CLK), .RN(n209), .Q(
        \regArr[9][6] ) );
  DFFRQX2M \regArr_reg[9][5]  ( .D(n126), .CK(CLK), .RN(n209), .Q(
        \regArr[9][5] ) );
  DFFRQX2M \regArr_reg[9][4]  ( .D(n125), .CK(CLK), .RN(n209), .Q(
        \regArr[9][4] ) );
  DFFRQX2M \regArr_reg[9][3]  ( .D(n124), .CK(CLK), .RN(n209), .Q(
        \regArr[9][3] ) );
  DFFRQX2M \regArr_reg[9][2]  ( .D(n123), .CK(CLK), .RN(n209), .Q(
        \regArr[9][2] ) );
  DFFRQX2M \regArr_reg[9][1]  ( .D(n122), .CK(CLK), .RN(n209), .Q(
        \regArr[9][1] ) );
  DFFRQX2M \regArr_reg[9][0]  ( .D(n121), .CK(CLK), .RN(n209), .Q(
        \regArr[9][0] ) );
  DFFRQX2M \regArr_reg[5][7]  ( .D(n96), .CK(CLK), .RN(n207), .Q(
        \regArr[5][7] ) );
  DFFRQX2M \regArr_reg[5][6]  ( .D(n95), .CK(CLK), .RN(n207), .Q(
        \regArr[5][6] ) );
  DFFRQX2M \regArr_reg[5][5]  ( .D(n94), .CK(CLK), .RN(n207), .Q(
        \regArr[5][5] ) );
  DFFRQX2M \regArr_reg[5][4]  ( .D(n93), .CK(CLK), .RN(n207), .Q(
        \regArr[5][4] ) );
  DFFRQX2M \regArr_reg[5][3]  ( .D(n92), .CK(CLK), .RN(n207), .Q(
        \regArr[5][3] ) );
  DFFRQX2M \regArr_reg[5][2]  ( .D(n91), .CK(CLK), .RN(n207), .Q(
        \regArr[5][2] ) );
  DFFRQX2M \regArr_reg[5][1]  ( .D(n90), .CK(CLK), .RN(n207), .Q(
        \regArr[5][1] ) );
  DFFRQX2M \regArr_reg[5][0]  ( .D(n89), .CK(CLK), .RN(n207), .Q(
        \regArr[5][0] ) );
  DFFRQX2M \regArr_reg[15][7]  ( .D(n176), .CK(CLK), .RN(n204), .Q(
        \regArr[15][7] ) );
  DFFRQX2M \regArr_reg[15][6]  ( .D(n175), .CK(CLK), .RN(n213), .Q(
        \regArr[15][6] ) );
  DFFRQX2M \regArr_reg[15][5]  ( .D(n174), .CK(CLK), .RN(n213), .Q(
        \regArr[15][5] ) );
  DFFRQX2M \regArr_reg[15][4]  ( .D(n173), .CK(CLK), .RN(n212), .Q(
        \regArr[15][4] ) );
  DFFRQX2M \regArr_reg[15][3]  ( .D(n172), .CK(CLK), .RN(n212), .Q(
        \regArr[15][3] ) );
  DFFRQX2M \regArr_reg[15][2]  ( .D(n171), .CK(CLK), .RN(n212), .Q(
        \regArr[15][2] ) );
  DFFRQX2M \regArr_reg[15][1]  ( .D(n170), .CK(CLK), .RN(n212), .Q(
        \regArr[15][1] ) );
  DFFRQX2M \regArr_reg[15][0]  ( .D(n169), .CK(CLK), .RN(n212), .Q(
        \regArr[15][0] ) );
  DFFRQX2M \regArr_reg[11][7]  ( .D(n144), .CK(CLK), .RN(n211), .Q(
        \regArr[11][7] ) );
  DFFRQX2M \regArr_reg[11][6]  ( .D(n143), .CK(CLK), .RN(n210), .Q(
        \regArr[11][6] ) );
  DFFRQX2M \regArr_reg[11][5]  ( .D(n142), .CK(CLK), .RN(n210), .Q(
        \regArr[11][5] ) );
  DFFRQX2M \regArr_reg[11][4]  ( .D(n141), .CK(CLK), .RN(n210), .Q(
        \regArr[11][4] ) );
  DFFRQX2M \regArr_reg[11][3]  ( .D(n140), .CK(CLK), .RN(n210), .Q(
        \regArr[11][3] ) );
  DFFRQX2M \regArr_reg[11][2]  ( .D(n139), .CK(CLK), .RN(n210), .Q(
        \regArr[11][2] ) );
  DFFRQX2M \regArr_reg[11][1]  ( .D(n138), .CK(CLK), .RN(n210), .Q(
        \regArr[11][1] ) );
  DFFRQX2M \regArr_reg[11][0]  ( .D(n137), .CK(CLK), .RN(n210), .Q(
        \regArr[11][0] ) );
  DFFRQX2M \regArr_reg[7][7]  ( .D(n112), .CK(CLK), .RN(n208), .Q(
        \regArr[7][7] ) );
  DFFRQX2M \regArr_reg[7][6]  ( .D(n111), .CK(CLK), .RN(n208), .Q(
        \regArr[7][6] ) );
  DFFRQX2M \regArr_reg[7][5]  ( .D(n110), .CK(CLK), .RN(n208), .Q(
        \regArr[7][5] ) );
  DFFRQX2M \regArr_reg[7][4]  ( .D(n109), .CK(CLK), .RN(n208), .Q(
        \regArr[7][4] ) );
  DFFRQX2M \regArr_reg[7][3]  ( .D(n108), .CK(CLK), .RN(n208), .Q(
        \regArr[7][3] ) );
  DFFRQX2M \regArr_reg[7][2]  ( .D(n107), .CK(CLK), .RN(n208), .Q(
        \regArr[7][2] ) );
  DFFRQX2M \regArr_reg[7][1]  ( .D(n106), .CK(CLK), .RN(n208), .Q(
        \regArr[7][1] ) );
  DFFRQX2M \regArr_reg[7][0]  ( .D(n105), .CK(CLK), .RN(n208), .Q(
        \regArr[7][0] ) );
  DFFRQX2M \regArr_reg[14][7]  ( .D(n168), .CK(CLK), .RN(n212), .Q(
        \regArr[14][7] ) );
  DFFRQX2M \regArr_reg[14][6]  ( .D(n167), .CK(CLK), .RN(n212), .Q(
        \regArr[14][6] ) );
  DFFRQX2M \regArr_reg[14][5]  ( .D(n166), .CK(CLK), .RN(n212), .Q(
        \regArr[14][5] ) );
  DFFRQX2M \regArr_reg[14][4]  ( .D(n165), .CK(CLK), .RN(n212), .Q(
        \regArr[14][4] ) );
  DFFRQX2M \regArr_reg[14][3]  ( .D(n164), .CK(CLK), .RN(n212), .Q(
        \regArr[14][3] ) );
  DFFRQX2M \regArr_reg[14][2]  ( .D(n163), .CK(CLK), .RN(n212), .Q(
        \regArr[14][2] ) );
  DFFRQX2M \regArr_reg[14][1]  ( .D(n162), .CK(CLK), .RN(n212), .Q(
        \regArr[14][1] ) );
  DFFRQX2M \regArr_reg[14][0]  ( .D(n161), .CK(CLK), .RN(n212), .Q(
        \regArr[14][0] ) );
  DFFRQX2M \regArr_reg[10][7]  ( .D(n136), .CK(CLK), .RN(n210), .Q(
        \regArr[10][7] ) );
  DFFRQX2M \regArr_reg[10][6]  ( .D(n135), .CK(CLK), .RN(n210), .Q(
        \regArr[10][6] ) );
  DFFRQX2M \regArr_reg[10][5]  ( .D(n134), .CK(CLK), .RN(n210), .Q(
        \regArr[10][5] ) );
  DFFRQX2M \regArr_reg[10][4]  ( .D(n133), .CK(CLK), .RN(n210), .Q(
        \regArr[10][4] ) );
  DFFRQX2M \regArr_reg[10][3]  ( .D(n132), .CK(CLK), .RN(n210), .Q(
        \regArr[10][3] ) );
  DFFRQX2M \regArr_reg[10][2]  ( .D(n131), .CK(CLK), .RN(n210), .Q(
        \regArr[10][2] ) );
  DFFRQX2M \regArr_reg[10][1]  ( .D(n130), .CK(CLK), .RN(n210), .Q(
        \regArr[10][1] ) );
  DFFRQX2M \regArr_reg[10][0]  ( .D(n129), .CK(CLK), .RN(n210), .Q(
        \regArr[10][0] ) );
  DFFRQX2M \regArr_reg[6][7]  ( .D(n104), .CK(CLK), .RN(n208), .Q(
        \regArr[6][7] ) );
  DFFRQX2M \regArr_reg[6][6]  ( .D(n103), .CK(CLK), .RN(n208), .Q(
        \regArr[6][6] ) );
  DFFRQX2M \regArr_reg[6][5]  ( .D(n102), .CK(CLK), .RN(n208), .Q(
        \regArr[6][5] ) );
  DFFRQX2M \regArr_reg[6][4]  ( .D(n101), .CK(CLK), .RN(n208), .Q(
        \regArr[6][4] ) );
  DFFRQX2M \regArr_reg[6][3]  ( .D(n100), .CK(CLK), .RN(n208), .Q(
        \regArr[6][3] ) );
  DFFRQX2M \regArr_reg[6][2]  ( .D(n99), .CK(CLK), .RN(n207), .Q(
        \regArr[6][2] ) );
  DFFRQX2M \regArr_reg[6][1]  ( .D(n98), .CK(CLK), .RN(n207), .Q(
        \regArr[6][1] ) );
  DFFRQX2M \regArr_reg[6][0]  ( .D(n97), .CK(CLK), .RN(n207), .Q(
        \regArr[6][0] ) );
  DFFRQX2M \regArr_reg[12][7]  ( .D(n152), .CK(CLK), .RN(n211), .Q(
        \regArr[12][7] ) );
  DFFRQX2M \regArr_reg[12][6]  ( .D(n151), .CK(CLK), .RN(n211), .Q(
        \regArr[12][6] ) );
  DFFRQX2M \regArr_reg[12][5]  ( .D(n150), .CK(CLK), .RN(n211), .Q(
        \regArr[12][5] ) );
  DFFRQX2M \regArr_reg[12][4]  ( .D(n149), .CK(CLK), .RN(n211), .Q(
        \regArr[12][4] ) );
  DFFRQX2M \regArr_reg[12][3]  ( .D(n148), .CK(CLK), .RN(n211), .Q(
        \regArr[12][3] ) );
  DFFRQX2M \regArr_reg[12][2]  ( .D(n147), .CK(CLK), .RN(n211), .Q(
        \regArr[12][2] ) );
  DFFRQX2M \regArr_reg[12][1]  ( .D(n146), .CK(CLK), .RN(n211), .Q(
        \regArr[12][1] ) );
  DFFRQX2M \regArr_reg[12][0]  ( .D(n145), .CK(CLK), .RN(n211), .Q(
        \regArr[12][0] ) );
  DFFRQX2M \regArr_reg[8][7]  ( .D(n120), .CK(CLK), .RN(n209), .Q(
        \regArr[8][7] ) );
  DFFRQX2M \regArr_reg[8][6]  ( .D(n119), .CK(CLK), .RN(n209), .Q(
        \regArr[8][6] ) );
  DFFRQX2M \regArr_reg[8][5]  ( .D(n118), .CK(CLK), .RN(n209), .Q(
        \regArr[8][5] ) );
  DFFRQX2M \regArr_reg[8][4]  ( .D(n117), .CK(CLK), .RN(n209), .Q(
        \regArr[8][4] ) );
  DFFRQX2M \regArr_reg[8][3]  ( .D(n116), .CK(CLK), .RN(n209), .Q(
        \regArr[8][3] ) );
  DFFRQX2M \regArr_reg[8][2]  ( .D(n115), .CK(CLK), .RN(n209), .Q(
        \regArr[8][2] ) );
  DFFRQX2M \regArr_reg[8][1]  ( .D(n114), .CK(CLK), .RN(n209), .Q(
        \regArr[8][1] ) );
  DFFRQX2M \regArr_reg[8][0]  ( .D(n113), .CK(CLK), .RN(n208), .Q(
        \regArr[8][0] ) );
  DFFRQX2M \regArr_reg[4][7]  ( .D(n88), .CK(CLK), .RN(n207), .Q(
        \regArr[4][7] ) );
  DFFRQX2M \regArr_reg[4][6]  ( .D(n87), .CK(CLK), .RN(n207), .Q(
        \regArr[4][6] ) );
  DFFRQX2M \regArr_reg[4][5]  ( .D(n86), .CK(CLK), .RN(n207), .Q(
        \regArr[4][5] ) );
  DFFRQX2M \regArr_reg[4][4]  ( .D(n85), .CK(CLK), .RN(n207), .Q(
        \regArr[4][4] ) );
  DFFRQX2M \regArr_reg[4][3]  ( .D(n84), .CK(CLK), .RN(n206), .Q(
        \regArr[4][3] ) );
  DFFRQX2M \regArr_reg[4][2]  ( .D(n83), .CK(CLK), .RN(n206), .Q(
        \regArr[4][2] ) );
  DFFRQX2M \regArr_reg[4][1]  ( .D(n82), .CK(CLK), .RN(n206), .Q(
        \regArr[4][1] ) );
  DFFRQX2M \regArr_reg[4][0]  ( .D(n81), .CK(CLK), .RN(n206), .Q(
        \regArr[4][0] ) );
  DFFRQX2M \regArr_reg[3][0]  ( .D(n73), .CK(CLK), .RN(n206), .Q(REG3[0]) );
  DFFRQX2M \RdData_reg[7]  ( .D(n47), .CK(CLK), .RN(n204), .Q(RdData[7]) );
  DFFRQX2M \RdData_reg[6]  ( .D(n46), .CK(CLK), .RN(n204), .Q(RdData[6]) );
  DFFRQX2M \RdData_reg[5]  ( .D(n45), .CK(CLK), .RN(n204), .Q(RdData[5]) );
  DFFRQX2M \RdData_reg[4]  ( .D(n44), .CK(CLK), .RN(n204), .Q(RdData[4]) );
  DFFRQX2M \RdData_reg[3]  ( .D(n43), .CK(CLK), .RN(n204), .Q(RdData[3]) );
  DFFRQX2M \RdData_reg[2]  ( .D(n42), .CK(CLK), .RN(n204), .Q(RdData[2]) );
  DFFRQX2M \RdData_reg[1]  ( .D(n41), .CK(CLK), .RN(n204), .Q(RdData[1]) );
  DFFRQX2M \RdData_reg[0]  ( .D(n40), .CK(CLK), .RN(n208), .Q(RdData[0]) );
  DFFRQX2M \regArr_reg[3][4]  ( .D(n77), .CK(CLK), .RN(n206), .Q(REG3[4]) );
  DFFRQX2M \regArr_reg[3][2]  ( .D(n75), .CK(CLK), .RN(n206), .Q(REG3[2]) );
  DFFRQX2M \regArr_reg[3][3]  ( .D(n76), .CK(CLK), .RN(n206), .Q(REG3[3]) );
  DFFRQX2M \regArr_reg[3][6]  ( .D(n79), .CK(CLK), .RN(n206), .Q(REG3[6]) );
  DFFRQX2M \regArr_reg[3][7]  ( .D(n80), .CK(CLK), .RN(n206), .Q(REG3[7]) );
  DFFSQX2M \regArr_reg[3][5]  ( .D(n78), .CK(CLK), .SN(n204), .Q(REG3[5]) );
  DFFRQX2M \regArr_reg[3][1]  ( .D(n74), .CK(CLK), .RN(n206), .Q(REG3[1]) );
  DFFRQX2M RdData_VLD_reg ( .D(n48), .CK(CLK), .RN(n204), .Q(RdData_VLD) );
  DFFRQX2M \regArr_reg[2][1]  ( .D(n66), .CK(CLK), .RN(n205), .Q(REG2[1]) );
  DFFSQX2M \regArr_reg[2][0]  ( .D(n65), .CK(CLK), .SN(n204), .Q(REG2[0]) );
  DFFSQX2M \regArr_reg[2][7]  ( .D(n72), .CK(CLK), .SN(n204), .Q(REG2[7]) );
  DFFRQX2M \regArr_reg[2][4]  ( .D(n69), .CK(CLK), .RN(n206), .Q(REG2[4]) );
  DFFRQX2M \regArr_reg[2][3]  ( .D(n68), .CK(CLK), .RN(n205), .Q(REG2[3]) );
  DFFRQX2M \regArr_reg[2][5]  ( .D(n70), .CK(CLK), .RN(n206), .Q(REG2[5]) );
  DFFRQX2M \regArr_reg[2][6]  ( .D(n71), .CK(CLK), .RN(n206), .Q(REG2[6]) );
  DFFRQX2M \regArr_reg[2][2]  ( .D(n67), .CK(CLK), .RN(n206), .Q(REG2[2]) );
  DFFRQX2M \regArr_reg[0][1]  ( .D(n50), .CK(CLK), .RN(n204), .Q(REG0[1]) );
  DFFRQX2M \regArr_reg[0][0]  ( .D(n49), .CK(CLK), .RN(n204), .Q(REG0[0]) );
  DFFRQX2M \regArr_reg[0][2]  ( .D(n51), .CK(CLK), .RN(n204), .Q(REG0[2]) );
  DFFRQX2M \regArr_reg[0][3]  ( .D(n52), .CK(CLK), .RN(n205), .Q(REG0[3]) );
  DFFRQX2M \regArr_reg[0][4]  ( .D(n53), .CK(CLK), .RN(n205), .Q(REG0[4]) );
  DFFRQX2M \regArr_reg[0][5]  ( .D(n54), .CK(CLK), .RN(n205), .Q(REG0[5]) );
  DFFRQX2M \regArr_reg[0][7]  ( .D(n56), .CK(CLK), .RN(n205), .Q(REG0[7]) );
  DFFRQX2M \regArr_reg[0][6]  ( .D(n55), .CK(CLK), .RN(n205), .Q(REG0[6]) );
  DFFRQX2M \regArr_reg[1][6]  ( .D(n63), .CK(CLK), .RN(n205), .Q(REG1[6]) );
  DFFRQX2M \regArr_reg[1][1]  ( .D(n58), .CK(CLK), .RN(n205), .Q(REG1[1]) );
  DFFRQX2M \regArr_reg[1][5]  ( .D(n62), .CK(CLK), .RN(n205), .Q(REG1[5]) );
  DFFRQX2M \regArr_reg[1][4]  ( .D(n61), .CK(CLK), .RN(n205), .Q(REG1[4]) );
  DFFRQX2M \regArr_reg[1][7]  ( .D(n64), .CK(CLK), .RN(n205), .Q(REG1[7]) );
  DFFRQX2M \regArr_reg[1][3]  ( .D(n60), .CK(CLK), .RN(n205), .Q(REG1[3]) );
  DFFRQX2M \regArr_reg[1][2]  ( .D(n59), .CK(CLK), .RN(n205), .Q(REG1[2]) );
  DFFRQX2M \regArr_reg[1][0]  ( .D(n57), .CK(CLK), .RN(n205), .Q(REG1[0]) );
  NOR2X2M U3 ( .A(N11), .B(N12), .Y(n15) );
  NOR2BX2M U4 ( .AN(N12), .B(N11), .Y(n23) );
  NOR2BX2M U5 ( .AN(N12), .B(n203), .Y(n26) );
  NOR2X2M U6 ( .A(n203), .B(N12), .Y(n20) );
  INVX2M U7 ( .A(WrData[5]), .Y(n226) );
  INVX2M U8 ( .A(WrData[6]), .Y(n227) );
  INVX2M U9 ( .A(n202), .Y(n200) );
  INVX2M U10 ( .A(n198), .Y(n199) );
  BUFX2M U11 ( .A(n203), .Y(n198) );
  INVX2M U12 ( .A(n12), .Y(n219) );
  NOR2BX2M U13 ( .AN(n38), .B(n201), .Y(n30) );
  NOR2BX2M U14 ( .AN(n38), .B(n202), .Y(n32) );
  NAND2X2M U15 ( .A(n30), .B(n15), .Y(n29) );
  NAND2X2M U16 ( .A(n32), .B(n15), .Y(n31) );
  NAND2X2M U17 ( .A(n30), .B(n20), .Y(n33) );
  NAND2X2M U18 ( .A(n32), .B(n20), .Y(n34) );
  NAND2X2M U19 ( .A(n30), .B(n23), .Y(n35) );
  NAND2X2M U20 ( .A(n32), .B(n23), .Y(n36) );
  NAND2X2M U21 ( .A(n30), .B(n26), .Y(n37) );
  NAND2X2M U22 ( .A(n32), .B(n26), .Y(n39) );
  INVX2M U23 ( .A(n202), .Y(n201) );
  NOR2BX2M U24 ( .AN(n27), .B(n201), .Y(n16) );
  NOR2BX2M U25 ( .AN(n27), .B(n202), .Y(n18) );
  NAND2X2M U26 ( .A(n18), .B(n15), .Y(n17) );
  NAND2X2M U27 ( .A(n20), .B(n16), .Y(n19) );
  NAND2X2M U28 ( .A(n20), .B(n18), .Y(n21) );
  NAND2X2M U29 ( .A(n23), .B(n16), .Y(n22) );
  NAND2X2M U30 ( .A(n23), .B(n18), .Y(n24) );
  NAND2X2M U31 ( .A(n26), .B(n16), .Y(n25) );
  NAND2X2M U32 ( .A(n26), .B(n18), .Y(n28) );
  NAND2X2M U33 ( .A(n15), .B(n16), .Y(n14) );
  NAND2BX2M U34 ( .AN(WrEn), .B(RdEn), .Y(n12) );
  NOR2BX2M U35 ( .AN(WrEn), .B(RdEn), .Y(n13) );
  BUFX2M U36 ( .A(n218), .Y(n204) );
  BUFX2M U37 ( .A(n218), .Y(n205) );
  BUFX2M U38 ( .A(n217), .Y(n206) );
  BUFX2M U39 ( .A(n217), .Y(n207) );
  BUFX2M U40 ( .A(n216), .Y(n208) );
  BUFX2M U41 ( .A(n216), .Y(n209) );
  BUFX2M U42 ( .A(n215), .Y(n210) );
  BUFX2M U43 ( .A(n215), .Y(n211) );
  BUFX2M U44 ( .A(n214), .Y(n212) );
  BUFX2M U45 ( .A(n214), .Y(n213) );
  AND2X2M U46 ( .A(N13), .B(n13), .Y(n38) );
  INVX2M U47 ( .A(N10), .Y(n202) );
  INVX2M U48 ( .A(N11), .Y(n203) );
  INVX2M U49 ( .A(WrData[0]), .Y(n225) );
  INVX2M U50 ( .A(WrData[1]), .Y(n224) );
  INVX2M U51 ( .A(WrData[2]), .Y(n223) );
  INVX2M U52 ( .A(WrData[3]), .Y(n222) );
  INVX2M U53 ( .A(WrData[4]), .Y(n221) );
  INVX2M U54 ( .A(WrData[7]), .Y(n220) );
  NOR2BX2M U55 ( .AN(n13), .B(N13), .Y(n27) );
  BUFX2M U56 ( .A(RST), .Y(n217) );
  BUFX2M U57 ( .A(RST), .Y(n216) );
  BUFX2M U58 ( .A(RST), .Y(n215) );
  BUFX2M U59 ( .A(RST), .Y(n214) );
  BUFX2M U60 ( .A(RST), .Y(n218) );
  OAI2BB2X1M U61 ( .B0(n225), .B1(n29), .A0N(\regArr[8][0] ), .A1N(n29), .Y(
        n113) );
  OAI2BB2X1M U62 ( .B0(n224), .B1(n29), .A0N(\regArr[8][1] ), .A1N(n29), .Y(
        n114) );
  OAI2BB2X1M U63 ( .B0(n223), .B1(n29), .A0N(\regArr[8][2] ), .A1N(n29), .Y(
        n115) );
  OAI2BB2X1M U64 ( .B0(n222), .B1(n29), .A0N(\regArr[8][3] ), .A1N(n29), .Y(
        n116) );
  OAI2BB2X1M U65 ( .B0(n221), .B1(n29), .A0N(\regArr[8][4] ), .A1N(n29), .Y(
        n117) );
  OAI2BB2X1M U66 ( .B0(n226), .B1(n29), .A0N(\regArr[8][5] ), .A1N(n29), .Y(
        n118) );
  OAI2BB2X1M U67 ( .B0(n227), .B1(n29), .A0N(\regArr[8][6] ), .A1N(n29), .Y(
        n119) );
  OAI2BB2X1M U68 ( .B0(n220), .B1(n29), .A0N(\regArr[8][7] ), .A1N(n29), .Y(
        n120) );
  OAI2BB2X1M U69 ( .B0(n225), .B1(n31), .A0N(\regArr[9][0] ), .A1N(n31), .Y(
        n121) );
  OAI2BB2X1M U70 ( .B0(n224), .B1(n31), .A0N(\regArr[9][1] ), .A1N(n31), .Y(
        n122) );
  OAI2BB2X1M U71 ( .B0(n223), .B1(n31), .A0N(\regArr[9][2] ), .A1N(n31), .Y(
        n123) );
  OAI2BB2X1M U72 ( .B0(n222), .B1(n31), .A0N(\regArr[9][3] ), .A1N(n31), .Y(
        n124) );
  OAI2BB2X1M U73 ( .B0(n221), .B1(n31), .A0N(\regArr[9][4] ), .A1N(n31), .Y(
        n125) );
  OAI2BB2X1M U74 ( .B0(n226), .B1(n31), .A0N(\regArr[9][5] ), .A1N(n31), .Y(
        n126) );
  OAI2BB2X1M U75 ( .B0(n227), .B1(n31), .A0N(\regArr[9][6] ), .A1N(n31), .Y(
        n127) );
  OAI2BB2X1M U76 ( .B0(n220), .B1(n31), .A0N(\regArr[9][7] ), .A1N(n31), .Y(
        n128) );
  OAI2BB2X1M U77 ( .B0(n225), .B1(n33), .A0N(\regArr[10][0] ), .A1N(n33), .Y(
        n129) );
  OAI2BB2X1M U78 ( .B0(n224), .B1(n33), .A0N(\regArr[10][1] ), .A1N(n33), .Y(
        n130) );
  OAI2BB2X1M U79 ( .B0(n223), .B1(n33), .A0N(\regArr[10][2] ), .A1N(n33), .Y(
        n131) );
  OAI2BB2X1M U80 ( .B0(n222), .B1(n33), .A0N(\regArr[10][3] ), .A1N(n33), .Y(
        n132) );
  OAI2BB2X1M U81 ( .B0(n221), .B1(n33), .A0N(\regArr[10][4] ), .A1N(n33), .Y(
        n133) );
  OAI2BB2X1M U82 ( .B0(n226), .B1(n33), .A0N(\regArr[10][5] ), .A1N(n33), .Y(
        n134) );
  OAI2BB2X1M U83 ( .B0(n227), .B1(n33), .A0N(\regArr[10][6] ), .A1N(n33), .Y(
        n135) );
  OAI2BB2X1M U84 ( .B0(n220), .B1(n33), .A0N(\regArr[10][7] ), .A1N(n33), .Y(
        n136) );
  OAI2BB2X1M U85 ( .B0(n225), .B1(n34), .A0N(\regArr[11][0] ), .A1N(n34), .Y(
        n137) );
  OAI2BB2X1M U86 ( .B0(n224), .B1(n34), .A0N(\regArr[11][1] ), .A1N(n34), .Y(
        n138) );
  OAI2BB2X1M U87 ( .B0(n223), .B1(n34), .A0N(\regArr[11][2] ), .A1N(n34), .Y(
        n139) );
  OAI2BB2X1M U88 ( .B0(n222), .B1(n34), .A0N(\regArr[11][3] ), .A1N(n34), .Y(
        n140) );
  OAI2BB2X1M U89 ( .B0(n221), .B1(n34), .A0N(\regArr[11][4] ), .A1N(n34), .Y(
        n141) );
  OAI2BB2X1M U90 ( .B0(n226), .B1(n34), .A0N(\regArr[11][5] ), .A1N(n34), .Y(
        n142) );
  OAI2BB2X1M U91 ( .B0(n227), .B1(n34), .A0N(\regArr[11][6] ), .A1N(n34), .Y(
        n143) );
  OAI2BB2X1M U92 ( .B0(n220), .B1(n34), .A0N(\regArr[11][7] ), .A1N(n34), .Y(
        n144) );
  OAI2BB2X1M U93 ( .B0(n225), .B1(n35), .A0N(\regArr[12][0] ), .A1N(n35), .Y(
        n145) );
  OAI2BB2X1M U94 ( .B0(n224), .B1(n35), .A0N(\regArr[12][1] ), .A1N(n35), .Y(
        n146) );
  OAI2BB2X1M U95 ( .B0(n223), .B1(n35), .A0N(\regArr[12][2] ), .A1N(n35), .Y(
        n147) );
  OAI2BB2X1M U96 ( .B0(n222), .B1(n35), .A0N(\regArr[12][3] ), .A1N(n35), .Y(
        n148) );
  OAI2BB2X1M U97 ( .B0(n221), .B1(n35), .A0N(\regArr[12][4] ), .A1N(n35), .Y(
        n149) );
  OAI2BB2X1M U98 ( .B0(n226), .B1(n35), .A0N(\regArr[12][5] ), .A1N(n35), .Y(
        n150) );
  OAI2BB2X1M U99 ( .B0(n227), .B1(n35), .A0N(\regArr[12][6] ), .A1N(n35), .Y(
        n151) );
  OAI2BB2X1M U100 ( .B0(n220), .B1(n35), .A0N(\regArr[12][7] ), .A1N(n35), .Y(
        n152) );
  OAI2BB2X1M U101 ( .B0(n225), .B1(n36), .A0N(\regArr[13][0] ), .A1N(n36), .Y(
        n153) );
  OAI2BB2X1M U102 ( .B0(n224), .B1(n36), .A0N(\regArr[13][1] ), .A1N(n36), .Y(
        n154) );
  OAI2BB2X1M U103 ( .B0(n223), .B1(n36), .A0N(\regArr[13][2] ), .A1N(n36), .Y(
        n155) );
  OAI2BB2X1M U104 ( .B0(n222), .B1(n36), .A0N(\regArr[13][3] ), .A1N(n36), .Y(
        n156) );
  OAI2BB2X1M U105 ( .B0(n221), .B1(n36), .A0N(\regArr[13][4] ), .A1N(n36), .Y(
        n157) );
  OAI2BB2X1M U106 ( .B0(n226), .B1(n36), .A0N(\regArr[13][5] ), .A1N(n36), .Y(
        n158) );
  OAI2BB2X1M U107 ( .B0(n227), .B1(n36), .A0N(\regArr[13][6] ), .A1N(n36), .Y(
        n159) );
  OAI2BB2X1M U108 ( .B0(n220), .B1(n36), .A0N(\regArr[13][7] ), .A1N(n36), .Y(
        n160) );
  OAI2BB2X1M U109 ( .B0(n225), .B1(n37), .A0N(\regArr[14][0] ), .A1N(n37), .Y(
        n161) );
  OAI2BB2X1M U110 ( .B0(n224), .B1(n37), .A0N(\regArr[14][1] ), .A1N(n37), .Y(
        n162) );
  OAI2BB2X1M U111 ( .B0(n223), .B1(n37), .A0N(\regArr[14][2] ), .A1N(n37), .Y(
        n163) );
  OAI2BB2X1M U112 ( .B0(n222), .B1(n37), .A0N(\regArr[14][3] ), .A1N(n37), .Y(
        n164) );
  OAI2BB2X1M U113 ( .B0(n221), .B1(n37), .A0N(\regArr[14][4] ), .A1N(n37), .Y(
        n165) );
  OAI2BB2X1M U114 ( .B0(n226), .B1(n37), .A0N(\regArr[14][5] ), .A1N(n37), .Y(
        n166) );
  OAI2BB2X1M U115 ( .B0(n227), .B1(n37), .A0N(\regArr[14][6] ), .A1N(n37), .Y(
        n167) );
  OAI2BB2X1M U116 ( .B0(n220), .B1(n37), .A0N(\regArr[14][7] ), .A1N(n37), .Y(
        n168) );
  OAI2BB2X1M U117 ( .B0(n225), .B1(n39), .A0N(\regArr[15][0] ), .A1N(n39), .Y(
        n169) );
  OAI2BB2X1M U118 ( .B0(n224), .B1(n39), .A0N(\regArr[15][1] ), .A1N(n39), .Y(
        n170) );
  OAI2BB2X1M U119 ( .B0(n223), .B1(n39), .A0N(\regArr[15][2] ), .A1N(n39), .Y(
        n171) );
  OAI2BB2X1M U120 ( .B0(n222), .B1(n39), .A0N(\regArr[15][3] ), .A1N(n39), .Y(
        n172) );
  OAI2BB2X1M U121 ( .B0(n221), .B1(n39), .A0N(\regArr[15][4] ), .A1N(n39), .Y(
        n173) );
  OAI2BB2X1M U122 ( .B0(n226), .B1(n39), .A0N(\regArr[15][5] ), .A1N(n39), .Y(
        n174) );
  OAI2BB2X1M U123 ( .B0(n227), .B1(n39), .A0N(\regArr[15][6] ), .A1N(n39), .Y(
        n175) );
  OAI2BB2X1M U124 ( .B0(n220), .B1(n39), .A0N(\regArr[15][7] ), .A1N(n39), .Y(
        n176) );
  AO22X1M U125 ( .A0(N42), .A1(n219), .B0(RdData[0]), .B1(n12), .Y(n40) );
  MX4X1M U126 ( .A(n4), .B(n2), .C(n3), .D(n1), .S0(N13), .S1(N12), .Y(N42) );
  MX4X1M U127 ( .A(REG0[0]), .B(REG1[0]), .C(REG2[0]), .D(REG3[0]), .S0(N10), 
        .S1(N11), .Y(n4) );
  MX4X1M U128 ( .A(\regArr[8][0] ), .B(\regArr[9][0] ), .C(\regArr[10][0] ), 
        .D(\regArr[11][0] ), .S0(N10), .S1(N11), .Y(n2) );
  AO22X1M U129 ( .A0(N41), .A1(n219), .B0(RdData[1]), .B1(n12), .Y(n41) );
  MX4X1M U130 ( .A(n8), .B(n6), .C(n7), .D(n5), .S0(N13), .S1(N12), .Y(N41) );
  MX4X1M U131 ( .A(\regArr[8][1] ), .B(\regArr[9][1] ), .C(\regArr[10][1] ), 
        .D(\regArr[11][1] ), .S0(N10), .S1(N11), .Y(n6) );
  MX4X1M U132 ( .A(\regArr[12][1] ), .B(\regArr[13][1] ), .C(\regArr[14][1] ), 
        .D(\regArr[15][1] ), .S0(n201), .S1(N11), .Y(n5) );
  AO22X1M U133 ( .A0(N40), .A1(n219), .B0(RdData[2]), .B1(n12), .Y(n42) );
  MX4X1M U134 ( .A(n177), .B(n10), .C(n11), .D(n9), .S0(N13), .S1(N12), .Y(N40) );
  MX4X1M U135 ( .A(REG0[2]), .B(REG1[2]), .C(REG2[2]), .D(REG3[2]), .S0(n200), 
        .S1(n199), .Y(n177) );
  MX4X1M U136 ( .A(\regArr[8][2] ), .B(\regArr[9][2] ), .C(\regArr[10][2] ), 
        .D(\regArr[11][2] ), .S0(n200), .S1(n199), .Y(n10) );
  AO22X1M U137 ( .A0(N39), .A1(n219), .B0(RdData[3]), .B1(n12), .Y(n43) );
  MX4X1M U138 ( .A(n181), .B(n179), .C(n180), .D(n178), .S0(N13), .S1(N12), 
        .Y(N39) );
  MX4X1M U139 ( .A(REG0[3]), .B(REG1[3]), .C(REG2[3]), .D(REG3[3]), .S0(n200), 
        .S1(n199), .Y(n181) );
  MX4X1M U140 ( .A(\regArr[8][3] ), .B(\regArr[9][3] ), .C(\regArr[10][3] ), 
        .D(\regArr[11][3] ), .S0(n200), .S1(n199), .Y(n179) );
  AO22X1M U141 ( .A0(N38), .A1(n219), .B0(RdData[4]), .B1(n12), .Y(n44) );
  MX4X1M U142 ( .A(n185), .B(n183), .C(n184), .D(n182), .S0(N13), .S1(N12), 
        .Y(N38) );
  MX4X1M U143 ( .A(REG0[4]), .B(REG1[4]), .C(REG2[4]), .D(REG3[4]), .S0(N10), 
        .S1(n199), .Y(n185) );
  MX4X1M U144 ( .A(\regArr[8][4] ), .B(\regArr[9][4] ), .C(\regArr[10][4] ), 
        .D(\regArr[11][4] ), .S0(n200), .S1(n199), .Y(n183) );
  AO22X1M U145 ( .A0(N37), .A1(n219), .B0(RdData[5]), .B1(n12), .Y(n45) );
  MX4X1M U146 ( .A(n189), .B(n187), .C(n188), .D(n186), .S0(N13), .S1(N12), 
        .Y(N37) );
  MX4X1M U147 ( .A(REG0[5]), .B(REG1[5]), .C(REG2[5]), .D(REG3[5]), .S0(N10), 
        .S1(N11), .Y(n189) );
  MX4X1M U148 ( .A(\regArr[8][5] ), .B(\regArr[9][5] ), .C(\regArr[10][5] ), 
        .D(\regArr[11][5] ), .S0(N10), .S1(N11), .Y(n187) );
  AO22X1M U149 ( .A0(N36), .A1(n219), .B0(RdData[6]), .B1(n12), .Y(n46) );
  MX4X1M U150 ( .A(n193), .B(n191), .C(n192), .D(n190), .S0(N13), .S1(N12), 
        .Y(N36) );
  MX4X1M U151 ( .A(REG0[6]), .B(REG1[6]), .C(REG2[6]), .D(REG3[6]), .S0(n201), 
        .S1(N11), .Y(n193) );
  MX4X1M U152 ( .A(\regArr[8][6] ), .B(\regArr[9][6] ), .C(\regArr[10][6] ), 
        .D(\regArr[11][6] ), .S0(N10), .S1(N11), .Y(n191) );
  AO22X1M U153 ( .A0(N35), .A1(n219), .B0(RdData[7]), .B1(n12), .Y(n47) );
  MX4X1M U154 ( .A(n197), .B(n195), .C(n196), .D(n194), .S0(N13), .S1(N12), 
        .Y(N35) );
  MX4X1M U155 ( .A(REG0[7]), .B(REG1[7]), .C(REG2[7]), .D(REG3[7]), .S0(n201), 
        .S1(N11), .Y(n197) );
  MX4X1M U156 ( .A(\regArr[8][7] ), .B(\regArr[9][7] ), .C(\regArr[10][7] ), 
        .D(\regArr[11][7] ), .S0(N10), .S1(N11), .Y(n195) );
  MX4X1M U157 ( .A(REG0[1]), .B(REG1[1]), .C(REG2[1]), .D(REG3[1]), .S0(n200), 
        .S1(N11), .Y(n8) );
  MX4X1M U158 ( .A(\regArr[4][0] ), .B(\regArr[5][0] ), .C(\regArr[6][0] ), 
        .D(\regArr[7][0] ), .S0(n201), .S1(N11), .Y(n3) );
  MX4X1M U159 ( .A(\regArr[4][1] ), .B(\regArr[5][1] ), .C(\regArr[6][1] ), 
        .D(\regArr[7][1] ), .S0(n200), .S1(N11), .Y(n7) );
  MX4X1M U160 ( .A(\regArr[4][2] ), .B(\regArr[5][2] ), .C(\regArr[6][2] ), 
        .D(\regArr[7][2] ), .S0(n200), .S1(n199), .Y(n11) );
  MX4X1M U161 ( .A(\regArr[4][3] ), .B(\regArr[5][3] ), .C(\regArr[6][3] ), 
        .D(\regArr[7][3] ), .S0(n200), .S1(n199), .Y(n180) );
  MX4X1M U162 ( .A(\regArr[4][4] ), .B(\regArr[5][4] ), .C(\regArr[6][4] ), 
        .D(\regArr[7][4] ), .S0(n200), .S1(n199), .Y(n184) );
  MX4X1M U163 ( .A(\regArr[4][5] ), .B(\regArr[5][5] ), .C(\regArr[6][5] ), 
        .D(\regArr[7][5] ), .S0(N10), .S1(n199), .Y(n188) );
  MX4X1M U164 ( .A(\regArr[4][6] ), .B(\regArr[5][6] ), .C(\regArr[6][6] ), 
        .D(\regArr[7][6] ), .S0(N10), .S1(N11), .Y(n192) );
  MX4X1M U165 ( .A(\regArr[4][7] ), .B(\regArr[5][7] ), .C(\regArr[6][7] ), 
        .D(\regArr[7][7] ), .S0(N10), .S1(N11), .Y(n196) );
  MX4X1M U166 ( .A(\regArr[12][0] ), .B(\regArr[13][0] ), .C(\regArr[14][0] ), 
        .D(\regArr[15][0] ), .S0(n200), .S1(N11), .Y(n1) );
  MX4X1M U167 ( .A(\regArr[12][2] ), .B(\regArr[13][2] ), .C(\regArr[14][2] ), 
        .D(\regArr[15][2] ), .S0(n200), .S1(n199), .Y(n9) );
  MX4X1M U168 ( .A(\regArr[12][3] ), .B(\regArr[13][3] ), .C(\regArr[14][3] ), 
        .D(\regArr[15][3] ), .S0(n200), .S1(n199), .Y(n178) );
  MX4X1M U169 ( .A(\regArr[12][4] ), .B(\regArr[13][4] ), .C(\regArr[14][4] ), 
        .D(\regArr[15][4] ), .S0(n200), .S1(n199), .Y(n182) );
  MX4X1M U170 ( .A(\regArr[12][5] ), .B(\regArr[13][5] ), .C(\regArr[14][5] ), 
        .D(\regArr[15][5] ), .S0(N10), .S1(n199), .Y(n186) );
  MX4X1M U171 ( .A(\regArr[12][6] ), .B(\regArr[13][6] ), .C(\regArr[14][6] ), 
        .D(\regArr[15][6] ), .S0(N10), .S1(N11), .Y(n190) );
  MX4X1M U172 ( .A(\regArr[12][7] ), .B(\regArr[13][7] ), .C(\regArr[14][7] ), 
        .D(\regArr[15][7] ), .S0(N10), .S1(N11), .Y(n194) );
  OAI2BB2X1M U173 ( .B0(n14), .B1(n225), .A0N(REG0[0]), .A1N(n14), .Y(n49) );
  OAI2BB2X1M U174 ( .B0(n14), .B1(n224), .A0N(REG0[1]), .A1N(n14), .Y(n50) );
  OAI2BB2X1M U175 ( .B0(n14), .B1(n223), .A0N(REG0[2]), .A1N(n14), .Y(n51) );
  OAI2BB2X1M U176 ( .B0(n14), .B1(n222), .A0N(REG0[3]), .A1N(n14), .Y(n52) );
  OAI2BB2X1M U177 ( .B0(n14), .B1(n221), .A0N(REG0[4]), .A1N(n14), .Y(n53) );
  OAI2BB2X1M U178 ( .B0(n14), .B1(n226), .A0N(REG0[5]), .A1N(n14), .Y(n54) );
  OAI2BB2X1M U179 ( .B0(n14), .B1(n227), .A0N(REG0[6]), .A1N(n14), .Y(n55) );
  OAI2BB2X1M U180 ( .B0(n14), .B1(n220), .A0N(REG0[7]), .A1N(n14), .Y(n56) );
  OAI2BB2X1M U181 ( .B0(n225), .B1(n17), .A0N(REG1[0]), .A1N(n17), .Y(n57) );
  OAI2BB2X1M U182 ( .B0(n224), .B1(n17), .A0N(REG1[1]), .A1N(n17), .Y(n58) );
  OAI2BB2X1M U183 ( .B0(n223), .B1(n17), .A0N(REG1[2]), .A1N(n17), .Y(n59) );
  OAI2BB2X1M U184 ( .B0(n222), .B1(n17), .A0N(REG1[3]), .A1N(n17), .Y(n60) );
  OAI2BB2X1M U185 ( .B0(n221), .B1(n17), .A0N(REG1[4]), .A1N(n17), .Y(n61) );
  OAI2BB2X1M U186 ( .B0(n226), .B1(n17), .A0N(REG1[5]), .A1N(n17), .Y(n62) );
  OAI2BB2X1M U187 ( .B0(n227), .B1(n17), .A0N(REG1[6]), .A1N(n17), .Y(n63) );
  OAI2BB2X1M U188 ( .B0(n220), .B1(n17), .A0N(REG1[7]), .A1N(n17), .Y(n64) );
  OAI2BB2X1M U189 ( .B0(n225), .B1(n22), .A0N(\regArr[4][0] ), .A1N(n22), .Y(
        n81) );
  OAI2BB2X1M U190 ( .B0(n224), .B1(n22), .A0N(\regArr[4][1] ), .A1N(n22), .Y(
        n82) );
  OAI2BB2X1M U191 ( .B0(n223), .B1(n22), .A0N(\regArr[4][2] ), .A1N(n22), .Y(
        n83) );
  OAI2BB2X1M U192 ( .B0(n222), .B1(n22), .A0N(\regArr[4][3] ), .A1N(n22), .Y(
        n84) );
  OAI2BB2X1M U193 ( .B0(n221), .B1(n22), .A0N(\regArr[4][4] ), .A1N(n22), .Y(
        n85) );
  OAI2BB2X1M U194 ( .B0(n226), .B1(n22), .A0N(\regArr[4][5] ), .A1N(n22), .Y(
        n86) );
  OAI2BB2X1M U195 ( .B0(n227), .B1(n22), .A0N(\regArr[4][6] ), .A1N(n22), .Y(
        n87) );
  OAI2BB2X1M U196 ( .B0(n220), .B1(n22), .A0N(\regArr[4][7] ), .A1N(n22), .Y(
        n88) );
  OAI2BB2X1M U197 ( .B0(n225), .B1(n24), .A0N(\regArr[5][0] ), .A1N(n24), .Y(
        n89) );
  OAI2BB2X1M U198 ( .B0(n224), .B1(n24), .A0N(\regArr[5][1] ), .A1N(n24), .Y(
        n90) );
  OAI2BB2X1M U199 ( .B0(n223), .B1(n24), .A0N(\regArr[5][2] ), .A1N(n24), .Y(
        n91) );
  OAI2BB2X1M U200 ( .B0(n222), .B1(n24), .A0N(\regArr[5][3] ), .A1N(n24), .Y(
        n92) );
  OAI2BB2X1M U201 ( .B0(n221), .B1(n24), .A0N(\regArr[5][4] ), .A1N(n24), .Y(
        n93) );
  OAI2BB2X1M U202 ( .B0(n226), .B1(n24), .A0N(\regArr[5][5] ), .A1N(n24), .Y(
        n94) );
  OAI2BB2X1M U203 ( .B0(n227), .B1(n24), .A0N(\regArr[5][6] ), .A1N(n24), .Y(
        n95) );
  OAI2BB2X1M U204 ( .B0(n220), .B1(n24), .A0N(\regArr[5][7] ), .A1N(n24), .Y(
        n96) );
  OAI2BB2X1M U205 ( .B0(n225), .B1(n25), .A0N(\regArr[6][0] ), .A1N(n25), .Y(
        n97) );
  OAI2BB2X1M U206 ( .B0(n224), .B1(n25), .A0N(\regArr[6][1] ), .A1N(n25), .Y(
        n98) );
  OAI2BB2X1M U207 ( .B0(n223), .B1(n25), .A0N(\regArr[6][2] ), .A1N(n25), .Y(
        n99) );
  OAI2BB2X1M U208 ( .B0(n222), .B1(n25), .A0N(\regArr[6][3] ), .A1N(n25), .Y(
        n100) );
  OAI2BB2X1M U209 ( .B0(n221), .B1(n25), .A0N(\regArr[6][4] ), .A1N(n25), .Y(
        n101) );
  OAI2BB2X1M U210 ( .B0(n226), .B1(n25), .A0N(\regArr[6][5] ), .A1N(n25), .Y(
        n102) );
  OAI2BB2X1M U211 ( .B0(n227), .B1(n25), .A0N(\regArr[6][6] ), .A1N(n25), .Y(
        n103) );
  OAI2BB2X1M U212 ( .B0(n220), .B1(n25), .A0N(\regArr[6][7] ), .A1N(n25), .Y(
        n104) );
  OAI2BB2X1M U213 ( .B0(n225), .B1(n28), .A0N(\regArr[7][0] ), .A1N(n28), .Y(
        n105) );
  OAI2BB2X1M U214 ( .B0(n224), .B1(n28), .A0N(\regArr[7][1] ), .A1N(n28), .Y(
        n106) );
  OAI2BB2X1M U215 ( .B0(n223), .B1(n28), .A0N(\regArr[7][2] ), .A1N(n28), .Y(
        n107) );
  OAI2BB2X1M U216 ( .B0(n222), .B1(n28), .A0N(\regArr[7][3] ), .A1N(n28), .Y(
        n108) );
  OAI2BB2X1M U217 ( .B0(n221), .B1(n28), .A0N(\regArr[7][4] ), .A1N(n28), .Y(
        n109) );
  OAI2BB2X1M U218 ( .B0(n226), .B1(n28), .A0N(\regArr[7][5] ), .A1N(n28), .Y(
        n110) );
  OAI2BB2X1M U219 ( .B0(n227), .B1(n28), .A0N(\regArr[7][6] ), .A1N(n28), .Y(
        n111) );
  OAI2BB2X1M U220 ( .B0(n220), .B1(n28), .A0N(\regArr[7][7] ), .A1N(n28), .Y(
        n112) );
  OAI2BB2X1M U221 ( .B0(n224), .B1(n19), .A0N(REG2[1]), .A1N(n19), .Y(n66) );
  OAI2BB2X1M U222 ( .B0(n223), .B1(n19), .A0N(REG2[2]), .A1N(n19), .Y(n67) );
  OAI2BB2X1M U223 ( .B0(n222), .B1(n19), .A0N(REG2[3]), .A1N(n19), .Y(n68) );
  OAI2BB2X1M U224 ( .B0(n221), .B1(n19), .A0N(REG2[4]), .A1N(n19), .Y(n69) );
  OAI2BB2X1M U225 ( .B0(n226), .B1(n19), .A0N(REG2[5]), .A1N(n19), .Y(n70) );
  OAI2BB2X1M U226 ( .B0(n227), .B1(n19), .A0N(REG2[6]), .A1N(n19), .Y(n71) );
  OAI2BB2X1M U227 ( .B0(n225), .B1(n21), .A0N(REG3[0]), .A1N(n21), .Y(n73) );
  OAI2BB2X1M U228 ( .B0(n224), .B1(n21), .A0N(REG3[1]), .A1N(n21), .Y(n74) );
  OAI2BB2X1M U229 ( .B0(n223), .B1(n21), .A0N(REG3[2]), .A1N(n21), .Y(n75) );
  OAI2BB2X1M U230 ( .B0(n222), .B1(n21), .A0N(REG3[3]), .A1N(n21), .Y(n76) );
  OAI2BB2X1M U231 ( .B0(n221), .B1(n21), .A0N(REG3[4]), .A1N(n21), .Y(n77) );
  OAI2BB2X1M U232 ( .B0(n227), .B1(n21), .A0N(REG3[6]), .A1N(n21), .Y(n79) );
  OAI2BB2X1M U233 ( .B0(n220), .B1(n21), .A0N(REG3[7]), .A1N(n21), .Y(n80) );
  OAI2BB2X1M U234 ( .B0(n225), .B1(n19), .A0N(REG2[0]), .A1N(n19), .Y(n65) );
  OAI2BB2X1M U235 ( .B0(n220), .B1(n19), .A0N(REG2[7]), .A1N(n19), .Y(n72) );
  OAI2BB2X1M U236 ( .B0(n226), .B1(n21), .A0N(REG3[5]), .A1N(n21), .Y(n78) );
  OAI2BB1X2M U237 ( .A0N(RdData_VLD), .A1N(n13), .B0(n12), .Y(n48) );
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
  ADDFX2M \u_div/u_fa_PartRem_0_0_4  ( .A(\u_div/PartRem[1][4] ), .B(n14), 
        .CI(\u_div/CryTmp[0][4] ), .CO(\u_div/CryTmp[0][5] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_5  ( .A(\u_div/PartRem[1][5] ), .B(n13), 
        .CI(\u_div/CryTmp[0][5] ), .CO(\u_div/CryTmp[0][6] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_5  ( .A(\u_div/PartRem[2][5] ), .B(n13), 
        .CI(\u_div/CryTmp[1][5] ), .CO(\u_div/CryTmp[1][6] ), .S(
        \u_div/SumTmp[1][5] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_4  ( .A(\u_div/PartRem[2][4] ), .B(n14), 
        .CI(\u_div/CryTmp[1][4] ), .CO(\u_div/CryTmp[1][5] ), .S(
        \u_div/SumTmp[1][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_2  ( .A(\u_div/PartRem[1][2] ), .B(n16), 
        .CI(\u_div/CryTmp[0][2] ), .CO(\u_div/CryTmp[0][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_3  ( .A(\u_div/PartRem[1][3] ), .B(n15), 
        .CI(\u_div/CryTmp[0][3] ), .CO(\u_div/CryTmp[0][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_4  ( .A(\u_div/PartRem[3][4] ), .B(n14), 
        .CI(\u_div/CryTmp[2][4] ), .CO(\u_div/CryTmp[2][5] ), .S(
        \u_div/SumTmp[2][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_3  ( .A(\u_div/PartRem[2][3] ), .B(n15), 
        .CI(\u_div/CryTmp[1][3] ), .CO(\u_div/CryTmp[1][4] ), .S(
        \u_div/SumTmp[1][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_3  ( .A(\u_div/PartRem[3][3] ), .B(n15), 
        .CI(\u_div/CryTmp[2][3] ), .CO(\u_div/CryTmp[2][4] ), .S(
        \u_div/SumTmp[2][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_2  ( .A(\u_div/PartRem[2][2] ), .B(n16), 
        .CI(\u_div/CryTmp[1][2] ), .CO(\u_div/CryTmp[1][3] ), .S(
        \u_div/SumTmp[1][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_3_3  ( .A(\u_div/PartRem[4][3] ), .B(n15), 
        .CI(\u_div/CryTmp[3][3] ), .CO(\u_div/CryTmp[3][4] ), .S(
        \u_div/SumTmp[3][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_2  ( .A(\u_div/PartRem[3][2] ), .B(n16), 
        .CI(\u_div/CryTmp[2][2] ), .CO(\u_div/CryTmp[2][3] ), .S(
        \u_div/SumTmp[2][2] ) );
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
  NAND2X2M U9 ( .A(n3), .B(n4), .Y(\u_div/CryTmp[5][1] ) );
  INVX2M U10 ( .A(a[5]), .Y(n4) );
  INVX2M U11 ( .A(n18), .Y(n3) );
  NAND2X2M U12 ( .A(n5), .B(n6), .Y(\u_div/CryTmp[4][1] ) );
  INVX2M U13 ( .A(a[4]), .Y(n6) );
  INVX2M U14 ( .A(n18), .Y(n5) );
  NAND2X2M U15 ( .A(n5), .B(n7), .Y(\u_div/CryTmp[3][1] ) );
  INVX2M U16 ( .A(a[3]), .Y(n7) );
  NAND2X2M U17 ( .A(n5), .B(n8), .Y(\u_div/CryTmp[2][1] ) );
  INVX2M U18 ( .A(a[2]), .Y(n8) );
  NAND2X2M U19 ( .A(n5), .B(n9), .Y(\u_div/CryTmp[1][1] ) );
  INVX2M U20 ( .A(a[1]), .Y(n9) );
  NAND2X2M U21 ( .A(n5), .B(n10), .Y(\u_div/CryTmp[0][1] ) );
  INVX2M U22 ( .A(a[0]), .Y(n10) );
  NAND2X2M U23 ( .A(n1), .B(n2), .Y(\u_div/CryTmp[6][1] ) );
  INVX2M U24 ( .A(a[6]), .Y(n2) );
  INVX2M U25 ( .A(n18), .Y(n1) );
  XNOR2X2M U26 ( .A(n18), .B(a[1]), .Y(\u_div/SumTmp[1][0] ) );
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
  INVX2M U1 ( .A(B[6]), .Y(n3) );
  XNOR2X2M U2 ( .A(n9), .B(A[0]), .Y(DIFF[0]) );
  INVX2M U3 ( .A(B[0]), .Y(n9) );
  INVX2M U4 ( .A(B[2]), .Y(n7) );
  INVX2M U5 ( .A(B[3]), .Y(n6) );
  INVX2M U6 ( .A(B[4]), .Y(n5) );
  INVX2M U7 ( .A(B[5]), .Y(n4) );
  INVX2M U8 ( .A(B[1]), .Y(n8) );
  NAND2X2M U9 ( .A(B[0]), .B(n1), .Y(carry[1]) );
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
  XNOR2X2M U4 ( .A(B[13]), .B(n1), .Y(SUM[13]) );
  XNOR2X2M U5 ( .A(A[7]), .B(n8), .Y(SUM[7]) );
  INVX2M U6 ( .A(B[7]), .Y(n8) );
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

  ALU_OPER_WIDTH8_OUT_WIDTH16_DW01_add_1 FS_1 ( .A({1'b0, \A1[12] , \A1[11] , 
        \A1[10] , \A1[9] , \A1[8] , \A1[7] , \A1[6] , \SUMB[7][0] , \A1[4] , 
        \A1[3] , \A1[2] , \A1[1] , \A1[0] }), .B({n10, n16, n14, n13, n15, n11, 
        n12, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .CI(1'b0), .SUM(
        PRODUCT[15:2]) );
  ADDFX2M S5_6 ( .A(\ab[7][6] ), .B(\CARRYB[6][6] ), .CI(\ab[6][7] ), .CO(
        \CARRYB[7][6] ), .S(\SUMB[7][6] ) );
  ADDFX2M S1_6_0 ( .A(\ab[6][0] ), .B(\CARRYB[5][0] ), .CI(\SUMB[5][1] ), .CO(
        \CARRYB[6][0] ), .S(\A1[4] ) );
  ADDFX2M S1_5_0 ( .A(\ab[5][0] ), .B(\CARRYB[4][0] ), .CI(\SUMB[4][1] ), .CO(
        \CARRYB[5][0] ), .S(\A1[3] ) );
  ADDFX2M S1_4_0 ( .A(\ab[4][0] ), .B(\CARRYB[3][0] ), .CI(\SUMB[3][1] ), .CO(
        \CARRYB[4][0] ), .S(\A1[2] ) );
  ADDFX2M S1_3_0 ( .A(\ab[3][0] ), .B(\CARRYB[2][0] ), .CI(\SUMB[2][1] ), .CO(
        \CARRYB[3][0] ), .S(\A1[1] ) );
  ADDFX2M S1_2_0 ( .A(\ab[2][0] ), .B(n9), .CI(\SUMB[1][1] ), .CO(
        \CARRYB[2][0] ), .S(\A1[0] ) );
  ADDFX2M S3_6_6 ( .A(\ab[6][6] ), .B(\CARRYB[5][6] ), .CI(\ab[5][7] ), .CO(
        \CARRYB[6][6] ), .S(\SUMB[6][6] ) );
  ADDFX2M S2_6_5 ( .A(\ab[6][5] ), .B(\CARRYB[5][5] ), .CI(\SUMB[5][6] ), .CO(
        \CARRYB[6][5] ), .S(\SUMB[6][5] ) );
  ADDFX2M S3_5_6 ( .A(\ab[5][6] ), .B(\CARRYB[4][6] ), .CI(\ab[4][7] ), .CO(
        \CARRYB[5][6] ), .S(\SUMB[5][6] ) );
  ADDFX2M S3_4_6 ( .A(\ab[4][6] ), .B(\CARRYB[3][6] ), .CI(\ab[3][7] ), .CO(
        \CARRYB[4][6] ), .S(\SUMB[4][6] ) );
  ADDFX2M S4_0 ( .A(\ab[7][0] ), .B(\CARRYB[6][0] ), .CI(\SUMB[6][1] ), .CO(
        \CARRYB[7][0] ), .S(\SUMB[7][0] ) );
  ADDFX2M S4_5 ( .A(\ab[7][5] ), .B(\CARRYB[6][5] ), .CI(\SUMB[6][6] ), .CO(
        \CARRYB[7][5] ), .S(\SUMB[7][5] ) );
  ADDFX2M S4_4 ( .A(\ab[7][4] ), .B(\CARRYB[6][4] ), .CI(\SUMB[6][5] ), .CO(
        \CARRYB[7][4] ), .S(\SUMB[7][4] ) );
  ADDFX2M S3_2_6 ( .A(\ab[2][6] ), .B(n8), .CI(\ab[1][7] ), .CO(\CARRYB[2][6] ), .S(\SUMB[2][6] ) );
  ADDFX2M S2_6_2 ( .A(\ab[6][2] ), .B(\CARRYB[5][2] ), .CI(\SUMB[5][3] ), .CO(
        \CARRYB[6][2] ), .S(\SUMB[6][2] ) );
  ADDFX2M S2_5_3 ( .A(\ab[5][3] ), .B(\CARRYB[4][3] ), .CI(\SUMB[4][4] ), .CO(
        \CARRYB[5][3] ), .S(\SUMB[5][3] ) );
  ADDFX2M S2_6_1 ( .A(\ab[6][1] ), .B(\CARRYB[5][1] ), .CI(\SUMB[5][2] ), .CO(
        \CARRYB[6][1] ), .S(\SUMB[6][1] ) );
  ADDFX2M S2_4_4 ( .A(\ab[4][4] ), .B(\CARRYB[3][4] ), .CI(\SUMB[3][5] ), .CO(
        \CARRYB[4][4] ), .S(\SUMB[4][4] ) );
  ADDFX2M S2_5_1 ( .A(\ab[5][1] ), .B(\CARRYB[4][1] ), .CI(\SUMB[4][2] ), .CO(
        \CARRYB[5][1] ), .S(\SUMB[5][1] ) );
  ADDFX2M S2_5_2 ( .A(\ab[5][2] ), .B(\CARRYB[4][2] ), .CI(\SUMB[4][3] ), .CO(
        \CARRYB[5][2] ), .S(\SUMB[5][2] ) );
  ADDFX2M S2_3_5 ( .A(\ab[3][5] ), .B(\CARRYB[2][5] ), .CI(\SUMB[2][6] ), .CO(
        \CARRYB[3][5] ), .S(\SUMB[3][5] ) );
  ADDFX2M S2_4_1 ( .A(\ab[4][1] ), .B(\CARRYB[3][1] ), .CI(\SUMB[3][2] ), .CO(
        \CARRYB[4][1] ), .S(\SUMB[4][1] ) );
  ADDFX2M S2_4_2 ( .A(\ab[4][2] ), .B(\CARRYB[3][2] ), .CI(\SUMB[3][3] ), .CO(
        \CARRYB[4][2] ), .S(\SUMB[4][2] ) );
  ADDFX2M S2_3_1 ( .A(\ab[3][1] ), .B(\CARRYB[2][1] ), .CI(\SUMB[2][2] ), .CO(
        \CARRYB[3][1] ), .S(\SUMB[3][1] ) );
  ADDFX2M S2_3_2 ( .A(\ab[3][2] ), .B(\CARRYB[2][2] ), .CI(\SUMB[2][3] ), .CO(
        \CARRYB[3][2] ), .S(\SUMB[3][2] ) );
  ADDFX2M S2_3_4 ( .A(\ab[3][4] ), .B(\CARRYB[2][4] ), .CI(\SUMB[2][5] ), .CO(
        \CARRYB[3][4] ), .S(\SUMB[3][4] ) );
  ADDFX2M S2_6_4 ( .A(\ab[6][4] ), .B(\CARRYB[5][4] ), .CI(\SUMB[5][5] ), .CO(
        \CARRYB[6][4] ), .S(\SUMB[6][4] ) );
  ADDFX2M S2_5_5 ( .A(\ab[5][5] ), .B(\CARRYB[4][5] ), .CI(\SUMB[4][6] ), .CO(
        \CARRYB[5][5] ), .S(\SUMB[5][5] ) );
  ADDFX2M S2_6_3 ( .A(\ab[6][3] ), .B(\CARRYB[5][3] ), .CI(\SUMB[5][4] ), .CO(
        \CARRYB[6][3] ), .S(\SUMB[6][3] ) );
  ADDFX2M S2_5_4 ( .A(\ab[5][4] ), .B(\CARRYB[4][4] ), .CI(\SUMB[4][5] ), .CO(
        \CARRYB[5][4] ), .S(\SUMB[5][4] ) );
  ADDFX2M S2_4_5 ( .A(\ab[4][5] ), .B(\CARRYB[3][5] ), .CI(\SUMB[3][6] ), .CO(
        \CARRYB[4][5] ), .S(\SUMB[4][5] ) );
  ADDFX2M S3_3_6 ( .A(\ab[3][6] ), .B(\CARRYB[2][6] ), .CI(\ab[2][7] ), .CO(
        \CARRYB[3][6] ), .S(\SUMB[3][6] ) );
  ADDFX2M S2_4_3 ( .A(\ab[4][3] ), .B(\CARRYB[3][3] ), .CI(\SUMB[3][4] ), .CO(
        \CARRYB[4][3] ), .S(\SUMB[4][3] ) );
  ADDFX2M S2_3_3 ( .A(\ab[3][3] ), .B(\CARRYB[2][3] ), .CI(\SUMB[2][4] ), .CO(
        \CARRYB[3][3] ), .S(\SUMB[3][3] ) );
  ADDFX2M S2_2_3 ( .A(\ab[2][3] ), .B(n5), .CI(\SUMB[1][4] ), .CO(
        \CARRYB[2][3] ), .S(\SUMB[2][3] ) );
  ADDFX2M S2_2_4 ( .A(\ab[2][4] ), .B(n7), .CI(\SUMB[1][5] ), .CO(
        \CARRYB[2][4] ), .S(\SUMB[2][4] ) );
  ADDFX2M S2_2_5 ( .A(\ab[2][5] ), .B(n6), .CI(\SUMB[1][6] ), .CO(
        \CARRYB[2][5] ), .S(\SUMB[2][5] ) );
  ADDFX2M S4_1 ( .A(\ab[7][1] ), .B(\CARRYB[6][1] ), .CI(\SUMB[6][2] ), .CO(
        \CARRYB[7][1] ), .S(\SUMB[7][1] ) );
  ADDFX2M S4_3 ( .A(\ab[7][3] ), .B(\CARRYB[6][3] ), .CI(\SUMB[6][4] ), .CO(
        \CARRYB[7][3] ), .S(\SUMB[7][3] ) );
  ADDFX2M S4_2 ( .A(\ab[7][2] ), .B(\CARRYB[6][2] ), .CI(\SUMB[6][3] ), .CO(
        \CARRYB[7][2] ), .S(\SUMB[7][2] ) );
  ADDFX2M S2_2_1 ( .A(\ab[2][1] ), .B(n4), .CI(\SUMB[1][2] ), .CO(
        \CARRYB[2][1] ), .S(\SUMB[2][1] ) );
  ADDFX2M S2_2_2 ( .A(\ab[2][2] ), .B(n3), .CI(\SUMB[1][3] ), .CO(
        \CARRYB[2][2] ), .S(\SUMB[2][2] ) );
  AND2X2M U2 ( .A(\ab[0][3] ), .B(\ab[1][2] ), .Y(n3) );
  AND2X2M U3 ( .A(\ab[0][2] ), .B(\ab[1][1] ), .Y(n4) );
  AND2X2M U4 ( .A(\ab[0][4] ), .B(\ab[1][3] ), .Y(n5) );
  AND2X2M U5 ( .A(\ab[0][6] ), .B(\ab[1][5] ), .Y(n6) );
  AND2X2M U6 ( .A(\ab[0][5] ), .B(\ab[1][4] ), .Y(n7) );
  AND2X2M U7 ( .A(\ab[0][7] ), .B(\ab[1][6] ), .Y(n8) );
  AND2X2M U8 ( .A(\ab[0][1] ), .B(\ab[1][0] ), .Y(n9) );
  AND2X2M U9 ( .A(\CARRYB[7][6] ), .B(\ab[7][7] ), .Y(n10) );
  INVX2M U10 ( .A(\ab[0][6] ), .Y(n22) );
  CLKXOR2X2M U11 ( .A(\CARRYB[7][1] ), .B(\SUMB[7][2] ), .Y(\A1[7] ) );
  CLKXOR2X2M U12 ( .A(\CARRYB[7][2] ), .B(\SUMB[7][3] ), .Y(\A1[8] ) );
  INVX2M U13 ( .A(\ab[0][7] ), .Y(n23) );
  INVX2M U14 ( .A(\ab[0][5] ), .Y(n21) );
  INVX2M U15 ( .A(\ab[0][4] ), .Y(n20) );
  INVX2M U16 ( .A(\ab[0][3] ), .Y(n19) );
  AND2X2M U17 ( .A(\CARRYB[7][1] ), .B(\SUMB[7][2] ), .Y(n11) );
  AND2X2M U18 ( .A(\CARRYB[7][0] ), .B(\SUMB[7][1] ), .Y(n12) );
  CLKXOR2X2M U19 ( .A(\CARRYB[7][4] ), .B(\SUMB[7][5] ), .Y(\A1[10] ) );
  CLKXOR2X2M U20 ( .A(\CARRYB[7][5] ), .B(\SUMB[7][6] ), .Y(\A1[11] ) );
  INVX2M U21 ( .A(\ab[0][2] ), .Y(n18) );
  AND2X2M U22 ( .A(\CARRYB[7][3] ), .B(\SUMB[7][4] ), .Y(n13) );
  AND2X2M U23 ( .A(\CARRYB[7][4] ), .B(\SUMB[7][5] ), .Y(n14) );
  CLKXOR2X2M U24 ( .A(\CARRYB[7][3] ), .B(\SUMB[7][4] ), .Y(\A1[9] ) );
  AND2X2M U25 ( .A(\CARRYB[7][2] ), .B(\SUMB[7][3] ), .Y(n15) );
  CLKXOR2X2M U26 ( .A(\CARRYB[7][6] ), .B(\ab[7][7] ), .Y(\A1[12] ) );
  XNOR2X2M U27 ( .A(\CARRYB[7][0] ), .B(n17), .Y(\A1[6] ) );
  INVX2M U28 ( .A(\SUMB[7][1] ), .Y(n17) );
  AND2X2M U29 ( .A(\CARRYB[7][5] ), .B(\SUMB[7][6] ), .Y(n16) );
  CLKXOR2X2M U30 ( .A(\ab[1][0] ), .B(\ab[0][1] ), .Y(PRODUCT[1]) );
  XNOR2X2M U31 ( .A(\ab[1][3] ), .B(n20), .Y(\SUMB[1][3] ) );
  XNOR2X2M U32 ( .A(\ab[1][2] ), .B(n19), .Y(\SUMB[1][2] ) );
  XNOR2X2M U33 ( .A(\ab[1][6] ), .B(n23), .Y(\SUMB[1][6] ) );
  XNOR2X2M U34 ( .A(\ab[1][5] ), .B(n22), .Y(\SUMB[1][5] ) );
  XNOR2X2M U35 ( .A(\ab[1][4] ), .B(n21), .Y(\SUMB[1][4] ) );
  INVX2M U36 ( .A(A[1]), .Y(n38) );
  INVX2M U37 ( .A(A[0]), .Y(n39) );
  INVX2M U38 ( .A(B[6]), .Y(n25) );
  XNOR2X2M U39 ( .A(\ab[1][1] ), .B(n18), .Y(\SUMB[1][1] ) );
  INVX2M U40 ( .A(A[3]), .Y(n36) );
  INVX2M U41 ( .A(A[2]), .Y(n37) );
  INVX2M U42 ( .A(A[4]), .Y(n35) );
  INVX2M U43 ( .A(A[7]), .Y(n32) );
  INVX2M U44 ( .A(A[6]), .Y(n33) );
  INVX2M U45 ( .A(A[5]), .Y(n34) );
  INVX2M U46 ( .A(B[3]), .Y(n28) );
  INVX2M U47 ( .A(B[7]), .Y(n24) );
  INVX2M U48 ( .A(B[4]), .Y(n27) );
  INVX2M U49 ( .A(B[5]), .Y(n26) );
  INVX2M U50 ( .A(B[0]), .Y(n31) );
  INVX2M U51 ( .A(B[2]), .Y(n29) );
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
endmodule


module ALU_OPER_WIDTH8_OUT_WIDTH16 ( A, B, EN, ALU_FUN, CLK, RST, ALU_OUT, 
        OUT_VALID );
  input [7:0] A;
  input [7:0] B;
  input [3:0] ALU_FUN;
  output [15:0] ALU_OUT;
  input EN, CLK, RST;
  output OUT_VALID;
  wire   N67, N68, N69, N70, N71, N72, N73, N74, N75, N76, N77, N78, N79, N80,
         N81, N82, N83, N84, N85, N86, N87, N88, N89, N90, N91, N92, N93, N94,
         N95, N96, N97, N98, N99, N100, N101, N102, N103, N104, N105, N106,
         N107, N108, N157, N158, N159, n31, n32, n33, n34, n35, n36, n37, n38,
         n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52,
         n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66,
         n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80,
         n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94,
         n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106,
         n107, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n108, n109, n110, n111, n112, n113, n114, n115, n116, n117, n118,
         n119, n120, n121, n122, n123, n124, n125, n126, n127, n128, n129,
         n130, n131, n132, n133, n134, n135, n136, n137, n138, n139, n140;
  wire   [15:0] ALU_OUT_Comb;

  ALU_OPER_WIDTH8_OUT_WIDTH16_DW_div_uns_0 div_52 ( .a({n12, n11, n10, n9, n8, 
        n7, n6, n5}), .b({B[7], n4, B[5:0]}), .quotient({N108, N107, N106, 
        N105, N104, N103, N102, N101}) );
  ALU_OPER_WIDTH8_OUT_WIDTH16_DW01_sub_0 sub_46 ( .A({1'b0, n12, n11, n10, n9, 
        n8, n7, n6, n5}), .B({1'b0, B[7], n4, B[5:0]}), .CI(1'b0), .DIFF({N84, 
        N83, N82, N81, N80, N79, N78, N77, N76}) );
  ALU_OPER_WIDTH8_OUT_WIDTH16_DW01_add_0 add_43 ( .A({1'b0, n12, n11, n10, n9, 
        n8, n7, n6, n5}), .B({1'b0, B[7], n4, B[5:0]}), .CI(1'b0), .SUM({N75, 
        N74, N73, N72, N71, N70, N69, N68, N67}) );
  ALU_OPER_WIDTH8_OUT_WIDTH16_DW02_mult_0 mult_49 ( .A({n12, n11, n10, n9, n8, 
        n7, n6, n5}), .B({B[7], n4, B[5:0]}), .TC(1'b0), .PRODUCT({N100, N99, 
        N98, N97, N96, N95, N94, N93, N92, N91, N90, N89, N88, N87, N86, N85})
         );
  DFFRQX2M \ALU_OUT_reg[15]  ( .D(ALU_OUT_Comb[15]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[15]) );
  DFFRQX2M \ALU_OUT_reg[14]  ( .D(ALU_OUT_Comb[14]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[14]) );
  DFFRQX2M \ALU_OUT_reg[13]  ( .D(ALU_OUT_Comb[13]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[13]) );
  DFFRQX2M \ALU_OUT_reg[12]  ( .D(ALU_OUT_Comb[12]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[12]) );
  DFFRQX2M \ALU_OUT_reg[11]  ( .D(ALU_OUT_Comb[11]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[11]) );
  DFFRQX2M \ALU_OUT_reg[10]  ( .D(ALU_OUT_Comb[10]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[10]) );
  DFFRQX2M \ALU_OUT_reg[9]  ( .D(ALU_OUT_Comb[9]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[9]) );
  DFFRQX2M \ALU_OUT_reg[8]  ( .D(ALU_OUT_Comb[8]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[8]) );
  DFFRQX2M \ALU_OUT_reg[7]  ( .D(ALU_OUT_Comb[7]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[7]) );
  DFFRQX2M \ALU_OUT_reg[6]  ( .D(ALU_OUT_Comb[6]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[6]) );
  DFFRQX2M \ALU_OUT_reg[5]  ( .D(ALU_OUT_Comb[5]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[5]) );
  DFFRQX2M \ALU_OUT_reg[4]  ( .D(ALU_OUT_Comb[4]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[4]) );
  DFFRQX2M \ALU_OUT_reg[3]  ( .D(ALU_OUT_Comb[3]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[3]) );
  DFFRQX2M \ALU_OUT_reg[2]  ( .D(ALU_OUT_Comb[2]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[2]) );
  DFFRQX2M \ALU_OUT_reg[1]  ( .D(ALU_OUT_Comb[1]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[1]) );
  DFFRQX2M \ALU_OUT_reg[0]  ( .D(ALU_OUT_Comb[0]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[0]) );
  DFFRQX2M OUT_VALID_reg ( .D(EN), .CK(CLK), .RN(RST), .Q(OUT_VALID) );
  BUFX2M U3 ( .A(A[6]), .Y(n11) );
  OAI2BB1X2M U4 ( .A0N(N100), .A1N(n31), .B0(n32), .Y(ALU_OUT_Comb[15]) );
  OAI2BB1X2M U7 ( .A0N(N99), .A1N(n31), .B0(n32), .Y(ALU_OUT_Comb[14]) );
  OAI2BB1X2M U8 ( .A0N(N97), .A1N(n31), .B0(n32), .Y(ALU_OUT_Comb[12]) );
  OAI2BB1X2M U9 ( .A0N(N98), .A1N(n31), .B0(n32), .Y(ALU_OUT_Comb[13]) );
  OAI2BB1X2M U10 ( .A0N(N94), .A1N(n31), .B0(n32), .Y(ALU_OUT_Comb[9]) );
  OAI2BB1X2M U11 ( .A0N(N95), .A1N(n31), .B0(n32), .Y(ALU_OUT_Comb[10]) );
  OAI2BB1X2M U12 ( .A0N(N96), .A1N(n31), .B0(n32), .Y(ALU_OUT_Comb[11]) );
  OAI2BB1X2M U13 ( .A0N(n140), .A1N(n105), .B0(n101), .Y(n47) );
  OAI2BB1X2M U14 ( .A0N(n100), .A1N(n99), .B0(n101), .Y(n48) );
  AND2X2M U15 ( .A(n99), .B(n105), .Y(n42) );
  BUFX2M U16 ( .A(n41), .Y(n13) );
  NOR2X2M U17 ( .A(n107), .B(n137), .Y(n41) );
  INVX2M U18 ( .A(n100), .Y(n137) );
  INVX2M U19 ( .A(n107), .Y(n140) );
  NOR2BX2M U20 ( .AN(n106), .B(n137), .Y(n37) );
  NOR2BX2M U21 ( .AN(n35), .B(n135), .Y(n31) );
  AND2X2M U22 ( .A(n106), .B(n105), .Y(n50) );
  INVX2M U23 ( .A(n91), .Y(n138) );
  NOR3BX2M U24 ( .AN(n105), .B(n139), .C(ALU_FUN[2]), .Y(n49) );
  NOR2X2M U25 ( .A(ALU_FUN[2]), .B(ALU_FUN[1]), .Y(n106) );
  AND3X2M U26 ( .A(n106), .B(n136), .C(n3), .Y(n46) );
  NAND2X2M U27 ( .A(ALU_FUN[2]), .B(ALU_FUN[1]), .Y(n107) );
  INVX2M U28 ( .A(ALU_FUN[0]), .Y(n136) );
  NOR2X2M U29 ( .A(n136), .B(n3), .Y(n105) );
  NOR2X2M U30 ( .A(n3), .B(ALU_FUN[0]), .Y(n100) );
  INVX2M U31 ( .A(ALU_FUN[1]), .Y(n139) );
  NAND3X2M U32 ( .A(n106), .B(ALU_FUN[0]), .C(n3), .Y(n101) );
  NAND2X2M U33 ( .A(EN), .B(n123), .Y(n32) );
  AND2X2M U34 ( .A(ALU_FUN[2]), .B(n139), .Y(n99) );
  AND4X2M U35 ( .A(N159), .B(n99), .C(n3), .D(n136), .Y(n90) );
  NOR3X2M U36 ( .A(n137), .B(ALU_FUN[2]), .C(n139), .Y(n35) );
  NAND3X2M U37 ( .A(n140), .B(n136), .C(n3), .Y(n36) );
  NAND3X2M U38 ( .A(n3), .B(ALU_FUN[0]), .C(n99), .Y(n91) );
  INVX2M U39 ( .A(EN), .Y(n135) );
  AOI31X2M U40 ( .A0(n93), .A1(n94), .A2(n95), .B0(n135), .Y(ALU_OUT_Comb[0])
         );
  AOI22X1M U41 ( .A0(N76), .A1(n50), .B0(N67), .B1(n37), .Y(n93) );
  AOI211X2M U42 ( .A0(n13), .A1(n134), .B0(n96), .C0(n97), .Y(n95) );
  AOI222X1M U43 ( .A0(N85), .A1(n35), .B0(n5), .B1(n42), .C0(N101), .C1(n49), 
        .Y(n94) );
  AOI31X2M U44 ( .A0(n81), .A1(n82), .A2(n83), .B0(n135), .Y(ALU_OUT_Comb[1])
         );
  AOI222X1M U45 ( .A0(N68), .A1(n37), .B0(N86), .B1(n35), .C0(N77), .C1(n50), 
        .Y(n81) );
  AOI211X2M U46 ( .A0(n7), .A1(n138), .B0(n84), .C0(n85), .Y(n83) );
  AOI222X1M U47 ( .A0(N102), .A1(n49), .B0(n13), .B1(n133), .C0(n6), .C1(n42), 
        .Y(n82) );
  AOI31X2M U48 ( .A0(n75), .A1(n76), .A2(n77), .B0(n135), .Y(ALU_OUT_Comb[2])
         );
  AOI22X1M U49 ( .A0(N78), .A1(n50), .B0(N69), .B1(n37), .Y(n75) );
  AOI221XLM U50 ( .A0(n8), .A1(n138), .B0(n13), .B1(n132), .C0(n78), .Y(n77)
         );
  AOI222X1M U51 ( .A0(N87), .A1(n35), .B0(n7), .B1(n42), .C0(N103), .C1(n49), 
        .Y(n76) );
  AOI31X2M U52 ( .A0(n69), .A1(n70), .A2(n71), .B0(n135), .Y(ALU_OUT_Comb[3])
         );
  AOI22X1M U53 ( .A0(N79), .A1(n50), .B0(N70), .B1(n37), .Y(n69) );
  AOI221XLM U54 ( .A0(n9), .A1(n138), .B0(n13), .B1(n131), .C0(n72), .Y(n71)
         );
  AOI222X1M U55 ( .A0(N88), .A1(n35), .B0(n8), .B1(n42), .C0(N104), .C1(n49), 
        .Y(n70) );
  AOI31X2M U56 ( .A0(n63), .A1(n64), .A2(n65), .B0(n135), .Y(ALU_OUT_Comb[4])
         );
  AOI22X1M U57 ( .A0(N80), .A1(n50), .B0(N71), .B1(n37), .Y(n63) );
  AOI221XLM U58 ( .A0(n138), .A1(n10), .B0(n13), .B1(n130), .C0(n66), .Y(n65)
         );
  AOI222X1M U59 ( .A0(N89), .A1(n35), .B0(n9), .B1(n42), .C0(N105), .C1(n49), 
        .Y(n64) );
  AOI31X2M U60 ( .A0(n51), .A1(n52), .A2(n53), .B0(n135), .Y(ALU_OUT_Comb[6])
         );
  AOI22X1M U61 ( .A0(N82), .A1(n50), .B0(N73), .B1(n37), .Y(n51) );
  AOI221XLM U62 ( .A0(n138), .A1(n12), .B0(n13), .B1(n128), .C0(n54), .Y(n53)
         );
  AOI222X1M U63 ( .A0(N91), .A1(n35), .B0(n42), .B1(n11), .C0(N107), .C1(n49), 
        .Y(n52) );
  AOI31X2M U64 ( .A0(n57), .A1(n58), .A2(n59), .B0(n135), .Y(ALU_OUT_Comb[5])
         );
  AOI22X1M U65 ( .A0(N81), .A1(n50), .B0(N72), .B1(n37), .Y(n57) );
  AOI221XLM U66 ( .A0(n138), .A1(n11), .B0(n13), .B1(n129), .C0(n60), .Y(n59)
         );
  AOI222X1M U67 ( .A0(N90), .A1(n35), .B0(n10), .B1(n42), .C0(N106), .C1(n49), 
        .Y(n58) );
  AOI31X2M U68 ( .A0(n38), .A1(n39), .A2(n40), .B0(n135), .Y(ALU_OUT_Comb[7])
         );
  AOI22X1M U69 ( .A0(N83), .A1(n50), .B0(N74), .B1(n37), .Y(n38) );
  AOI221XLM U70 ( .A0(n13), .A1(n127), .B0(n42), .B1(n12), .C0(n43), .Y(n40)
         );
  AOI22X1M U71 ( .A0(N108), .A1(n49), .B0(N92), .B1(n35), .Y(n39) );
  AOI21X2M U72 ( .A0(n33), .A1(n34), .B0(n135), .Y(ALU_OUT_Comb[8]) );
  AOI21X2M U73 ( .A0(N75), .A1(n37), .B0(n123), .Y(n33) );
  AOI2BB2XLM U74 ( .B0(N93), .B1(n35), .A0N(n127), .A1N(n36), .Y(n34) );
  OAI222X1M U75 ( .A0(n55), .A1(n122), .B0(n4), .B1(n56), .C0(n36), .C1(n129), 
        .Y(n54) );
  AOI221XLM U76 ( .A0(n11), .A1(n46), .B0(n47), .B1(n128), .C0(n13), .Y(n56)
         );
  AOI221XLM U77 ( .A0(n46), .A1(n128), .B0(n11), .B1(n48), .C0(n42), .Y(n55)
         );
  INVX2M U78 ( .A(n4), .Y(n122) );
  INVX2M U79 ( .A(n92), .Y(n123) );
  AOI211X2M U80 ( .A0(N84), .A1(n50), .B0(n13), .C0(n47), .Y(n92) );
  BUFX2M U81 ( .A(ALU_FUN[3]), .Y(n3) );
  INVX2M U82 ( .A(n6), .Y(n133) );
  INVX2M U83 ( .A(n5), .Y(n134) );
  INVX2M U84 ( .A(n11), .Y(n128) );
  INVX2M U85 ( .A(n12), .Y(n127) );
  INVX2M U86 ( .A(n8), .Y(n131) );
  INVX2M U87 ( .A(n7), .Y(n132) );
  INVX2M U88 ( .A(n10), .Y(n129) );
  INVX2M U89 ( .A(n9), .Y(n130) );
  BUFX2M U90 ( .A(B[6]), .Y(n4) );
  BUFX2M U91 ( .A(A[7]), .Y(n12) );
  BUFX2M U92 ( .A(A[5]), .Y(n10) );
  BUFX2M U93 ( .A(A[4]), .Y(n9) );
  BUFX2M U94 ( .A(A[3]), .Y(n8) );
  BUFX2M U95 ( .A(A[2]), .Y(n7) );
  BUFX2M U96 ( .A(A[1]), .Y(n6) );
  BUFX2M U97 ( .A(A[0]), .Y(n5) );
  INVX2M U98 ( .A(n25), .Y(n120) );
  OAI2B2X1M U99 ( .A1N(B[1]), .A0(n86), .B0(n36), .B1(n134), .Y(n85) );
  AOI221XLM U100 ( .A0(n46), .A1(n133), .B0(n6), .B1(n48), .C0(n42), .Y(n86)
         );
  OAI222X1M U101 ( .A0(n79), .A1(n119), .B0(B[2]), .B1(n80), .C0(n36), .C1(
        n133), .Y(n78) );
  AOI221XLM U102 ( .A0(n7), .A1(n46), .B0(n47), .B1(n132), .C0(n13), .Y(n80)
         );
  AOI221XLM U103 ( .A0(n46), .A1(n132), .B0(n7), .B1(n48), .C0(n42), .Y(n79)
         );
  OAI222X1M U104 ( .A0(n73), .A1(n121), .B0(B[3]), .B1(n74), .C0(n36), .C1(
        n132), .Y(n72) );
  AOI221XLM U105 ( .A0(n8), .A1(n46), .B0(n47), .B1(n131), .C0(n13), .Y(n74)
         );
  AOI221XLM U106 ( .A0(n46), .A1(n131), .B0(n8), .B1(n48), .C0(n42), .Y(n73)
         );
  OAI222X1M U107 ( .A0(n67), .A1(n126), .B0(B[4]), .B1(n68), .C0(n36), .C1(
        n131), .Y(n66) );
  INVX2M U108 ( .A(B[4]), .Y(n126) );
  AOI221XLM U109 ( .A0(n9), .A1(n46), .B0(n47), .B1(n130), .C0(n13), .Y(n68)
         );
  AOI221XLM U110 ( .A0(n46), .A1(n130), .B0(n9), .B1(n48), .C0(n42), .Y(n67)
         );
  OAI222X1M U111 ( .A0(n61), .A1(n125), .B0(B[5]), .B1(n62), .C0(n36), .C1(
        n130), .Y(n60) );
  INVX2M U112 ( .A(B[5]), .Y(n125) );
  AOI221XLM U113 ( .A0(n10), .A1(n46), .B0(n47), .B1(n129), .C0(n13), .Y(n62)
         );
  AOI221XLM U114 ( .A0(n46), .A1(n129), .B0(n10), .B1(n48), .C0(n42), .Y(n61)
         );
  OAI222X1M U115 ( .A0(n44), .A1(n124), .B0(B[7]), .B1(n45), .C0(n36), .C1(
        n128), .Y(n43) );
  INVX2M U116 ( .A(B[7]), .Y(n124) );
  AOI221XLM U117 ( .A0(n46), .A1(n12), .B0(n47), .B1(n127), .C0(n13), .Y(n45)
         );
  AOI221XLM U118 ( .A0(n46), .A1(n127), .B0(n12), .B1(n48), .C0(n42), .Y(n44)
         );
  INVX2M U119 ( .A(n14), .Y(n118) );
  OAI2B2X1M U120 ( .A1N(B[0]), .A0(n98), .B0(n91), .B1(n133), .Y(n97) );
  AOI221XLM U121 ( .A0(n46), .A1(n134), .B0(n5), .B1(n48), .C0(n42), .Y(n98)
         );
  OAI21X2M U122 ( .A0(B[0]), .A1(n102), .B0(n103), .Y(n96) );
  AOI221XLM U123 ( .A0(n5), .A1(n46), .B0(n47), .B1(n134), .C0(n13), .Y(n102)
         );
  AOI31X2M U124 ( .A0(N157), .A1(n3), .A2(n104), .B0(n90), .Y(n103) );
  NOR3X2M U125 ( .A(n139), .B(ALU_FUN[2]), .C(ALU_FUN[0]), .Y(n104) );
  OAI21X2M U126 ( .A0(B[1]), .A1(n87), .B0(n88), .Y(n84) );
  AOI221XLM U127 ( .A0(n6), .A1(n46), .B0(n47), .B1(n133), .C0(n13), .Y(n87)
         );
  AOI31X2M U128 ( .A0(N158), .A1(n3), .A2(n89), .B0(n90), .Y(n88) );
  NOR3X2M U129 ( .A(n136), .B(ALU_FUN[2]), .C(n139), .Y(n89) );
  INVX2M U130 ( .A(B[0]), .Y(n117) );
  INVX2M U131 ( .A(B[2]), .Y(n119) );
  INVX2M U132 ( .A(B[3]), .Y(n121) );
  NOR2X1M U133 ( .A(n127), .B(B[7]), .Y(n113) );
  NAND2BX1M U134 ( .AN(B[4]), .B(n9), .Y(n29) );
  NAND2BX1M U135 ( .AN(n9), .B(B[4]), .Y(n18) );
  CLKNAND2X2M U136 ( .A(n29), .B(n18), .Y(n108) );
  NOR2X1M U137 ( .A(n121), .B(n8), .Y(n26) );
  NOR2X1M U138 ( .A(n119), .B(n7), .Y(n17) );
  NOR2X1M U139 ( .A(n117), .B(n5), .Y(n14) );
  CLKNAND2X2M U140 ( .A(n7), .B(n119), .Y(n28) );
  NAND2BX1M U141 ( .AN(n17), .B(n28), .Y(n23) );
  AOI21X1M U142 ( .A0(n14), .A1(n133), .B0(B[1]), .Y(n15) );
  AOI211X1M U143 ( .A0(n6), .A1(n118), .B0(n23), .C0(n15), .Y(n16) );
  CLKNAND2X2M U144 ( .A(n8), .B(n121), .Y(n27) );
  OAI31X1M U145 ( .A0(n26), .A1(n17), .A2(n16), .B0(n27), .Y(n19) );
  NAND2BX1M U146 ( .AN(n10), .B(B[5]), .Y(n111) );
  OAI211X1M U147 ( .A0(n108), .A1(n19), .B0(n18), .C0(n111), .Y(n20) );
  NAND2BX1M U148 ( .AN(B[5]), .B(n10), .Y(n30) );
  XNOR2X1M U149 ( .A(n11), .B(n4), .Y(n110) );
  AOI32X1M U150 ( .A0(n20), .A1(n30), .A2(n110), .B0(n4), .B1(n128), .Y(n21)
         );
  CLKNAND2X2M U151 ( .A(B[7]), .B(n127), .Y(n114) );
  OAI21X1M U152 ( .A0(n113), .A1(n21), .B0(n114), .Y(N159) );
  CLKNAND2X2M U153 ( .A(n5), .B(n117), .Y(n24) );
  OA21X1M U154 ( .A0(n24), .A1(n133), .B0(B[1]), .Y(n22) );
  AOI211X1M U155 ( .A0(n24), .A1(n133), .B0(n23), .C0(n22), .Y(n25) );
  AOI31X1M U156 ( .A0(n120), .A1(n28), .A2(n27), .B0(n26), .Y(n109) );
  OAI2B11X1M U157 ( .A1N(n109), .A0(n108), .B0(n30), .C0(n29), .Y(n112) );
  AOI32X1M U158 ( .A0(n112), .A1(n111), .A2(n110), .B0(n11), .B1(n122), .Y(
        n115) );
  AOI2B1X1M U159 ( .A1N(n115), .A0(n114), .B0(n113), .Y(n116) );
  CLKINVX1M U160 ( .A(n116), .Y(N158) );
  NOR2X1M U161 ( .A(N159), .B(N158), .Y(N157) );
endmodule


module CLK_GATE ( CLK_EN, CLK, GATED_CLK );
  input CLK_EN, CLK;
  output GATED_CLK;


  TLATNCAX12M U0_TLATNCAX12M ( .E(CLK_EN), .CK(CLK), .ECK(GATED_CLK) );
endmodule


module SYS_TOP ( RST_N, UART_CLK, REF_CLK, UART_RX_IN, UART_TX_O, parity_error, 
        framing_error );
  input RST_N, UART_CLK, REF_CLK, UART_RX_IN;
  output UART_TX_O, parity_error, framing_error;
  wire   SYNC_RST_0, SYNC_RST_1, RX_OUT_V, RX_D_VLD, FIFO_WrInc, TX_CLK,
         FIFO_RINC, FIFO_EMPTY, FIFO_FULL, TX_BUSY, RX_CLK, ALU_OUT_Valid,
         RegFile_RdData_Valid, ClkGating_EN, ALU_EN, RegFile_WrEn,
         RegFile_RdEn, ALU_CLK, n1, n2, n3, n4, n5, n6, n7;
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

  RST_SYNC_NUM_STAGES2_0 RST_SYNC_U0 ( .rst(RST_N), .clk(REF_CLK), .sync_rst(
        SYNC_RST_0) );
  RST_SYNC_NUM_STAGES2_1 RST_SYNC_U1 ( .rst(RST_N), .clk(UART_CLK), .sync_rst(
        SYNC_RST_1) );
  DATA_SYNC_NUM_STAGES2_BUS_WIDTH8 DATA_SYNC_U0 ( .unsync_bus(RX_OUT_P), 
        .bus_enable(RX_OUT_V), .clk(REF_CLK), .rst(n6), .sync_bus(RX_P_Data), 
        .enable_pulse(RX_D_VLD) );
  FIFO_DATA_WIDTH8 FIFO_U0 ( .w_clk(REF_CLK), .w_rst_n(n6), .wr_data(
        FIFO_WrData), .w_inc(FIFO_WrInc), .r_clk(TX_CLK), .r_inc(FIFO_RINC), 
        .r_rst_n(n4), .rd_data(FIFO_RD_DATA), .empty(FIFO_EMPTY), .full(
        FIFO_FULL) );
  PULSE_GEN PULSE_GEN_U0 ( .clk(TX_CLK), .rst(n4), .lvl_sig(TX_BUSY), 
        .pulse_sig(FIFO_RINC) );
  Clk_Div_0 Clk_Div_U0 ( .i_ref_clk(UART_CLK), .i_rst_n(n4), .i_clk_en(1'b1), 
        .i_div_ratio(REG3), .o_div_clk(TX_CLK) );
  CLKDIV_MUX_WIDTH4 CLKDIV_MUX_U0 ( .IN(REG2[7:2]), .OUT(RX_CLK_div_ratio) );
  Clk_Div_1 Clk_Div_U1 ( .i_ref_clk(UART_CLK), .i_rst_n(n4), .i_clk_en(1'b1), 
        .i_div_ratio({1'b0, 1'b0, 1'b0, 1'b0, RX_CLK_div_ratio}), .o_div_clk(
        RX_CLK) );
  UART UART_U0 ( .RST(n4), .TX_CLK(TX_CLK), .RX_CLK(RX_CLK), .RX_IN_S(
        UART_RX_IN), .RX_OUT_P(RX_OUT_P), .RX_OUT_V(RX_OUT_V), .TX_IN_P(
        FIFO_RD_DATA), .TX_IN_V(n1), .TX_OUT_S(UART_TX_O), .TX_OUT_V(TX_BUSY), 
        .Prescale(REG2[7:2]), .parity_enable(REG2[0]), .parity_type(REG2[1]), 
        .parity_error(parity_error), .framing_error(framing_error) );
  SYS_CTRL SYS_CTRL_U0 ( .CLK(REF_CLK), .RST(n6), .ALU_OUT(ALU_OUT), 
        .ALU_OUT_Valid(ALU_OUT_Valid), .RX_P_Data(RX_P_Data), .RX_D_VLD(
        RX_D_VLD), .RegFile_RdData(RegFile_RdData), .RegFile_RdData_Valid(
        RegFile_RdData_Valid), .FIFO_FULL(FIFO_FULL), .ClkGating_EN(
        ClkGating_EN), .ALU_EN(ALU_EN), .ALU_FUN(ALU_FUN), .RegFile_Address(
        RegFile_Address), .RegFile_WrEn(RegFile_WrEn), .RegFile_RdEn(
        RegFile_RdEn), .RegFile_WrData(RegFile_WrData), .FIFO_WrData(
        FIFO_WrData), .FIFO_WrInc(FIFO_WrInc) );
  RegFile_WIDTH8_DEPTH16_ADDR4 RegFile_U0 ( .CLK(REF_CLK), .RST(n6), .WrEn(
        RegFile_WrEn), .RdEn(RegFile_RdEn), .Address({RegFile_Address[3:2], n3, 
        n2}), .WrData(RegFile_WrData), .RdData(RegFile_RdData), .RdData_VLD(
        RegFile_RdData_Valid), .REG0(REG0), .REG1(REG1), .REG2(REG2), .REG3(
        REG3) );
  ALU_OPER_WIDTH8_OUT_WIDTH16 ALU_U0 ( .A(REG0), .B(REG1), .EN(ALU_EN), 
        .ALU_FUN(ALU_FUN), .CLK(ALU_CLK), .RST(n6), .ALU_OUT(ALU_OUT), 
        .OUT_VALID(ALU_OUT_Valid) );
  CLK_GATE CLK_GATE_U0 ( .CLK_EN(ClkGating_EN), .CLK(REF_CLK), .GATED_CLK(
        ALU_CLK) );
  BUFX2M U4 ( .A(RegFile_Address[0]), .Y(n2) );
  BUFX2M U5 ( .A(RegFile_Address[1]), .Y(n3) );
  INVX2M U6 ( .A(FIFO_EMPTY), .Y(n1) );
  INVX4M U7 ( .A(n7), .Y(n6) );
  INVX2M U8 ( .A(SYNC_RST_0), .Y(n7) );
  INVX4M U9 ( .A(n5), .Y(n4) );
  INVX2M U10 ( .A(SYNC_RST_1), .Y(n5) );
endmodule

