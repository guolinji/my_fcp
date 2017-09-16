/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : L-2016.03-SP5-2
// Date      : Sat Sep 16 21:44:13 2017
/////////////////////////////////////////////////////////////


module fcp_logical_layer ( clk, rstn, is_support_12v, ping_from_master, 
        reset_from_master, afc_iden, crc_error, par_error, rx_data, 
        rx_data_valid, tx_done, pl_tx_en, pl_tx_type, pl_tx_afc, pl_tx_data, 
        out_volt );
  input [23:0] rx_data;
  output [15:0] pl_tx_data;
  output [1:0] out_volt;
  input clk, rstn, is_support_12v, ping_from_master, reset_from_master,
         afc_iden, crc_error, par_error, rx_data_valid, tx_done;
  output pl_tx_en, pl_tx_type, pl_tx_afc;
  wire   OUTPUT_CONTROL_0_, wr_en, N72, SSTAT_0_, rd_en, rx_data_valid_r,
         rx_data_valid_2r, N228, N229, N230, N231, N232, N233, N234, N235,
         N238, cmd_get_but_not_process, afc_pr, n179, n181, n182, n183, n184,
         n185, n186, n187, n188, n189, n190, n191, n192, n193, n194, n195,
         n196, n197, n198, n199, n200, n201, n202, n203, n204, n205, n206,
         n207, n208, n209, n210, n211, n212, n213, n214, n215, n216, n217,
         n218, n219, n220, n221, n222, n223, n224, n225, n226, n227, n228,
         n229, n231, n232, n233, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11,
         n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25,
         n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39,
         n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56,
         n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70,
         n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84,
         n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98,
         n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
         n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121,
         n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132,
         n133, n134, n135, n136, n137, n138, n139, n140, n141, n142, n143,
         n144, n145, n146, n147, n148, n149, n150, n151;
  wire   [7:0] VOUT_CONFIG;
  wire   [1:0] afc_cmd_cnt;
  wire   [6:1] VOUT_STATUS;
  wire   [1:0] DISCRETE_CAPABILITIES;
  wire   [7:0] addr;
  wire   [7:0] wr_data;
  wire   [3:1] RESP;
  wire   [7:0] data_for_rd_cmd;
  wire   [1:0] cur_st;

  dfntnq DISCRETE_CAPABILITIES_reg_1_ ( .d(is_support_12v), .cp(clk), .q(
        DISCRETE_CAPABILITIES[1]) );
  dfntnq DISCRETE_CAPABILITIES_reg_0_ ( .d(n233), .cp(clk), .q(
        DISCRETE_CAPABILITIES[0]) );
  dfctnq rd_en_reg ( .d(n220), .cp(clk), .cdn(rstn), .q(rd_en) );
  dfctnq addr_reg_7_ ( .d(n219), .cp(clk), .cdn(rstn), .q(addr[7]) );
  dfctnq addr_reg_6_ ( .d(n218), .cp(clk), .cdn(rstn), .q(addr[6]) );
  dfctnq addr_reg_5_ ( .d(n217), .cp(clk), .cdn(rstn), .q(addr[5]) );
  dfctnq addr_reg_4_ ( .d(n216), .cp(clk), .cdn(rstn), .q(addr[4]) );
  dfctnq addr_reg_3_ ( .d(n215), .cp(clk), .cdn(rstn), .q(addr[3]) );
  dfctnq addr_reg_2_ ( .d(n214), .cp(clk), .cdn(rstn), .q(addr[2]) );
  dfctnq addr_reg_1_ ( .d(n213), .cp(clk), .cdn(rstn), .q(addr[1]) );
  dfctnq addr_reg_0_ ( .d(n212), .cp(clk), .cdn(rstn), .q(addr[0]) );
  dfctnq wr_en_reg ( .d(n211), .cp(clk), .cdn(rstn), .q(wr_en) );
  dfctnq wr_data_reg_7_ ( .d(n210), .cp(clk), .cdn(rstn), .q(wr_data[7]) );
  dfctnq wr_data_reg_6_ ( .d(n209), .cp(clk), .cdn(rstn), .q(wr_data[6]) );
  dfctnq wr_data_reg_5_ ( .d(n208), .cp(clk), .cdn(rstn), .q(wr_data[5]) );
  dfctnq wr_data_reg_4_ ( .d(n207), .cp(clk), .cdn(rstn), .q(wr_data[4]) );
  dfctnq wr_data_reg_3_ ( .d(n206), .cp(clk), .cdn(rstn), .q(wr_data[3]) );
  dfctnq wr_data_reg_2_ ( .d(n205), .cp(clk), .cdn(rstn), .q(wr_data[2]) );
  dfctnq wr_data_reg_1_ ( .d(n204), .cp(clk), .cdn(rstn), .q(wr_data[1]) );
  dfctnq wr_data_reg_0_ ( .d(n203), .cp(clk), .cdn(rstn), .q(wr_data[0]) );
  dfctnq pl_tx_data_reg_11_ ( .d(n202), .cp(clk), .cdn(rstn), .q(
        pl_tx_data[11]) );
  dfctnq pl_tx_data_reg_9_ ( .d(n201), .cp(clk), .cdn(rstn), .q(pl_tx_data[9])
         );
  dfctnq pl_tx_data_reg_8_ ( .d(n200), .cp(clk), .cdn(rstn), .q(pl_tx_data[8])
         );
  dfctnq VOUT_CONFIG_reg_0_ ( .d(n199), .cp(clk), .cdn(rstn), .q(
        VOUT_CONFIG[0]) );
  dfctnq VOUT_CONFIG_reg_7_ ( .d(n198), .cp(clk), .cdn(rstn), .q(
        VOUT_CONFIG[7]) );
  dfctnq pl_tx_data_reg_7_ ( .d(n197), .cp(clk), .cdn(rstn), .q(pl_tx_data[7])
         );
  dfctnq VOUT_CONFIG_reg_6_ ( .d(n196), .cp(clk), .cdn(rstn), .q(
        VOUT_CONFIG[6]) );
  dfctnq VOUT_CONFIG_reg_3_ ( .d(n195), .cp(clk), .cdn(rstn), .q(
        VOUT_CONFIG[3]) );
  dfctnq VOUT_CONFIG_reg_2_ ( .d(n194), .cp(clk), .cdn(rstn), .q(
        VOUT_CONFIG[2]) );
  dfctnq pl_tx_data_reg_2_ ( .d(n193), .cp(clk), .cdn(rstn), .q(pl_tx_data[2])
         );
  dfctnq VOUT_STATUS_reg_6_ ( .d(n192), .cp(clk), .cdn(rstn), .q(
        VOUT_STATUS[6]) );
  dfctnq pl_tx_data_reg_6_ ( .d(n191), .cp(clk), .cdn(rstn), .q(pl_tx_data[6])
         );
  dfctnq pl_tx_data_reg_5_ ( .d(n190), .cp(clk), .cdn(rstn), .q(pl_tx_data[5])
         );
  dfctnq pl_tx_data_reg_4_ ( .d(n189), .cp(clk), .cdn(rstn), .q(pl_tx_data[4])
         );
  dfctnq VOUT_STATUS_reg_3_ ( .d(n188), .cp(clk), .cdn(rstn), .q(
        VOUT_STATUS[3]) );
  dfctnq pl_tx_data_reg_3_ ( .d(n187), .cp(clk), .cdn(rstn), .q(pl_tx_data[3])
         );
  dfctnq pl_tx_data_reg_1_ ( .d(n186), .cp(clk), .cdn(rstn), .q(pl_tx_data[1])
         );
  dfctnq pl_tx_data_reg_0_ ( .d(n185), .cp(clk), .cdn(rstn), .q(pl_tx_data[0])
         );
  dfctnq SSTAT_reg_0_ ( .d(n229), .cp(clk), .cdn(rstn), .q(SSTAT_0_) );
  dfctnq rx_data_valid_r_reg ( .d(n148), .cp(clk), .cdn(rstn), .q(
        rx_data_valid_r) );
  dfctnq rx_data_valid_2r_reg ( .d(rx_data_valid_r), .cp(clk), .cdn(rstn), .q(
        rx_data_valid_2r) );
  dfctnq RESP_reg_3_ ( .d(n228), .cp(clk), .cdn(rstn), .q(RESP[3]) );
  dfctnq RESP_reg_1_ ( .d(n227), .cp(clk), .cdn(rstn), .q(RESP[1]) );
  dfctnq cur_st_reg_0_ ( .d(n232), .cp(clk), .cdn(rstn), .q(cur_st[0]) );
  dfctnq OUTPUT_CONTROL_reg_0_ ( .d(N72), .cp(clk), .cdn(rstn), .q(
        OUTPUT_CONTROL_0_) );
  dfctnq cmd_get_but_not_process_reg ( .d(n226), .cp(clk), .cdn(rstn), .q(
        cmd_get_but_not_process) );
  dfctnq cur_st_reg_1_ ( .d(n231), .cp(clk), .cdn(rstn), .q(cur_st[1]) );
  dfctnq afc_pr_reg ( .d(n225), .cp(clk), .cdn(rstn), .q(afc_pr) );
  dfctnq afc_cmd_cnt_reg_0_ ( .d(n223), .cp(clk), .cdn(rstn), .q(
        afc_cmd_cnt[0]) );
  dfctnq afc_cmd_cnt_reg_1_ ( .d(n224), .cp(clk), .cdn(rstn), .q(
        afc_cmd_cnt[1]) );
  dfctnq out_volt_reg_0_ ( .d(n222), .cp(clk), .cdn(rstn), .q(out_volt[0]) );
  dfctnq out_volt_reg_1_ ( .d(n221), .cp(clk), .cdn(rstn), .q(out_volt[1]) );
  lantnq data_for_rd_cmd_reg_7_ ( .e(N238), .d(N235), .q(data_for_rd_cmd[7])
         );
  lantnq data_for_rd_cmd_reg_2_ ( .e(N238), .d(N230), .q(data_for_rd_cmd[2])
         );
  lantnq data_for_rd_cmd_reg_6_ ( .e(N238), .d(N234), .q(data_for_rd_cmd[6])
         );
  lantnq data_for_rd_cmd_reg_5_ ( .e(N238), .d(N233), .q(data_for_rd_cmd[5])
         );
  lantnq data_for_rd_cmd_reg_4_ ( .e(N238), .d(N232), .q(data_for_rd_cmd[4])
         );
  lantnq data_for_rd_cmd_reg_3_ ( .e(N238), .d(N231), .q(data_for_rd_cmd[3])
         );
  lantnq data_for_rd_cmd_reg_1_ ( .e(N238), .d(N229), .q(data_for_rd_cmd[1])
         );
  lantnq data_for_rd_cmd_reg_0_ ( .e(N238), .d(N228), .q(data_for_rd_cmd[0])
         );
  dfptnq VOUT_CONFIG_reg_5_ ( .d(n184), .cp(clk), .sdn(rstn), .q(
        VOUT_CONFIG[5]) );
  dfptnq VOUT_CONFIG_reg_4_ ( .d(n183), .cp(clk), .sdn(rstn), .q(
        VOUT_CONFIG[4]) );
  dfptnq VOUT_CONFIG_reg_1_ ( .d(n182), .cp(clk), .sdn(rstn), .q(
        VOUT_CONFIG[1]) );
  dfptnq VOUT_STATUS_reg_5_ ( .d(n181), .cp(clk), .sdn(rstn), .q(
        VOUT_STATUS[5]) );
  dfptnq VOUT_STATUS_reg_1_ ( .d(n179), .cp(clk), .sdn(rstn), .q(
        VOUT_STATUS[1]) );
  fn05d2 U3 ( .a1(n28), .b1(n117), .zn(n29) );
  ao08d2 U4 ( .a1(n85), .a2(n84), .a3(n83), .b(n86), .zn(N238) );
  in01d0 U5 ( .i(n121), .zn(n70) );
  nd02d0 U6 ( .a1(n121), .a2(n77), .zn(n88) );
  in01d0 U7 ( .i(n81), .zn(n65) );
  in01d0 U8 ( .i(n82), .zn(n83) );
  in01d0 U9 ( .i(n147), .zn(n144) );
  nd04d0 U10 ( .a1(n9), .a2(n8), .a3(n7), .a4(n84), .zn(N233) );
  in01d0 U11 ( .i(n14), .zn(n197) );
  in01d0 U12 ( .i(n34), .zn(n212) );
  ni01d1 U13 ( .i(rx_data_valid), .z(n148) );
  in01d0 U14 ( .i(reset_from_master), .zn(n1) );
  nd03d0 U15 ( .a1(n1), .a2(cmd_get_but_not_process), .a3(tx_done), .zn(n2) );
  in01d0 U16 ( .i(cur_st[1]), .zn(n54) );
  or02d0 U17 ( .a1(tx_done), .a2(reset_from_master), .z(n4) );
  in01d0 U18 ( .i(cur_st[0]), .zn(n3) );
  ao01d0 U19 ( .a1(n2), .a2(n54), .b1(n4), .b2(n3), .zn(n231) );
  nd02d0 U20 ( .a1(ping_from_master), .a2(n54), .zn(n57) );
  ao07d0 U21 ( .a1(n54), .a2(cur_st[0]), .a3(n4), .b1(n3), .b2(n57), .zn(n232)
         );
  fn05d0 U22 ( .a1(n231), .b1(n232), .zn(pl_tx_type) );
  in01d0 U23 ( .i(addr[3]), .zn(n92) );
  nd02d0 U24 ( .a1(n92), .a2(addr[5]), .zn(n98) );
  in01d0 U25 ( .i(n98), .zn(n97) );
  in01d0 U26 ( .i(addr[2]), .zn(n6) );
  nd03d0 U27 ( .a1(addr[4]), .a2(n97), .a3(n6), .zn(n68) );
  or02d0 U28 ( .a1(addr[1]), .a2(addr[0]), .z(n96) );
  nr03d0 U29 ( .a1(addr[4]), .a2(n96), .a3(n6), .zn(n5) );
  in01d0 U30 ( .i(addr[5]), .zn(n58) );
  nd03d0 U31 ( .a1(n5), .a2(n58), .a3(n92), .zn(n76) );
  oa14d0 U32 ( .a1(n68), .a2(n96), .b(n76), .z(n9) );
  nd03d2 U33 ( .a1(n5), .a2(addr[5]), .a3(addr[3]), .zn(n121) );
  in01d0 U34 ( .i(addr[4]), .zn(n72) );
  nd03d0 U35 ( .a1(n72), .a2(n6), .a3(n92), .zn(n61) );
  nr02d0 U36 ( .a1(addr[5]), .a2(n61), .zn(n89) );
  in01d0 U37 ( .i(addr[0]), .zn(n59) );
  nr02d0 U38 ( .a1(addr[1]), .a2(n59), .zn(n66) );
  ao01d0 U39 ( .a1(VOUT_CONFIG[5]), .a2(n70), .b1(n89), .b2(n66), .zn(n8) );
  nd03d0 U40 ( .a1(addr[5]), .a2(n72), .a3(n6), .zn(n79) );
  nr02d0 U41 ( .a1(n92), .a2(n79), .zn(n55) );
  nd02d0 U42 ( .a1(n55), .a2(n66), .zn(n78) );
  in01d0 U43 ( .i(n78), .zn(n74) );
  nd02d0 U44 ( .a1(n74), .a2(VOUT_STATUS[5]), .zn(n7) );
  nd02d0 U45 ( .a1(n59), .a2(addr[1]), .zn(n93) );
  in01d0 U46 ( .i(n93), .zn(n90) );
  nd03d0 U47 ( .a1(n90), .a2(n97), .a3(n6), .zn(n84) );
  in01d0 U48 ( .i(rx_data_valid_2r), .zn(n118) );
  nd02d0 U49 ( .a1(rd_en), .a2(rx_data_valid_2r), .zn(n119) );
  in01d0 U50 ( .i(n119), .zn(n18) );
  ao01d0 U51 ( .a1(n118), .a2(pl_tx_data[4]), .b1(data_for_rd_cmd[4]), .b2(n18), .zn(n10) );
  in01d0 U52 ( .i(n10), .zn(n189) );
  ao01d0 U53 ( .a1(n118), .a2(pl_tx_data[6]), .b1(data_for_rd_cmd[6]), .b2(n18), .zn(n11) );
  in01d0 U54 ( .i(n11), .zn(n191) );
  ao01d0 U55 ( .a1(n118), .a2(pl_tx_data[5]), .b1(data_for_rd_cmd[5]), .b2(n18), .zn(n12) );
  in01d0 U56 ( .i(n12), .zn(n190) );
  ao01d0 U57 ( .a1(n118), .a2(pl_tx_data[2]), .b1(data_for_rd_cmd[2]), .b2(n18), .zn(n13) );
  in01d0 U58 ( .i(n13), .zn(n193) );
  ao01d0 U59 ( .a1(n118), .a2(pl_tx_data[7]), .b1(data_for_rd_cmd[7]), .b2(n18), .zn(n14) );
  ao01d0 U60 ( .a1(data_for_rd_cmd[1]), .a2(n18), .b1(pl_tx_data[1]), .b2(n118), .zn(n15) );
  in01d0 U61 ( .i(rd_en), .zn(n137) );
  nd03d0 U62 ( .a1(RESP[1]), .a2(rx_data_valid_2r), .a3(n137), .zn(n16) );
  nd02d0 U63 ( .a1(n15), .a2(n16), .zn(n186) );
  ao01d0 U64 ( .a1(data_for_rd_cmd[0]), .a2(n18), .b1(pl_tx_data[0]), .b2(n118), .zn(n17) );
  nd02d0 U65 ( .a1(n17), .a2(n16), .zn(n185) );
  ao01d0 U66 ( .a1(RESP[3]), .a2(n18), .b1(pl_tx_data[11]), .b2(n118), .zn(n19) );
  in01d0 U67 ( .i(n19), .zn(n202) );
  in01d0 U68 ( .i(is_support_12v), .zn(n233) );
  in01d0 U69 ( .i(VOUT_CONFIG[5]), .zn(n140) );
  nr02d0 U70 ( .a1(VOUT_CONFIG[2]), .a2(VOUT_CONFIG[7]), .zn(n22) );
  in01d0 U71 ( .i(VOUT_CONFIG[4]), .zn(n142) );
  in01d0 U72 ( .i(VOUT_CONFIG[3]), .zn(n128) );
  in01d0 U73 ( .i(VOUT_CONFIG[6]), .zn(n126) );
  nr04d0 U74 ( .a1(n142), .a2(n128), .a3(n126), .a4(VOUT_CONFIG[0]), .zn(n20)
         );
  nd02d0 U75 ( .a1(n22), .a2(n20), .zn(n23) );
  nr04d0 U76 ( .a1(VOUT_CONFIG[1]), .a2(n140), .a3(n23), .a4(n233), .zn(n108)
         );
  nd02d0 U77 ( .a1(OUTPUT_CONTROL_0_), .a2(n108), .zn(n114) );
  in01d0 U78 ( .i(OUTPUT_CONTROL_0_), .zn(n135) );
  nr04d0 U79 ( .a1(VOUT_CONFIG[0]), .a2(VOUT_CONFIG[3]), .a3(VOUT_CONFIG[6]), 
        .a4(n142), .zn(n21) );
  nd04d0 U80 ( .a1(n22), .a2(VOUT_CONFIG[5]), .a3(VOUT_CONFIG[1]), .a4(n21), 
        .zn(n110) );
  nr02d0 U81 ( .a1(n135), .a2(n110), .zn(n134) );
  ao04d0 U82 ( .a1(VOUT_STATUS[1]), .a2(n114), .b(n134), .zn(n24) );
  in01d0 U83 ( .i(VOUT_CONFIG[1]), .zn(n145) );
  nr03d0 U84 ( .a1(VOUT_CONFIG[5]), .a2(n145), .a3(n23), .zn(n109) );
  nd02d0 U85 ( .a1(OUTPUT_CONTROL_0_), .a2(n109), .zn(n112) );
  nd02d0 U86 ( .a1(n24), .a2(n112), .zn(n179) );
  ao04d0 U87 ( .a1(VOUT_STATUS[5]), .a2(n112), .b(n134), .zn(n25) );
  nd02d0 U88 ( .a1(n114), .a2(n25), .zn(n181) );
  in01d0 U89 ( .i(n148), .zn(n117) );
  or02d0 U90 ( .a1(rx_data[18]), .a2(rx_data[22]), .z(n44) );
  in01d0 U91 ( .i(rx_data[21]), .zn(n26) );
  nd04d0 U92 ( .a1(rx_data[17]), .a2(rx_data[19]), .a3(rx_data[16]), .a4(n26), 
        .zn(n27) );
  nr04d0 U93 ( .a1(rx_data[20]), .a2(rx_data[23]), .a3(n44), .a4(n27), .zn(n28) );
  nr02d1 U94 ( .a1(n28), .a2(n117), .zn(n37) );
  ao06d0 U95 ( .a1(n117), .a2(addr[7]), .b1(rx_data[7]), .b2(n37), .c1(
        rx_data[15]), .c2(n29), .zn(n30) );
  in01d0 U96 ( .i(n30), .zn(n219) );
  ao06d0 U97 ( .a1(n117), .a2(addr[6]), .b1(n29), .b2(rx_data[14]), .c1(n37), 
        .c2(rx_data[6]), .zn(n31) );
  in01d0 U98 ( .i(n31), .zn(n218) );
  ao06d0 U99 ( .a1(n117), .a2(addr[3]), .b1(n29), .b2(rx_data[11]), .c1(n37), 
        .c2(rx_data[3]), .zn(n32) );
  in01d0 U100 ( .i(n32), .zn(n215) );
  ao06d0 U101 ( .a1(n117), .a2(addr[5]), .b1(n29), .b2(rx_data[13]), .c1(n37), 
        .c2(rx_data[5]), .zn(n33) );
  in01d0 U102 ( .i(n33), .zn(n217) );
  ao06d0 U103 ( .a1(n117), .a2(addr[0]), .b1(n29), .b2(rx_data[8]), .c1(n37), 
        .c2(rx_data[0]), .zn(n34) );
  ao06d0 U104 ( .a1(n117), .a2(addr[4]), .b1(n29), .b2(rx_data[12]), .c1(n37), 
        .c2(rx_data[4]), .zn(n35) );
  in01d0 U105 ( .i(n35), .zn(n216) );
  ao06d0 U106 ( .a1(n117), .a2(addr[2]), .b1(n29), .b2(rx_data[10]), .c1(n37), 
        .c2(rx_data[2]), .zn(n36) );
  in01d0 U107 ( .i(n36), .zn(n214) );
  ao06d0 U108 ( .a1(n117), .a2(addr[1]), .b1(n29), .b2(rx_data[9]), .c1(n37), 
        .c2(rx_data[1]), .zn(n38) );
  in01d0 U109 ( .i(n38), .zn(n213) );
  nd02d0 U110 ( .a1(pl_tx_type), .a2(n54), .zn(n56) );
  ao05d0 U111 ( .a1(cmd_get_but_not_process), .a2(n56), .b(n148), .c(afc_iden), 
        .zn(n39) );
  nr02d0 U112 ( .a1(reset_from_master), .a2(n39), .zn(n226) );
  or04d0 U113 ( .a1(rx_data[16]), .a2(rx_data[19]), .a3(rx_data[8]), .a4(n117), 
        .z(n46) );
  or04d0 U118 ( .a1(rx_data[17]), .a2(rx_data[21]), .a3(n44), .a4(n43), .z(n45) );
  oa01d0 U119 ( .a1(n148), .a2(n137), .b1(n46), .b2(n45), .zn(n220) );
  in01d0 U120 ( .i(VOUT_CONFIG[2]), .zn(n130) );
  oa01d0 U121 ( .a1(addr[4]), .a2(n84), .b1(n130), .b2(n121), .zn(N230) );
  in01d0 U122 ( .i(cmd_get_but_not_process), .zn(n47) );
  nd03d0 U123 ( .a1(n47), .a2(tx_done), .a3(afc_pr), .zn(n48) );
  in01d0 U124 ( .i(n48), .zn(n53) );
  in01d0 U125 ( .i(afc_cmd_cnt[0]), .zn(n49) );
  oa07d0 U126 ( .a1(n53), .a2(n148), .a3(n49), .b1(afc_cmd_cnt[0]), .b2(n48), 
        .zn(n223) );
  in01d0 U127 ( .i(afc_cmd_cnt[1]), .zn(n52) );
  nd02d0 U128 ( .a1(afc_cmd_cnt[1]), .a2(afc_cmd_cnt[0]), .zn(n50) );
  oa05d0 U129 ( .a1(afc_cmd_cnt[1]), .a2(afc_cmd_cnt[0]), .b(n53), .c(n50), 
        .zn(n51) );
  oa08d0 U130 ( .a1(n53), .a2(n148), .a3(n52), .b(n51), .zn(n224) );
  nr02d0 U131 ( .a1(addr[6]), .a2(addr[7]), .zn(n91) );
  nd04d0 U132 ( .a1(pl_tx_type), .a2(n91), .a3(wr_en), .a4(n54), .zn(n122) );
  in01d0 U133 ( .i(wr_data[0]), .zn(n123) );
  an02d0 U134 ( .a1(addr[1]), .a2(addr[0]), .z(n95) );
  nd02d0 U135 ( .a1(n95), .a2(n55), .zn(n77) );
  nr03d0 U136 ( .a1(n122), .a2(n123), .a3(n77), .zn(N72) );
  oa04d0 U137 ( .a1(cur_st[0]), .a2(n57), .b(n56), .zn(pl_tx_en) );
  an02d0 U138 ( .a1(pl_tx_type), .a2(afc_pr), .z(pl_tx_afc) );
  nr04d0 U139 ( .a1(addr[1]), .a2(n59), .a3(n58), .a4(n61), .zn(n82) );
  ao01d0 U140 ( .a1(VOUT_CONFIG[0]), .a2(n70), .b1(n82), .b2(
        DISCRETE_CAPABILITIES[0]), .zn(n60) );
  oa05d0 U141 ( .a1(n61), .a2(n96), .b(n60), .c(n76), .zn(n62) );
  ao08d0 U142 ( .a1(n89), .a2(n95), .a3(SSTAT_0_), .b(n62), .zn(n63) );
  oa04d0 U143 ( .a1(n135), .a2(n77), .b(n63), .zn(N228) );
  oa04d0 U144 ( .a1(addr[1]), .a2(n68), .b(n76), .zn(n81) );
  ao01d0 U145 ( .a1(n82), .a2(DISCRETE_CAPABILITIES[1]), .b1(n74), .b2(
        VOUT_STATUS[1]), .zn(n64) );
  oa05d0 U146 ( .a1(n145), .a2(n121), .b(n65), .c(n64), .zn(N229) );
  in01d0 U147 ( .i(n66), .zn(n67) );
  oa01d0 U148 ( .a1(n72), .a2(n84), .b1(n68), .b2(n67), .zn(n73) );
  ao04d0 U149 ( .a1(n74), .a2(VOUT_STATUS[3]), .b(n73), .zn(n69) );
  oa05d0 U150 ( .a1(n121), .a2(n128), .b(n69), .c(n76), .zn(N231) );
  ao05d0 U151 ( .a1(n70), .a2(VOUT_CONFIG[4]), .b(n74), .c(n81), .zn(n71) );
  oa04d0 U152 ( .a1(n72), .a2(n84), .b(n71), .zn(N232) );
  ao04d0 U153 ( .a1(n74), .a2(VOUT_STATUS[6]), .b(n73), .zn(n75) );
  oa04d0 U154 ( .a1(n126), .a2(n121), .b(n75), .zn(N234) );
  in01d0 U155 ( .i(VOUT_CONFIG[7]), .zn(n124) );
  oa04d0 U156 ( .a1(n121), .a2(n124), .b(n76), .zn(N235) );
  oa04d0 U157 ( .a1(n79), .a2(n96), .b(n78), .zn(n80) );
  nr04d0 U158 ( .a1(n89), .a2(n88), .a3(n81), .a4(n80), .zn(n85) );
  nd02d0 U159 ( .a1(n91), .a2(rd_en), .zn(n86) );
  in01d0 U160 ( .i(n86), .zn(n102) );
  an02d0 U161 ( .a1(n89), .a2(n95), .z(n87) );
  fn03d0 U162 ( .a1(n102), .a2(n87), .b1(SSTAT_0_), .b2(par_error), .zn(n229)
         );
  ao04d0 U163 ( .a1(n90), .a2(n89), .b(n88), .zn(n105) );
  nd02d0 U164 ( .a1(n91), .a2(wr_en), .zn(n104) );
  ao04d0 U165 ( .a1(addr[5]), .a2(n93), .b(n92), .zn(n94) );
  ao05d0 U166 ( .a1(n95), .a2(n97), .b(wr_en), .c(n94), .zn(n101) );
  oa04d0 U167 ( .a1(n97), .a2(n96), .b(addr[2]), .zn(n100) );
  ao07d0 U168 ( .a1(addr[1]), .a2(addr[4]), .a3(n233), .b1(n98), .b2(addr[4]), 
        .zn(n99) );
  nd04d0 U169 ( .a1(n102), .a2(n101), .a3(n100), .a4(n99), .zn(n103) );
  oa05d0 U170 ( .a1(n105), .a2(n104), .b(rx_data_valid_r), .c(n103), .zn(n106)
         );
  oa14d0 U171 ( .a1(rx_data_valid_r), .a2(RESP[3]), .b(n106), .z(n228) );
  in01d0 U172 ( .i(RESP[1]), .zn(n120) );
  oa04d0 U173 ( .a1(rx_data_valid_r), .a2(n120), .b(n106), .zn(n227) );
  oa04d0 U174 ( .a1(n231), .a2(n232), .b(afc_pr), .zn(n107) );
  fn01d0 U175 ( .a1(afc_iden), .b1(n107), .zn(n225) );
  nr02d0 U176 ( .a1(n109), .a2(n108), .zn(n136) );
  nd03d0 U177 ( .a1(afc_cmd_cnt[0]), .a2(afc_cmd_cnt[1]), .a3(n135), .zn(n111)
         );
  ao07d0 U178 ( .a1(n136), .a2(n111), .a3(n110), .b1(n135), .b2(n111), .zn(
        n116) );
  in01d0 U179 ( .i(out_volt[0]), .zn(n113) );
  oa05d0 U180 ( .a1(n116), .a2(n113), .b(n112), .c(n111), .zn(n222) );
  in01d0 U181 ( .i(out_volt[1]), .zn(n115) );
  oa04d0 U182 ( .a1(n116), .a2(n115), .b(n114), .zn(n221) );
  ao14d0 U183 ( .a1(n117), .a2(wr_en), .b(n29), .z(n211) );
  in01d0 U184 ( .i(wr_data[7]), .zn(n125) );
  fn04d0 U185 ( .a1(n148), .a2(n125), .b1(n29), .b2(rx_data[7]), .zn(n210) );
  in01d0 U186 ( .i(wr_data[6]), .zn(n127) );
  fn04d0 U187 ( .a1(n148), .a2(n127), .b1(n29), .b2(rx_data[6]), .zn(n209) );
  in01d0 U188 ( .i(wr_data[5]), .zn(n141) );
  fn04d0 U189 ( .a1(n148), .a2(n141), .b1(n29), .b2(rx_data[5]), .zn(n208) );
  in01d0 U190 ( .i(wr_data[4]), .zn(n143) );
  fn04d0 U191 ( .a1(n148), .a2(n143), .b1(n29), .b2(rx_data[4]), .zn(n207) );
  in01d0 U192 ( .i(wr_data[3]), .zn(n129) );
  fn04d0 U193 ( .a1(n148), .a2(n129), .b1(n29), .b2(rx_data[3]), .zn(n206) );
  in01d0 U194 ( .i(wr_data[2]), .zn(n131) );
  fn04d0 U195 ( .a1(n148), .a2(n131), .b1(n29), .b2(rx_data[2]), .zn(n205) );
  in01d0 U196 ( .i(wr_data[1]), .zn(n146) );
  fn04d0 U197 ( .a1(n148), .a2(n146), .b1(n29), .b2(rx_data[1]), .zn(n204) );
  fn04d0 U198 ( .a1(n148), .a2(n123), .b1(n29), .b2(rx_data[0]), .zn(n203) );
  fn04d0 U199 ( .a1(n120), .a2(n119), .b1(n118), .b2(pl_tx_data[9]), .zn(n201)
         );
  fn04d0 U200 ( .a1(n120), .a2(n119), .b1(n118), .b2(pl_tx_data[8]), .zn(n200)
         );
  nr02d2 U201 ( .a1(n122), .a2(n121), .zn(n147) );
  fn03d0 U202 ( .a1(n147), .a2(n123), .b1(VOUT_CONFIG[0]), .b2(n147), .zn(n199) );
  ao01d0 U203 ( .a1(n147), .a2(n125), .b1(n124), .b2(n144), .zn(n198) );
  ao01d0 U204 ( .a1(n147), .a2(n127), .b1(n126), .b2(n144), .zn(n196) );
  ao01d0 U205 ( .a1(n147), .a2(n129), .b1(n128), .b2(n144), .zn(n195) );
  ao01d0 U206 ( .a1(n147), .a2(n131), .b1(n130), .b2(n144), .zn(n194) );
  in01d0 U207 ( .i(VOUT_STATUS[6]), .zn(n132) );
  oa01d0 U208 ( .a1(n136), .a2(n135), .b1(n134), .b2(n132), .zn(n192) );
  in01d0 U209 ( .i(VOUT_STATUS[3]), .zn(n133) );
  oa01d0 U210 ( .a1(n136), .a2(n135), .b1(n134), .b2(n133), .zn(n188) );
  in01d0 U211 ( .i(pl_tx_data[3]), .zn(n139) );
  oa03d0 U212 ( .a1(rd_en), .a2(RESP[3]), .b1(n137), .b2(data_for_rd_cmd[3]), 
        .c(rx_data_valid_2r), .zn(n138) );
  oa04d0 U213 ( .a1(rx_data_valid_2r), .a2(n139), .b(n138), .zn(n187) );
  ao01d0 U214 ( .a1(n147), .a2(n141), .b1(n140), .b2(n144), .zn(n184) );
  ao01d0 U215 ( .a1(n147), .a2(n143), .b1(n142), .b2(n144), .zn(n183) );
  ao01d0 U216 ( .a1(n147), .a2(n146), .b1(n145), .b2(n144), .zn(n182) );
  nd03d0 U114 ( .a1(n151), .a2(rx_data[10]), .a3(n149), .zn(n43) );
  nr04d0 U115 ( .a1(rx_data[13]), .a2(rx_data[9]), .a3(rx_data[12]), .a4(n150), 
        .zn(n149) );
  ckinv0 U116 ( .i(rx_data[11]), .zn(n150) );
  nr04d0 U117 ( .a1(rx_data[14]), .a2(rx_data[23]), .a3(rx_data[15]), .a4(
        rx_data[20]), .zn(n151) );
