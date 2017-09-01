/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : L-2016.03-SP5-2
// Date      : Fri Aug 18 23:55:35 2017
/////////////////////////////////////////////////////////////


module fcp_logical_layer ( clk, rstn, ping_from_master, reset_from_master, 
        crc_error, par_error, rx_data, rx_data_valid, tx_done, pl_tx_en, 
        pl_tx_type, pl_tx_data, UP_VOLT, DN_VOLT );
  input [23:0] rx_data;
  output [15:0] pl_tx_data;
  input clk, rstn, ping_from_master, reset_from_master, crc_error, par_error,
         rx_data_valid, tx_done;
  output pl_tx_en, pl_tx_type, UP_VOLT, DN_VOLT;
  wire   OUTPUT_CONTROL_0_, wr_en, N125, SSTAT_0_, rd_en, rx_data_valid_r,
         rx_data_valid_2r, N281, N282, N283, N284, N285, N286, N287, N288,
         cmd_get_but_not_process, n186, n188, n189, n190, n191, n192, n193,
         n194, n196, n197, n198, n199, n200, n201, n202, n205, n206, n207,
         n208, n209, n210, n211, n212, n213, n214, n215, n216, n217, n218,
         n219, n220, n221, n222, n223, n224, n225, n226, n227, n228, n229,
         n230, n231, n232, n233, n234, n235, n236, n237, n238, n239, n240,
         n241, n242, n243, n244, n245, n246, n247, n249, n250, n1, n2, n3, n4,
         n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19,
         n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33,
         n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47,
         n48, n49, n50, n51, n52, n53, n55, n56, n57, n58, n59, n60, n61, n62,
         n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76,
         n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90,
         n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103,
         n104, n105, n106, n107, n108, n109, n110, n111, n112, n113, n114,
         n115, n116, n117, n118, n119, n120, n121, n122, n123, n124, n125,
         n126, n127, n128, n129, n130, n131, n132, n133, n134, n135, n136,
         n137, n138, n139, n140, n141, n142, n143, n144, n145, n146, n147,
         n148, n149, n150, n151, n152, n153, n154, n155, n156, n157, n158,
         n159, n160, n161, n162, n163, n164, n165, n166;
  wire   [6:0] vol_adjust_cycle_cnt;
  wire   [6:1] VOUT_STATUS;
  wire   [7:0] VOUT_CONFIG;
  wire   [1:0] up_step;
  wire   [1:0] down_step;
  wire   [7:0] addr;
  wire   [7:0] wr_data;
  wire   [3:1] RESP;
  wire   [7:0] data_for_rd_cmd;
  wire   [1:0] cur_st;

  dfctnq rd_en_reg ( .d(n230), .cp(clk), .cdn(rstn), .q(rd_en) );
  dfctnq addr_reg_7_ ( .d(n229), .cp(clk), .cdn(rstn), .q(addr[7]) );
  dfctnq addr_reg_6_ ( .d(n228), .cp(clk), .cdn(rstn), .q(addr[6]) );
  dfctnq addr_reg_4_ ( .d(n226), .cp(clk), .cdn(rstn), .q(addr[4]) );
  dfctnq addr_reg_3_ ( .d(n225), .cp(clk), .cdn(rstn), .q(addr[3]) );
  dfctnq addr_reg_2_ ( .d(n224), .cp(clk), .cdn(rstn), .q(addr[2]) );
  dfctnq addr_reg_1_ ( .d(n223), .cp(clk), .cdn(rstn), .q(addr[1]) );
  dfctnq addr_reg_0_ ( .d(n222), .cp(clk), .cdn(rstn), .q(addr[0]) );
  dfctnq wr_en_reg ( .d(n221), .cp(clk), .cdn(rstn), .q(wr_en) );
  dfctnq wr_data_reg_7_ ( .d(n220), .cp(clk), .cdn(rstn), .q(wr_data[7]) );
  dfctnq wr_data_reg_6_ ( .d(n219), .cp(clk), .cdn(rstn), .q(wr_data[6]) );
  dfctnq wr_data_reg_5_ ( .d(n218), .cp(clk), .cdn(rstn), .q(wr_data[5]) );
  dfctnq wr_data_reg_4_ ( .d(n217), .cp(clk), .cdn(rstn), .q(wr_data[4]) );
  dfctnq wr_data_reg_3_ ( .d(n216), .cp(clk), .cdn(rstn), .q(wr_data[3]) );
  dfctnq wr_data_reg_2_ ( .d(n215), .cp(clk), .cdn(rstn), .q(wr_data[2]) );
  dfctnq wr_data_reg_1_ ( .d(n214), .cp(clk), .cdn(rstn), .q(wr_data[1]) );
  dfctnq wr_data_reg_0_ ( .d(n213), .cp(clk), .cdn(rstn), .q(wr_data[0]) );
  dfctnq pl_tx_data_reg_11_ ( .d(n212), .cp(clk), .cdn(rstn), .q(
        pl_tx_data[11]) );
  dfctnq pl_tx_data_reg_9_ ( .d(n211), .cp(clk), .cdn(rstn), .q(pl_tx_data[9])
         );
  dfctnq pl_tx_data_reg_8_ ( .d(n210), .cp(clk), .cdn(rstn), .q(pl_tx_data[8])
         );
  dfctnq VOUT_CONFIG_reg_0_ ( .d(n209), .cp(clk), .cdn(rstn), .q(
        VOUT_CONFIG[0]) );
  dfctnq VOUT_CONFIG_reg_7_ ( .d(n208), .cp(clk), .cdn(rstn), .q(
        VOUT_CONFIG[7]) );
  dfctnq VOUT_CONFIG_reg_6_ ( .d(n207), .cp(clk), .cdn(rstn), .q(
        VOUT_CONFIG[6]) );
  dfctnq VOUT_CONFIG_reg_3_ ( .d(n206), .cp(clk), .cdn(rstn), .q(
        VOUT_CONFIG[3]) );
  dfctnq VOUT_CONFIG_reg_2_ ( .d(n205), .cp(clk), .cdn(rstn), .q(
        VOUT_CONFIG[2]) );
  dfctnq pl_tx_data_reg_7_ ( .d(n202), .cp(clk), .cdn(rstn), .q(pl_tx_data[7])
         );
  dfctnq VOUT_STATUS_reg_6_ ( .d(n201), .cp(clk), .cdn(rstn), .q(
        VOUT_STATUS[6]) );
  dfctnq pl_tx_data_reg_6_ ( .d(n200), .cp(clk), .cdn(rstn), .q(pl_tx_data[6])
         );
  dfctnq pl_tx_data_reg_5_ ( .d(n199), .cp(clk), .cdn(rstn), .q(pl_tx_data[5])
         );
  dfctnq pl_tx_data_reg_4_ ( .d(n198), .cp(clk), .cdn(rstn), .q(pl_tx_data[4])
         );
  dfctnq VOUT_STATUS_reg_3_ ( .d(n197), .cp(clk), .cdn(rstn), .q(
        VOUT_STATUS[3]) );
  dfctnq pl_tx_data_reg_3_ ( .d(n196), .cp(clk), .cdn(rstn), .q(pl_tx_data[3])
         );
  dfctnq pl_tx_data_reg_2_ ( .d(n194), .cp(clk), .cdn(rstn), .q(pl_tx_data[2])
         );
  dfctnq pl_tx_data_reg_1_ ( .d(n193), .cp(clk), .cdn(rstn), .q(pl_tx_data[1])
         );
  dfctnq pl_tx_data_reg_0_ ( .d(n192), .cp(clk), .cdn(rstn), .q(pl_tx_data[0])
         );
  dfctnq SSTAT_reg_0_ ( .d(n247), .cp(clk), .cdn(rstn), .q(SSTAT_0_) );
  dfctnq rx_data_valid_r_reg ( .d(rx_data_valid), .cp(clk), .cdn(rstn), .q(
        rx_data_valid_r) );
  dfctnq rx_data_valid_2r_reg ( .d(rx_data_valid_r), .cp(clk), .cdn(rstn), .q(
        rx_data_valid_2r) );
  dfctnq RESP_reg_3_ ( .d(n246), .cp(clk), .cdn(rstn), .q(RESP[3]) );
  dfctnq RESP_reg_1_ ( .d(n245), .cp(clk), .cdn(rstn), .q(RESP[1]) );
  dfctnq cur_st_reg_0_ ( .d(n250), .cp(clk), .cdn(rstn), .q(cur_st[0]) );
  dfctnq OUTPUT_CONTROL_reg_0_ ( .d(N125), .cp(clk), .cdn(rstn), .q(
        OUTPUT_CONTROL_0_) );
  dfctnq down_step_reg_0_ ( .d(n235), .cp(clk), .cdn(rstn), .q(down_step[0])
         );
  dfctnq vol_adjust_cycle_cnt_reg_1_ ( .d(n244), .cp(clk), .cdn(rstn), .q(
        vol_adjust_cycle_cnt[1]) );
  dfctnq vol_adjust_cycle_cnt_reg_0_ ( .d(n243), .cp(clk), .cdn(rstn), .q(
        vol_adjust_cycle_cnt[0]) );
  dfctnq vol_adjust_cycle_cnt_reg_2_ ( .d(n242), .cp(clk), .cdn(rstn), .q(
        vol_adjust_cycle_cnt[2]) );
  dfctnq vol_adjust_cycle_cnt_reg_3_ ( .d(n241), .cp(clk), .cdn(rstn), .q(
        vol_adjust_cycle_cnt[3]) );
  dfctnq vol_adjust_cycle_cnt_reg_4_ ( .d(n240), .cp(clk), .cdn(rstn), .q(
        vol_adjust_cycle_cnt[4]) );
  dfctnq vol_adjust_cycle_cnt_reg_5_ ( .d(n239), .cp(clk), .cdn(rstn), .q(
        vol_adjust_cycle_cnt[5]) );
  dfctnq vol_adjust_cycle_cnt_reg_6_ ( .d(n238), .cp(clk), .cdn(rstn), .q(
        vol_adjust_cycle_cnt[6]) );
  dfctnq up_step_reg_0_ ( .d(n237), .cp(clk), .cdn(rstn), .q(up_step[0]) );
  dfctnq up_step_reg_1_ ( .d(n236), .cp(clk), .cdn(rstn), .q(up_step[1]) );
  dfctnq UP_VOLT_reg ( .d(n232), .cp(clk), .cdn(rstn), .q(UP_VOLT) );
  dfctnq down_step_reg_1_ ( .d(n234), .cp(clk), .cdn(rstn), .q(down_step[1])
         );
  dfctnq DN_VOLT_reg ( .d(n233), .cp(clk), .cdn(rstn), .q(DN_VOLT) );
  dfctnq cmd_get_but_not_process_reg ( .d(n231), .cp(clk), .cdn(rstn), .q(
        cmd_get_but_not_process) );
  dfctnq cur_st_reg_1_ ( .d(n249), .cp(clk), .cdn(rstn), .q(cur_st[1]) );
  dfbtnq VOUT_CONFIG_reg_5_ ( .d(n191), .cp(clk), .cdn(1'b1), .sdn(rstn), .q(
        VOUT_CONFIG[5]) );
  dfbtnq VOUT_CONFIG_reg_4_ ( .d(n190), .cp(clk), .cdn(1'b1), .sdn(rstn), .q(
        VOUT_CONFIG[4]) );
  dfbtnq VOUT_CONFIG_reg_1_ ( .d(n189), .cp(clk), .cdn(1'b1), .sdn(rstn), .q(
        VOUT_CONFIG[1]) );
  dfbtnq VOUT_STATUS_reg_5_ ( .d(n188), .cp(clk), .cdn(1'b1), .sdn(rstn), .q(
        VOUT_STATUS[5]) );
  dfbtnq VOUT_STATUS_reg_1_ ( .d(n186), .cp(clk), .cdn(1'b1), .sdn(rstn), .q(
        VOUT_STATUS[1]) );
  lantnq data_for_rd_cmd_reg_7_ ( .e(n166), .d(N288), .q(data_for_rd_cmd[7])
         );
  lantnq data_for_rd_cmd_reg_6_ ( .e(n166), .d(N287), .q(data_for_rd_cmd[6])
         );
  lantnq data_for_rd_cmd_reg_5_ ( .e(n166), .d(N286), .q(data_for_rd_cmd[5])
         );
  lantnq data_for_rd_cmd_reg_4_ ( .e(n166), .d(N285), .q(data_for_rd_cmd[4])
         );
  lantnq data_for_rd_cmd_reg_3_ ( .e(n166), .d(N284), .q(data_for_rd_cmd[3])
         );
  lantnq data_for_rd_cmd_reg_2_ ( .e(n166), .d(N283), .q(data_for_rd_cmd[2])
         );
  lantnq data_for_rd_cmd_reg_1_ ( .e(n166), .d(N282), .q(data_for_rd_cmd[1])
         );
  lantnq data_for_rd_cmd_reg_0_ ( .e(n166), .d(N281), .q(data_for_rd_cmd[0])
         );
  dfctnq addr_reg_5_ ( .d(n227), .cp(clk), .cdn(rstn), .q(addr[5]) );
  ao08d2 U3 ( .a1(n11), .a2(n72), .a3(n73), .b(n10), .zn(n166) );
  in01d0 U4 ( .i(n26), .zn(n86) );
  in01d0 U5 ( .i(n105), .zn(n5) );
  in01d0 U6 ( .i(n118), .zn(n122) );
  in01d0 U7 ( .i(n162), .zn(n159) );
  in01d0 U9 ( .i(n51), .zn(n227) );
  in01d0 U10 ( .i(n38), .zn(n233) );
  in01d0 U11 ( .i(n28), .zn(n200) );
  in01d0 U12 ( .i(n44), .zn(n217) );
  in01d0 U13 ( .i(VOUT_CONFIG[5]), .zn(n157) );
  in01d0 U14 ( .i(VOUT_CONFIG[6]), .zn(n147) );
  in01d0 U15 ( .i(VOUT_CONFIG[3]), .zn(n149) );
  in01d0 U16 ( .i(VOUT_CONFIG[0]), .zn(n143) );
  in01d0 U17 ( .i(VOUT_CONFIG[7]), .zn(n145) );
  in01d0 U18 ( .i(VOUT_CONFIG[2]), .zn(n151) );
  nd04d0 U19 ( .a1(VOUT_CONFIG[4]), .a2(n143), .a3(n145), .a4(n151), .zn(n110)
         );
  or03d0 U20 ( .a1(n147), .a2(n149), .a3(n110), .z(n1) );
  nr03d0 U21 ( .a1(VOUT_CONFIG[1]), .a2(n157), .a3(n1), .zn(n115) );
  in01d0 U22 ( .i(VOUT_CONFIG[1]), .zn(n160) );
  nr03d0 U23 ( .a1(VOUT_CONFIG[5]), .a2(n160), .a3(n1), .zn(n165) );
  nr02d0 U24 ( .a1(n115), .a2(n165), .zn(n108) );
  nd02d0 U25 ( .a1(VOUT_STATUS[3]), .a2(VOUT_STATUS[6]), .zn(n107) );
  nd02d0 U26 ( .a1(VOUT_STATUS[5]), .a2(OUTPUT_CONTROL_0_), .zn(n2) );
  nr03d0 U27 ( .a1(VOUT_STATUS[1]), .a2(n107), .a3(n2), .zn(n119) );
  nr02d0 U28 ( .a1(vol_adjust_cycle_cnt[4]), .a2(vol_adjust_cycle_cnt[1]), 
        .zn(n4) );
  nd03d1 U29 ( .a1(vol_adjust_cycle_cnt[6]), .a2(vol_adjust_cycle_cnt[2]), 
        .a3(n4), .zn(n35) );
  in01d0 U30 ( .i(vol_adjust_cycle_cnt[3]), .zn(n101) );
  nd02d0 U31 ( .a1(vol_adjust_cycle_cnt[5]), .a2(n101), .zn(n33) );
  in01d0 U32 ( .i(OUTPUT_CONTROL_0_), .zn(n163) );
  oa08d1 U33 ( .a1(vol_adjust_cycle_cnt[0]), .a2(n35), .a3(n33), .b(n163), 
        .zn(n111) );
  in01d0 U34 ( .i(n111), .zn(n120) );
  ao01d0 U35 ( .a1(n108), .a2(n119), .b1(n120), .b2(down_step[1]), .zn(n3) );
  in01d0 U36 ( .i(n3), .zn(n234) );
  in01d0 U37 ( .i(vol_adjust_cycle_cnt[1]), .zn(n94) );
  in01d0 U38 ( .i(vol_adjust_cycle_cnt[0]), .zn(n95) );
  nr02d0 U39 ( .a1(n94), .a2(n95), .zn(n96) );
  nd02d0 U40 ( .a1(vol_adjust_cycle_cnt[2]), .a2(n96), .zn(n100) );
  nr02d0 U41 ( .a1(n101), .a2(n100), .zn(n99) );
  nd02d0 U42 ( .a1(vol_adjust_cycle_cnt[4]), .a2(n99), .zn(n102) );
  nr02d0 U43 ( .a1(vol_adjust_cycle_cnt[6]), .a2(vol_adjust_cycle_cnt[2]), 
        .zn(n32) );
  in01d0 U44 ( .i(vol_adjust_cycle_cnt[5]), .zn(n103) );
  nd04d0 U45 ( .a1(n4), .a2(n32), .a3(n101), .a4(n103), .zn(n37) );
  nd02d0 U46 ( .a1(n120), .a2(n37), .zn(n105) );
  oa05d0 U47 ( .a1(vol_adjust_cycle_cnt[4]), .a2(n99), .b(n102), .c(n5), .zn(
        n6) );
  in01d0 U48 ( .i(n6), .zn(n240) );
  nr02d0 U49 ( .a1(addr[3]), .a2(addr[2]), .zn(n64) );
  nd02d0 U50 ( .a1(addr[1]), .a2(addr[0]), .zn(n74) );
  nd02d0 U51 ( .a1(addr[5]), .a2(addr[3]), .zn(n7) );
  or02d1 U52 ( .a1(addr[3]), .a2(addr[5]), .z(n25) );
  nr02d0 U53 ( .a1(addr[1]), .a2(addr[0]), .zn(n76) );
  in01d0 U54 ( .i(n76), .zn(n18) );
  ao05d0 U55 ( .a1(n7), .a2(n25), .b(addr[4]), .c(n18), .zn(n8) );
  ao08d1 U56 ( .a1(n64), .a2(addr[5]), .a3(n74), .b(n8), .zn(n11) );
  in01d0 U57 ( .i(addr[5]), .zn(n62) );
  nr03d0 U58 ( .a1(addr[4]), .a2(addr[2]), .a3(n62), .zn(n9) );
  nd03d1 U59 ( .a1(addr[3]), .a2(addr[0]), .a3(n9), .zn(n72) );
  nr03d0 U60 ( .a1(addr[3]), .a2(addr[4]), .a3(addr[2]), .zn(n75) );
  nd02d0 U61 ( .a1(n75), .a2(n62), .zn(n73) );
  or02d1 U62 ( .a1(addr[6]), .a2(addr[7]), .z(n88) );
  in01d0 U63 ( .i(rd_en), .zn(n137) );
  nr02d0 U64 ( .a1(n88), .a2(n137), .zn(n83) );
  in01d0 U65 ( .i(n83), .zn(n10) );
  in01d0 U66 ( .i(cur_st[1]), .zn(n16) );
  in01d0 U67 ( .i(cur_st[0]), .zn(n13) );
  ao04d0 U68 ( .a1(reset_from_master), .a2(n16), .b(n13), .zn(n14) );
  ao07d1 U69 ( .a1(cmd_get_but_not_process), .a2(n14), .a3(tx_done), .b1(
        cur_st[1]), .b2(n14), .zn(n12) );
  oa08d1 U70 ( .a1(tx_done), .a2(reset_from_master), .a3(n16), .b(n12), .zn(
        n249) );
  nd03d1 U71 ( .a1(ping_from_master), .a2(n13), .a3(n16), .zn(n84) );
  in01d0 U72 ( .i(n14), .zn(n15) );
  ao07d1 U73 ( .a1(tx_done), .a2(n84), .a3(n16), .b1(n15), .b2(n84), .zn(n250)
         );
  fn05d1 U74 ( .a1(n249), .b1(n250), .zn(pl_tx_type) );
  in01d0 U75 ( .i(addr[2]), .zn(n17) );
  nr03d0 U76 ( .a1(addr[4]), .a2(n18), .a3(n17), .zn(n24) );
  nd03d1 U77 ( .a1(addr[5]), .a2(addr[3]), .a3(n24), .zn(n26) );
  nd02d0 U78 ( .a1(cur_st[0]), .a2(pl_tx_type), .zn(n125) );
  nr03d0 U79 ( .a1(addr[6]), .a2(addr[7]), .a3(n125), .zn(n19) );
  nd02d0 U80 ( .a1(n19), .a2(wr_en), .zn(n85) );
  nr02d0 U81 ( .a1(n26), .a2(n85), .zn(n162) );
  oa01d0 U82 ( .a1(n159), .a2(wr_data[4]), .b1(VOUT_CONFIG[4]), .b2(n162), 
        .zn(n20) );
  in01d0 U83 ( .i(n20), .zn(n190) );
  in01d0 U84 ( .i(addr[1]), .zn(n21) );
  oa05d0 U85 ( .a1(addr[4]), .a2(addr[0]), .b(n64), .c(n21), .zn(n23) );
  nr02d0 U86 ( .a1(n72), .a2(addr[1]), .zn(n68) );
  ao01d0 U87 ( .a1(n86), .a2(VOUT_CONFIG[1]), .b1(VOUT_STATUS[1]), .b2(n68), 
        .zn(n22) );
  oa04d0 U88 ( .a1(n62), .a2(n23), .b(n22), .zn(N282) );
  fn01d1 U89 ( .a1(n25), .b1(n24), .zn(n65) );
  oa04d0 U90 ( .a1(n145), .a2(n26), .b(n65), .zn(N288) );
  in02d0 U91 ( .i(rx_data_valid_2r), .zn(n155) );
  nr02d0 U92 ( .a1(n137), .a2(n155), .zn(n153) );
  ao01d0 U93 ( .a1(n155), .a2(pl_tx_data[7]), .b1(data_for_rd_cmd[7]), .b2(
        n153), .zn(n27) );
  in01d0 U94 ( .i(n27), .zn(n202) );
  ao01d0 U95 ( .a1(n155), .a2(pl_tx_data[6]), .b1(data_for_rd_cmd[6]), .b2(
        n153), .zn(n28) );
  ao01d0 U96 ( .a1(n155), .a2(pl_tx_data[5]), .b1(data_for_rd_cmd[5]), .b2(
        n153), .zn(n29) );
  in01d0 U97 ( .i(n29), .zn(n199) );
  ao01d0 U98 ( .a1(n155), .a2(pl_tx_data[4]), .b1(data_for_rd_cmd[4]), .b2(
        n153), .zn(n30) );
  in01d0 U99 ( .i(n30), .zn(n198) );
  ao01d0 U100 ( .a1(n155), .a2(pl_tx_data[2]), .b1(data_for_rd_cmd[2]), .b2(
        n153), .zn(n31) );
  in01d0 U101 ( .i(n31), .zn(n194) );
  nd03d1 U102 ( .a1(vol_adjust_cycle_cnt[4]), .a2(vol_adjust_cycle_cnt[1]), 
        .a3(n32), .zn(n34) );
  ao03d1 U103 ( .a1(n33), .a2(n37), .b1(n34), .b2(n37), .c(n95), .zn(n41) );
  ao05d0 U104 ( .a1(n35), .a2(n34), .b(vol_adjust_cycle_cnt[5]), .c(n101), 
        .zn(n36) );
  ao04d0 U105 ( .a1(n36), .a2(n95), .b(n41), .zn(n40) );
  nr02d0 U106 ( .a1(n95), .a2(n37), .zn(n39) );
  ao06d1 U107 ( .a1(n41), .a2(down_step[1]), .b1(DN_VOLT), .b2(n40), .c1(n39), 
        .c2(down_step[0]), .zn(n38) );
  ao06d1 U108 ( .a1(n41), .a2(up_step[1]), .b1(UP_VOLT), .b2(n40), .c1(
        up_step[0]), .c2(n39), .zn(n42) );
  in01d0 U109 ( .i(n42), .zn(n232) );
  in02d0 U110 ( .i(rx_data_valid), .zn(n55) );
  in01d0 U111 ( .i(rx_data[17]), .zn(n132) );
  nr02d0 U112 ( .a1(rx_data[20]), .a2(rx_data[21]), .zn(n129) );
  nr02d0 U113 ( .a1(rx_data[22]), .a2(rx_data[18]), .zn(n134) );
  nd04d0 U114 ( .a1(n129), .a2(n134), .a3(rx_data[19]), .a4(rx_data[16]), .zn(
        n43) );
  nr03d0 U115 ( .a1(rx_data[23]), .a2(n132), .a3(n43), .zn(n45) );
  ao01d0 U117 ( .a1(n55), .a2(wr_data[4]), .b1(n140), .b2(rx_data[4]), .zn(n44) );
  nr02d0 U119 ( .a1(n45), .a2(n55), .zn(n53) );
  ao06d1 U120 ( .a1(n55), .a2(addr[1]), .b1(n140), .b2(rx_data[9]), .c1(n53), 
        .c2(rx_data[1]), .zn(n46) );
  in01d0 U121 ( .i(n46), .zn(n223) );
  ao06d1 U122 ( .a1(n55), .a2(addr[6]), .b1(n140), .b2(rx_data[14]), .c1(n53), 
        .c2(rx_data[6]), .zn(n47) );
  in01d0 U123 ( .i(n47), .zn(n228) );
  ao06d1 U124 ( .a1(n55), .a2(addr[7]), .b1(rx_data[7]), .b2(n53), .c1(
        rx_data[15]), .c2(n140), .zn(n48) );
  in01d0 U125 ( .i(n48), .zn(n229) );
  ao06d1 U126 ( .a1(n55), .a2(addr[3]), .b1(n140), .b2(rx_data[11]), .c1(n53), 
        .c2(rx_data[3]), .zn(n49) );
  in01d0 U127 ( .i(n49), .zn(n225) );
  ao06d1 U128 ( .a1(n55), .a2(addr[4]), .b1(n140), .b2(rx_data[12]), .c1(n53), 
        .c2(rx_data[4]), .zn(n50) );
  in01d0 U129 ( .i(n50), .zn(n226) );
  ao06d1 U130 ( .a1(n55), .a2(addr[5]), .b1(n140), .b2(rx_data[13]), .c1(n53), 
        .c2(rx_data[5]), .zn(n51) );
  ao06d1 U131 ( .a1(n55), .a2(addr[2]), .b1(n140), .b2(rx_data[10]), .c1(n53), 
        .c2(rx_data[2]), .zn(n52) );
  in01d0 U132 ( .i(n52), .zn(n224) );
  ao06d1 U133 ( .a1(n55), .a2(addr[0]), .b1(n140), .b2(rx_data[8]), .c1(n53), 
        .c2(rx_data[0]), .zn(n56) );
  in01d0 U134 ( .i(n56), .zn(n222) );
  nd04d0 U135 ( .a1(addr[4]), .a2(addr[5]), .a3(n64), .a4(n74), .zn(n59) );
  ao01d0 U136 ( .a1(n86), .a2(VOUT_CONFIG[3]), .b1(VOUT_STATUS[3]), .b2(n68), 
        .zn(n57) );
  oa05d0 U137 ( .a1(n76), .a2(n59), .b(n57), .c(n65), .zn(N284) );
  ao04d0 U138 ( .a1(n86), .a2(VOUT_CONFIG[4]), .b(n68), .zn(n58) );
  nd02d0 U139 ( .a1(n58), .a2(n59), .zn(N285) );
  in01d0 U140 ( .i(addr[0]), .zn(n66) );
  nd03d1 U141 ( .a1(addr[1]), .a2(n75), .a3(n66), .zn(n89) );
  ao01d0 U142 ( .a1(n86), .a2(VOUT_CONFIG[6]), .b1(VOUT_STATUS[6]), .b2(n68), 
        .zn(n61) );
  or02d1 U143 ( .a1(n59), .a2(n76), .z(n60) );
  oa05d0 U144 ( .a1(n89), .a2(n62), .b(n61), .c(n60), .zn(N287) );
  nd02d0 U145 ( .a1(n86), .a2(VOUT_CONFIG[2]), .zn(n63) );
  nd02d0 U146 ( .a1(n63), .a2(n65), .zn(N283) );
  nd03d1 U147 ( .a1(addr[5]), .a2(addr[4]), .a3(n64), .zn(n71) );
  oa08d1 U148 ( .a1(n66), .a2(n73), .a3(addr[1]), .b(n65), .zn(n67) );
  in01d0 U149 ( .i(n67), .zn(n70) );
  ao01d0 U150 ( .a1(n86), .a2(VOUT_CONFIG[5]), .b1(VOUT_STATUS[5]), .b2(n68), 
        .zn(n69) );
  oa05d0 U151 ( .a1(addr[0]), .a2(n71), .b(n70), .c(n69), .zn(N286) );
  fn01d1 U152 ( .a1(n72), .b1(addr[1]), .zn(n87) );
  nr02d0 U153 ( .a1(n74), .a2(n73), .zn(n82) );
  ao01d0 U154 ( .a1(n76), .a2(n75), .b1(n82), .b2(SSTAT_0_), .zn(n78) );
  nd02d0 U155 ( .a1(VOUT_CONFIG[0]), .a2(n86), .zn(n77) );
  oa05d0 U156 ( .a1(n87), .a2(n163), .b(n78), .c(n77), .zn(N281) );
  fn03d2 U157 ( .a1(OUTPUT_CONTROL_0_), .a2(n115), .b1(VOUT_STATUS[1]), .b2(
        OUTPUT_CONTROL_0_), .zn(n186) );
  ao01d0 U158 ( .a1(data_for_rd_cmd[1]), .a2(n153), .b1(pl_tx_data[1]), .b2(
        n155), .zn(n79) );
  nd03d1 U159 ( .a1(RESP[1]), .a2(rx_data_valid_2r), .a3(n137), .zn(n80) );
  nd02d0 U160 ( .a1(n79), .a2(n80), .zn(n193) );
  ao01d0 U161 ( .a1(data_for_rd_cmd[0]), .a2(n153), .b1(pl_tx_data[0]), .b2(
        n155), .zn(n81) );
  nd02d0 U162 ( .a1(n81), .a2(n80), .zn(n192) );
  fn03d2 U163 ( .a1(OUTPUT_CONTROL_0_), .a2(n108), .b1(VOUT_STATUS[6]), .b2(
        OUTPUT_CONTROL_0_), .zn(n201) );
  fn03d2 U164 ( .a1(OUTPUT_CONTROL_0_), .a2(n108), .b1(VOUT_STATUS[3]), .b2(
        OUTPUT_CONTROL_0_), .zn(n197) );
  fn03d2 U165 ( .a1(n83), .a2(n82), .b1(SSTAT_0_), .b2(par_error), .zn(n247)
         );
  nd02d0 U166 ( .a1(n84), .a2(n125), .zn(pl_tx_en) );
  in01d0 U167 ( .i(wr_data[0]), .zn(n144) );
  nr03d0 U168 ( .a1(n85), .a2(n144), .a3(n87), .zn(N125) );
  in01d0 U169 ( .i(rx_data_valid_r), .zn(n93) );
  in01d0 U170 ( .i(RESP[3]), .zn(n156) );
  fn05d1 U171 ( .a1(n87), .b1(n86), .zn(n90) );
  ao03d1 U172 ( .a1(addr[5]), .a2(n90), .b1(n89), .b2(n90), .c(n88), .zn(n91)
         );
  in01d0 U173 ( .i(wr_en), .zn(n139) );
  ao03d1 U174 ( .a1(n91), .a2(wr_en), .b1(n166), .b2(n139), .c(n93), .zn(n92)
         );
  ao04d0 U175 ( .a1(n93), .a2(n156), .b(n92), .zn(n246) );
  ao14d0 U176 ( .a1(n93), .a2(RESP[1]), .b(n92), .z(n245) );
  oa02d1 U177 ( .a1(vol_adjust_cycle_cnt[1]), .a2(OUTPUT_CONTROL_0_), .a3(n95), 
        .b1(n94), .b2(n105), .b3(vol_adjust_cycle_cnt[0]), .zn(n244) );
  oa04d0 U178 ( .a1(vol_adjust_cycle_cnt[0]), .a2(n105), .b(n163), .zn(n243)
         );
  in01d0 U179 ( .i(n96), .zn(n98) );
  in01d0 U180 ( .i(vol_adjust_cycle_cnt[2]), .zn(n97) );
  oa02d1 U181 ( .a1(vol_adjust_cycle_cnt[2]), .a2(OUTPUT_CONTROL_0_), .a3(n98), 
        .b1(n97), .b2(n105), .b3(n96), .zn(n242) );
  ao05d0 U182 ( .a1(n101), .a2(n100), .b(n99), .c(n105), .zn(n241) );
  nr02d0 U183 ( .a1(n103), .a2(n102), .zn(n106) );
  ao05d0 U184 ( .a1(n103), .a2(n102), .b(n106), .c(n105), .zn(n239) );
  nr02d0 U185 ( .a1(vol_adjust_cycle_cnt[6]), .a2(n106), .zn(n104) );
  ao05d0 U186 ( .a1(vol_adjust_cycle_cnt[6]), .a2(n106), .b(n105), .c(n104), 
        .zn(n238) );
  nr02d0 U187 ( .a1(VOUT_STATUS[5]), .a2(n107), .zn(n118) );
  in01d0 U188 ( .i(VOUT_STATUS[5]), .zn(n164) );
  nr03d0 U189 ( .a1(VOUT_STATUS[3]), .a2(VOUT_STATUS[6]), .a3(n164), .zn(n114)
         );
  ao01d0 U190 ( .a1(n115), .a2(n118), .b1(n165), .b2(n114), .zn(n113) );
  nd02d0 U191 ( .a1(VOUT_STATUS[1]), .a2(OUTPUT_CONTROL_0_), .zn(n123) );
  in01d0 U192 ( .i(n108), .zn(n124) );
  nd04d0 U193 ( .a1(VOUT_CONFIG[5]), .a2(VOUT_CONFIG[1]), .a3(n147), .a4(n149), 
        .zn(n109) );
  oa04d0 U194 ( .a1(n110), .a2(n109), .b(OUTPUT_CONTROL_0_), .zn(n112) );
  oa04d0 U195 ( .a1(n124), .a2(n112), .b(n111), .zn(n116) );
  fn04d0 U196 ( .a1(n113), .a2(n123), .b1(up_step[0]), .b2(n116), .zn(n237) );
  nd02d0 U197 ( .a1(n115), .a2(n114), .zn(n117) );
  fn04d0 U198 ( .a1(n117), .a2(n123), .b1(up_step[1]), .b2(n116), .zn(n236) );
  ao01d0 U199 ( .a1(n120), .a2(down_step[0]), .b1(n165), .b2(n119), .zn(n121)
         );
  oa08d1 U200 ( .a1(n124), .a2(n123), .a3(n122), .b(n121), .zn(n235) );
  ao04d0 U201 ( .a1(cmd_get_but_not_process), .a2(n125), .b(rx_data_valid), 
        .zn(n126) );
  nr02d0 U202 ( .a1(reset_from_master), .a2(n126), .zn(n231) );
  nr03d0 U203 ( .a1(rx_data[19]), .a2(rx_data[16]), .a3(rx_data[8]), .zn(n128)
         );
  nr03d0 U204 ( .a1(rx_data[15]), .a2(rx_data[14]), .a3(rx_data[13]), .zn(n127) );
  nd04d0 U205 ( .a1(rx_data_valid), .a2(n129), .a3(n128), .a4(n127), .zn(n136)
         );
  nd02d0 U206 ( .a1(rx_data[10]), .a2(rx_data[11]), .zn(n130) );
  nr03d0 U207 ( .a1(rx_data[12]), .a2(rx_data[9]), .a3(n130), .zn(n133) );
  in01d0 U208 ( .i(rx_data[23]), .zn(n131) );
  nd04d0 U209 ( .a1(n134), .a2(n133), .a3(n132), .a4(n131), .zn(n135) );
  oa01d0 U210 ( .a1(rx_data_valid), .a2(n137), .b1(n136), .b2(n135), .zn(n230)
         );
  oa04d0 U211 ( .a1(rx_data_valid), .a2(n139), .b(n138), .zn(n221) );
  in01d0 U212 ( .i(wr_data[7]), .zn(n146) );
  fn04d0 U213 ( .a1(rx_data_valid), .a2(n146), .b1(n140), .b2(rx_data[7]), 
        .zn(n220) );
  in01d0 U214 ( .i(wr_data[6]), .zn(n148) );
  fn04d0 U215 ( .a1(rx_data_valid), .a2(n148), .b1(n140), .b2(rx_data[6]), 
        .zn(n219) );
  in01d0 U216 ( .i(wr_data[5]), .zn(n158) );
  fn04d0 U217 ( .a1(rx_data_valid), .a2(n158), .b1(n140), .b2(rx_data[5]), 
        .zn(n218) );
  in01d0 U218 ( .i(wr_data[3]), .zn(n150) );
  fn04d0 U219 ( .a1(rx_data_valid), .a2(n150), .b1(n140), .b2(rx_data[3]), 
        .zn(n216) );
  in01d0 U220 ( .i(wr_data[2]), .zn(n152) );
  fn04d0 U221 ( .a1(rx_data_valid), .a2(n152), .b1(n140), .b2(rx_data[2]), 
        .zn(n215) );
  in01d0 U222 ( .i(wr_data[1]), .zn(n161) );
  fn04d0 U223 ( .a1(rx_data_valid), .a2(n161), .b1(n140), .b2(rx_data[1]), 
        .zn(n214) );
  fn04d0 U224 ( .a1(rx_data_valid), .a2(n144), .b1(n140), .b2(rx_data[0]), 
        .zn(n213) );
  in01d0 U225 ( .i(n153), .zn(n141) );
  fn04d0 U226 ( .a1(n156), .a2(n141), .b1(pl_tx_data[11]), .b2(n155), .zn(n212) );
  in01d0 U227 ( .i(RESP[1]), .zn(n142) );
  fn04d0 U228 ( .a1(n142), .a2(n141), .b1(pl_tx_data[9]), .b2(n155), .zn(n211)
         );
  fn04d0 U229 ( .a1(n142), .a2(n141), .b1(pl_tx_data[8]), .b2(n155), .zn(n210)
         );
  ao01d0 U230 ( .a1(n162), .a2(n144), .b1(n143), .b2(n159), .zn(n209) );
  ao01d0 U231 ( .a1(n162), .a2(n146), .b1(n145), .b2(n159), .zn(n208) );
  ao01d0 U232 ( .a1(n162), .a2(n148), .b1(n147), .b2(n159), .zn(n207) );
  ao01d0 U233 ( .a1(n162), .a2(n150), .b1(n149), .b2(n159), .zn(n206) );
  ao01d0 U234 ( .a1(n162), .a2(n152), .b1(n151), .b2(n159), .zn(n205) );
  ao01d0 U235 ( .a1(data_for_rd_cmd[3]), .a2(n153), .b1(pl_tx_data[3]), .b2(
        n155), .zn(n154) );
  oa08d1 U236 ( .a1(rd_en), .a2(n156), .a3(n155), .b(n154), .zn(n196) );
  ao01d0 U237 ( .a1(n162), .a2(n158), .b1(n157), .b2(n159), .zn(n191) );
  ao01d0 U238 ( .a1(n162), .a2(n161), .b1(n160), .b2(n159), .zn(n189) );
  ao01d0 U239 ( .a1(OUTPUT_CONTROL_0_), .a2(n165), .b1(n164), .b2(n163), .zn(
        n188) );
  in02d1 U8 ( .i(n138), .zn(n140) );
  nd02d0 U116 ( .a1(n45), .a2(rx_data_valid), .zn(n138) );
