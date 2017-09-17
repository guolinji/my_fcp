/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : L-2016.03-SP5-2
// Date      : Sun Sep 17 23:15:49 2017
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
         n144, n145, n146, n147, n148, n149, n150, n151, n152;
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
  dfctnq rx_data_valid_r_reg ( .d(n149), .cp(clk), .cdn(rstn), .q(
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
  ao08d2 U3 ( .a1(n85), .a2(n84), .a3(n83), .b(n86), .zn(N238) );
  nd02d0 U4 ( .a1(n122), .a2(n77), .zn(n88) );
  in01d0 U5 ( .i(n81), .zn(n65) );
  in01d0 U6 ( .i(n82), .zn(n83) );
  in01d0 U7 ( .i(n148), .zn(n145) );
  nd04d0 U8 ( .a1(n10), .a2(n9), .a3(n8), .a4(n84), .zn(N233) );
  in01d0 U9 ( .i(n15), .zn(n197) );
  in01d0 U10 ( .i(n39), .zn(n212) );
  in01d0 U11 ( .i(reset_from_master), .zn(n1) );
  nd03d0 U12 ( .a1(n1), .a2(cmd_get_but_not_process), .a3(tx_done), .zn(n2) );
  in01d0 U13 ( .i(cur_st[1]), .zn(n54) );
  or02d0 U14 ( .a1(tx_done), .a2(reset_from_master), .z(n4) );
  in01d0 U15 ( .i(cur_st[0]), .zn(n3) );
  ao01d0 U16 ( .a1(n2), .a2(n54), .b1(n4), .b2(n3), .zn(n231) );
  nd02d0 U17 ( .a1(ping_from_master), .a2(n54), .zn(n57) );
  ao07d0 U18 ( .a1(n54), .a2(cur_st[0]), .a3(n4), .b1(n3), .b2(n57), .zn(n232)
         );
  fn05d0 U19 ( .a1(n231), .b1(n232), .zn(pl_tx_type) );
  ni01d1 U20 ( .i(rx_data_valid), .z(n149) );
  nd02d0 U21 ( .a1(pl_tx_type), .a2(n54), .zn(n56) );
  ao05d0 U22 ( .a1(cmd_get_but_not_process), .a2(n56), .b(n149), .c(afc_iden), 
        .zn(n5) );
  nr02d0 U23 ( .a1(reset_from_master), .a2(n5), .zn(n226) );
  in01d0 U24 ( .i(addr[3]), .zn(n92) );
  nd02d0 U25 ( .a1(n92), .a2(addr[5]), .zn(n98) );
  in01d0 U26 ( .i(n98), .zn(n97) );
  in01d0 U27 ( .i(addr[2]), .zn(n7) );
  nd03d0 U28 ( .a1(addr[4]), .a2(n97), .a3(n7), .zn(n68) );
  or02d0 U29 ( .a1(addr[1]), .a2(addr[0]), .z(n96) );
  nr03d0 U30 ( .a1(addr[4]), .a2(n96), .a3(n7), .zn(n6) );
  in01d0 U31 ( .i(addr[5]), .zn(n58) );
  nd03d0 U32 ( .a1(n6), .a2(n58), .a3(n92), .zn(n76) );
  oa14d0 U33 ( .a1(n68), .a2(n96), .b(n76), .z(n10) );
  nd03d2 U34 ( .a1(n6), .a2(addr[5]), .a3(addr[3]), .zn(n122) );
  in01d0 U35 ( .i(n122), .zn(n70) );
  in01d0 U36 ( .i(addr[4]), .zn(n72) );
  nd03d0 U37 ( .a1(n72), .a2(n7), .a3(n92), .zn(n61) );
  nr02d0 U38 ( .a1(addr[5]), .a2(n61), .zn(n89) );
  in01d0 U39 ( .i(addr[0]), .zn(n59) );
  nr02d0 U40 ( .a1(addr[1]), .a2(n59), .zn(n66) );
  ao01d0 U41 ( .a1(VOUT_CONFIG[5]), .a2(n70), .b1(n89), .b2(n66), .zn(n9) );
  nd03d0 U42 ( .a1(addr[5]), .a2(n72), .a3(n7), .zn(n79) );
  nr02d0 U43 ( .a1(n92), .a2(n79), .zn(n55) );
  nd02d0 U44 ( .a1(n55), .a2(n66), .zn(n78) );
  in01d0 U45 ( .i(n78), .zn(n74) );
  nd02d0 U46 ( .a1(n74), .a2(VOUT_STATUS[5]), .zn(n8) );
  nd02d0 U47 ( .a1(n59), .a2(addr[1]), .zn(n93) );
  in01d0 U48 ( .i(n93), .zn(n90) );
  nd03d0 U49 ( .a1(n90), .a2(n97), .a3(n7), .zn(n84) );
  in01d0 U50 ( .i(rx_data_valid_2r), .zn(n119) );
  nd02d0 U51 ( .a1(rd_en), .a2(rx_data_valid_2r), .zn(n120) );
  in01d0 U52 ( .i(n120), .zn(n18) );
  ao01d0 U53 ( .a1(n119), .a2(pl_tx_data[5]), .b1(data_for_rd_cmd[5]), .b2(n18), .zn(n11) );
  in01d0 U54 ( .i(n11), .zn(n190) );
  ao01d0 U55 ( .a1(n119), .a2(pl_tx_data[4]), .b1(data_for_rd_cmd[4]), .b2(n18), .zn(n12) );
  in01d0 U56 ( .i(n12), .zn(n189) );
  ao01d0 U57 ( .a1(n119), .a2(pl_tx_data[2]), .b1(data_for_rd_cmd[2]), .b2(n18), .zn(n13) );
  in01d0 U58 ( .i(n13), .zn(n193) );
  ao01d0 U59 ( .a1(n119), .a2(pl_tx_data[6]), .b1(data_for_rd_cmd[6]), .b2(n18), .zn(n14) );
  in01d0 U60 ( .i(n14), .zn(n191) );
  ao01d0 U61 ( .a1(n119), .a2(pl_tx_data[7]), .b1(data_for_rd_cmd[7]), .b2(n18), .zn(n15) );
  ao01d0 U62 ( .a1(RESP[3]), .a2(n18), .b1(pl_tx_data[11]), .b2(n119), .zn(n16) );
  in01d0 U63 ( .i(n16), .zn(n202) );
  ao01d0 U64 ( .a1(data_for_rd_cmd[1]), .a2(n18), .b1(pl_tx_data[1]), .b2(n119), .zn(n17) );
  in01d0 U65 ( .i(rd_en), .zn(n138) );
  nd03d0 U66 ( .a1(RESP[1]), .a2(rx_data_valid_2r), .a3(n138), .zn(n19) );
  nd02d0 U67 ( .a1(n17), .a2(n19), .zn(n186) );
  ao01d0 U68 ( .a1(data_for_rd_cmd[0]), .a2(n18), .b1(pl_tx_data[0]), .b2(n119), .zn(n20) );
  nd02d0 U69 ( .a1(n20), .a2(n19), .zn(n185) );
  in01d0 U70 ( .i(is_support_12v), .zn(n233) );
  in01d0 U71 ( .i(VOUT_CONFIG[5]), .zn(n141) );
  nr02d0 U72 ( .a1(VOUT_CONFIG[2]), .a2(VOUT_CONFIG[7]), .zn(n24) );
  in01d0 U73 ( .i(VOUT_CONFIG[4]), .zn(n143) );
  in01d0 U74 ( .i(VOUT_CONFIG[3]), .zn(n129) );
  in01d0 U75 ( .i(VOUT_CONFIG[6]), .zn(n127) );
  nr04d0 U76 ( .a1(n143), .a2(n129), .a3(n127), .a4(VOUT_CONFIG[0]), .zn(n21)
         );
  nd02d0 U77 ( .a1(n24), .a2(n21), .zn(n22) );
  nr04d0 U78 ( .a1(VOUT_CONFIG[1]), .a2(n141), .a3(n22), .a4(n233), .zn(n108)
         );
  nd02d0 U79 ( .a1(OUTPUT_CONTROL_0_), .a2(n108), .zn(n114) );
  in01d0 U80 ( .i(VOUT_CONFIG[1]), .zn(n146) );
  nr03d0 U81 ( .a1(VOUT_CONFIG[5]), .a2(n146), .a3(n22), .zn(n109) );
  nd02d0 U82 ( .a1(OUTPUT_CONTROL_0_), .a2(n109), .zn(n112) );
  in01d0 U83 ( .i(OUTPUT_CONTROL_0_), .zn(n136) );
  nr04d0 U84 ( .a1(VOUT_CONFIG[0]), .a2(VOUT_CONFIG[3]), .a3(VOUT_CONFIG[6]), 
        .a4(n143), .zn(n23) );
  nd04d0 U85 ( .a1(n24), .a2(VOUT_CONFIG[5]), .a3(VOUT_CONFIG[1]), .a4(n23), 
        .zn(n110) );
  nr02d0 U86 ( .a1(n136), .a2(n110), .zn(n135) );
  ao04d0 U87 ( .a1(VOUT_STATUS[5]), .a2(n112), .b(n135), .zn(n25) );
  nd02d0 U88 ( .a1(n114), .a2(n25), .zn(n181) );
  ao04d0 U89 ( .a1(VOUT_STATUS[1]), .a2(n114), .b(n135), .zn(n26) );
  nd02d0 U90 ( .a1(n26), .a2(n112), .zn(n179) );
  in01d0 U91 ( .i(n149), .zn(n117) );
  or02d0 U92 ( .a1(rx_data[18]), .a2(rx_data[22]), .z(n44) );
  in01d0 U93 ( .i(rx_data[21]), .zn(n27) );
  nd04d0 U94 ( .a1(rx_data[17]), .a2(rx_data[19]), .a3(rx_data[16]), .a4(n27), 
        .zn(n28) );
  nr04d0 U95 ( .a1(rx_data[20]), .a2(rx_data[23]), .a3(n44), .a4(n28), .zn(n29) );
  nr02d1 U96 ( .a1(n29), .a2(n117), .zn(n38) );
  fn05d0 U97 ( .a1(n29), .b1(n117), .zn(n30) );
  ni01d1 U98 ( .i(n30), .z(n118) );
  ao06d0 U99 ( .a1(n117), .a2(addr[7]), .b1(rx_data[7]), .b2(n38), .c1(
        rx_data[15]), .c2(n118), .zn(n31) );
  in01d0 U100 ( .i(n31), .zn(n219) );
  ao06d0 U101 ( .a1(n117), .a2(addr[3]), .b1(n118), .b2(rx_data[11]), .c1(n38), 
        .c2(rx_data[3]), .zn(n32) );
  in01d0 U102 ( .i(n32), .zn(n215) );
  ao06d0 U103 ( .a1(n117), .a2(addr[2]), .b1(n118), .b2(rx_data[10]), .c1(n38), 
        .c2(rx_data[2]), .zn(n33) );
  in01d0 U104 ( .i(n33), .zn(n214) );
  ao06d0 U105 ( .a1(n117), .a2(addr[4]), .b1(n118), .b2(rx_data[12]), .c1(n38), 
        .c2(rx_data[4]), .zn(n34) );
  in01d0 U106 ( .i(n34), .zn(n216) );
  ao06d0 U107 ( .a1(n117), .a2(addr[6]), .b1(n118), .b2(rx_data[14]), .c1(n38), 
        .c2(rx_data[6]), .zn(n35) );
  in01d0 U108 ( .i(n35), .zn(n218) );
  ao06d0 U109 ( .a1(n117), .a2(addr[5]), .b1(n118), .b2(rx_data[13]), .c1(n38), 
        .c2(rx_data[5]), .zn(n36) );
  in01d0 U110 ( .i(n36), .zn(n217) );
  ao06d0 U111 ( .a1(n117), .a2(addr[1]), .b1(n118), .b2(rx_data[9]), .c1(n38), 
        .c2(rx_data[1]), .zn(n37) );
  in01d0 U112 ( .i(n37), .zn(n213) );
  ao06d0 U113 ( .a1(n117), .a2(addr[0]), .b1(n118), .b2(rx_data[8]), .c1(n38), 
        .c2(rx_data[0]), .zn(n39) );
  or04d0 U114 ( .a1(rx_data[16]), .a2(rx_data[19]), .a3(rx_data[8]), .a4(n117), 
        .z(n46) );
  or04d0 U119 ( .a1(rx_data[17]), .a2(rx_data[21]), .a3(n44), .a4(n43), .z(n45) );
  oa01d0 U120 ( .a1(n149), .a2(n138), .b1(n46), .b2(n45), .zn(n220) );
  in01d0 U121 ( .i(VOUT_CONFIG[2]), .zn(n131) );
  oa01d0 U122 ( .a1(addr[4]), .a2(n84), .b1(n131), .b2(n122), .zn(N230) );
  in01d0 U123 ( .i(cmd_get_but_not_process), .zn(n47) );
  nd03d0 U124 ( .a1(n47), .a2(tx_done), .a3(afc_pr), .zn(n48) );
  in01d0 U125 ( .i(n48), .zn(n53) );
  in01d0 U126 ( .i(afc_cmd_cnt[0]), .zn(n49) );
  oa07d0 U127 ( .a1(n53), .a2(n149), .a3(n49), .b1(afc_cmd_cnt[0]), .b2(n48), 
        .zn(n223) );
  in01d0 U128 ( .i(afc_cmd_cnt[1]), .zn(n52) );
  nd02d0 U129 ( .a1(afc_cmd_cnt[1]), .a2(afc_cmd_cnt[0]), .zn(n50) );
  oa05d0 U130 ( .a1(afc_cmd_cnt[1]), .a2(afc_cmd_cnt[0]), .b(n53), .c(n50), 
        .zn(n51) );
  oa08d0 U131 ( .a1(n53), .a2(n149), .a3(n52), .b(n51), .zn(n224) );
  nr02d0 U132 ( .a1(addr[6]), .a2(addr[7]), .zn(n91) );
  nd04d0 U133 ( .a1(pl_tx_type), .a2(n91), .a3(wr_en), .a4(n54), .zn(n123) );
  in01d0 U134 ( .i(wr_data[0]), .zn(n124) );
  an02d0 U135 ( .a1(addr[1]), .a2(addr[0]), .z(n95) );
  nd02d0 U136 ( .a1(n95), .a2(n55), .zn(n77) );
  nr03d0 U137 ( .a1(n123), .a2(n124), .a3(n77), .zn(N72) );
  oa04d0 U138 ( .a1(cur_st[0]), .a2(n57), .b(n56), .zn(pl_tx_en) );
  an02d0 U139 ( .a1(pl_tx_type), .a2(afc_pr), .z(pl_tx_afc) );
  nr04d0 U140 ( .a1(addr[1]), .a2(n59), .a3(n58), .a4(n61), .zn(n82) );
  ao01d0 U141 ( .a1(VOUT_CONFIG[0]), .a2(n70), .b1(n82), .b2(
        DISCRETE_CAPABILITIES[0]), .zn(n60) );
  oa05d0 U142 ( .a1(n61), .a2(n96), .b(n60), .c(n76), .zn(n62) );
  ao08d0 U143 ( .a1(n89), .a2(n95), .a3(SSTAT_0_), .b(n62), .zn(n63) );
  oa04d0 U144 ( .a1(n136), .a2(n77), .b(n63), .zn(N228) );
  oa04d0 U145 ( .a1(addr[1]), .a2(n68), .b(n76), .zn(n81) );
  ao01d0 U146 ( .a1(n82), .a2(DISCRETE_CAPABILITIES[1]), .b1(n74), .b2(
        VOUT_STATUS[1]), .zn(n64) );
  oa05d0 U147 ( .a1(n146), .a2(n122), .b(n65), .c(n64), .zn(N229) );
  in01d0 U148 ( .i(n66), .zn(n67) );
  oa01d0 U149 ( .a1(n72), .a2(n84), .b1(n68), .b2(n67), .zn(n73) );
  ao04d0 U150 ( .a1(n74), .a2(VOUT_STATUS[3]), .b(n73), .zn(n69) );
  oa05d0 U151 ( .a1(n122), .a2(n129), .b(n69), .c(n76), .zn(N231) );
  ao05d0 U152 ( .a1(n70), .a2(VOUT_CONFIG[4]), .b(n74), .c(n81), .zn(n71) );
  oa04d0 U153 ( .a1(n72), .a2(n84), .b(n71), .zn(N232) );
  ao04d0 U154 ( .a1(n74), .a2(VOUT_STATUS[6]), .b(n73), .zn(n75) );
  oa04d0 U155 ( .a1(n127), .a2(n122), .b(n75), .zn(N234) );
  in01d0 U156 ( .i(VOUT_CONFIG[7]), .zn(n125) );
  oa04d0 U157 ( .a1(n122), .a2(n125), .b(n76), .zn(N235) );
  oa04d0 U158 ( .a1(n79), .a2(n96), .b(n78), .zn(n80) );
  nr04d0 U159 ( .a1(n89), .a2(n88), .a3(n81), .a4(n80), .zn(n85) );
  nd02d0 U160 ( .a1(n91), .a2(rd_en), .zn(n86) );
  in01d0 U161 ( .i(n86), .zn(n102) );
  an02d0 U162 ( .a1(n89), .a2(n95), .z(n87) );
  fn03d0 U163 ( .a1(n102), .a2(n87), .b1(SSTAT_0_), .b2(par_error), .zn(n229)
         );
  ao04d0 U164 ( .a1(n90), .a2(n89), .b(n88), .zn(n105) );
  nd02d0 U165 ( .a1(n91), .a2(wr_en), .zn(n104) );
  ao04d0 U166 ( .a1(addr[5]), .a2(n93), .b(n92), .zn(n94) );
  ao05d0 U167 ( .a1(n95), .a2(n97), .b(wr_en), .c(n94), .zn(n101) );
  oa04d0 U168 ( .a1(n97), .a2(n96), .b(addr[2]), .zn(n100) );
  ao07d0 U169 ( .a1(addr[1]), .a2(addr[4]), .a3(n233), .b1(n98), .b2(addr[4]), 
        .zn(n99) );
  nd04d0 U170 ( .a1(n102), .a2(n101), .a3(n100), .a4(n99), .zn(n103) );
  oa05d0 U171 ( .a1(n105), .a2(n104), .b(rx_data_valid_r), .c(n103), .zn(n106)
         );
  oa14d0 U172 ( .a1(rx_data_valid_r), .a2(RESP[3]), .b(n106), .z(n228) );
  in01d0 U173 ( .i(RESP[1]), .zn(n121) );
  oa04d0 U174 ( .a1(rx_data_valid_r), .a2(n121), .b(n106), .zn(n227) );
  oa04d0 U175 ( .a1(n231), .a2(n232), .b(afc_pr), .zn(n107) );
  fn01d0 U176 ( .a1(afc_iden), .b1(n107), .zn(n225) );
  nr02d0 U177 ( .a1(n109), .a2(n108), .zn(n137) );
  nd03d0 U178 ( .a1(afc_cmd_cnt[0]), .a2(afc_cmd_cnt[1]), .a3(n136), .zn(n111)
         );
  ao07d0 U179 ( .a1(n137), .a2(n111), .a3(n110), .b1(n136), .b2(n111), .zn(
        n116) );
  in01d0 U180 ( .i(out_volt[0]), .zn(n113) );
  oa05d0 U181 ( .a1(n116), .a2(n113), .b(n112), .c(n111), .zn(n222) );
  in01d0 U182 ( .i(out_volt[1]), .zn(n115) );
  oa04d0 U183 ( .a1(n116), .a2(n115), .b(n114), .zn(n221) );
  ao14d0 U184 ( .a1(n117), .a2(wr_en), .b(n118), .z(n211) );
  in01d0 U185 ( .i(wr_data[7]), .zn(n126) );
  fn04d0 U186 ( .a1(n149), .a2(n126), .b1(n118), .b2(rx_data[7]), .zn(n210) );
  in01d0 U187 ( .i(wr_data[6]), .zn(n128) );
  fn04d0 U188 ( .a1(n149), .a2(n128), .b1(n118), .b2(rx_data[6]), .zn(n209) );
  in01d0 U189 ( .i(wr_data[5]), .zn(n142) );
  fn04d0 U190 ( .a1(n149), .a2(n142), .b1(n118), .b2(rx_data[5]), .zn(n208) );
  in01d0 U191 ( .i(wr_data[4]), .zn(n144) );
  fn04d0 U192 ( .a1(n149), .a2(n144), .b1(n118), .b2(rx_data[4]), .zn(n207) );
  in01d0 U193 ( .i(wr_data[3]), .zn(n130) );
  fn04d0 U194 ( .a1(n149), .a2(n130), .b1(n118), .b2(rx_data[3]), .zn(n206) );
  in01d0 U195 ( .i(wr_data[2]), .zn(n132) );
  fn04d0 U196 ( .a1(n149), .a2(n132), .b1(n118), .b2(rx_data[2]), .zn(n205) );
  in01d0 U197 ( .i(wr_data[1]), .zn(n147) );
  fn04d0 U198 ( .a1(n149), .a2(n147), .b1(n118), .b2(rx_data[1]), .zn(n204) );
  fn04d0 U199 ( .a1(n149), .a2(n124), .b1(n118), .b2(rx_data[0]), .zn(n203) );
  fn04d0 U200 ( .a1(n121), .a2(n120), .b1(n119), .b2(pl_tx_data[9]), .zn(n201)
         );
  fn04d0 U201 ( .a1(n121), .a2(n120), .b1(n119), .b2(pl_tx_data[8]), .zn(n200)
         );
  nr02d2 U202 ( .a1(n123), .a2(n122), .zn(n148) );
  fn03d0 U203 ( .a1(n148), .a2(n124), .b1(VOUT_CONFIG[0]), .b2(n148), .zn(n199) );
  ao01d0 U204 ( .a1(n148), .a2(n126), .b1(n125), .b2(n145), .zn(n198) );
  ao01d0 U205 ( .a1(n148), .a2(n128), .b1(n127), .b2(n145), .zn(n196) );
  ao01d0 U206 ( .a1(n148), .a2(n130), .b1(n129), .b2(n145), .zn(n195) );
  ao01d0 U207 ( .a1(n148), .a2(n132), .b1(n131), .b2(n145), .zn(n194) );
  in01d0 U208 ( .i(VOUT_STATUS[6]), .zn(n133) );
  oa01d0 U209 ( .a1(n137), .a2(n136), .b1(n135), .b2(n133), .zn(n192) );
  in01d0 U210 ( .i(VOUT_STATUS[3]), .zn(n134) );
  oa01d0 U211 ( .a1(n137), .a2(n136), .b1(n135), .b2(n134), .zn(n188) );
  in01d0 U212 ( .i(pl_tx_data[3]), .zn(n140) );
  oa03d0 U213 ( .a1(rd_en), .a2(RESP[3]), .b1(n138), .b2(data_for_rd_cmd[3]), 
        .c(rx_data_valid_2r), .zn(n139) );
  oa04d0 U214 ( .a1(rx_data_valid_2r), .a2(n140), .b(n139), .zn(n187) );
  ao01d0 U215 ( .a1(n148), .a2(n142), .b1(n141), .b2(n145), .zn(n184) );
  ao01d0 U216 ( .a1(n148), .a2(n144), .b1(n143), .b2(n145), .zn(n183) );
  ao01d0 U217 ( .a1(n148), .a2(n147), .b1(n146), .b2(n145), .zn(n182) );
  nd03d0 U115 ( .a1(n152), .a2(rx_data[10]), .a3(n150), .zn(n43) );
  nr04d0 U116 ( .a1(rx_data[13]), .a2(rx_data[9]), .a3(rx_data[12]), .a4(n151), 
        .zn(n150) );
  ckinv0 U117 ( .i(rx_data[11]), .zn(n151) );
  nr04d0 U118 ( .a1(rx_data[14]), .a2(rx_data[23]), .a3(rx_data[15]), .a4(
        rx_data[20]), .zn(n152) );
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
  wire   valid_data, quarter_pulse, rx_st, parity_pass, N216, rx_st_r,
         rx_end_r, crc_en, n222, n223, n224, n225, n226, n227, n228, n229,
         n230, n231, n232, n233, n234, n235, n236, n237, n238, n239, n240,
         n241, n242, n243, n244, n245, n246, n247, n248, n249, n250, n251,
         n252, n253, n254, n255, n256, n257, n258, n259, n260, n261, n262,
         n263, n264, n265, n266, n267, n268, n269, n270, n271, n272, n273,
         n274, n275, n276, n277, n278, n279, n280, n281, n282, n283, n284,
         n285, n286, n287, n288, n289, n290, n291, n292, n297, n298, n299,
         n300, n301, n302, n303, n304, n305, n306, n307, n308, n309, n310,
         n311, n314, n315, n316, n317, n318, n319, n320, n321, n322, n323,
         n324, n325, n326, n327, n328, n329, n330, n1, n2, n3, n6, n7, n8, n9,
         n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23,
         n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37,
         n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51,
         n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65,
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
         n216, n217, n218, n219, n220, n221, n293, n294, n295, n296, n312,
         n313, n331, n332, n333, n334, n335, n336, n337, n338, n339, n340,
         n341, n342, n343, n344, n345, n346, n347, n348, n349, n350, n351,
         n352, n353, n354, n355, n356, n357, n358, n359, n360, n361, n362,
         n363, n364, n365, n366, n367, n368, n369, n370, n371, n372, n373,
         n374, n375, n376, n377, n378, n379, n380, n381, n382, n383, n384,
         n385, n386, n387, n388, n389, n390, n391, n392, n393, n394, n395,
         n396, n397, n398, n399, n400, n401, n402, n403, n404, n405, n406,
         n407, n409, n410;
  wire   [2:0] data_r;
  wire   [15:0] dur_cnt;
  wire   [8:0] low_dur_cnt;
  wire   [15:0] clk_sync_cnt;
  wire   [15:0] cnt_for_sample;
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
  dfctnq dur_cnt_reg_0_ ( .d(n330), .cp(clk), .cdn(rstn), .q(dur_cnt[0]) );
  dfctnq dur_cnt_reg_15_ ( .d(n329), .cp(clk), .cdn(rstn), .q(dur_cnt[15]) );
  dfctnq dur_cnt_reg_1_ ( .d(n328), .cp(clk), .cdn(rstn), .q(dur_cnt[1]) );
  dfctnq dur_cnt_reg_2_ ( .d(n327), .cp(clk), .cdn(rstn), .q(dur_cnt[2]) );
  dfctnq dur_cnt_reg_3_ ( .d(n326), .cp(clk), .cdn(rstn), .q(dur_cnt[3]) );
  dfctnq dur_cnt_reg_4_ ( .d(n325), .cp(clk), .cdn(rstn), .q(dur_cnt[4]) );
  dfctnq dur_cnt_reg_5_ ( .d(n324), .cp(clk), .cdn(rstn), .q(dur_cnt[5]) );
  dfctnq dur_cnt_reg_6_ ( .d(n323), .cp(clk), .cdn(rstn), .q(dur_cnt[6]) );
  dfctnq dur_cnt_reg_7_ ( .d(n322), .cp(clk), .cdn(rstn), .q(dur_cnt[7]) );
  dfctnq dur_cnt_reg_8_ ( .d(n321), .cp(clk), .cdn(rstn), .q(dur_cnt[8]) );
  dfctnq dur_cnt_reg_9_ ( .d(n320), .cp(clk), .cdn(rstn), .q(dur_cnt[9]) );
  dfctnq dur_cnt_reg_10_ ( .d(n319), .cp(clk), .cdn(rstn), .q(dur_cnt[10]) );
  dfctnq dur_cnt_reg_11_ ( .d(n318), .cp(clk), .cdn(rstn), .q(dur_cnt[11]) );
  dfctnq dur_cnt_reg_12_ ( .d(n317), .cp(clk), .cdn(rstn), .q(dur_cnt[12]) );
  dfctnq dur_cnt_reg_13_ ( .d(n316), .cp(clk), .cdn(rstn), .q(dur_cnt[13]) );
  dfctnq dur_cnt_reg_14_ ( .d(n315), .cp(clk), .cdn(rstn), .q(dur_cnt[14]) );
  dfctnq tune_up_reg ( .d(n314), .cp(clk), .cdn(rstn), .q(tune_up) );
  dfctnq tune_cycle_reg_5_ ( .d(n311), .cp(clk), .cdn(rstn), .q(tune_cycle[5])
         );
  dfctnq tune_cycle_reg_4_ ( .d(n310), .cp(clk), .cdn(rstn), .q(tune_cycle[4])
         );
  dfctnq tune_cycle_reg_3_ ( .d(n309), .cp(clk), .cdn(rstn), .q(tune_cycle[3])
         );
  dfctnq tune_cycle_reg_2_ ( .d(n308), .cp(clk), .cdn(rstn), .q(tune_cycle[2])
         );
  dfctnq tune_cycle_reg_1_ ( .d(n307), .cp(clk), .cdn(rstn), .q(tune_cycle[1])
         );
  dfctnq tune_cycle_reg_0_ ( .d(n306), .cp(clk), .cdn(rstn), .q(tune_cycle[0])
         );
  dfctnq low_dur_cnt_reg_0_ ( .d(n305), .cp(clk), .cdn(rstn), .q(
        low_dur_cnt[0]) );
  dfctnq low_dur_cnt_reg_8_ ( .d(n304), .cp(clk), .cdn(rstn), .q(
        low_dur_cnt[8]) );
  dfctnq low_dur_cnt_reg_1_ ( .d(n303), .cp(clk), .cdn(rstn), .q(
        low_dur_cnt[1]) );
  dfctnq low_dur_cnt_reg_2_ ( .d(n302), .cp(clk), .cdn(rstn), .q(
        low_dur_cnt[2]) );
  dfctnq low_dur_cnt_reg_3_ ( .d(n301), .cp(clk), .cdn(rstn), .q(
        low_dur_cnt[3]) );
  dfctnq low_dur_cnt_reg_4_ ( .d(n300), .cp(clk), .cdn(rstn), .q(
        low_dur_cnt[4]) );
  dfctnq low_dur_cnt_reg_5_ ( .d(n299), .cp(clk), .cdn(rstn), .q(
        low_dur_cnt[5]) );
  dfctnq low_dur_cnt_reg_6_ ( .d(n298), .cp(clk), .cdn(rstn), .q(
        low_dur_cnt[6]) );
  dfctnq low_dur_cnt_reg_7_ ( .d(n297), .cp(clk), .cdn(rstn), .q(
        low_dur_cnt[7]) );
  dfctnq clk_sync_cnt_reg_7_ ( .d(n292), .cp(clk), .cdn(rstn), .q(
        clk_sync_cnt[7]) );
  dfctnq clk_sync_cnt_reg_6_ ( .d(n291), .cp(clk), .cdn(rstn), .q(
        clk_sync_cnt[6]) );
  dfctnq clk_sync_cnt_reg_5_ ( .d(n290), .cp(clk), .cdn(rstn), .q(
        clk_sync_cnt[5]) );
  dfctnq clk_sync_cnt_reg_4_ ( .d(n289), .cp(clk), .cdn(rstn), .q(
        clk_sync_cnt[4]) );
  dfctnq clk_sync_cnt_reg_3_ ( .d(n288), .cp(clk), .cdn(rstn), .q(
        clk_sync_cnt[3]) );
  dfctnq clk_sync_cnt_reg_2_ ( .d(n287), .cp(clk), .cdn(rstn), .q(
        clk_sync_cnt[2]) );
  dfctnq clk_sync_cnt_reg_1_ ( .d(n286), .cp(clk), .cdn(rstn), .q(
        clk_sync_cnt[1]) );
  dfctnq clk_sync_cnt_reg_0_ ( .d(n285), .cp(clk), .cdn(rstn), .q(
        clk_sync_cnt[0]) );
  dfctnq sample_num_reg_0_ ( .d(n267), .cp(clk), .cdn(rstn), .q(sample_num[0])
         );
  dfctnq sample_num_reg_1_ ( .d(n266), .cp(clk), .cdn(rstn), .q(sample_num[1])
         );
  dfctnq sample_num_reg_2_ ( .d(n265), .cp(clk), .cdn(rstn), .q(sample_num[2])
         );
  dfctnq sample_num_reg_3_ ( .d(n264), .cp(clk), .cdn(rstn), .q(sample_num[3])
         );
  dfctnq rx_st_reg ( .d(n284), .cp(clk), .cdn(rstn), .q(rx_st) );
  dfctnq cnt_for_sample_reg_15_ ( .d(n268), .cp(clk), .cdn(rstn), .q(
        cnt_for_sample[15]) );
  dfctnq cnt_for_sample_reg_1_ ( .d(n283), .cp(clk), .cdn(rstn), .q(
        cnt_for_sample[1]) );
  dfctnq cnt_for_sample_reg_2_ ( .d(n281), .cp(clk), .cdn(rstn), .q(
        cnt_for_sample[2]) );
  dfctnq cnt_for_sample_reg_3_ ( .d(n280), .cp(clk), .cdn(rstn), .q(
        cnt_for_sample[3]) );
  dfctnq cnt_for_sample_reg_4_ ( .d(n279), .cp(clk), .cdn(rstn), .q(
        cnt_for_sample[4]) );
  dfctnq cnt_for_sample_reg_5_ ( .d(n278), .cp(clk), .cdn(rstn), .q(
        cnt_for_sample[5]) );
  dfctnq cnt_for_sample_reg_6_ ( .d(n277), .cp(clk), .cdn(rstn), .q(
        cnt_for_sample[6]) );
  dfctnq cnt_for_sample_reg_7_ ( .d(n276), .cp(clk), .cdn(rstn), .q(
        cnt_for_sample[7]) );
  dfctnq cnt_for_sample_reg_8_ ( .d(n275), .cp(clk), .cdn(rstn), .q(
        cnt_for_sample[8]) );
  dfctnq cnt_for_sample_reg_9_ ( .d(n274), .cp(clk), .cdn(rstn), .q(
        cnt_for_sample[9]) );
  dfctnq cnt_for_sample_reg_10_ ( .d(n273), .cp(clk), .cdn(rstn), .q(
        cnt_for_sample[10]) );
  dfctnq cnt_for_sample_reg_11_ ( .d(n272), .cp(clk), .cdn(rstn), .q(
        cnt_for_sample[11]) );
  dfctnq cnt_for_sample_reg_12_ ( .d(n271), .cp(clk), .cdn(rstn), .q(
        cnt_for_sample[12]) );
  dfctnq cnt_for_sample_reg_13_ ( .d(n270), .cp(clk), .cdn(rstn), .q(
        cnt_for_sample[13]) );
  dfctnq cnt_for_sample_reg_14_ ( .d(n269), .cp(clk), .cdn(rstn), .q(
        cnt_for_sample[14]) );
  dfctnq rx_st_r_reg ( .d(rx_st), .cp(clk), .cdn(rstn), .q(rx_st_r) );
  dfctnq rx_data_with_crc_reg_1_ ( .d(n262), .cp(clk), .cdn(rstn), .q(
        rx_data_with_crc[1]) );
  dfctnq rx_data_with_crc_reg_0_ ( .d(n261), .cp(clk), .cdn(rstn), .q(
        rx_data_with_crc[0]) );
  dfctnq rx_data_with_crc_reg_2_ ( .d(n260), .cp(clk), .cdn(rstn), .q(
        rx_data_with_crc[2]) );
  dfctnq rx_data_with_crc_reg_3_ ( .d(n259), .cp(clk), .cdn(rstn), .q(
        rx_data_with_crc[3]) );
  dfctnq rx_data_with_crc_reg_4_ ( .d(n258), .cp(clk), .cdn(rstn), .q(
        rx_data_with_crc[4]) );
  dfctnq rx_data_with_crc_reg_5_ ( .d(n257), .cp(clk), .cdn(rstn), .q(
        rx_data_with_crc[5]) );
  dfctnq rx_data_with_crc_reg_6_ ( .d(n256), .cp(clk), .cdn(rstn), .q(
        rx_data_with_crc[6]) );
  dfctnq rx_data_with_crc_reg_7_ ( .d(n255), .cp(clk), .cdn(rstn), .q(
        rx_data_with_crc[7]) );
  dfctnq rx_data_with_crc_reg_8_ ( .d(n254), .cp(clk), .cdn(rstn), .q(
        rx_data[0]) );
  dfctnq rx_data_with_crc_reg_9_ ( .d(n253), .cp(clk), .cdn(rstn), .q(
        rx_data[1]) );
  dfctnq rx_data_with_crc_reg_10_ ( .d(n252), .cp(clk), .cdn(rstn), .q(
        rx_data[2]) );
  dfctnq rx_data_with_crc_reg_11_ ( .d(n251), .cp(clk), .cdn(rstn), .q(
        rx_data[3]) );
  dfctnq rx_data_with_crc_reg_12_ ( .d(n250), .cp(clk), .cdn(rstn), .q(
        rx_data[4]) );
  dfctnq rx_data_with_crc_reg_13_ ( .d(n249), .cp(clk), .cdn(rstn), .q(
        rx_data[5]) );
  dfctnq rx_data_with_crc_reg_14_ ( .d(n248), .cp(clk), .cdn(rstn), .q(
        rx_data[6]) );
  dfctnq rx_data_with_crc_reg_15_ ( .d(n247), .cp(clk), .cdn(rstn), .q(
        rx_data[7]) );
  dfctnq rx_data_with_crc_reg_16_ ( .d(n246), .cp(clk), .cdn(rstn), .q(
        rx_data[8]) );
  dfctnq rx_data_with_crc_reg_17_ ( .d(n245), .cp(clk), .cdn(rstn), .q(
        rx_data[9]) );
  dfctnq rx_data_with_crc_reg_18_ ( .d(n244), .cp(clk), .cdn(rstn), .q(
        rx_data[10]) );
  dfctnq rx_data_with_crc_reg_19_ ( .d(n243), .cp(clk), .cdn(rstn), .q(
        rx_data[11]) );
  dfctnq rx_data_with_crc_reg_20_ ( .d(n242), .cp(clk), .cdn(rstn), .q(
        rx_data[12]) );
  dfctnq rx_data_with_crc_reg_21_ ( .d(n241), .cp(clk), .cdn(rstn), .q(
        rx_data[13]) );
  dfctnq rx_data_with_crc_reg_22_ ( .d(n240), .cp(clk), .cdn(rstn), .q(
        rx_data[14]) );
  dfctnq rx_data_with_crc_reg_23_ ( .d(n239), .cp(clk), .cdn(rstn), .q(
        rx_data[15]) );
  dfctnq rx_data_with_crc_reg_24_ ( .d(n238), .cp(clk), .cdn(rstn), .q(
        rx_data[16]) );
  dfctnq rx_data_with_crc_reg_25_ ( .d(n237), .cp(clk), .cdn(rstn), .q(
        rx_data[17]) );
  dfctnq rx_data_with_crc_reg_26_ ( .d(n236), .cp(clk), .cdn(rstn), .q(
        rx_data[18]) );
  dfctnq rx_data_with_crc_reg_27_ ( .d(n235), .cp(clk), .cdn(rstn), .q(
        rx_data[19]) );
  dfctnq rx_data_with_crc_reg_28_ ( .d(n234), .cp(clk), .cdn(rstn), .q(
        rx_data[20]) );
  dfctnq rx_data_with_crc_reg_29_ ( .d(n233), .cp(clk), .cdn(rstn), .q(
        rx_data[21]) );
  dfctnq rx_data_with_crc_reg_30_ ( .d(n232), .cp(clk), .cdn(rstn), .q(
        rx_data[22]) );
  dfctnq rx_data_with_crc_reg_31_ ( .d(n231), .cp(clk), .cdn(rstn), .q(
        rx_data[23]) );
  dfctnq afc_iden_reg ( .d(N216), .cp(clk), .cdn(rstn), .q(afc_iden) );
  dfctnq rx_end_r_reg ( .d(crc_en), .cp(clk), .cdn(rstn), .q(rx_end_r) );
  dfctnq sample_data_reg_0_ ( .d(n230), .cp(clk), .cdn(rstn), .q(
        sample_data[0]) );
  dfctnq sample_data_reg_1_ ( .d(n229), .cp(clk), .cdn(rstn), .q(
        sample_data[1]) );
  dfctnq sample_data_reg_2_ ( .d(n228), .cp(clk), .cdn(rstn), .q(
        sample_data[2]) );
  dfctnq sample_data_reg_3_ ( .d(n227), .cp(clk), .cdn(rstn), .q(
        sample_data[3]) );
  dfctnq sample_data_reg_4_ ( .d(n226), .cp(clk), .cdn(rstn), .q(
        sample_data[4]) );
  dfctnq sample_data_reg_5_ ( .d(n225), .cp(clk), .cdn(rstn), .q(
        sample_data[5]) );
  dfctnq sample_data_reg_6_ ( .d(n224), .cp(clk), .cdn(rstn), .q(
        sample_data[6]) );
  dfctnq sample_data_reg_7_ ( .d(n223), .cp(clk), .cdn(rstn), .q(
        sample_data[7]) );
  dfctnq sample_data_reg_8_ ( .d(n222), .cp(clk), .cdn(rstn), .q(
        sample_data[8]) );
  dfptnq cnt_for_sample_reg_0_ ( .d(n282), .cp(clk), .sdn(rstn), .q(
        cnt_for_sample[0]) );
  dfptnq parity_pass_reg ( .d(n263), .cp(clk), .sdn(rstn), .q(parity_pass) );
  nd02d0 U3 ( .a1(n186), .a2(n144), .zn(n2) );
  nd03d0 U4 ( .a1(n12), .a2(n11), .a3(n10), .zn(n54) );
  in01d0 U5 ( .i(n168), .zn(n163) );
  in01d0 U6 ( .i(n117), .zn(n111) );
  in01d0 U7 ( .i(n364), .zn(n367) );
  in01d0 U8 ( .i(n101), .zn(n96) );
  nr02d0 U9 ( .a1(n97), .a2(n336), .zn(n335) );
  in01d0 U10 ( .i(n164), .zn(n150) );
  nd02d0 U11 ( .a1(n204), .a2(n186), .zn(n189) );
  nd02d0 U12 ( .a1(n177), .a2(n197), .zn(n184) );
  in01d0 U13 ( .i(dur_cnt[7]), .zn(n355) );
  in01d0 U14 ( .i(dur_cnt[6]), .zn(n356) );
  nr04d0 U16 ( .a1(dur_cnt[15]), .a2(dur_cnt[13]), .a3(dur_cnt[14]), .a4(
        dur_cnt[12]), .zn(n36) );
  nr03d0 U17 ( .a1(dur_cnt[11]), .a2(dur_cnt[10]), .a3(dur_cnt[9]), .zn(n175)
         );
  in01d0 U18 ( .i(data_r[1]), .zn(n396) );
  in01d0 U20 ( .i(dur_cnt[5]), .zn(n359) );
  in01d0 U21 ( .i(dur_cnt[3]), .zn(n186) );
  in01d0 U22 ( .i(dur_cnt[2]), .zn(n144) );
  in01d0 U23 ( .i(dur_cnt[4]), .zn(n360) );
  nr02d0 U24 ( .a1(n360), .a2(n186), .zn(n145) );
  oa05d0 U25 ( .a1(dur_cnt[1]), .a2(dur_cnt[0]), .b(dur_cnt[2]), .c(n145), 
        .zn(n1) );
  ao07d0 U26 ( .a1(dur_cnt[4]), .a2(n359), .a3(n2), .b1(dur_cnt[5]), .b2(n1), 
        .zn(n3) );
  in01d0 U28 ( .i(n365), .zn(quarter_pulse) );
  in01d0 U29 ( .i(cnt_for_sample[3]), .zn(n115) );
  nr02d0 U30 ( .a1(clk_sync_cnt[3]), .a2(n115), .zn(n8) );
  in01d0 U31 ( .i(cnt_for_sample[5]), .zn(n113) );
  xo02d0 U32 ( .a1(clk_sync_cnt[5]), .a2(n113), .z(n50) );
  in01d0 U33 ( .i(clk_sync_cnt[3]), .zn(n354) );
  nr02d0 U34 ( .a1(cnt_for_sample[3]), .a2(n354), .zn(n7) );
  in01d0 U35 ( .i(n50), .zn(n6) );
  ao06d0 U36 ( .a1(n8), .a2(n50), .b1(n8), .b2(clk_sync_cnt[4]), .c1(n7), .c2(
        n6), .zn(n21) );
  nr04d0 U37 ( .a1(cnt_for_sample[15]), .a2(cnt_for_sample[14]), .a3(
        cnt_for_sample[13]), .a4(cnt_for_sample[12]), .zn(n12) );
  in01d0 U38 ( .i(cnt_for_sample[0]), .zn(n100) );
  in01d0 U39 ( .i(clk_sync_cnt[1]), .zn(n358) );
  oa01d0 U40 ( .a1(clk_sync_cnt[0]), .a2(n100), .b1(n358), .b2(
        cnt_for_sample[1]), .zn(n9) );
  ao03d0 U41 ( .a1(n100), .a2(clk_sync_cnt[0]), .b1(n358), .b2(
        cnt_for_sample[1]), .c(n9), .zn(n11) );
  xn02d0 U42 ( .a1(clk_sync_cnt[2]), .a2(cnt_for_sample[2]), .zn(n10) );
  oa04d0 U43 ( .a1(clk_sync_cnt[4]), .a2(clk_sync_cnt[3]), .b(clk_sync_cnt[5]), 
        .zn(n14) );
  in01d0 U44 ( .i(clk_sync_cnt[6]), .zn(n349) );
  xo02d0 U45 ( .a1(n349), .a2(cnt_for_sample[6]), .z(n49) );
  nr03d0 U46 ( .a1(cnt_for_sample[9]), .a2(cnt_for_sample[11]), .a3(
        cnt_for_sample[10]), .zn(n52) );
  ao04d0 U47 ( .a1(n14), .a2(n49), .b(cnt_for_sample[8]), .zn(n13) );
  oa05d0 U48 ( .a1(n14), .a2(n49), .b(n52), .c(n13), .zn(n20) );
  nd02d0 U49 ( .a1(n349), .a2(n14), .zn(n18) );
  in01d0 U50 ( .i(clk_sync_cnt[7]), .zn(n347) );
  xn02d0 U51 ( .a1(n347), .a2(cnt_for_sample[7]), .zn(n56) );
  oa04d0 U52 ( .a1(n347), .a2(n18), .b(n56), .zn(n17) );
  in01d0 U53 ( .i(clk_sync_cnt[4]), .zn(n352) );
  in01d0 U54 ( .i(cnt_for_sample[4]), .zn(n125) );
  oa01d0 U55 ( .a1(n352), .a2(n125), .b1(cnt_for_sample[4]), .b2(
        clk_sync_cnt[4]), .zn(n15) );
  in01d0 U56 ( .i(n15), .zn(n55) );
  ao06d0 U57 ( .a1(n55), .a2(clk_sync_cnt[3]), .b1(clk_sync_cnt[4]), .b2(n50), 
        .c1(n15), .c2(n354), .zn(n16) );
  oa05d0 U58 ( .a1(n18), .a2(n56), .b(n17), .c(n16), .zn(n19) );
  or04d0 U59 ( .a1(n21), .a2(n54), .a3(n20), .a4(n19), .z(n404) );
  in01d0 U60 ( .i(sample_num[0]), .zn(n106) );
  nr02d0 U61 ( .a1(n404), .a2(n106), .zn(n105) );
  nd02d0 U62 ( .a1(sample_num[1]), .a2(n105), .zn(n364) );
  ao08d0 U63 ( .a1(sample_num[1]), .a2(sample_num[2]), .a3(sample_num[0]), .b(
        sample_num[3]), .zn(n22) );
  ao05d0 U64 ( .a1(sample_num[2]), .a2(sample_num[3]), .b(n22), .c(n404), .zn(
        n23) );
  ao04d0 U65 ( .a1(sample_num[3]), .a2(n364), .b(n23), .zn(n24) );
  nr02d0 U66 ( .a1(quarter_pulse), .a2(n24), .zn(n264) );
  nd03d0 U67 ( .a1(quarter_pulse), .a2(sample_num[0]), .a3(sample_num[3]), 
        .zn(n25) );
  nr03d0 U68 ( .a1(sample_num[2]), .a2(sample_num[1]), .a3(n25), .zn(n65) );
  in01d0 U69 ( .i(n65), .zn(n368) );
  nr02d0 U70 ( .a1(parity_pass), .a2(n368), .zn(par_error) );
  in01d0 U71 ( .i(rx_data_with_crc[5]), .zn(n383) );
  in01d0 U72 ( .i(rx_data_with_crc[2]), .zn(n377) );
  ao01d0 U73 ( .a1(n383), .a2(crc_data[5]), .b1(n377), .b2(crc_data[2]), .zn(
        n26) );
  oa03d0 U74 ( .a1(n383), .a2(crc_data[5]), .b1(n377), .b2(crc_data[2]), .c(
        n26), .zn(n35) );
  in01d0 U75 ( .i(rx_data_with_crc[4]), .zn(n381) );
  in01d0 U76 ( .i(rx_data_with_crc[1]), .zn(n375) );
  ao01d0 U77 ( .a1(n381), .a2(crc_data[4]), .b1(n375), .b2(crc_data[1]), .zn(
        n27) );
  oa03d0 U78 ( .a1(n381), .a2(crc_data[4]), .b1(n375), .b2(crc_data[1]), .c(
        n27), .zn(n34) );
  in01d0 U79 ( .i(rx_data_with_crc[0]), .zn(n373) );
  in01d0 U80 ( .i(rx_data_with_crc[7]), .zn(n388) );
  oa05d0 U81 ( .a1(n388), .a2(crc_data[7]), .b(rx_end_r), .c(parity_pass), 
        .zn(n28) );
  ao04d0 U82 ( .a1(n388), .a2(crc_data[7]), .b(n28), .zn(n32) );
  in01d0 U83 ( .i(rx_data_with_crc[6]), .zn(n385) );
  in01d0 U84 ( .i(rx_data_with_crc[3]), .zn(n379) );
  ao01d0 U85 ( .a1(n385), .a2(crc_data[6]), .b1(n379), .b2(crc_data[3]), .zn(
        n29) );
  oa03d0 U86 ( .a1(n385), .a2(crc_data[6]), .b1(n379), .b2(crc_data[3]), .c(
        n29), .zn(n30) );
  ao04d0 U87 ( .a1(crc_data[0]), .a2(n373), .b(n30), .zn(n31) );
  oa05d0 U88 ( .a1(crc_data[0]), .a2(n373), .b(n32), .c(n31), .zn(n33) );
  nr03d0 U89 ( .a1(n35), .a2(n34), .a3(n33), .zn(rx_data_valid) );
  in01d0 U90 ( .i(dur_cnt[11]), .zn(n348) );
  in01d0 U91 ( .i(dur_cnt[8]), .zn(n353) );
  in01d0 U92 ( .i(dur_cnt[10]), .zn(n350) );
  in01d0 U93 ( .i(dur_cnt[9]), .zn(n351) );
  nd02d0 U95 ( .a1(data_r[2]), .a2(n396), .zn(n177) );
  nr04d0 U96 ( .a1(dur_cnt[1]), .a2(dur_cnt[0]), .a3(dur_cnt[3]), .a4(
        dur_cnt[2]), .zn(n296) );
  nd02d0 U97 ( .a1(n296), .a2(n360), .zn(n221) );
  nr02d0 U98 ( .a1(dur_cnt[5]), .a2(n221), .zn(n217) );
  nd02d0 U99 ( .a1(n217), .a2(n356), .zn(n214) );
  ao05d0 U100 ( .a1(dur_cnt[7]), .a2(n214), .b(dur_cnt[8]), .c(dur_cnt[9]), 
        .zn(n37) );
  oa08d0 U101 ( .a1(n37), .a2(n350), .a3(n348), .b(n36), .zn(n38) );
  ao05d0 U102 ( .a1(n348), .a2(n39), .b(n177), .c(n38), .zn(n40) );
  in01d0 U103 ( .i(n40), .zn(n357) );
  in01d2 U104 ( .i(n357), .zn(ping_from_master) );
  oa05d0 U105 ( .a1(sample_num[1]), .a2(n105), .b(n365), .c(n364), .zn(n41) );
  in01d0 U106 ( .i(n41), .zn(n266) );
  in01d0 U107 ( .i(dur_cnt[15]), .zn(n166) );
  in01d0 U108 ( .i(dur_cnt[13]), .zn(n174) );
  nd02d0 U109 ( .a1(n166), .a2(n174), .zn(n179) );
  in01d0 U110 ( .i(n217), .zn(n44) );
  nd02d0 U111 ( .a1(n350), .a2(n351), .zn(n43) );
  or04d0 U112 ( .a1(n353), .a2(n356), .a3(dur_cnt[11]), .a4(dur_cnt[7]), .z(
        n42) );
  nr04d0 U113 ( .a1(n179), .a2(n44), .a3(n43), .a4(n42), .zn(n45) );
  ao08d0 U114 ( .a1(dur_cnt[14]), .a2(dur_cnt[12]), .a3(n45), .b(n396), .zn(
        n46) );
  ni01d1 U115 ( .i(n46), .z(n204) );
  in01d0 U116 ( .i(n204), .zn(n197) );
  oa04d0 U117 ( .a1(dur_cnt[0]), .a2(n197), .b(n184), .zn(n121) );
  nr02d0 U118 ( .a1(dur_cnt[1]), .a2(n197), .zn(n122) );
  ao01d0 U119 ( .a1(dur_cnt[1]), .a2(n121), .b1(dur_cnt[0]), .b2(n122), .zn(
        n47) );
  in01d0 U120 ( .i(n47), .zn(n328) );
  ao03d0 U121 ( .a1(low_dur_cnt[2]), .a2(low_dur_cnt[4]), .b1(low_dur_cnt[3]), 
        .b2(low_dur_cnt[4]), .c(low_dur_cnt[5]), .zn(n59) );
  nr02d0 U122 ( .a1(low_dur_cnt[1]), .a2(low_dur_cnt[0]), .zn(n90) );
  in01d0 U123 ( .i(low_dur_cnt[2]), .zn(n333) );
  in01d0 U124 ( .i(low_dur_cnt[3]), .zn(n98) );
  in01d0 U125 ( .i(low_dur_cnt[4]), .zn(n339) );
  in01d0 U126 ( .i(low_dur_cnt[5]), .zn(n340) );
  nr04d0 U127 ( .a1(n333), .a2(n98), .a3(n339), .a4(n340), .zn(n89) );
  in01d0 U128 ( .i(n89), .zn(n48) );
  nr02d0 U129 ( .a1(data_r[2]), .a2(n396), .zn(n97) );
  nr03d0 U130 ( .a1(low_dur_cnt[8]), .a2(low_dur_cnt[7]), .a3(low_dur_cnt[6]), 
        .zn(n88) );
  oa05d0 U131 ( .a1(n90), .a2(n48), .b(n97), .c(n88), .zn(n58) );
  ao03d0 U132 ( .a1(cnt_for_sample[3]), .a2(n354), .b1(n115), .b2(
        clk_sync_cnt[3]), .c(cnt_for_sample[8]), .zn(n51) );
  nd04d0 U133 ( .a1(n52), .a2(n51), .a3(n50), .a4(n49), .zn(n53) );
  or04d0 U134 ( .a1(n56), .a2(n55), .a3(n54), .a4(n53), .z(n57) );
  oa05d0 U135 ( .a1(n59), .a2(n58), .b(n365), .c(n57), .zn(n160) );
  in01d0 U136 ( .i(n160), .zn(n118) );
  nd02d2 U137 ( .a1(rx_st), .a2(n118), .zn(n170) );
  nr02d0 U138 ( .a1(cnt_for_sample[1]), .a2(n170), .zn(n152) );
  ao04d0 U139 ( .a1(cnt_for_sample[0]), .a2(rx_st), .b(n160), .zn(n151) );
  ao01d0 U140 ( .a1(cnt_for_sample[0]), .a2(n152), .b1(cnt_for_sample[1]), 
        .b2(n151), .zn(n60) );
  in01d0 U141 ( .i(n60), .zn(n283) );
  in01d0 U142 ( .i(rx_st), .zn(n371) );
  in01d0 U143 ( .i(sample_data[6]), .zn(n403) );
  in01d0 U144 ( .i(sample_data[1]), .zn(n398) );
  in01d0 U145 ( .i(sample_data[4]), .zn(n401) );
  xo02d0 U146 ( .a1(n401), .a2(sample_data[3]), .z(n61) );
  xo03d1 U147 ( .a1(n398), .a2(sample_data[2]), .a3(n61), .z(n63) );
  in01d0 U148 ( .i(sample_data[0]), .zn(n397) );
  in01d0 U149 ( .i(sample_data[8]), .zn(n405) );
  xo02d0 U150 ( .a1(n405), .a2(sample_data[7]), .z(n62) );
  xo03d1 U151 ( .a1(n63), .a2(n397), .a3(n62), .z(n64) );
  xn03d0 U152 ( .a1(n403), .a2(sample_data[5]), .a3(n64), .zn(n369) );
  oa05d0 U153 ( .a1(rx_st_r), .a2(n371), .b(n65), .c(n369), .zn(n395) );
  ckbuf2 U154 ( .i(n395), .z(n389) );
  in01d0 U155 ( .i(rx_data[13]), .zn(n72) );
  oa04d0 U156 ( .a1(rx_st_r), .a2(n371), .b(n389), .zn(n387) );
  ckbuf2 U157 ( .i(n387), .z(n393) );
  in01d0 U158 ( .i(rx_data[21]), .zn(n66) );
  oa01d0 U159 ( .a1(n389), .a2(n72), .b1(n393), .b2(n66), .zn(n233) );
  in01d0 U160 ( .i(rx_data[12]), .zn(n73) );
  in01d0 U161 ( .i(rx_data[20]), .zn(n67) );
  oa01d0 U162 ( .a1(n389), .a2(n73), .b1(n393), .b2(n67), .zn(n234) );
  in01d0 U163 ( .i(rx_data[11]), .zn(n74) );
  in01d0 U164 ( .i(rx_data[19]), .zn(n68) );
  oa01d0 U165 ( .a1(n389), .a2(n74), .b1(n393), .b2(n68), .zn(n235) );
  in01d0 U166 ( .i(rx_data[10]), .zn(n75) );
  in01d0 U167 ( .i(rx_data[18]), .zn(n69) );
  oa01d0 U168 ( .a1(n389), .a2(n75), .b1(n393), .b2(n69), .zn(n236) );
  in01d0 U169 ( .i(rx_data[9]), .zn(n76) );
  in01d0 U170 ( .i(rx_data[17]), .zn(n70) );
  oa01d0 U171 ( .a1(n389), .a2(n76), .b1(n393), .b2(n70), .zn(n237) );
  in01d0 U172 ( .i(rx_data[8]), .zn(n77) );
  in01d0 U173 ( .i(rx_data[16]), .zn(n71) );
  oa01d0 U174 ( .a1(n389), .a2(n77), .b1(n393), .b2(n71), .zn(n238) );
  in01d0 U175 ( .i(rx_data[7]), .zn(n386) );
  in01d0 U176 ( .i(rx_data[15]), .zn(n394) );
  oa01d0 U177 ( .a1(n389), .a2(n386), .b1(n393), .b2(n394), .zn(n239) );
  in01d0 U178 ( .i(rx_data[6]), .zn(n384) );
  in01d0 U179 ( .i(rx_data[14]), .zn(n391) );
  oa01d0 U180 ( .a1(n389), .a2(n384), .b1(n393), .b2(n391), .zn(n240) );
  in01d0 U181 ( .i(rx_data[5]), .zn(n382) );
  oa01d0 U182 ( .a1(n389), .a2(n382), .b1(n393), .b2(n72), .zn(n241) );
  in01d0 U183 ( .i(rx_data[4]), .zn(n380) );
  oa01d0 U184 ( .a1(n389), .a2(n380), .b1(n393), .b2(n73), .zn(n242) );
  in01d0 U185 ( .i(rx_data[3]), .zn(n378) );
  oa01d0 U186 ( .a1(n389), .a2(n378), .b1(n393), .b2(n74), .zn(n243) );
  in01d0 U187 ( .i(rx_data[2]), .zn(n376) );
  oa01d0 U188 ( .a1(n389), .a2(n376), .b1(n393), .b2(n75), .zn(n244) );
  in01d0 U189 ( .i(rx_data[1]), .zn(n374) );
  oa01d0 U190 ( .a1(n389), .a2(n374), .b1(n393), .b2(n76), .zn(n245) );
  in01d0 U191 ( .i(rx_data[0]), .zn(n372) );
  oa01d0 U192 ( .a1(n389), .a2(n372), .b1(n393), .b2(n77), .zn(n246) );
  fn05d0 U193 ( .a1(rx_st_r), .b1(rx_st), .zn(crc_en) );
  or04d0 U194 ( .a1(rx_data[10]), .a2(rx_data[11]), .a3(rx_data[18]), .a4(
        rx_data[19]), .z(n87) );
  or04d0 U195 ( .a1(rx_data[12]), .a2(rx_data[13]), .a3(rx_data[20]), .a4(
        rx_data[21]), .z(n86) );
  or04d0 U196 ( .a1(rx_data[14]), .a2(rx_data[15]), .a3(rx_data[22]), .a4(
        rx_data[23]), .z(n79) );
  nd04d0 U197 ( .a1(rx_data_with_crc[1]), .a2(parity_pass), .a3(crc_en), .a4(
        n373), .zn(n78) );
  or04d0 U198 ( .a1(rx_data_with_crc[3]), .a2(n377), .a3(n79), .a4(n78), .z(
        n85) );
  nr04d0 U199 ( .a1(rx_data[4]), .a2(rx_data[5]), .a3(rx_data[6]), .a4(
        rx_data[7]), .zn(n83) );
  nr04d0 U200 ( .a1(rx_data[8]), .a2(rx_data[9]), .a3(rx_data[16]), .a4(
        rx_data[17]), .zn(n82) );
  nr04d0 U201 ( .a1(rx_data_with_crc[4]), .a2(rx_data_with_crc[5]), .a3(
        rx_data_with_crc[7]), .a4(n385), .zn(n81) );
  nr04d0 U202 ( .a1(rx_data[0]), .a2(rx_data[1]), .a3(rx_data[2]), .a4(
        rx_data[3]), .zn(n80) );
  nd04d0 U203 ( .a1(n83), .a2(n82), .a3(n81), .a4(n80), .zn(n84) );
  nr04d0 U204 ( .a1(n87), .a2(n86), .a3(n85), .a4(n84), .zn(N216) );
  in01d0 U205 ( .i(low_dur_cnt[0]), .zn(n331) );
  ao08d0 U206 ( .a1(n90), .a2(n89), .a3(n88), .b(data_r[1]), .zn(n91) );
  ni01d1 U207 ( .i(n91), .z(n336) );
  ao04d0 U208 ( .a1(n336), .a2(n331), .b(n335), .zn(n93) );
  in01d0 U209 ( .i(low_dur_cnt[1]), .zn(n92) );
  oa07d0 U210 ( .a1(low_dur_cnt[1]), .a2(data_r[1]), .a3(n331), .b1(n93), .b2(
        n92), .zn(n303) );
  in01d0 U211 ( .i(n336), .zn(n338) );
  nd02d0 U212 ( .a1(low_dur_cnt[4]), .a2(low_dur_cnt[5]), .zn(n94) );
  nd04d0 U213 ( .a1(low_dur_cnt[1]), .a2(low_dur_cnt[0]), .a3(low_dur_cnt[2]), 
        .a4(low_dur_cnt[3]), .zn(n337) );
  nr02d0 U214 ( .a1(n94), .a2(n337), .zn(n101) );
  ao04d0 U215 ( .a1(n336), .a2(n96), .b(n335), .zn(n102) );
  in01d0 U216 ( .i(low_dur_cnt[6]), .zn(n95) );
  oa07d0 U217 ( .a1(low_dur_cnt[6]), .a2(n338), .a3(n96), .b1(n102), .b2(n95), 
        .zn(n298) );
  nd03d0 U218 ( .a1(low_dur_cnt[1]), .a2(low_dur_cnt[0]), .a3(n396), .zn(n334)
         );
  ao08d0 U219 ( .a1(low_dur_cnt[0]), .a2(low_dur_cnt[1]), .a3(n336), .b(n97), 
        .zn(n332) );
  ao04d0 U220 ( .a1(n336), .a2(n333), .b(n332), .zn(n99) );
  oa07d0 U221 ( .a1(low_dur_cnt[3]), .a2(n333), .a3(n334), .b1(n99), .b2(n98), 
        .zn(n301) );
  oa03d0 U222 ( .a1(rx_st), .a2(n100), .b1(n371), .b2(cnt_for_sample[0]), .c(
        n118), .zn(n282) );
  in01d0 U223 ( .i(low_dur_cnt[7]), .zn(n345) );
  nd03d0 U224 ( .a1(low_dur_cnt[6]), .a2(n101), .a3(n396), .zn(n346) );
  oa04d0 U225 ( .a1(low_dur_cnt[6]), .a2(n338), .b(n102), .zn(n344) );
  ao04d0 U226 ( .a1(n336), .a2(n345), .b(n344), .zn(n104) );
  in01d0 U227 ( .i(low_dur_cnt[8]), .zn(n103) );
  oa07d0 U228 ( .a1(low_dur_cnt[8]), .a2(n345), .a3(n346), .b1(n104), .b2(n103), .zn(n304) );
  ao05d0 U229 ( .a1(n404), .a2(n106), .b(quarter_pulse), .c(n105), .zn(n267)
         );
  in01d0 U230 ( .i(cnt_for_sample[6]), .zn(n133) );
  nd03d0 U231 ( .a1(cnt_for_sample[0]), .a2(cnt_for_sample[2]), .a3(
        cnt_for_sample[1]), .zn(n116) );
  or02d0 U232 ( .a1(n116), .a2(n115), .z(n127) );
  nr02d0 U233 ( .a1(n125), .a2(n127), .zn(n112) );
  nd02d0 U234 ( .a1(cnt_for_sample[5]), .a2(n112), .zn(n135) );
  nr02d0 U235 ( .a1(n133), .a2(n135), .zn(n109) );
  in01d0 U236 ( .i(n109), .zn(n108) );
  oa04d0 U237 ( .a1(n371), .a2(n108), .b(n118), .zn(n128) );
  in01d0 U238 ( .i(cnt_for_sample[7]), .zn(n107) );
  oa07d0 U239 ( .a1(cnt_for_sample[7]), .a2(n170), .a3(n108), .b1(n128), .b2(
        n107), .zn(n276) );
  in01d0 U240 ( .i(cnt_for_sample[8]), .zn(n129) );
  nd02d0 U241 ( .a1(cnt_for_sample[7]), .a2(n109), .zn(n131) );
  nr02d0 U242 ( .a1(n129), .a2(n131), .zn(n117) );
  oa04d0 U243 ( .a1(n371), .a2(n111), .b(n118), .zn(n136) );
  in01d0 U244 ( .i(cnt_for_sample[9]), .zn(n110) );
  oa07d0 U245 ( .a1(cnt_for_sample[9]), .a2(n170), .a3(n111), .b1(n136), .b2(
        n110), .zn(n274) );
  in01d0 U246 ( .i(n112), .zn(n114) );
  oa04d0 U247 ( .a1(n371), .a2(n114), .b(n118), .zn(n132) );
  oa07d0 U248 ( .a1(cnt_for_sample[5]), .a2(n170), .a3(n114), .b1(n132), .b2(
        n113), .zn(n278) );
  oa04d0 U249 ( .a1(n371), .a2(n116), .b(n118), .zn(n124) );
  oa07d0 U250 ( .a1(cnt_for_sample[3]), .a2(n170), .a3(n116), .b1(n124), .b2(
        n115), .zn(n280) );
  in01d0 U251 ( .i(cnt_for_sample[10]), .zn(n137) );
  nd02d0 U252 ( .a1(cnt_for_sample[9]), .a2(n117), .zn(n139) );
  nr02d0 U253 ( .a1(n137), .a2(n139), .zn(n146) );
  in01d0 U254 ( .i(n146), .zn(n120) );
  oa04d0 U255 ( .a1(n371), .a2(n120), .b(n118), .zn(n147) );
  in01d0 U256 ( .i(cnt_for_sample[11]), .zn(n119) );
  oa07d0 U257 ( .a1(cnt_for_sample[11]), .a2(n170), .a3(n120), .b1(n147), .b2(
        n119), .zn(n272) );
  nd02d0 U258 ( .a1(dur_cnt[1]), .a2(dur_cnt[0]), .zn(n143) );
  nr02d0 U259 ( .a1(n122), .a2(n121), .zn(n123) );
  oa07d0 U260 ( .a1(dur_cnt[2]), .a2(n197), .a3(n143), .b1(n123), .b2(n144), 
        .zn(n327) );
  oa14d0 U261 ( .a1(n170), .a2(cnt_for_sample[3]), .b(n124), .z(n126) );
  oa07d0 U262 ( .a1(cnt_for_sample[4]), .a2(n170), .a3(n127), .b1(n126), .b2(
        n125), .zn(n279) );
  oa14d0 U263 ( .a1(n170), .a2(cnt_for_sample[7]), .b(n128), .z(n130) );
  oa07d0 U264 ( .a1(cnt_for_sample[8]), .a2(n170), .a3(n131), .b1(n130), .b2(
        n129), .zn(n275) );
  oa14d0 U265 ( .a1(n170), .a2(cnt_for_sample[5]), .b(n132), .z(n134) );
  oa07d0 U266 ( .a1(cnt_for_sample[6]), .a2(n170), .a3(n135), .b1(n134), .b2(
        n133), .zn(n277) );
  oa14d0 U267 ( .a1(n170), .a2(cnt_for_sample[9]), .b(n136), .z(n138) );
  oa07d0 U268 ( .a1(cnt_for_sample[10]), .a2(n170), .a3(n139), .b1(n138), .b2(
        n137), .zn(n273) );
  nr02d0 U269 ( .a1(dur_cnt[7]), .a2(n214), .zn(n211) );
  in01d0 U270 ( .i(n211), .zn(n176) );
  oa04d0 U271 ( .a1(dur_cnt[8]), .a2(n176), .b(dur_cnt[9]), .zn(n140) );
  ao04d0 U272 ( .a1(n350), .a2(n140), .b(n348), .zn(n295) );
  in01d0 U273 ( .i(n295), .zn(n220) );
  nr03d0 U274 ( .a1(dur_cnt[8]), .a2(dur_cnt[9]), .a3(n176), .zn(n141) );
  oa07d0 U275 ( .a1(n357), .a2(n348), .a3(n141), .b1(tune_cycle[5]), .b2(
        ping_from_master), .zn(n142) );
  oa08d0 U276 ( .a1(dur_cnt[9]), .a2(n357), .a3(n220), .b(n142), .zn(n311) );
  nr02d0 U277 ( .a1(n144), .a2(n143), .zn(n187) );
  nd02d0 U278 ( .a1(n145), .a2(n187), .zn(n191) );
  in01d0 U279 ( .i(n191), .zn(n192) );
  nd03d0 U280 ( .a1(dur_cnt[6]), .a2(dur_cnt[5]), .a3(n192), .zn(n196) );
  nr03d0 U281 ( .a1(n353), .a2(n355), .a3(n196), .zn(n203) );
  nd03d0 U282 ( .a1(dur_cnt[10]), .a2(dur_cnt[9]), .a3(n203), .zn(n149) );
  in01d0 U283 ( .i(n184), .zn(n201) );
  ao04d0 U284 ( .a1(n149), .a2(n204), .b(n201), .zn(n155) );
  oa07d0 U285 ( .a1(dur_cnt[11]), .a2(n197), .a3(n149), .b1(n155), .b2(n348), 
        .zn(n318) );
  nd02d0 U286 ( .a1(cnt_for_sample[11]), .a2(n146), .zn(n158) );
  oa14d0 U287 ( .a1(n170), .a2(cnt_for_sample[11]), .b(n147), .z(n148) );
  in01d0 U288 ( .i(cnt_for_sample[12]), .zn(n159) );
  oa07d0 U289 ( .a1(cnt_for_sample[12]), .a2(n170), .a3(n158), .b1(n148), .b2(
        n159), .zn(n271) );
  in01d0 U290 ( .i(dur_cnt[12]), .zn(n178) );
  fn01d0 U291 ( .a1(n149), .b1(dur_cnt[11]), .zn(n157) );
  nr02d0 U292 ( .a1(n178), .a2(n157), .zn(n164) );
  ao04d0 U293 ( .a1(n204), .a2(n150), .b(n201), .zn(n165) );
  oa07d0 U294 ( .a1(dur_cnt[13]), .a2(n197), .a3(n150), .b1(n165), .b2(n174), 
        .zn(n316) );
  nd02d0 U295 ( .a1(cnt_for_sample[0]), .a2(cnt_for_sample[1]), .zn(n154) );
  oa04d0 U296 ( .a1(n152), .a2(n151), .b(cnt_for_sample[2]), .zn(n153) );
  oa08d0 U297 ( .a1(cnt_for_sample[2]), .a2(n170), .a3(n154), .b(n153), .zn(
        n281) );
  oa14d0 U298 ( .a1(n197), .a2(dur_cnt[11]), .b(n155), .z(n156) );
  oa07d0 U299 ( .a1(dur_cnt[12]), .a2(n396), .a3(n157), .b1(n156), .b2(n178), 
        .zn(n317) );
  nr02d0 U300 ( .a1(n159), .a2(n158), .zn(n168) );
  in01d0 U301 ( .i(n170), .zn(n171) );
  nr02d0 U302 ( .a1(rx_st), .a2(n160), .zn(n161) );
  ao04d0 U303 ( .a1(n171), .a2(n163), .b(n161), .zn(n169) );
  in01d0 U304 ( .i(cnt_for_sample[13]), .zn(n162) );
  oa07d0 U305 ( .a1(cnt_for_sample[13]), .a2(n170), .a3(n163), .b1(n169), .b2(
        n162), .zn(n270) );
  in01d0 U306 ( .i(dur_cnt[14]), .zn(n209) );
  nd03d0 U307 ( .a1(dur_cnt[13]), .a2(n204), .a3(n164), .zn(n210) );
  oa04d0 U308 ( .a1(dur_cnt[13]), .a2(n197), .b(n165), .zn(n208) );
  ao04d0 U309 ( .a1(data_r[1]), .a2(n209), .b(n208), .zn(n167) );
  oa07d0 U310 ( .a1(dur_cnt[15]), .a2(n209), .a3(n210), .b1(n167), .b2(n166), 
        .zn(n329) );
  in01d0 U311 ( .i(cnt_for_sample[14]), .zn(n362) );
  nd03d0 U312 ( .a1(cnt_for_sample[13]), .a2(n171), .a3(n168), .zn(n363) );
  oa04d0 U313 ( .a1(cnt_for_sample[13]), .a2(n170), .b(n169), .zn(n361) );
  ao04d0 U314 ( .a1(n171), .a2(n362), .b(n361), .zn(n173) );
  in01d0 U315 ( .i(cnt_for_sample[15]), .zn(n172) );
  oa07d0 U316 ( .a1(cnt_for_sample[15]), .a2(n362), .a3(n363), .b1(n173), .b2(
        n172), .zn(n268) );
  or04d0 U317 ( .a1(dur_cnt[15]), .a2(dur_cnt[14]), .a3(n175), .a4(n174), .z(
        n183) );
  ao08d0 U318 ( .a1(dur_cnt[8]), .a2(dur_cnt[9]), .a3(n176), .b(dur_cnt[10]), 
        .zn(n181) );
  ao03d0 U319 ( .a1(n179), .a2(n178), .b1(n209), .b2(n178), .c(n177), .zn(n180) );
  oa08d0 U320 ( .a1(n181), .a2(n209), .a3(n348), .b(n180), .zn(n182) );
  ao04d0 U321 ( .a1(dur_cnt[12]), .a2(n183), .b(n182), .zn(reset_from_master)
         );
  an02d0 U322 ( .a1(data), .a2(rx_own_bus), .z(valid_data) );
  fn03d0 U324 ( .a1(dur_cnt[0]), .a2(n184), .b1(n204), .b2(dur_cnt[0]), .zn(
        n330) );
  in01d0 U325 ( .i(n187), .zn(n185) );
  ao04d0 U326 ( .a1(n204), .a2(n185), .b(n201), .zn(n190) );
  oa01d0 U327 ( .a1(n190), .a2(n186), .b1(n185), .b2(n189), .zn(n326) );
  nd03d0 U328 ( .a1(dur_cnt[3]), .a2(n204), .a3(n187), .zn(n188) );
  ao07d0 U329 ( .a1(n190), .a2(dur_cnt[4]), .a3(n189), .b1(n188), .b2(n360), 
        .zn(n325) );
  ao04d0 U330 ( .a1(n204), .a2(n191), .b(n201), .zn(n195) );
  nd02d0 U331 ( .a1(n204), .a2(n359), .zn(n194) );
  oa01d0 U332 ( .a1(n195), .a2(n359), .b1(n191), .b2(n194), .zn(n324) );
  nd03d0 U333 ( .a1(dur_cnt[5]), .a2(n204), .a3(n192), .zn(n193) );
  ao07d0 U334 ( .a1(n195), .a2(dur_cnt[6]), .a3(n194), .b1(n193), .b2(n356), 
        .zn(n323) );
  ao04d0 U335 ( .a1(n204), .a2(n196), .b(n201), .zn(n200) );
  nd02d0 U336 ( .a1(n204), .a2(n355), .zn(n199) );
  oa01d0 U337 ( .a1(n200), .a2(n355), .b1(n196), .b2(n199), .zn(n322) );
  or03d0 U338 ( .a1(n355), .a2(n197), .a3(n196), .z(n198) );
  ao07d0 U339 ( .a1(n200), .a2(dur_cnt[8]), .a3(n199), .b1(n198), .b2(n353), 
        .zn(n321) );
  in01d0 U340 ( .i(n203), .zn(n202) );
  ao04d0 U341 ( .a1(n204), .a2(n202), .b(n201), .zn(n207) );
  nd02d0 U342 ( .a1(n204), .a2(n351), .zn(n206) );
  oa01d0 U343 ( .a1(n207), .a2(n351), .b1(n202), .b2(n206), .zn(n320) );
  nd03d0 U344 ( .a1(dur_cnt[9]), .a2(n204), .a3(n203), .zn(n205) );
  ao07d0 U345 ( .a1(n207), .a2(dur_cnt[10]), .a3(n206), .b1(n205), .b2(n350), 
        .zn(n319) );
  fn03d0 U346 ( .a1(n210), .a2(n209), .b1(n209), .b2(n208), .zn(n315) );
  fn03d0 U347 ( .a1(ping_from_master), .a2(n220), .b1(tune_up), .b2(
        ping_from_master), .zn(n314) );
  nr02d0 U348 ( .a1(n211), .a2(n295), .zn(n212) );
  xo02d0 U349 ( .a1(n353), .a2(n212), .z(n213) );
  fn03d0 U350 ( .a1(ping_from_master), .a2(n213), .b1(tune_cycle[4]), .b2(
        ping_from_master), .zn(n310) );
  nd02d0 U351 ( .a1(n214), .a2(n220), .zn(n215) );
  xn02d0 U352 ( .a1(n355), .a2(n215), .zn(n216) );
  fn03d0 U353 ( .a1(ping_from_master), .a2(n216), .b1(tune_cycle[3]), .b2(
        ping_from_master), .zn(n309) );
  nr02d0 U354 ( .a1(n217), .a2(n295), .zn(n218) );
  xo02d0 U355 ( .a1(n218), .a2(n356), .z(n219) );
  fn04d0 U356 ( .a1(n357), .a2(n219), .b1(n357), .b2(tune_cycle[2]), .zn(n308)
         );
  nd02d0 U357 ( .a1(n221), .a2(n220), .zn(n293) );
  xn02d0 U358 ( .a1(n359), .a2(n293), .zn(n294) );
  fn03d0 U359 ( .a1(ping_from_master), .a2(n294), .b1(tune_cycle[1]), .b2(
        ping_from_master), .zn(n307) );
  nr02d0 U360 ( .a1(n296), .a2(n295), .zn(n312) );
  xo02d0 U361 ( .a1(n312), .a2(n360), .z(n313) );
  fn04d0 U362 ( .a1(n357), .a2(n313), .b1(n357), .b2(tune_cycle[0]), .zn(n306)
         );
  fn03d0 U363 ( .a1(n338), .a2(n331), .b1(n331), .b2(n335), .zn(n305) );
  fn03d0 U364 ( .a1(n334), .a2(n333), .b1(n333), .b2(n332), .zn(n302) );
  ao04d0 U365 ( .a1(n336), .a2(n337), .b(n335), .zn(n343) );
  nd02d0 U366 ( .a1(n336), .a2(n339), .zn(n342) );
  oa01d0 U367 ( .a1(n343), .a2(n339), .b1(n337), .b2(n342), .zn(n300) );
  or03d0 U368 ( .a1(n339), .a2(n338), .a3(n337), .z(n341) );
  ao07d0 U369 ( .a1(n343), .a2(low_dur_cnt[5]), .a3(n342), .b1(n341), .b2(n340), .zn(n299) );
  fn03d0 U370 ( .a1(n346), .a2(n345), .b1(n345), .b2(n344), .zn(n297) );
  ao01d0 U371 ( .a1(ping_from_master), .a2(n348), .b1(n347), .b2(n357), .zn(
        n292) );
  ao01d0 U372 ( .a1(ping_from_master), .a2(n350), .b1(n349), .b2(n357), .zn(
        n291) );
  fn03d0 U373 ( .a1(ping_from_master), .a2(n351), .b1(clk_sync_cnt[5]), .b2(
        ping_from_master), .zn(n290) );
  ao01d0 U374 ( .a1(ping_from_master), .a2(n353), .b1(n352), .b2(n357), .zn(
        n289) );
  ao01d0 U375 ( .a1(ping_from_master), .a2(n355), .b1(n354), .b2(n357), .zn(
        n288) );
  fn03d0 U376 ( .a1(ping_from_master), .a2(n356), .b1(clk_sync_cnt[2]), .b2(
        ping_from_master), .zn(n287) );
  ao01d0 U377 ( .a1(ping_from_master), .a2(n359), .b1(n358), .b2(n357), .zn(
        n286) );
  fn03d0 U378 ( .a1(ping_from_master), .a2(n360), .b1(clk_sync_cnt[0]), .b2(
        ping_from_master), .zn(n285) );
  oa04d0 U379 ( .a1(ping_from_master), .a2(n371), .b(n365), .zn(n284) );
  fn03d0 U380 ( .a1(n363), .a2(n362), .b1(n362), .b2(n361), .zn(n269) );
  oa04d0 U381 ( .a1(sample_num[2]), .a2(n367), .b(n365), .zn(n366) );
  ao04d0 U382 ( .a1(sample_num[2]), .a2(n367), .b(n366), .zn(n265) );
  oa04d0 U383 ( .a1(n369), .a2(n368), .b(parity_pass), .zn(n370) );
  oa04d0 U384 ( .a1(rx_st_r), .a2(n371), .b(n370), .zn(n263) );
  in01d0 U385 ( .i(sample_data[2]), .zn(n399) );
  oa01d0 U386 ( .a1(n399), .a2(n389), .b1(n393), .b2(n375), .zn(n262) );
  oa01d0 U387 ( .a1(n398), .a2(n389), .b1(n393), .b2(n373), .zn(n261) );
  in01d0 U388 ( .i(sample_data[3]), .zn(n400) );
  oa01d0 U389 ( .a1(n400), .a2(n389), .b1(n393), .b2(n377), .zn(n260) );
  oa01d0 U390 ( .a1(n401), .a2(n389), .b1(n393), .b2(n379), .zn(n259) );
  in01d0 U391 ( .i(sample_data[5]), .zn(n402) );
  oa01d0 U392 ( .a1(n402), .a2(n389), .b1(n393), .b2(n381), .zn(n258) );
  oa01d0 U393 ( .a1(n403), .a2(n389), .b1(n393), .b2(n383), .zn(n257) );
  in01d0 U394 ( .i(sample_data[7]), .zn(n406) );
  oa01d0 U395 ( .a1(n406), .a2(n389), .b1(n393), .b2(n385), .zn(n256) );
  oa01d0 U396 ( .a1(n405), .a2(n389), .b1(n393), .b2(n388), .zn(n255) );
  oa01d0 U397 ( .a1(n389), .a2(n373), .b1(n393), .b2(n372), .zn(n254) );
  oa01d0 U398 ( .a1(n389), .a2(n375), .b1(n387), .b2(n374), .zn(n253) );
  oa01d0 U399 ( .a1(n395), .a2(n377), .b1(n387), .b2(n376), .zn(n252) );
  oa01d1 U400 ( .a1(n395), .a2(n379), .b1(n387), .b2(n378), .zn(n251) );
  oa01d1 U401 ( .a1(n395), .a2(n381), .b1(n387), .b2(n380), .zn(n250) );
  oa01d0 U402 ( .a1(n389), .a2(n383), .b1(n393), .b2(n382), .zn(n249) );
  oa01d0 U403 ( .a1(n389), .a2(n385), .b1(n393), .b2(n384), .zn(n248) );
  oa01d0 U404 ( .a1(n389), .a2(n388), .b1(n387), .b2(n386), .zn(n247) );
  in01d0 U405 ( .i(rx_data[22]), .zn(n390) );
  oa01d1 U406 ( .a1(n395), .a2(n391), .b1(n393), .b2(n390), .zn(n232) );
  in01d0 U407 ( .i(rx_data[23]), .zn(n392) );
  oa01d1 U408 ( .a1(n395), .a2(n394), .b1(n393), .b2(n392), .zn(n231) );
  in01d0 U409 ( .i(n404), .zn(n407) );
  ao01d0 U410 ( .a1(n407), .a2(n396), .b1(n397), .b2(n404), .zn(n230) );
  ao01d0 U411 ( .a1(n407), .a2(n397), .b1(n398), .b2(n404), .zn(n229) );
  ao01d0 U412 ( .a1(n407), .a2(n398), .b1(n399), .b2(n404), .zn(n228) );
  ao01d0 U413 ( .a1(n407), .a2(n399), .b1(n400), .b2(n404), .zn(n227) );
  ao01d0 U414 ( .a1(n407), .a2(n400), .b1(n401), .b2(n404), .zn(n226) );
  ao01d0 U415 ( .a1(n407), .a2(n401), .b1(n402), .b2(n404), .zn(n225) );
  ao01d0 U416 ( .a1(n407), .a2(n402), .b1(n403), .b2(n404), .zn(n224) );
  ao01d0 U417 ( .a1(n407), .a2(n403), .b1(n406), .b2(n404), .zn(n223) );
  ao01d0 U418 ( .a1(n407), .a2(n406), .b1(n405), .b2(n404), .zn(n222) );
  nd04d0 U15 ( .a1(n175), .a2(n396), .a3(n355), .a4(n409), .zn(n365) );
  nr03d0 U19 ( .a1(n3), .a2(dur_cnt[8]), .a3(n410), .zn(n409) );
  nd03d0 U27 ( .a1(data_r[2]), .a2(n36), .a3(n356), .zn(n410) );
  nd04d2 U94 ( .a1(dur_cnt[8]), .a2(dur_cnt[7]), .a3(dur_cnt[10]), .a4(
        dur_cnt[9]), .zn(n39) );
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
  xn02d0 U3 ( .a1(data_in[5]), .a2(data_in[6]), .zn(n8) );
  xo02d0 U4 ( .a1(data_in[8]), .a2(crc_out[1]), .z(n20) );
  in01d0 U5 ( .i(crc_out[4]), .zn(n21) );
  xo02d0 U6 ( .a1(data_in[2]), .a2(n21), .z(n1) );
  xn03d0 U7 ( .a1(data_in[11]), .a2(n20), .a3(n1), .zn(n2) );
  in01d0 U8 ( .i(crc_out[0]), .zn(n6) );
  xo02d0 U9 ( .a1(data_in[7]), .a2(n6), .z(n30) );
  xn03d0 U10 ( .a1(n8), .a2(n2), .a3(n30), .zn(n3) );
  or02d0 U11 ( .a1(rst), .a2(crc_en), .z(n36) );
  in01d0 U12 ( .i(crc_out[2]), .zn(n4) );
  oa01d1 U13 ( .a1(n38), .a2(n3), .b1(n36), .b2(n4), .zn(n41) );
  xn02d0 U14 ( .a1(data_in[4]), .a2(data_in[3]), .zn(n28) );
  xn02d0 U15 ( .a1(data_in[0]), .a2(n28), .zn(n17) );
  fn03d0 U16 ( .a1(n4), .a2(n8), .b1(n8), .b2(n4), .zn(n5) );
  xn03d0 U17 ( .a1(n17), .a2(data_in[9]), .a3(n5), .zn(n7) );
  oa01d0 U18 ( .a1(n38), .a2(n7), .b1(n6), .b2(n36), .zn(n39) );
  xn02d0 U19 ( .a1(data_in[4]), .a2(n30), .zn(n14) );
  in01d0 U20 ( .i(crc_out[3]), .zn(n15) );
  xo03d1 U21 ( .a1(n15), .a2(data_in[1]), .a3(n8), .z(n9) );
  xn02d0 U22 ( .a1(n14), .a2(n9), .zn(n11) );
  in01d0 U23 ( .i(crc_out[1]), .zn(n10) );
  oa01d1 U24 ( .a1(n38), .a2(n11), .b1(n10), .b2(n36), .zn(n40) );
  in01d0 U25 ( .i(crc_out[5]), .zn(n26) );
  xo02d0 U26 ( .a1(data_in[5]), .a2(n20), .z(n34) );
  in01d0 U27 ( .i(n34), .zn(n12) );
  xo03d1 U28 ( .a1(n26), .a2(data_in[0]), .a3(n12), .z(n13) );
  xn02d0 U29 ( .a1(n14), .a2(n13), .zn(n16) );
  oa01d1 U30 ( .a1(n38), .a2(n16), .b1(n15), .b2(n36), .zn(n42) );
  in01d0 U31 ( .i(crc_out[6]), .zn(n31) );
  xn02d0 U32 ( .a1(data_in[1]), .a2(n17), .zn(n18) );
  xo02d0 U33 ( .a1(n31), .a2(n18), .z(n19) );
  xn02d0 U34 ( .a1(n20), .a2(n19), .zn(n22) );
  oa01d1 U35 ( .a1(n38), .a2(n22), .b1(n36), .b2(n21), .zn(n43) );
  fn03d0 U36 ( .a1(data_in[1]), .a2(crc_out[7]), .b1(crc_out[7]), .b2(
        data_in[1]), .zn(n25) );
  xn02d0 U37 ( .a1(data_in[6]), .a2(data_in[2]), .zn(n23) );
  xn02d0 U38 ( .a1(data_in[3]), .a2(n23), .zn(n24) );
  xn03d0 U39 ( .a1(data_in[0]), .a2(n25), .a3(n24), .zn(n27) );
  oa01d1 U40 ( .a1(n38), .a2(n27), .b1(n36), .b2(n26), .zn(n44) );
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
  wire   tx_en_r, tx_init, tx_start, N51, N52, N53, N54, N55, N56, N57, N58,
         N59, N60, tx_type_reg, respond_rd, tx_afc_reg, parity_value, crc_en,
         n163, n164, n165, n166, n167, n168, n169, n170, n171, n172, n173,
         n175, n180, n181, n182, n183, n184, n185, n186, n187, n188, n189,
         n190, n191, n192, n193, n194, n195, n196, n197, n198, n199, n200,
         n201, n202, n203, n204, n205, n206, n207, n208, n2, n3, n4, n5, n6,
         n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35,
         n36, n37, n38, n39, n40, n41, n42, n43, n47, n48, n50, n52, n53, n56,
         n57, n58, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71,
         n72, n73, n74, n75, n76, n77, n80, n83, n84, n85, n86, n87, n88, n89,
         n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102,
         n103, n104, n105, n106, n107, n108, n109, n110, n111, n112, n113,
         n114, n115, n116, n117, n118, n119, n120, n121, n122, n123, n124,
         n125, n126, n127, n128, n129, n130, n131, n132, n134, n135, n136,
         n137, n138, n139, n140, n142, n143, n144, n145, n146, n147, n148,
         n149, n150, n151, n152, n153, n154, n155, n156, n159, n160, n161,
         n162, n174, n176, n177, n178, n179, n209, n210, n211, n212, n213,
         n214, n215, n216, n217, n218, n219, n220, n221, n222, n223, n224,
         n225, n226, n227, n228, n229, n230, n231, n232, n233, n234, n235,
         n236, n237, n238, n239, n240, n241, n242, n243, n244, n245, n246,
         n247, n248, n249, n250, n251, n252, n253, n254, n255, n256, n257,
         n258, n259, n260, n261, n263, n264, n265, n266;
  wire   [9:0] cycle_cnt_for_UI;
  wire   [1:0] tx_cur_st;
  wire   [3:0] UI_cnt;
  wire   [7:0] cycle_cnt_for_quarter_UI;
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
  dfctnq tx_type_reg_reg ( .d(n207), .cp(clk), .cdn(rstn), .q(tx_type_reg) );
  dfctnq tx_cur_st_reg_0_ ( .d(n208), .cp(clk), .cdn(rstn), .q(tx_cur_st[0])
         );
  dfctnq tx_cur_st_reg_1_ ( .d(n263), .cp(clk), .cdn(rstn), .q(tx_cur_st[1])
         );
  dfctnq cycle_cnt_for_UI_reg_1_ ( .d(N52), .cp(clk), .cdn(rstn), .q(
        cycle_cnt_for_UI[1]) );
  dfctnq cycle_cnt_for_UI_reg_2_ ( .d(N53), .cp(clk), .cdn(rstn), .q(
        cycle_cnt_for_UI[2]) );
  dfctnq cycle_cnt_for_UI_reg_3_ ( .d(N54), .cp(clk), .cdn(rstn), .q(
        cycle_cnt_for_UI[3]) );
  dfctnq cycle_cnt_for_UI_reg_4_ ( .d(N55), .cp(clk), .cdn(rstn), .q(
        cycle_cnt_for_UI[4]) );
  dfctnq cycle_cnt_for_UI_reg_5_ ( .d(N56), .cp(clk), .cdn(rstn), .q(
        cycle_cnt_for_UI[5]) );
  dfctnq cycle_cnt_for_UI_reg_6_ ( .d(N57), .cp(clk), .cdn(rstn), .q(
        cycle_cnt_for_UI[6]) );
  dfctnq cycle_cnt_for_UI_reg_7_ ( .d(N58), .cp(clk), .cdn(rstn), .q(
        cycle_cnt_for_UI[7]) );
  dfctnq cycle_cnt_for_UI_reg_8_ ( .d(N59), .cp(clk), .cdn(rstn), .q(
        cycle_cnt_for_UI[8]) );
  dfctnq cycle_cnt_for_UI_reg_9_ ( .d(N60), .cp(clk), .cdn(rstn), .q(
        cycle_cnt_for_UI[9]) );
  dfctnq UI_cnt_reg_0_ ( .d(n200), .cp(clk), .cdn(rstn), .q(UI_cnt[0]) );
  dfctnq UI_cnt_reg_1_ ( .d(n198), .cp(clk), .cdn(rstn), .q(UI_cnt[1]) );
  dfctnq UI_cnt_reg_2_ ( .d(n199), .cp(clk), .cdn(rstn), .q(UI_cnt[2]) );
  dfctnq UI_cnt_reg_3_ ( .d(n206), .cp(clk), .cdn(rstn), .q(UI_cnt[3]) );
  dfctnq byte_cnt_reg_0_ ( .d(n204), .cp(clk), .cdn(rstn), .q(byte_cnt[0]) );
  dfctnq byte_cnt_reg_1_ ( .d(n205), .cp(clk), .cdn(rstn), .q(byte_cnt[1]) );
  dfctnq data_for_tx_reg_6_ ( .d(n190), .cp(clk), .cdn(rstn), .q(
        data_for_tx[6]) );
  dfctnq data_for_tx_reg_7_ ( .d(n197), .cp(clk), .cdn(rstn), .q(
        data_for_tx[7]) );
  dfctnq data_for_tx_reg_0_ ( .d(n196), .cp(clk), .cdn(rstn), .q(
        data_for_tx[0]) );
  dfctnq data_for_tx_reg_1_ ( .d(n195), .cp(clk), .cdn(rstn), .q(
        data_for_tx[1]) );
  dfctnq data_for_tx_reg_2_ ( .d(n194), .cp(clk), .cdn(rstn), .q(
        data_for_tx[2]) );
  dfctnq data_for_tx_reg_3_ ( .d(n193), .cp(clk), .cdn(rstn), .q(
        data_for_tx[3]) );
  dfctnq data_for_tx_reg_4_ ( .d(n192), .cp(clk), .cdn(rstn), .q(
        data_for_tx[4]) );
  dfctnq data_for_tx_reg_5_ ( .d(n191), .cp(clk), .cdn(rstn), .q(
        data_for_tx[5]) );
  dfctnq parity_value_reg ( .d(n203), .cp(clk), .cdn(rstn), .q(parity_value)
         );
  dfctnq cycle_cnt_for_quarter_UI_reg_7_ ( .d(n182), .cp(clk), .cdn(rstn), .q(
        cycle_cnt_for_quarter_UI[7]) );
  dfctnq cycle_cnt_for_UI_reg_0_ ( .d(N51), .cp(clk), .cdn(rstn), .q(
        cycle_cnt_for_UI[0]) );
  dfctnq cycle_cnt_for_quarter_UI_reg_1_ ( .d(n201), .cp(clk), .cdn(rstn), .q(
        cycle_cnt_for_quarter_UI[1]) );
  dfctnq cycle_cnt_for_quarter_UI_reg_2_ ( .d(n187), .cp(clk), .cdn(rstn), .q(
        cycle_cnt_for_quarter_UI[2]) );
  dfctnq cycle_cnt_for_quarter_UI_reg_3_ ( .d(n186), .cp(clk), .cdn(rstn), .q(
        cycle_cnt_for_quarter_UI[3]) );
  dfctnq cycle_cnt_for_quarter_UI_reg_4_ ( .d(n185), .cp(clk), .cdn(rstn), .q(
        cycle_cnt_for_quarter_UI[4]) );
  dfctnq cycle_cnt_for_quarter_UI_reg_5_ ( .d(n184), .cp(clk), .cdn(rstn), .q(
        cycle_cnt_for_quarter_UI[5]) );
  dfctnq cycle_cnt_for_quarter_UI_reg_6_ ( .d(n183), .cp(clk), .cdn(rstn), .q(
        cycle_cnt_for_quarter_UI[6]) );
  dfctnq cycle_cnt_for_quarter_UI_reg_0_ ( .d(n188), .cp(clk), .cdn(rstn), .q(
        cycle_cnt_for_quarter_UI[0]) );
  dfctnq data_reg ( .d(n181), .cp(clk), .cdn(rstn), .q(data) );
  dfntnq tx_afc_reg_reg ( .d(n180), .cp(clk), .q(tx_afc_reg) );
  dfctnq tx_data_reg_reg_11_ ( .d(n175), .cp(clk), .cdn(rstn), .q(
        tx_data_reg[11]) );
  dfctnq tx_data_reg_reg_9_ ( .d(n173), .cp(clk), .cdn(rstn), .q(
        tx_data_reg[9]) );
  dfctnq tx_data_reg_reg_8_ ( .d(n172), .cp(clk), .cdn(rstn), .q(
        tx_data_reg[8]) );
  dfctnq tx_data_reg_reg_7_ ( .d(n171), .cp(clk), .cdn(rstn), .q(
        tx_data_reg[7]) );
  dfctnq tx_data_reg_reg_6_ ( .d(n170), .cp(clk), .cdn(rstn), .q(
        tx_data_reg[6]) );
  dfctnq tx_data_reg_reg_5_ ( .d(n169), .cp(clk), .cdn(rstn), .q(
        tx_data_reg[5]) );
  dfctnq tx_data_reg_reg_4_ ( .d(n168), .cp(clk), .cdn(rstn), .q(
        tx_data_reg[4]) );
  dfctnq tx_data_reg_reg_3_ ( .d(n167), .cp(clk), .cdn(rstn), .q(
        tx_data_reg[3]) );
  dfctnq tx_data_reg_reg_2_ ( .d(n166), .cp(clk), .cdn(rstn), .q(
        tx_data_reg[2]) );
  dfctnq tx_data_reg_reg_1_ ( .d(n165), .cp(clk), .cdn(rstn), .q(
        tx_data_reg[1]) );
  dfctnq tx_data_reg_reg_0_ ( .d(n164), .cp(clk), .cdn(rstn), .q(
        tx_data_reg[0]) );
  dfctnq respond_rd_reg ( .d(n163), .cp(clk), .cdn(rstn), .q(respond_rd) );
  dfptnq num_of_quarter_UI_reg_0_ ( .d(n189), .cp(clk), .sdn(rstn), .q(
        num_of_quarter_UI[0]) );
  dfptnq num_of_quarter_UI_reg_1_ ( .d(n202), .cp(clk), .sdn(rstn), .q(
        num_of_quarter_UI[1]) );
  nd02d0 U3 ( .a1(n260), .a2(rstn), .zn(n261) );
  nr03d2 U4 ( .a1(tx_start), .a2(n214), .a3(n213), .zn(n239) );
  ao03d2 U5 ( .a1(respond_rd), .a2(n210), .b1(n245), .b2(n211), .c(n212), .zn(
        n238) );
  oa04d1 U7 ( .a1(n214), .a2(n178), .b(n227), .zn(n244) );
  nd04d0 U8 ( .a1(n28), .a2(n27), .a3(n26), .a4(n25), .zn(n29) );
  in01d0 U9 ( .i(n151), .zn(n124) );
  in01d0 U10 ( .i(n249), .zn(n62) );
  in01d0 U11 ( .i(n120), .zn(n123) );
  nr02d0 U12 ( .a1(n255), .a2(n159), .zn(n130) );
  in01d0 U13 ( .i(n66), .zn(n168) );
  nd02d0 U14 ( .a1(UI_cnt[2]), .a2(UI_cnt[3]), .zn(n31) );
  in01d0 U15 ( .i(cycle_cnt_for_UI[9]), .zn(n28) );
  xo02d0 U17 ( .a1(n23), .a2(tune_cycle[0]), .z(n6) );
  an02d0 U18 ( .a1(n6), .a2(n23), .z(n9) );
  xo02d0 U19 ( .a1(n23), .a2(tune_cycle[1]), .z(n8) );
  an02d0 U20 ( .a1(n9), .a2(n8), .z(n5) );
  xo02d0 U21 ( .a1(n23), .a2(tune_cycle[2]), .z(n4) );
  an02d0 U22 ( .a1(n5), .a2(n4), .z(n3) );
  xo02d0 U23 ( .a1(n23), .a2(tune_cycle[3]), .z(n2) );
  an02d0 U24 ( .a1(n3), .a2(n2), .z(n16) );
  xo02d0 U25 ( .a1(n23), .a2(tune_cycle[4]), .z(n15) );
  xo02d0 U28 ( .a1(n3), .a2(n2), .z(n35) );
  xn02d0 U29 ( .a1(cycle_cnt_for_UI[3]), .a2(n35), .zn(n14) );
  xo02d0 U30 ( .a1(n5), .a2(n4), .z(n36) );
  xn02d0 U31 ( .a1(cycle_cnt_for_UI[2]), .a2(n36), .zn(n13) );
  xo02d0 U32 ( .a1(n6), .a2(n23), .z(n7) );
  xn02d0 U33 ( .a1(cycle_cnt_for_UI[0]), .a2(n7), .zn(n12) );
  xo02d0 U34 ( .a1(n9), .a2(n8), .z(n10) );
  xn02d0 U35 ( .a1(cycle_cnt_for_UI[1]), .a2(n10), .zn(n11) );
  nd04d0 U36 ( .a1(n14), .a2(n13), .a3(n12), .a4(n11), .zn(n18) );
  xo02d0 U37 ( .a1(n23), .a2(tune_cycle[5]), .z(n21) );
  an02d0 U38 ( .a1(n16), .a2(n15), .z(n20) );
  xn02d0 U39 ( .a1(n21), .a2(n20), .zn(n33) );
  xo02d0 U40 ( .a1(n33), .a2(cycle_cnt_for_UI[5]), .z(n17) );
  nr03d0 U41 ( .a1(n19), .a2(n18), .a3(n17), .zn(n27) );
  or02d0 U42 ( .a1(n21), .a2(n20), .z(n24) );
  xn02d0 U45 ( .a1(cycle_cnt_for_UI[7]), .a2(n32), .zn(n26) );
  xo02d0 U46 ( .a1(n24), .a2(n23), .z(n41) );
  xn02d0 U47 ( .a1(cycle_cnt_for_UI[6]), .a2(n41), .zn(n25) );
  nr02d1 U48 ( .a1(n29), .a2(cycle_cnt_for_UI[8]), .zn(n255) );
  nd02d0 U49 ( .a1(UI_cnt[0]), .a2(UI_cnt[1]), .zn(n131) );
  in01d0 U50 ( .i(n131), .zn(n30) );
  nd02d0 U51 ( .a1(n255), .a2(n30), .zn(n97) );
  nr02d2 U52 ( .a1(n31), .a2(n97), .zn(tx_done) );
  in01d0 U53 ( .i(tx_cur_st[1]), .zn(n95) );
  in01d0 U54 ( .i(tx_type), .zn(n56) );
  in01d0 U56 ( .i(cycle_cnt_for_quarter_UI[6]), .zn(n48) );
  xn02d0 U58 ( .a1(cycle_cnt_for_quarter_UI[3]), .a2(n33), .zn(n40) );
  xn02d0 U59 ( .a1(cycle_cnt_for_quarter_UI[2]), .a2(n34), .zn(n39) );
  xn02d0 U60 ( .a1(cycle_cnt_for_quarter_UI[1]), .a2(n35), .zn(n38) );
  xn02d0 U61 ( .a1(cycle_cnt_for_quarter_UI[0]), .a2(n36), .zn(n37) );
  nd04d0 U62 ( .a1(n40), .a2(n39), .a3(n38), .a4(n37), .zn(n43) );
  in01d0 U63 ( .i(cycle_cnt_for_quarter_UI[4]), .zn(n90) );
  xn02d0 U64 ( .a1(n90), .a2(n41), .zn(n42) );
  ao07d0 U70 ( .a1(tx_start), .a2(n95), .a3(n56), .b1(n156), .b2(tx_cur_st[1]), 
        .zn(n105) );
  in01d0 U71 ( .i(tx_cur_st[0]), .zn(n94) );
  nr02d0 U73 ( .a1(UI_cnt[1]), .a2(UI_cnt[0]), .zn(n50) );
  in01d0 U74 ( .i(UI_cnt[2]), .zn(n132) );
  nd02d0 U77 ( .a1(n255), .a2(n52), .zn(n99) );
  nd02d0 U78 ( .a1(n99), .a2(tx_cur_st[1]), .zn(n53) );
  ao04d0 U82 ( .a1(n105), .a2(n94), .b(n250), .zn(n208) );
  in01d0 U83 ( .i(tx_start), .zn(n227) );
  nr02d0 U84 ( .a1(n56), .a2(n227), .zn(crc_en) );
  ao04d0 U85 ( .a1(crc_en), .a2(n94), .b(tx_cur_st[1]), .zn(n61) );
  in01d0 U86 ( .i(byte_cnt[1]), .zn(n209) );
  nr02d0 U87 ( .a1(respond_rd), .a2(n209), .zn(n58) );
  ao01d0 U88 ( .a1(byte_cnt[0]), .a2(n58), .b1(tx_afc_reg), .b2(byte_cnt[1]), 
        .zn(n57) );
  oa03d0 U89 ( .a1(byte_cnt[0]), .a2(n58), .b1(tx_afc_reg), .b2(byte_cnt[1]), 
        .c(n57), .zn(n160) );
  nr02d0 U92 ( .a1(n61), .a2(n60), .zn(n263) );
  xn02d0 U93 ( .a1(cycle_cnt_for_UI[0]), .a2(cycle_cnt_for_UI[1]), .zn(n63) );
  in01d0 U94 ( .i(n248), .zn(n159) );
  nr02d0 U95 ( .a1(n208), .a2(n263), .zn(n249) );
  nd02d1 U96 ( .a1(n130), .a2(n62), .zn(n116) );
  nr02d0 U97 ( .a1(n63), .a2(n116), .zn(N52) );
  fn05d0 U98 ( .a1(tx_en), .b1(tx_en_r), .zn(tx_init) );
  nd02d2 U99 ( .a1(tx_type), .a2(tx_init), .zn(n247) );
  nr02d1 U100 ( .a1(tx_afc), .a2(n247), .zn(n72) );
  ao01d0 U101 ( .a1(n247), .a2(tx_data_reg[3]), .b1(n72), .b2(tx_data[3]), 
        .zn(n64) );
  in01d0 U102 ( .i(n64), .zn(n167) );
  ao01d0 U103 ( .a1(n247), .a2(tx_data_reg[8]), .b1(n72), .b2(tx_data[8]), 
        .zn(n65) );
  in01d0 U104 ( .i(n65), .zn(n172) );
  ao01d0 U105 ( .a1(n247), .a2(tx_data_reg[4]), .b1(n72), .b2(tx_data[4]), 
        .zn(n66) );
  ao01d0 U106 ( .a1(n247), .a2(tx_data_reg[5]), .b1(n72), .b2(tx_data[5]), 
        .zn(n67) );
  in01d0 U107 ( .i(n67), .zn(n169) );
  ao01d0 U108 ( .a1(n247), .a2(tx_data_reg[0]), .b1(n72), .b2(tx_data[0]), 
        .zn(n68) );
  in01d0 U109 ( .i(n68), .zn(n164) );
  ao01d0 U110 ( .a1(n247), .a2(tx_data_reg[7]), .b1(n72), .b2(tx_data[7]), 
        .zn(n69) );
  in01d0 U111 ( .i(n69), .zn(n171) );
  ao01d0 U112 ( .a1(n247), .a2(tx_data_reg[11]), .b1(n72), .b2(tx_data[11]), 
        .zn(n70) );
  in01d0 U113 ( .i(n70), .zn(n175) );
  ao01d0 U114 ( .a1(n247), .a2(tx_data_reg[9]), .b1(n72), .b2(tx_data[9]), 
        .zn(n71) );
  in01d0 U115 ( .i(n71), .zn(n173) );
  in01d0 U116 ( .i(n247), .zn(n260) );
  in01d0 U117 ( .i(n72), .zn(n75) );
  oa01d0 U118 ( .a1(tx_data_reg[1]), .a2(n260), .b1(tx_data[1]), .b2(n75), 
        .zn(n73) );
  in01d0 U119 ( .i(n73), .zn(n165) );
  oa01d0 U120 ( .a1(tx_data_reg[2]), .a2(n260), .b1(tx_data[2]), .b2(n75), 
        .zn(n74) );
  in01d0 U121 ( .i(n74), .zn(n166) );
  oa01d0 U122 ( .a1(tx_data_reg[6]), .a2(n260), .b1(tx_data[6]), .b2(n75), 
        .zn(n76) );
  in01d0 U123 ( .i(n76), .zn(n170) );
  ao04d0 U125 ( .a1(n255), .a2(UI_cnt[0]), .b(UI_cnt[1]), .zn(n77) );
  nd02d0 U128 ( .a1(cycle_cnt_for_UI[4]), .a2(cycle_cnt_for_UI[3]), .zn(n80)
         );
  nr02d0 U132 ( .a1(n80), .a2(n113), .zn(n115) );
  xn02d0 U135 ( .a1(cycle_cnt_for_UI[7]), .a2(n110), .zn(n83) );
  nr02d0 U136 ( .a1(n83), .a2(n116), .zn(N58) );
  xo02d0 U137 ( .a1(n113), .a2(cycle_cnt_for_UI[3]), .z(n84) );
  nr02d0 U138 ( .a1(n84), .a2(n116), .zn(N54) );
  nd03d0 U139 ( .a1(n110), .a2(cycle_cnt_for_UI[8]), .a3(cycle_cnt_for_UI[7]), 
        .zn(n109) );
  xo02d0 U140 ( .a1(n109), .a2(cycle_cnt_for_UI[9]), .z(n85) );
  nr02d0 U141 ( .a1(n85), .a2(n116), .zn(N60) );
  xn02d0 U142 ( .a1(cycle_cnt_for_UI[5]), .a2(n115), .zn(n86) );
  nr02d0 U143 ( .a1(n86), .a2(n116), .zn(N56) );
  in01d0 U144 ( .i(n208), .zn(n88) );
  nr02d0 U145 ( .a1(n159), .a2(tx_done), .zn(n91) );
  an02d0 U146 ( .a1(n91), .a2(n263), .z(n87) );
  nd02d1 U147 ( .a1(n88), .a2(n87), .zn(n155) );
  in01d0 U148 ( .i(n155), .zn(n147) );
  in01d0 U149 ( .i(cycle_cnt_for_quarter_UI[5]), .zn(n92) );
  in01d0 U150 ( .i(cycle_cnt_for_quarter_UI[3]), .zn(n89) );
  nd03d0 U151 ( .a1(cycle_cnt_for_quarter_UI[1]), .a2(
        cycle_cnt_for_quarter_UI[2]), .a3(cycle_cnt_for_quarter_UI[0]), .zn(
        n151) );
  nr03d0 U152 ( .a1(n90), .a2(n89), .a3(n151), .zn(n120) );
  nd02d0 U153 ( .a1(n155), .a2(n91), .zn(n140) );
  oa04d0 U154 ( .a1(n120), .a2(n155), .b(n140), .zn(n121) );
  ao04d0 U155 ( .a1(n147), .a2(n92), .b(n121), .zn(n126) );
  nd03d0 U156 ( .a1(n147), .a2(cycle_cnt_for_quarter_UI[5]), .a3(n120), .zn(
        n129) );
  mi21d0 U157 ( .i0(n126), .i1(n129), .s(n48), .zn(n183) );
  nr03d0 U158 ( .a1(n95), .a2(n94), .a3(n93), .zn(n134) );
  in01d0 U159 ( .i(n255), .zn(n214) );
  nd02d0 U160 ( .a1(UI_cnt[0]), .a2(n214), .zn(n96) );
  oa08d0 U161 ( .a1(UI_cnt[0]), .a2(n134), .a3(n214), .b(n96), .zn(n200) );
  xn02d0 U162 ( .a1(UI_cnt[2]), .a2(n97), .zn(n199) );
  in01d0 U163 ( .i(byte_cnt[0]), .zn(n179) );
  in01d0 U164 ( .i(n99), .zn(n213) );
  nd02d0 U165 ( .a1(n213), .a2(byte_cnt[0]), .zn(n210) );
  in01d0 U166 ( .i(n210), .zn(n98) );
  ao05d0 U167 ( .a1(n99), .a2(n179), .b(n98), .c(tx_init), .zn(n204) );
  xn02d0 U168 ( .a1(data_for_tx[3]), .a2(data_for_tx[2]), .zn(n100) );
  xn03d0 U169 ( .a1(data_for_tx[0]), .a2(data_for_tx[1]), .a3(n100), .zn(n103)
         );
  xn02d0 U170 ( .a1(data_for_tx[6]), .a2(data_for_tx[7]), .zn(n101) );
  xn03d0 U171 ( .a1(data_for_tx[4]), .a2(data_for_tx[5]), .a3(n101), .zn(n102)
         );
  xo02d0 U172 ( .a1(n103), .a2(n102), .z(n107) );
  in01d0 U173 ( .i(n263), .zn(n104) );
  nr03d0 U174 ( .a1(tx_cur_st[0]), .a2(n105), .a3(n104), .zn(n106) );
  in01d0 U175 ( .i(parity_value), .zn(n174) );
  in01d0 U176 ( .i(n106), .zn(n137) );
  ao03d0 U177 ( .a1(n107), .a2(n106), .b1(n174), .b2(n137), .c(tx_init), .zn(
        n203) );
  nr02d0 U178 ( .a1(n209), .a2(n210), .zn(n178) );
  ao05d0 U179 ( .a1(n209), .a2(n210), .b(n178), .c(tx_init), .zn(n205) );
  ao04d0 U180 ( .a1(n115), .a2(cycle_cnt_for_UI[5]), .b(cycle_cnt_for_UI[6]), 
        .zn(n108) );
  nr03d0 U181 ( .a1(n110), .a2(n108), .a3(n116), .zn(N57) );
  in01d0 U182 ( .i(n109), .zn(n112) );
  ao04d0 U183 ( .a1(n110), .a2(cycle_cnt_for_UI[7]), .b(cycle_cnt_for_UI[8]), 
        .zn(n111) );
  nr03d0 U184 ( .a1(n112), .a2(n111), .a3(n116), .zn(N59) );
  in01d0 U185 ( .i(n113), .zn(n117) );
  ao04d0 U186 ( .a1(n117), .a2(cycle_cnt_for_UI[3]), .b(cycle_cnt_for_UI[4]), 
        .zn(n114) );
  nr03d0 U187 ( .a1(n115), .a2(n114), .a3(n116), .zn(N55) );
  in01d0 U188 ( .i(cycle_cnt_for_UI[2]), .zn(n119) );
  ao05d0 U189 ( .a1(n119), .a2(n118), .b(n117), .c(n116), .zn(N53) );
  nd02d0 U190 ( .a1(n121), .a2(cycle_cnt_for_quarter_UI[5]), .zn(n122) );
  oa08d0 U191 ( .a1(cycle_cnt_for_quarter_UI[5]), .a2(n155), .a3(n123), .b(
        n122), .zn(n184) );
  oa04d0 U192 ( .a1(n124), .a2(n155), .b(n140), .zn(n153) );
  nd02d0 U193 ( .a1(n153), .a2(cycle_cnt_for_quarter_UI[3]), .zn(n125) );
  oa08d0 U194 ( .a1(cycle_cnt_for_quarter_UI[3]), .a2(n155), .a3(n151), .b(
        n125), .zn(n186) );
  oa04d0 U195 ( .a1(cycle_cnt_for_quarter_UI[6]), .a2(n155), .b(n126), .zn(
        n127) );
  nd02d0 U196 ( .a1(n127), .a2(cycle_cnt_for_quarter_UI[7]), .zn(n128) );
  oa08d0 U197 ( .a1(cycle_cnt_for_quarter_UI[7]), .a2(n48), .a3(n129), .b(n128), .zn(n182) );
  ao04d0 U203 ( .a1(n130), .a2(cycle_cnt_for_UI[0]), .b(n249), .zn(N51) );
  oa04d0 U207 ( .a1(n135), .a2(n134), .b(n255), .zn(n136) );
  fn04d0 U208 ( .a1(n252), .a2(n214), .b1(UI_cnt[3]), .b2(n136), .zn(n206) );
  in01d0 U209 ( .i(cycle_cnt_for_quarter_UI[0]), .zn(n145) );
  in01d0 U210 ( .i(tx_done), .zn(n138) );
  ao08d0 U212 ( .a1(n159), .a2(n138), .a3(n137), .b(n142), .zn(n139) );
  oa04d0 U213 ( .a1(n145), .a2(n140), .b(n139), .zn(n188) );
  in01d0 U214 ( .i(cycle_cnt_for_quarter_UI[1]), .zn(n144) );
  nd03d0 U217 ( .a1(n147), .a2(cycle_cnt_for_quarter_UI[0]), .a3(n144), .zn(
        n143) );
  oa04d0 U218 ( .a1(n144), .a2(n149), .b(n143), .zn(n201) );
  in01d0 U219 ( .i(cycle_cnt_for_quarter_UI[2]), .zn(n150) );
  oa04d0 U220 ( .a1(cycle_cnt_for_quarter_UI[2]), .a2(n145), .b(
        cycle_cnt_for_quarter_UI[1]), .zn(n146) );
  oa05d0 U221 ( .a1(cycle_cnt_for_quarter_UI[1]), .a2(
        cycle_cnt_for_quarter_UI[2]), .b(n147), .c(n146), .zn(n148) );
  oa04d0 U222 ( .a1(n150), .a2(n149), .b(n148), .zn(n187) );
  oa04d0 U223 ( .a1(cycle_cnt_for_quarter_UI[4]), .a2(n151), .b(
        cycle_cnt_for_quarter_UI[3]), .zn(n152) );
  oa04d0 U224 ( .a1(cycle_cnt_for_quarter_UI[3]), .a2(
        cycle_cnt_for_quarter_UI[4]), .b(n152), .zn(n154) );
  fn04d0 U225 ( .a1(n155), .a2(n154), .b1(cycle_cnt_for_quarter_UI[4]), .b2(
        n153), .zn(n185) );
  in01d0 U229 ( .i(data_for_tx[7]), .zn(n226) );
  nd02d0 U230 ( .a1(n160), .a2(n226), .zn(n162) );
  oa04d0 U231 ( .a1(n174), .a2(n162), .b(num_of_quarter_UI[1]), .zn(n161) );
  ao04d0 U232 ( .a1(n174), .a2(n162), .b(n161), .zn(n176) );
  oa04d0 U233 ( .a1(n176), .a2(n248), .b(num_of_quarter_UI[0]), .zn(n177) );
  oa04d0 U234 ( .a1(num_of_quarter_UI[0]), .a2(n248), .b(n177), .zn(n189) );
  in01d0 U235 ( .i(data_for_tx[4]), .zn(n217) );
  in01d0 U236 ( .i(respond_rd), .zn(n245) );
  nd02d0 U237 ( .a1(n213), .a2(n179), .zn(n211) );
  nd02d0 U238 ( .a1(n227), .a2(n209), .zn(n212) );
  oa07d2 U239 ( .a1(n245), .a2(n212), .a3(n211), .b1(respond_rd), .b2(n227), 
        .zn(n237) );
  ao01d0 U240 ( .a1(crc_data[4]), .a2(n238), .b1(tx_data_reg[4]), .b2(n237), 
        .zn(n216) );
  nd02d0 U241 ( .a1(n239), .a2(data_for_tx[3]), .zn(n215) );
  oa05d0 U242 ( .a1(n217), .a2(n244), .b(n216), .c(n215), .zn(n192) );
  in01d0 U243 ( .i(data_for_tx[5]), .zn(n220) );
  ao01d0 U244 ( .a1(crc_data[5]), .a2(n238), .b1(tx_data_reg[5]), .b2(n237), 
        .zn(n219) );
  nd02d0 U245 ( .a1(n239), .a2(data_for_tx[4]), .zn(n218) );
  oa05d0 U246 ( .a1(n244), .a2(n220), .b(n219), .c(n218), .zn(n191) );
  in01d0 U247 ( .i(data_for_tx[6]), .zn(n223) );
  ao01d0 U248 ( .a1(crc_data[6]), .a2(n238), .b1(tx_data_reg[6]), .b2(n237), 
        .zn(n222) );
  nd02d0 U249 ( .a1(n239), .a2(data_for_tx[5]), .zn(n221) );
  oa05d0 U250 ( .a1(n223), .a2(n244), .b(n222), .c(n221), .zn(n190) );
  ao01d0 U251 ( .a1(tx_data_reg[7]), .a2(n237), .b1(n238), .b2(crc_data[7]), 
        .zn(n225) );
  nd02d0 U252 ( .a1(n239), .a2(data_for_tx[6]), .zn(n224) );
  oa05d0 U253 ( .a1(n226), .a2(n244), .b(n225), .c(n224), .zn(n197) );
  in01d0 U254 ( .i(data_for_tx[0]), .zn(n230) );
  ao01d0 U255 ( .a1(crc_data[0]), .a2(n238), .b1(tx_data_reg[0]), .b2(n237), 
        .zn(n229) );
  nr02d0 U256 ( .a1(n227), .a2(n245), .zn(n240) );
  ao01d0 U257 ( .a1(n240), .a2(tx_data_reg[8]), .b1(n239), .b2(data_for_tx[7]), 
        .zn(n228) );
  oa05d0 U258 ( .a1(n244), .a2(n230), .b(n229), .c(n228), .zn(n196) );
  in01d0 U259 ( .i(data_for_tx[1]), .zn(n233) );
  ao01d0 U260 ( .a1(crc_data[1]), .a2(n238), .b1(tx_data_reg[1]), .b2(n237), 
        .zn(n232) );
  ao01d0 U261 ( .a1(n240), .a2(tx_data_reg[9]), .b1(n239), .b2(data_for_tx[0]), 
        .zn(n231) );
  oa05d0 U262 ( .a1(n244), .a2(n233), .b(n232), .c(n231), .zn(n195) );
  in01d0 U263 ( .i(data_for_tx[2]), .zn(n236) );
  ao01d0 U264 ( .a1(crc_data[2]), .a2(n238), .b1(tx_data_reg[2]), .b2(n237), 
        .zn(n235) );
  nd02d0 U265 ( .a1(n239), .a2(data_for_tx[1]), .zn(n234) );
  oa05d0 U266 ( .a1(n244), .a2(n236), .b(n235), .c(n234), .zn(n194) );
  in01d0 U267 ( .i(data_for_tx[3]), .zn(n243) );
  ao01d0 U268 ( .a1(crc_data[3]), .a2(n238), .b1(tx_data_reg[3]), .b2(n237), 
        .zn(n242) );
  ao01d0 U269 ( .a1(n240), .a2(tx_data_reg[11]), .b1(n239), .b2(data_for_tx[2]), .zn(n241) );
  oa05d0 U270 ( .a1(n244), .a2(n243), .b(n242), .c(n241), .zn(n193) );
  nr03d0 U271 ( .a1(tx_data[11]), .a2(tx_data[9]), .a3(tx_data[8]), .zn(n246)
         );
  ao01d0 U272 ( .a1(n260), .a2(n246), .b1(n245), .b2(n247), .zn(n163) );
  fn01d0 U274 ( .a1(tx_type_reg), .b1(n247), .zn(n207) );
  oa08d0 U275 ( .a1(tx_cur_st[1]), .a2(tx_cur_st[0]), .a3(n249), .b(n248), 
        .zn(n251) );
  or02d0 U276 ( .a1(n251), .a2(n250), .z(n259) );
  an02d0 U277 ( .a1(n263), .a2(n208), .z(n254) );
  mx21d0 U278 ( .i0(parity_value), .i1(data_for_tx[6]), .s(n252), .z(n253) );
  nd03d0 U279 ( .a1(n254), .a2(n255), .a3(n253), .zn(n258) );
  nd02d0 U280 ( .a1(n255), .a2(n254), .zn(n256) );
  ao04d0 U281 ( .a1(n256), .a2(data), .b(n259), .zn(n257) );
  ao01d0 U282 ( .a1(data), .a2(n259), .b1(n258), .b2(n257), .zn(n181) );
  mx21d0 U283 ( .i0(tx_afc), .i1(tx_afc_reg), .s(n261), .z(n180) );
  fn05d0 U6 ( .a1(n97), .b1(n77), .zn(n198) );
  ao14d0 U16 ( .a1(n248), .a2(num_of_quarter_UI[1]), .b(n156), .z(n202) );
  fn05d0 U26 ( .a1(n140), .b1(n142), .zn(n149) );
  nr02d0 U27 ( .a1(cycle_cnt_for_quarter_UI[0]), .a2(n155), .zn(n142) );
  fn01d0 U43 ( .a1(UI_cnt[3]), .b1(n135), .zn(n252) );
  nr02d0 U44 ( .a1(n132), .a2(n131), .zn(n135) );
  an03d0 U55 ( .a1(n115), .a2(cycle_cnt_for_UI[6]), .a3(cycle_cnt_for_UI[5]), 
        .z(n110) );
  fn01d0 U57 ( .a1(n118), .b1(cycle_cnt_for_UI[2]), .zn(n113) );
  nd02d0 U65 ( .a1(cycle_cnt_for_UI[0]), .a2(cycle_cnt_for_UI[1]), .zn(n118)
         );
  nr04d0 U66 ( .a1(tx_cur_st[0]), .a2(n160), .a3(n95), .a4(n264), .zn(n60) );
  ckinv0 U67 ( .i(n156), .zn(n264) );
  nr03d0 U68 ( .a1(n248), .a2(num_of_quarter_UI[1]), .a3(num_of_quarter_UI[0]), 
        .zn(n156) );
  ckinv0 U69 ( .i(n265), .zn(n250) );
  oa05d0 U72 ( .a1(tx_cur_st[1]), .a2(tx_done), .b(n53), .c(tx_cur_st[0]), 
        .zn(n265) );
  nd02d0 U75 ( .a1(n47), .a2(n48), .zn(n248) );
  nr04d0 U76 ( .a1(cycle_cnt_for_quarter_UI[7]), .a2(n42), .a3(n43), .a4(n266), 
        .zn(n47) );
  fn05d0 U79 ( .a1(tx_type_reg), .b1(n93), .zn(n52) );
  nd03d0 U80 ( .a1(n50), .a2(UI_cnt[3]), .a3(n132), .zn(n93) );
  xo02d0 U81 ( .a1(cycle_cnt_for_quarter_UI[5]), .a2(n32), .z(n266) );
  xo02d0 U90 ( .a1(cycle_cnt_for_UI[4]), .a2(n34), .z(n19) );
  xo02d0 U91 ( .a1(n16), .a2(n15), .z(n34) );
  fn01d0 U124 ( .a1(n24), .b1(n23), .zn(n32) );
  ckinv0 U126 ( .i(tune_up), .zn(n23) );
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
         tx_ongoing_d0, N118, tx_ongoing_d1, tx_ongoing_d2, tune_up, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n82, n87, n88, n89, n90, n91,
         n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104,
         n105, n106, n107, n108, n109, n110, n1, n2, n3, n4, n5, n6, n7, n8,
         n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36,
         n37, n38, n39, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51,
         n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65,
         n66, n67, n68, n69, n70, n81, n83, n84, n85, n86, n111,
         SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2;
  wire   [15:0] cycle_cnt_after_ping;
  wire   [15:0] tx_data;
  wire   [5:0] tune_cycle;

  fcp_rx_ctrl_UI_CYCLE160 U_RX_CTRL ( .clk(clk), .rstn(rstn), .data(data), 
        .rx_own_bus(n110), .tune_up(tune_up), .tune_cycle({
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
  dfctnq cycle_cnt_after_ping_reg_15_ ( .d(n94), .cp(clk), .cdn(rstn), .q(
        cycle_cnt_after_ping[15]) );
  dfctnq cycle_cnt_after_ping_reg_1_ ( .d(n109), .cp(clk), .cdn(rstn), .q(
        cycle_cnt_after_ping[1]) );
  dfctnq cycle_cnt_after_ping_reg_0_ ( .d(n108), .cp(clk), .cdn(rstn), .q(
        cycle_cnt_after_ping[0]) );
  dfctnq cycle_cnt_after_ping_reg_2_ ( .d(n107), .cp(clk), .cdn(rstn), .q(
        cycle_cnt_after_ping[2]) );
  dfctnq cycle_cnt_after_ping_reg_3_ ( .d(n106), .cp(clk), .cdn(rstn), .q(
        cycle_cnt_after_ping[3]) );
  dfctnq cycle_cnt_after_ping_reg_4_ ( .d(n105), .cp(clk), .cdn(rstn), .q(
        cycle_cnt_after_ping[4]) );
  dfctnq cycle_cnt_after_ping_reg_5_ ( .d(n104), .cp(clk), .cdn(rstn), .q(
        cycle_cnt_after_ping[5]) );
  dfctnq cycle_cnt_after_ping_reg_6_ ( .d(n103), .cp(clk), .cdn(rstn), .q(
        cycle_cnt_after_ping[6]) );
  dfctnq cycle_cnt_after_ping_reg_7_ ( .d(n102), .cp(clk), .cdn(rstn), .q(
        cycle_cnt_after_ping[7]) );
  dfctnq cycle_cnt_after_ping_reg_8_ ( .d(n101), .cp(clk), .cdn(rstn), .q(
        cycle_cnt_after_ping[8]) );
  dfctnq cycle_cnt_after_ping_reg_9_ ( .d(n100), .cp(clk), .cdn(rstn), .q(
        cycle_cnt_after_ping[9]) );
  dfctnq cycle_cnt_after_ping_reg_10_ ( .d(n99), .cp(clk), .cdn(rstn), .q(
        cycle_cnt_after_ping[10]) );
  dfctnq cycle_cnt_after_ping_reg_11_ ( .d(n98), .cp(clk), .cdn(rstn), .q(
        cycle_cnt_after_ping[11]) );
  dfctnq cycle_cnt_after_ping_reg_12_ ( .d(n97), .cp(clk), .cdn(rstn), .q(
        cycle_cnt_after_ping[12]) );
  dfctnq cycle_cnt_after_ping_reg_13_ ( .d(n96), .cp(clk), .cdn(rstn), .q(
        cycle_cnt_after_ping[13]) );
  dfctnq cycle_cnt_after_ping_reg_14_ ( .d(n95), .cp(clk), .cdn(rstn), .q(
        cycle_cnt_after_ping[14]) );
  dfctnq after_mst_ping_reg ( .d(n93), .cp(clk), .cdn(rstn), .q(after_mst_ping) );
  dfctnq mst_request_after_slv_ping_reg ( .d(n92), .cp(clk), .cdn(rstn), .q(
        mst_request_after_slv_ping) );
  dfctnq tx_type_reg ( .d(n91), .cp(clk), .cdn(rstn), .q(tx_type) );
  dfctnq tx_afc_reg ( .d(n90), .cp(clk), .cdn(rstn), .q(tx_afc) );
  dfctnq tx_ongoing_window_reg ( .d(n88), .cp(clk), .cdn(rstn), .q(
        tx_ongoing_window) );
  dfctnq tx_en_reg ( .d(N20), .cp(clk), .cdn(rstn), .q(tx_en) );
  dfctnq tx_en_flag_reg ( .d(n87), .cp(clk), .cdn(rstn), .q(tx_en_flag) );
  dfctnq slv_request_after_ping_reg ( .d(n89), .cp(clk), .cdn(rstn), .q(
        slv_request_after_ping) );
  dfctnq tx_ongoing_d0_reg ( .d(N118), .cp(clk), .cdn(rstn), .q(tx_ongoing_d0)
         );
  dfctnq tx_data_reg_11_ ( .d(n82), .cp(clk), .cdn(rstn), .q(tx_data[11]) );
  dfctnq tx_data_reg_9_ ( .d(n80), .cp(clk), .cdn(rstn), .q(tx_data[9]) );
  dfctnq tx_data_reg_8_ ( .d(n79), .cp(clk), .cdn(rstn), .q(tx_data[8]) );
  dfctnq tx_data_reg_7_ ( .d(n78), .cp(clk), .cdn(rstn), .q(tx_data[7]) );
  dfctnq tx_data_reg_6_ ( .d(n77), .cp(clk), .cdn(rstn), .q(tx_data[6]) );
  dfctnq tx_data_reg_5_ ( .d(n76), .cp(clk), .cdn(rstn), .q(tx_data[5]) );
  dfctnq tx_data_reg_4_ ( .d(n75), .cp(clk), .cdn(rstn), .q(tx_data[4]) );
  dfctnq tx_data_reg_3_ ( .d(n74), .cp(clk), .cdn(rstn), .q(tx_data[3]) );
  dfctnq tx_data_reg_2_ ( .d(n73), .cp(clk), .cdn(rstn), .q(tx_data[2]) );
  dfctnq tx_data_reg_1_ ( .d(n72), .cp(clk), .cdn(rstn), .q(tx_data[1]) );
  dfctnq tx_data_reg_0_ ( .d(n71), .cp(clk), .cdn(rstn), .q(tx_data[0]) );
  nd04d0 U3 ( .a1(n27), .a2(n42), .a3(n26), .a4(n18), .zn(n1) );
  in01d0 U4 ( .i(n39), .zn(n35) );
  nd04d0 U5 ( .a1(n63), .a2(data), .a3(n51), .a4(n46), .zn(n47) );
  nr02d0 U6 ( .a1(n18), .a2(n17), .zn(n16) );
  nr02d0 U7 ( .a1(n60), .a2(n24), .zn(n23) );
  in01d0 U8 ( .i(n7), .zn(n103) );
  in01d0 U9 ( .i(n110), .zn(out_en) );
  nd02d0 U10 ( .a1(tx_ongoing_window), .a2(tx_ongoing_d2), .zn(n110) );
  in01d0 U11 ( .i(cycle_cnt_after_ping[10]), .zn(n18) );
  in01d0 U12 ( .i(cycle_cnt_after_ping[9]), .zn(n59) );
  in01d0 U13 ( .i(cycle_cnt_after_ping[7]), .zn(n54) );
  in01d0 U14 ( .i(cycle_cnt_after_ping[5]), .zn(n50) );
  in01d0 U15 ( .i(cycle_cnt_after_ping[3]), .zn(n60) );
  an02d0 U16 ( .a1(cycle_cnt_after_ping[1]), .a2(cycle_cnt_after_ping[0]), .z(
        n12) );
  nd02d0 U17 ( .a1(cycle_cnt_after_ping[2]), .a2(n12), .zn(n24) );
  nd02d0 U18 ( .a1(cycle_cnt_after_ping[4]), .a2(n23), .zn(n15) );
  nr02d0 U19 ( .a1(n50), .a2(n15), .zn(n14) );
  nd02d0 U20 ( .a1(cycle_cnt_after_ping[6]), .a2(n14), .zn(n22) );
  nr02d0 U21 ( .a1(n54), .a2(n22), .zn(n21) );
  nd02d0 U22 ( .a1(cycle_cnt_after_ping[8]), .a2(n21), .zn(n20) );
  nr02d0 U23 ( .a1(n59), .a2(n20), .zn(n19) );
  in01d0 U24 ( .i(n19), .zn(n17) );
  or04d0 U25 ( .a1(cycle_cnt_after_ping[1]), .a2(cycle_cnt_after_ping[0]), 
        .a3(cycle_cnt_after_ping[4]), .a4(cycle_cnt_after_ping[2]), .z(n62) );
  nr02d0 U26 ( .a1(cycle_cnt_after_ping[3]), .a2(n62), .zn(n64) );
  in01d0 U27 ( .i(cycle_cnt_after_ping[15]), .zn(n27) );
  in01d0 U28 ( .i(cycle_cnt_after_ping[14]), .zn(n42) );
  in01d0 U29 ( .i(cycle_cnt_after_ping[13]), .zn(n26) );
  nr03d0 U30 ( .a1(cycle_cnt_after_ping[12]), .a2(cycle_cnt_after_ping[11]), 
        .a3(n1), .zn(n55) );
  in01d0 U31 ( .i(n55), .zn(n30) );
  nr03d0 U32 ( .a1(cycle_cnt_after_ping[7]), .a2(cycle_cnt_after_ping[6]), 
        .a3(n30), .zn(n69) );
  nd02d0 U33 ( .a1(n64), .a2(n69), .zn(n2) );
  in01d0 U34 ( .i(cycle_cnt_after_ping[8]), .zn(n65) );
  or04d0 U35 ( .a1(n50), .a2(n2), .a3(n59), .a4(n65), .z(n45) );
  in01d0 U36 ( .i(n45), .zn(n84) );
  nr04d0 U37 ( .a1(cycle_cnt_after_ping[5]), .a2(cycle_cnt_after_ping[9]), 
        .a3(cycle_cnt_after_ping[8]), .a4(n2), .zn(n3) );
  or04d0 U38 ( .a1(n84), .a2(ping_from_master), .a3(tx_done), .a4(n3), .z(n39)
         );
  nd02d0 U39 ( .a1(cycle_cnt_after_ping[11]), .a2(n16), .zn(n37) );
  oa05d0 U40 ( .a1(cycle_cnt_after_ping[11]), .a2(n16), .b(n35), .c(n37), .zn(
        n4) );
  in01d0 U41 ( .i(n4), .zn(n98) );
  oa05d0 U42 ( .a1(cycle_cnt_after_ping[4]), .a2(n23), .b(n15), .c(n35), .zn(
        n5) );
  in01d0 U43 ( .i(n5), .zn(n105) );
  oa05d0 U44 ( .a1(cycle_cnt_after_ping[8]), .a2(n21), .b(n20), .c(n35), .zn(
        n6) );
  in01d0 U45 ( .i(n6), .zn(n101) );
  oa05d0 U46 ( .a1(cycle_cnt_after_ping[6]), .a2(n14), .b(n22), .c(n35), .zn(
        n7) );
  oa05d0 U47 ( .a1(cycle_cnt_after_ping[2]), .a2(n12), .b(n24), .c(n35), .zn(
        n8) );
  in01d0 U48 ( .i(n8), .zn(n107) );
  nr02d2 U49 ( .a1(mst_request_after_slv_ping), .a2(pl_tx_en), .zn(n111) );
  ao01d0 U50 ( .a1(pl_tx_en), .a2(pl_tx_type), .b1(n111), .b2(tx_type), .zn(n9) );
  in01d0 U51 ( .i(n9), .zn(n91) );
  ao01d0 U52 ( .a1(pl_tx_en), .a2(pl_tx_afc), .b1(n111), .b2(tx_afc), .zn(n10)
         );
  in01d0 U53 ( .i(n10), .zn(n90) );
  nr02d0 U54 ( .a1(cycle_cnt_after_ping[9]), .a2(n30), .zn(n63) );
  nr02d0 U55 ( .a1(n64), .a2(n50), .zn(n31) );
  oa04d0 U56 ( .a1(cycle_cnt_after_ping[6]), .a2(n31), .b(
        cycle_cnt_after_ping[7]), .zn(n11) );
  nd03d0 U57 ( .a1(n63), .a2(n65), .a3(n11), .zn(n51) );
  an03d0 U58 ( .a1(tx_en_flag), .a2(tx_ongoing_window), .a3(n51), .z(N20) );
  nr02d0 U59 ( .a1(cycle_cnt_after_ping[1]), .a2(cycle_cnt_after_ping[0]), 
        .zn(n13) );
  nr03d0 U60 ( .a1(n13), .a2(n12), .a3(n39), .zn(n109) );
  ao05d0 U61 ( .a1(n50), .a2(n15), .b(n14), .c(n39), .zn(n104) );
  ao05d0 U62 ( .a1(n18), .a2(n17), .b(n16), .c(n39), .zn(n99) );
  ao05d0 U63 ( .a1(n59), .a2(n20), .b(n19), .c(n39), .zn(n100) );
  ao05d0 U64 ( .a1(n54), .a2(n22), .b(n21), .c(n39), .zn(n102) );
  ao05d0 U65 ( .a1(n60), .a2(n24), .b(n23), .c(n39), .zn(n106) );
  in01d0 U66 ( .i(cycle_cnt_after_ping[12]), .zn(n38) );
  nr02d0 U67 ( .a1(n38), .a2(n37), .zn(n25) );
  in01d0 U68 ( .i(n25), .zn(n36) );
  ao03d0 U69 ( .a1(cycle_cnt_after_ping[13]), .a2(n25), .b1(n26), .b2(n36), 
        .c(n39), .zn(n96) );
  nd03d0 U70 ( .a1(cycle_cnt_after_ping[13]), .a2(n35), .a3(n25), .zn(n43) );
  oa08d0 U71 ( .a1(n26), .a2(n42), .a3(n36), .b(n35), .zn(n28) );
  oa07d0 U72 ( .a1(cycle_cnt_after_ping[15]), .a2(n42), .a3(n43), .b1(n28), 
        .b2(n27), .zn(n94) );
  in01d0 U75 ( .i(slv_request_after_ping), .zn(n85) );
  oa05d0 U76 ( .a1(cycle_cnt_after_ping[7]), .a2(cycle_cnt_after_ping[8]), .b(
        cycle_cnt_after_ping[9]), .c(n85), .zn(n29) );
  nr02d0 U77 ( .a1(n30), .a2(n29), .zn(n33) );
  oa04d0 U78 ( .a1(cycle_cnt_after_ping[7]), .a2(cycle_cnt_after_ping[6]), .b(
        cycle_cnt_after_ping[8]), .zn(n46) );
  nd02d0 U79 ( .a1(cycle_cnt_after_ping[8]), .a2(n31), .zn(n53) );
  in01d0 U80 ( .i(tx_ongoing_window), .zn(n32) );
  ao08d0 U81 ( .a1(n33), .a2(n46), .a3(n53), .b(n32), .zn(N118) );
  nr02d0 U82 ( .a1(ping_from_master), .a2(tx_done), .zn(n34) );
  oa04d0 U83 ( .a1(cycle_cnt_after_ping[0]), .a2(n39), .b(n34), .zn(n108) );
  ao04d0 U85 ( .a1(n38), .a2(n37), .b(n41), .zn(n97) );
  ao01d0 U88 ( .a1(cycle_cnt_after_ping[14]), .a2(n44), .b1(n43), .b2(n42), 
        .zn(n95) );
  ao14d0 U89 ( .a1(n45), .a2(after_mst_ping), .b(ping_from_master), .z(n93) );
  in01d0 U90 ( .i(mst_request_after_slv_ping), .zn(n48) );
  oa04d0 U91 ( .a1(n84), .a2(n48), .b(n47), .zn(n92) );
  nr02d0 U92 ( .a1(cycle_cnt_after_ping[7]), .a2(cycle_cnt_after_ping[6]), 
        .zn(n52) );
  nd02d0 U93 ( .a1(cycle_cnt_after_ping[9]), .a2(cycle_cnt_after_ping[8]), 
        .zn(n49) );
  ao07d0 U94 ( .a1(n52), .a2(n51), .a3(n50), .b1(n49), .b2(n51), .zn(n58) );
  in01d0 U95 ( .i(cycle_cnt_after_ping[6]), .zn(n66) );
  oa08d0 U96 ( .a1(n54), .a2(n66), .a3(n53), .b(n63), .zn(n56) );
  oa05d0 U97 ( .a1(after_mst_ping), .a2(n56), .b(n55), .c(tx_en_flag), .zn(n57) );
  oa01d0 U98 ( .a1(n84), .a2(n85), .b1(n58), .b2(n57), .zn(n89) );
  or04d0 U99 ( .a1(n60), .a2(n59), .a3(cycle_cnt_after_ping[5]), .a4(
        mst_request_after_slv_ping), .z(n61) );
  nr04d0 U100 ( .a1(after_mst_ping), .a2(cycle_cnt_after_ping[8]), .a3(n62), 
        .a4(n61), .zn(n68) );
  nd04d0 U101 ( .a1(cycle_cnt_after_ping[5]), .a2(n64), .a3(
        cycle_cnt_after_ping[7]), .a4(n63), .zn(n70) );
  nr03d0 U102 ( .a1(n66), .a2(n65), .a3(n70), .zn(n67) );
  ao01d0 U103 ( .a1(n69), .a2(n68), .b1(after_mst_ping), .b2(n67), .zn(n83) );
  oa08d0 U104 ( .a1(cycle_cnt_after_ping[6]), .a2(cycle_cnt_after_ping[8]), 
        .a3(n70), .b(tx_ongoing_window), .zn(n81) );
  ao01d0 U105 ( .a1(n85), .a2(n84), .b1(n83), .b2(n81), .zn(n88) );
  in01d0 U106 ( .i(tx_en), .zn(n86) );
  ao14d0 U107 ( .a1(n86), .a2(tx_en_flag), .b(pl_tx_en), .z(n87) );
  mx21d0 U108 ( .i0(pl_tx_data[11]), .i1(tx_data[11]), .s(n111), .z(n82) );
  mx21d0 U109 ( .i0(pl_tx_data[9]), .i1(tx_data[9]), .s(n111), .z(n80) );
  mx21d0 U110 ( .i0(pl_tx_data[8]), .i1(tx_data[8]), .s(n111), .z(n79) );
  mx21d0 U111 ( .i0(pl_tx_data[7]), .i1(tx_data[7]), .s(n111), .z(n78) );
  mx21d0 U112 ( .i0(pl_tx_data[6]), .i1(tx_data[6]), .s(n111), .z(n77) );
  mx21d0 U113 ( .i0(pl_tx_data[5]), .i1(tx_data[5]), .s(n111), .z(n76) );
  mx21d0 U114 ( .i0(pl_tx_data[4]), .i1(tx_data[4]), .s(n111), .z(n75) );
  mx21d0 U115 ( .i0(pl_tx_data[3]), .i1(tx_data[3]), .s(n111), .z(n74) );
  mx21d0 U116 ( .i0(pl_tx_data[2]), .i1(tx_data[2]), .s(n111), .z(n73) );
  mx21d0 U117 ( .i0(pl_tx_data[1]), .i1(tx_data[1]), .s(n111), .z(n72) );
  mx21d0 U118 ( .i0(pl_tx_data[0]), .i1(tx_data[0]), .s(n111), .z(n71) );
  oa14d0 U84 ( .a1(cycle_cnt_after_ping[13]), .a2(n39), .b(n41), .z(n44) );
  nd02d0 U86 ( .a1(n35), .a2(n36), .zn(n41) );
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