endmodule


module fcp_crc_1 ( data_in, crc_en, crc_out, rst, clk );
  input [31:0] data_in;
  output [7:0] crc_out;
  input crc_en, rst, clk;
  wire   n49, n50, n51, n52, n53, n54, n55, n56, n1, n2, n3, n4, n5, n6, n7,
         n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21,
         n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35,
         n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46;

  dfntnq lfsr_q_reg_0_ ( .d(n56), .cp(clk), .q(crc_out[0]) );
  dfntnq lfsr_q_reg_3_ ( .d(n53), .cp(clk), .q(crc_out[3]) );
  dfntnq lfsr_q_reg_1_ ( .d(n55), .cp(clk), .q(crc_out[1]) );
  dfntnq lfsr_q_reg_7_ ( .d(n49), .cp(clk), .q(crc_out[7]) );
  dfntnq lfsr_q_reg_5_ ( .d(n51), .cp(clk), .q(crc_out[5]) );
  dfntnq lfsr_q_reg_6_ ( .d(n50), .cp(clk), .q(crc_out[6]) );
  dfntnq lfsr_q_reg_4_ ( .d(n52), .cp(clk), .q(crc_out[4]) );
  dfntnq lfsr_q_reg_2_ ( .d(n54), .cp(clk), .q(crc_out[2]) );
  fn01d0 U2 ( .a1(rst), .b1(crc_en), .zn(n46) );
  xo02d0 U3 ( .a1(data_in[22]), .a2(data_in[5]), .z(n4) );
  in01d0 U4 ( .i(crc_out[1]), .zn(n11) );
  xn02d0 U5 ( .a1(data_in[8]), .a2(n11), .zn(n24) );
  xo02d0 U6 ( .a1(n4), .a2(n24), .z(n18) );
  xo02d0 U7 ( .a1(data_in[21]), .a2(data_in[4]), .z(n8) );
  xn02d0 U8 ( .a1(data_in[20]), .a2(data_in[3]), .zn(n32) );
  xn02d0 U9 ( .a1(n8), .a2(n32), .zn(n3) );
  xo02d0 U10 ( .a1(data_in[19]), .a2(data_in[2]), .z(n34) );
  xo02d0 U11 ( .a1(n3), .a2(n34), .z(n40) );
  xn03d0 U12 ( .a1(n18), .a2(n40), .a3(data_in[16]), .zn(n2) );
  or02d0 U13 ( .a1(rst), .a2(crc_en), .z(n44) );
  in01d0 U14 ( .i(crc_out[7]), .zn(n1) );
  oa01d1 U15 ( .a1(n46), .a2(n2), .b1(n44), .b2(n1), .zn(n49) );
  xn02d0 U16 ( .a1(data_in[17]), .a2(data_in[0]), .zn(n30) );
  xn02d0 U17 ( .a1(n3), .a2(n30), .zn(n27) );
  xo02d0 U18 ( .a1(data_in[23]), .a2(data_in[6]), .z(n36) );
  xn02d0 U19 ( .a1(n4), .a2(n36), .zn(n15) );
  xn03d0 U20 ( .a1(crc_out[2]), .a2(data_in[9]), .a3(n15), .zn(n5) );
  xn02d0 U21 ( .a1(n27), .a2(n5), .zn(n7) );
  in01d0 U22 ( .i(crc_out[0]), .zn(n6) );
  oa01d0 U23 ( .a1(n46), .a2(n7), .b1(n44), .b2(n6), .zn(n56) );
  xo02d0 U24 ( .a1(data_in[18]), .a2(data_in[1]), .z(n42) );
  xn02d0 U25 ( .a1(crc_out[0]), .a2(data_in[7]), .zn(n39) );
  xn02d0 U26 ( .a1(n8), .a2(n39), .zn(n19) );
  xn02d0 U27 ( .a1(n42), .a2(n19), .zn(n9) );
  xn03d0 U28 ( .a1(data_in[10]), .a2(crc_out[3]), .a3(n9), .zn(n10) );
  xo02d0 U29 ( .a1(n10), .a2(n15), .z(n12) );
  oa01d1 U30 ( .a1(n46), .a2(n12), .b1(n44), .b2(n11), .zn(n55) );
  xn03d0 U31 ( .a1(n34), .a2(n24), .a3(n39), .zn(n13) );
  xn03d0 U32 ( .a1(crc_out[4]), .a2(data_in[11]), .a3(n13), .zn(n14) );
  xn02d0 U33 ( .a1(n15), .a2(n14), .zn(n17) );
  in01d0 U34 ( .i(crc_out[2]), .zn(n16) );
  oa01d1 U35 ( .a1(n46), .a2(n17), .b1(n16), .b2(n44), .zn(n54) );
  xn02d0 U36 ( .a1(n19), .a2(n18), .zn(n20) );
  xn03d0 U37 ( .a1(data_in[12]), .a2(crc_out[5]), .a3(n20), .zn(n21) );
  xo02d0 U38 ( .a1(n21), .a2(n30), .z(n23) );
  in01d0 U39 ( .i(crc_out[3]), .zn(n22) );
  oa01d1 U40 ( .a1(n46), .a2(n23), .b1(n44), .b2(n22), .zn(n53) );
  xn02d0 U41 ( .a1(n42), .a2(n24), .zn(n25) );
  xn03d0 U42 ( .a1(data_in[13]), .a2(crc_out[6]), .a3(n25), .zn(n26) );
  xn02d0 U43 ( .a1(n27), .a2(n26), .zn(n29) );
  in01d0 U44 ( .i(crc_out[4]), .zn(n28) );
  oa01d1 U45 ( .a1(n46), .a2(n29), .b1(n44), .b2(n28), .zn(n52) );
  xo02d0 U46 ( .a1(n30), .a2(n42), .z(n31) );
  xn03d0 U47 ( .a1(crc_out[7]), .a2(data_in[14]), .a3(n31), .zn(n33) );
  xn03d0 U48 ( .a1(n34), .a2(n33), .a3(n32), .zn(n35) );
  xn02d0 U49 ( .a1(n36), .a2(n35), .zn(n38) );
  in01d0 U50 ( .i(crc_out[5]), .zn(n37) );
  oa01d1 U51 ( .a1(n46), .a2(n38), .b1(n44), .b2(n37), .zn(n51) );
  xn03d0 U52 ( .a1(n40), .a2(data_in[15]), .a3(n39), .zn(n41) );
  xn02d0 U53 ( .a1(n42), .a2(n41), .zn(n45) );
  in01d0 U54 ( .i(crc_out[6]), .zn(n43) );
  oa01d1 U55 ( .a1(n46), .a2(n45), .b1(n44), .b2(n43), .zn(n50) );
endmodule