endmodule


module fcp_crc_1 ( data_in, crc_en, crc_out, rst, clk );
  input [31:0] data_in;
  output [7:0] crc_out;
  input crc_en, rst, clk;
  wire   n65, n66, n67, n68, n69, n70, n71, n72, n1, n2, n3, n4, n5, n6, n7,
         n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21,
         n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35,
         n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49,
         n50, n51, n52, n53, n54, n55, n56;

  dfntnb lfsr_q_reg_7_ ( .d(n65), .cp(clk), .q(crc_out[7]), .qn(n56) );
  dfntnb lfsr_q_reg_6_ ( .d(n66), .cp(clk), .q(crc_out[6]), .qn(n55) );
  dfntnb lfsr_q_reg_5_ ( .d(n67), .cp(clk), .q(crc_out[5]), .qn(n54) );
  dfntnb lfsr_q_reg_4_ ( .d(n68), .cp(clk), .q(crc_out[4]), .qn(n53) );
  dfntnb lfsr_q_reg_3_ ( .d(n69), .cp(clk), .q(crc_out[3]), .qn(n52) );
  dfntnb lfsr_q_reg_1_ ( .d(n71), .cp(clk), .q(crc_out[1]), .qn(n50) );
  dfntnb lfsr_q_reg_0_ ( .d(n72), .cp(clk), .q(crc_out[0]), .qn(n49) );
  dfntnb lfsr_q_reg_2_ ( .d(n70), .cp(clk), .q(crc_out[2]), .qn(n51) );
  fn01d1 U2 ( .a1(rst), .b1(crc_en), .zn(n48) );
  xn02d0 U3 ( .a1(data_in[22]), .a2(data_in[5]), .zn(n15) );
  xn02d0 U4 ( .a1(data_in[23]), .a2(data_in[6]), .zn(n27) );
  xn02d0 U5 ( .a1(n15), .a2(n27), .zn(n11) );
  xn02d0 U6 ( .a1(crc_out[1]), .a2(data_in[8]), .zn(n22) );
  xn02d0 U7 ( .a1(crc_out[0]), .a2(data_in[7]), .zn(n37) );
  xn02d0 U8 ( .a1(data_in[19]), .a2(data_in[2]), .zn(n38) );
  xn02d0 U9 ( .a1(n37), .a2(n38), .zn(n1) );
  xn02d0 U10 ( .a1(n22), .a2(n1), .zn(n3) );
  xn02d0 U11 ( .a1(crc_out[4]), .a2(data_in[11]), .zn(n2) );
  xn02d0 U12 ( .a1(n3), .a2(n2), .zn(n4) );
  xn02d0 U13 ( .a1(n11), .a2(n4), .zn(n5) );
  or02d1 U14 ( .a1(rst), .a2(crc_en), .z(n46) );
  oa01d0 U15 ( .a1(n48), .a2(n5), .b1(n51), .b2(n46), .zn(n70) );
  xn02d0 U16 ( .a1(data_in[21]), .a2(data_in[4]), .zn(n9) );
  xn02d0 U17 ( .a1(data_in[20]), .a2(data_in[3]), .zn(n30) );
  xn02d0 U18 ( .a1(n9), .a2(n30), .zn(n39) );
  xn02d0 U19 ( .a1(data_in[17]), .a2(data_in[0]), .zn(n28) );
  xn02d0 U20 ( .a1(n39), .a2(n28), .zn(n23) );
  xn02d0 U21 ( .a1(crc_out[2]), .a2(data_in[9]), .zn(n6) );
  xn02d0 U22 ( .a1(n11), .a2(n6), .zn(n7) );
  xn02d0 U23 ( .a1(n23), .a2(n7), .zn(n8) );
  oa01d0 U24 ( .a1(n48), .a2(n8), .b1(n46), .b2(n49), .zn(n72) );
  xn02d0 U25 ( .a1(n9), .a2(n37), .zn(n17) );
  xn02d0 U26 ( .a1(crc_out[3]), .a2(data_in[10]), .zn(n10) );
  xn02d0 U27 ( .a1(n17), .a2(n10), .zn(n13) );
  xn02d0 U28 ( .a1(data_in[18]), .a2(data_in[1]), .zn(n36) );
  xn02d0 U29 ( .a1(n11), .a2(n36), .zn(n12) );
  xn02d0 U30 ( .a1(n13), .a2(n12), .zn(n14) );
  oa01d0 U31 ( .a1(n48), .a2(n14), .b1(n46), .b2(n50), .zn(n71) );
  xn02d0 U32 ( .a1(n15), .a2(n22), .zn(n43) );
  xn02d0 U33 ( .a1(crc_out[5]), .a2(data_in[12]), .zn(n16) );
  xn02d0 U34 ( .a1(n43), .a2(n16), .zn(n19) );
  xn02d0 U35 ( .a1(n28), .a2(n17), .zn(n18) );
  xn02d0 U36 ( .a1(n19), .a2(n18), .zn(n20) );
  oa01d0 U37 ( .a1(n48), .a2(n20), .b1(n46), .b2(n52), .zn(n69) );
  xn02d0 U38 ( .a1(crc_out[6]), .a2(data_in[13]), .zn(n21) );
  xn02d0 U39 ( .a1(n22), .a2(n21), .zn(n25) );
  xn02d0 U40 ( .a1(n23), .a2(n36), .zn(n24) );
  xn02d0 U41 ( .a1(n25), .a2(n24), .zn(n26) );
  oa01d0 U42 ( .a1(n48), .a2(n26), .b1(n46), .b2(n53), .zn(n68) );
  xn02d0 U43 ( .a1(n28), .a2(n27), .zn(n29) );
  xn02d0 U44 ( .a1(n36), .a2(n29), .zn(n32) );
  xn02d0 U45 ( .a1(n30), .a2(n38), .zn(n31) );
  xn02d0 U46 ( .a1(n32), .a2(n31), .zn(n34) );
  xn02d0 U47 ( .a1(crc_out[7]), .a2(data_in[14]), .zn(n33) );
  xn02d0 U48 ( .a1(n34), .a2(n33), .zn(n35) );
  oa01d0 U49 ( .a1(n48), .a2(n35), .b1(n46), .b2(n54), .zn(n67) );
  fn03d2 U50 ( .a1(n37), .a2(n36), .b1(n36), .b2(n37), .zn(n41) );
  xn02d0 U51 ( .a1(n39), .a2(n38), .zn(n45) );
  xn02d0 U52 ( .a1(data_in[15]), .a2(n45), .zn(n40) );
  xn02d0 U53 ( .a1(n41), .a2(n40), .zn(n42) );
  oa01d0 U54 ( .a1(n48), .a2(n42), .b1(n46), .b2(n55), .zn(n66) );
  xo02d2 U55 ( .a1(n43), .a2(data_in[16]), .z(n44) );
  xn02d0 U56 ( .a1(n45), .a2(n44), .zn(n47) );
  oa01d0 U57 ( .a1(n48), .a2(n47), .b1(n46), .b2(n56), .zn(n65) );