module fcp_rx_ctrl_UI_CYCLE160 ( clk, rstn, data, rx_own_bus, tune_up, 
        tune_cycle, ping_from_master, reset_from_master, crc_error, par_error, 
        rx_data, rx_data_valid, afc_iden );
  output [7:0] tune_cycle;
  output [23:0] rx_data;
  input clk, rstn, data, rx_own_bus;
  output tune_up, ping_from_master, reset_from_master, crc_error, par_error,
         rx_data_valid, afc_iden;
  wire   valid_data, quarter_pulse, rx_st, parity_pass, N341, rx_st_r,
         rx_end_r, crc_en, n357, n358, n359, n360, n361, n362, n363, n364,
         n365, n366, n367, n368, n369, n370, n371, n372, n373, n374, n375,
         n376, n377, n378, n379, n380, n381, n382, n383, n384, n385, n386,
         n387, n388, n389, n390, n391, n392, n393, n394, n395, n396, n397,
         n398, n399, n400, n401, n402, n403, n404, n405, n406, n407, n408,
         n409, n410, n411, n412, n413, n414, n415, n416, n417, n418, n419,
         n420, n421, n422, n423, n424, n425, n426, n427, n428, n429, n430,
         n431, n432, n433, n434, n435, n436, n437, n438, n439, n440, n441,
         n442, n443, n464, n465, n466, n467, n468, n469, n470, n471, n472,
         n473, n474, n475, n476, n477, n478, n479, n480, n481, n482, n483,
         n484, n485, n486, n487, n488, n489, n490, n491, n492, n493, n494,
         n495, n496, n497, n498, n499, n500, n501, n504, n505, n506, n507,
         n508, n509, n510, n511, n512, n513, n514, n515, n516, n517, n518,
         n519, n520, n521, n522, n523, n524, n525, n526, n527, n528, n529,
         n530, n531, n532, n533, n534, n535, n536, n1, n2, n3, n4, n5, n6, n7,
         n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21,
         n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35,
         n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49,
         n50, n51, n52, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65,
         n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79,
         n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93,
         n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116,
         n117, n118, n119, n120, n121, n122, n123, n124, n125, n126, n127,
         n128, n129, n130, n131, n132, n133, n134, n135, n136, n137, n138,
         n139, n140, n141, n142, n143, n144, n145, n146, n147, n148, n149,
         n150, n151, n152, n153, n154, n155, n156, n157, n158, n159, n160,
         n161, n162, n163, n164, n165, n166, n167, n168, n169, n170, n171,
         n172, n173, n174, n175, n176, n177, n178, n179, n180, n181, n182,
         n183, n184, n185, n186, n187, n188, n189, n190, n191, n192, n193,
         n194, n195, n196, n197, n198, n199, n200, n201, n202, n203, n204,
         n205, n206, n207, n208, n209, n210, n211, n212, n213, n214, n215,
         n216, n217, n218, n219, n220, n221, n222, n223, n224, n225, n226,
         n227, n228, n229, n230, n231, n232, n233, n234, n235, n236, n237,
         n238, n239, n240, n241, n242, n243, n244, n245, n246, n247, n248,
         n249, n250, n251, n252, n253, n254, n255, n256, n257, n258, n259,
         n260, n261, n262, n263, n264, n265, n266, n267, n268, n269, n270,
         n271, n272, n273, n274, n275, n276, n277, n278, n279, n280, n281,
         n282, n283, n284, n285, n286, n287, n288, n289, n290, n291, n292,
         n293, n294, n295, n296, n297, n298, n299, n300, n301, n302, n303,
         n304, n305, n306, n307, n308, n309, n310, n311, n312, n313, n314,
         n315, n316, n317, n318, n319, n320, n321, n322, n323, n324, n325,
         n326, n327, n328, n329, n330, n331, n332, n333, n334, n335, n336,
         n337, n338, n339, n340, n341, n342, n343, n344, n345, n346, n347,
         n348, n349, n350, n351, n352, n353, n354, n355, n356, n444, n445,
         n446, n447, n448, n449, n450, n451, n452, n453, n454, n455, n456,
         n457, n458, n459, n460, n461, n462, n463, n502, n503, n537, n538,
         n539, n540, n541, n542, n543, n544, n545, n546, n547, n548, n549,
         n550, n551, n552, n553, n554, n555, n556, n557, n558, n559, n560,
         n561, n562, n563, n564, n565, n566, n567, n568, n569, n570, n571,
         n572, n573, n574, n575, n576, n577, n578, n579, n580, n581, n582,
         n583, n584, n585, n586, n587, n588, n589, n590, n591, n592, n593,
         n594, n595, n596, n597, n598, n599, n600, n601, n602, n603, n604,
         n605, n606, n607, n608, n609, n610, n611, n612, n613, n614, n615,
         n616, n617, n618, n619, n620, n621, n622, n623, n624, n625, n626,
         n627, n628, n629, n630, n631, n632, n633, n634, n635, n636, n637,
         n638, n639, n640, n641, n642, n643, n644, n645, n646, n647, n648,
         n649, n650, n651, n652, n653, n654, n655, n656, n657, n658, n659,
         n660, n661, n662, n663, n664, n665, n666, n667, n668, n669, n670,
         n671, n672, n673, n674, n675, n676, n677, n678, n679, n680, n681,
         n682, n683, n684, n685, n686, n687, n688, n689, n690, n691, n692,
         n693, n694, n695, n696, n697, n698, n699, n700, n701, n702, n703,
         n704, n705, n706, n707, n708, n709, n710, n711, n712, n713, n714,
         n715, n716, n717, n718, n720, n721;
  wire   [2:0] data_r;
  wire   [31:0] dur_cnt;
  wire   [31:0] low_dur_cnt;
  wire   [31:0] clk_sync_cnt;
  wire   [31:0] cnt_for_sample;
  wire   [8:0] sample_data;
  wire   [3:0] sample_num;
  wire   [7:0] rx_data_with_crc;
  wire   [7:0] crc_data;

  fcp_crc_1 U_CRC ( .data_in({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        rx_data}), .crc_en(crc_en), .crc_out(crc_data), .rst(quarter_pulse), 
        .clk(clk) );
  dfctnq data_r_reg_0_ ( .d(valid_data), .cp(clk), .cdn(rstn), .q(data_r[0])
         );
  dfctnq data_r_reg_1_ ( .d(data_r[0]), .cp(clk), .cdn(rstn), .q(data_r[1]) );
  dfctnq data_r_reg_2_ ( .d(data_r[1]), .cp(clk), .cdn(rstn), .q(data_r[2]) );
  dfctnq dur_cnt_reg_0_ ( .d(n536), .cp(clk), .cdn(rstn), .q(dur_cnt[0]) );
  dfctnq dur_cnt_reg_31_ ( .d(n535), .cp(clk), .cdn(rstn), .q(dur_cnt[31]) );
  dfctnq dur_cnt_reg_1_ ( .d(n534), .cp(clk), .cdn(rstn), .q(dur_cnt[1]) );
  dfctnq dur_cnt_reg_2_ ( .d(n533), .cp(clk), .cdn(rstn), .q(dur_cnt[2]) );
  dfctnq dur_cnt_reg_3_ ( .d(n532), .cp(clk), .cdn(rstn), .q(dur_cnt[3]) );
  dfctnq dur_cnt_reg_4_ ( .d(n531), .cp(clk), .cdn(rstn), .q(dur_cnt[4]) );
  dfctnq dur_cnt_reg_5_ ( .d(n530), .cp(clk), .cdn(rstn), .q(dur_cnt[5]) );
  dfctnq dur_cnt_reg_6_ ( .d(n529), .cp(clk), .cdn(rstn), .q(dur_cnt[6]) );
  dfctnq dur_cnt_reg_7_ ( .d(n528), .cp(clk), .cdn(rstn), .q(dur_cnt[7]) );
  dfctnq dur_cnt_reg_8_ ( .d(n527), .cp(clk), .cdn(rstn), .q(dur_cnt[8]) );
  dfctnq dur_cnt_reg_9_ ( .d(n526), .cp(clk), .cdn(rstn), .q(dur_cnt[9]) );
  dfctnq dur_cnt_reg_10_ ( .d(n525), .cp(clk), .cdn(rstn), .q(dur_cnt[10]) );
  dfctnq dur_cnt_reg_11_ ( .d(n524), .cp(clk), .cdn(rstn), .q(dur_cnt[11]) );
  dfctnq dur_cnt_reg_12_ ( .d(n523), .cp(clk), .cdn(rstn), .q(dur_cnt[12]) );
  dfctnq dur_cnt_reg_13_ ( .d(n522), .cp(clk), .cdn(rstn), .q(dur_cnt[13]) );
  dfctnq dur_cnt_reg_14_ ( .d(n521), .cp(clk), .cdn(rstn), .q(dur_cnt[14]) );
  dfctnq dur_cnt_reg_15_ ( .d(n520), .cp(clk), .cdn(rstn), .q(dur_cnt[15]) );
  dfctnq dur_cnt_reg_16_ ( .d(n519), .cp(clk), .cdn(rstn), .q(dur_cnt[16]) );
  dfctnq dur_cnt_reg_17_ ( .d(n518), .cp(clk), .cdn(rstn), .q(dur_cnt[17]) );
  dfctnq dur_cnt_reg_18_ ( .d(n517), .cp(clk), .cdn(rstn), .q(dur_cnt[18]) );
  dfctnq dur_cnt_reg_19_ ( .d(n516), .cp(clk), .cdn(rstn), .q(dur_cnt[19]) );
  dfctnq dur_cnt_reg_20_ ( .d(n515), .cp(clk), .cdn(rstn), .q(dur_cnt[20]) );
  dfctnq dur_cnt_reg_21_ ( .d(n514), .cp(clk), .cdn(rstn), .q(dur_cnt[21]) );
  dfctnq dur_cnt_reg_22_ ( .d(n513), .cp(clk), .cdn(rstn), .q(dur_cnt[22]) );
  dfctnq dur_cnt_reg_23_ ( .d(n512), .cp(clk), .cdn(rstn), .q(dur_cnt[23]) );
  dfctnq dur_cnt_reg_24_ ( .d(n511), .cp(clk), .cdn(rstn), .q(dur_cnt[24]) );
  dfctnq dur_cnt_reg_25_ ( .d(n510), .cp(clk), .cdn(rstn), .q(dur_cnt[25]) );
  dfctnq dur_cnt_reg_26_ ( .d(n509), .cp(clk), .cdn(rstn), .q(dur_cnt[26]) );
  dfctnq dur_cnt_reg_27_ ( .d(n508), .cp(clk), .cdn(rstn), .q(dur_cnt[27]) );
  dfctnq dur_cnt_reg_28_ ( .d(n507), .cp(clk), .cdn(rstn), .q(dur_cnt[28]) );
  dfctnq dur_cnt_reg_29_ ( .d(n506), .cp(clk), .cdn(rstn), .q(dur_cnt[29]) );
  dfctnq dur_cnt_reg_30_ ( .d(n505), .cp(clk), .cdn(rstn), .q(dur_cnt[30]) );
  dfctnq tune_up_reg ( .d(n504), .cp(clk), .cdn(rstn), .q(tune_up) );
  dfctnq tune_cycle_reg_5_ ( .d(n501), .cp(clk), .cdn(rstn), .q(tune_cycle[5])
         );
  dfctnq tune_cycle_reg_4_ ( .d(n500), .cp(clk), .cdn(rstn), .q(tune_cycle[4])
         );
  dfctnq tune_cycle_reg_3_ ( .d(n499), .cp(clk), .cdn(rstn), .q(tune_cycle[3])
         );
  dfctnq tune_cycle_reg_2_ ( .d(n498), .cp(clk), .cdn(rstn), .q(tune_cycle[2])
         );
  dfctnq tune_cycle_reg_1_ ( .d(n497), .cp(clk), .cdn(rstn), .q(tune_cycle[1])
         );
  dfctnq tune_cycle_reg_0_ ( .d(n496), .cp(clk), .cdn(rstn), .q(tune_cycle[0])
         );
  dfctnq low_dur_cnt_reg_0_ ( .d(n495), .cp(clk), .cdn(rstn), .q(
        low_dur_cnt[0]) );
  dfctnq low_dur_cnt_reg_31_ ( .d(n494), .cp(clk), .cdn(rstn), .q(
        low_dur_cnt[31]) );
  dfctnq low_dur_cnt_reg_1_ ( .d(n493), .cp(clk), .cdn(rstn), .q(
        low_dur_cnt[1]) );
  dfctnq low_dur_cnt_reg_2_ ( .d(n492), .cp(clk), .cdn(rstn), .q(
        low_dur_cnt[2]) );
  dfctnq low_dur_cnt_reg_3_ ( .d(n491), .cp(clk), .cdn(rstn), .q(
        low_dur_cnt[3]) );
  dfctnq low_dur_cnt_reg_4_ ( .d(n490), .cp(clk), .cdn(rstn), .q(
        low_dur_cnt[4]) );
  dfctnq low_dur_cnt_reg_5_ ( .d(n489), .cp(clk), .cdn(rstn), .q(
        low_dur_cnt[5]) );
  dfctnq low_dur_cnt_reg_6_ ( .d(n488), .cp(clk), .cdn(rstn), .q(
        low_dur_cnt[6]) );
  dfctnq low_dur_cnt_reg_7_ ( .d(n487), .cp(clk), .cdn(rstn), .q(
        low_dur_cnt[7]) );
  dfctnq low_dur_cnt_reg_8_ ( .d(n486), .cp(clk), .cdn(rstn), .q(
        low_dur_cnt[8]) );
  dfctnq low_dur_cnt_reg_9_ ( .d(n485), .cp(clk), .cdn(rstn), .q(
        low_dur_cnt[9]) );
  dfctnq low_dur_cnt_reg_10_ ( .d(n484), .cp(clk), .cdn(rstn), .q(
        low_dur_cnt[10]) );
  dfctnq low_dur_cnt_reg_11_ ( .d(n483), .cp(clk), .cdn(rstn), .q(
        low_dur_cnt[11]) );
  dfctnq low_dur_cnt_reg_12_ ( .d(n482), .cp(clk), .cdn(rstn), .q(
        low_dur_cnt[12]) );
  dfctnq low_dur_cnt_reg_13_ ( .d(n481), .cp(clk), .cdn(rstn), .q(
        low_dur_cnt[13]) );
  dfctnq low_dur_cnt_reg_14_ ( .d(n480), .cp(clk), .cdn(rstn), .q(
        low_dur_cnt[14]) );
  dfctnq low_dur_cnt_reg_15_ ( .d(n479), .cp(clk), .cdn(rstn), .q(
        low_dur_cnt[15]) );
  dfctnq low_dur_cnt_reg_16_ ( .d(n478), .cp(clk), .cdn(rstn), .q(
        low_dur_cnt[16]) );
  dfctnq low_dur_cnt_reg_17_ ( .d(n477), .cp(clk), .cdn(rstn), .q(
        low_dur_cnt[17]) );
  dfctnq low_dur_cnt_reg_18_ ( .d(n476), .cp(clk), .cdn(rstn), .q(
        low_dur_cnt[18]) );
  dfctnq low_dur_cnt_reg_19_ ( .d(n475), .cp(clk), .cdn(rstn), .q(
        low_dur_cnt[19]) );
  dfctnq low_dur_cnt_reg_20_ ( .d(n474), .cp(clk), .cdn(rstn), .q(
        low_dur_cnt[20]) );
  dfctnq low_dur_cnt_reg_21_ ( .d(n473), .cp(clk), .cdn(rstn), .q(
        low_dur_cnt[21]) );
  dfctnq low_dur_cnt_reg_22_ ( .d(n472), .cp(clk), .cdn(rstn), .q(
        low_dur_cnt[22]) );
  dfctnq low_dur_cnt_reg_23_ ( .d(n471), .cp(clk), .cdn(rstn), .q(
        low_dur_cnt[23]) );
  dfctnq low_dur_cnt_reg_24_ ( .d(n470), .cp(clk), .cdn(rstn), .q(
        low_dur_cnt[24]) );
  dfctnq low_dur_cnt_reg_25_ ( .d(n469), .cp(clk), .cdn(rstn), .q(
        low_dur_cnt[25]) );
  dfctnq low_dur_cnt_reg_26_ ( .d(n468), .cp(clk), .cdn(rstn), .q(
        low_dur_cnt[26]) );
  dfctnq low_dur_cnt_reg_27_ ( .d(n467), .cp(clk), .cdn(rstn), .q(
        low_dur_cnt[27]) );
  dfctnq low_dur_cnt_reg_28_ ( .d(n466), .cp(clk), .cdn(rstn), .q(
        low_dur_cnt[28]) );
  dfctnq low_dur_cnt_reg_29_ ( .d(n465), .cp(clk), .cdn(rstn), .q(
        low_dur_cnt[29]) );
  dfctnq low_dur_cnt_reg_30_ ( .d(n464), .cp(clk), .cdn(rstn), .q(
        low_dur_cnt[30]) );
  dfctnq clk_sync_cnt_reg_7_ ( .d(n443), .cp(clk), .cdn(rstn), .q(
        clk_sync_cnt[7]) );
  dfctnq clk_sync_cnt_reg_6_ ( .d(n442), .cp(clk), .cdn(rstn), .q(
        clk_sync_cnt[6]) );
  dfctnq clk_sync_cnt_reg_5_ ( .d(n441), .cp(clk), .cdn(rstn), .q(
        clk_sync_cnt[5]) );
  dfctnq clk_sync_cnt_reg_4_ ( .d(n440), .cp(clk), .cdn(rstn), .q(
        clk_sync_cnt[4]) );
  dfctnq clk_sync_cnt_reg_3_ ( .d(n439), .cp(clk), .cdn(rstn), .q(
        clk_sync_cnt[3]) );
  dfctnq clk_sync_cnt_reg_2_ ( .d(n438), .cp(clk), .cdn(rstn), .q(
        clk_sync_cnt[2]) );
  dfctnq clk_sync_cnt_reg_1_ ( .d(n437), .cp(clk), .cdn(rstn), .q(
        clk_sync_cnt[1]) );
  dfctnq clk_sync_cnt_reg_0_ ( .d(n436), .cp(clk), .cdn(rstn), .q(
        clk_sync_cnt[0]) );
  dfctnq sample_num_reg_0_ ( .d(n402), .cp(clk), .cdn(rstn), .q(sample_num[0])
         );
  dfctnq sample_num_reg_1_ ( .d(n401), .cp(clk), .cdn(rstn), .q(sample_num[1])
         );
  dfctnq sample_num_reg_2_ ( .d(n400), .cp(clk), .cdn(rstn), .q(sample_num[2])
         );
  dfctnq sample_num_reg_3_ ( .d(n399), .cp(clk), .cdn(rstn), .q(sample_num[3])
         );
  dfctnq rx_st_reg ( .d(n435), .cp(clk), .cdn(rstn), .q(rx_st) );
  dfctnq cnt_for_sample_reg_31_ ( .d(n403), .cp(clk), .cdn(rstn), .q(
        cnt_for_sample[31]) );
  dfctnq cnt_for_sample_reg_1_ ( .d(n434), .cp(clk), .cdn(rstn), .q(
        cnt_for_sample[1]) );
  dfctnq cnt_for_sample_reg_2_ ( .d(n432), .cp(clk), .cdn(rstn), .q(
        cnt_for_sample[2]) );
  dfctnq cnt_for_sample_reg_3_ ( .d(n431), .cp(clk), .cdn(rstn), .q(
        cnt_for_sample[3]) );
  dfctnq cnt_for_sample_reg_4_ ( .d(n430), .cp(clk), .cdn(rstn), .q(
        cnt_for_sample[4]) );
  dfctnq cnt_for_sample_reg_5_ ( .d(n429), .cp(clk), .cdn(rstn), .q(
        cnt_for_sample[5]) );
  dfctnq cnt_for_sample_reg_6_ ( .d(n428), .cp(clk), .cdn(rstn), .q(
        cnt_for_sample[6]) );
  dfctnq cnt_for_sample_reg_7_ ( .d(n427), .cp(clk), .cdn(rstn), .q(
        cnt_for_sample[7]) );
  dfctnq cnt_for_sample_reg_8_ ( .d(n426), .cp(clk), .cdn(rstn), .q(
        cnt_for_sample[8]) );
  dfctnq cnt_for_sample_reg_9_ ( .d(n425), .cp(clk), .cdn(rstn), .q(
        cnt_for_sample[9]) );
  dfctnq cnt_for_sample_reg_10_ ( .d(n424), .cp(clk), .cdn(rstn), .q(
        cnt_for_sample[10]) );
  dfctnq cnt_for_sample_reg_11_ ( .d(n423), .cp(clk), .cdn(rstn), .q(
        cnt_for_sample[11]) );
  dfctnq cnt_for_sample_reg_12_ ( .d(n422), .cp(clk), .cdn(rstn), .q(
        cnt_for_sample[12]) );
  dfctnq cnt_for_sample_reg_13_ ( .d(n421), .cp(clk), .cdn(rstn), .q(
        cnt_for_sample[13]) );
  dfctnq cnt_for_sample_reg_14_ ( .d(n420), .cp(clk), .cdn(rstn), .q(
        cnt_for_sample[14]) );
  dfctnq cnt_for_sample_reg_15_ ( .d(n419), .cp(clk), .cdn(rstn), .q(
        cnt_for_sample[15]) );
  dfctnq cnt_for_sample_reg_16_ ( .d(n418), .cp(clk), .cdn(rstn), .q(
        cnt_for_sample[16]) );
  dfctnq cnt_for_sample_reg_17_ ( .d(n417), .cp(clk), .cdn(rstn), .q(
        cnt_for_sample[17]) );
  dfctnq cnt_for_sample_reg_18_ ( .d(n416), .cp(clk), .cdn(rstn), .q(
        cnt_for_sample[18]) );
  dfctnq cnt_for_sample_reg_19_ ( .d(n415), .cp(clk), .cdn(rstn), .q(
        cnt_for_sample[19]) );
  dfctnq cnt_for_sample_reg_20_ ( .d(n414), .cp(clk), .cdn(rstn), .q(
        cnt_for_sample[20]) );
  dfctnq cnt_for_sample_reg_21_ ( .d(n413), .cp(clk), .cdn(rstn), .q(
        cnt_for_sample[21]) );
  dfctnq cnt_for_sample_reg_22_ ( .d(n412), .cp(clk), .cdn(rstn), .q(
        cnt_for_sample[22]) );
  dfctnq cnt_for_sample_reg_23_ ( .d(n411), .cp(clk), .cdn(rstn), .q(
        cnt_for_sample[23]) );
  dfctnq cnt_for_sample_reg_24_ ( .d(n410), .cp(clk), .cdn(rstn), .q(
        cnt_for_sample[24]) );
  dfctnq cnt_for_sample_reg_25_ ( .d(n409), .cp(clk), .cdn(rstn), .q(
        cnt_for_sample[25]) );
  dfctnq cnt_for_sample_reg_26_ ( .d(n408), .cp(clk), .cdn(rstn), .q(
        cnt_for_sample[26]) );
  dfctnq cnt_for_sample_reg_27_ ( .d(n407), .cp(clk), .cdn(rstn), .q(
        cnt_for_sample[27]) );
  dfctnq cnt_for_sample_reg_28_ ( .d(n406), .cp(clk), .cdn(rstn), .q(
        cnt_for_sample[28]) );
  dfctnq cnt_for_sample_reg_29_ ( .d(n405), .cp(clk), .cdn(rstn), .q(
        cnt_for_sample[29]) );
  dfctnq cnt_for_sample_reg_30_ ( .d(n404), .cp(clk), .cdn(rstn), .q(
        cnt_for_sample[30]) );
  dfctnq rx_st_r_reg ( .d(rx_st), .cp(clk), .cdn(rstn), .q(rx_st_r) );
  dfctnq rx_data_with_crc_reg_1_ ( .d(n397), .cp(clk), .cdn(rstn), .q(
        rx_data_with_crc[1]) );
  dfctnq rx_data_with_crc_reg_0_ ( .d(n396), .cp(clk), .cdn(rstn), .q(
        rx_data_with_crc[0]) );
  dfctnq rx_data_with_crc_reg_2_ ( .d(n395), .cp(clk), .cdn(rstn), .q(
        rx_data_with_crc[2]) );
  dfctnq rx_data_with_crc_reg_3_ ( .d(n394), .cp(clk), .cdn(rstn), .q(
        rx_data_with_crc[3]) );
  dfctnq rx_data_with_crc_reg_4_ ( .d(n393), .cp(clk), .cdn(rstn), .q(
        rx_data_with_crc[4]) );
  dfctnq rx_data_with_crc_reg_5_ ( .d(n392), .cp(clk), .cdn(rstn), .q(
        rx_data_with_crc[5]) );
  dfctnq rx_data_with_crc_reg_6_ ( .d(n391), .cp(clk), .cdn(rstn), .q(
        rx_data_with_crc[6]) );
  dfctnq rx_data_with_crc_reg_7_ ( .d(n390), .cp(clk), .cdn(rstn), .q(
        rx_data_with_crc[7]) );
  dfctnq rx_data_with_crc_reg_8_ ( .d(n389), .cp(clk), .cdn(rstn), .q(
        rx_data[0]) );
  dfctnq rx_data_with_crc_reg_9_ ( .d(n388), .cp(clk), .cdn(rstn), .q(
        rx_data[1]) );
  dfctnq rx_data_with_crc_reg_10_ ( .d(n387), .cp(clk), .cdn(rstn), .q(
        rx_data[2]) );
  dfctnq rx_data_with_crc_reg_11_ ( .d(n386), .cp(clk), .cdn(rstn), .q(
        rx_data[3]) );
  dfctnq rx_data_with_crc_reg_12_ ( .d(n385), .cp(clk), .cdn(rstn), .q(
        rx_data[4]) );
  dfctnq rx_data_with_crc_reg_13_ ( .d(n384), .cp(clk), .cdn(rstn), .q(
        rx_data[5]) );
  dfctnq rx_data_with_crc_reg_14_ ( .d(n383), .cp(clk), .cdn(rstn), .q(
        rx_data[6]) );
  dfctnq rx_data_with_crc_reg_15_ ( .d(n382), .cp(clk), .cdn(rstn), .q(
        rx_data[7]) );
  dfctnq rx_data_with_crc_reg_16_ ( .d(n381), .cp(clk), .cdn(rstn), .q(
        rx_data[8]) );
  dfctnq rx_data_with_crc_reg_17_ ( .d(n380), .cp(clk), .cdn(rstn), .q(
        rx_data[9]) );
  dfctnq rx_data_with_crc_reg_18_ ( .d(n379), .cp(clk), .cdn(rstn), .q(
        rx_data[10]) );
  dfctnq rx_data_with_crc_reg_19_ ( .d(n378), .cp(clk), .cdn(rstn), .q(
        rx_data[11]) );
  dfctnq rx_data_with_crc_reg_20_ ( .d(n377), .cp(clk), .cdn(rstn), .q(
        rx_data[12]) );
  dfctnq rx_data_with_crc_reg_21_ ( .d(n376), .cp(clk), .cdn(rstn), .q(
        rx_data[13]) );
  dfctnq rx_data_with_crc_reg_22_ ( .d(n375), .cp(clk), .cdn(rstn), .q(
        rx_data[14]) );
  dfctnq rx_data_with_crc_reg_23_ ( .d(n374), .cp(clk), .cdn(rstn), .q(
        rx_data[15]) );
  dfctnq rx_data_with_crc_reg_24_ ( .d(n373), .cp(clk), .cdn(rstn), .q(
        rx_data[16]) );
  dfctnq rx_data_with_crc_reg_25_ ( .d(n372), .cp(clk), .cdn(rstn), .q(
        rx_data[17]) );
  dfctnq rx_data_with_crc_reg_26_ ( .d(n371), .cp(clk), .cdn(rstn), .q(
        rx_data[18]) );
  dfctnq rx_data_with_crc_reg_27_ ( .d(n370), .cp(clk), .cdn(rstn), .q(
        rx_data[19]) );
  dfctnq rx_data_with_crc_reg_28_ ( .d(n369), .cp(clk), .cdn(rstn), .q(
        rx_data[20]) );
  dfctnq rx_data_with_crc_reg_29_ ( .d(n368), .cp(clk), .cdn(rstn), .q(
        rx_data[21]) );
  dfctnq rx_data_with_crc_reg_30_ ( .d(n367), .cp(clk), .cdn(rstn), .q(
        rx_data[22]) );
  dfctnq rx_data_with_crc_reg_31_ ( .d(n366), .cp(clk), .cdn(rstn), .q(
        rx_data[23]) );
  dfctnq afc_iden_reg ( .d(N341), .cp(clk), .cdn(rstn), .q(afc_iden) );
  dfctnq rx_end_r_reg ( .d(crc_en), .cp(clk), .cdn(rstn), .q(rx_end_r) );
  dfctnq sample_data_reg_0_ ( .d(n365), .cp(clk), .cdn(rstn), .q(
        sample_data[0]) );
  dfctnq sample_data_reg_1_ ( .d(n364), .cp(clk), .cdn(rstn), .q(
        sample_data[1]) );
  dfctnq sample_data_reg_2_ ( .d(n363), .cp(clk), .cdn(rstn), .q(
        sample_data[2]) );
  dfctnq sample_data_reg_3_ ( .d(n362), .cp(clk), .cdn(rstn), .q(
        sample_data[3]) );
  dfctnq sample_data_reg_4_ ( .d(n361), .cp(clk), .cdn(rstn), .q(
        sample_data[4]) );
  dfctnq sample_data_reg_5_ ( .d(n360), .cp(clk), .cdn(rstn), .q(
        sample_data[5]) );
  dfctnq sample_data_reg_6_ ( .d(n359), .cp(clk), .cdn(rstn), .q(
        sample_data[6]) );
  dfctnq sample_data_reg_7_ ( .d(n358), .cp(clk), .cdn(rstn), .q(
        sample_data[7]) );
  dfctnq sample_data_reg_8_ ( .d(n357), .cp(clk), .cdn(rstn), .q(
        sample_data[8]) );
  dfptnq cnt_for_sample_reg_0_ ( .d(n433), .cp(clk), .sdn(rstn), .q(
        cnt_for_sample[0]) );
  dfptnq parity_pass_reg ( .d(n398), .cp(clk), .sdn(rstn), .q(parity_pass) );
  in01d3 U4 ( .i(n630), .zn(n632) );
  in01d0 U5 ( .i(n101), .zn(n90) );
  in01d0 U6 ( .i(n96), .zn(n98) );
  nr02d0 U7 ( .a1(n78), .a2(n77), .zn(n79) );
  nd04d0 U8 ( .a1(n105), .a2(n104), .a3(n103), .a4(n102), .zn(n106) );
  nd02d0 U10 ( .a1(n617), .a2(n650), .zn(n614) );
  nr02d0 U11 ( .a1(n544), .a2(n543), .zn(n554) );
  nr02d0 U13 ( .a1(n140), .a2(n142), .zn(n132) );
  nr02d0 U14 ( .a1(n558), .a2(n557), .zn(n571) );
  in01d0 U15 ( .i(n554), .zn(n547) );
  in01d0 U16 ( .i(n353), .zn(n346) );
  in01d0 U17 ( .i(n194), .zn(n202) );
  in01d0 U18 ( .i(n575), .zn(n564) );
  in01d0 U19 ( .i(n458), .zn(n450) );
  in01d0 U20 ( .i(n305), .zn(n297) );
  in01d0 U21 ( .i(n264), .zn(n256) );
  in01d0 U22 ( .i(n129), .zn(n121) );
  in01d0 U23 ( .i(n119), .zn(n118) );
  in01d0 U24 ( .i(n548), .zn(n538) );
  in01d0 U25 ( .i(n347), .zn(n338) );
  in01d0 U26 ( .i(n282), .zn(n270) );
  in01d0 U27 ( .i(n206), .zn(n183) );
  nd02d0 U28 ( .a1(n604), .a2(n586), .zn(n589) );
  in01d0 U29 ( .i(dur_cnt[5]), .zn(n652) );
  in01d0 U30 ( .i(dur_cnt[3]), .zn(n586) );
  in01d0 U31 ( .i(dur_cnt[2]), .zn(n243) );
  nd02d0 U32 ( .a1(n586), .a2(n243), .zn(n25) );
  in01d0 U33 ( .i(dur_cnt[4]), .zn(n655) );
  nr02d0 U34 ( .a1(n586), .a2(n655), .zn(n181) );
  oa05d0 U35 ( .a1(dur_cnt[1]), .a2(dur_cnt[0]), .b(dur_cnt[2]), .c(n181), 
        .zn(n1) );
  ao07d0 U36 ( .a1(dur_cnt[4]), .a2(n652), .a3(n25), .b1(dur_cnt[5]), .b2(n1), 
        .zn(n8) );
  or04d0 U37 ( .a1(dur_cnt[15]), .a2(dur_cnt[13]), .a3(dur_cnt[14]), .a4(
        dur_cnt[12]), .z(n7) );
  or04d0 U38 ( .a1(dur_cnt[31]), .a2(dur_cnt[30]), .a3(dur_cnt[6]), .a4(
        dur_cnt[18]), .z(n6) );
  in01d0 U39 ( .i(data_r[1]), .zn(n707) );
  nd02d0 U40 ( .a1(data_r[2]), .a2(n707), .zn(n29) );
  in01d0 U41 ( .i(n29), .zn(n64) );
  nr02d0 U42 ( .a1(dur_cnt[17]), .a2(dur_cnt[16]), .zn(n20) );
  nr03d0 U43 ( .a1(dur_cnt[9]), .a2(dur_cnt[11]), .a3(dur_cnt[10]), .zn(n58)
         );
  or04d0 U44 ( .a1(dur_cnt[24]), .a2(dur_cnt[23]), .a3(dur_cnt[22]), .a4(
        dur_cnt[20]), .z(n22) );
  nr03d0 U45 ( .a1(dur_cnt[26]), .a2(dur_cnt[29]), .a3(dur_cnt[28]), .zn(n3)
         );
  nr04d0 U46 ( .a1(dur_cnt[27]), .a2(dur_cnt[25]), .a3(dur_cnt[21]), .a4(
        dur_cnt[19]), .zn(n2) );
  nd02d0 U47 ( .a1(n3), .a2(n2), .zn(n21) );
  nr04d0 U48 ( .a1(dur_cnt[7]), .a2(dur_cnt[8]), .a3(n22), .a4(n21), .zn(n4)
         );
  nd04d0 U49 ( .a1(n64), .a2(n20), .a3(n58), .a4(n4), .zn(n5) );
  nr04d2 U50 ( .a1(n8), .a2(n7), .a3(n6), .a4(n5), .zn(quarter_pulse) );
  nd03d0 U51 ( .a1(quarter_pulse), .a2(sample_num[0]), .a3(sample_num[3]), 
        .zn(n9) );
  nr03d0 U52 ( .a1(sample_num[2]), .a2(sample_num[1]), .a3(n9), .zn(n669) );
  in01d0 U53 ( .i(n669), .zn(n666) );
  nr02d0 U54 ( .a1(parity_pass), .a2(n666), .zn(par_error) );
  in01d0 U55 ( .i(rx_data_with_crc[5]), .zn(n676) );
  in01d0 U56 ( .i(rx_data_with_crc[2]), .zn(n673) );
  ao01d0 U57 ( .a1(n676), .a2(crc_data[5]), .b1(n673), .b2(crc_data[2]), .zn(
        n10) );
  oa03d0 U58 ( .a1(n676), .a2(crc_data[5]), .b1(n673), .b2(crc_data[2]), .c(
        n10), .zn(n19) );
  in01d0 U59 ( .i(rx_data_with_crc[4]), .zn(n675) );
  in01d0 U60 ( .i(rx_data_with_crc[1]), .zn(n672) );
  ao01d0 U61 ( .a1(n675), .a2(crc_data[4]), .b1(n672), .b2(crc_data[1]), .zn(
        n11) );
  oa03d0 U62 ( .a1(n675), .a2(crc_data[4]), .b1(n672), .b2(crc_data[1]), .c(
        n11), .zn(n18) );
  in01d0 U63 ( .i(rx_data_with_crc[0]), .zn(n671) );
  in01d0 U64 ( .i(rx_data_with_crc[7]), .zn(n678) );
  oa05d0 U65 ( .a1(n678), .a2(crc_data[7]), .b(rx_end_r), .c(parity_pass), 
        .zn(n12) );
  ao04d0 U66 ( .a1(n678), .a2(crc_data[7]), .b(n12), .zn(n16) );
  in01d0 U67 ( .i(rx_data_with_crc[6]), .zn(n677) );
  in01d0 U68 ( .i(rx_data_with_crc[3]), .zn(n674) );
  ao01d0 U69 ( .a1(n677), .a2(crc_data[6]), .b1(n674), .b2(crc_data[3]), .zn(
        n13) );
  oa03d0 U70 ( .a1(n677), .a2(crc_data[6]), .b1(n674), .b2(crc_data[3]), .c(
        n13), .zn(n14) );
  ao04d0 U71 ( .a1(crc_data[0]), .a2(n671), .b(n14), .zn(n15) );
  oa05d0 U72 ( .a1(crc_data[0]), .a2(n671), .b(n16), .c(n15), .zn(n17) );
  nr03d0 U73 ( .a1(n19), .a2(n18), .a3(n17), .zn(rx_data_valid) );
  nr02d0 U74 ( .a1(dur_cnt[13]), .a2(dur_cnt[12]), .zn(n31) );
  nd02d0 U75 ( .a1(dur_cnt[11]), .a2(dur_cnt[10]), .zn(n32) );
  in01d0 U76 ( .i(dur_cnt[14]), .zn(n247) );
  ao04d0 U77 ( .a1(n31), .a2(n32), .b(n247), .zn(n30) );
  in01d0 U78 ( .i(dur_cnt[13]), .zn(n182) );
  in01d0 U79 ( .i(dur_cnt[12]), .zn(n210) );
  nr03d0 U80 ( .a1(n58), .a2(n182), .a3(n210), .zn(n27) );
  in01d0 U81 ( .i(n20), .zn(n24) );
  or04d0 U82 ( .a1(dur_cnt[31]), .a2(dur_cnt[30]), .a3(n22), .a4(n21), .z(n23)
         );
  nr03d0 U83 ( .a1(dur_cnt[18]), .a2(n24), .a3(n23), .zn(n62) );
  in01d0 U84 ( .i(dur_cnt[15]), .zn(n248) );
  nd03d0 U85 ( .a1(n62), .a2(n248), .a3(n247), .zn(n35) );
  nr03d0 U86 ( .a1(dur_cnt[1]), .a2(dur_cnt[0]), .a3(n25), .zn(n625) );
  nd02d0 U87 ( .a1(n625), .a2(n655), .zn(n621) );
  nr02d0 U88 ( .a1(dur_cnt[5]), .a2(n621), .zn(n617) );
  in01d0 U89 ( .i(dur_cnt[6]), .zn(n650) );
  nr02d0 U90 ( .a1(dur_cnt[7]), .a2(n614), .zn(n611) );
  in01d0 U91 ( .i(dur_cnt[11]), .zn(n641) );
  in01d0 U92 ( .i(dur_cnt[9]), .zn(n645) );
  nd02d0 U93 ( .a1(dur_cnt[14]), .a2(dur_cnt[8]), .zn(n60) );
  or04d0 U94 ( .a1(n611), .a2(n641), .a3(n645), .a4(n60), .z(n26) );
  oa05d0 U95 ( .a1(n27), .a2(n35), .b(n62), .c(n26), .zn(n28) );
  nr04d0 U96 ( .a1(n30), .a2(dur_cnt[15]), .a3(n29), .a4(n28), .zn(
        reset_from_master) );
  nd04d0 U97 ( .a1(dur_cnt[9]), .a2(dur_cnt[10]), .a3(dur_cnt[8]), .a4(
        dur_cnt[7]), .zn(n36) );
  ao05d0 U98 ( .a1(dur_cnt[7]), .a2(n614), .b(dur_cnt[9]), .c(dur_cnt[8]), 
        .zn(n33) );
  oa05d0 U99 ( .a1(n33), .a2(n32), .b(n64), .c(n31), .zn(n34) );
  ao05d0 U100 ( .a1(n641), .a2(n36), .b(n35), .c(n34), .zn(n37) );
  in01d1 U101 ( .i(n37), .zn(n653) );
  in01d2 U102 ( .i(n653), .zn(ping_from_master) );
  in01d2 U103 ( .i(rx_st), .zn(n670) );
  an02d0 U104 ( .a1(rx_st_r), .a2(n670), .z(crc_en) );
  in01d0 U105 ( .i(rx_data[10]), .zn(n692) );
  in01d0 U106 ( .i(rx_data[11]), .zn(n694) );
  in01d0 U107 ( .i(rx_data[18]), .zn(n691) );
  in01d0 U108 ( .i(rx_data[19]), .zn(n693) );
  nd04d0 U109 ( .a1(n692), .a2(n694), .a3(n691), .a4(n693), .zn(n47) );
  in01d0 U110 ( .i(rx_data[12]), .zn(n697) );
  in01d0 U111 ( .i(rx_data[13]), .zn(n699) );
  in01d0 U112 ( .i(rx_data[20]), .zn(n696) );
  in01d0 U113 ( .i(rx_data[21]), .zn(n698) );
  nd04d0 U114 ( .a1(n697), .a2(n699), .a3(n696), .a4(n698), .zn(n46) );
  in01d0 U115 ( .i(rx_data[14]), .zn(n702) );
  in01d0 U116 ( .i(rx_data[15]), .zn(n705) );
  in01d0 U117 ( .i(rx_data[22]), .zn(n700) );
  in01d0 U118 ( .i(rx_data[23]), .zn(n703) );
  nd04d0 U119 ( .a1(n702), .a2(n705), .a3(n700), .a4(n703), .zn(n39) );
  nd04d0 U120 ( .a1(rx_data_with_crc[1]), .a2(parity_pass), .a3(crc_en), .a4(
        n671), .zn(n38) );
  or04d0 U121 ( .a1(rx_data_with_crc[3]), .a2(n673), .a3(n39), .a4(n38), .z(
        n45) );
  nr04d0 U122 ( .a1(rx_data[4]), .a2(rx_data[5]), .a3(rx_data[6]), .a4(
        rx_data[7]), .zn(n43) );
  nr04d0 U123 ( .a1(rx_data[8]), .a2(rx_data[9]), .a3(rx_data[16]), .a4(
        rx_data[17]), .zn(n42) );
  nr04d0 U124 ( .a1(rx_data_with_crc[4]), .a2(rx_data_with_crc[5]), .a3(
        rx_data_with_crc[7]), .a4(n677), .zn(n41) );
  nr04d0 U125 ( .a1(rx_data[0]), .a2(rx_data[1]), .a3(rx_data[2]), .a4(
        rx_data[3]), .zn(n40) );
  nd04d0 U126 ( .a1(n43), .a2(n42), .a3(n41), .a4(n40), .zn(n44) );
  nr04d0 U127 ( .a1(n47), .a2(n46), .a3(n45), .a4(n44), .zn(N341) );
  or04d0 U128 ( .a1(low_dur_cnt[31]), .a2(low_dur_cnt[30]), .a3(
        low_dur_cnt[10]), .a4(low_dur_cnt[9]), .z(n161) );
  nd04d0 U129 ( .a1(low_dur_cnt[5]), .a2(low_dur_cnt[2]), .a3(low_dur_cnt[3]), 
        .a4(low_dur_cnt[4]), .zn(n162) );
  nr04d0 U130 ( .a1(low_dur_cnt[1]), .a2(low_dur_cnt[0]), .a3(n161), .a4(n162), 
        .zn(n55) );
  nr04d0 U131 ( .a1(low_dur_cnt[22]), .a2(low_dur_cnt[26]), .a3(
        low_dur_cnt[25]), .a4(low_dur_cnt[19]), .zn(n50) );
  nr04d0 U132 ( .a1(low_dur_cnt[21]), .a2(low_dur_cnt[20]), .a3(
        low_dur_cnt[16]), .a4(low_dur_cnt[18]), .zn(n49) );
  nr04d0 U133 ( .a1(low_dur_cnt[17]), .a2(low_dur_cnt[13]), .a3(
        low_dur_cnt[15]), .a4(low_dur_cnt[14]), .zn(n48) );
  or04d0 U134 ( .a1(low_dur_cnt[29]), .a2(low_dur_cnt[8]), .a3(low_dur_cnt[28]), .a4(low_dur_cnt[7]), .z(n52) );
  or04d0 U135 ( .a1(low_dur_cnt[27]), .a2(low_dur_cnt[24]), .a3(
        low_dur_cnt[12]), .a4(low_dur_cnt[11]), .z(n51) );
  ao04d0 U138 ( .a1(n55), .a2(n168), .b(data_r[1]), .zn(n56) );
  ckbuf2 U139 ( .i(n56), .z(n630) );
  nr02d0 U140 ( .a1(data_r[2]), .a2(n707), .zn(n167) );
  nr02d2 U141 ( .a1(n630), .a2(n167), .zn(n629) );
  in01d0 U142 ( .i(n629), .zn(n628) );
  oa04d0 U143 ( .a1(low_dur_cnt[0]), .a2(n632), .b(n628), .zn(n143) );
  nr02d0 U144 ( .a1(low_dur_cnt[1]), .a2(n632), .zn(n144) );
  ao01d0 U145 ( .a1(low_dur_cnt[1]), .a2(n143), .b1(low_dur_cnt[0]), .b2(n144), 
        .zn(n57) );
  in01d0 U146 ( .i(n57), .zn(n493) );
  in01d0 U147 ( .i(dur_cnt[7]), .zn(n649) );
  nd04d0 U148 ( .a1(dur_cnt[6]), .a2(n58), .a3(n248), .a4(n649), .zn(n59) );
  nr04d0 U149 ( .a1(dur_cnt[13]), .a2(n210), .a3(n60), .a4(n59), .zn(n61) );
  ao08d0 U150 ( .a1(n617), .a2(n62), .a3(n61), .b(n707), .zn(n63) );
  ckbuf2 U151 ( .i(n63), .z(n604) );
  in01d2 U152 ( .i(n604), .zn(n597) );
  nr02d2 U153 ( .a1(n64), .a2(n604), .zn(n601) );
  in01d0 U154 ( .i(n601), .zn(n584) );
  oa04d0 U155 ( .a1(dur_cnt[0]), .a2(n597), .b(n584), .zn(n241) );
  nr02d0 U156 ( .a1(dur_cnt[1]), .a2(n597), .zn(n242) );
  ao01d0 U157 ( .a1(dur_cnt[1]), .a2(n241), .b1(dur_cnt[0]), .b2(n242), .zn(
        n65) );
  in01d0 U158 ( .i(n65), .zn(n534) );
  in01d0 U159 ( .i(cnt_for_sample[13]), .zn(n200) );
  in01d0 U160 ( .i(clk_sync_cnt[5]), .zn(n644) );
  nr02d0 U161 ( .a1(clk_sync_cnt[3]), .a2(clk_sync_cnt[4]), .zn(n73) );
  in01d0 U162 ( .i(clk_sync_cnt[6]), .zn(n642) );
  oa14d0 U163 ( .a1(n644), .a2(n73), .b(n642), .z(n74) );
  fn05d0 U164 ( .a1(n74), .b1(clk_sync_cnt[7]), .zn(n96) );
  in01d0 U165 ( .i(cnt_for_sample[14]), .zn(n251) );
  in01d0 U166 ( .i(cnt_for_sample[17]), .zn(n280) );
  in01d0 U167 ( .i(cnt_for_sample[0]), .zn(n214) );
  in01d0 U168 ( .i(clk_sync_cnt[0]), .zn(n654) );
  in01d0 U169 ( .i(cnt_for_sample[2]), .zn(n215) );
  in01d0 U170 ( .i(clk_sync_cnt[1]), .zn(n651) );
  oa01d0 U171 ( .a1(clk_sync_cnt[2]), .a2(n215), .b1(n651), .b2(
        cnt_for_sample[1]), .zn(n66) );
  ao03d0 U172 ( .a1(n215), .a2(clk_sync_cnt[2]), .b1(n651), .b2(
        cnt_for_sample[1]), .c(n66), .zn(n67) );
  oa03d0 U173 ( .a1(clk_sync_cnt[0]), .a2(n214), .b1(n654), .b2(
        cnt_for_sample[0]), .c(n67), .zn(n151) );
  in01d0 U174 ( .i(cnt_for_sample[3]), .zn(n218) );
  in01d0 U175 ( .i(clk_sync_cnt[3]), .zn(n648) );
  ao01d0 U176 ( .a1(clk_sync_cnt[3]), .a2(n218), .b1(cnt_for_sample[3]), .b2(
        n648), .zn(n147) );
  ao05d0 U177 ( .a1(cnt_for_sample[15]), .a2(n280), .b(n151), .c(n147), .zn(
        n80) );
  xn02d0 U178 ( .a1(clk_sync_cnt[6]), .a2(cnt_for_sample[6]), .zn(n157) );
  oa04d0 U179 ( .a1(clk_sync_cnt[3]), .a2(clk_sync_cnt[4]), .b(clk_sync_cnt[5]), .zn(n70) );
  xn02d0 U180 ( .a1(clk_sync_cnt[5]), .a2(cnt_for_sample[5]), .zn(n158) );
  in01d0 U181 ( .i(n158), .zn(n69) );
  nd02d0 U182 ( .a1(n157), .a2(n70), .zn(n68) );
  oa03d0 U183 ( .a1(n157), .a2(n70), .b1(n73), .b2(n69), .c(n68), .zn(n78) );
  in01d0 U184 ( .i(n98), .zn(n101) );
  in01d0 U185 ( .i(cnt_for_sample[12]), .zn(n235) );
  in01d0 U186 ( .i(clk_sync_cnt[4]), .zn(n646) );
  nr02d0 U187 ( .a1(n648), .a2(n646), .zn(n72) );
  oa04d0 U188 ( .a1(n72), .a2(n158), .b(cnt_for_sample[4]), .zn(n71) );
  oa08d0 U189 ( .a1(cnt_for_sample[4]), .a2(n73), .a3(n72), .b(n71), .zn(n76)
         );
  xn02d0 U190 ( .a1(clk_sync_cnt[7]), .a2(cnt_for_sample[7]), .zn(n152) );
  xo02d0 U191 ( .a1(n74), .a2(n152), .z(n75) );
  oa05d0 U192 ( .a1(n101), .a2(n235), .b(n76), .c(n75), .zn(n77) );
  oa05d0 U193 ( .a1(cnt_for_sample[16]), .a2(n251), .b(n80), .c(n79), .zn(n87)
         );
  in01d0 U194 ( .i(cnt_for_sample[10]), .zn(n193) );
  oa14d0 U195 ( .a1(n235), .a2(n193), .b(n96), .z(n85) );
  mi21d0 U196 ( .i0(cnt_for_sample[8]), .i1(n193), .s(n98), .zn(n84) );
  ao01d0 U197 ( .a1(n98), .a2(cnt_for_sample[11]), .b1(n98), .b2(
        cnt_for_sample[9]), .zn(n81) );
  oa03d0 U198 ( .a1(n98), .a2(cnt_for_sample[11]), .b1(n98), .b2(
        cnt_for_sample[9]), .c(n81), .zn(n83) );
  in01d0 U199 ( .i(cnt_for_sample[8]), .zn(n222) );
  nr02d0 U200 ( .a1(n96), .a2(n222), .zn(n82) );
  or04d0 U201 ( .a1(n85), .a2(n84), .a3(n83), .a4(n82), .z(n86) );
  ao05d0 U202 ( .a1(n200), .a2(n96), .b(n87), .c(n86), .zn(n88) );
  oa04d0 U203 ( .a1(n200), .a2(n96), .b(n88), .zn(n112) );
  in01d0 U204 ( .i(cnt_for_sample[21]), .zn(n324) );
  mi21d0 U205 ( .i0(cnt_for_sample[20]), .i1(n324), .s(n98), .zn(n111) );
  in01d0 U206 ( .i(cnt_for_sample[23]), .zn(n345) );
  oa01d0 U207 ( .a1(n90), .a2(cnt_for_sample[25]), .b1(n90), .b2(
        cnt_for_sample[27]), .zn(n89) );
  ao03d0 U208 ( .a1(n90), .a2(cnt_for_sample[25]), .b1(cnt_for_sample[27]), 
        .b2(n90), .c(n89), .zn(n92) );
  oa04d0 U209 ( .a1(n345), .a2(n324), .b(n101), .zn(n91) );
  oa05d0 U210 ( .a1(n345), .a2(n101), .b(n92), .c(n91), .zn(n110) );
  in01d0 U211 ( .i(cnt_for_sample[31]), .zn(n582) );
  in01d0 U212 ( .i(cnt_for_sample[29]), .zn(n568) );
  in01d0 U213 ( .i(cnt_for_sample[30]), .zn(n658) );
  or04d0 U214 ( .a1(n582), .a2(n90), .a3(n568), .a4(n658), .z(n94) );
  nd04d0 U215 ( .a1(n582), .a2(n90), .a3(n568), .a4(n658), .zn(n93) );
  nd02d0 U216 ( .a1(n94), .a2(n93), .zn(n108) );
  nd03d0 U217 ( .a1(cnt_for_sample[18]), .a2(n101), .a3(cnt_for_sample[14]), 
        .zn(n95) );
  oa08d0 U218 ( .a1(cnt_for_sample[16]), .a2(cnt_for_sample[18]), .a3(n101), 
        .b(n95), .zn(n105) );
  nd02d0 U219 ( .a1(cnt_for_sample[19]), .a2(cnt_for_sample[15]), .zn(n99) );
  fn01d0 U220 ( .a1(cnt_for_sample[19]), .b1(n280), .zn(n149) );
  in01d0 U221 ( .i(cnt_for_sample[20]), .zn(n323) );
  nr02d0 U222 ( .a1(n96), .a2(n323), .zn(n97) );
  ao03d0 U223 ( .a1(n101), .a2(n99), .b1(n98), .b2(n149), .c(n97), .zn(n104)
         );
  in01d0 U224 ( .i(cnt_for_sample[24]), .zn(n452) );
  in01d0 U225 ( .i(cnt_for_sample[26]), .zn(n544) );
  oa01d0 U226 ( .a1(n101), .a2(n452), .b1(n544), .b2(n101), .zn(n100) );
  ao03d0 U227 ( .a1(n452), .a2(n101), .b1(n544), .b2(n101), .c(n100), .zn(n103) );
  xn02d0 U228 ( .a1(n101), .a2(cnt_for_sample[22]), .zn(n102) );
  ao04d0 U229 ( .a1(cnt_for_sample[28]), .a2(n98), .b(n106), .zn(n107) );
  oa05d0 U230 ( .a1(cnt_for_sample[28]), .a2(n98), .b(n108), .c(n107), .zn(
        n109) );
  nr04d2 U231 ( .a1(n112), .a2(n111), .a3(n110), .a4(n109), .zn(n718) );
  in01d0 U232 ( .i(n718), .zn(n715) );
  in01d0 U233 ( .i(sample_num[0]), .zn(n289) );
  nr02d0 U234 ( .a1(n715), .a2(n289), .zn(n288) );
  in01d0 U235 ( .i(quarter_pulse), .zn(n656) );
  nd02d0 U236 ( .a1(sample_num[1]), .a2(n288), .zn(n311) );
  oa05d0 U237 ( .a1(sample_num[1]), .a2(n288), .b(n656), .c(n311), .zn(n113)
         );
  in01d0 U238 ( .i(n113), .zn(n401) );
  ao08d0 U239 ( .a1(sample_num[1]), .a2(sample_num[2]), .a3(sample_num[0]), 
        .b(sample_num[3]), .zn(n114) );
  ao05d0 U240 ( .a1(sample_num[2]), .a2(sample_num[3]), .b(n114), .c(n715), 
        .zn(n115) );
  ao04d0 U241 ( .a1(sample_num[3]), .a2(n311), .b(n115), .zn(n116) );
  nr02d0 U242 ( .a1(quarter_pulse), .a2(n116), .zn(n399) );
  nd02d0 U243 ( .a1(low_dur_cnt[3]), .a2(low_dur_cnt[4]), .zn(n117) );
  nd03d0 U244 ( .a1(low_dur_cnt[2]), .a2(low_dur_cnt[1]), .a3(low_dur_cnt[0]), 
        .zn(n631) );
  nr02d0 U245 ( .a1(n117), .a2(n631), .zn(n119) );
  ao04d0 U246 ( .a1(n118), .a2(n630), .b(n629), .zn(n125) );
  in01d0 U247 ( .i(low_dur_cnt[5]), .zn(n165) );
  oa07d0 U248 ( .a1(low_dur_cnt[5]), .a2(data_r[1]), .a3(n118), .b1(n125), 
        .b2(n165), .zn(n489) );
  in01d0 U249 ( .i(low_dur_cnt[8]), .zn(n136) );
  in01d0 U250 ( .i(low_dur_cnt[6]), .zn(n126) );
  nd02d0 U251 ( .a1(low_dur_cnt[5]), .a2(n119), .zn(n128) );
  nr02d0 U252 ( .a1(n126), .a2(n128), .zn(n122) );
  nd02d0 U253 ( .a1(low_dur_cnt[7]), .a2(n122), .zn(n138) );
  nr02d0 U254 ( .a1(n136), .a2(n138), .zn(n129) );
  ao04d0 U255 ( .a1(n121), .a2(n630), .b(n629), .zn(n139) );
  in01d0 U256 ( .i(low_dur_cnt[9]), .zn(n120) );
  oa07d0 U257 ( .a1(low_dur_cnt[9]), .a2(n632), .a3(n121), .b1(n139), .b2(n120), .zn(n485) );
  in01d0 U258 ( .i(n122), .zn(n124) );
  ao04d0 U259 ( .a1(n124), .a2(n630), .b(n629), .zn(n135) );
  in01d0 U260 ( .i(low_dur_cnt[7]), .zn(n123) );
  oa07d0 U261 ( .a1(low_dur_cnt[7]), .a2(n632), .a3(n124), .b1(n135), .b2(n123), .zn(n487) );
  oa14d0 U262 ( .a1(data_r[1]), .a2(low_dur_cnt[5]), .b(n125), .z(n127) );
  oa07d0 U263 ( .a1(low_dur_cnt[6]), .a2(n632), .a3(n128), .b1(n127), .b2(n126), .zn(n488) );
  in01d0 U264 ( .i(low_dur_cnt[10]), .zn(n140) );
  nd02d0 U265 ( .a1(low_dur_cnt[9]), .a2(n129), .zn(n142) );
  in01d0 U266 ( .i(n132), .zn(n131) );
  ao04d0 U267 ( .a1(n131), .a2(n630), .b(n629), .zn(n133) );
  in01d0 U268 ( .i(low_dur_cnt[11]), .zn(n130) );
  oa07d0 U269 ( .a1(low_dur_cnt[11]), .a2(n632), .a3(n131), .b1(n133), .b2(
        n130), .zn(n483) );
  nd02d0 U270 ( .a1(low_dur_cnt[11]), .a2(n132), .zn(n173) );
  oa14d0 U271 ( .a1(n632), .a2(low_dur_cnt[11]), .b(n133), .z(n134) );
  in01d0 U272 ( .i(low_dur_cnt[12]), .zn(n174) );
  oa07d0 U273 ( .a1(low_dur_cnt[12]), .a2(n632), .a3(n173), .b1(n134), .b2(
        n174), .zn(n482) );
  oa14d0 U274 ( .a1(n632), .a2(low_dur_cnt[7]), .b(n135), .z(n137) );
  oa07d0 U275 ( .a1(low_dur_cnt[8]), .a2(n632), .a3(n138), .b1(n137), .b2(n136), .zn(n486) );
  oa14d0 U276 ( .a1(n632), .a2(low_dur_cnt[9]), .b(n139), .z(n141) );
  oa07d0 U277 ( .a1(low_dur_cnt[10]), .a2(n632), .a3(n142), .b1(n141), .b2(
        n140), .zn(n484) );
  nd02d0 U278 ( .a1(low_dur_cnt[1]), .a2(low_dur_cnt[0]), .zn(n146) );
  oa04d0 U279 ( .a1(n144), .a2(n143), .b(low_dur_cnt[2]), .zn(n145) );
  oa08d0 U280 ( .a1(data_r[1]), .a2(low_dur_cnt[2]), .a3(n146), .b(n145), .zn(
        n492) );
  nd04d0 U281 ( .a1(n324), .a2(n193), .a3(n222), .a4(n323), .zn(n172) );
  in01d0 U282 ( .i(cnt_for_sample[9]), .zn(n203) );
  nd03d0 U283 ( .a1(n582), .a2(n147), .a3(n203), .zn(n148) );
  nr04d0 U284 ( .a1(cnt_for_sample[16]), .a2(cnt_for_sample[18]), .a3(n149), 
        .a4(n148), .zn(n160) );
  or04d0 U285 ( .a1(cnt_for_sample[30]), .a2(cnt_for_sample[29]), .a3(
        cnt_for_sample[14]), .a4(cnt_for_sample[22]), .z(n150) );
  or04d0 U286 ( .a1(cnt_for_sample[28]), .a2(cnt_for_sample[15]), .a3(n151), 
        .a4(n150), .z(n156) );
  in01d0 U287 ( .i(cnt_for_sample[4]), .zn(n197) );
  ao03d0 U288 ( .a1(clk_sync_cnt[4]), .a2(n197), .b1(n646), .b2(
        cnt_for_sample[4]), .c(cnt_for_sample[27]), .zn(n154) );
  an04d0 U289 ( .a1(n345), .a2(n200), .a3(n235), .a4(n152), .z(n153) );
  nd04d0 U290 ( .a1(n154), .a2(n153), .a3(n544), .a4(n452), .zn(n155) );
  nr04d0 U291 ( .a1(cnt_for_sample[25]), .a2(cnt_for_sample[11]), .a3(n156), 
        .a4(n155), .zn(n159) );
  nd04d0 U292 ( .a1(n160), .a2(n159), .a3(n158), .a4(n157), .zn(n171) );
  in01d0 U293 ( .i(n161), .zn(n169) );
  oa04d0 U294 ( .a1(low_dur_cnt[2]), .a2(low_dur_cnt[3]), .b(low_dur_cnt[4]), 
        .zn(n164) );
  nr02d0 U295 ( .a1(low_dur_cnt[1]), .a2(low_dur_cnt[0]), .zn(n163) );
  fn03d0 U296 ( .a1(n165), .a2(n164), .b1(n163), .b2(n162), .zn(n166) );
  nd04d0 U297 ( .a1(n169), .a2(n168), .a3(n167), .a4(n166), .zn(n170) );
  oa05d0 U298 ( .a1(n172), .a2(n171), .b(n656), .c(n170), .zn(n188) );
  in01d2 U299 ( .i(n188), .zn(n545) );
  oa03d0 U300 ( .a1(cnt_for_sample[0]), .a2(n670), .b1(n214), .b2(rx_st), .c(
        n545), .zn(n433) );
  nr02d0 U301 ( .a1(n174), .a2(n173), .zn(n185) );
  in01d0 U302 ( .i(n185), .zn(n176) );
  ao04d0 U303 ( .a1(n176), .a2(n630), .b(n629), .zn(n186) );
  in01d0 U304 ( .i(low_dur_cnt[13]), .zn(n175) );
  oa07d0 U305 ( .a1(low_dur_cnt[13]), .a2(n632), .a3(n176), .b1(n186), .b2(
        n175), .zn(n481) );
  in01d0 U306 ( .i(dur_cnt[10]), .zn(n643) );
  in01d0 U307 ( .i(n611), .zn(n178) );
  oa04d0 U308 ( .a1(dur_cnt[8]), .a2(n178), .b(dur_cnt[9]), .zn(n177) );
  ao04d0 U309 ( .a1(n643), .a2(n177), .b(n641), .zn(n624) );
  in01d0 U310 ( .i(n624), .zn(n620) );
  nr03d0 U311 ( .a1(dur_cnt[9]), .a2(dur_cnt[8]), .a3(n178), .zn(n179) );
  oa07d0 U312 ( .a1(n653), .a2(n641), .a3(n179), .b1(tune_cycle[5]), .b2(
        ping_from_master), .zn(n180) );
  oa08d0 U313 ( .a1(dur_cnt[9]), .a2(n653), .a3(n620), .b(n180), .zn(n501) );
  in01d0 U314 ( .i(dur_cnt[8]), .zn(n647) );
  nd02d0 U315 ( .a1(dur_cnt[1]), .a2(dur_cnt[0]), .zn(n245) );
  nr02d0 U316 ( .a1(n243), .a2(n245), .zn(n587) );
  nd02d0 U317 ( .a1(n181), .a2(n587), .zn(n591) );
  in01d0 U318 ( .i(n591), .zn(n592) );
  nd03d0 U319 ( .a1(dur_cnt[5]), .a2(dur_cnt[6]), .a3(n592), .zn(n596) );
  nr03d0 U320 ( .a1(n647), .a2(n649), .a3(n596), .zn(n603) );
  nd03d0 U321 ( .a1(dur_cnt[9]), .a2(dur_cnt[10]), .a3(n603), .zn(n184) );
  or02d0 U322 ( .a1(n184), .a2(n641), .z(n212) );
  nr02d0 U323 ( .a1(n210), .a2(n212), .zn(n206) );
  ao04d0 U324 ( .a1(n183), .a2(n604), .b(n601), .zn(n207) );
  oa07d0 U325 ( .a1(dur_cnt[13]), .a2(n597), .a3(n183), .b1(n207), .b2(n182), 
        .zn(n522) );
  ao04d0 U326 ( .a1(n184), .a2(n604), .b(n601), .zn(n209) );
  oa07d0 U327 ( .a1(dur_cnt[11]), .a2(n597), .a3(n184), .b1(n209), .b2(n641), 
        .zn(n524) );
  nd02d0 U328 ( .a1(low_dur_cnt[13]), .a2(n185), .zn(n253) );
  oa14d0 U329 ( .a1(n632), .a2(low_dur_cnt[13]), .b(n186), .z(n187) );
  in01d0 U330 ( .i(low_dur_cnt[14]), .zn(n254) );
  oa07d0 U331 ( .a1(low_dur_cnt[14]), .a2(n632), .a3(n253), .b1(n187), .b2(
        n254), .zn(n480) );
  nr02d0 U332 ( .a1(rx_st), .a2(n188), .zn(n567) );
  ao04d0 U333 ( .a1(n581), .a2(n214), .b(n567), .zn(n189) );
  in01d0 U334 ( .i(cnt_for_sample[1]), .zn(n213) );
  oa07d0 U335 ( .a1(cnt_for_sample[1]), .a2(n214), .a3(n570), .b1(n189), .b2(
        n213), .zn(n434) );
  in01d0 U336 ( .i(cnt_for_sample[6]), .zn(n228) );
  nd03d0 U337 ( .a1(cnt_for_sample[2]), .a2(cnt_for_sample[1]), .a3(
        cnt_for_sample[0]), .zn(n220) );
  in01d0 U338 ( .i(n220), .zn(n196) );
  nd03d0 U339 ( .a1(cnt_for_sample[3]), .a2(cnt_for_sample[4]), .a3(n196), 
        .zn(n226) );
  in01d0 U340 ( .i(cnt_for_sample[5]), .zn(n227) );
  or02d0 U341 ( .a1(n226), .a2(n227), .z(n230) );
  nr02d0 U342 ( .a1(n228), .a2(n230), .zn(n221) );
  nd02d0 U343 ( .a1(cnt_for_sample[7]), .a2(n221), .zn(n224) );
  nr02d0 U344 ( .a1(n222), .a2(n224), .zn(n190) );
  nd02d0 U345 ( .a1(cnt_for_sample[9]), .a2(n190), .zn(n192) );
  in01d0 U346 ( .i(n190), .zn(n205) );
  oa08d0 U347 ( .a1(n670), .a2(n203), .a3(n205), .b(n545), .zn(n191) );
  oa07d0 U348 ( .a1(cnt_for_sample[10]), .a2(n570), .a3(n192), .b1(n191), .b2(
        n193), .zn(n424) );
  nr02d0 U349 ( .a1(n193), .a2(n192), .zn(n234) );
  nd02d0 U350 ( .a1(cnt_for_sample[11]), .a2(n234), .zn(n237) );
  nr02d0 U351 ( .a1(n235), .a2(n237), .zn(n194) );
  nd02d0 U352 ( .a1(cnt_for_sample[13]), .a2(n194), .zn(n250) );
  oa08d0 U353 ( .a1(n670), .a2(n200), .a3(n202), .b(n545), .zn(n195) );
  oa07d0 U354 ( .a1(cnt_for_sample[14]), .a2(n570), .a3(n250), .b1(n195), .b2(
        n251), .zn(n420) );
  nd02d0 U355 ( .a1(cnt_for_sample[3]), .a2(n196), .zn(n199) );
  oa08d0 U356 ( .a1(n670), .a2(n218), .a3(n220), .b(n545), .zn(n198) );
  oa07d0 U357 ( .a1(cnt_for_sample[4]), .a2(n570), .a3(n199), .b1(n198), .b2(
        n197), .zn(n430) );
  oa04d0 U358 ( .a1(n670), .a2(n202), .b(n545), .zn(n201) );
  oa07d0 U359 ( .a1(cnt_for_sample[13]), .a2(n570), .a3(n202), .b1(n201), .b2(
        n200), .zn(n421) );
  oa04d0 U360 ( .a1(n670), .a2(n205), .b(n545), .zn(n204) );
  oa07d0 U361 ( .a1(cnt_for_sample[9]), .a2(n570), .a3(n205), .b1(n204), .b2(
        n203), .zn(n425) );
  nd02d0 U362 ( .a1(dur_cnt[13]), .a2(n206), .zn(n246) );
  oa14d0 U363 ( .a1(n597), .a2(dur_cnt[13]), .b(n207), .z(n208) );
  oa07d0 U364 ( .a1(dur_cnt[14]), .a2(n707), .a3(n246), .b1(n208), .b2(n247), 
        .zn(n521) );
  oa14d0 U365 ( .a1(n597), .a2(dur_cnt[11]), .b(n209), .z(n211) );
  oa07d0 U366 ( .a1(dur_cnt[12]), .a2(n707), .a3(n212), .b1(n211), .b2(n210), 
        .zn(n523) );
  nd02d0 U367 ( .a1(cnt_for_sample[1]), .a2(cnt_for_sample[0]), .zn(n217) );
  oa08d0 U368 ( .a1(n214), .a2(n213), .a3(n670), .b(n545), .zn(n216) );
  oa07d0 U369 ( .a1(cnt_for_sample[2]), .a2(n570), .a3(n217), .b1(n216), .b2(
        n215), .zn(n432) );
  oa04d0 U370 ( .a1(n670), .a2(n220), .b(n545), .zn(n219) );
  oa07d0 U371 ( .a1(cnt_for_sample[3]), .a2(n570), .a3(n220), .b1(n219), .b2(
        n218), .zn(n431) );
  in01d0 U372 ( .i(cnt_for_sample[7]), .zn(n231) );
  in01d0 U373 ( .i(n221), .zn(n233) );
  oa08d0 U374 ( .a1(n670), .a2(n231), .a3(n233), .b(n545), .zn(n223) );
  oa07d0 U375 ( .a1(cnt_for_sample[8]), .a2(n570), .a3(n224), .b1(n223), .b2(
        n222), .zn(n426) );
  oa04d0 U376 ( .a1(n670), .a2(n226), .b(n545), .zn(n225) );
  oa07d0 U377 ( .a1(cnt_for_sample[5]), .a2(n570), .a3(n226), .b1(n225), .b2(
        n227), .zn(n429) );
  oa08d0 U378 ( .a1(n670), .a2(n227), .a3(n226), .b(n545), .zn(n229) );
  oa07d0 U379 ( .a1(cnt_for_sample[6]), .a2(n570), .a3(n230), .b1(n229), .b2(
        n228), .zn(n428) );
  oa04d0 U380 ( .a1(n670), .a2(n233), .b(n545), .zn(n232) );
  oa07d0 U381 ( .a1(cnt_for_sample[7]), .a2(n570), .a3(n233), .b1(n232), .b2(
        n231), .zn(n427) );
  in01d0 U382 ( .i(cnt_for_sample[11]), .zn(n238) );
  in01d0 U383 ( .i(n234), .zn(n240) );
  oa08d0 U384 ( .a1(n670), .a2(n238), .a3(n240), .b(n545), .zn(n236) );
  oa07d0 U385 ( .a1(cnt_for_sample[12]), .a2(n570), .a3(n237), .b1(n236), .b2(
        n235), .zn(n422) );
  oa04d0 U386 ( .a1(n670), .a2(n240), .b(n545), .zn(n239) );
  oa07d0 U387 ( .a1(cnt_for_sample[11]), .a2(n570), .a3(n240), .b1(n239), .b2(
        n238), .zn(n423) );
  nr02d0 U388 ( .a1(n242), .a2(n241), .zn(n244) );
  oa07d0 U389 ( .a1(dur_cnt[2]), .a2(n597), .a3(n245), .b1(n244), .b2(n243), 
        .zn(n533) );
  nr02d0 U390 ( .a1(n247), .a2(n246), .zn(n261) );
  in01d0 U391 ( .i(n261), .zn(n249) );
  ao04d0 U392 ( .a1(n249), .a2(n604), .b(n601), .zn(n262) );
  oa07d0 U393 ( .a1(dur_cnt[15]), .a2(n597), .a3(n249), .b1(n262), .b2(n248), 
        .zn(n520) );
  nr02d0 U394 ( .a1(n251), .a2(n250), .zn(n257) );
  in01d0 U395 ( .i(n257), .zn(n258) );
  oa04d0 U396 ( .a1(n670), .a2(n258), .b(n545), .zn(n252) );
  in01d0 U397 ( .i(cnt_for_sample[15]), .zn(n259) );
  oa07d0 U398 ( .a1(cnt_for_sample[15]), .a2(n570), .a3(n258), .b1(n252), .b2(
        n259), .zn(n419) );
  nr02d0 U399 ( .a1(n254), .a2(n253), .zn(n264) );
  ao04d0 U400 ( .a1(n256), .a2(n630), .b(n629), .zn(n265) );
  in01d0 U401 ( .i(low_dur_cnt[15]), .zn(n255) );
  oa07d0 U402 ( .a1(low_dur_cnt[15]), .a2(n632), .a3(n256), .b1(n265), .b2(
        n255), .zn(n479) );
  nd02d0 U403 ( .a1(cnt_for_sample[15]), .a2(n257), .zn(n275) );
  oa08d0 U404 ( .a1(n670), .a2(n259), .a3(n258), .b(n545), .zn(n260) );
  in01d0 U405 ( .i(cnt_for_sample[16]), .zn(n276) );
  oa07d0 U406 ( .a1(cnt_for_sample[16]), .a2(n570), .a3(n275), .b1(n260), .b2(
        n276), .zn(n418) );
  nd02d0 U407 ( .a1(dur_cnt[15]), .a2(n261), .zn(n267) );
  oa14d0 U408 ( .a1(n597), .a2(dur_cnt[15]), .b(n262), .z(n263) );
  in01d0 U409 ( .i(dur_cnt[16]), .zn(n268) );
  oa07d0 U410 ( .a1(dur_cnt[16]), .a2(n597), .a3(n267), .b1(n263), .b2(n268), 
        .zn(n519) );
  nd02d0 U411 ( .a1(low_dur_cnt[15]), .a2(n264), .zn(n271) );
  oa14d0 U412 ( .a1(n632), .a2(low_dur_cnt[15]), .b(n265), .z(n266) );
  in01d0 U413 ( .i(low_dur_cnt[16]), .zn(n272) );
  oa07d0 U414 ( .a1(low_dur_cnt[16]), .a2(n632), .a3(n271), .b1(n266), .b2(
        n272), .zn(n478) );
  nr02d0 U415 ( .a1(n268), .a2(n267), .zn(n282) );
  ao04d0 U416 ( .a1(n270), .a2(n604), .b(n601), .zn(n283) );
  in01d0 U417 ( .i(dur_cnt[17]), .zn(n269) );
  oa07d0 U418 ( .a1(dur_cnt[17]), .a2(n597), .a3(n270), .b1(n283), .b2(n269), 
        .zn(n518) );
  nr02d0 U419 ( .a1(n272), .a2(n271), .zn(n285) );
  in01d0 U420 ( .i(n285), .zn(n274) );
  ao04d0 U421 ( .a1(n274), .a2(n630), .b(n629), .zn(n286) );
  in01d0 U422 ( .i(low_dur_cnt[17]), .zn(n273) );
  oa07d0 U423 ( .a1(low_dur_cnt[17]), .a2(n632), .a3(n274), .b1(n286), .b2(
        n273), .zn(n477) );
  nr02d0 U424 ( .a1(n276), .a2(n275), .zn(n278) );
  in01d0 U425 ( .i(n278), .zn(n279) );
  oa04d0 U426 ( .a1(n670), .a2(n279), .b(n545), .zn(n277) );
  oa07d0 U427 ( .a1(cnt_for_sample[17]), .a2(n570), .a3(n279), .b1(n277), .b2(
        n280), .zn(n417) );
  nd02d0 U428 ( .a1(cnt_for_sample[17]), .a2(n278), .zn(n298) );
  oa08d0 U429 ( .a1(n670), .a2(n280), .a3(n279), .b(n545), .zn(n281) );
  in01d0 U430 ( .i(cnt_for_sample[18]), .zn(n299) );
  oa07d0 U431 ( .a1(cnt_for_sample[18]), .a2(n570), .a3(n298), .b1(n281), .b2(
        n299), .zn(n416) );
  nd02d0 U432 ( .a1(dur_cnt[17]), .a2(n282), .zn(n290) );
  oa14d0 U433 ( .a1(n597), .a2(dur_cnt[17]), .b(n283), .z(n284) );
  in01d0 U434 ( .i(dur_cnt[18]), .zn(n291) );
  oa07d0 U435 ( .a1(dur_cnt[18]), .a2(n597), .a3(n290), .b1(n284), .b2(n291), 
        .zn(n517) );
  nd02d0 U436 ( .a1(low_dur_cnt[17]), .a2(n285), .zn(n294) );
  oa14d0 U437 ( .a1(n632), .a2(low_dur_cnt[17]), .b(n286), .z(n287) );
  in01d0 U438 ( .i(low_dur_cnt[18]), .zn(n295) );
  oa07d0 U439 ( .a1(low_dur_cnt[18]), .a2(n632), .a3(n294), .b1(n287), .b2(
        n295), .zn(n476) );
  ao05d0 U440 ( .a1(n715), .a2(n289), .b(quarter_pulse), .c(n288), .zn(n402)
         );
  nr02d0 U441 ( .a1(n291), .a2(n290), .zn(n302) );
  in01d0 U442 ( .i(n302), .zn(n293) );
  ao04d0 U443 ( .a1(n293), .a2(n604), .b(n601), .zn(n303) );
  in01d0 U444 ( .i(dur_cnt[19]), .zn(n292) );
  oa07d0 U445 ( .a1(dur_cnt[19]), .a2(n597), .a3(n293), .b1(n303), .b2(n292), 
        .zn(n516) );
  nr02d0 U446 ( .a1(n295), .a2(n294), .zn(n305) );
  ao04d0 U447 ( .a1(n297), .a2(n630), .b(n629), .zn(n306) );
  in01d0 U448 ( .i(low_dur_cnt[19]), .zn(n296) );
  oa07d0 U449 ( .a1(low_dur_cnt[19]), .a2(n632), .a3(n297), .b1(n306), .b2(
        n296), .zn(n475) );
  nr02d0 U450 ( .a1(n299), .a2(n298), .zn(n308) );
  in01d0 U451 ( .i(n308), .zn(n301) );
  oa04d0 U452 ( .a1(n670), .a2(n301), .b(n545), .zn(n309) );
  in01d0 U453 ( .i(cnt_for_sample[19]), .zn(n300) );
  oa07d0 U454 ( .a1(cnt_for_sample[19]), .a2(n570), .a3(n301), .b1(n309), .b2(
        n300), .zn(n415) );
  nd02d0 U455 ( .a1(dur_cnt[19]), .a2(n302), .zn(n314) );
  oa14d0 U456 ( .a1(n597), .a2(dur_cnt[19]), .b(n303), .z(n304) );
  in01d0 U457 ( .i(dur_cnt[20]), .zn(n315) );
  oa07d0 U458 ( .a1(dur_cnt[20]), .a2(n597), .a3(n314), .b1(n304), .b2(n315), 
        .zn(n515) );
  nd02d0 U459 ( .a1(low_dur_cnt[19]), .a2(n305), .zn(n318) );
  oa14d0 U460 ( .a1(n632), .a2(low_dur_cnt[19]), .b(n306), .z(n307) );
  in01d0 U461 ( .i(low_dur_cnt[20]), .zn(n319) );
  oa07d0 U462 ( .a1(low_dur_cnt[20]), .a2(n632), .a3(n318), .b1(n307), .b2(
        n319), .zn(n474) );
  nd02d0 U463 ( .a1(cnt_for_sample[19]), .a2(n308), .zn(n322) );
  oa14d0 U464 ( .a1(n570), .a2(cnt_for_sample[19]), .b(n309), .z(n310) );
  oa07d0 U465 ( .a1(cnt_for_sample[20]), .a2(n570), .a3(n322), .b1(n310), .b2(
        n323), .zn(n414) );
  in01d0 U466 ( .i(n311), .zn(n313) );
  nr02d0 U467 ( .a1(sample_num[2]), .a2(n313), .zn(n312) );
  ao05d0 U468 ( .a1(sample_num[2]), .a2(n313), .b(quarter_pulse), .c(n312), 
        .zn(n400) );
  nr02d0 U469 ( .a1(n315), .a2(n314), .zn(n326) );
  in01d0 U470 ( .i(n326), .zn(n317) );
  ao04d0 U471 ( .a1(n317), .a2(n604), .b(n601), .zn(n327) );
  in01d0 U472 ( .i(dur_cnt[21]), .zn(n316) );
  oa07d0 U473 ( .a1(dur_cnt[21]), .a2(n597), .a3(n317), .b1(n327), .b2(n316), 
        .zn(n514) );
  nr02d0 U474 ( .a1(n319), .a2(n318), .zn(n329) );
  in01d0 U475 ( .i(n329), .zn(n321) );
  ao04d0 U476 ( .a1(n321), .a2(n630), .b(n629), .zn(n330) );
  in01d0 U477 ( .i(low_dur_cnt[21]), .zn(n320) );
  oa07d0 U478 ( .a1(low_dur_cnt[21]), .a2(n632), .a3(n321), .b1(n330), .b2(
        n320), .zn(n473) );
  nr02d0 U479 ( .a1(n323), .a2(n322), .zn(n332) );
  in01d0 U480 ( .i(n332), .zn(n325) );
  oa04d0 U481 ( .a1(n670), .a2(n325), .b(n545), .zn(n333) );
  oa07d0 U482 ( .a1(cnt_for_sample[21]), .a2(n570), .a3(n325), .b1(n333), .b2(
        n324), .zn(n413) );
  nd02d0 U483 ( .a1(dur_cnt[21]), .a2(n326), .zn(n335) );
  oa14d0 U484 ( .a1(n597), .a2(dur_cnt[21]), .b(n327), .z(n328) );
  in01d0 U485 ( .i(dur_cnt[22]), .zn(n336) );
  oa07d0 U486 ( .a1(dur_cnt[22]), .a2(n597), .a3(n335), .b1(n328), .b2(n336), 
        .zn(n513) );
  nd02d0 U487 ( .a1(low_dur_cnt[21]), .a2(n329), .zn(n339) );
  oa14d0 U488 ( .a1(n632), .a2(low_dur_cnt[21]), .b(n330), .z(n331) );
  in01d0 U489 ( .i(low_dur_cnt[22]), .zn(n340) );
  oa07d0 U490 ( .a1(low_dur_cnt[22]), .a2(n632), .a3(n339), .b1(n331), .b2(
        n340), .zn(n472) );
  nd02d0 U491 ( .a1(cnt_for_sample[21]), .a2(n332), .zn(n343) );
  oa14d0 U492 ( .a1(n570), .a2(cnt_for_sample[21]), .b(n333), .z(n334) );
  in01d0 U493 ( .i(cnt_for_sample[22]), .zn(n344) );
  oa07d0 U494 ( .a1(cnt_for_sample[22]), .a2(n570), .a3(n343), .b1(n334), .b2(
        n344), .zn(n412) );
  nr02d0 U495 ( .a1(n336), .a2(n335), .zn(n347) );
  ao04d0 U496 ( .a1(n338), .a2(n604), .b(n601), .zn(n348) );
  in01d0 U497 ( .i(dur_cnt[23]), .zn(n337) );
  oa07d0 U498 ( .a1(dur_cnt[23]), .a2(n597), .a3(n338), .b1(n348), .b2(n337), 
        .zn(n512) );
  nr02d0 U499 ( .a1(n340), .a2(n339), .zn(n350) );
  in01d0 U500 ( .i(n350), .zn(n342) );
  ao04d0 U501 ( .a1(n342), .a2(n630), .b(n629), .zn(n351) );
  in01d0 U502 ( .i(low_dur_cnt[23]), .zn(n341) );
  oa07d0 U503 ( .a1(low_dur_cnt[23]), .a2(n632), .a3(n342), .b1(n351), .b2(
        n341), .zn(n471) );
  nr02d0 U504 ( .a1(n344), .a2(n343), .zn(n353) );
  oa04d0 U505 ( .a1(n670), .a2(n346), .b(n545), .zn(n354) );
  oa07d0 U506 ( .a1(cnt_for_sample[23]), .a2(n570), .a3(n346), .b1(n354), .b2(
        n345), .zn(n411) );
  nd02d0 U507 ( .a1(dur_cnt[23]), .a2(n347), .zn(n356) );
  oa14d0 U508 ( .a1(n597), .a2(dur_cnt[23]), .b(n348), .z(n349) );
  in01d0 U509 ( .i(dur_cnt[24]), .zn(n444) );
  oa07d0 U510 ( .a1(dur_cnt[24]), .a2(n597), .a3(n356), .b1(n349), .b2(n444), 
        .zn(n511) );
  nd02d0 U511 ( .a1(low_dur_cnt[23]), .a2(n350), .zn(n447) );
  oa14d0 U512 ( .a1(n632), .a2(low_dur_cnt[23]), .b(n351), .z(n352) );
  in01d0 U513 ( .i(low_dur_cnt[24]), .zn(n448) );
  oa07d0 U514 ( .a1(low_dur_cnt[24]), .a2(n632), .a3(n447), .b1(n352), .b2(
        n448), .zn(n470) );
  nd02d0 U515 ( .a1(cnt_for_sample[23]), .a2(n353), .zn(n451) );
  oa14d0 U516 ( .a1(n570), .a2(cnt_for_sample[23]), .b(n354), .z(n355) );
  oa07d0 U517 ( .a1(cnt_for_sample[24]), .a2(n570), .a3(n451), .b1(n355), .b2(
        n452), .zn(n410) );
  nr02d0 U518 ( .a1(n444), .a2(n356), .zn(n455) );
  in01d0 U519 ( .i(n455), .zn(n446) );
  ao04d0 U520 ( .a1(n446), .a2(n604), .b(n601), .zn(n456) );
  in01d0 U521 ( .i(dur_cnt[25]), .zn(n445) );
  oa07d0 U522 ( .a1(dur_cnt[25]), .a2(n597), .a3(n446), .b1(n456), .b2(n445), 
        .zn(n510) );
  nr02d0 U523 ( .a1(n448), .a2(n447), .zn(n458) );
  ao04d0 U524 ( .a1(n450), .a2(n630), .b(n629), .zn(n459) );
  in01d0 U525 ( .i(low_dur_cnt[25]), .zn(n449) );
  oa07d0 U526 ( .a1(low_dur_cnt[25]), .a2(n632), .a3(n450), .b1(n459), .b2(
        n449), .zn(n469) );
  nr02d0 U527 ( .a1(n452), .a2(n451), .zn(n461) );
  in01d0 U528 ( .i(n461), .zn(n454) );
  oa04d0 U529 ( .a1(n670), .a2(n454), .b(n545), .zn(n462) );
  in01d0 U530 ( .i(cnt_for_sample[25]), .zn(n453) );
  oa07d0 U531 ( .a1(cnt_for_sample[25]), .a2(n570), .a3(n454), .b1(n462), .b2(
        n453), .zn(n409) );
  nd02d0 U532 ( .a1(dur_cnt[25]), .a2(n455), .zn(n502) );
  oa14d0 U533 ( .a1(n597), .a2(dur_cnt[25]), .b(n456), .z(n457) );
  in01d0 U534 ( .i(dur_cnt[26]), .zn(n503) );
  oa07d0 U535 ( .a1(dur_cnt[26]), .a2(n597), .a3(n502), .b1(n457), .b2(n503), 
        .zn(n509) );
  nd02d0 U536 ( .a1(low_dur_cnt[25]), .a2(n458), .zn(n539) );
  oa14d0 U537 ( .a1(n632), .a2(low_dur_cnt[25]), .b(n459), .z(n460) );
  in01d0 U538 ( .i(low_dur_cnt[26]), .zn(n540) );
  oa07d0 U539 ( .a1(low_dur_cnt[26]), .a2(n632), .a3(n539), .b1(n460), .b2(
        n540), .zn(n468) );
  nd02d0 U540 ( .a1(cnt_for_sample[25]), .a2(n461), .zn(n543) );
  oa14d0 U541 ( .a1(n570), .a2(cnt_for_sample[25]), .b(n462), .z(n463) );
  oa07d0 U542 ( .a1(cnt_for_sample[26]), .a2(n570), .a3(n543), .b1(n463), .b2(
        n544), .zn(n408) );
  nr02d0 U543 ( .a1(n503), .a2(n502), .zn(n548) );
  ao04d0 U544 ( .a1(n538), .a2(n604), .b(n601), .zn(n549) );
  in01d0 U545 ( .i(dur_cnt[27]), .zn(n537) );
  oa07d0 U546 ( .a1(dur_cnt[27]), .a2(n597), .a3(n538), .b1(n549), .b2(n537), 
        .zn(n508) );
  nr02d0 U547 ( .a1(n540), .a2(n539), .zn(n551) );
  in01d0 U548 ( .i(n551), .zn(n542) );
  ao04d0 U549 ( .a1(n542), .a2(n630), .b(n629), .zn(n552) );
  in01d0 U550 ( .i(low_dur_cnt[27]), .zn(n541) );
  oa07d0 U551 ( .a1(low_dur_cnt[27]), .a2(n632), .a3(n542), .b1(n552), .b2(
        n541), .zn(n467) );
  oa04d0 U552 ( .a1(n670), .a2(n547), .b(n545), .zn(n555) );
  in01d0 U553 ( .i(cnt_for_sample[27]), .zn(n546) );
  oa07d0 U554 ( .a1(cnt_for_sample[27]), .a2(n570), .a3(n547), .b1(n555), .b2(
        n546), .zn(n407) );
  nd02d0 U555 ( .a1(dur_cnt[27]), .a2(n548), .zn(n557) );
  oa14d0 U556 ( .a1(n597), .a2(dur_cnt[27]), .b(n549), .z(n550) );
  in01d0 U557 ( .i(dur_cnt[28]), .zn(n558) );
  oa07d0 U558 ( .a1(dur_cnt[28]), .a2(n597), .a3(n557), .b1(n550), .b2(n558), 
        .zn(n507) );
  nd02d0 U559 ( .a1(low_dur_cnt[27]), .a2(n551), .zn(n561) );
  oa14d0 U560 ( .a1(n632), .a2(low_dur_cnt[27]), .b(n552), .z(n553) );
  in01d0 U561 ( .i(low_dur_cnt[28]), .zn(n562) );
  oa07d0 U562 ( .a1(low_dur_cnt[28]), .a2(n632), .a3(n561), .b1(n553), .b2(
        n562), .zn(n466) );
  nd02d0 U563 ( .a1(cnt_for_sample[27]), .a2(n554), .zn(n565) );
  oa14d0 U564 ( .a1(n570), .a2(cnt_for_sample[27]), .b(n555), .z(n556) );
  in01d0 U565 ( .i(cnt_for_sample[28]), .zn(n566) );
  oa07d0 U566 ( .a1(cnt_for_sample[28]), .a2(n570), .a3(n565), .b1(n556), .b2(
        n566), .zn(n406) );
  in01d0 U567 ( .i(n571), .zn(n560) );
  ao04d0 U568 ( .a1(n604), .a2(n560), .b(n601), .zn(n572) );
  in01d0 U569 ( .i(dur_cnt[29]), .zn(n559) );
  oa07d0 U570 ( .a1(dur_cnt[29]), .a2(n597), .a3(n560), .b1(n572), .b2(n559), 
        .zn(n506) );
  nr02d0 U571 ( .a1(n562), .a2(n561), .zn(n575) );
  ao04d0 U572 ( .a1(n630), .a2(n564), .b(n629), .zn(n576) );
  in01d0 U573 ( .i(low_dur_cnt[29]), .zn(n563) );
  oa07d0 U574 ( .a1(low_dur_cnt[29]), .a2(n632), .a3(n564), .b1(n576), .b2(
        n563), .zn(n465) );
  nr02d0 U575 ( .a1(n566), .a2(n565), .zn(n579) );
  in01d0 U576 ( .i(n579), .zn(n569) );
  ao04d0 U577 ( .a1(n581), .a2(n569), .b(n567), .zn(n580) );
  oa07d0 U578 ( .a1(cnt_for_sample[29]), .a2(n570), .a3(n569), .b1(n580), .b2(
        n568), .zn(n405) );
  in01d0 U579 ( .i(dur_cnt[30]), .zn(n609) );
  nd03d0 U580 ( .a1(dur_cnt[29]), .a2(n604), .a3(n571), .zn(n610) );
  oa04d0 U581 ( .a1(dur_cnt[29]), .a2(n597), .b(n572), .zn(n608) );
  ao04d0 U582 ( .a1(n604), .a2(n609), .b(n608), .zn(n574) );
  in01d0 U583 ( .i(dur_cnt[31]), .zn(n573) );
  oa07d0 U584 ( .a1(dur_cnt[31]), .a2(n609), .a3(n610), .b1(n574), .b2(n573), 
        .zn(n535) );
  in01d0 U585 ( .i(low_dur_cnt[30]), .zn(n639) );
  nd03d0 U586 ( .a1(low_dur_cnt[29]), .a2(n630), .a3(n575), .zn(n640) );
  oa04d0 U587 ( .a1(low_dur_cnt[29]), .a2(n632), .b(n576), .zn(n638) );
  ao04d0 U588 ( .a1(n630), .a2(n639), .b(n638), .zn(n578) );
  in01d0 U589 ( .i(low_dur_cnt[31]), .zn(n577) );
  oa07d0 U590 ( .a1(low_dur_cnt[31]), .a2(n639), .a3(n640), .b1(n578), .b2(
        n577), .zn(n494) );
  nd03d0 U591 ( .a1(cnt_for_sample[29]), .a2(n581), .a3(n579), .zn(n659) );
  oa04d0 U592 ( .a1(cnt_for_sample[29]), .a2(n570), .b(n580), .zn(n657) );
  ao04d0 U593 ( .a1(n581), .a2(n658), .b(n657), .zn(n583) );
  oa07d0 U594 ( .a1(cnt_for_sample[31]), .a2(n658), .a3(n659), .b1(n583), .b2(
        n582), .zn(n403) );
  an02d0 U595 ( .a1(data), .a2(rx_own_bus), .z(valid_data) );
  fn03d0 U597 ( .a1(dur_cnt[0]), .a2(n584), .b1(n604), .b2(dur_cnt[0]), .zn(
        n536) );
  in01d0 U598 ( .i(n587), .zn(n585) );
  ao04d0 U599 ( .a1(n604), .a2(n585), .b(n601), .zn(n590) );
  oa01d0 U600 ( .a1(n590), .a2(n586), .b1(n585), .b2(n589), .zn(n532) );
  nd03d0 U601 ( .a1(dur_cnt[3]), .a2(n604), .a3(n587), .zn(n588) );
  ao07d0 U602 ( .a1(n590), .a2(dur_cnt[4]), .a3(n589), .b1(n588), .b2(n655), 
        .zn(n531) );
  ao04d0 U603 ( .a1(n604), .a2(n591), .b(n601), .zn(n595) );
  nd02d0 U604 ( .a1(n604), .a2(n652), .zn(n594) );
  oa01d0 U605 ( .a1(n595), .a2(n652), .b1(n591), .b2(n594), .zn(n530) );
  nd03d0 U606 ( .a1(dur_cnt[5]), .a2(n604), .a3(n592), .zn(n593) );
  ao07d0 U607 ( .a1(n595), .a2(dur_cnt[6]), .a3(n594), .b1(n593), .b2(n650), 
        .zn(n529) );
  ao04d0 U608 ( .a1(n604), .a2(n596), .b(n601), .zn(n600) );
  nd02d0 U609 ( .a1(n604), .a2(n649), .zn(n599) );
  oa01d0 U610 ( .a1(n600), .a2(n649), .b1(n596), .b2(n599), .zn(n528) );
  or03d0 U611 ( .a1(n649), .a2(n597), .a3(n596), .z(n598) );
  ao07d0 U612 ( .a1(n600), .a2(dur_cnt[8]), .a3(n599), .b1(n598), .b2(n647), 
        .zn(n527) );
  in01d0 U613 ( .i(n603), .zn(n602) );
  ao04d0 U614 ( .a1(n604), .a2(n602), .b(n601), .zn(n607) );
  nd02d0 U615 ( .a1(n604), .a2(n645), .zn(n606) );
  oa01d0 U616 ( .a1(n607), .a2(n645), .b1(n602), .b2(n606), .zn(n526) );
  nd03d0 U617 ( .a1(dur_cnt[9]), .a2(n604), .a3(n603), .zn(n605) );
  ao07d0 U618 ( .a1(n607), .a2(dur_cnt[10]), .a3(n606), .b1(n605), .b2(n643), 
        .zn(n525) );
  fn03d0 U619 ( .a1(n610), .a2(n609), .b1(n609), .b2(n608), .zn(n505) );
  fn03d0 U620 ( .a1(ping_from_master), .a2(n620), .b1(tune_up), .b2(
        ping_from_master), .zn(n504) );
  nr02d0 U621 ( .a1(n611), .a2(n624), .zn(n612) );
  xn02d0 U622 ( .a1(n612), .a2(dur_cnt[8]), .zn(n613) );
  fn04d0 U623 ( .a1(n653), .a2(n613), .b1(n653), .b2(tune_cycle[4]), .zn(n500)
         );
  nd02d0 U624 ( .a1(n614), .a2(n620), .zn(n615) );
  xn02d0 U625 ( .a1(n649), .a2(n615), .zn(n616) );
  fn03d0 U626 ( .a1(ping_from_master), .a2(n616), .b1(tune_cycle[3]), .b2(
        ping_from_master), .zn(n499) );
  nr02d0 U627 ( .a1(n617), .a2(n624), .zn(n618) );
  xn02d0 U628 ( .a1(n618), .a2(dur_cnt[6]), .zn(n619) );
  fn04d0 U629 ( .a1(n653), .a2(n619), .b1(n653), .b2(tune_cycle[2]), .zn(n498)
         );
  nd02d0 U630 ( .a1(n621), .a2(n620), .zn(n622) );
  xn02d0 U631 ( .a1(n652), .a2(n622), .zn(n623) );
  fn03d0 U632 ( .a1(ping_from_master), .a2(n623), .b1(tune_cycle[1]), .b2(
        ping_from_master), .zn(n497) );
  nr02d0 U633 ( .a1(n625), .a2(n624), .zn(n626) );
  xn02d0 U634 ( .a1(n626), .a2(dur_cnt[4]), .zn(n627) );
  fn04d0 U635 ( .a1(n653), .a2(n627), .b1(n653), .b2(tune_cycle[0]), .zn(n496)
         );
  fn03d0 U636 ( .a1(low_dur_cnt[0]), .a2(n628), .b1(n630), .b2(low_dur_cnt[0]), 
        .zn(n495) );
  ao04d0 U637 ( .a1(n630), .a2(n631), .b(n629), .zn(n637) );
  in01d0 U638 ( .i(low_dur_cnt[3]), .zn(n633) );
  nd02d0 U639 ( .a1(n630), .a2(n633), .zn(n636) );
  oa01d0 U640 ( .a1(n637), .a2(n633), .b1(n631), .b2(n636), .zn(n491) );
  or03d0 U641 ( .a1(n633), .a2(n632), .a3(n631), .z(n635) );
  in01d0 U642 ( .i(low_dur_cnt[4]), .zn(n634) );
  ao07d0 U643 ( .a1(n637), .a2(low_dur_cnt[4]), .a3(n636), .b1(n635), .b2(n634), .zn(n490) );
  fn03d0 U644 ( .a1(n640), .a2(n639), .b1(n639), .b2(n638), .zn(n464) );
  fn03d0 U645 ( .a1(ping_from_master), .a2(n641), .b1(clk_sync_cnt[7]), .b2(
        ping_from_master), .zn(n443) );
  ao01d0 U646 ( .a1(ping_from_master), .a2(n643), .b1(n642), .b2(n653), .zn(
        n442) );
  ao01d0 U647 ( .a1(ping_from_master), .a2(n645), .b1(n644), .b2(n653), .zn(
        n441) );
  ao01d0 U648 ( .a1(ping_from_master), .a2(n647), .b1(n646), .b2(n653), .zn(
        n440) );
  ao01d0 U649 ( .a1(ping_from_master), .a2(n649), .b1(n648), .b2(n653), .zn(
        n439) );
  fn03d0 U650 ( .a1(ping_from_master), .a2(n650), .b1(clk_sync_cnt[2]), .b2(
        ping_from_master), .zn(n438) );
  ao01d0 U651 ( .a1(ping_from_master), .a2(n652), .b1(n651), .b2(n653), .zn(
        n437) );
  ao01d0 U652 ( .a1(ping_from_master), .a2(n655), .b1(n654), .b2(n653), .zn(
        n436) );
  oa04d0 U653 ( .a1(ping_from_master), .a2(n670), .b(n656), .zn(n435) );
  fn03d0 U654 ( .a1(n659), .a2(n658), .b1(n658), .b2(n657), .zn(n404) );
  in01d0 U655 ( .i(sample_data[8]), .zn(n716) );
  in01d0 U656 ( .i(sample_data[7]), .zn(n717) );
  ao01d0 U657 ( .a1(sample_data[7]), .a2(sample_data[8]), .b1(n716), .b2(n717), 
        .zn(n663) );
  in01d0 U658 ( .i(sample_data[2]), .zn(n710) );
  in01d0 U659 ( .i(sample_data[1]), .zn(n709) );
  ao01d0 U660 ( .a1(sample_data[1]), .a2(sample_data[2]), .b1(n710), .b2(n709), 
        .zn(n662) );
  in01d0 U661 ( .i(sample_data[4]), .zn(n712) );
  in01d0 U662 ( .i(sample_data[3]), .zn(n711) );
  ao01d0 U663 ( .a1(sample_data[3]), .a2(sample_data[4]), .b1(n712), .b2(n711), 
        .zn(n660) );
  xn02d0 U664 ( .a1(sample_data[0]), .a2(n660), .zn(n661) );
  xn03d0 U665 ( .a1(n663), .a2(n662), .a3(n661), .zn(n665) );
  in01d0 U666 ( .i(sample_data[6]), .zn(n714) );
  in01d0 U667 ( .i(sample_data[5]), .zn(n713) );
  ao01d0 U668 ( .a1(sample_data[5]), .a2(n714), .b1(sample_data[6]), .b2(n713), 
        .zn(n664) );
  xn02d0 U669 ( .a1(n665), .a2(n664), .zn(n668) );
  oa04d0 U670 ( .a1(n668), .a2(n666), .b(parity_pass), .zn(n667) );
  oa04d0 U671 ( .a1(rx_st_r), .a2(n670), .b(n667), .zn(n398) );
  oa05d0 U672 ( .a1(rx_st_r), .a2(n670), .b(n669), .c(n668), .zn(n695) );
  ckbuf2 U673 ( .i(n695), .z(n706) );
  oa04d0 U674 ( .a1(rx_st_r), .a2(n670), .b(n706), .zn(n701) );
  ckbuf2 U675 ( .i(n701), .z(n704) );
  oa01d0 U676 ( .a1(n710), .a2(n706), .b1(n704), .b2(n672), .zn(n397) );
  oa01d0 U677 ( .a1(n709), .a2(n706), .b1(n704), .b2(n671), .zn(n396) );
  oa01d0 U678 ( .a1(n711), .a2(n706), .b1(n704), .b2(n673), .zn(n395) );
  oa01d0 U679 ( .a1(n712), .a2(n706), .b1(n704), .b2(n674), .zn(n394) );
  oa01d0 U680 ( .a1(n713), .a2(n706), .b1(n704), .b2(n675), .zn(n393) );
  oa01d0 U681 ( .a1(n714), .a2(n706), .b1(n704), .b2(n676), .zn(n392) );
  oa01d0 U682 ( .a1(n717), .a2(n706), .b1(n704), .b2(n677), .zn(n391) );
  oa01d0 U683 ( .a1(n716), .a2(n706), .b1(n704), .b2(n678), .zn(n390) );
  in01d0 U684 ( .i(rx_data[0]), .zn(n679) );
  oa01d0 U685 ( .a1(n706), .a2(n671), .b1(n701), .b2(n679), .zn(n389) );
  in01d0 U686 ( .i(rx_data[1]), .zn(n680) );
  oa01d0 U687 ( .a1(n695), .a2(n672), .b1(n704), .b2(n680), .zn(n388) );
  in01d0 U688 ( .i(rx_data[2]), .zn(n681) );
  oa01d1 U689 ( .a1(n695), .a2(n673), .b1(n704), .b2(n681), .zn(n387) );
  in01d0 U690 ( .i(rx_data[3]), .zn(n682) );
  oa01d1 U691 ( .a1(n695), .a2(n674), .b1(n704), .b2(n682), .zn(n386) );
  in01d0 U692 ( .i(rx_data[4]), .zn(n683) );
  oa01d1 U693 ( .a1(n695), .a2(n675), .b1(n704), .b2(n683), .zn(n385) );
  in01d0 U694 ( .i(rx_data[5]), .zn(n684) );
  oa01d0 U695 ( .a1(n706), .a2(n676), .b1(n704), .b2(n684), .zn(n384) );
  in01d0 U696 ( .i(rx_data[6]), .zn(n685) );
  oa01d0 U697 ( .a1(n706), .a2(n677), .b1(n704), .b2(n685), .zn(n383) );
  in01d0 U698 ( .i(rx_data[7]), .zn(n686) );
  oa01d0 U699 ( .a1(n706), .a2(n678), .b1(n704), .b2(n686), .zn(n382) );
  in01d0 U700 ( .i(rx_data[8]), .zn(n688) );
  oa01d0 U701 ( .a1(n706), .a2(n679), .b1(n704), .b2(n688), .zn(n381) );
  in01d0 U702 ( .i(rx_data[9]), .zn(n690) );
  oa01d0 U703 ( .a1(n706), .a2(n680), .b1(n704), .b2(n690), .zn(n380) );
  oa01d0 U704 ( .a1(n706), .a2(n681), .b1(n701), .b2(n692), .zn(n379) );
  oa01d0 U705 ( .a1(n706), .a2(n682), .b1(n701), .b2(n694), .zn(n378) );
  oa01d0 U706 ( .a1(n706), .a2(n683), .b1(n701), .b2(n697), .zn(n377) );
  oa01d0 U707 ( .a1(n706), .a2(n684), .b1(n704), .b2(n699), .zn(n376) );
  oa01d0 U708 ( .a1(n706), .a2(n685), .b1(n704), .b2(n702), .zn(n375) );
  oa01d0 U709 ( .a1(n706), .a2(n686), .b1(n704), .b2(n705), .zn(n374) );
  in01d0 U710 ( .i(rx_data[16]), .zn(n687) );
  oa01d0 U711 ( .a1(n706), .a2(n688), .b1(n704), .b2(n687), .zn(n373) );
  in01d0 U712 ( .i(rx_data[17]), .zn(n689) );
  oa01d0 U713 ( .a1(n706), .a2(n690), .b1(n704), .b2(n689), .zn(n372) );
  oa01d0 U714 ( .a1(n706), .a2(n692), .b1(n704), .b2(n691), .zn(n371) );
  oa01d1 U715 ( .a1(n695), .a2(n694), .b1(n704), .b2(n693), .zn(n370) );
  oa01d0 U716 ( .a1(n706), .a2(n697), .b1(n704), .b2(n696), .zn(n369) );
  oa01d0 U717 ( .a1(n706), .a2(n699), .b1(n704), .b2(n698), .zn(n368) );
  oa01d0 U718 ( .a1(n706), .a2(n702), .b1(n701), .b2(n700), .zn(n367) );
  oa01d0 U719 ( .a1(n706), .a2(n705), .b1(n704), .b2(n703), .zn(n366) );
  in01d0 U720 ( .i(sample_data[0]), .zn(n708) );
  ao01d0 U721 ( .a1(n718), .a2(n707), .b1(n708), .b2(n715), .zn(n365) );
  ao01d0 U722 ( .a1(n718), .a2(n708), .b1(n709), .b2(n715), .zn(n364) );
  ao01d0 U723 ( .a1(n718), .a2(n709), .b1(n710), .b2(n715), .zn(n363) );
  ao01d0 U724 ( .a1(n718), .a2(n710), .b1(n711), .b2(n715), .zn(n362) );
  ao01d0 U725 ( .a1(n718), .a2(n711), .b1(n712), .b2(n715), .zn(n361) );
  ao01d0 U726 ( .a1(n718), .a2(n712), .b1(n713), .b2(n715), .zn(n360) );
  ao01d0 U727 ( .a1(n718), .a2(n713), .b1(n714), .b2(n715), .zn(n359) );
  ao01d0 U728 ( .a1(n718), .a2(n714), .b1(n717), .b2(n715), .zn(n358) );
  ao01d0 U729 ( .a1(n718), .a2(n717), .b1(n716), .b2(n715), .zn(n357) );
  nr04d0 U3 ( .a1(low_dur_cnt[6]), .a2(low_dur_cnt[23]), .a3(n52), .a4(n720), 
        .zn(n168) );
  nd04d0 U9 ( .a1(n49), .a2(n48), .a3(n50), .a4(n721), .zn(n720) );
  ckinv0 U12 ( .i(n51), .zn(n721) );
  ckinv2 U136 ( .i(n581), .zn(n570) );
  nr02d0 U137 ( .a1(n670), .a2(n188), .zn(n581) );