endmodule


module fcp_rx_ctrl ( clk, rstn, data, rx_own_bus, ping_from_master, 
        reset_from_master, crc_error, par_error, rx_data, rx_data_valid );
  output [23:0] rx_data;
  input clk, rstn, data, rx_own_bus;
  output ping_from_master, reset_from_master, crc_error, par_error,
         rx_data_valid;
  wire   valid_data, enable_search_pos, enable_search_neg, quarter_pulse,
         rx_st, parity_pass, rx_st_r, rx_end_r, crc_en, n149, n150, n151, n152,
         n153, n154, n155, n156, n157, n159, n160, n161, n162, n163, n164,
         n165, n166, n167, n168, n169, n170, n171, n172, n173, n174, n175,
         n176, n177, n178, n179, n180, n181, n182, n183, n184, n185, n186,
         n187, n188, n189, n190, n191, n192, n193, n194, n195, n196, n197,
         n198, n199, n200, n201, n202, n203, n204, n205, n206, n207, n208,
         n209, n210, n211, n212, n213, n214, n215, n216, n217, n218, n219,
         n220, n221, n222, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12,
         n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26,
         n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40,
         n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54,
         n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68,
         n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82,
         n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96,
         n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108,
         n109, n110, n111, n112, n113, n114, n115, n116, n117, n118, n119,
         n120, n121, n122, n123, n124, n125, n126, n127, n128, n129, n130,
         n131, n132, n133, n134, n135, n136, n137, n138, n139, n140, n141,
         n142, n143, n144, n145, n146, n147, n148, n223, n224, n225, n226,
         n227, n228, n229, n230, n231, n232, n233, n234, n235, n236, n237,
         n238, n239, n240, n241;
  wire   [2:0] data_r;
  wire   [10:0] dur_cnt;
  wire   [2:0] low_dur_cnt;
  wire   [4:0] clk_sync_cnt;
  wire   [4:0] cnt_for_sample;
  wire   [8:0] sample_data;
  wire   [3:0] sample_num;
  wire   [7:0] rx_data_with_crc;
  wire   [7:0] crc_data;
  tri   data;

  fcp_crc_1 U_CRC ( .data_in({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        rx_data}), .crc_en(crc_en), .crc_out(crc_data), .rst(quarter_pulse), 
        .clk(clk) );
  dfctnq data_r_reg_0_ ( .d(valid_data), .cp(clk), .cdn(rstn), .q(data_r[0])
         );
  dfctnq data_r_reg_2_ ( .d(data_r[1]), .cp(clk), .cdn(rstn), .q(data_r[2]) );
  dfctnq rx_st_r_reg ( .d(rx_st), .cp(clk), .cdn(rstn), .q(rx_st_r) );
  dfctnq enable_search_neg_reg ( .d(n222), .cp(clk), .cdn(rstn), .q(
        enable_search_neg) );
  dfctnq dur_cnt_reg_0_ ( .d(n221), .cp(clk), .cdn(rstn), .q(dur_cnt[0]) );
  dfctnq dur_cnt_reg_1_ ( .d(n220), .cp(clk), .cdn(rstn), .q(dur_cnt[1]) );
  dfctnq dur_cnt_reg_2_ ( .d(n219), .cp(clk), .cdn(rstn), .q(dur_cnt[2]) );
  dfctnq dur_cnt_reg_3_ ( .d(n218), .cp(clk), .cdn(rstn), .q(dur_cnt[3]) );
  dfctnq dur_cnt_reg_4_ ( .d(n217), .cp(clk), .cdn(rstn), .q(dur_cnt[4]) );
  dfctnq dur_cnt_reg_5_ ( .d(n216), .cp(clk), .cdn(rstn), .q(dur_cnt[5]) );
  dfctnq dur_cnt_reg_6_ ( .d(n215), .cp(clk), .cdn(rstn), .q(dur_cnt[6]) );
  dfctnq dur_cnt_reg_7_ ( .d(n214), .cp(clk), .cdn(rstn), .q(dur_cnt[7]) );
  dfctnq dur_cnt_reg_8_ ( .d(n213), .cp(clk), .cdn(rstn), .q(dur_cnt[8]) );
  dfctnq dur_cnt_reg_9_ ( .d(n212), .cp(clk), .cdn(rstn), .q(dur_cnt[9]) );
  dfctnq dur_cnt_reg_10_ ( .d(n211), .cp(clk), .cdn(rstn), .q(dur_cnt[10]) );
  dfctnq rx_st_reg ( .d(n210), .cp(clk), .cdn(rstn), .q(rx_st) );
  dfctnq enable_search_pos_reg ( .d(n209), .cp(clk), .cdn(rstn), .q(
        enable_search_pos) );
  dfctnq low_dur_cnt_reg_2_ ( .d(n206), .cp(clk), .cdn(rstn), .q(
        low_dur_cnt[2]) );
  dfctnq low_dur_cnt_reg_0_ ( .d(n207), .cp(clk), .cdn(rstn), .q(
        low_dur_cnt[0]) );
  dfctnq low_dur_cnt_reg_1_ ( .d(n208), .cp(clk), .cdn(rstn), .q(
        low_dur_cnt[1]) );
  dfctnq cnt_for_sample_reg_1_ ( .d(n205), .cp(clk), .cdn(rstn), .q(
        cnt_for_sample[1]) );
  dfctnq cnt_for_sample_reg_2_ ( .d(n203), .cp(clk), .cdn(rstn), .q(
        cnt_for_sample[2]) );
  dfctnq cnt_for_sample_reg_3_ ( .d(n202), .cp(clk), .cdn(rstn), .q(
        cnt_for_sample[3]) );
  dfctnq cnt_for_sample_reg_4_ ( .d(n201), .cp(clk), .cdn(rstn), .q(
        cnt_for_sample[4]) );
  dfctnq sample_num_reg_0_ ( .d(n200), .cp(clk), .cdn(rstn), .q(sample_num[0])
         );
  dfctnq sample_num_reg_1_ ( .d(n199), .cp(clk), .cdn(rstn), .q(sample_num[1])
         );
  dfctnq sample_num_reg_2_ ( .d(n198), .cp(clk), .cdn(rstn), .q(sample_num[2])
         );
  dfctnq sample_num_reg_3_ ( .d(n197), .cp(clk), .cdn(rstn), .q(sample_num[3])
         );
  dfctnq clk_sync_cnt_reg_0_ ( .d(n196), .cp(clk), .cdn(rstn), .q(
        clk_sync_cnt[0]) );
  dfctnq clk_sync_cnt_reg_1_ ( .d(n192), .cp(clk), .cdn(rstn), .q(
        clk_sync_cnt[1]) );
  dfctnq clk_sync_cnt_reg_4_ ( .d(n195), .cp(clk), .cdn(rstn), .q(
        clk_sync_cnt[4]) );
  dfctnq clk_sync_cnt_reg_3_ ( .d(n194), .cp(clk), .cdn(rstn), .q(
        clk_sync_cnt[3]) );
  dfctnq clk_sync_cnt_reg_2_ ( .d(n193), .cp(clk), .cdn(rstn), .q(
        clk_sync_cnt[2]) );
  dfctnq rx_data_with_crc_reg_1_ ( .d(n190), .cp(clk), .cdn(rstn), .q(
        rx_data_with_crc[1]) );
  dfctnq rx_data_with_crc_reg_0_ ( .d(n189), .cp(clk), .cdn(rstn), .q(
        rx_data_with_crc[0]) );
  dfctnq rx_data_with_crc_reg_2_ ( .d(n188), .cp(clk), .cdn(rstn), .q(
        rx_data_with_crc[2]) );
  dfctnq rx_data_with_crc_reg_3_ ( .d(n187), .cp(clk), .cdn(rstn), .q(
        rx_data_with_crc[3]) );
  dfctnq rx_data_with_crc_reg_4_ ( .d(n186), .cp(clk), .cdn(rstn), .q(
        rx_data_with_crc[4]) );
  dfctnq rx_data_with_crc_reg_5_ ( .d(n185), .cp(clk), .cdn(rstn), .q(
        rx_data_with_crc[5]) );
  dfctnq rx_data_with_crc_reg_6_ ( .d(n184), .cp(clk), .cdn(rstn), .q(
        rx_data_with_crc[6]) );
  dfctnq rx_data_with_crc_reg_7_ ( .d(n183), .cp(clk), .cdn(rstn), .q(
        rx_data_with_crc[7]) );
  dfctnq rx_data_with_crc_reg_8_ ( .d(n182), .cp(clk), .cdn(rstn), .q(
        rx_data[0]) );
  dfctnq rx_data_with_crc_reg_9_ ( .d(n181), .cp(clk), .cdn(rstn), .q(
        rx_data[1]) );
  dfctnq rx_data_with_crc_reg_10_ ( .d(n180), .cp(clk), .cdn(rstn), .q(
        rx_data[2]) );
  dfctnq rx_data_with_crc_reg_11_ ( .d(n179), .cp(clk), .cdn(rstn), .q(
        rx_data[3]) );
  dfctnq rx_data_with_crc_reg_12_ ( .d(n178), .cp(clk), .cdn(rstn), .q(
        rx_data[4]) );
  dfctnq rx_data_with_crc_reg_13_ ( .d(n177), .cp(clk), .cdn(rstn), .q(
        rx_data[5]) );
  dfctnq rx_data_with_crc_reg_14_ ( .d(n176), .cp(clk), .cdn(rstn), .q(
        rx_data[6]) );
  dfctnq rx_data_with_crc_reg_15_ ( .d(n175), .cp(clk), .cdn(rstn), .q(
        rx_data[7]) );
  dfctnq rx_data_with_crc_reg_16_ ( .d(n174), .cp(clk), .cdn(rstn), .q(
        rx_data[8]) );
  dfctnq rx_data_with_crc_reg_17_ ( .d(n173), .cp(clk), .cdn(rstn), .q(
        rx_data[9]) );
  dfctnq rx_data_with_crc_reg_18_ ( .d(n172), .cp(clk), .cdn(rstn), .q(
        rx_data[10]) );
  dfctnq rx_data_with_crc_reg_19_ ( .d(n171), .cp(clk), .cdn(rstn), .q(
        rx_data[11]) );
  dfctnq rx_data_with_crc_reg_20_ ( .d(n170), .cp(clk), .cdn(rstn), .q(
        rx_data[12]) );
  dfctnq rx_data_with_crc_reg_21_ ( .d(n169), .cp(clk), .cdn(rstn), .q(
        rx_data[13]) );
  dfctnq rx_data_with_crc_reg_22_ ( .d(n168), .cp(clk), .cdn(rstn), .q(
        rx_data[14]) );
  dfctnq rx_data_with_crc_reg_23_ ( .d(n167), .cp(clk), .cdn(rstn), .q(
        rx_data[15]) );
  dfctnq rx_data_with_crc_reg_24_ ( .d(n166), .cp(clk), .cdn(rstn), .q(
        rx_data[16]) );
  dfctnq rx_data_with_crc_reg_25_ ( .d(n165), .cp(clk), .cdn(rstn), .q(
        rx_data[17]) );
  dfctnq rx_data_with_crc_reg_26_ ( .d(n164), .cp(clk), .cdn(rstn), .q(
        rx_data[18]) );
  dfctnq rx_data_with_crc_reg_27_ ( .d(n163), .cp(clk), .cdn(rstn), .q(
        rx_data[19]) );
  dfctnq rx_data_with_crc_reg_28_ ( .d(n162), .cp(clk), .cdn(rstn), .q(
        rx_data[20]) );
  dfctnq rx_data_with_crc_reg_29_ ( .d(n161), .cp(clk), .cdn(rstn), .q(
        rx_data[21]) );
  dfctnq rx_data_with_crc_reg_30_ ( .d(n160), .cp(clk), .cdn(rstn), .q(
        rx_data[22]) );
  dfctnq rx_data_with_crc_reg_31_ ( .d(n159), .cp(clk), .cdn(rstn), .q(
        rx_data[23]) );
  dfctnq rx_end_r_reg ( .d(crc_en), .cp(clk), .cdn(rstn), .q(rx_end_r) );
  dfbtnq cnt_for_sample_reg_0_ ( .d(n204), .cp(clk), .cdn(1'b1), .sdn(rstn), 
        .q(cnt_for_sample[0]) );
  dfbtnq parity_pass_reg ( .d(n191), .cp(clk), .cdn(1'b1), .sdn(rstn), .q(
        parity_pass) );
  dfctnq sample_data_reg_0_ ( .d(n157), .cp(clk), .cdn(rstn), .q(
        sample_data[0]) );
  dfctnq sample_data_reg_1_ ( .d(n156), .cp(clk), .cdn(rstn), .q(
        sample_data[1]) );
  dfctnq sample_data_reg_2_ ( .d(n155), .cp(clk), .cdn(rstn), .q(
        sample_data[2]) );
  dfctnq sample_data_reg_3_ ( .d(n154), .cp(clk), .cdn(rstn), .q(
        sample_data[3]) );
  dfctnq sample_data_reg_4_ ( .d(n153), .cp(clk), .cdn(rstn), .q(
        sample_data[4]) );
  dfctnq sample_data_reg_5_ ( .d(n152), .cp(clk), .cdn(rstn), .q(
        sample_data[5]) );
  dfctnq sample_data_reg_6_ ( .d(n151), .cp(clk), .cdn(rstn), .q(
        sample_data[6]) );
  dfctnq sample_data_reg_7_ ( .d(n150), .cp(clk), .cdn(rstn), .q(
        sample_data[7]) );
  dfctnq sample_data_reg_8_ ( .d(n149), .cp(clk), .cdn(rstn), .q(
        sample_data[8]) );
  dfctnq data_r_reg_1_ ( .d(data_r[0]), .cp(clk), .cdn(rstn), .q(data_r[1]) );
  in02d1 U3 ( .i(data_r[1]), .zn(n230) );
  in01d0 U4 ( .i(ping_from_master), .zn(n117) );
  in01d0 U5 ( .i(n91), .zn(n92) );
  in01d0 U6 ( .i(n20), .zn(n193) );
  nd03d1 U7 ( .a1(data_r[2]), .a2(enable_search_neg), .a3(n230), .zn(n76) );
  nr03d0 U8 ( .a1(dur_cnt[7]), .a2(dur_cnt[5]), .a3(dur_cnt[6]), .zn(n12) );
  in01d0 U9 ( .i(dur_cnt[4]), .zn(n113) );
  in01d0 U10 ( .i(dur_cnt[3]), .zn(n66) );
  nd03d1 U11 ( .a1(n12), .a2(n113), .a3(n66), .zn(n57) );
  nr02d0 U12 ( .a1(dur_cnt[9]), .a2(dur_cnt[10]), .zn(n55) );
  in01d0 U13 ( .i(dur_cnt[8]), .zn(n82) );
  nd03d1 U14 ( .a1(dur_cnt[0]), .a2(dur_cnt[1]), .a3(dur_cnt[2]), .zn(n64) );
  nd03d1 U15 ( .a1(n55), .a2(n82), .a3(n64), .zn(n1) );
  nr03d0 U16 ( .a1(n76), .a2(n57), .a3(n1), .zn(quarter_pulse) );
  in01d0 U17 ( .i(sample_num[0]), .zn(n106) );
  in01d0 U18 ( .i(cnt_for_sample[3]), .zn(n100) );
  in01d0 U19 ( .i(clk_sync_cnt[4]), .zn(n43) );
  in01d0 U20 ( .i(cnt_for_sample[2]), .zn(n97) );
  in01d0 U21 ( .i(cnt_for_sample[0]), .zn(n41) );
  in01d0 U22 ( .i(cnt_for_sample[1]), .zn(n95) );
  oa01d0 U23 ( .a1(clk_sync_cnt[2]), .a2(n95), .b1(clk_sync_cnt[1]), .b2(n41), 
        .zn(n2) );
  ao03d1 U24 ( .a1(n41), .a2(clk_sync_cnt[1]), .b1(n95), .b2(clk_sync_cnt[2]), 
        .c(n2), .zn(n4) );
  ao04d0 U25 ( .a1(clk_sync_cnt[3]), .a2(n97), .b(cnt_for_sample[4]), .zn(n3)
         );
  oa05d0 U26 ( .a1(clk_sync_cnt[3]), .a2(n97), .b(n4), .c(n3), .zn(n5) );
  ao03d1 U27 ( .a1(clk_sync_cnt[4]), .a2(n100), .b1(n43), .b2(
        cnt_for_sample[3]), .c(n5), .zn(n6) );
  ni01d1 U28 ( .i(n6), .z(n241) );
  in02d0 U29 ( .i(n241), .zn(n238) );
  nr02d0 U30 ( .a1(n106), .a2(n238), .zn(n105) );
  in01d0 U31 ( .i(quarter_pulse), .zn(n84) );
  nd02d0 U32 ( .a1(sample_num[1]), .a2(n105), .zn(n111) );
  oa05d0 U33 ( .a1(sample_num[1]), .a2(n105), .b(n84), .c(n111), .zn(n7) );
  in01d0 U34 ( .i(n7), .zn(n199) );
  in01d0 U35 ( .i(rx_st), .zn(n83) );
  nd02d0 U36 ( .a1(rx_st_r), .a2(n83), .zn(n53) );
  in01d0 U37 ( .i(n53), .zn(crc_en) );
  in01d0 U38 ( .i(n76), .zn(n59) );
  in01d0 U39 ( .i(dur_cnt[9]), .zn(n13) );
  in01d0 U40 ( .i(dur_cnt[10]), .zn(n14) );
  nr02d0 U41 ( .a1(n13), .a2(n14), .zn(n8) );
  an04d1 U42 ( .a1(dur_cnt[8]), .a2(n59), .a3(n8), .a4(n57), .z(
        reset_from_master) );
  nr02d0 U43 ( .a1(dur_cnt[4]), .a2(dur_cnt[3]), .zn(n9) );
  nr02d0 U44 ( .a1(dur_cnt[1]), .a2(dur_cnt[2]), .zn(n54) );
  in01d0 U45 ( .i(dur_cnt[0]), .zn(n60) );
  nd02d0 U46 ( .a1(dur_cnt[5]), .a2(dur_cnt[6]), .zn(n71) );
  ao08d1 U47 ( .a1(n9), .a2(n54), .a3(n60), .b(n71), .zn(n11) );
  in01d0 U48 ( .i(dur_cnt[7]), .zn(n78) );
  nd04d0 U49 ( .a1(dur_cnt[8]), .a2(n59), .a3(n55), .a4(n78), .zn(n10) );
  nr03d0 U50 ( .a1(n12), .a2(n11), .a3(n10), .zn(ping_from_master) );
  nr02d0 U51 ( .a1(n64), .a2(n66), .zn(n65) );
  nd02d0 U52 ( .a1(dur_cnt[4]), .a2(n65), .zn(n69) );
  nr02d0 U53 ( .a1(n71), .a2(n69), .zn(n75) );
  nd02d0 U54 ( .a1(dur_cnt[7]), .a2(n75), .zn(n80) );
  nr02d0 U55 ( .a1(n82), .a2(n80), .zn(n15) );
  ao07d1 U56 ( .a1(dur_cnt[9]), .a2(n14), .a3(n15), .b1(n13), .b2(dur_cnt[10]), 
        .zn(n17) );
  nd02d0 U57 ( .a1(data_r[1]), .a2(n15), .zn(n29) );
  nd03d1 U58 ( .a1(dur_cnt[10]), .a2(n76), .a3(n29), .zn(n16) );
  oa04d0 U59 ( .a1(n17), .a2(n230), .b(n16), .zn(n211) );
  nd03d1 U60 ( .a1(quarter_pulse), .a2(sample_num[0]), .a3(sample_num[3]), 
        .zn(n18) );
  nr03d0 U61 ( .a1(sample_num[2]), .a2(sample_num[1]), .a3(n18), .zn(n49) );
  ao04d0 U62 ( .a1(n49), .a2(dur_cnt[2]), .b(ping_from_master), .zn(n19) );
  oa04d0 U63 ( .a1(n49), .a2(n43), .b(n19), .zn(n195) );
  nr02d0 U64 ( .a1(n49), .a2(ping_from_master), .zn(n116) );
  ao06d1 U65 ( .a1(dur_cnt[6]), .a2(ping_from_master), .b1(dur_cnt[0]), .b2(
        n49), .c1(clk_sync_cnt[2]), .c2(n116), .zn(n20) );
  in01d0 U66 ( .i(sample_data[8]), .zn(n239) );
  in01d0 U67 ( .i(sample_data[7]), .zn(n240) );
  xn02d0 U68 ( .a1(n239), .a2(n240), .zn(n21) );
  xn02d0 U69 ( .a1(sample_data[0]), .a2(n21), .zn(n22) );
  xn02d0 U70 ( .a1(sample_data[1]), .a2(n22), .zn(n25) );
  in01d0 U71 ( .i(sample_data[4]), .zn(n235) );
  in01d0 U72 ( .i(sample_data[3]), .zn(n234) );
  xn02d0 U73 ( .a1(n235), .a2(n234), .zn(n23) );
  xn02d0 U74 ( .a1(n23), .a2(sample_data[2]), .zn(n24) );
  xn02d0 U75 ( .a1(n25), .a2(n24), .zn(n27) );
  in01d0 U76 ( .i(sample_data[6]), .zn(n237) );
  in01d0 U77 ( .i(sample_data[5]), .zn(n236) );
  xn02d0 U78 ( .a1(n237), .a2(n236), .zn(n26) );
  xn02d0 U79 ( .a1(n27), .a2(n26), .zn(n50) );
  or02d1 U80 ( .a1(rx_st_r), .a2(n83), .z(n51) );
  nd03d1 U81 ( .a1(n49), .a2(n50), .a3(n51), .zn(n143) );
  ni01d1 U82 ( .i(n143), .z(n229) );
  in01d0 U83 ( .i(rx_data[1]), .zn(n121) );
  nd02d1 U84 ( .a1(n51), .a2(n229), .zn(n145) );
  in01d0 U85 ( .i(rx_data[9]), .zn(n138) );
  oa01d0 U86 ( .a1(n229), .a2(n121), .b1(n145), .b2(n138), .zn(n173) );
  in01d0 U87 ( .i(rx_data_with_crc[3]), .zn(n119) );
  in01d0 U88 ( .i(rx_data[3]), .zn(n131) );
  oa01d0 U89 ( .a1(n229), .a2(n119), .b1(n145), .b2(n131), .zn(n179) );
  in01d0 U90 ( .i(rx_data[6]), .zn(n126) );
  in01d0 U91 ( .i(rx_data[14]), .zn(n224) );
  oa01d0 U92 ( .a1(n229), .a2(n126), .b1(n145), .b2(n224), .zn(n168) );
  nd03d1 U93 ( .a1(dur_cnt[9]), .a2(n76), .a3(n29), .zn(n28) );
  oa04d0 U94 ( .a1(dur_cnt[9]), .a2(n29), .b(n28), .zn(n212) );
  in01d0 U95 ( .i(rx_data_with_crc[2]), .zn(n123) );
  in01d0 U96 ( .i(rx_data_with_crc[4]), .zn(n124) );
  oa01d0 U97 ( .a1(n123), .a2(crc_data[2]), .b1(n124), .b2(crc_data[4]), .zn(
        n30) );
  ao03d1 U98 ( .a1(n123), .a2(crc_data[2]), .b1(crc_data[4]), .b2(n124), .c(
        n30), .zn(n39) );
  in01d0 U99 ( .i(rx_data_with_crc[6]), .zn(n127) );
  in01d0 U100 ( .i(rx_data_with_crc[7]), .zn(n128) );
  oa01d0 U101 ( .a1(n127), .a2(crc_data[6]), .b1(n128), .b2(crc_data[7]), .zn(
        n31) );
  ao03d1 U102 ( .a1(n127), .a2(crc_data[6]), .b1(crc_data[7]), .b2(n128), .c(
        n31), .zn(n38) );
  in01d0 U103 ( .i(rx_data_with_crc[0]), .zn(n120) );
  in01d0 U104 ( .i(rx_data_with_crc[1]), .zn(n122) );
  ao01d0 U105 ( .a1(n120), .a2(crc_data[0]), .b1(n122), .b2(crc_data[1]), .zn(
        n32) );
  oa03d1 U106 ( .a1(n120), .a2(crc_data[0]), .b1(n122), .b2(crc_data[1]), .c(
        n32), .zn(n36) );
  in01d0 U107 ( .i(rx_data_with_crc[5]), .zn(n125) );
  oa05d0 U108 ( .a1(n125), .a2(crc_data[5]), .b(rx_end_r), .c(parity_pass), 
        .zn(n33) );
  ao04d0 U109 ( .a1(n125), .a2(crc_data[5]), .b(n33), .zn(n34) );
  oa04d0 U110 ( .a1(crc_data[3]), .a2(n119), .b(n34), .zn(n35) );
  ao05d0 U111 ( .a1(crc_data[3]), .a2(n119), .b(n36), .c(n35), .zn(n37) );
  an03d1 U112 ( .a1(n39), .a2(n38), .a3(n37), .z(rx_data_valid) );
  an03d0 U113 ( .a1(low_dur_cnt[1]), .a2(low_dur_cnt[0]), .a3(low_dur_cnt[2]), 
        .z(n89) );
  in01d0 U114 ( .i(enable_search_pos), .zn(n85) );
  nr03d0 U115 ( .a1(n230), .a2(n85), .a3(data_r[2]), .zn(n91) );
  oa01d0 U116 ( .a1(n100), .a2(clk_sync_cnt[3]), .b1(n41), .b2(clk_sync_cnt[0]), .zn(n40) );
  ao03d1 U117 ( .a1(n100), .a2(clk_sync_cnt[3]), .b1(clk_sync_cnt[0]), .b2(n41), .c(n40), .zn(n46) );
  oa01d0 U118 ( .a1(clk_sync_cnt[2]), .a2(n97), .b1(clk_sync_cnt[1]), .b2(n95), 
        .zn(n42) );
  ao03d1 U119 ( .a1(n95), .a2(clk_sync_cnt[1]), .b1(n97), .b2(clk_sync_cnt[2]), 
        .c(n42), .zn(n45) );
  in01d0 U120 ( .i(cnt_for_sample[4]), .zn(n103) );
  ao01d0 U121 ( .a1(clk_sync_cnt[4]), .a2(n103), .b1(cnt_for_sample[4]), .b2(
        n43), .zn(n44) );
  ao08d1 U122 ( .a1(n46), .a2(n45), .a3(n44), .b(quarter_pulse), .zn(n47) );
  oa04d0 U123 ( .a1(n89), .a2(n92), .b(n47), .zn(n101) );
  nd02d0 U124 ( .a1(rx_st), .a2(cnt_for_sample[0]), .zn(n94) );
  oa04d0 U125 ( .a1(rx_st), .a2(cnt_for_sample[0]), .b(n94), .zn(n48) );
  fn01d1 U126 ( .a1(n101), .b1(n48), .zn(n204) );
  in01d0 U127 ( .i(n49), .zn(n114) );
  oa04d0 U128 ( .a1(n50), .a2(n114), .b(parity_pass), .zn(n52) );
  nd02d0 U129 ( .a1(n52), .a2(n51), .zn(n191) );
  nr02d0 U130 ( .a1(parity_pass), .a2(n114), .zn(par_error) );
  an02d1 U131 ( .a1(data), .a2(rx_own_bus), .z(valid_data) );
  nd03d1 U133 ( .a1(enable_search_neg), .a2(n117), .a3(n53), .zn(n58) );
  nd04d0 U134 ( .a1(dur_cnt[0]), .a2(n55), .a3(n54), .a4(n82), .zn(n56) );
  oa01d0 U135 ( .a1(reset_from_master), .a2(n58), .b1(n57), .b2(n56), .zn(n222) );
  oa07d1 U136 ( .a1(data_r[1]), .a2(n59), .a3(n60), .b1(dur_cnt[0]), .b2(n230), 
        .zn(n221) );
  ao01d0 U137 ( .a1(data_r[1]), .a2(n60), .b1(n76), .b2(n230), .zn(n63) );
  in01d0 U138 ( .i(dur_cnt[1]), .zn(n115) );
  oa07d1 U139 ( .a1(dur_cnt[1]), .a2(n230), .a3(n60), .b1(n63), .b2(n115), 
        .zn(n220) );
  in01d0 U140 ( .i(dur_cnt[2]), .zn(n62) );
  ao07d1 U141 ( .a1(dur_cnt[1]), .a2(n62), .a3(dur_cnt[0]), .b1(n115), .b2(
        dur_cnt[2]), .zn(n61) );
  oa01d0 U142 ( .a1(n63), .a2(n62), .b1(n230), .b2(n61), .zn(n219) );
  oa04d0 U143 ( .a1(n230), .a2(n64), .b(n76), .zn(n67) );
  oa07d1 U144 ( .a1(dur_cnt[3]), .a2(n64), .a3(n230), .b1(n67), .b2(n66), .zn(
        n218) );
  ao01d0 U145 ( .a1(dur_cnt[4]), .a2(n66), .b1(n65), .b2(n113), .zn(n68) );
  oa01d0 U146 ( .a1(n230), .a2(n68), .b1(n113), .b2(n67), .zn(n217) );
  oa04d0 U147 ( .a1(n230), .a2(n69), .b(n76), .zn(n72) );
  in01d0 U148 ( .i(dur_cnt[5]), .zn(n118) );
  oa07d1 U149 ( .a1(dur_cnt[5]), .a2(n230), .a3(n69), .b1(n72), .b2(n118), 
        .zn(n216) );
  in01d0 U150 ( .i(n69), .zn(n70) );
  ao07d1 U151 ( .a1(dur_cnt[5]), .a2(n71), .a3(n70), .b1(dur_cnt[6]), .b2(n71), 
        .zn(n74) );
  in01d0 U152 ( .i(dur_cnt[6]), .zn(n73) );
  oa01d0 U153 ( .a1(n230), .a2(n74), .b1(n73), .b2(n72), .zn(n215) );
  nd02d0 U154 ( .a1(data_r[1]), .a2(n75), .zn(n77) );
  nd02d0 U155 ( .a1(n76), .a2(n77), .zn(n79) );
  ao01d0 U156 ( .a1(dur_cnt[7]), .a2(n79), .b1(n77), .b2(n78), .zn(n214) );
  oa04d0 U157 ( .a1(n82), .a2(n78), .b(data_r[1]), .zn(n81) );
  ao06d1 U158 ( .a1(n82), .a2(n81), .b1(n82), .b2(n80), .c1(n81), .c2(n79), 
        .zn(n213) );
  oa04d0 U159 ( .a1(ping_from_master), .a2(n83), .b(n84), .zn(n210) );
  oa04d0 U160 ( .a1(crc_en), .a2(n85), .b(n84), .zn(n209) );
  in01d0 U161 ( .i(low_dur_cnt[0]), .zn(n88) );
  ao04d0 U162 ( .a1(n230), .a2(low_dur_cnt[0]), .b(n91), .zn(n86) );
  ao01d0 U163 ( .a1(low_dur_cnt[1]), .a2(n86), .b1(n89), .b2(n92), .zn(n87) );
  oa08d1 U164 ( .a1(data_r[1]), .a2(low_dur_cnt[1]), .a3(n88), .b(n87), .zn(
        n208) );
  ao04d0 U165 ( .a1(data_r[1]), .a2(low_dur_cnt[0]), .b(n89), .zn(n90) );
  oa01d0 U166 ( .a1(low_dur_cnt[0]), .a2(data_r[1]), .b1(n91), .b2(n90), .zn(
        n207) );
  nd02d0 U167 ( .a1(low_dur_cnt[1]), .a2(low_dur_cnt[0]), .zn(n93) );
  fn04d0 U168 ( .a1(data_r[1]), .a2(n93), .b1(low_dur_cnt[2]), .b2(n92), .zn(
        n206) );
  nr02d0 U169 ( .a1(n95), .a2(n94), .zn(n98) );
  ao05d0 U170 ( .a1(n95), .a2(n94), .b(n98), .c(n101), .zn(n205) );
  in01d0 U171 ( .i(n98), .zn(n96) );
  ao03d1 U172 ( .a1(cnt_for_sample[2]), .a2(n98), .b1(n97), .b2(n96), .c(n101), 
        .zn(n203) );
  nd02d0 U173 ( .a1(cnt_for_sample[2]), .a2(n98), .zn(n99) );
  nr02d0 U174 ( .a1(n100), .a2(n99), .zn(n104) );
  ao05d0 U175 ( .a1(n100), .a2(n99), .b(n104), .c(n101), .zn(n202) );
  in01d0 U176 ( .i(n104), .zn(n102) );
  ao03d1 U177 ( .a1(cnt_for_sample[4]), .a2(n104), .b1(n103), .b2(n102), .c(
        n101), .zn(n201) );
  ao05d0 U178 ( .a1(n106), .a2(n238), .b(quarter_pulse), .c(n105), .zn(n200)
         );
  in01d0 U179 ( .i(n111), .zn(n108) );
  nr02d0 U180 ( .a1(sample_num[2]), .a2(n108), .zn(n107) );
  ao05d0 U181 ( .a1(sample_num[2]), .a2(n108), .b(quarter_pulse), .c(n107), 
        .zn(n198) );
  ao08d1 U182 ( .a1(sample_num[0]), .a2(sample_num[2]), .a3(sample_num[1]), 
        .b(sample_num[3]), .zn(n109) );
  ao05d0 U183 ( .a1(sample_num[2]), .a2(sample_num[3]), .b(n109), .c(n238), 
        .zn(n110) );
  ao04d0 U184 ( .a1(sample_num[3]), .a2(n111), .b(n110), .zn(n112) );
  nr02d0 U185 ( .a1(quarter_pulse), .a2(n112), .zn(n197) );
  fn04d0 U186 ( .a1(n113), .a2(n117), .b1(n116), .b2(clk_sync_cnt[0]), .zn(
        n196) );
  fn04d0 U187 ( .a1(n115), .a2(n114), .b1(clk_sync_cnt[3]), .b2(n116), .zn(
        n194) );
  fn04d0 U188 ( .a1(n118), .a2(n117), .b1(clk_sync_cnt[1]), .b2(n116), .zn(
        n192) );
  in01d0 U189 ( .i(sample_data[2]), .zn(n233) );
  ni01d1 U190 ( .i(n143), .z(n225) );
  ni01d1 U191 ( .i(n145), .z(n227) );
  oa01d0 U192 ( .a1(n233), .a2(n225), .b1(n227), .b2(n122), .zn(n190) );
  in01d0 U193 ( .i(sample_data[1]), .zn(n232) );
  oa01d0 U194 ( .a1(n232), .a2(n225), .b1(n227), .b2(n120), .zn(n189) );
  oa01d0 U195 ( .a1(n234), .a2(n225), .b1(n227), .b2(n123), .zn(n188) );
  oa01d0 U196 ( .a1(n235), .a2(n225), .b1(n227), .b2(n119), .zn(n187) );
  oa01d0 U197 ( .a1(n236), .a2(n225), .b1(n227), .b2(n124), .zn(n186) );
  oa01d0 U198 ( .a1(n237), .a2(n225), .b1(n227), .b2(n125), .zn(n185) );
  oa01d0 U199 ( .a1(n240), .a2(n225), .b1(n227), .b2(n127), .zn(n184) );
  oa01d0 U200 ( .a1(n239), .a2(n225), .b1(n227), .b2(n128), .zn(n183) );
  in01d0 U201 ( .i(rx_data[0]), .zn(n129) );
  oa01d0 U202 ( .a1(n143), .a2(n120), .b1(n145), .b2(n129), .zn(n182) );
  oa01d0 U203 ( .a1(n143), .a2(n122), .b1(n145), .b2(n121), .zn(n181) );
  in01d0 U204 ( .i(rx_data[2]), .zn(n130) );
  oa01d0 U205 ( .a1(n225), .a2(n123), .b1(n145), .b2(n130), .zn(n180) );
  in01d0 U206 ( .i(rx_data[4]), .zn(n132) );
  oa01d0 U207 ( .a1(n229), .a2(n124), .b1(n227), .b2(n132), .zn(n178) );
  in01d0 U208 ( .i(rx_data[5]), .zn(n133) );
  oa01d0 U209 ( .a1(n143), .a2(n125), .b1(n145), .b2(n133), .zn(n177) );
  oa01d0 U210 ( .a1(n143), .a2(n127), .b1(n145), .b2(n126), .zn(n176) );
  in01d0 U211 ( .i(rx_data[7]), .zn(n134) );
  oa01d0 U212 ( .a1(n143), .a2(n128), .b1(n227), .b2(n134), .zn(n175) );
  in01d0 U213 ( .i(rx_data[8]), .zn(n136) );
  oa01d0 U214 ( .a1(n225), .a2(n129), .b1(n145), .b2(n136), .zn(n174) );
  in01d0 U215 ( .i(rx_data[10]), .zn(n140) );
  oa01d0 U216 ( .a1(n225), .a2(n130), .b1(n227), .b2(n140), .zn(n172) );
  in01d0 U217 ( .i(rx_data[11]), .zn(n142) );
  oa01d0 U218 ( .a1(n143), .a2(n131), .b1(n145), .b2(n142), .zn(n171) );
  in01d0 U219 ( .i(rx_data[12]), .zn(n146) );
  oa01d0 U220 ( .a1(n225), .a2(n132), .b1(n145), .b2(n146), .zn(n170) );
  in01d0 U221 ( .i(rx_data[13]), .zn(n148) );
  oa01d0 U222 ( .a1(n229), .a2(n133), .b1(n227), .b2(n148), .zn(n169) );
  in01d0 U223 ( .i(rx_data[15]), .zn(n228) );
  oa01d0 U224 ( .a1(n225), .a2(n134), .b1(n145), .b2(n228), .zn(n167) );
  in01d0 U225 ( .i(rx_data[16]), .zn(n135) );
  oa01d0 U226 ( .a1(n225), .a2(n136), .b1(n227), .b2(n135), .zn(n166) );
  in01d0 U227 ( .i(rx_data[17]), .zn(n137) );
  oa01d0 U228 ( .a1(n225), .a2(n138), .b1(n227), .b2(n137), .zn(n165) );
  in01d0 U229 ( .i(rx_data[18]), .zn(n139) );
  oa01d0 U230 ( .a1(n225), .a2(n140), .b1(n227), .b2(n139), .zn(n164) );
  in01d0 U231 ( .i(rx_data[19]), .zn(n141) );
  oa01d0 U232 ( .a1(n143), .a2(n142), .b1(n227), .b2(n141), .zn(n163) );
  in01d0 U233 ( .i(rx_data[20]), .zn(n144) );
  oa01d0 U234 ( .a1(n225), .a2(n146), .b1(n145), .b2(n144), .zn(n162) );
  in01d0 U235 ( .i(rx_data[21]), .zn(n147) );
  oa01d0 U236 ( .a1(n229), .a2(n148), .b1(n227), .b2(n147), .zn(n161) );
  in01d0 U237 ( .i(rx_data[22]), .zn(n223) );
  oa01d0 U238 ( .a1(n225), .a2(n224), .b1(n227), .b2(n223), .zn(n160) );
  in01d0 U239 ( .i(rx_data[23]), .zn(n226) );
  oa01d0 U240 ( .a1(n229), .a2(n228), .b1(n227), .b2(n226), .zn(n159) );
  in01d0 U242 ( .i(sample_data[0]), .zn(n231) );
  ao01d0 U243 ( .a1(n241), .a2(n230), .b1(n231), .b2(n238), .zn(n157) );
  ao01d0 U244 ( .a1(n241), .a2(n231), .b1(n232), .b2(n238), .zn(n156) );
  ao01d0 U245 ( .a1(n241), .a2(n232), .b1(n233), .b2(n238), .zn(n155) );
  ao01d0 U246 ( .a1(n241), .a2(n233), .b1(n234), .b2(n238), .zn(n154) );
  ao01d0 U247 ( .a1(n241), .a2(n234), .b1(n235), .b2(n238), .zn(n153) );
  ao01d0 U248 ( .a1(n241), .a2(n235), .b1(n236), .b2(n238), .zn(n152) );
  ao01d0 U249 ( .a1(n241), .a2(n236), .b1(n237), .b2(n238), .zn(n151) );
  ao01d0 U250 ( .a1(n241), .a2(n237), .b1(n240), .b2(n238), .zn(n150) );
  ao01d0 U251 ( .a1(n241), .a2(n240), .b1(n239), .b2(n238), .zn(n149) );
endmodule


module fcp_crc_0 ( data_in, crc_en, crc_out, rst, clk );
  input [31:0] data_in;
  output [7:0] crc_out;
  input crc_en, rst, clk;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57;

  dfntnb lfsr_q_reg_0_ ( .d(n50), .cp(clk), .q(crc_out[0]), .qn(n42) );
  dfntnb lfsr_q_reg_3_ ( .d(n53), .cp(clk), .q(crc_out[3]), .qn(n45) );
  dfntnb lfsr_q_reg_1_ ( .d(n51), .cp(clk), .q(crc_out[1]), .qn(n43) );
  dfntnb lfsr_q_reg_7_ ( .d(n57), .cp(clk), .q(crc_out[7]), .qn(n49) );
  dfntnb lfsr_q_reg_6_ ( .d(n56), .cp(clk), .q(crc_out[6]), .qn(n48) );
  dfntnb lfsr_q_reg_5_ ( .d(n55), .cp(clk), .q(crc_out[5]), .qn(n47) );
  dfntnb lfsr_q_reg_4_ ( .d(n54), .cp(clk), .q(crc_out[4]), .qn(n46) );
  dfntnb lfsr_q_reg_2_ ( .d(n52), .cp(clk), .q(crc_out[2]), .qn(n44) );
  fn01d1 U2 ( .a1(rst), .b1(crc_en), .zn(n41) );
  in01d0 U3 ( .i(n19), .zn(n20) );
  in01d0 U4 ( .i(n33), .zn(n34) );
  in01d0 U5 ( .i(n32), .zn(n37) );
  xn02d0 U6 ( .a1(data_in[5]), .a2(data_in[6]), .zn(n9) );
  fn03d2 U7 ( .a1(crc_out[2]), .a2(n9), .b1(n9), .b2(crc_out[2]), .zn(n2) );
  xn02d0 U8 ( .a1(data_in[4]), .a2(data_in[3]), .zn(n30) );
  xn02d0 U9 ( .a1(data_in[0]), .a2(n30), .zn(n19) );
  xn02d0 U10 ( .a1(n19), .a2(data_in[9]), .zn(n1) );
  xn02d0 U11 ( .a1(n2), .a2(n1), .zn(n3) );
  or02d1 U12 ( .a1(rst), .a2(crc_en), .z(n39) );
  oa01d0 U13 ( .a1(n41), .a2(n3), .b1(n42), .b2(n39), .zn(n50) );
  xn02d0 U14 ( .a1(crc_out[0]), .a2(data_in[7]), .zn(n35) );
  xn02d0 U15 ( .a1(data_in[4]), .a2(n35), .zn(n17) );
  xn02d0 U16 ( .a1(data_in[1]), .a2(crc_out[3]), .zn(n5) );
  in01d0 U17 ( .i(n9), .zn(n4) );
  xn02d0 U18 ( .a1(n5), .a2(n4), .zn(n6) );
  xn02d0 U19 ( .a1(n17), .a2(n6), .zn(n7) );
  oa01d0 U20 ( .a1(n41), .a2(n7), .b1(n43), .b2(n39), .zn(n51) );
  xn02d0 U21 ( .a1(data_in[8]), .a2(n43), .zn(n23) );
  xn02d0 U22 ( .a1(n23), .a2(data_in[11]), .zn(n8) );
  xn02d0 U23 ( .a1(n9), .a2(n8), .zn(n11) );
  xn02d0 U24 ( .a1(data_in[2]), .a2(crc_out[4]), .zn(n10) );
  xn02d0 U25 ( .a1(n11), .a2(n10), .zn(n12) );
  xn02d0 U26 ( .a1(n35), .a2(n12), .zn(n13) );
  oa01d0 U27 ( .a1(n41), .a2(n13), .b1(n39), .b2(n44), .zn(n52) );
  xn02d0 U28 ( .a1(data_in[0]), .a2(crc_out[5]), .zn(n15) );
  xn02d0 U29 ( .a1(data_in[5]), .a2(n23), .zn(n38) );
  in01d0 U30 ( .i(n38), .zn(n14) );
  xn02d0 U31 ( .a1(n15), .a2(n14), .zn(n16) );
  xn02d0 U32 ( .a1(n17), .a2(n16), .zn(n18) );
  oa01d0 U33 ( .a1(n41), .a2(n18), .b1(n45), .b2(n39), .zn(n53) );
  in01d0 U34 ( .i(data_in[1]), .zn(n31) );
  ao01d0 U35 ( .a1(data_in[1]), .a2(crc_out[6]), .b1(n48), .b2(n31), .zn(n21)
         );
  xn02d0 U36 ( .a1(n21), .a2(n20), .zn(n22) );
  xn02d0 U37 ( .a1(n23), .a2(n22), .zn(n24) );
  oa01d0 U38 ( .a1(n41), .a2(n24), .b1(n39), .b2(n46), .zn(n54) );
  ao01d0 U39 ( .a1(data_in[1]), .a2(crc_out[7]), .b1(n49), .b2(n31), .zn(n25)
         );
  xo02d2 U40 ( .a1(data_in[6]), .a2(n25), .z(n27) );
  xn02d0 U41 ( .a1(data_in[2]), .a2(data_in[3]), .zn(n26) );
  xn02d0 U42 ( .a1(n27), .a2(n26), .zn(n28) );
  xn02d0 U43 ( .a1(data_in[0]), .a2(n28), .zn(n29) );
  oa01d0 U44 ( .a1(n41), .a2(n29), .b1(n39), .b2(n47), .zn(n55) );
  xn02d0 U45 ( .a1(data_in[2]), .a2(n30), .zn(n32) );
  ao01d0 U46 ( .a1(data_in[1]), .a2(n32), .b1(n37), .b2(n31), .zn(n33) );
  xn02d0 U47 ( .a1(n35), .a2(n34), .zn(n36) );
  oa01d0 U48 ( .a1(n41), .a2(n36), .b1(n39), .b2(n48), .zn(n56) );
  xn02d0 U49 ( .a1(n38), .a2(n37), .zn(n40) );
  oa01d0 U50 ( .a1(n41), .a2(n40), .b1(n39), .b2(n49), .zn(n57) );
endmodule


module fcp_tx_ctrl ( clk, rstn, tx_en, tx_type, tx_data, data, tx_done );
  input [15:0] tx_data;
  input clk, rstn, tx_en, tx_type;
  output data, tx_done;
  wire   tx_en_r, tx_init, tx_start, N41, N42, N43, N44, N45, tx_type_reg,
         respond_rd, parity_value, crc_en, n136, n137, n138, n139, n140, n141,
         n142, n143, n144, n145, n146, n147, n148, n149, n150, n151, n153,
         n158, n159, n160, n161, n162, n163, n164, n165, n166, n167, n168,
         n169, n170, n171, n172, n173, n174, n175, n176, n1, n2, n3, n4, n5,
         n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48,
         n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62,
         n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76,
         n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90,
         n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103,
         n104, n105, n106, n107, n108, n109, n110, n111, n112, n113, n114,
         n115, n116, n117, n118, n119, n120, n121, n122, n123;
  wire   [4:0] cycle_cnt_for_UI;
  wire   [1:0] tx_cur_st;
  wire   [3:0] UI_cnt;
  wire   [2:0] cycle_cnt_for_quarter_UI;
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
  dfctnq tx_type_reg_reg ( .d(n174), .cp(clk), .cdn(rstn), .q(tx_type_reg) );
  dfctnq tx_cur_st_reg_0_ ( .d(n175), .cp(clk), .cdn(rstn), .q(tx_cur_st[0])
         );
  dfctnq tx_cur_st_reg_1_ ( .d(n176), .cp(clk), .cdn(rstn), .q(tx_cur_st[1])
         );
  dfctnq cycle_cnt_for_UI_reg_1_ ( .d(N42), .cp(clk), .cdn(rstn), .q(
        cycle_cnt_for_UI[1]) );
  dfctnq cycle_cnt_for_UI_reg_2_ ( .d(N43), .cp(clk), .cdn(rstn), .q(
        cycle_cnt_for_UI[2]) );
  dfctnq cycle_cnt_for_UI_reg_3_ ( .d(N44), .cp(clk), .cdn(rstn), .q(
        cycle_cnt_for_UI[3]) );
  dfctnq cycle_cnt_for_UI_reg_4_ ( .d(N45), .cp(clk), .cdn(rstn), .q(
        cycle_cnt_for_UI[4]) );
  dfctnq byte_cnt_reg_0_ ( .d(n172), .cp(clk), .cdn(rstn), .q(byte_cnt[0]) );
  dfctnq byte_cnt_reg_1_ ( .d(n173), .cp(clk), .cdn(rstn), .q(byte_cnt[1]) );
  dfctnq data_for_tx_reg_6_ ( .d(n160), .cp(clk), .cdn(rstn), .q(
        data_for_tx[6]) );
  dfctnq data_for_tx_reg_7_ ( .d(n167), .cp(clk), .cdn(rstn), .q(
        data_for_tx[7]) );
  dfctnq data_for_tx_reg_0_ ( .d(n166), .cp(clk), .cdn(rstn), .q(
        data_for_tx[0]) );
  dfctnq data_for_tx_reg_1_ ( .d(n165), .cp(clk), .cdn(rstn), .q(
        data_for_tx[1]) );
  dfctnq data_for_tx_reg_2_ ( .d(n164), .cp(clk), .cdn(rstn), .q(
        data_for_tx[2]) );
  dfctnq data_for_tx_reg_3_ ( .d(n163), .cp(clk), .cdn(rstn), .q(
        data_for_tx[3]) );
  dfctnq data_for_tx_reg_4_ ( .d(n162), .cp(clk), .cdn(rstn), .q(
        data_for_tx[4]) );
  dfctnq data_for_tx_reg_5_ ( .d(n161), .cp(clk), .cdn(rstn), .q(
        data_for_tx[5]) );
  dfctnq parity_value_reg ( .d(n171), .cp(clk), .cdn(rstn), .q(parity_value)
         );
  dfctnq cycle_cnt_for_quarter_UI_reg_2_ ( .d(n168), .cp(clk), .cdn(rstn), .q(
        cycle_cnt_for_quarter_UI[2]) );
  dfctnq cycle_cnt_for_UI_reg_0_ ( .d(N41), .cp(clk), .cdn(rstn), .q(
        cycle_cnt_for_UI[0]) );
  dfctnq cycle_cnt_for_quarter_UI_reg_0_ ( .d(n169), .cp(clk), .cdn(rstn), .q(
        cycle_cnt_for_quarter_UI[0]) );
  dfctnq cycle_cnt_for_quarter_UI_reg_1_ ( .d(n170), .cp(clk), .cdn(rstn), .q(
        cycle_cnt_for_quarter_UI[1]) );
  dfctnq data_reg ( .d(n159), .cp(clk), .cdn(rstn), .q(data) );
  dfctnq respond_rd_reg ( .d(n158), .cp(clk), .cdn(rstn), .q(respond_rd) );
  dfctnq tx_data_reg_reg_11_ ( .d(n153), .cp(clk), .cdn(rstn), .q(
        tx_data_reg[11]) );
  dfctnq tx_data_reg_reg_9_ ( .d(n151), .cp(clk), .cdn(rstn), .q(
        tx_data_reg[9]) );
  dfctnq tx_data_reg_reg_8_ ( .d(n150), .cp(clk), .cdn(rstn), .q(
        tx_data_reg[8]) );
  dfctnq tx_data_reg_reg_7_ ( .d(n149), .cp(clk), .cdn(rstn), .q(
        tx_data_reg[7]) );
  dfctnq tx_data_reg_reg_6_ ( .d(n148), .cp(clk), .cdn(rstn), .q(
        tx_data_reg[6]) );
  dfctnq tx_data_reg_reg_5_ ( .d(n147), .cp(clk), .cdn(rstn), .q(
        tx_data_reg[5]) );
  dfctnq tx_data_reg_reg_4_ ( .d(n146), .cp(clk), .cdn(rstn), .q(
        tx_data_reg[4]) );
  dfctnq tx_data_reg_reg_3_ ( .d(n145), .cp(clk), .cdn(rstn), .q(
        tx_data_reg[3]) );
  dfctnq tx_data_reg_reg_2_ ( .d(n144), .cp(clk), .cdn(rstn), .q(
        tx_data_reg[2]) );
  dfctnq tx_data_reg_reg_1_ ( .d(n143), .cp(clk), .cdn(rstn), .q(
        tx_data_reg[1]) );
  dfctnq tx_data_reg_reg_0_ ( .d(n142), .cp(clk), .cdn(rstn), .q(
        tx_data_reg[0]) );
  dfctnq UI_cnt_reg_1_ ( .d(n141), .cp(clk), .cdn(rstn), .q(UI_cnt[1]) );
  dfctnq UI_cnt_reg_0_ ( .d(n140), .cp(clk), .cdn(rstn), .q(UI_cnt[0]) );
  dfctnq UI_cnt_reg_2_ ( .d(n139), .cp(clk), .cdn(rstn), .q(UI_cnt[2]) );
  dfctnq UI_cnt_reg_3_ ( .d(n138), .cp(clk), .cdn(rstn), .q(UI_cnt[3]) );
  dfbtnq num_of_quarter_UI_reg_1_ ( .d(n137), .cp(clk), .cdn(1'b1), .sdn(rstn), 
        .q(num_of_quarter_UI[1]) );
  dfbtnq num_of_quarter_UI_reg_0_ ( .d(n136), .cp(clk), .cdn(1'b1), .sdn(rstn), 
        .q(num_of_quarter_UI[0]) );
  nd02d2 U3 ( .a1(tx_type), .a2(tx_init), .zn(n107) );
  oa07d2 U4 ( .a1(n108), .a2(byte_cnt[0]), .a3(n28), .b1(respond_rd), .b2(n32), 
        .zn(n57) );
  nr03d1 U5 ( .a1(n13), .a2(n15), .a3(n11), .zn(tx_done) );
  in01d0 U6 ( .i(n53), .zn(n25) );
  in01d0 U7 ( .i(n175), .zn(n62) );
  in01d0 U8 ( .i(n22), .zn(n142) );
  in01d0 U9 ( .i(n18), .zn(n144) );
  fn05d1 U10 ( .a1(tx_en), .b1(tx_en_r), .zn(tx_init) );
  in02d0 U11 ( .i(n107), .zn(n110) );
  oa01d0 U12 ( .a1(n107), .a2(tx_data[11]), .b1(tx_data_reg[11]), .b2(n110), 
        .zn(n1) );
  in01d0 U13 ( .i(n1), .zn(n153) );
  oa01d0 U14 ( .a1(n107), .a2(tx_data[8]), .b1(tx_data_reg[8]), .b2(n110), 
        .zn(n2) );
  in01d0 U15 ( .i(n2), .zn(n150) );
  oa01d0 U16 ( .a1(n107), .a2(tx_data[9]), .b1(tx_data_reg[9]), .b2(n110), 
        .zn(n3) );
  in01d0 U17 ( .i(n3), .zn(n151) );
  in01d0 U18 ( .i(tx_start), .zn(n32) );
  fn05d1 U19 ( .a1(tx_type), .b1(n32), .zn(crc_en) );
  in01d0 U20 ( .i(cycle_cnt_for_quarter_UI[1]), .zn(n94) );
  nd03d1 U21 ( .a1(cycle_cnt_for_quarter_UI[0]), .a2(
        cycle_cnt_for_quarter_UI[2]), .a3(n94), .zn(n121) );
  nr03d0 U22 ( .a1(num_of_quarter_UI[1]), .a2(num_of_quarter_UI[0]), .a3(n121), 
        .zn(n116) );
  in01d0 U23 ( .i(tx_cur_st[0]), .zn(n96) );
  nd03d1 U24 ( .a1(tx_cur_st[1]), .a2(n116), .a3(n96), .zn(n7) );
  in01d0 U25 ( .i(n7), .zn(n5) );
  in01d0 U26 ( .i(byte_cnt[0]), .zn(n52) );
  in01d0 U27 ( .i(respond_rd), .zn(n108) );
  ao01d0 U28 ( .a1(respond_rd), .a2(byte_cnt[0]), .b1(n52), .b2(n108), .zn(n26) );
  in01d0 U29 ( .i(byte_cnt[1]), .zn(n75) );
  nr02d0 U30 ( .a1(n26), .a2(n75), .zn(n117) );
  ao04d0 U31 ( .a1(crc_en), .a2(n96), .b(tx_cur_st[1]), .zn(n4) );
  ao04d0 U32 ( .a1(n5), .a2(n117), .b(n4), .zn(n176) );
  in01d0 U33 ( .i(UI_cnt[2]), .zn(n13) );
  in01d0 U34 ( .i(UI_cnt[3]), .zn(n15) );
  nr02d0 U35 ( .a1(cycle_cnt_for_UI[1]), .a2(cycle_cnt_for_UI[0]), .zn(n64) );
  in01d0 U36 ( .i(cycle_cnt_for_UI[3]), .zn(n69) );
  nd04d0 U37 ( .a1(cycle_cnt_for_UI[2]), .a2(cycle_cnt_for_UI[4]), .a3(n64), 
        .a4(n69), .zn(n63) );
  in01d0 U38 ( .i(n63), .zn(n115) );
  nd03d1 U39 ( .a1(n115), .a2(UI_cnt[0]), .a3(UI_cnt[1]), .zn(n11) );
  or03d0 U40 ( .a1(UI_cnt[2]), .a2(UI_cnt[0]), .a3(UI_cnt[1]), .z(n6) );
  nr02d0 U41 ( .a1(n15), .a2(n6), .zn(n10) );
  nd03d1 U42 ( .a1(n115), .a2(tx_type_reg), .a3(n10), .zn(n53) );
  nd02d0 U43 ( .a1(tx_start), .a2(n96), .zn(n8) );
  oa08d1 U44 ( .a1(tx_cur_st[1]), .a2(tx_type), .a3(n8), .b(n7), .zn(n9) );
  ao08d1 U45 ( .a1(tx_cur_st[0]), .a2(tx_cur_st[1]), .a3(n53), .b(n9), .zn(n97) );
  oa08d1 U46 ( .a1(tx_done), .a2(tx_cur_st[1]), .a3(n96), .b(n97), .zn(n175)
         );
  nd02d0 U47 ( .a1(UI_cnt[0]), .a2(UI_cnt[1]), .zn(n12) );
  nd03d1 U48 ( .a1(tx_cur_st[0]), .a2(tx_cur_st[1]), .a3(n10), .zn(n14) );
  ao04d0 U49 ( .a1(n12), .a2(n14), .b(n63), .zn(n112) );
  ao01d0 U50 ( .a1(UI_cnt[2]), .a2(n112), .b1(n11), .b2(n13), .zn(n139) );
  nr03d0 U51 ( .a1(UI_cnt[3]), .a2(n13), .a3(n12), .zn(n102) );
  ao04d0 U52 ( .a1(UI_cnt[3]), .a2(n13), .b(n102), .zn(n16) );
  nd02d0 U53 ( .a1(n115), .a2(n14), .zn(n114) );
  oa01d0 U54 ( .a1(n16), .a2(n114), .b1(n15), .b2(n112), .zn(n138) );
  ao01d0 U55 ( .a1(n110), .a2(tx_data[4]), .b1(tx_data_reg[4]), .b2(n107), 
        .zn(n17) );
  in01d0 U56 ( .i(n17), .zn(n146) );
  ao01d0 U57 ( .a1(n110), .a2(tx_data[2]), .b1(tx_data_reg[2]), .b2(n107), 
        .zn(n18) );
  ao01d0 U58 ( .a1(n110), .a2(tx_data[1]), .b1(tx_data_reg[1]), .b2(n107), 
        .zn(n19) );
  in01d0 U59 ( .i(n19), .zn(n143) );
  ao01d0 U60 ( .a1(n110), .a2(tx_data[6]), .b1(tx_data_reg[6]), .b2(n107), 
        .zn(n20) );
  in01d0 U61 ( .i(n20), .zn(n148) );
  ao01d0 U62 ( .a1(n110), .a2(tx_data[3]), .b1(tx_data_reg[3]), .b2(n107), 
        .zn(n21) );
  in01d0 U63 ( .i(n21), .zn(n145) );
  ao01d0 U64 ( .a1(n110), .a2(tx_data[0]), .b1(tx_data_reg[0]), .b2(n107), 
        .zn(n22) );
  ao01d0 U65 ( .a1(n110), .a2(tx_data[7]), .b1(tx_data_reg[7]), .b2(n107), 
        .zn(n23) );
  in01d0 U66 ( .i(n23), .zn(n149) );
  ao01d0 U67 ( .a1(n110), .a2(tx_data[5]), .b1(tx_data_reg[5]), .b2(n107), 
        .zn(n24) );
  in01d0 U68 ( .i(n24), .zn(n147) );
  in01d0 U69 ( .i(data_for_tx[1]), .zn(n31) );
  nd03d1 U70 ( .a1(n115), .a2(n53), .a3(n32), .zn(n56) );
  nd03d1 U71 ( .a1(n25), .a2(n32), .a3(n75), .zn(n28) );
  nr02d0 U72 ( .a1(n26), .a2(n28), .zn(n55) );
  nd02d0 U73 ( .a1(n55), .a2(crc_data[2]), .zn(n30) );
  nr02d0 U74 ( .a1(n53), .a2(n52), .zn(n76) );
  nd02d0 U75 ( .a1(byte_cnt[1]), .a2(n76), .zn(n27) );
  ao04d0 U76 ( .a1(n115), .a2(n27), .b(tx_start), .zn(n54) );
  ao01d0 U77 ( .a1(data_for_tx[2]), .a2(n54), .b1(tx_data_reg[2]), .b2(n57), 
        .zn(n29) );
  oa05d0 U78 ( .a1(n31), .a2(n56), .b(n30), .c(n29), .zn(n164) );
  in01d0 U79 ( .i(data_for_tx[2]), .zn(n35) );
  nr02d0 U80 ( .a1(n32), .a2(n108), .zn(n44) );
  ao01d0 U81 ( .a1(n55), .a2(crc_data[3]), .b1(n44), .b2(tx_data_reg[11]), 
        .zn(n34) );
  ao01d0 U82 ( .a1(data_for_tx[3]), .a2(n54), .b1(tx_data_reg[3]), .b2(n57), 
        .zn(n33) );
  oa05d0 U83 ( .a1(n35), .a2(n56), .b(n34), .c(n33), .zn(n163) );
  in01d0 U84 ( .i(data_for_tx[3]), .zn(n38) );
  nd02d0 U85 ( .a1(n55), .a2(crc_data[4]), .zn(n37) );
  ao01d0 U86 ( .a1(data_for_tx[4]), .a2(n54), .b1(tx_data_reg[4]), .b2(n57), 
        .zn(n36) );
  oa05d0 U87 ( .a1(n38), .a2(n56), .b(n37), .c(n36), .zn(n162) );
  in01d0 U88 ( .i(data_for_tx[6]), .zn(n101) );
  nd02d0 U89 ( .a1(n55), .a2(crc_data[7]), .zn(n40) );
  ao01d0 U90 ( .a1(data_for_tx[7]), .a2(n54), .b1(tx_data_reg[7]), .b2(n57), 
        .zn(n39) );
  oa05d0 U91 ( .a1(n101), .a2(n56), .b(n40), .c(n39), .zn(n167) );
  in01d0 U92 ( .i(data_for_tx[0]), .zn(n43) );
  ao01d0 U93 ( .a1(n55), .a2(crc_data[1]), .b1(n44), .b2(tx_data_reg[9]), .zn(
        n42) );
  ao01d0 U94 ( .a1(data_for_tx[1]), .a2(n54), .b1(tx_data_reg[1]), .b2(n57), 
        .zn(n41) );
  oa05d0 U95 ( .a1(n43), .a2(n56), .b(n42), .c(n41), .zn(n165) );
  in01d0 U96 ( .i(data_for_tx[7]), .zn(n77) );
  ao01d0 U97 ( .a1(n55), .a2(crc_data[0]), .b1(n44), .b2(tx_data_reg[8]), .zn(
        n46) );
  ao01d0 U98 ( .a1(data_for_tx[0]), .a2(n54), .b1(tx_data_reg[0]), .b2(n57), 
        .zn(n45) );
  oa05d0 U99 ( .a1(n77), .a2(n56), .b(n46), .c(n45), .zn(n166) );
  in01d0 U100 ( .i(data_for_tx[4]), .zn(n49) );
  nd02d0 U101 ( .a1(n55), .a2(crc_data[5]), .zn(n48) );
  ao01d0 U102 ( .a1(data_for_tx[5]), .a2(n54), .b1(tx_data_reg[5]), .b2(n57), 
        .zn(n47) );
  oa05d0 U103 ( .a1(n49), .a2(n56), .b(n48), .c(n47), .zn(n161) );
  in01d0 U104 ( .i(n176), .zn(n95) );
  nr03d0 U105 ( .a1(tx_cur_st[0]), .a2(n62), .a3(n95), .zn(n86) );
  in01d0 U106 ( .i(n121), .zn(n123) );
  nr02d0 U107 ( .a1(tx_done), .a2(n123), .zn(n88) );
  nd02d0 U108 ( .a1(n62), .a2(n176), .zn(n50) );
  nr03d0 U109 ( .a1(tx_done), .a2(n123), .a3(n50), .zn(n90) );
  in01d0 U110 ( .i(cycle_cnt_for_quarter_UI[0]), .zn(n89) );
  ao07d1 U111 ( .a1(n88), .a2(cycle_cnt_for_quarter_UI[0]), .a3(n50), .b1(n90), 
        .b2(n89), .zn(n51) );
  oa08d1 U112 ( .a1(tx_done), .a2(n86), .a3(n121), .b(n51), .zn(n169) );
  ao05d0 U113 ( .a1(n53), .a2(n52), .b(n76), .c(tx_init), .zn(n172) );
  fn01d1 U114 ( .a1(tx_type_reg), .b1(n107), .zn(n174) );
  in01d0 U115 ( .i(n54), .zn(n61) );
  nd02d0 U116 ( .a1(n55), .a2(crc_data[6]), .zn(n60) );
  in01d0 U117 ( .i(n56), .zn(n58) );
  ao01d0 U118 ( .a1(data_for_tx[5]), .a2(n58), .b1(tx_data_reg[6]), .b2(n57), 
        .zn(n59) );
  oa05d0 U119 ( .a1(n101), .a2(n61), .b(n60), .c(n59), .zn(n160) );
  ao01d0 U125 ( .a1(cycle_cnt_for_UI[0]), .a2(n121), .b1(n62), .b2(n95), .zn(
        N41) );
  oa05d0 U126 ( .a1(n176), .a2(n175), .b(n63), .c(n121), .zn(n70) );
  ao05d0 U127 ( .a1(cycle_cnt_for_UI[0]), .a2(cycle_cnt_for_UI[1]), .b(n64), 
        .c(n70), .zn(N42) );
  in01d0 U128 ( .i(cycle_cnt_for_UI[2]), .zn(n66) );
  nd02d0 U129 ( .a1(cycle_cnt_for_UI[1]), .a2(cycle_cnt_for_UI[0]), .zn(n65)
         );
  nr02d0 U130 ( .a1(n66), .a2(n65), .zn(n67) );
  ao05d0 U131 ( .a1(n66), .a2(n65), .b(n67), .c(n70), .zn(N43) );
  in01d0 U132 ( .i(n67), .zn(n68) );
  ao03d1 U133 ( .a1(cycle_cnt_for_UI[3]), .a2(n67), .b1(n69), .b2(n68), .c(n70), .zn(N44) );
  nr02d0 U134 ( .a1(n69), .a2(n68), .zn(n73) );
  in01d0 U135 ( .i(cycle_cnt_for_UI[4]), .zn(n72) );
  in01d0 U136 ( .i(n73), .zn(n71) );
  ao03d1 U137 ( .a1(cycle_cnt_for_UI[4]), .a2(n73), .b1(n72), .b2(n71), .c(n70), .zn(N45) );
  in01d0 U139 ( .i(n76), .zn(n74) );
  ao03d1 U140 ( .a1(byte_cnt[1]), .a2(n76), .b1(n75), .b2(n74), .c(tx_init), 
        .zn(n173) );
  ao01d0 U141 ( .a1(data_for_tx[6]), .a2(data_for_tx[7]), .b1(n77), .b2(n101), 
        .zn(n83) );
  xn02d0 U142 ( .a1(data_for_tx[1]), .a2(data_for_tx[0]), .zn(n79) );
  xn02d0 U143 ( .a1(data_for_tx[3]), .a2(data_for_tx[2]), .zn(n78) );
  xn02d0 U144 ( .a1(n79), .a2(n78), .zn(n81) );
  xn02d0 U145 ( .a1(data_for_tx[5]), .a2(data_for_tx[4]), .zn(n80) );
  xn02d0 U146 ( .a1(n81), .a2(n80), .zn(n82) );
  xn02d0 U147 ( .a1(n83), .a2(n82), .zn(n87) );
  in01d0 U148 ( .i(parity_value), .zn(n85) );
  in01d0 U149 ( .i(n86), .zn(n84) );
  ao03d1 U150 ( .a1(n87), .a2(n86), .b1(n85), .b2(n84), .c(tx_init), .zn(n171)
         );
  oa08d1 U151 ( .a1(n175), .a2(n89), .a3(n95), .b(n88), .zn(n92) );
  nd02d0 U152 ( .a1(cycle_cnt_for_quarter_UI[0]), .a2(n90), .zn(n93) );
  ao01d0 U153 ( .a1(cycle_cnt_for_quarter_UI[1]), .a2(n92), .b1(n93), .b2(n94), 
        .zn(n170) );
  in01d0 U154 ( .i(cycle_cnt_for_quarter_UI[2]), .zn(n91) );
  oa07d1 U155 ( .a1(cycle_cnt_for_quarter_UI[2]), .a2(n94), .a3(n93), .b1(n92), 
        .b2(n91), .zn(n168) );
  nd02d0 U156 ( .a1(n95), .a2(n96), .zn(n100) );
  ao04d0 U157 ( .a1(tx_cur_st[1]), .a2(n96), .b(n175), .zn(n99) );
  oa04d0 U158 ( .a1(n97), .a2(n100), .b(n121), .zn(n98) );
  ao04d0 U159 ( .a1(n100), .a2(n99), .b(n98), .zn(n106) );
  fn03d2 U160 ( .a1(n102), .a2(parity_value), .b1(n101), .b2(n102), .zn(n104)
         );
  nd03d1 U161 ( .a1(n115), .a2(n176), .a3(n175), .zn(n103) );
  fn04d0 U162 ( .a1(n104), .a2(n103), .b1(n103), .b2(data), .zn(n105) );
  fn04d0 U163 ( .a1(data), .a2(n106), .b1(n106), .b2(n105), .zn(n159) );
  nr03d0 U164 ( .a1(tx_data[8]), .a2(tx_data[9]), .a3(tx_data[11]), .zn(n109)
         );
  ao01d0 U165 ( .a1(n110), .a2(n109), .b1(n108), .b2(n107), .zn(n158) );
  ao04d0 U166 ( .a1(n115), .a2(UI_cnt[0]), .b(UI_cnt[1]), .zn(n111) );
  nr02d0 U167 ( .a1(n112), .a2(n111), .zn(n141) );
  in01d0 U168 ( .i(UI_cnt[0]), .zn(n113) );
  ao01d0 U169 ( .a1(UI_cnt[0]), .a2(n115), .b1(n114), .b2(n113), .zn(n140) );
  ao14d0 U170 ( .a1(n121), .a2(num_of_quarter_UI[1]), .b(n116), .z(n137) );
  nr02d0 U172 ( .a1(n117), .a2(data_for_tx[7]), .zn(n119) );
  nd02d0 U173 ( .a1(parity_value), .a2(n119), .zn(n118) );
  oa05d0 U174 ( .a1(parity_value), .a2(n119), .b(num_of_quarter_UI[1]), .c(
        n118), .zn(n122) );
  in01d0 U175 ( .i(num_of_quarter_UI[0]), .zn(n120) );
  ao07d1 U176 ( .a1(n123), .a2(num_of_quarter_UI[0]), .a3(n122), .b1(n121), 
        .b2(n120), .zn(n136) );
endmodule


module fcp_physical_layer ( clk, rstn, pl_tx_en, pl_tx_type, pl_tx_data, 
        ping_from_master, reset_from_master, crc_error, par_error, rx_data, 
        rx_data_valid, tx_done, data );
  input [15:0] pl_tx_data;
  output [23:0] rx_data;
  input clk, rstn, pl_tx_en, pl_tx_type;
  output ping_from_master, reset_from_master, crc_error, par_error,
         rx_data_valid, tx_done;
  inout data;
  wire   data_out, tx_en_flag, tx_en, tx_ongoing_window, N21, tx_type,
         mst_request_after_slv_ping, after_mst_ping, slv_request_after_ping,
         tx_ongoing_d0, N101, tx_ongoing_d1, tx_ongoing_d2, n1, n2, n30, n43,
         n55, n57, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n74, n79,
         n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n3,
         n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18,
         n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n31, n32, n33,
         n34, n35, n36, n37, n38, n39, n40, n41, n42, n44, n45, n46, n47, n48,
         n49, n50, n51, n52, n53, n54, n56, n58, n59, n60, n61, n62, n73, n75,
         n76, n77, n78, n93, n94;
  wire   [6:0] cycle_cnt_after_ping;
  wire   [15:0] tx_data;
  tri   data;

  fcp_rx_ctrl U_RX_CTRL ( .clk(clk), .rstn(rstn), .data(data), .rx_own_bus(n92), .ping_from_master(ping_from_master), .reset_from_master(reset_from_master), 
        .par_error(par_error), .rx_data(rx_data), .rx_data_valid(rx_data_valid) );
  fcp_tx_ctrl U_TX_CTRL ( .clk(clk), .rstn(rstn), .tx_en(tx_en), .tx_type(
        tx_type), .tx_data({1'b0, 1'b0, 1'b0, 1'b0, tx_data[11], 1'b0, 
        tx_data[9:0]}), .data(data_out), .tx_done(tx_done) );
  dfctnq tx_ongoing_d1_reg ( .d(tx_ongoing_d0), .cp(clk), .cdn(rstn), .q(
        tx_ongoing_d1) );
  dfctnq tx_ongoing_d2_reg ( .d(tx_ongoing_d1), .cp(clk), .cdn(rstn), .q(
        tx_ongoing_d2) );
  dfctnq after_mst_ping_reg ( .d(n91), .cp(clk), .cdn(rstn), .q(after_mst_ping) );
  dfctnq cycle_cnt_after_ping_reg_1_ ( .d(n89), .cp(clk), .cdn(rstn), .q(
        cycle_cnt_after_ping[1]) );
  dfctnq cycle_cnt_after_ping_reg_2_ ( .d(n87), .cp(clk), .cdn(rstn), .q(
        cycle_cnt_after_ping[2]) );
  dfctnq cycle_cnt_after_ping_reg_4_ ( .d(n85), .cp(clk), .cdn(rstn), .q(
        cycle_cnt_after_ping[4]) );
  dfctnq slv_request_after_ping_reg ( .d(n79), .cp(clk), .cdn(rstn), .q(
        slv_request_after_ping) );
  dfctnq tx_ongoing_window_reg ( .d(n90), .cp(clk), .cdn(rstn), .q(
        tx_ongoing_window) );
  dfctnq tx_en_reg ( .d(N21), .cp(clk), .cdn(rstn), .q(tx_en) );
  dfctnq cycle_cnt_after_ping_reg_0_ ( .d(n88), .cp(clk), .cdn(rstn), .q(
        cycle_cnt_after_ping[0]) );
  dfctnq mst_request_after_slv_ping_reg ( .d(n82), .cp(clk), .cdn(rstn), .q(
        mst_request_after_slv_ping) );
  dfctnq tx_type_reg ( .d(n81), .cp(clk), .cdn(rstn), .q(tx_type) );
  dfctnq tx_en_flag_reg ( .d(n80), .cp(clk), .cdn(rstn), .q(tx_en_flag) );
  dfctnq tx_ongoing_d0_reg ( .d(N101), .cp(clk), .cdn(rstn), .q(tx_ongoing_d0)
         );
  dfctnq tx_data_reg_11_ ( .d(n74), .cp(clk), .cdn(rstn), .q(tx_data[11]) );
  dfctnq tx_data_reg_9_ ( .d(n72), .cp(clk), .cdn(rstn), .q(tx_data[9]) );
  dfctnq tx_data_reg_8_ ( .d(n71), .cp(clk), .cdn(rstn), .q(tx_data[8]) );
  dfctnq tx_data_reg_7_ ( .d(n70), .cp(clk), .cdn(rstn), .q(tx_data[7]) );
  dfctnq tx_data_reg_6_ ( .d(n69), .cp(clk), .cdn(rstn), .q(tx_data[6]) );
  dfctnq tx_data_reg_5_ ( .d(n68), .cp(clk), .cdn(rstn), .q(tx_data[5]) );
  dfctnq tx_data_reg_4_ ( .d(n67), .cp(clk), .cdn(rstn), .q(tx_data[4]) );
  dfctnq tx_data_reg_3_ ( .d(n66), .cp(clk), .cdn(rstn), .q(tx_data[3]) );
  dfctnq tx_data_reg_2_ ( .d(n65), .cp(clk), .cdn(rstn), .q(tx_data[2]) );
  dfctnq tx_data_reg_1_ ( .d(n64), .cp(clk), .cdn(rstn), .q(tx_data[1]) );
  dfctnq tx_data_reg_0_ ( .d(n63), .cp(clk), .cdn(rstn), .q(tx_data[0]) );
  oa05d0 U66 ( .a1(n43), .a2(n57), .b(data), .c(n55), .zn(n30) );
  it01d0 data_tri ( .i(n1), .oe(n2), .zn(data) );
  dfctnq cycle_cnt_after_ping_reg_3_ ( .d(n86), .cp(clk), .cdn(rstn), .q(
        cycle_cnt_after_ping[3]) );
  dfctnq cycle_cnt_after_ping_reg_6_ ( .d(n83), .cp(clk), .cdn(rstn), .q(
        cycle_cnt_after_ping[6]) );
  dfctnq cycle_cnt_after_ping_reg_5_ ( .d(n84), .cp(clk), .cdn(rstn), .q(
        cycle_cnt_after_ping[5]) );
  in01d0 U3 ( .i(n75), .zn(n76) );
  in01d0 U4 ( .i(n54), .zn(n49) );
  in01d0 U5 ( .i(n92), .zn(n2) );
  in01d0 U6 ( .i(n6), .zn(n63) );
  in01d0 U7 ( .i(n16), .zn(n70) );
  in01d0 U8 ( .i(data_out), .zn(n1) );
  nr02d0 U9 ( .a1(cycle_cnt_after_ping[3]), .a2(cycle_cnt_after_ping[4]), .zn(
        n43) );
  in01d0 U10 ( .i(cycle_cnt_after_ping[5]), .zn(n57) );
  in01d0 U11 ( .i(cycle_cnt_after_ping[6]), .zn(n55) );
  nd02d0 U12 ( .a1(tx_ongoing_window), .a2(tx_ongoing_d2), .zn(n92) );
  in01d0 U13 ( .i(mst_request_after_slv_ping), .zn(n77) );
  in01d0 U14 ( .i(pl_tx_en), .zn(n93) );
  nd02d1 U15 ( .a1(n77), .a2(n93), .zn(n14) );
  in02d0 U16 ( .i(n14), .zn(n15) );
  ao01d0 U17 ( .a1(n15), .a2(tx_data[6]), .b1(pl_tx_data[6]), .b2(n14), .zn(n3) );
  in01d0 U18 ( .i(n3), .zn(n69) );
  ao01d0 U19 ( .a1(n15), .a2(tx_data[3]), .b1(pl_tx_data[3]), .b2(n14), .zn(n4) );
  in01d0 U20 ( .i(n4), .zn(n66) );
  ao01d0 U21 ( .a1(n15), .a2(tx_data[2]), .b1(pl_tx_data[2]), .b2(n14), .zn(n5) );
  in01d0 U22 ( .i(n5), .zn(n65) );
  ao01d0 U23 ( .a1(n15), .a2(tx_data[0]), .b1(pl_tx_data[0]), .b2(n14), .zn(n6) );
  ao01d0 U24 ( .a1(n15), .a2(tx_data[11]), .b1(pl_tx_data[11]), .b2(n14), .zn(
        n7) );
  in01d0 U25 ( .i(n7), .zn(n74) );
  ao01d0 U26 ( .a1(n15), .a2(tx_data[1]), .b1(pl_tx_data[1]), .b2(n14), .zn(n8) );
  in01d0 U27 ( .i(n8), .zn(n64) );
  ao01d0 U28 ( .a1(n15), .a2(tx_data[4]), .b1(pl_tx_data[4]), .b2(n14), .zn(n9) );
  in01d0 U29 ( .i(n9), .zn(n67) );
  ao01d0 U30 ( .a1(pl_tx_en), .a2(pl_tx_type), .b1(n15), .b2(tx_type), .zn(n10) );
  in01d0 U31 ( .i(n10), .zn(n81) );
  ao01d0 U32 ( .a1(n15), .a2(tx_data[8]), .b1(pl_tx_data[8]), .b2(n14), .zn(
        n11) );
  in01d0 U33 ( .i(n11), .zn(n71) );
  ao01d0 U34 ( .a1(n15), .a2(tx_data[9]), .b1(pl_tx_data[9]), .b2(n14), .zn(
        n12) );
  in01d0 U35 ( .i(n12), .zn(n72) );
  ao01d0 U36 ( .a1(n15), .a2(tx_data[5]), .b1(pl_tx_data[5]), .b2(n14), .zn(
        n13) );
  in01d0 U37 ( .i(n13), .zn(n68) );
  ao01d0 U38 ( .a1(n15), .a2(tx_data[7]), .b1(pl_tx_data[7]), .b2(n14), .zn(
        n16) );
  in01d0 U39 ( .i(cycle_cnt_after_ping[2]), .zn(n48) );
  an02d1 U40 ( .a1(n43), .a2(n48), .z(n42) );
  nd02d0 U41 ( .a1(cycle_cnt_after_ping[3]), .a2(cycle_cnt_after_ping[4]), 
        .zn(n56) );
  nr02d0 U42 ( .a1(cycle_cnt_after_ping[1]), .a2(cycle_cnt_after_ping[0]), 
        .zn(n44) );
  in01d0 U43 ( .i(n44), .zn(n19) );
  nd03d1 U44 ( .a1(cycle_cnt_after_ping[2]), .a2(cycle_cnt_after_ping[5]), 
        .a3(n19), .zn(n17) );
  in01d0 U45 ( .i(after_mst_ping), .zn(n27) );
  oa04d0 U46 ( .a1(n56), .a2(n17), .b(n27), .zn(n18) );
  oa07d1 U47 ( .a1(n55), .a2(n42), .a3(n57), .b1(cycle_cnt_after_ping[6]), 
        .b2(n18), .zn(n22) );
  nr02d0 U48 ( .a1(cycle_cnt_after_ping[6]), .a2(cycle_cnt_after_ping[5]), 
        .zn(n21) );
  oa04d0 U49 ( .a1(cycle_cnt_after_ping[2]), .a2(cycle_cnt_after_ping[3]), .b(
        cycle_cnt_after_ping[4]), .zn(n20) );
  nr03d0 U50 ( .a1(cycle_cnt_after_ping[6]), .a2(cycle_cnt_after_ping[5]), 
        .a3(n19), .zn(n41) );
  in01d0 U51 ( .i(cycle_cnt_after_ping[3]), .zn(n50) );
  ao01d0 U52 ( .a1(n21), .a2(n20), .b1(n41), .b2(n50), .zn(n75) );
  nd02d0 U53 ( .a1(n75), .a2(tx_en_flag), .zn(n24) );
  nr02d0 U54 ( .a1(n55), .a2(n57), .zn(n34) );
  an04d1 U55 ( .a1(n34), .a2(cycle_cnt_after_ping[2]), .a3(n43), .a4(n44), .z(
        n78) );
  in01d0 U56 ( .i(slv_request_after_ping), .zn(n33) );
  oa01d0 U57 ( .a1(n22), .a2(n24), .b1(n78), .b2(n33), .zn(n79) );
  in01d0 U58 ( .i(ping_from_master), .zn(n23) );
  oa04d0 U59 ( .a1(n78), .a2(n27), .b(n23), .zn(n91) );
  in01d0 U61 ( .i(tx_ongoing_window), .zn(n37) );
  nr02d0 U62 ( .a1(n24), .a2(n37), .zn(N21) );
  in01d0 U63 ( .i(cycle_cnt_after_ping[4]), .zn(n52) );
  oa04d0 U64 ( .a1(n42), .a2(n57), .b(cycle_cnt_after_ping[6]), .zn(n25) );
  ao05d0 U65 ( .a1(n57), .a2(n52), .b(slv_request_after_ping), .c(n25), .zn(
        n26) );
  nr02d0 U67 ( .a1(n26), .a2(n37), .zn(N101) );
  nd03d1 U68 ( .a1(n43), .a2(cycle_cnt_after_ping[1]), .a3(n57), .zn(n28) );
  oa08d1 U69 ( .a1(mst_request_after_slv_ping), .a2(n55), .a3(n28), .b(n27), 
        .zn(n32) );
  nd02d0 U70 ( .a1(cycle_cnt_after_ping[5]), .a2(n55), .zn(n29) );
  oa08d1 U71 ( .a1(cycle_cnt_after_ping[1]), .a2(n56), .a3(n29), .b(
        after_mst_ping), .zn(n31) );
  nd03d1 U72 ( .a1(cycle_cnt_after_ping[2]), .a2(n32), .a3(n31), .zn(n39) );
  nd02d0 U73 ( .a1(n41), .a2(n50), .zn(n36) );
  nd02d0 U74 ( .a1(cycle_cnt_after_ping[1]), .a2(cycle_cnt_after_ping[0]), 
        .zn(n47) );
  in01d0 U75 ( .i(n47), .zn(n46) );
  nd04d0 U76 ( .a1(n42), .a2(n34), .a3(n46), .a4(n33), .zn(n35) );
  oa08d1 U77 ( .a1(n52), .a2(n48), .a3(n36), .b(n35), .zn(n38) );
  oa01d0 U78 ( .a1(cycle_cnt_after_ping[0]), .a2(n39), .b1(n38), .b2(n37), 
        .zn(n90) );
  nr02d0 U79 ( .a1(tx_done), .a2(ping_from_master), .zn(n45) );
  in01d0 U80 ( .i(n45), .zn(n40) );
  ao05d0 U81 ( .a1(n42), .a2(n41), .b(n78), .c(n40), .zn(n61) );
  in01d0 U82 ( .i(n61), .zn(n58) );
  nr03d0 U83 ( .a1(n44), .a2(n46), .a3(n58), .zn(n89) );
  oa04d0 U84 ( .a1(cycle_cnt_after_ping[0]), .a2(n58), .b(n45), .zn(n88) );
  nd02d0 U85 ( .a1(cycle_cnt_after_ping[2]), .a2(n46), .zn(n54) );
  ao05d0 U86 ( .a1(n48), .a2(n47), .b(n49), .c(n58), .zn(n87) );
  ao03d1 U87 ( .a1(cycle_cnt_after_ping[3]), .a2(n49), .b1(n50), .b2(n54), .c(
        n58), .zn(n86) );
  nr02d0 U88 ( .a1(n50), .a2(n54), .zn(n53) );
  in01d0 U89 ( .i(n53), .zn(n51) );
  ao03d1 U90 ( .a1(cycle_cnt_after_ping[4]), .a2(n53), .b1(n52), .b2(n51), .c(
        n58), .zn(n85) );
  nr02d0 U91 ( .a1(n56), .a2(n54), .zn(n60) );
  in01d0 U92 ( .i(n60), .zn(n59) );
  ao03d1 U93 ( .a1(cycle_cnt_after_ping[5]), .a2(n60), .b1(n57), .b2(n59), .c(
        n58), .zn(n84) );
  nd02d0 U94 ( .a1(n60), .a2(cycle_cnt_after_ping[5]), .zn(n73) );
  oa04d0 U95 ( .a1(n55), .a2(n73), .b(n61), .zn(n62) );
  ao04d0 U96 ( .a1(n55), .a2(n73), .b(n62), .zn(n83) );
  oa01d0 U97 ( .a1(n78), .a2(n77), .b1(n30), .b2(n76), .zn(n82) );
  in01d0 U98 ( .i(tx_en_flag), .zn(n94) );
  oa04d0 U99 ( .a1(tx_en), .a2(n94), .b(n93), .zn(n80) );
endmodule


module fcp_core ( clk, rstn, UP_VOLT, DN_VOLT, data );
  input clk, rstn;
  output UP_VOLT, DN_VOLT;
  inout data;
  wire   ping_from_master, reset_from_master, par_error, rx_data_valid,
         tx_done, pl_tx_en, pl_tx_type, SYNOPSYS_UNCONNECTED_1,
         SYNOPSYS_UNCONNECTED_2, SYNOPSYS_UNCONNECTED_3,
         SYNOPSYS_UNCONNECTED_4, SYNOPSYS_UNCONNECTED_5;
  wire   [23:0] rx_data;
  wire   [11:0] pl_tx_data;
  tri   data;

  fcp_logical_layer U_FCP_LOGICAL_LAYER ( .clk(clk), .rstn(rstn), 
        .ping_from_master(ping_from_master), .reset_from_master(
        reset_from_master), .crc_error(1'b0), .par_error(par_error), .rx_data(
        rx_data), .rx_data_valid(rx_data_valid), .tx_done(tx_done), .pl_tx_en(
        pl_tx_en), .pl_tx_type(pl_tx_type), .pl_tx_data({
        SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2, SYNOPSYS_UNCONNECTED_3, 
        SYNOPSYS_UNCONNECTED_4, pl_tx_data[11], SYNOPSYS_UNCONNECTED_5, 
        pl_tx_data[9:0]}), .UP_VOLT(UP_VOLT), .DN_VOLT(DN_VOLT) );
  fcp_physical_layer U_FCP_PYSICAL_LAYER ( .clk(clk), .rstn(rstn), .pl_tx_en(
        pl_tx_en), .pl_tx_type(pl_tx_type), .pl_tx_data({1'b0, 1'b0, 1'b0, 
        1'b0, pl_tx_data[11], 1'b0, pl_tx_data[9:0]}), .ping_from_master(
        ping_from_master), .reset_from_master(reset_from_master), .par_error(
        par_error), .rx_data(rx_data), .rx_data_valid(rx_data_valid), 
        .tx_done(tx_done), .data(data) );
endmodule