endmodule


module fcp_crc_0 ( data_in, crc_en, crc_out, rst, clk );
  input [31:0] data_in;
  output [7:0] crc_out;
  input crc_en, rst, clk;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46;

  dfntnq lfsr_q_reg_0_ ( .d(n39), .cp(clk), .q(crc_out[0]) );
  dfntnq lfsr_q_reg_3_ ( .d(n42), .cp(clk), .q(crc_out[3]) );
  dfntnq lfsr_q_reg_1_ ( .d(n40), .cp(clk), .q(crc_out[1]) );
  dfntnq lfsr_q_reg_7_ ( .d(n46), .cp(clk), .q(crc_out[7]) );
  dfntnq lfsr_q_reg_5_ ( .d(n44), .cp(clk), .q(crc_out[5]) );
  dfntnq lfsr_q_reg_6_ ( .d(n45), .cp(clk), .q(crc_out[6]) );
  dfntnq lfsr_q_reg_4_ ( .d(n43), .cp(clk), .q(crc_out[4]) );
  dfntnq lfsr_q_reg_2_ ( .d(n41), .cp(clk), .q(crc_out[2]) );
  fn01d0 U2 ( .a1(rst), .b1(crc_en), .zn(n38) );
  xn02d0 U3 ( .a1(data_in[4]), .a2(data_in[3]), .zn(n28) );
  xn02d0 U4 ( .a1(data_in[0]), .a2(n28), .zn(n22) );
  in01d0 U5 ( .i(crc_out[2]), .zn(n6) );
  xn02d0 U6 ( .a1(data_in[5]), .a2(data_in[6]), .zn(n12) );
  fn03d0 U7 ( .a1(n6), .a2(n12), .b1(n12), .b2(n6), .zn(n1) );
  xn03d0 U8 ( .a1(n22), .a2(data_in[9]), .a3(n1), .zn(n2) );
  in01d0 U9 ( .i(crc_out[0]), .zn(n4) );
  or02d0 U10 ( .a1(rst), .a2(crc_en), .z(n36) );
  oa01d0 U11 ( .a1(n38), .a2(n2), .b1(n4), .b2(n36), .zn(n39) );
  xo02d0 U12 ( .a1(data_in[8]), .a2(crc_out[1]), .z(n25) );
  in01d0 U13 ( .i(crc_out[4]), .zn(n26) );
  xo02d0 U14 ( .a1(data_in[2]), .a2(n26), .z(n3) );
  xn03d0 U15 ( .a1(data_in[11]), .a2(n25), .a3(n3), .zn(n5) );
  xo02d0 U16 ( .a1(data_in[7]), .a2(n4), .z(n30) );
  xn03d0 U17 ( .a1(n12), .a2(n5), .a3(n30), .zn(n7) );
  oa01d1 U18 ( .a1(n38), .a2(n7), .b1(n36), .b2(n6), .zn(n41) );
  fn03d0 U19 ( .a1(data_in[1]), .a2(crc_out[7]), .b1(crc_out[7]), .b2(
        data_in[1]), .zn(n10) );
  xn02d0 U20 ( .a1(data_in[6]), .a2(data_in[2]), .zn(n8) );
  xn02d0 U21 ( .a1(data_in[3]), .a2(n8), .zn(n9) );
  xn03d0 U22 ( .a1(data_in[0]), .a2(n10), .a3(n9), .zn(n11) );
  in01d0 U23 ( .i(crc_out[5]), .zn(n17) );
  oa01d1 U24 ( .a1(n38), .a2(n11), .b1(n36), .b2(n17), .zn(n44) );
  xn02d0 U25 ( .a1(data_in[4]), .a2(n30), .zn(n19) );
  in01d0 U26 ( .i(crc_out[3]), .zn(n20) );
  xo03d1 U27 ( .a1(n20), .a2(data_in[1]), .a3(n12), .z(n13) );
  xn02d0 U28 ( .a1(n19), .a2(n13), .zn(n15) );
  in01d0 U29 ( .i(crc_out[1]), .zn(n14) );
  oa01d1 U30 ( .a1(n38), .a2(n15), .b1(n14), .b2(n36), .zn(n40) );
  xo02d0 U31 ( .a1(data_in[5]), .a2(n25), .z(n34) );
  in01d0 U32 ( .i(n34), .zn(n16) );
  xo03d1 U33 ( .a1(n17), .a2(data_in[0]), .a3(n16), .z(n18) );
  xn02d0 U34 ( .a1(n19), .a2(n18), .zn(n21) );
  oa01d1 U35 ( .a1(n38), .a2(n21), .b1(n20), .b2(n36), .zn(n42) );
  in01d0 U36 ( .i(crc_out[6]), .zn(n31) );
  xn02d0 U37 ( .a1(data_in[1]), .a2(n22), .zn(n23) );
  xo02d0 U38 ( .a1(n31), .a2(n23), .z(n24) );
  xn02d0 U39 ( .a1(n25), .a2(n24), .zn(n27) );
  oa01d1 U40 ( .a1(n38), .a2(n27), .b1(n36), .b2(n26), .zn(n43) );
  xo02d0 U41 ( .a1(data_in[2]), .a2(n28), .z(n33) );
  fn03d0 U42 ( .a1(data_in[1]), .a2(n33), .b1(n33), .b2(data_in[1]), .zn(n29)
         );
  xn02d0 U43 ( .a1(n30), .a2(n29), .zn(n32) );
  oa01d1 U44 ( .a1(n38), .a2(n32), .b1(n36), .b2(n31), .zn(n45) );
  xo02d0 U45 ( .a1(n34), .a2(n33), .z(n37) );
  in01d0 U46 ( .i(crc_out[7]), .zn(n35) );
  oa01d1 U47 ( .a1(n38), .a2(n37), .b1(n36), .b2(n35), .zn(n46) );
endmodule


module fcp_tx_ctrl_UI_CYCLE160 ( clk, rstn, tx_en, tx_type, tx_afc, tx_data, 
        tune_up, tune_cycle, data, tx_done );
  input [15:0] tx_data;
  input [7:0] tune_cycle;
  input clk, rstn, tx_en, tx_type, tx_afc, tune_up;
  output data, tx_done;
  wire   tx_en_r, tx_init, tx_start, N73, N74, N75, N76, N77, N78, N79, N80,
         N81, N82, N83, N84, N85, N86, N87, N88, N89, N90, N91, N92, N93, N94,
         N95, N96, N97, N98, N99, N100, N101, N102, N103, N104, tx_type_reg,
         respond_rd, tx_afc_reg, parity_value, crc_en, n246, n247, n248, n249,
         n250, n251, n252, n253, n254, n255, n256, n258, n263, n264, n265,
         n266, n267, n268, n269, n270, n271, n272, n273, n274, n275, n276,
         n277, n278, n279, n280, n281, n282, n283, n284, n285, n286, n287,
         n288, n289, n290, n291, n292, n293, n294, n295, n296, n297, n298,
         n299, n300, n301, n302, n303, n304, n305, n306, n307, n308, n309,
         n310, n311, n312, n313, n314, n315, n316, n1, n3, n5, n6, n7, n8, n9,
         n10, n11, n12, n13, n14, n15, n16, n17, n20, n21, n22, n23, n24, n25,
         n26, n27, n28, n29, n30, n31, n32, n33, n36, n37, n38, n39, n40, n41,
         n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55,
         n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69,
         n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83,
         n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97,
         n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109,
         n110, n111, n112, n113, n114, n115, n116, n117, n118, n119, n120,
         n121, n122, n123, n124, n125, n126, n127, n128, n129, n130, n131,
         n132, n133, n134, n135, n136, n137, n138, n139, n140, n141, n142,
         n143, n144, n145, n146, n147, n148, n149, n150, n151, n152, n153,
         n154, n155, n156, n157, n158, n159, n161, n163, n164, n166, n167,
         n168, n169, n170, n171, n172, n173, n174, n175, n176, n177, n178,
         n179, n180, n181, n182, n183, n184, n185, n186, n187, n188, n189,
         n190, n191, n192, n193, n194, n195, n196, n197, n198, n199, n200,
         n201, n202, n203, n204, n205, n206, n207, n208, n209, n210, n211,
         n212, n213, n214, n215, n216, n217, n218, n219, n220, n221, n222,
         n223, n224, n225, n226, n227, n228, n229, n230, n231, n232, n233,
         n234, n235, n236, n237, n238, n239, n240, n241, n242, n243, n244,
         n245, n257, n259, n260, n261, n262, n317, n318, n319, n320, n321,
         n322, n323, n324, n325, n326, n327, n328, n329, n330, n331, n332,
         n333, n334, n335, n336, n337, n338, n339, n340, n341, n342, n343,
         n344, n345, n346, n347, n348, n349, n350, n351, n352, n353, n354,
         n355, n356, n357, n358, n359, n360, n361, n362, n363, n364, n365,
         n366, n367, n368, n369, n370, n371, n372, n373, n374, n375, n376,
         n377, n378, n379, n380, n381, n382, n383, n384, n385, n386, n387,
         n388, n389, n390, n391, n392, n393, n394, n395, n396, n397, n398,
         n399, n400, n401, n402, n403, n404, n405, n406, n407, n408, n409,
         n410, n411, n412, n413, n414, n416, n417, n418, n419;
  wire   [31:0] cycle_cnt_for_UI;
  wire   [1:0] tx_cur_st;
  wire   [3:0] UI_cnt;
  wire   [31:0] cycle_cnt_for_quarter_UI;
  wire   [15:0] tx_data_reg;
  wire   [1:0] byte_cnt;
  wire   [7:0] crc_data;
  wire   [7:0] data_for_tx;
  wire   [1:0] num_of_quarter_UI;

  fcp_crc_0 U_CRC ( .data_in({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        tx_data_reg[11], 1'b0, tx_data_reg[9:0]}), .crc_en(crc_en), .crc_out(
        crc_data), .rst(tx_done), .clk(clk) );
  dfctnq tx_en_r_reg ( .d(tx_en), .cp(clk), .cdn(rstn), .q(tx_en_r) );
  dfctnq tx_start_reg ( .d(tx_init), .cp(clk), .cdn(rstn), .q(tx_start) );
  dfctnq tx_type_reg_reg ( .d(n314), .cp(clk), .cdn(rstn), .q(tx_type_reg) );
  dfctnq tx_cur_st_reg_0_ ( .d(n315), .cp(clk), .cdn(rstn), .q(tx_cur_st[0])
         );
  dfctnq tx_cur_st_reg_1_ ( .d(n316), .cp(clk), .cdn(rstn), .q(tx_cur_st[1])
         );
  dfctnq cycle_cnt_for_UI_reg_1_ ( .d(N74), .cp(clk), .cdn(rstn), .q(
        cycle_cnt_for_UI[1]) );
  dfctnq cycle_cnt_for_UI_reg_2_ ( .d(N75), .cp(clk), .cdn(rstn), .q(
        cycle_cnt_for_UI[2]) );
  dfctnq cycle_cnt_for_UI_reg_3_ ( .d(N76), .cp(clk), .cdn(rstn), .q(
        cycle_cnt_for_UI[3]) );
  dfctnq cycle_cnt_for_UI_reg_4_ ( .d(N77), .cp(clk), .cdn(rstn), .q(
        cycle_cnt_for_UI[4]) );
  dfctnq cycle_cnt_for_UI_reg_5_ ( .d(N78), .cp(clk), .cdn(rstn), .q(
        cycle_cnt_for_UI[5]) );
  dfctnq cycle_cnt_for_UI_reg_6_ ( .d(N79), .cp(clk), .cdn(rstn), .q(
        cycle_cnt_for_UI[6]) );
  dfctnq cycle_cnt_for_UI_reg_7_ ( .d(N80), .cp(clk), .cdn(rstn), .q(
        cycle_cnt_for_UI[7]) );
  dfctnq cycle_cnt_for_UI_reg_8_ ( .d(N81), .cp(clk), .cdn(rstn), .q(
        cycle_cnt_for_UI[8]) );
  dfctnq cycle_cnt_for_UI_reg_9_ ( .d(N82), .cp(clk), .cdn(rstn), .q(
        cycle_cnt_for_UI[9]) );
  dfctnq cycle_cnt_for_UI_reg_10_ ( .d(N83), .cp(clk), .cdn(rstn), .q(
        cycle_cnt_for_UI[10]) );
  dfctnq cycle_cnt_for_UI_reg_11_ ( .d(N84), .cp(clk), .cdn(rstn), .q(
        cycle_cnt_for_UI[11]) );
  dfctnq cycle_cnt_for_UI_reg_12_ ( .d(N85), .cp(clk), .cdn(rstn), .q(
        cycle_cnt_for_UI[12]) );
  dfctnq cycle_cnt_for_UI_reg_13_ ( .d(N86), .cp(clk), .cdn(rstn), .q(
        cycle_cnt_for_UI[13]) );
  dfctnq cycle_cnt_for_UI_reg_14_ ( .d(N87), .cp(clk), .cdn(rstn), .q(
        cycle_cnt_for_UI[14]) );
  dfctnq cycle_cnt_for_UI_reg_15_ ( .d(N88), .cp(clk), .cdn(rstn), .q(
        cycle_cnt_for_UI[15]) );
  dfctnq cycle_cnt_for_UI_reg_16_ ( .d(N89), .cp(clk), .cdn(rstn), .q(
        cycle_cnt_for_UI[16]) );
  dfctnq cycle_cnt_for_UI_reg_17_ ( .d(N90), .cp(clk), .cdn(rstn), .q(
        cycle_cnt_for_UI[17]) );
  dfctnq cycle_cnt_for_UI_reg_18_ ( .d(N91), .cp(clk), .cdn(rstn), .q(
        cycle_cnt_for_UI[18]) );
  dfctnq cycle_cnt_for_UI_reg_19_ ( .d(N92), .cp(clk), .cdn(rstn), .q(
        cycle_cnt_for_UI[19]) );
  dfctnq cycle_cnt_for_UI_reg_20_ ( .d(N93), .cp(clk), .cdn(rstn), .q(
        cycle_cnt_for_UI[20]) );
  dfctnq cycle_cnt_for_UI_reg_21_ ( .d(N94), .cp(clk), .cdn(rstn), .q(
        cycle_cnt_for_UI[21]) );
  dfctnq cycle_cnt_for_UI_reg_22_ ( .d(N95), .cp(clk), .cdn(rstn), .q(
        cycle_cnt_for_UI[22]) );
  dfctnq cycle_cnt_for_UI_reg_23_ ( .d(N96), .cp(clk), .cdn(rstn), .q(
        cycle_cnt_for_UI[23]) );
  dfctnq cycle_cnt_for_UI_reg_24_ ( .d(N97), .cp(clk), .cdn(rstn), .q(
        cycle_cnt_for_UI[24]) );
  dfctnq cycle_cnt_for_UI_reg_25_ ( .d(N98), .cp(clk), .cdn(rstn), .q(
        cycle_cnt_for_UI[25]) );
  dfctnq cycle_cnt_for_UI_reg_26_ ( .d(N99), .cp(clk), .cdn(rstn), .q(
        cycle_cnt_for_UI[26]) );
  dfctnq cycle_cnt_for_UI_reg_27_ ( .d(N100), .cp(clk), .cdn(rstn), .q(
        cycle_cnt_for_UI[27]) );
  dfctnq cycle_cnt_for_UI_reg_28_ ( .d(N101), .cp(clk), .cdn(rstn), .q(
        cycle_cnt_for_UI[28]) );
  dfctnq cycle_cnt_for_UI_reg_29_ ( .d(N102), .cp(clk), .cdn(rstn), .q(
        cycle_cnt_for_UI[29]) );
  dfctnq cycle_cnt_for_UI_reg_30_ ( .d(N103), .cp(clk), .cdn(rstn), .q(
        cycle_cnt_for_UI[30]) );
  dfctnq cycle_cnt_for_UI_reg_31_ ( .d(N104), .cp(clk), .cdn(rstn), .q(
        cycle_cnt_for_UI[31]) );
  dfctnq UI_cnt_reg_0_ ( .d(n307), .cp(clk), .cdn(rstn), .q(UI_cnt[0]) );
  dfctnq UI_cnt_reg_1_ ( .d(n305), .cp(clk), .cdn(rstn), .q(UI_cnt[1]) );
  dfctnq UI_cnt_reg_2_ ( .d(n306), .cp(clk), .cdn(rstn), .q(UI_cnt[2]) );
  dfctnq UI_cnt_reg_3_ ( .d(n313), .cp(clk), .cdn(rstn), .q(UI_cnt[3]) );
  dfctnq byte_cnt_reg_0_ ( .d(n311), .cp(clk), .cdn(rstn), .q(byte_cnt[0]) );
  dfctnq byte_cnt_reg_1_ ( .d(n312), .cp(clk), .cdn(rstn), .q(byte_cnt[1]) );
  dfctnq data_for_tx_reg_6_ ( .d(n297), .cp(clk), .cdn(rstn), .q(
        data_for_tx[6]) );
  dfctnq data_for_tx_reg_7_ ( .d(n304), .cp(clk), .cdn(rstn), .q(
        data_for_tx[7]) );
  dfctnq data_for_tx_reg_0_ ( .d(n303), .cp(clk), .cdn(rstn), .q(
        data_for_tx[0]) );
  dfctnq data_for_tx_reg_1_ ( .d(n302), .cp(clk), .cdn(rstn), .q(
        data_for_tx[1]) );
  dfctnq data_for_tx_reg_2_ ( .d(n301), .cp(clk), .cdn(rstn), .q(
        data_for_tx[2]) );
  dfctnq data_for_tx_reg_3_ ( .d(n300), .cp(clk), .cdn(rstn), .q(
        data_for_tx[3]) );
  dfctnq data_for_tx_reg_4_ ( .d(n299), .cp(clk), .cdn(rstn), .q(
        data_for_tx[4]) );
  dfctnq data_for_tx_reg_5_ ( .d(n298), .cp(clk), .cdn(rstn), .q(
        data_for_tx[5]) );
  dfctnq parity_value_reg ( .d(n310), .cp(clk), .cdn(rstn), .q(parity_value)
         );
  dfctnq cycle_cnt_for_quarter_UI_reg_31_ ( .d(n265), .cp(clk), .cdn(rstn), 
        .q(cycle_cnt_for_quarter_UI[31]) );
  dfctnq cycle_cnt_for_UI_reg_0_ ( .d(N73), .cp(clk), .cdn(rstn), .q(
        cycle_cnt_for_UI[0]) );
  dfctnq cycle_cnt_for_quarter_UI_reg_1_ ( .d(n308), .cp(clk), .cdn(rstn), .q(
        cycle_cnt_for_quarter_UI[1]) );
  dfctnq cycle_cnt_for_quarter_UI_reg_2_ ( .d(n294), .cp(clk), .cdn(rstn), .q(
        cycle_cnt_for_quarter_UI[2]) );
  dfctnq cycle_cnt_for_quarter_UI_reg_3_ ( .d(n293), .cp(clk), .cdn(rstn), .q(
        cycle_cnt_for_quarter_UI[3]) );
  dfctnq cycle_cnt_for_quarter_UI_reg_4_ ( .d(n292), .cp(clk), .cdn(rstn), .q(
        cycle_cnt_for_quarter_UI[4]) );
  dfctnq cycle_cnt_for_quarter_UI_reg_5_ ( .d(n291), .cp(clk), .cdn(rstn), .q(
        cycle_cnt_for_quarter_UI[5]) );
  dfctnq cycle_cnt_for_quarter_UI_reg_6_ ( .d(n290), .cp(clk), .cdn(rstn), .q(
        cycle_cnt_for_quarter_UI[6]) );
  dfctnq cycle_cnt_for_quarter_UI_reg_7_ ( .d(n289), .cp(clk), .cdn(rstn), .q(
        cycle_cnt_for_quarter_UI[7]) );
  dfctnq cycle_cnt_for_quarter_UI_reg_8_ ( .d(n288), .cp(clk), .cdn(rstn), .q(
        cycle_cnt_for_quarter_UI[8]) );
  dfctnq cycle_cnt_for_quarter_UI_reg_9_ ( .d(n287), .cp(clk), .cdn(rstn), .q(
        cycle_cnt_for_quarter_UI[9]) );
  dfctnq cycle_cnt_for_quarter_UI_reg_10_ ( .d(n286), .cp(clk), .cdn(rstn), 
        .q(cycle_cnt_for_quarter_UI[10]) );
  dfctnq cycle_cnt_for_quarter_UI_reg_11_ ( .d(n285), .cp(clk), .cdn(rstn), 
        .q(cycle_cnt_for_quarter_UI[11]) );
  dfctnq cycle_cnt_for_quarter_UI_reg_12_ ( .d(n284), .cp(clk), .cdn(rstn), 
        .q(cycle_cnt_for_quarter_UI[12]) );
  dfctnq cycle_cnt_for_quarter_UI_reg_13_ ( .d(n283), .cp(clk), .cdn(rstn), 
        .q(cycle_cnt_for_quarter_UI[13]) );
  dfctnq cycle_cnt_for_quarter_UI_reg_14_ ( .d(n282), .cp(clk), .cdn(rstn), 
        .q(cycle_cnt_for_quarter_UI[14]) );
  dfctnq cycle_cnt_for_quarter_UI_reg_15_ ( .d(n281), .cp(clk), .cdn(rstn), 
        .q(cycle_cnt_for_quarter_UI[15]) );
  dfctnq cycle_cnt_for_quarter_UI_reg_16_ ( .d(n280), .cp(clk), .cdn(rstn), 
        .q(cycle_cnt_for_quarter_UI[16]) );
  dfctnq cycle_cnt_for_quarter_UI_reg_17_ ( .d(n279), .cp(clk), .cdn(rstn), 
        .q(cycle_cnt_for_quarter_UI[17]) );
  dfctnq cycle_cnt_for_quarter_UI_reg_18_ ( .d(n278), .cp(clk), .cdn(rstn), 
        .q(cycle_cnt_for_quarter_UI[18]) );
  dfctnq cycle_cnt_for_quarter_UI_reg_19_ ( .d(n277), .cp(clk), .cdn(rstn), 
        .q(cycle_cnt_for_quarter_UI[19]) );
  dfctnq cycle_cnt_for_quarter_UI_reg_20_ ( .d(n276), .cp(clk), .cdn(rstn), 
        .q(cycle_cnt_for_quarter_UI[20]) );
  dfctnq cycle_cnt_for_quarter_UI_reg_21_ ( .d(n275), .cp(clk), .cdn(rstn), 
        .q(cycle_cnt_for_quarter_UI[21]) );
  dfctnq cycle_cnt_for_quarter_UI_reg_22_ ( .d(n274), .cp(clk), .cdn(rstn), 
        .q(cycle_cnt_for_quarter_UI[22]) );
  dfctnq cycle_cnt_for_quarter_UI_reg_23_ ( .d(n273), .cp(clk), .cdn(rstn), 
        .q(cycle_cnt_for_quarter_UI[23]) );
  dfctnq cycle_cnt_for_quarter_UI_reg_24_ ( .d(n272), .cp(clk), .cdn(rstn), 
        .q(cycle_cnt_for_quarter_UI[24]) );
  dfctnq cycle_cnt_for_quarter_UI_reg_25_ ( .d(n271), .cp(clk), .cdn(rstn), 
        .q(cycle_cnt_for_quarter_UI[25]) );
  dfctnq cycle_cnt_for_quarter_UI_reg_26_ ( .d(n270), .cp(clk), .cdn(rstn), 
        .q(cycle_cnt_for_quarter_UI[26]) );
  dfctnq cycle_cnt_for_quarter_UI_reg_27_ ( .d(n269), .cp(clk), .cdn(rstn), 
        .q(cycle_cnt_for_quarter_UI[27]) );
  dfctnq cycle_cnt_for_quarter_UI_reg_28_ ( .d(n268), .cp(clk), .cdn(rstn), 
        .q(cycle_cnt_for_quarter_UI[28]) );
  dfctnq cycle_cnt_for_quarter_UI_reg_29_ ( .d(n267), .cp(clk), .cdn(rstn), 
        .q(cycle_cnt_for_quarter_UI[29]) );
  dfctnq cycle_cnt_for_quarter_UI_reg_30_ ( .d(n266), .cp(clk), .cdn(rstn), 
        .q(cycle_cnt_for_quarter_UI[30]) );
  dfctnq cycle_cnt_for_quarter_UI_reg_0_ ( .d(n295), .cp(clk), .cdn(rstn), .q(
        cycle_cnt_for_quarter_UI[0]) );
  dfctnq data_reg ( .d(n264), .cp(clk), .cdn(rstn), .q(data) );
  dfntnq tx_afc_reg_reg ( .d(n263), .cp(clk), .q(tx_afc_reg) );
  dfctnq tx_data_reg_reg_11_ ( .d(n258), .cp(clk), .cdn(rstn), .q(
        tx_data_reg[11]) );
  dfctnq tx_data_reg_reg_9_ ( .d(n256), .cp(clk), .cdn(rstn), .q(
        tx_data_reg[9]) );
  dfctnq tx_data_reg_reg_8_ ( .d(n255), .cp(clk), .cdn(rstn), .q(
        tx_data_reg[8]) );
  dfctnq tx_data_reg_reg_7_ ( .d(n254), .cp(clk), .cdn(rstn), .q(
        tx_data_reg[7]) );
  dfctnq tx_data_reg_reg_6_ ( .d(n253), .cp(clk), .cdn(rstn), .q(
        tx_data_reg[6]) );
  dfctnq tx_data_reg_reg_5_ ( .d(n252), .cp(clk), .cdn(rstn), .q(
        tx_data_reg[5]) );
  dfctnq tx_data_reg_reg_4_ ( .d(n251), .cp(clk), .cdn(rstn), .q(
        tx_data_reg[4]) );
  dfctnq tx_data_reg_reg_3_ ( .d(n250), .cp(clk), .cdn(rstn), .q(
        tx_data_reg[3]) );
  dfctnq tx_data_reg_reg_2_ ( .d(n249), .cp(clk), .cdn(rstn), .q(
        tx_data_reg[2]) );
  dfctnq tx_data_reg_reg_1_ ( .d(n248), .cp(clk), .cdn(rstn), .q(
        tx_data_reg[1]) );
  dfctnq tx_data_reg_reg_0_ ( .d(n247), .cp(clk), .cdn(rstn), .q(
        tx_data_reg[0]) );
  dfctnq respond_rd_reg ( .d(n246), .cp(clk), .cdn(rstn), .q(respond_rd) );
  dfptnq num_of_quarter_UI_reg_0_ ( .d(n296), .cp(clk), .sdn(rstn), .q(
        num_of_quarter_UI[0]) );
  dfptnq num_of_quarter_UI_reg_1_ ( .d(n309), .cp(clk), .sdn(rstn), .q(
        num_of_quarter_UI[1]) );
  in01d3 U3 ( .i(n391), .zn(n389) );
  nd03d2 U4 ( .a1(n38), .a2(n37), .a3(n36), .zn(n39) );
  nr03d2 U5 ( .a1(n206), .a2(tx_start), .a3(n39), .zn(n234) );
  ao03d2 U6 ( .a1(respond_rd), .a2(n209), .b1(n213), .b2(n208), .c(n207), .zn(
        n236) );
  oa04d1 U7 ( .a1(n202), .a2(n39), .b(n214), .zn(n239) );
  fn05d2 U8 ( .a1(n62), .b1(n194), .zn(tx_done) );
  nd03d0 U9 ( .a1(n404), .a2(n315), .a3(n316), .zn(n410) );
  nd02d0 U10 ( .a1(n389), .a2(n392), .zn(n395) );
  nd02d0 U11 ( .a1(n389), .a2(n368), .zn(n372) );
  nd02d0 U12 ( .a1(n389), .a2(n355), .zn(n359) );
  nd02d0 U13 ( .a1(n389), .a2(n334), .zn(n338) );
  nd02d0 U14 ( .a1(n389), .a2(n321), .zn(n324) );
  nr02d0 U15 ( .a1(n204), .a2(n209), .zn(n202) );
  in01d0 U16 ( .i(n406), .zn(n408) );
  nr02d0 U17 ( .a1(n183), .a2(n182), .zn(n181) );
  nr02d0 U18 ( .a1(n151), .a2(n150), .zn(n149) );
  nr02d0 U19 ( .a1(n123), .a2(n122), .zn(n121) );
  nr02d0 U20 ( .a1(n135), .a2(n134), .zn(n133) );
  in01d0 U21 ( .i(n86), .zn(n248) );
  in01d0 U22 ( .i(n97), .zn(N89) );
  in01d0 U23 ( .i(n95), .zn(N74) );
  nr03d0 U24 ( .a1(cycle_cnt_for_UI[14]), .a2(cycle_cnt_for_UI[20]), .a3(
        cycle_cnt_for_UI[21]), .zn(n38) );
  or04d0 U25 ( .a1(cycle_cnt_for_UI[16]), .a2(cycle_cnt_for_UI[13]), .a3(
        cycle_cnt_for_UI[10]), .a4(cycle_cnt_for_UI[12]), .z(n1) );
  nr04d0 U26 ( .a1(cycle_cnt_for_UI[23]), .a2(cycle_cnt_for_UI[17]), .a3(
        cycle_cnt_for_UI[11]), .a4(n1), .zn(n3) );
  in01d0 U29 ( .i(tune_up), .zn(n15) );
  nr04d0 U30 ( .a1(tune_cycle[3]), .a2(tune_cycle[2]), .a3(tune_cycle[0]), 
        .a4(tune_cycle[1]), .zn(n10) );
  fn05d0 U31 ( .a1(n10), .b1(tune_cycle[4]), .zn(n6) );
  nd02d0 U34 ( .a1(n6), .a2(n15), .zn(n5) );
  nd02d0 U35 ( .a1(n5), .a2(tune_cycle[5]), .zn(n40) );
  nr02d0 U36 ( .a1(tune_up), .a2(n6), .zn(n7) );
  xo02d0 U37 ( .a1(tune_cycle[5]), .a2(n7), .z(n53) );
  oa01d0 U38 ( .a1(n40), .a2(cycle_cnt_for_UI[6]), .b1(n53), .b2(
        cycle_cnt_for_UI[5]), .zn(n8) );
  ao03d0 U39 ( .a1(n40), .a2(cycle_cnt_for_UI[6]), .b1(cycle_cnt_for_UI[5]), 
        .b2(n53), .c(n8), .zn(n33) );
  oa04d0 U40 ( .a1(tune_cycle[0]), .a2(tune_cycle[1]), .b(n15), .zn(n9) );
  xo02d0 U41 ( .a1(tune_cycle[2]), .a2(n9), .z(n49) );
  nr02d0 U42 ( .a1(tune_up), .a2(n10), .zn(n11) );
  xn02d0 U43 ( .a1(tune_cycle[4]), .a2(n11), .zn(n52) );
  nr03d0 U44 ( .a1(tune_cycle[2]), .a2(tune_cycle[0]), .a3(tune_cycle[1]), 
        .zn(n12) );
  nr02d0 U45 ( .a1(n12), .a2(tune_up), .zn(n13) );
  xn02d0 U46 ( .a1(n13), .a2(tune_cycle[3]), .zn(n50) );
  oa01d0 U47 ( .a1(n52), .a2(cycle_cnt_for_UI[4]), .b1(n50), .b2(
        cycle_cnt_for_UI[3]), .zn(n14) );
  ao03d0 U48 ( .a1(n52), .a2(cycle_cnt_for_UI[4]), .b1(cycle_cnt_for_UI[3]), 
        .b2(n50), .c(n14), .zn(n30) );
  nd02d0 U49 ( .a1(n15), .a2(tune_cycle[0]), .zn(n16) );
  xo02d0 U50 ( .a1(cycle_cnt_for_UI[1]), .a2(n16), .z(n27) );
  in01d0 U51 ( .i(cycle_cnt_for_UI[31]), .zn(n189) );
  in01d0 U54 ( .i(cycle_cnt_for_UI[9]), .zn(n138) );
  nd03d0 U55 ( .a1(n189), .a2(n17), .a3(n138), .zn(n25) );
  in01d0 U56 ( .i(cycle_cnt_for_UI[29]), .zn(n186) );
  in01d0 U61 ( .i(tune_cycle[0]), .zn(n21) );
  in01d0 U62 ( .i(cycle_cnt_for_UI[0]), .zn(n20) );
  ao03d0 U63 ( .a1(cycle_cnt_for_UI[0]), .a2(n21), .b1(n20), .b2(tune_cycle[0]), .c(cycle_cnt_for_UI[28]), .zn(n22) );
  nd03d0 U64 ( .a1(n186), .a2(n23), .a3(n22), .zn(n24) );
  ao05d0 U65 ( .a1(n27), .a2(tune_cycle[1]), .b(n25), .c(n24), .zn(n26) );
  oa04d0 U66 ( .a1(n27), .a2(tune_cycle[1]), .b(n26), .zn(n28) );
  ao04d0 U67 ( .a1(cycle_cnt_for_UI[2]), .a2(n49), .b(n28), .zn(n29) );
  oa05d0 U68 ( .a1(cycle_cnt_for_UI[2]), .a2(n49), .b(n30), .c(n29), .zn(n31)
         );
  ao04d0 U69 ( .a1(cycle_cnt_for_UI[7]), .a2(n57), .b(n31), .zn(n32) );
  in01d0 U73 ( .i(UI_cnt[3]), .zn(n195) );
  nr02d0 U74 ( .a1(n39), .a2(n195), .zn(n62) );
  nd03d0 U75 ( .a1(UI_cnt[0]), .a2(UI_cnt[2]), .a3(UI_cnt[1]), .zn(n194) );
  in01d0 U76 ( .i(tx_cur_st[1]), .zn(n66) );
  in01d0 U77 ( .i(tx_type), .zn(n63) );
  in01d0 U78 ( .i(cycle_cnt_for_quarter_UI[4]), .zn(n243) );
  xo02d0 U79 ( .a1(n243), .a2(n40), .z(n61) );
  in01d0 U80 ( .i(cycle_cnt_for_quarter_UI[26]), .zn(n384) );
  in01d0 U81 ( .i(cycle_cnt_for_quarter_UI[28]), .zn(n393) );
  in01d0 U82 ( .i(cycle_cnt_for_quarter_UI[27]), .zn(n392) );
  in01d0 U83 ( .i(cycle_cnt_for_quarter_UI[23]), .zn(n375) );
  nd04d0 U84 ( .a1(n384), .a2(n393), .a3(n392), .a4(n375), .zn(n46) );
  nr04d0 U85 ( .a1(cycle_cnt_for_quarter_UI[21]), .a2(
        cycle_cnt_for_quarter_UI[17]), .a3(cycle_cnt_for_quarter_UI[19]), .a4(
        cycle_cnt_for_quarter_UI[18]), .zn(n44) );
  nr04d0 U86 ( .a1(cycle_cnt_for_quarter_UI[25]), .a2(
        cycle_cnt_for_quarter_UI[24]), .a3(cycle_cnt_for_quarter_UI[20]), .a4(
        cycle_cnt_for_quarter_UI[22]), .zn(n43) );
  nr04d0 U87 ( .a1(cycle_cnt_for_quarter_UI[13]), .a2(
        cycle_cnt_for_quarter_UI[12]), .a3(cycle_cnt_for_quarter_UI[7]), .a4(
        cycle_cnt_for_quarter_UI[8]), .zn(n42) );
  nr04d0 U88 ( .a1(cycle_cnt_for_quarter_UI[14]), .a2(
        cycle_cnt_for_quarter_UI[16]), .a3(cycle_cnt_for_quarter_UI[15]), .a4(
        cycle_cnt_for_quarter_UI[11]), .zn(n41) );
  nd04d0 U89 ( .a1(n44), .a2(n43), .a3(n42), .a4(n41), .zn(n45) );
  nr04d0 U90 ( .a1(cycle_cnt_for_quarter_UI[10]), .a2(
        cycle_cnt_for_quarter_UI[9]), .a3(n46), .a4(n45), .zn(n47) );
  in01d0 U91 ( .i(cycle_cnt_for_quarter_UI[29]), .zn(n169) );
  nd02d0 U92 ( .a1(n47), .a2(n169), .zn(n60) );
  ao01d0 U93 ( .a1(n50), .a2(cycle_cnt_for_quarter_UI[1]), .b1(n49), .b2(
        cycle_cnt_for_quarter_UI[0]), .zn(n48) );
  oa03d0 U94 ( .a1(n50), .a2(cycle_cnt_for_quarter_UI[1]), .b1(n49), .b2(
        cycle_cnt_for_quarter_UI[0]), .c(n48), .zn(n55) );
  ao01d0 U95 ( .a1(n53), .a2(cycle_cnt_for_quarter_UI[3]), .b1(n52), .b2(
        cycle_cnt_for_quarter_UI[2]), .zn(n51) );
  oa03d0 U96 ( .a1(n53), .a2(cycle_cnt_for_quarter_UI[3]), .b1(n52), .b2(
        cycle_cnt_for_quarter_UI[2]), .c(n51), .zn(n54) );
  or04d0 U97 ( .a1(cycle_cnt_for_quarter_UI[31]), .a2(
        cycle_cnt_for_quarter_UI[30]), .a3(n55), .a4(n54), .z(n59) );
  ao04d0 U98 ( .a1(n57), .a2(cycle_cnt_for_quarter_UI[5]), .b(
        cycle_cnt_for_quarter_UI[6]), .zn(n56) );
  oa04d0 U99 ( .a1(n57), .a2(cycle_cnt_for_quarter_UI[5]), .b(n56), .zn(n58)
         );
  or04d0 U100 ( .a1(n61), .a2(n60), .a3(n59), .a4(n58), .z(n198) );
  or02d0 U101 ( .a1(num_of_quarter_UI[0]), .a2(n198), .z(n91) );
  nr02d0 U102 ( .a1(num_of_quarter_UI[1]), .a2(n91), .zn(n197) );
  ao07d0 U103 ( .a1(tx_start), .a2(n66), .a3(n63), .b1(n197), .b2(tx_cur_st[1]), .zn(n115) );
  in01d0 U104 ( .i(tx_cur_st[0]), .zn(n67) );
  nr03d0 U105 ( .a1(UI_cnt[0]), .a2(UI_cnt[2]), .a3(UI_cnt[1]), .zn(n93) );
  nd03d0 U106 ( .a1(tx_type_reg), .a2(n93), .a3(n62), .zn(n203) );
  in01d0 U107 ( .i(tx_done), .zn(n146) );
  ao03d0 U108 ( .a1(tx_cur_st[1]), .a2(n203), .b1(n66), .b2(n146), .c(n67), 
        .zn(n401) );
  ao04d0 U109 ( .a1(n115), .a2(n67), .b(n401), .zn(n315) );
  in01d0 U110 ( .i(tx_start), .zn(n214) );
  nr02d0 U111 ( .a1(n63), .a2(n214), .zn(crc_en) );
  in01d0 U112 ( .i(byte_cnt[1]), .zn(n204) );
  nr02d0 U113 ( .a1(respond_rd), .a2(n204), .zn(n65) );
  ao01d0 U114 ( .a1(byte_cnt[0]), .a2(n65), .b1(tx_afc_reg), .b2(byte_cnt[1]), 
        .zn(n64) );
  oa03d0 U115 ( .a1(byte_cnt[0]), .a2(n65), .b1(tx_afc_reg), .b2(byte_cnt[1]), 
        .c(n64), .zn(n87) );
  nr03d0 U116 ( .a1(tx_cur_st[0]), .a2(n66), .a3(n87), .zn(n69) );
  ao04d0 U117 ( .a1(crc_en), .a2(n67), .b(tx_cur_st[1]), .zn(n68) );
  ao04d0 U118 ( .a1(n69), .a2(n197), .b(n68), .zn(n316) );
  oa05d0 U119 ( .a1(n315), .a2(n316), .b(n39), .c(n198), .zn(n70) );
  ckbuf2 U120 ( .i(n70), .z(n187) );
  in01d0 U121 ( .i(cycle_cnt_for_UI[2]), .zn(n126) );
  nd02d0 U122 ( .a1(cycle_cnt_for_UI[1]), .a2(cycle_cnt_for_UI[0]), .zn(n125)
         );
  nr02d0 U123 ( .a1(n126), .a2(n125), .zn(n124) );
  nd02d0 U124 ( .a1(cycle_cnt_for_UI[3]), .a2(n124), .zn(n134) );
  oa04d0 U125 ( .a1(cycle_cnt_for_UI[3]), .a2(n124), .b(n134), .zn(n71) );
  nr02d0 U126 ( .a1(n187), .a2(n71), .zn(N76) );
  in01d0 U127 ( .i(cycle_cnt_for_UI[4]), .zn(n135) );
  nd02d0 U128 ( .a1(cycle_cnt_for_UI[5]), .a2(n133), .zn(n140) );
  oa04d0 U129 ( .a1(cycle_cnt_for_UI[5]), .a2(n133), .b(n140), .zn(n72) );
  nr02d0 U130 ( .a1(n187), .a2(n72), .zn(N78) );
  in01d0 U131 ( .i(cycle_cnt_for_UI[6]), .zn(n141) );
  nr02d0 U132 ( .a1(n141), .a2(n140), .zn(n139) );
  nd02d0 U133 ( .a1(cycle_cnt_for_UI[7]), .a2(n139), .zn(n128) );
  oa04d0 U134 ( .a1(cycle_cnt_for_UI[7]), .a2(n139), .b(n128), .zn(n73) );
  nr02d0 U135 ( .a1(n187), .a2(n73), .zn(N80) );
  fn05d0 U136 ( .a1(tx_en), .b1(tx_en_r), .zn(tx_init) );
  nd02d1 U137 ( .a1(tx_type), .a2(tx_init), .zn(n191) );
  nr02d1 U138 ( .a1(tx_afc), .a2(n191), .zn(n82) );
  ao01d0 U139 ( .a1(n191), .a2(tx_data_reg[11]), .b1(n82), .b2(tx_data[11]), 
        .zn(n74) );
  in01d0 U140 ( .i(n74), .zn(n258) );
  ao01d0 U141 ( .a1(n191), .a2(tx_data_reg[8]), .b1(n82), .b2(tx_data[8]), 
        .zn(n75) );
  in01d0 U142 ( .i(n75), .zn(n255) );
  ao01d0 U143 ( .a1(n191), .a2(tx_data_reg[3]), .b1(n82), .b2(tx_data[3]), 
        .zn(n76) );
  in01d0 U144 ( .i(n76), .zn(n250) );
  ao01d0 U145 ( .a1(n191), .a2(tx_data_reg[0]), .b1(n82), .b2(tx_data[0]), 
        .zn(n77) );
  in01d0 U146 ( .i(n77), .zn(n247) );
  ao01d0 U147 ( .a1(n191), .a2(tx_data_reg[5]), .b1(n82), .b2(tx_data[5]), 
        .zn(n78) );
  in01d0 U148 ( .i(n78), .zn(n252) );
  ao01d0 U149 ( .a1(n191), .a2(tx_data_reg[4]), .b1(n82), .b2(tx_data[4]), 
        .zn(n79) );
  in01d0 U150 ( .i(n79), .zn(n251) );
  ao01d0 U151 ( .a1(n191), .a2(tx_data_reg[7]), .b1(n82), .b2(tx_data[7]), 
        .zn(n80) );
  in01d0 U152 ( .i(n80), .zn(n254) );
  ao01d0 U153 ( .a1(n191), .a2(tx_data_reg[9]), .b1(n82), .b2(tx_data[9]), 
        .zn(n81) );
  in01d0 U154 ( .i(n81), .zn(n256) );
  in01d0 U155 ( .i(n191), .zn(n414) );
  in01d0 U156 ( .i(n82), .zn(n85) );
  oa01d0 U157 ( .a1(tx_data_reg[6]), .a2(n414), .b1(tx_data[6]), .b2(n85), 
        .zn(n83) );
  in01d0 U158 ( .i(n83), .zn(n253) );
  oa01d0 U159 ( .a1(tx_data_reg[2]), .a2(n414), .b1(tx_data[2]), .b2(n85), 
        .zn(n84) );
  in01d0 U160 ( .i(n84), .zn(n249) );
  oa01d0 U161 ( .a1(tx_data_reg[1]), .a2(n414), .b1(tx_data[1]), .b2(n85), 
        .zn(n86) );
  in01d0 U162 ( .i(parity_value), .zn(n405) );
  in01d0 U163 ( .i(data_for_tx[7]), .zn(n212) );
  nd02d0 U164 ( .a1(n87), .a2(n212), .zn(n89) );
  oa04d0 U165 ( .a1(n405), .a2(n89), .b(num_of_quarter_UI[1]), .zn(n88) );
  ao04d0 U166 ( .a1(n405), .a2(n89), .b(n88), .zn(n90) );
  oa04d0 U167 ( .a1(n90), .a2(n198), .b(num_of_quarter_UI[0]), .zn(n92) );
  nd02d0 U168 ( .a1(n92), .a2(n91), .zn(n296) );
  in01d0 U169 ( .i(UI_cnt[0]), .zn(n199) );
  nd04d0 U170 ( .a1(tx_cur_st[0]), .a2(tx_cur_st[1]), .a3(UI_cnt[3]), .a4(n93), 
        .zn(n193) );
  in01d0 U171 ( .i(n39), .zn(n404) );
  ao07d0 U172 ( .a1(n199), .a2(n193), .a3(n404), .b1(n39), .b2(UI_cnt[0]), 
        .zn(n94) );
  in01d0 U173 ( .i(n94), .zn(n307) );
  in01d0 U174 ( .i(n187), .zn(n107) );
  oa05d0 U175 ( .a1(cycle_cnt_for_UI[1]), .a2(cycle_cnt_for_UI[0]), .b(n125), 
        .c(n107), .zn(n95) );
  in01d0 U176 ( .i(cycle_cnt_for_UI[8]), .zn(n129) );
  nr02d0 U177 ( .a1(n129), .a2(n128), .zn(n127) );
  in01d0 U178 ( .i(n127), .zn(n137) );
  nr02d0 U179 ( .a1(n138), .a2(n137), .zn(n136) );
  nd02d0 U180 ( .a1(cycle_cnt_for_UI[10]), .a2(n136), .zn(n122) );
  oa05d0 U181 ( .a1(cycle_cnt_for_UI[10]), .a2(n136), .b(n122), .c(n107), .zn(
        n96) );
  in01d0 U182 ( .i(n96), .zn(N83) );
  in01d0 U183 ( .i(cycle_cnt_for_UI[13]), .zn(n144) );
  in01d0 U184 ( .i(cycle_cnt_for_UI[11]), .zn(n123) );
  nd02d0 U185 ( .a1(cycle_cnt_for_UI[12]), .a2(n121), .zn(n143) );
  nr02d0 U186 ( .a1(n144), .a2(n143), .zn(n142) );
  nd02d0 U187 ( .a1(cycle_cnt_for_UI[14]), .a2(n142), .zn(n131) );
  nr02d0 U188 ( .a1(n132), .a2(n131), .zn(n130) );
  nd02d0 U189 ( .a1(cycle_cnt_for_UI[16]), .a2(n130), .zn(n119) );
  oa05d0 U190 ( .a1(cycle_cnt_for_UI[16]), .a2(n130), .b(n119), .c(n107), .zn(
        n97) );
  in01d0 U191 ( .i(cycle_cnt_for_UI[17]), .zn(n120) );
  nr02d0 U192 ( .a1(n120), .a2(n119), .zn(n118) );
  nd02d0 U193 ( .a1(cycle_cnt_for_UI[18]), .a2(n118), .zn(n150) );
  oa05d0 U194 ( .a1(cycle_cnt_for_UI[18]), .a2(n118), .b(n150), .c(n107), .zn(
        n98) );
  in01d0 U195 ( .i(n98), .zn(N91) );
  oa05d0 U196 ( .a1(cycle_cnt_for_UI[14]), .a2(n142), .b(n131), .c(n107), .zn(
        n99) );
  in01d0 U197 ( .i(n99), .zn(N87) );
  oa05d0 U198 ( .a1(cycle_cnt_for_UI[12]), .a2(n121), .b(n143), .c(n107), .zn(
        n100) );
  in01d0 U199 ( .i(n100), .zn(N85) );
  in01d0 U200 ( .i(n198), .zn(n400) );
  in01d0 U201 ( .i(n316), .zn(n114) );
  or04d0 U202 ( .a1(tx_done), .a2(n400), .a3(n315), .a4(n114), .z(n391) );
  nd03d0 U203 ( .a1(n146), .a2(n198), .a3(n391), .zn(n168) );
  oa04d0 U204 ( .a1(cycle_cnt_for_quarter_UI[0]), .a2(n391), .b(n168), .zn(
        n152) );
  nr02d0 U205 ( .a1(cycle_cnt_for_quarter_UI[1]), .a2(n391), .zn(n153) );
  ao01d0 U206 ( .a1(cycle_cnt_for_quarter_UI[1]), .a2(n152), .b1(
        cycle_cnt_for_quarter_UI[0]), .b2(n153), .zn(n101) );
  in01d0 U207 ( .i(n101), .zn(n308) );
  nd02d0 U208 ( .a1(cycle_cnt_for_UI[20]), .a2(n149), .zn(n157) );
  oa05d0 U209 ( .a1(cycle_cnt_for_UI[20]), .a2(n149), .b(n157), .c(n107), .zn(
        n102) );
  in01d0 U210 ( .i(n102), .zn(N93) );
  in01d0 U211 ( .i(cycle_cnt_for_UI[21]), .zn(n158) );
  nr02d0 U212 ( .a1(n158), .a2(n157), .zn(n156) );
  nd02d0 U213 ( .a1(cycle_cnt_for_UI[22]), .a2(n156), .zn(n172) );
  oa05d0 U214 ( .a1(cycle_cnt_for_UI[22]), .a2(n156), .b(n172), .c(n107), .zn(
        n103) );
  in01d0 U215 ( .i(n103), .zn(N95) );
  in01d0 U216 ( .i(cycle_cnt_for_UI[23]), .zn(n173) );
  nr02d0 U217 ( .a1(n173), .a2(n172), .zn(n171) );
  nd02d0 U218 ( .a1(cycle_cnt_for_UI[24]), .a2(n171), .zn(n179) );
  oa05d0 U219 ( .a1(cycle_cnt_for_UI[24]), .a2(n171), .b(n179), .c(n107), .zn(
        n104) );
  in01d0 U220 ( .i(n104), .zn(N97) );
  in01d0 U221 ( .i(cycle_cnt_for_UI[25]), .zn(n180) );
  nr02d0 U222 ( .a1(n180), .a2(n179), .zn(n178) );
  nd02d0 U223 ( .a1(cycle_cnt_for_UI[26]), .a2(n178), .zn(n182) );
  oa05d0 U224 ( .a1(cycle_cnt_for_UI[26]), .a2(n178), .b(n182), .c(n107), .zn(
        n105) );
  in01d0 U225 ( .i(n105), .zn(N99) );
  in01d0 U226 ( .i(cycle_cnt_for_UI[27]), .zn(n183) );
  nd02d0 U227 ( .a1(cycle_cnt_for_UI[28]), .a2(n181), .zn(n185) );
  oa05d0 U228 ( .a1(cycle_cnt_for_UI[28]), .a2(n181), .b(n185), .c(n107), .zn(
        n106) );
  in01d0 U229 ( .i(n106), .zn(N101) );
  nr02d0 U230 ( .a1(n186), .a2(n185), .zn(n184) );
  nd02d0 U231 ( .a1(cycle_cnt_for_UI[30]), .a2(n184), .zn(n188) );
  oa05d0 U232 ( .a1(cycle_cnt_for_UI[30]), .a2(n184), .b(n188), .c(n107), .zn(
        n108) );
  in01d0 U233 ( .i(n108), .zn(N103) );
  nd03d0 U234 ( .a1(n404), .a2(UI_cnt[0]), .a3(UI_cnt[1]), .zn(n200) );
  xn02d0 U235 ( .a1(UI_cnt[2]), .a2(n200), .zn(n306) );
  in01d0 U236 ( .i(byte_cnt[0]), .zn(n205) );
  nr02d0 U237 ( .a1(n203), .a2(n205), .zn(n109) );
  ao05d0 U238 ( .a1(n203), .a2(n205), .b(n109), .c(tx_init), .zn(n311) );
  in01d0 U239 ( .i(n109), .zn(n209) );
  ao05d0 U240 ( .a1(n204), .a2(n209), .b(n202), .c(tx_init), .zn(n312) );
  in01d0 U241 ( .i(data_for_tx[0]), .zn(n217) );
  in01d0 U242 ( .i(data_for_tx[3]), .zn(n227) );
  xo02d0 U243 ( .a1(n227), .a2(data_for_tx[2]), .z(n110) );
  xo03d1 U244 ( .a1(n217), .a2(data_for_tx[1]), .a3(n110), .z(n113) );
  in01d0 U245 ( .i(data_for_tx[4]), .zn(n230) );
  in01d0 U246 ( .i(data_for_tx[6]), .zn(n407) );
  xo02d0 U247 ( .a1(n407), .a2(data_for_tx[7]), .z(n111) );
  xo03d1 U248 ( .a1(n230), .a2(data_for_tx[5]), .a3(n111), .z(n112) );
  xo02d0 U249 ( .a1(n113), .a2(n112), .z(n117) );
  nr03d0 U250 ( .a1(tx_cur_st[0]), .a2(n115), .a3(n114), .zn(n116) );
  in01d0 U251 ( .i(n116), .zn(n145) );
  ao03d0 U252 ( .a1(n117), .a2(n116), .b1(n405), .b2(n145), .c(tx_init), .zn(
        n310) );
  ao05d0 U253 ( .a1(n120), .a2(n119), .b(n118), .c(n187), .zn(N90) );
  ao05d0 U254 ( .a1(n123), .a2(n122), .b(n121), .c(n187), .zn(N84) );
  ao05d0 U255 ( .a1(n126), .a2(n125), .b(n124), .c(n187), .zn(N75) );
  ao05d0 U256 ( .a1(n129), .a2(n128), .b(n127), .c(n187), .zn(N81) );
  ao05d0 U257 ( .a1(n132), .a2(n131), .b(n130), .c(n187), .zn(N88) );
  ao05d0 U258 ( .a1(n135), .a2(n134), .b(n133), .c(n187), .zn(N77) );
  ao05d0 U259 ( .a1(n138), .a2(n137), .b(n136), .c(n187), .zn(N82) );
  ao05d0 U260 ( .a1(n141), .a2(n140), .b(n139), .c(n187), .zn(N79) );
  ao05d0 U261 ( .a1(n144), .a2(n143), .b(n142), .c(n187), .zn(N86) );
  in01d0 U262 ( .i(cycle_cnt_for_quarter_UI[0]), .zn(n148) );
  nd03d0 U263 ( .a1(n400), .a2(n146), .a3(n145), .zn(n147) );
  oa03d0 U264 ( .a1(cycle_cnt_for_quarter_UI[0]), .a2(n391), .b1(n148), .b2(
        n168), .c(n147), .zn(n295) );
  ao05d0 U265 ( .a1(n151), .a2(n150), .b(n149), .c(n187), .zn(N92) );
  nd02d0 U266 ( .a1(cycle_cnt_for_quarter_UI[1]), .a2(
        cycle_cnt_for_quarter_UI[0]), .zn(n155) );
  oa04d0 U267 ( .a1(n153), .a2(n152), .b(cycle_cnt_for_quarter_UI[2]), .zn(
        n154) );
  oa08d0 U268 ( .a1(cycle_cnt_for_quarter_UI[2]), .a2(n391), .a3(n155), .b(
        n154), .zn(n294) );
  ao05d0 U269 ( .a1(n158), .a2(n157), .b(n156), .c(n187), .zn(N94) );
  nd02d0 U270 ( .a1(cycle_cnt_for_quarter_UI[28]), .a2(
        cycle_cnt_for_quarter_UI[27]), .zn(n167) );
  nd02d0 U271 ( .a1(cycle_cnt_for_quarter_UI[23]), .a2(
        cycle_cnt_for_quarter_UI[24]), .zn(n166) );
  nd02d0 U273 ( .a1(cycle_cnt_for_quarter_UI[20]), .a2(
        cycle_cnt_for_quarter_UI[19]), .zn(n164) );
  nd02d0 U274 ( .a1(cycle_cnt_for_quarter_UI[16]), .a2(
        cycle_cnt_for_quarter_UI[15]), .zn(n163) );
  nd02d0 U276 ( .a1(cycle_cnt_for_quarter_UI[11]), .a2(
        cycle_cnt_for_quarter_UI[12]), .zn(n161) );
  nd02d0 U278 ( .a1(cycle_cnt_for_quarter_UI[7]), .a2(
        cycle_cnt_for_quarter_UI[8]), .zn(n159) );
  in01d0 U279 ( .i(cycle_cnt_for_quarter_UI[5]), .zn(n260) );
  in01d0 U280 ( .i(cycle_cnt_for_quarter_UI[3]), .zn(n241) );
  nd03d0 U281 ( .a1(cycle_cnt_for_quarter_UI[2]), .a2(
        cycle_cnt_for_quarter_UI[1]), .a3(cycle_cnt_for_quarter_UI[0]), .zn(
        n240) );
  nr02d0 U282 ( .a1(n241), .a2(n240), .zn(n242) );
  nd02d0 U283 ( .a1(cycle_cnt_for_quarter_UI[4]), .a2(n242), .zn(n259) );
  nr02d0 U284 ( .a1(n260), .a2(n259), .zn(n261) );
  nd02d0 U285 ( .a1(cycle_cnt_for_quarter_UI[6]), .a2(n261), .zn(n320) );
  nr02d0 U286 ( .a1(n159), .a2(n320), .zn(n328) );
  nr02d0 U290 ( .a1(n161), .a2(n333), .zn(n342) );
  nr02d0 U294 ( .a1(n163), .a2(n347), .zn(n356) );
  nd03d0 U295 ( .a1(cycle_cnt_for_quarter_UI[17]), .a2(
        cycle_cnt_for_quarter_UI[18]), .a3(n356), .zn(n361) );
  nr02d0 U296 ( .a1(n164), .a2(n361), .zn(n369) );
  nr02d0 U300 ( .a1(n166), .a2(n374), .zn(n383) );
  nd03d0 U301 ( .a1(cycle_cnt_for_quarter_UI[26]), .a2(
        cycle_cnt_for_quarter_UI[25]), .a3(n383), .zn(n390) );
  nr02d0 U302 ( .a1(n167), .a2(n390), .zn(n174) );
  in01d0 U303 ( .i(n174), .zn(n170) );
  in01d1 U304 ( .i(n168), .zn(n388) );
  ao04d0 U305 ( .a1(n389), .a2(n170), .b(n388), .zn(n175) );
  oa07d0 U306 ( .a1(cycle_cnt_for_quarter_UI[29]), .a2(n391), .a3(n170), .b1(
        n175), .b2(n169), .zn(n267) );
  ao05d0 U307 ( .a1(n173), .a2(n172), .b(n171), .c(n187), .zn(N96) );
  in01d0 U308 ( .i(cycle_cnt_for_quarter_UI[30]), .zn(n398) );
  nd03d0 U309 ( .a1(cycle_cnt_for_quarter_UI[29]), .a2(n389), .a3(n174), .zn(
        n399) );
  oa04d0 U310 ( .a1(cycle_cnt_for_quarter_UI[29]), .a2(n391), .b(n175), .zn(
        n397) );
  ao04d0 U311 ( .a1(n389), .a2(n398), .b(n397), .zn(n177) );
  in01d0 U312 ( .i(cycle_cnt_for_quarter_UI[31]), .zn(n176) );
  oa07d0 U313 ( .a1(cycle_cnt_for_quarter_UI[31]), .a2(n398), .a3(n399), .b1(
        n177), .b2(n176), .zn(n265) );
  ao05d0 U314 ( .a1(n180), .a2(n179), .b(n178), .c(n187), .zn(N98) );
  ao05d0 U315 ( .a1(n183), .a2(n182), .b(n181), .c(n187), .zn(N100) );
  ao05d0 U316 ( .a1(n186), .a2(n185), .b(n184), .c(n187), .zn(N102) );
  in01d0 U317 ( .i(n188), .zn(n190) );
  ao03d0 U318 ( .a1(cycle_cnt_for_UI[31]), .a2(n190), .b1(n189), .b2(n188), 
        .c(n187), .zn(N104) );
  nr03d0 U324 ( .a1(tx_data[11]), .a2(tx_data[9]), .a3(tx_data[8]), .zn(n192)
         );
  in01d0 U325 ( .i(respond_rd), .zn(n213) );
  ao01d0 U326 ( .a1(n414), .a2(n192), .b1(n213), .b2(n191), .zn(n246) );
  nr02d0 U327 ( .a1(n315), .a2(n316), .zn(n403) );
  ao08d0 U328 ( .a1(cycle_cnt_for_UI[0]), .a2(n39), .a3(n198), .b(n403), .zn(
        N73) );
  or02d0 U330 ( .a1(tx_type_reg), .a2(n414), .z(n314) );
  ao04d0 U331 ( .a1(n194), .a2(n193), .b(n39), .zn(n196) );
  nr02d0 U332 ( .a1(UI_cnt[3]), .a2(n194), .zn(n406) );
  oa01d0 U333 ( .a1(n196), .a2(n195), .b1(n39), .b2(n408), .zn(n313) );
  ao14d0 U334 ( .a1(n198), .a2(num_of_quarter_UI[1]), .b(n197), .z(n309) );
  nr02d0 U335 ( .a1(n39), .a2(n199), .zn(n201) );
  oa14d0 U336 ( .a1(UI_cnt[1]), .a2(n201), .b(n200), .z(n305) );
  in01d0 U337 ( .i(n203), .zn(n206) );
  nd02d0 U338 ( .a1(data_for_tx[6]), .a2(n234), .zn(n211) );
  nd02d0 U339 ( .a1(n214), .a2(n204), .zn(n207) );
  nd02d0 U340 ( .a1(n206), .a2(n205), .zn(n208) );
  oa07d2 U341 ( .a1(n213), .a2(n207), .a3(n208), .b1(respond_rd), .b2(n214), 
        .zn(n235) );
  ao01d0 U342 ( .a1(tx_data_reg[7]), .a2(n235), .b1(n236), .b2(crc_data[7]), 
        .zn(n210) );
  oa05d0 U343 ( .a1(n212), .a2(n239), .b(n211), .c(n210), .zn(n304) );
  nr02d0 U344 ( .a1(n214), .a2(n213), .zn(n224) );
  ao01d0 U345 ( .a1(data_for_tx[7]), .a2(n234), .b1(n224), .b2(tx_data_reg[8]), 
        .zn(n216) );
  ao01d0 U346 ( .a1(crc_data[0]), .a2(n236), .b1(tx_data_reg[0]), .b2(n235), 
        .zn(n215) );
  oa05d0 U347 ( .a1(n217), .a2(n239), .b(n216), .c(n215), .zn(n303) );
  in01d0 U348 ( .i(data_for_tx[1]), .zn(n220) );
  ao01d0 U349 ( .a1(data_for_tx[0]), .a2(n234), .b1(n224), .b2(tx_data_reg[9]), 
        .zn(n219) );
  ao01d0 U350 ( .a1(crc_data[1]), .a2(n236), .b1(tx_data_reg[1]), .b2(n235), 
        .zn(n218) );
  oa05d0 U351 ( .a1(n220), .a2(n239), .b(n219), .c(n218), .zn(n302) );
  in01d0 U352 ( .i(data_for_tx[2]), .zn(n223) );
  nd02d0 U353 ( .a1(data_for_tx[1]), .a2(n234), .zn(n222) );
  ao01d0 U354 ( .a1(crc_data[2]), .a2(n236), .b1(tx_data_reg[2]), .b2(n235), 
        .zn(n221) );
  oa05d0 U355 ( .a1(n223), .a2(n239), .b(n222), .c(n221), .zn(n301) );
  ao01d0 U356 ( .a1(data_for_tx[2]), .a2(n234), .b1(n224), .b2(tx_data_reg[11]), .zn(n226) );
  ao01d0 U357 ( .a1(crc_data[3]), .a2(n236), .b1(tx_data_reg[3]), .b2(n235), 
        .zn(n225) );
  oa05d0 U358 ( .a1(n227), .a2(n239), .b(n226), .c(n225), .zn(n300) );
  nd02d0 U359 ( .a1(data_for_tx[3]), .a2(n234), .zn(n229) );
  ao01d0 U360 ( .a1(crc_data[4]), .a2(n236), .b1(tx_data_reg[4]), .b2(n235), 
        .zn(n228) );
  oa05d0 U361 ( .a1(n230), .a2(n239), .b(n229), .c(n228), .zn(n299) );
  in01d0 U362 ( .i(data_for_tx[5]), .zn(n233) );
  nd02d0 U363 ( .a1(data_for_tx[4]), .a2(n234), .zn(n232) );
  ao01d0 U364 ( .a1(crc_data[5]), .a2(n236), .b1(tx_data_reg[5]), .b2(n235), 
        .zn(n231) );
  oa05d0 U365 ( .a1(n233), .a2(n239), .b(n232), .c(n231), .zn(n298) );
  nd02d0 U366 ( .a1(data_for_tx[5]), .a2(n234), .zn(n238) );
  ao01d0 U367 ( .a1(crc_data[6]), .a2(n236), .b1(tx_data_reg[6]), .b2(n235), 
        .zn(n237) );
  oa05d0 U368 ( .a1(n407), .a2(n239), .b(n238), .c(n237), .zn(n297) );
  ao04d0 U369 ( .a1(n389), .a2(n240), .b(n388), .zn(n257) );
  nd02d0 U370 ( .a1(n389), .a2(n241), .zn(n245) );
  oa01d0 U371 ( .a1(n257), .a2(n241), .b1(n240), .b2(n245), .zn(n293) );
  nd02d0 U372 ( .a1(n389), .a2(n242), .zn(n244) );
  ao07d0 U373 ( .a1(n257), .a2(cycle_cnt_for_quarter_UI[4]), .a3(n245), .b1(
        n244), .b2(n243), .zn(n292) );
  ao04d0 U374 ( .a1(n389), .a2(n259), .b(n388), .zn(n319) );
  nd02d0 U375 ( .a1(n389), .a2(n260), .zn(n318) );
  oa01d0 U376 ( .a1(n319), .a2(n260), .b1(n259), .b2(n318), .zn(n291) );
  nd02d0 U377 ( .a1(n389), .a2(n261), .zn(n317) );
  in01d0 U378 ( .i(cycle_cnt_for_quarter_UI[6]), .zn(n262) );
  ao07d0 U379 ( .a1(n319), .a2(cycle_cnt_for_quarter_UI[6]), .a3(n318), .b1(
        n317), .b2(n262), .zn(n290) );
  ao04d0 U380 ( .a1(n389), .a2(n320), .b(n388), .zn(n325) );
  in01d0 U381 ( .i(cycle_cnt_for_quarter_UI[7]), .zn(n321) );
  oa01d0 U382 ( .a1(n325), .a2(n321), .b1(n320), .b2(n324), .zn(n289) );
  or03d0 U383 ( .a1(n321), .a2(n391), .a3(n320), .z(n323) );
  in01d0 U384 ( .i(cycle_cnt_for_quarter_UI[8]), .zn(n322) );
  ao07d0 U385 ( .a1(n325), .a2(cycle_cnt_for_quarter_UI[8]), .a3(n324), .b1(
        n323), .b2(n322), .zn(n288) );
  ao04d0 U386 ( .a1(n389), .a2(n326), .b(n388), .zn(n332) );
  in01d0 U387 ( .i(cycle_cnt_for_quarter_UI[9]), .zn(n327) );
  nd02d0 U388 ( .a1(n389), .a2(n327), .zn(n331) );
  oa01d0 U389 ( .a1(n332), .a2(n327), .b1(n326), .b2(n331), .zn(n287) );
  nd03d0 U390 ( .a1(cycle_cnt_for_quarter_UI[9]), .a2(n389), .a3(n328), .zn(
        n330) );
  in01d0 U391 ( .i(cycle_cnt_for_quarter_UI[10]), .zn(n329) );
  ao07d0 U392 ( .a1(n332), .a2(cycle_cnt_for_quarter_UI[10]), .a3(n331), .b1(
        n330), .b2(n329), .zn(n286) );
  ao04d0 U393 ( .a1(n389), .a2(n333), .b(n388), .zn(n339) );
  in01d0 U394 ( .i(cycle_cnt_for_quarter_UI[11]), .zn(n334) );
  oa01d0 U395 ( .a1(n339), .a2(n334), .b1(n333), .b2(n338), .zn(n285) );
  nd03d0 U396 ( .a1(cycle_cnt_for_quarter_UI[11]), .a2(n389), .a3(n335), .zn(
        n337) );
  in01d0 U397 ( .i(cycle_cnt_for_quarter_UI[12]), .zn(n336) );
  ao07d0 U398 ( .a1(n339), .a2(cycle_cnt_for_quarter_UI[12]), .a3(n338), .b1(
        n337), .b2(n336), .zn(n284) );
  ao04d0 U399 ( .a1(n389), .a2(n340), .b(n388), .zn(n346) );
  in01d0 U400 ( .i(cycle_cnt_for_quarter_UI[13]), .zn(n341) );
  nd02d0 U401 ( .a1(n389), .a2(n341), .zn(n345) );
  oa01d0 U402 ( .a1(n346), .a2(n341), .b1(n340), .b2(n345), .zn(n283) );
  nd03d0 U403 ( .a1(cycle_cnt_for_quarter_UI[13]), .a2(n389), .a3(n342), .zn(
        n344) );
  in01d0 U404 ( .i(cycle_cnt_for_quarter_UI[14]), .zn(n343) );
  ao07d0 U405 ( .a1(n346), .a2(cycle_cnt_for_quarter_UI[14]), .a3(n345), .b1(
        n344), .b2(n343), .zn(n282) );
  ao04d0 U406 ( .a1(n389), .a2(n347), .b(n388), .zn(n353) );
  in01d0 U407 ( .i(cycle_cnt_for_quarter_UI[15]), .zn(n348) );
  nd02d0 U408 ( .a1(n389), .a2(n348), .zn(n352) );
  oa01d0 U409 ( .a1(n353), .a2(n348), .b1(n347), .b2(n352), .zn(n281) );
  nd03d0 U410 ( .a1(cycle_cnt_for_quarter_UI[15]), .a2(n389), .a3(n349), .zn(
        n351) );
  in01d0 U411 ( .i(cycle_cnt_for_quarter_UI[16]), .zn(n350) );
  ao07d0 U412 ( .a1(n353), .a2(cycle_cnt_for_quarter_UI[16]), .a3(n352), .b1(
        n351), .b2(n350), .zn(n280) );
  in01d0 U413 ( .i(n356), .zn(n354) );
  ao04d0 U414 ( .a1(n389), .a2(n354), .b(n388), .zn(n360) );
  in01d0 U415 ( .i(cycle_cnt_for_quarter_UI[17]), .zn(n355) );
  oa01d0 U416 ( .a1(n360), .a2(n355), .b1(n354), .b2(n359), .zn(n279) );
  nd03d0 U417 ( .a1(cycle_cnt_for_quarter_UI[17]), .a2(n389), .a3(n356), .zn(
        n358) );
  in01d0 U418 ( .i(cycle_cnt_for_quarter_UI[18]), .zn(n357) );
  ao07d0 U419 ( .a1(n360), .a2(cycle_cnt_for_quarter_UI[18]), .a3(n359), .b1(
        n358), .b2(n357), .zn(n278) );
  ao04d0 U420 ( .a1(n389), .a2(n361), .b(n388), .zn(n366) );
  in01d0 U421 ( .i(cycle_cnt_for_quarter_UI[19]), .zn(n362) );
  nd02d0 U422 ( .a1(n389), .a2(n362), .zn(n365) );
  oa01d0 U423 ( .a1(n366), .a2(n362), .b1(n361), .b2(n365), .zn(n277) );
  or03d0 U424 ( .a1(n362), .a2(n391), .a3(n361), .z(n364) );
  in01d0 U425 ( .i(cycle_cnt_for_quarter_UI[20]), .zn(n363) );
  ao07d0 U426 ( .a1(n366), .a2(cycle_cnt_for_quarter_UI[20]), .a3(n365), .b1(
        n364), .b2(n363), .zn(n276) );
  ao04d0 U427 ( .a1(n389), .a2(n367), .b(n388), .zn(n373) );
  in01d0 U428 ( .i(cycle_cnt_for_quarter_UI[21]), .zn(n368) );
  oa01d0 U429 ( .a1(n373), .a2(n368), .b1(n367), .b2(n372), .zn(n275) );
  nd03d0 U430 ( .a1(cycle_cnt_for_quarter_UI[21]), .a2(n389), .a3(n369), .zn(
        n371) );
  in01d0 U431 ( .i(cycle_cnt_for_quarter_UI[22]), .zn(n370) );
  ao07d0 U432 ( .a1(n373), .a2(cycle_cnt_for_quarter_UI[22]), .a3(n372), .b1(
        n371), .b2(n370), .zn(n274) );
  ao04d0 U433 ( .a1(n389), .a2(n374), .b(n388), .zn(n380) );
  nd02d0 U434 ( .a1(n389), .a2(n375), .zn(n379) );
  oa01d0 U435 ( .a1(n380), .a2(n375), .b1(n374), .b2(n379), .zn(n273) );
  nd03d0 U436 ( .a1(cycle_cnt_for_quarter_UI[23]), .a2(n389), .a3(n376), .zn(
        n378) );
  in01d0 U437 ( .i(cycle_cnt_for_quarter_UI[24]), .zn(n377) );
  ao07d0 U438 ( .a1(n380), .a2(cycle_cnt_for_quarter_UI[24]), .a3(n379), .b1(
        n378), .b2(n377), .zn(n272) );
  in01d0 U439 ( .i(n383), .zn(n381) );
  ao04d0 U440 ( .a1(n389), .a2(n381), .b(n388), .zn(n387) );
  in01d0 U441 ( .i(cycle_cnt_for_quarter_UI[25]), .zn(n382) );
  nd02d0 U442 ( .a1(n389), .a2(n382), .zn(n386) );
  oa01d0 U443 ( .a1(n387), .a2(n382), .b1(n381), .b2(n386), .zn(n271) );
  nd03d0 U444 ( .a1(cycle_cnt_for_quarter_UI[25]), .a2(n389), .a3(n383), .zn(
        n385) );
  ao07d0 U445 ( .a1(n387), .a2(cycle_cnt_for_quarter_UI[26]), .a3(n386), .b1(
        n385), .b2(n384), .zn(n270) );
  ao04d0 U446 ( .a1(n389), .a2(n390), .b(n388), .zn(n396) );
  oa01d0 U447 ( .a1(n396), .a2(n392), .b1(n390), .b2(n395), .zn(n269) );
  or03d0 U448 ( .a1(n392), .a2(n391), .a3(n390), .z(n394) );
  ao07d0 U449 ( .a1(n396), .a2(cycle_cnt_for_quarter_UI[28]), .a3(n395), .b1(
        n394), .b2(n393), .zn(n268) );
  fn03d0 U450 ( .a1(n399), .a2(n398), .b1(n398), .b2(n397), .zn(n266) );
  nr02d0 U451 ( .a1(n401), .a2(n400), .zn(n402) );
  oa08d0 U452 ( .a1(tx_cur_st[0]), .a2(tx_cur_st[1]), .a3(n403), .b(n402), 
        .zn(n413) );
  ao03d0 U453 ( .a1(n408), .a2(n407), .b1(n406), .b2(n405), .c(n410), .zn(n409) );
  in01d0 U454 ( .i(n409), .zn(n412) );
  ao04d0 U455 ( .a1(data), .a2(n410), .b(n413), .zn(n411) );
  ao01d0 U456 ( .a1(data), .a2(n413), .b1(n412), .b2(n411), .zn(n264) );
  mx21d0 U27 ( .i0(tx_afc), .i1(tx_afc_reg), .s(n416), .z(n263) );
  nd02d0 U28 ( .a1(n414), .a2(rstn), .zn(n416) );
  ckinv0 U32 ( .i(n374), .zn(n376) );
  nd03d0 U33 ( .a1(n369), .a2(cycle_cnt_for_quarter_UI[21]), .a3(
        cycle_cnt_for_quarter_UI[22]), .zn(n374) );
  ckinv0 U52 ( .i(n369), .zn(n367) );
  nr04d0 U53 ( .a1(cycle_cnt_for_UI[8]), .a2(cycle_cnt_for_UI[30]), .a3(
        cycle_cnt_for_UI[26]), .a4(n417), .zn(n36) );
  oa05d0 U57 ( .a1(cycle_cnt_for_UI[7]), .a2(n57), .b(n32), .c(n33), .zn(n417)
         );
  fn05d0 U58 ( .a1(n3), .b1(cycle_cnt_for_UI[22]), .zn(n37) );
  ckinv0 U59 ( .i(n347), .zn(n349) );
  nd03d0 U60 ( .a1(n342), .a2(cycle_cnt_for_quarter_UI[13]), .a3(
        cycle_cnt_for_quarter_UI[14]), .zn(n347) );
  ckinv0 U70 ( .i(n342), .zn(n340) );
  in01d0 U71 ( .i(tune_cycle[5]), .zn(n418) );
  nr03d1 U72 ( .a1(tune_up), .a2(n6), .a3(n418), .zn(n57) );
  ckinv0 U272 ( .i(n333), .zn(n335) );
  nd03d0 U275 ( .a1(n328), .a2(cycle_cnt_for_quarter_UI[9]), .a3(
        cycle_cnt_for_quarter_UI[10]), .zn(n333) );
  ckinv0 U277 ( .i(n328), .zn(n326) );
  nr04d0 U287 ( .a1(cycle_cnt_for_UI[27]), .a2(cycle_cnt_for_UI[18]), .a3(
        cycle_cnt_for_UI[24]), .a4(n419), .zn(n23) );
  ckinv0 U288 ( .i(n151), .zn(n419) );
  ckinv0 U289 ( .i(cycle_cnt_for_UI[15]), .zn(n132) );
  nr02d0 U291 ( .a1(cycle_cnt_for_UI[25]), .a2(cycle_cnt_for_UI[15]), .zn(n17)
         );
  ckinv0 U292 ( .i(cycle_cnt_for_UI[19]), .zn(n151) );
endmodule


module fcp_physical_layer ( clk, rstn, pl_tx_en, pl_tx_type, pl_tx_afc, 
        pl_tx_data, ping_from_master, reset_from_master, afc_iden, crc_error, 
        par_error, rx_data, rx_data_valid, tx_done, out_en, data_out, data );
  input [15:0] pl_tx_data;
  output [23:0] rx_data;
  input clk, rstn, pl_tx_en, pl_tx_type, pl_tx_afc, data;
  output ping_from_master, reset_from_master, afc_iden, crc_error, par_error,
         rx_data_valid, tx_done, out_en, data_out;
  wire   tx_en_flag, tx_en, tx_ongoing_window, N20, tx_type, tx_afc,
         mst_request_after_slv_ping, after_mst_ping, slv_request_after_ping,
         tx_ongoing_d0, N150, tx_ongoing_d1, tx_ongoing_d2, tune_up, n119,
         n120, n121, n122, n123, n124, n125, n126, n127, n128, n130, n135,
         n136, n137, n138, n139, n140, n141, n142, n143, n144, n145, n146,
         n147, n148, n149, n150, n151, n152, n153, n154, n155, n156, n157,
         n158, n159, n160, n161, n162, n163, n164, n165, n166, n167, n168,
         n169, n170, n171, n172, n173, n174, n1, n2, n3, n4, n5, n6, n7, n8,
         n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36,
         n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50,
         n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64,
         n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78,
         n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92,
         n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n112, n114, n115, n116, n117,
         n118, n129, n131, SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2;
  wire   [31:0] cycle_cnt_after_ping;
  wire   [15:0] tx_data;
  wire   [5:0] tune_cycle;

  fcp_rx_ctrl_UI_CYCLE160 U_RX_CTRL ( .clk(clk), .rstn(rstn), .data(data), 
        .rx_own_bus(n174), .tune_up(tune_up), .tune_cycle({
        SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2, tune_cycle}), 
        .ping_from_master(ping_from_master), .reset_from_master(
        reset_from_master), .par_error(par_error), .rx_data(rx_data), 
        .rx_data_valid(rx_data_valid), .afc_iden(afc_iden) );
  fcp_tx_ctrl_UI_CYCLE160 U_TX_CTRL ( .clk(clk), .rstn(rstn), .tx_en(tx_en), 
        .tx_type(tx_type), .tx_afc(tx_afc), .tx_data({1'b0, 1'b0, 1'b0, 1'b0, 
        tx_data[11], 1'b0, tx_data[9:0]}), .tune_up(tune_up), .tune_cycle({
        1'b0, 1'b0, tune_cycle}), .data(data_out), .tx_done(tx_done) );
  dfctnq tx_ongoing_d1_reg ( .d(tx_ongoing_d0), .cp(clk), .cdn(rstn), .q(
        tx_ongoing_d1) );
  dfctnq tx_ongoing_d2_reg ( .d(tx_ongoing_d1), .cp(clk), .cdn(rstn), .q(
        tx_ongoing_d2) );
  dfctnq cycle_cnt_after_ping_reg_31_ ( .d(n142), .cp(clk), .cdn(rstn), .q(
        cycle_cnt_after_ping[31]) );
  dfctnq cycle_cnt_after_ping_reg_1_ ( .d(n173), .cp(clk), .cdn(rstn), .q(
        cycle_cnt_after_ping[1]) );
  dfctnq cycle_cnt_after_ping_reg_0_ ( .d(n172), .cp(clk), .cdn(rstn), .q(
        cycle_cnt_after_ping[0]) );
  dfctnq cycle_cnt_after_ping_reg_2_ ( .d(n171), .cp(clk), .cdn(rstn), .q(
        cycle_cnt_after_ping[2]) );
  dfctnq cycle_cnt_after_ping_reg_3_ ( .d(n170), .cp(clk), .cdn(rstn), .q(
        cycle_cnt_after_ping[3]) );
  dfctnq cycle_cnt_after_ping_reg_4_ ( .d(n169), .cp(clk), .cdn(rstn), .q(
        cycle_cnt_after_ping[4]) );
  dfctnq cycle_cnt_after_ping_reg_5_ ( .d(n168), .cp(clk), .cdn(rstn), .q(
        cycle_cnt_after_ping[5]) );
  dfctnq cycle_cnt_after_ping_reg_6_ ( .d(n167), .cp(clk), .cdn(rstn), .q(
        cycle_cnt_after_ping[6]) );
  dfctnq cycle_cnt_after_ping_reg_7_ ( .d(n166), .cp(clk), .cdn(rstn), .q(
        cycle_cnt_after_ping[7]) );
  dfctnq cycle_cnt_after_ping_reg_8_ ( .d(n165), .cp(clk), .cdn(rstn), .q(
        cycle_cnt_after_ping[8]) );
  dfctnq cycle_cnt_after_ping_reg_9_ ( .d(n164), .cp(clk), .cdn(rstn), .q(
        cycle_cnt_after_ping[9]) );
  dfctnq cycle_cnt_after_ping_reg_10_ ( .d(n163), .cp(clk), .cdn(rstn), .q(
        cycle_cnt_after_ping[10]) );
  dfctnq cycle_cnt_after_ping_reg_11_ ( .d(n162), .cp(clk), .cdn(rstn), .q(
        cycle_cnt_after_ping[11]) );
  dfctnq cycle_cnt_after_ping_reg_12_ ( .d(n161), .cp(clk), .cdn(rstn), .q(
        cycle_cnt_after_ping[12]) );
  dfctnq cycle_cnt_after_ping_reg_13_ ( .d(n160), .cp(clk), .cdn(rstn), .q(
        cycle_cnt_after_ping[13]) );
  dfctnq cycle_cnt_after_ping_reg_14_ ( .d(n159), .cp(clk), .cdn(rstn), .q(
        cycle_cnt_after_ping[14]) );
  dfctnq cycle_cnt_after_ping_reg_15_ ( .d(n158), .cp(clk), .cdn(rstn), .q(
        cycle_cnt_after_ping[15]) );
  dfctnq cycle_cnt_after_ping_reg_16_ ( .d(n157), .cp(clk), .cdn(rstn), .q(
        cycle_cnt_after_ping[16]) );
  dfctnq cycle_cnt_after_ping_reg_17_ ( .d(n156), .cp(clk), .cdn(rstn), .q(
        cycle_cnt_after_ping[17]) );
  dfctnq cycle_cnt_after_ping_reg_18_ ( .d(n155), .cp(clk), .cdn(rstn), .q(
        cycle_cnt_after_ping[18]) );
  dfctnq cycle_cnt_after_ping_reg_19_ ( .d(n154), .cp(clk), .cdn(rstn), .q(
        cycle_cnt_after_ping[19]) );
  dfctnq cycle_cnt_after_ping_reg_20_ ( .d(n153), .cp(clk), .cdn(rstn), .q(
        cycle_cnt_after_ping[20]) );
  dfctnq cycle_cnt_after_ping_reg_21_ ( .d(n152), .cp(clk), .cdn(rstn), .q(
        cycle_cnt_after_ping[21]) );
  dfctnq cycle_cnt_after_ping_reg_22_ ( .d(n151), .cp(clk), .cdn(rstn), .q(
        cycle_cnt_after_ping[22]) );
  dfctnq cycle_cnt_after_ping_reg_23_ ( .d(n150), .cp(clk), .cdn(rstn), .q(
        cycle_cnt_after_ping[23]) );
  dfctnq cycle_cnt_after_ping_reg_24_ ( .d(n149), .cp(clk), .cdn(rstn), .q(
        cycle_cnt_after_ping[24]) );
  dfctnq cycle_cnt_after_ping_reg_25_ ( .d(n148), .cp(clk), .cdn(rstn), .q(
        cycle_cnt_after_ping[25]) );
  dfctnq cycle_cnt_after_ping_reg_26_ ( .d(n147), .cp(clk), .cdn(rstn), .q(
        cycle_cnt_after_ping[26]) );
  dfctnq cycle_cnt_after_ping_reg_27_ ( .d(n146), .cp(clk), .cdn(rstn), .q(
        cycle_cnt_after_ping[27]) );
  dfctnq cycle_cnt_after_ping_reg_28_ ( .d(n145), .cp(clk), .cdn(rstn), .q(
        cycle_cnt_after_ping[28]) );
  dfctnq cycle_cnt_after_ping_reg_29_ ( .d(n144), .cp(clk), .cdn(rstn), .q(
        cycle_cnt_after_ping[29]) );
  dfctnq cycle_cnt_after_ping_reg_30_ ( .d(n143), .cp(clk), .cdn(rstn), .q(
        cycle_cnt_after_ping[30]) );
  dfctnq after_mst_ping_reg ( .d(n141), .cp(clk), .cdn(rstn), .q(
        after_mst_ping) );
  dfctnq mst_request_after_slv_ping_reg ( .d(n140), .cp(clk), .cdn(rstn), .q(
        mst_request_after_slv_ping) );
  dfctnq tx_type_reg ( .d(n139), .cp(clk), .cdn(rstn), .q(tx_type) );
  dfctnq tx_afc_reg ( .d(n138), .cp(clk), .cdn(rstn), .q(tx_afc) );
  dfctnq tx_ongoing_window_reg ( .d(n136), .cp(clk), .cdn(rstn), .q(
        tx_ongoing_window) );
  dfctnq tx_en_reg ( .d(N20), .cp(clk), .cdn(rstn), .q(tx_en) );
  dfctnq tx_en_flag_reg ( .d(n135), .cp(clk), .cdn(rstn), .q(tx_en_flag) );
  dfctnq slv_request_after_ping_reg ( .d(n137), .cp(clk), .cdn(rstn), .q(
        slv_request_after_ping) );
  dfctnq tx_ongoing_d0_reg ( .d(N150), .cp(clk), .cdn(rstn), .q(tx_ongoing_d0)
         );
  dfctnq tx_data_reg_11_ ( .d(n130), .cp(clk), .cdn(rstn), .q(tx_data[11]) );
  dfctnq tx_data_reg_9_ ( .d(n128), .cp(clk), .cdn(rstn), .q(tx_data[9]) );
  dfctnq tx_data_reg_8_ ( .d(n127), .cp(clk), .cdn(rstn), .q(tx_data[8]) );
  dfctnq tx_data_reg_7_ ( .d(n126), .cp(clk), .cdn(rstn), .q(tx_data[7]) );
  dfctnq tx_data_reg_6_ ( .d(n125), .cp(clk), .cdn(rstn), .q(tx_data[6]) );
  dfctnq tx_data_reg_5_ ( .d(n124), .cp(clk), .cdn(rstn), .q(tx_data[5]) );
  dfctnq tx_data_reg_4_ ( .d(n123), .cp(clk), .cdn(rstn), .q(tx_data[4]) );
  dfctnq tx_data_reg_3_ ( .d(n122), .cp(clk), .cdn(rstn), .q(tx_data[3]) );
  dfctnq tx_data_reg_2_ ( .d(n121), .cp(clk), .cdn(rstn), .q(tx_data[2]) );
  dfctnq tx_data_reg_1_ ( .d(n120), .cp(clk), .cdn(rstn), .q(tx_data[1]) );
  dfctnq tx_data_reg_0_ ( .d(n119), .cp(clk), .cdn(rstn), .q(tx_data[0]) );
  nd02d0 U3 ( .a1(n76), .a2(n57), .zn(n14) );
  nr02d0 U4 ( .a1(n57), .a2(n56), .zn(n59) );
  nd02d0 U5 ( .a1(n6), .a2(n5), .zn(n42) );
  nr02d0 U6 ( .a1(n100), .a2(n99), .zn(n98) );
  nr02d0 U7 ( .a1(n88), .a2(n87), .zn(n86) );
  nr02d0 U8 ( .a1(n65), .a2(n64), .zn(n63) );
  nr02d0 U9 ( .a1(n70), .a2(n69), .zn(n68) );
  in01d0 U10 ( .i(n28), .zn(n152) );
  in01d0 U11 ( .i(n21), .zn(n167) );
  in01d0 U12 ( .i(n174), .zn(out_en) );
  nd02d0 U13 ( .a1(tx_ongoing_window), .a2(tx_ongoing_d2), .zn(n174) );
  in01d0 U14 ( .i(cycle_cnt_after_ping[9]), .zn(n85) );
  nr02d0 U15 ( .a1(cycle_cnt_after_ping[1]), .a2(cycle_cnt_after_ping[0]), 
        .zn(n67) );
  in01d0 U16 ( .i(cycle_cnt_after_ping[2]), .zn(n1) );
  in01d0 U17 ( .i(cycle_cnt_after_ping[3]), .zn(n70) );
  nd03d0 U18 ( .a1(n67), .a2(n1), .a3(n70), .zn(n2) );
  oa04d0 U19 ( .a1(n2), .a2(cycle_cnt_after_ping[4]), .b(
        cycle_cnt_after_ping[5]), .zn(n3) );
  in01d0 U20 ( .i(cycle_cnt_after_ping[7]), .zn(n76) );
  in01d0 U21 ( .i(cycle_cnt_after_ping[6]), .zn(n57) );
  in01d0 U22 ( .i(n14), .zn(n38) );
  nd02d0 U23 ( .a1(n3), .a2(n38), .zn(n9) );
  in01d0 U24 ( .i(cycle_cnt_after_ping[8]), .zn(n56) );
  or04d0 U25 ( .a1(cycle_cnt_after_ping[16]), .a2(cycle_cnt_after_ping[15]), 
        .a3(cycle_cnt_after_ping[18]), .a4(cycle_cnt_after_ping[23]), .z(n4)
         );
  nr02d0 U26 ( .a1(cycle_cnt_after_ping[19]), .a2(n4), .zn(n35) );
  nr04d0 U27 ( .a1(cycle_cnt_after_ping[13]), .a2(cycle_cnt_after_ping[12]), 
        .a3(cycle_cnt_after_ping[11]), .a4(cycle_cnt_after_ping[10]), .zn(n34)
         );
  in01d0 U28 ( .i(cycle_cnt_after_ping[22]), .zn(n97) );
  in01d0 U29 ( .i(cycle_cnt_after_ping[20]), .zn(n94) );
  nd02d0 U30 ( .a1(n97), .a2(n94), .zn(n37) );
  in01d0 U31 ( .i(n37), .zn(n8) );
  nr04d0 U32 ( .a1(cycle_cnt_after_ping[26]), .a2(cycle_cnt_after_ping[25]), 
        .a3(cycle_cnt_after_ping[24]), .a4(cycle_cnt_after_ping[21]), .zn(n6)
         );
  nr04d0 U33 ( .a1(cycle_cnt_after_ping[31]), .a2(cycle_cnt_after_ping[29]), 
        .a3(cycle_cnt_after_ping[28]), .a4(cycle_cnt_after_ping[27]), .zn(n5)
         );
  nr04d0 U34 ( .a1(cycle_cnt_after_ping[30]), .a2(cycle_cnt_after_ping[17]), 
        .a3(cycle_cnt_after_ping[14]), .a4(n42), .zn(n7) );
  nd04d0 U35 ( .a1(n35), .a2(n34), .a3(n8), .a4(n7), .zn(n50) );
  ao03d0 U36 ( .a1(cycle_cnt_after_ping[8]), .a2(n9), .b1(n56), .b2(n76), .c(
        n50), .zn(n10) );
  in01d0 U37 ( .i(n10), .zn(n11) );
  oa08d0 U38 ( .a1(n85), .a2(n11), .a3(slv_request_after_ping), .b(
        tx_ongoing_window), .zn(n12) );
  in01d0 U39 ( .i(n12), .zn(N150) );
  in01d0 U40 ( .i(cycle_cnt_after_ping[12]), .zn(n79) );
  in01d0 U41 ( .i(cycle_cnt_after_ping[10]), .zn(n65) );
  in01d0 U42 ( .i(cycle_cnt_after_ping[5]), .zn(n73) );
  an02d0 U43 ( .a1(cycle_cnt_after_ping[1]), .a2(cycle_cnt_after_ping[0]), .z(
        n66) );
  nd02d0 U44 ( .a1(cycle_cnt_after_ping[2]), .a2(n66), .zn(n69) );
  nd02d0 U45 ( .a1(cycle_cnt_after_ping[4]), .a2(n68), .zn(n72) );
  nr02d0 U46 ( .a1(n73), .a2(n72), .zn(n71) );
  nd02d0 U47 ( .a1(cycle_cnt_after_ping[6]), .a2(n71), .zn(n75) );
  nr02d0 U48 ( .a1(n76), .a2(n75), .zn(n74) );
  nd02d0 U49 ( .a1(cycle_cnt_after_ping[8]), .a2(n74), .zn(n84) );
  nr02d0 U50 ( .a1(n85), .a2(n84), .zn(n83) );
  in01d0 U51 ( .i(n83), .zn(n64) );
  nd02d0 U52 ( .a1(cycle_cnt_after_ping[11]), .a2(n63), .zn(n78) );
  nr02d0 U53 ( .a1(n79), .a2(n78), .zn(n77) );
  nr04d0 U54 ( .a1(cycle_cnt_after_ping[4]), .a2(cycle_cnt_after_ping[2]), 
        .a3(cycle_cnt_after_ping[1]), .a4(cycle_cnt_after_ping[0]), .zn(n32)
         );
  fn01d0 U55 ( .a1(n50), .b1(n32), .zn(n54) );
  or04d0 U56 ( .a1(n54), .a2(n14), .a3(n85), .a4(n56), .z(n13) );
  nr03d0 U57 ( .a1(cycle_cnt_after_ping[3]), .a2(n73), .a3(n13), .zn(n39) );
  nr02d0 U58 ( .a1(cycle_cnt_after_ping[5]), .a2(n14), .zn(n47) );
  fn01d0 U59 ( .a1(n54), .b1(n47), .zn(n52) );
  nr04d0 U60 ( .a1(cycle_cnt_after_ping[9]), .a2(cycle_cnt_after_ping[8]), 
        .a3(cycle_cnt_after_ping[3]), .a4(n52), .zn(n15) );
  or04d1 U61 ( .a1(n39), .a2(ping_from_master), .a3(tx_done), .a4(n15), .z(n16) );
  in01d1 U62 ( .i(n16), .zn(n109) );
  nd02d0 U63 ( .a1(cycle_cnt_after_ping[13]), .a2(n77), .zn(n81) );
  oa05d0 U64 ( .a1(cycle_cnt_after_ping[13]), .a2(n77), .b(n109), .c(n81), 
        .zn(n17) );
  in01d0 U65 ( .i(n17), .zn(n160) );
  oa05d0 U66 ( .a1(cycle_cnt_after_ping[11]), .a2(n63), .b(n109), .c(n78), 
        .zn(n18) );
  in01d0 U67 ( .i(n18), .zn(n162) );
  oa05d0 U68 ( .a1(cycle_cnt_after_ping[8]), .a2(n74), .b(n84), .c(n109), .zn(
        n19) );
  in01d0 U69 ( .i(n19), .zn(n165) );
  oa05d0 U70 ( .a1(cycle_cnt_after_ping[2]), .a2(n66), .b(n69), .c(n109), .zn(
        n20) );
  in01d0 U71 ( .i(n20), .zn(n171) );
  oa05d0 U72 ( .a1(cycle_cnt_after_ping[6]), .a2(n71), .b(n75), .c(n109), .zn(
        n21) );
  oa05d0 U73 ( .a1(cycle_cnt_after_ping[4]), .a2(n68), .b(n72), .c(n109), .zn(
        n22) );
  in01d0 U74 ( .i(n22), .zn(n169) );
  in01d0 U75 ( .i(cycle_cnt_after_ping[14]), .zn(n82) );
  nr02d0 U76 ( .a1(n82), .a2(n81), .zn(n80) );
  nd02d0 U77 ( .a1(cycle_cnt_after_ping[15]), .a2(n80), .zn(n87) );
  oa05d0 U78 ( .a1(cycle_cnt_after_ping[15]), .a2(n80), .b(n109), .c(n87), 
        .zn(n23) );
  in01d0 U79 ( .i(n23), .zn(n158) );
  in01d0 U80 ( .i(cycle_cnt_after_ping[16]), .zn(n88) );
  nd02d0 U81 ( .a1(cycle_cnt_after_ping[17]), .a2(n86), .zn(n90) );
  oa05d0 U82 ( .a1(cycle_cnt_after_ping[17]), .a2(n86), .b(n109), .c(n90), 
        .zn(n24) );
  in01d0 U83 ( .i(n24), .zn(n156) );
  in01d0 U84 ( .i(cycle_cnt_after_ping[18]), .zn(n91) );
  nr02d0 U85 ( .a1(n91), .a2(n90), .zn(n89) );
  nd02d0 U86 ( .a1(cycle_cnt_after_ping[19]), .a2(n89), .zn(n93) );
  oa05d0 U87 ( .a1(cycle_cnt_after_ping[19]), .a2(n89), .b(n109), .c(n93), 
        .zn(n25) );
  in01d0 U88 ( .i(n25), .zn(n154) );
  nr02d2 U89 ( .a1(mst_request_after_slv_ping), .a2(pl_tx_en), .zn(n131) );
  ao01d0 U90 ( .a1(pl_tx_en), .a2(pl_tx_afc), .b1(n131), .b2(tx_afc), .zn(n26)
         );
  in01d0 U91 ( .i(n26), .zn(n138) );
  ao01d0 U92 ( .a1(pl_tx_en), .a2(pl_tx_type), .b1(n131), .b2(tx_type), .zn(
        n27) );
  in01d0 U93 ( .i(n27), .zn(n139) );
  nr02d0 U94 ( .a1(n94), .a2(n93), .zn(n92) );
  nd02d0 U95 ( .a1(cycle_cnt_after_ping[21]), .a2(n92), .zn(n96) );
  oa05d0 U96 ( .a1(cycle_cnt_after_ping[21]), .a2(n92), .b(n109), .c(n96), 
        .zn(n28) );
  nr02d0 U97 ( .a1(n97), .a2(n96), .zn(n95) );
  nd02d0 U98 ( .a1(cycle_cnt_after_ping[23]), .a2(n95), .zn(n99) );
  oa05d0 U99 ( .a1(cycle_cnt_after_ping[23]), .a2(n95), .b(n109), .c(n99), 
        .zn(n29) );
  in01d0 U100 ( .i(n29), .zn(n150) );
  in01d0 U101 ( .i(cycle_cnt_after_ping[24]), .zn(n100) );
  nd02d0 U102 ( .a1(cycle_cnt_after_ping[25]), .a2(n98), .zn(n102) );
  oa05d0 U103 ( .a1(cycle_cnt_after_ping[25]), .a2(n98), .b(n109), .c(n102), 
        .zn(n30) );
  in01d0 U104 ( .i(n30), .zn(n148) );
  in01d0 U105 ( .i(cycle_cnt_after_ping[26]), .zn(n103) );
  nr02d0 U106 ( .a1(n103), .a2(n102), .zn(n101) );
  nd02d0 U107 ( .a1(cycle_cnt_after_ping[27]), .a2(n101), .zn(n111) );
  oa05d0 U108 ( .a1(cycle_cnt_after_ping[27]), .a2(n101), .b(n109), .c(n111), 
        .zn(n31) );
  in01d0 U109 ( .i(n31), .zn(n146) );
  nd02d0 U110 ( .a1(cycle_cnt_after_ping[7]), .a2(cycle_cnt_after_ping[5]), 
        .zn(n53) );
  ao04d0 U111 ( .a1(n32), .a2(n70), .b(n53), .zn(n44) );
  nr04d0 U112 ( .a1(cycle_cnt_after_ping[8]), .a2(cycle_cnt_after_ping[9]), 
        .a3(n44), .a4(n50), .zn(n33) );
  oa04d0 U113 ( .a1(n76), .a2(n57), .b(n33), .zn(n45) );
  an03d0 U114 ( .a1(tx_ongoing_window), .a2(tx_en_flag), .a3(n45), .z(N20) );
  nd04d0 U115 ( .a1(n35), .a2(n34), .a3(n82), .a4(n85), .zn(n36) );
  or04d0 U116 ( .a1(cycle_cnt_after_ping[30]), .a2(cycle_cnt_after_ping[17]), 
        .a3(n37), .a4(n36), .z(n43) );
  oa05d0 U117 ( .a1(n38), .a2(n56), .b(data), .c(n45), .zn(n41) );
  in01d0 U118 ( .i(n39), .zn(n118) );
  nd02d0 U119 ( .a1(mst_request_after_slv_ping), .a2(n118), .zn(n40) );
  oa08d0 U120 ( .a1(n43), .a2(n42), .a3(n41), .b(n40), .zn(n140) );
  ao05d0 U121 ( .a1(n59), .a2(n44), .b(after_mst_ping), .c(n43), .zn(n51) );
  nd02d0 U122 ( .a1(cycle_cnt_after_ping[9]), .a2(cycle_cnt_after_ping[8]), 
        .zn(n46) );
  oa05d0 U123 ( .a1(n47), .a2(n46), .b(tx_en_flag), .c(n45), .zn(n49) );
  nd02d0 U124 ( .a1(slv_request_after_ping), .a2(n118), .zn(n48) );
  oa08d0 U125 ( .a1(n51), .a2(n50), .a3(n49), .b(n48), .zn(n137) );
  or04d0 U126 ( .a1(cycle_cnt_after_ping[8]), .a2(mst_request_after_slv_ping), 
        .a3(n70), .a4(n52), .z(n62) );
  nr04d0 U127 ( .a1(cycle_cnt_after_ping[3]), .a2(cycle_cnt_after_ping[9]), 
        .a3(n54), .a4(n53), .zn(n60) );
  oa04d0 U128 ( .a1(slv_request_after_ping), .a2(n118), .b(tx_ongoing_window), 
        .zn(n55) );
  ao08d0 U129 ( .a1(n60), .a2(n57), .a3(n56), .b(n55), .zn(n58) );
  ao08d0 U130 ( .a1(after_mst_ping), .a2(n60), .a3(n59), .b(n58), .zn(n61) );
  oa08d0 U131 ( .a1(after_mst_ping), .a2(n85), .a3(n62), .b(n61), .zn(n136) );
  ao05d0 U132 ( .a1(n65), .a2(n64), .b(n63), .c(n16), .zn(n163) );
  nr03d0 U133 ( .a1(n67), .a2(n66), .a3(n16), .zn(n173) );
  ao05d0 U134 ( .a1(n70), .a2(n69), .b(n68), .c(n16), .zn(n170) );
  ao05d0 U135 ( .a1(n73), .a2(n72), .b(n71), .c(n16), .zn(n168) );
  ao05d0 U136 ( .a1(n76), .a2(n75), .b(n74), .c(n16), .zn(n166) );
  ao05d0 U137 ( .a1(n79), .a2(n78), .b(n77), .c(n16), .zn(n161) );
  ao05d0 U138 ( .a1(n82), .a2(n81), .b(n80), .c(n16), .zn(n159) );
  ao05d0 U139 ( .a1(n85), .a2(n84), .b(n83), .c(n16), .zn(n164) );
  ao05d0 U140 ( .a1(n88), .a2(n87), .b(n86), .c(n16), .zn(n157) );
  ao05d0 U141 ( .a1(n91), .a2(n90), .b(n89), .c(n16), .zn(n155) );
  ao05d0 U142 ( .a1(n94), .a2(n93), .b(n92), .c(n16), .zn(n153) );
  ao05d0 U143 ( .a1(n97), .a2(n96), .b(n95), .c(n16), .zn(n151) );
  ao05d0 U144 ( .a1(n100), .a2(n99), .b(n98), .c(n16), .zn(n149) );
  ao05d0 U145 ( .a1(n103), .a2(n102), .b(n101), .c(n16), .zn(n147) );
  in01d0 U146 ( .i(cycle_cnt_after_ping[28]), .zn(n112) );
  nr02d0 U147 ( .a1(n112), .a2(n111), .zn(n104) );
  in01d0 U148 ( .i(cycle_cnt_after_ping[29]), .zn(n105) );
  in01d0 U149 ( .i(n104), .zn(n110) );
  ao03d0 U150 ( .a1(cycle_cnt_after_ping[29]), .a2(n104), .b1(n105), .b2(n110), 
        .c(n16), .zn(n144) );
  in01d0 U151 ( .i(cycle_cnt_after_ping[30]), .zn(n115) );
  nd03d0 U152 ( .a1(cycle_cnt_after_ping[29]), .a2(n109), .a3(n104), .zn(n116)
         );
  oa08d0 U153 ( .a1(n105), .a2(n115), .a3(n110), .b(n109), .zn(n107) );
  in01d0 U154 ( .i(cycle_cnt_after_ping[31]), .zn(n106) );
  oa07d0 U155 ( .a1(cycle_cnt_after_ping[31]), .a2(n115), .a3(n116), .b1(n107), 
        .b2(n106), .zn(n142) );
  nr02d0 U158 ( .a1(ping_from_master), .a2(tx_done), .zn(n108) );
  oa04d0 U159 ( .a1(cycle_cnt_after_ping[0]), .a2(n16), .b(n108), .zn(n172) );
  ao04d0 U161 ( .a1(n112), .a2(n111), .b(n114), .zn(n145) );
  ao01d0 U164 ( .a1(cycle_cnt_after_ping[30]), .a2(n117), .b1(n116), .b2(n115), 
        .zn(n143) );
  ao14d0 U165 ( .a1(n118), .a2(after_mst_ping), .b(ping_from_master), .z(n141)
         );
  in01d0 U166 ( .i(tx_en), .zn(n129) );
  ao14d0 U167 ( .a1(n129), .a2(tx_en_flag), .b(pl_tx_en), .z(n135) );
  mx21d0 U168 ( .i0(pl_tx_data[11]), .i1(tx_data[11]), .s(n131), .z(n130) );
  mx21d0 U169 ( .i0(pl_tx_data[9]), .i1(tx_data[9]), .s(n131), .z(n128) );
  mx21d0 U170 ( .i0(pl_tx_data[8]), .i1(tx_data[8]), .s(n131), .z(n127) );
  mx21d0 U171 ( .i0(pl_tx_data[7]), .i1(tx_data[7]), .s(n131), .z(n126) );
  mx21d0 U172 ( .i0(pl_tx_data[6]), .i1(tx_data[6]), .s(n131), .z(n125) );
  mx21d0 U173 ( .i0(pl_tx_data[5]), .i1(tx_data[5]), .s(n131), .z(n124) );
  mx21d0 U174 ( .i0(pl_tx_data[4]), .i1(tx_data[4]), .s(n131), .z(n123) );
  mx21d0 U175 ( .i0(pl_tx_data[3]), .i1(tx_data[3]), .s(n131), .z(n122) );
  mx21d0 U176 ( .i0(pl_tx_data[2]), .i1(tx_data[2]), .s(n131), .z(n121) );
  mx21d0 U177 ( .i0(pl_tx_data[1]), .i1(tx_data[1]), .s(n131), .z(n120) );
  mx21d0 U178 ( .i0(pl_tx_data[0]), .i1(tx_data[0]), .s(n131), .z(n119) );
  oa14d0 U160 ( .a1(cycle_cnt_after_ping[29]), .a2(n16), .b(n114), .z(n117) );
  nd02d0 U162 ( .a1(n109), .a2(n110), .zn(n114) );
endmodule


module fcp_core ( clk, rstn, is_support_12v, out_volt, out_en, data_out, data
 );
  output [1:0] out_volt;
  input clk, rstn, is_support_12v, data;
  output out_en, data_out;
  wire   ping_from_master, reset_from_master, afc_iden, par_error,
         rx_data_valid, tx_done, pl_tx_en, pl_tx_type, pl_tx_afc,
         SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2,
         SYNOPSYS_UNCONNECTED_3, SYNOPSYS_UNCONNECTED_4,
         SYNOPSYS_UNCONNECTED_5;
  wire   [23:0] rx_data;
  wire   [11:0] pl_tx_data;

  fcp_logical_layer U_FCP_LOGICAL_LAYER ( .clk(clk), .rstn(rstn), 
        .is_support_12v(is_support_12v), .ping_from_master(ping_from_master), 
        .reset_from_master(reset_from_master), .afc_iden(afc_iden), 
        .crc_error(1'b0), .par_error(par_error), .rx_data(rx_data), 
        .rx_data_valid(rx_data_valid), .tx_done(tx_done), .pl_tx_en(pl_tx_en), 
        .pl_tx_type(pl_tx_type), .pl_tx_afc(pl_tx_afc), .pl_tx_data({
        SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2, SYNOPSYS_UNCONNECTED_3, 
        SYNOPSYS_UNCONNECTED_4, pl_tx_data[11], SYNOPSYS_UNCONNECTED_5, 
        pl_tx_data[9:0]}), .out_volt(out_volt) );
  fcp_physical_layer U_FCP_PYSICAL_LAYER ( .clk(clk), .rstn(rstn), .pl_tx_en(
        pl_tx_en), .pl_tx_type(pl_tx_type), .pl_tx_afc(pl_tx_afc), 
        .pl_tx_data({1'b0, 1'b0, 1'b0, 1'b0, pl_tx_data[11], 1'b0, 
        pl_tx_data[9:0]}), .ping_from_master(ping_from_master), 
        .reset_from_master(reset_from_master), .afc_iden(afc_iden), 
        .par_error(par_error), .rx_data(rx_data), .rx_data_valid(rx_data_valid), .tx_done(tx_done), .out_en(out_en), .data_out(data_out), .data(data) );
endmodule


