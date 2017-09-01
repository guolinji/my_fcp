/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : L-2016.03-SP5-2
// Date      : Thu Aug 31 12:37:43 2017
/////////////////////////////////////////////////////////////


module fcp_logical_layer ( clk, rstn, is_support_12v, ping_from_master, 
        reset_from_master, crc_error, par_error, rx_data, rx_data_valid, 
        tx_done, pl_tx_en, pl_tx_type, pl_tx_data, out_volt );
  input [23:0] rx_data;
  output [15:0] pl_tx_data;
  output [1:0] out_volt;
  input clk, rstn, is_support_12v, ping_from_master, reset_from_master,
         crc_error, par_error, rx_data_valid, tx_done;
  output pl_tx_en, pl_tx_type;
  wire   OUTPUT_CONTROL_0_, wr_en, N65, SSTAT_0_, rd_en, rx_data_valid_r,
         rx_data_valid_2r, N221, N222, N223, N224, N225, N226, N227, N228,
         N231, cmd_get_but_not_process, n157, n159, n160, n161, n162, n163,
         n164, n165, n166, n167, n168, n169, n170, n171, n172, n173, n174,
         n175, n176, n177, n178, n179, n180, n181, n182, n183, n184, n185,
         n186, n187, n188, n189, n190, n191, n192, n193, n194, n195, n196,
         n197, n198, n199, n200, n201, n202, n203, n204, n206, n207, n208, n1,
         n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n39, n40, n41, n42, n43, n44, n45, n46, n47,
         n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61,
         n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75,
         n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89,
         n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102,
         n103, n104, n105, n106, n107, n108, n109, n110, n111, n112, n113,
         n114, n115, n116, n117, n118, n119, n120, n121, n122, n123, n124,
         n125, n126, n127, n128, n129, n130, n131, n132, n133, n134, n135,
         n136, n137, n138, n139, n140, n141, n142, n143, n144, n145;
  wire   [7:0] VOUT_CONFIG;
  wire   [6:1] VOUT_STATUS;
  wire   [1:0] DISCRETE_CAPABILITIES;
  wire   [7:0] addr;
  wire   [7:0] wr_data;
  wire   [3:1] RESP;
  wire   [7:0] data_for_rd_cmd;
  wire   [1:0] cur_st;

  dfntnq DISCRETE_CAPABILITIES_reg_1_ ( .d(is_support_12v), .cp(clk), .q(
        DISCRETE_CAPABILITIES[1]) );
  dfntnq DISCRETE_CAPABILITIES_reg_0_ ( .d(n208), .cp(clk), .q(
        DISCRETE_CAPABILITIES[0]) );
  dfctnq rd_en_reg ( .d(n198), .cp(clk), .cdn(rstn), .q(rd_en) );
  dfctnq addr_reg_7_ ( .d(n197), .cp(clk), .cdn(rstn), .q(addr[7]) );
  dfctnq addr_reg_6_ ( .d(n196), .cp(clk), .cdn(rstn), .q(addr[6]) );
  dfctnq addr_reg_5_ ( .d(n195), .cp(clk), .cdn(rstn), .q(addr[5]) );
  dfctnq addr_reg_4_ ( .d(n194), .cp(clk), .cdn(rstn), .q(addr[4]) );
  dfctnq addr_reg_3_ ( .d(n193), .cp(clk), .cdn(rstn), .q(addr[3]) );
  dfctnq addr_reg_2_ ( .d(n192), .cp(clk), .cdn(rstn), .q(addr[2]) );
  dfctnq addr_reg_1_ ( .d(n191), .cp(clk), .cdn(rstn), .q(addr[1]) );
  dfctnq addr_reg_0_ ( .d(n190), .cp(clk), .cdn(rstn), .q(addr[0]) );
  dfctnq wr_en_reg ( .d(n189), .cp(clk), .cdn(rstn), .q(wr_en) );
  dfctnq wr_data_reg_7_ ( .d(n188), .cp(clk), .cdn(rstn), .q(wr_data[7]) );
  dfctnq wr_data_reg_6_ ( .d(n187), .cp(clk), .cdn(rstn), .q(wr_data[6]) );
  dfctnq wr_data_reg_5_ ( .d(n186), .cp(clk), .cdn(rstn), .q(wr_data[5]) );
  dfctnq wr_data_reg_4_ ( .d(n185), .cp(clk), .cdn(rstn), .q(wr_data[4]) );
  dfctnq wr_data_reg_3_ ( .d(n184), .cp(clk), .cdn(rstn), .q(wr_data[3]) );
  dfctnq wr_data_reg_2_ ( .d(n183), .cp(clk), .cdn(rstn), .q(wr_data[2]) );
  dfctnq wr_data_reg_1_ ( .d(n182), .cp(clk), .cdn(rstn), .q(wr_data[1]) );
  dfctnq wr_data_reg_0_ ( .d(n181), .cp(clk), .cdn(rstn), .q(wr_data[0]) );
  dfctnq pl_tx_data_reg_11_ ( .d(n180), .cp(clk), .cdn(rstn), .q(
        pl_tx_data[11]) );
  dfctnq pl_tx_data_reg_9_ ( .d(n179), .cp(clk), .cdn(rstn), .q(pl_tx_data[9])
         );
  dfctnq pl_tx_data_reg_8_ ( .d(n178), .cp(clk), .cdn(rstn), .q(pl_tx_data[8])
         );
  dfctnq VOUT_CONFIG_reg_0_ ( .d(n177), .cp(clk), .cdn(rstn), .q(
        VOUT_CONFIG[0]) );
  dfctnq VOUT_CONFIG_reg_7_ ( .d(n176), .cp(clk), .cdn(rstn), .q(
        VOUT_CONFIG[7]) );
  dfctnq pl_tx_data_reg_7_ ( .d(n175), .cp(clk), .cdn(rstn), .q(pl_tx_data[7])
         );
  dfctnq VOUT_CONFIG_reg_6_ ( .d(n174), .cp(clk), .cdn(rstn), .q(
        VOUT_CONFIG[6]) );
  dfctnq VOUT_CONFIG_reg_3_ ( .d(n173), .cp(clk), .cdn(rstn), .q(
        VOUT_CONFIG[3]) );
  dfctnq VOUT_CONFIG_reg_2_ ( .d(n172), .cp(clk), .cdn(rstn), .q(
        VOUT_CONFIG[2]) );
  dfctnq pl_tx_data_reg_2_ ( .d(n171), .cp(clk), .cdn(rstn), .q(pl_tx_data[2])
         );
  dfctnq VOUT_STATUS_reg_6_ ( .d(n170), .cp(clk), .cdn(rstn), .q(
        VOUT_STATUS[6]) );
  dfctnq pl_tx_data_reg_6_ ( .d(n169), .cp(clk), .cdn(rstn), .q(pl_tx_data[6])
         );
  dfctnq pl_tx_data_reg_5_ ( .d(n168), .cp(clk), .cdn(rstn), .q(pl_tx_data[5])
         );
  dfctnq pl_tx_data_reg_4_ ( .d(n167), .cp(clk), .cdn(rstn), .q(pl_tx_data[4])
         );
  dfctnq VOUT_STATUS_reg_3_ ( .d(n166), .cp(clk), .cdn(rstn), .q(
        VOUT_STATUS[3]) );
  dfctnq pl_tx_data_reg_3_ ( .d(n165), .cp(clk), .cdn(rstn), .q(pl_tx_data[3])
         );
  dfctnq pl_tx_data_reg_1_ ( .d(n164), .cp(clk), .cdn(rstn), .q(pl_tx_data[1])
         );
  dfctnq pl_tx_data_reg_0_ ( .d(n163), .cp(clk), .cdn(rstn), .q(pl_tx_data[0])
         );
  dfctnq SSTAT_reg_0_ ( .d(n204), .cp(clk), .cdn(rstn), .q(SSTAT_0_) );
  dfctnq rx_data_valid_r_reg ( .d(n138), .cp(clk), .cdn(rstn), .q(
        rx_data_valid_r) );
  dfctnq rx_data_valid_2r_reg ( .d(rx_data_valid_r), .cp(clk), .cdn(rstn), .q(
        rx_data_valid_2r) );
  dfctnq RESP_reg_3_ ( .d(n203), .cp(clk), .cdn(rstn), .q(RESP[3]) );
  dfctnq RESP_reg_1_ ( .d(n202), .cp(clk), .cdn(rstn), .q(RESP[1]) );
  dfctnq cur_st_reg_0_ ( .d(n207), .cp(clk), .cdn(rstn), .q(cur_st[0]) );
  dfctnq OUTPUT_CONTROL_reg_0_ ( .d(N65), .cp(clk), .cdn(rstn), .q(
        OUTPUT_CONTROL_0_) );
  dfctnq out_volt_reg_0_ ( .d(n201), .cp(clk), .cdn(rstn), .q(out_volt[0]) );
  dfctnq out_volt_reg_1_ ( .d(n200), .cp(clk), .cdn(rstn), .q(out_volt[1]) );
  dfctnq cmd_get_but_not_process_reg ( .d(n199), .cp(clk), .cdn(rstn), .q(
        cmd_get_but_not_process) );
  dfctnq cur_st_reg_1_ ( .d(n206), .cp(clk), .cdn(rstn), .q(cur_st[1]) );
  lantnq data_for_rd_cmd_reg_7_ ( .e(N231), .d(N228), .q(data_for_rd_cmd[7])
         );
  lantnq data_for_rd_cmd_reg_2_ ( .e(N231), .d(N223), .q(data_for_rd_cmd[2])
         );
  lantnq data_for_rd_cmd_reg_6_ ( .e(N231), .d(N227), .q(data_for_rd_cmd[6])
         );
  lantnq data_for_rd_cmd_reg_5_ ( .e(N231), .d(N226), .q(data_for_rd_cmd[5])
         );
  lantnq data_for_rd_cmd_reg_4_ ( .e(N231), .d(N225), .q(data_for_rd_cmd[4])
         );
  lantnq data_for_rd_cmd_reg_3_ ( .e(N231), .d(N224), .q(data_for_rd_cmd[3])
         );
  lantnq data_for_rd_cmd_reg_1_ ( .e(N231), .d(N222), .q(data_for_rd_cmd[1])
         );
  lantnq data_for_rd_cmd_reg_0_ ( .e(N231), .d(N221), .q(data_for_rd_cmd[0])
         );
  dfptnb VOUT_STATUS_reg_1_ ( .d(n157), .cp(clk), .sdn(rstn), .q(
        VOUT_STATUS[1]), .qn(n142) );
  dfptnb VOUT_STATUS_reg_5_ ( .d(n159), .cp(clk), .sdn(rstn), .q(
        VOUT_STATUS[5]) );
  dfptnb VOUT_CONFIG_reg_5_ ( .d(n162), .cp(clk), .sdn(rstn), .q(
        VOUT_CONFIG[5]), .qn(n139) );
  dfptnb VOUT_CONFIG_reg_4_ ( .d(n161), .cp(clk), .sdn(rstn), .q(
        VOUT_CONFIG[4]), .qn(n140) );
  dfptnb VOUT_CONFIG_reg_1_ ( .d(n160), .cp(clk), .sdn(rstn), .qn(n141) );
  ao08d2 U3 ( .a1(n73), .a2(n72), .a3(n71), .b(n89), .zn(N231) );
  in01d0 U4 ( .i(n81), .zn(n79) );
  nd03d0 U5 ( .a1(n5), .a2(n45), .a3(n80), .zn(n63) );
  nd02d0 U6 ( .a1(pl_tx_type), .a2(n34), .zn(n104) );
  in01d0 U7 ( .i(n131), .zn(n129) );
  nd04d0 U8 ( .a1(n10), .a2(n9), .a3(n8), .a4(n72), .zn(N226) );
  in01d0 U9 ( .i(n14), .zn(n175) );
  in01d0 U10 ( .i(n26), .zn(n190) );
  ni01d1 U11 ( .i(rx_data_valid), .z(n138) );
  in01d0 U12 ( .i(cur_st[1]), .zn(n34) );
  in01d0 U13 ( .i(cur_st[0]), .zn(n2) );
  ao04d0 U14 ( .a1(n34), .a2(reset_from_master), .b(n2), .zn(n3) );
  ao07d0 U15 ( .a1(cmd_get_but_not_process), .a2(n3), .a3(tx_done), .b1(
        cur_st[1]), .b2(n3), .zn(n1) );
  oa08d0 U16 ( .a1(reset_from_master), .a2(tx_done), .a3(n34), .b(n1), .zn(
        n206) );
  nd03d0 U17 ( .a1(ping_from_master), .a2(n34), .a3(n2), .zn(n44) );
  in01d0 U18 ( .i(n3), .zn(n4) );
  ao07d0 U19 ( .a1(tx_done), .a2(n44), .a3(n34), .b1(n4), .b2(n44), .zn(n207)
         );
  fn05d0 U20 ( .a1(n206), .b1(n207), .zn(pl_tx_type) );
  in01d0 U21 ( .i(addr[5]), .zn(n45) );
  nr02d0 U22 ( .a1(n45), .a2(addr[3]), .zn(n83) );
  in01d0 U23 ( .i(addr[2]), .zn(n7) );
  nd03d0 U24 ( .a1(addr[4]), .a2(n83), .a3(n7), .zn(n55) );
  or02d0 U25 ( .a1(addr[1]), .a2(addr[0]), .z(n82) );
  nr03d0 U26 ( .a1(addr[4]), .a2(n7), .a3(n82), .zn(n5) );
  in01d0 U27 ( .i(addr[3]), .zn(n80) );
  oa14d0 U28 ( .a1(n55), .a2(n82), .b(n63), .z(n10) );
  nr02d0 U29 ( .a1(addr[4]), .a2(addr[2]), .zn(n6) );
  nd02d0 U30 ( .a1(n6), .a2(n80), .zn(n48) );
  nr02d0 U31 ( .a1(addr[5]), .a2(n48), .zn(n78) );
  in01d0 U32 ( .i(addr[0]), .zn(n46) );
  nr02d0 U33 ( .a1(addr[1]), .a2(n46), .zn(n53) );
  nd03d1 U34 ( .a1(addr[5]), .a2(addr[3]), .a3(n5), .zn(n105) );
  in01d0 U35 ( .i(n105), .zn(n57) );
  ao01d0 U36 ( .a1(n78), .a2(n53), .b1(n57), .b2(VOUT_CONFIG[5]), .zn(n9) );
  nd02d0 U37 ( .a1(addr[5]), .a2(n6), .zn(n66) );
  nr02d0 U38 ( .a1(n80), .a2(n66), .zn(n43) );
  nd02d0 U39 ( .a1(n43), .a2(n53), .zn(n65) );
  in01d0 U40 ( .i(n65), .zn(n61) );
  nd02d0 U41 ( .a1(n61), .a2(VOUT_STATUS[5]), .zn(n8) );
  nd02d0 U42 ( .a1(n46), .a2(addr[1]), .zn(n81) );
  nd03d0 U43 ( .a1(n79), .a2(n83), .a3(n7), .zn(n72) );
  in01d0 U44 ( .i(rx_data_valid_2r), .zn(n101) );
  nd02d0 U45 ( .a1(rd_en), .a2(rx_data_valid_2r), .zn(n102) );
  in01d0 U46 ( .i(n102), .zn(n19) );
  ao01d0 U47 ( .a1(n101), .a2(pl_tx_data[4]), .b1(data_for_rd_cmd[4]), .b2(n19), .zn(n11) );
  in01d0 U48 ( .i(n11), .zn(n167) );
  ao01d0 U49 ( .a1(n101), .a2(pl_tx_data[2]), .b1(data_for_rd_cmd[2]), .b2(n19), .zn(n12) );
  in01d0 U50 ( .i(n12), .zn(n171) );
  ao01d0 U51 ( .a1(n101), .a2(pl_tx_data[6]), .b1(data_for_rd_cmd[6]), .b2(n19), .zn(n13) );
  in01d0 U52 ( .i(n13), .zn(n169) );
  ao01d0 U53 ( .a1(n101), .a2(pl_tx_data[7]), .b1(data_for_rd_cmd[7]), .b2(n19), .zn(n14) );
  ao01d0 U54 ( .a1(n101), .a2(pl_tx_data[5]), .b1(data_for_rd_cmd[5]), .b2(n19), .zn(n15) );
  in01d0 U55 ( .i(n15), .zn(n168) );
  ao01d0 U56 ( .a1(data_for_rd_cmd[0]), .a2(n19), .b1(pl_tx_data[0]), .b2(n101), .zn(n16) );
  in01d0 U57 ( .i(rd_en), .zn(n124) );
  nd03d0 U58 ( .a1(RESP[1]), .a2(rx_data_valid_2r), .a3(n124), .zn(n17) );
  nd02d0 U59 ( .a1(n16), .a2(n17), .zn(n163) );
  ao01d0 U60 ( .a1(data_for_rd_cmd[1]), .a2(n19), .b1(pl_tx_data[1]), .b2(n101), .zn(n18) );
  nd02d0 U61 ( .a1(n18), .a2(n17), .zn(n164) );
  ao01d0 U62 ( .a1(RESP[3]), .a2(n19), .b1(pl_tx_data[11]), .b2(n101), .zn(n20) );
  in01d0 U63 ( .i(n20), .zn(n180) );
  in01d0 U64 ( .i(is_support_12v), .zn(n208) );
  in01d0 U65 ( .i(n138), .zn(n99) );
  or02d0 U66 ( .a1(rx_data[18]), .a2(rx_data[22]), .z(n40) );
  in01d0 U67 ( .i(rx_data[21]), .zn(n21) );
  nd04d0 U68 ( .a1(rx_data[17]), .a2(rx_data[19]), .a3(rx_data[16]), .a4(n21), 
        .zn(n22) );
  nr04d0 U69 ( .a1(rx_data[20]), .a2(rx_data[23]), .a3(n40), .a4(n22), .zn(n23) );
  nr02d1 U70 ( .a1(n23), .a2(n99), .zn(n32) );
  fn05d0 U71 ( .a1(n23), .b1(n99), .zn(n24) );
  ni01d1 U72 ( .i(n24), .z(n100) );
  ao06d0 U73 ( .a1(n99), .a2(addr[7]), .b1(rx_data[7]), .b2(n32), .c1(
        rx_data[15]), .c2(n100), .zn(n25) );
  in01d0 U74 ( .i(n25), .zn(n197) );
  ao06d0 U75 ( .a1(n99), .a2(addr[0]), .b1(n100), .b2(rx_data[8]), .c1(n32), 
        .c2(rx_data[0]), .zn(n26) );
  ao06d0 U76 ( .a1(n99), .a2(addr[6]), .b1(n100), .b2(rx_data[14]), .c1(n32), 
        .c2(rx_data[6]), .zn(n27) );
  in01d0 U77 ( .i(n27), .zn(n196) );
  ao06d0 U78 ( .a1(n99), .a2(addr[3]), .b1(n100), .b2(rx_data[11]), .c1(n32), 
        .c2(rx_data[3]), .zn(n28) );
  in01d0 U79 ( .i(n28), .zn(n193) );
  ao06d0 U80 ( .a1(n99), .a2(addr[5]), .b1(n100), .b2(rx_data[13]), .c1(n32), 
        .c2(rx_data[5]), .zn(n29) );
  in01d0 U81 ( .i(n29), .zn(n195) );
  ao06d0 U82 ( .a1(n99), .a2(addr[4]), .b1(n100), .b2(rx_data[12]), .c1(n32), 
        .c2(rx_data[4]), .zn(n30) );
  in01d0 U83 ( .i(n30), .zn(n194) );
  ao06d0 U84 ( .a1(n99), .a2(addr[2]), .b1(n100), .b2(rx_data[10]), .c1(n32), 
        .c2(rx_data[2]), .zn(n31) );
  in01d0 U85 ( .i(n31), .zn(n192) );
  ao06d0 U86 ( .a1(n99), .a2(addr[1]), .b1(n100), .b2(rx_data[9]), .c1(n32), 
        .c2(rx_data[1]), .zn(n33) );
  in01d0 U87 ( .i(n33), .zn(n191) );
  ao04d0 U88 ( .a1(cmd_get_but_not_process), .a2(n104), .b(n138), .zn(n35) );
  nr02d0 U89 ( .a1(reset_from_master), .a2(n35), .zn(n199) );
  or04d0 U90 ( .a1(rx_data[16]), .a2(rx_data[19]), .a3(rx_data[8]), .a4(n99), 
        .z(n42) );
  or04d0 U95 ( .a1(rx_data[17]), .a2(rx_data[21]), .a3(n40), .a4(n39), .z(n41)
         );
  oa01d0 U96 ( .a1(n138), .a2(n124), .b1(n42), .b2(n41), .zn(n198) );
  in01d0 U97 ( .i(VOUT_CONFIG[2]), .zn(n115) );
  oa01d0 U98 ( .a1(addr[4]), .a2(n72), .b1(n115), .b2(n105), .zn(N223) );
  nr02d0 U99 ( .a1(addr[6]), .a2(addr[7]), .zn(n70) );
  nd02d0 U100 ( .a1(n70), .a2(wr_en), .zn(n106) );
  nd03d0 U101 ( .a1(addr[0]), .a2(addr[1]), .a3(n43), .zn(n64) );
  in01d0 U102 ( .i(wr_data[0]), .zn(n108) );
  nr04d0 U103 ( .a1(n106), .a2(n64), .a3(n104), .a4(n108), .zn(N65) );
  nd02d0 U104 ( .a1(n44), .a2(n104), .zn(pl_tx_en) );
  in01d0 U105 ( .i(OUTPUT_CONTROL_0_), .zn(n135) );
  nd02d0 U106 ( .a1(addr[0]), .a2(addr[1]), .zn(n86) );
  in01d0 U107 ( .i(n86), .zn(n74) );
  nr04d0 U108 ( .a1(addr[1]), .a2(n46), .a3(n45), .a4(n48), .zn(n69) );
  ao01d0 U109 ( .a1(n57), .a2(VOUT_CONFIG[0]), .b1(n69), .b2(
        DISCRETE_CAPABILITIES[0]), .zn(n47) );
  oa05d0 U110 ( .a1(n82), .a2(n48), .b(n47), .c(n63), .zn(n49) );
  ao08d0 U111 ( .a1(n78), .a2(n74), .a3(SSTAT_0_), .b(n49), .zn(n50) );
  oa04d0 U112 ( .a1(n64), .a2(n135), .b(n50), .zn(N221) );
  oa04d0 U113 ( .a1(addr[1]), .a2(n55), .b(n63), .zn(n68) );
  in01d0 U114 ( .i(n68), .zn(n52) );
  ao01d0 U115 ( .a1(n69), .a2(DISCRETE_CAPABILITIES[1]), .b1(n61), .b2(
        VOUT_STATUS[1]), .zn(n51) );
  oa05d0 U116 ( .a1(n105), .a2(n141), .b(n52), .c(n51), .zn(N222) );
  in01d0 U117 ( .i(VOUT_CONFIG[3]), .zn(n113) );
  in01d0 U118 ( .i(addr[4]), .zn(n59) );
  in01d0 U119 ( .i(n53), .zn(n54) );
  oa01d0 U120 ( .a1(n59), .a2(n72), .b1(n55), .b2(n54), .zn(n60) );
  ao04d0 U121 ( .a1(n61), .a2(VOUT_STATUS[3]), .b(n60), .zn(n56) );
  oa05d0 U122 ( .a1(n113), .a2(n105), .b(n56), .c(n63), .zn(N224) );
  ao05d0 U123 ( .a1(VOUT_CONFIG[4]), .a2(n57), .b(n61), .c(n68), .zn(n58) );
  oa04d0 U124 ( .a1(n59), .a2(n72), .b(n58), .zn(N225) );
  in01d0 U125 ( .i(VOUT_CONFIG[6]), .zn(n111) );
  ao04d0 U126 ( .a1(n61), .a2(VOUT_STATUS[6]), .b(n60), .zn(n62) );
  oa04d0 U127 ( .a1(n105), .a2(n111), .b(n62), .zn(N227) );
  in01d0 U128 ( .i(VOUT_CONFIG[7]), .zn(n109) );
  oa04d0 U129 ( .a1(n109), .a2(n105), .b(n63), .zn(N228) );
  nd02d0 U130 ( .a1(n105), .a2(n64), .zn(n77) );
  oa04d0 U131 ( .a1(n66), .a2(n82), .b(n65), .zn(n67) );
  nr04d0 U132 ( .a1(n78), .a2(n77), .a3(n68), .a4(n67), .zn(n73) );
  in01d0 U133 ( .i(n69), .zn(n71) );
  nd02d0 U134 ( .a1(n70), .a2(rd_en), .zn(n89) );
  in01d0 U135 ( .i(n89), .zn(n76) );
  an02d0 U136 ( .a1(n78), .a2(n74), .z(n75) );
  fn03d0 U137 ( .a1(n76), .a2(n75), .b1(SSTAT_0_), .b2(par_error), .zn(n204)
         );
  ao04d0 U138 ( .a1(n79), .a2(n78), .b(n77), .zn(n92) );
  ao04d0 U139 ( .a1(addr[5]), .a2(n81), .b(n80), .zn(n90) );
  in01d0 U140 ( .i(n83), .zn(n87) );
  oa04d0 U141 ( .a1(n83), .a2(n82), .b(addr[2]), .zn(n85) );
  ao07d0 U142 ( .a1(addr[1]), .a2(addr[4]), .a3(n208), .b1(n87), .b2(addr[4]), 
        .zn(n84) );
  oa05d0 U143 ( .a1(n87), .a2(n86), .b(n85), .c(n84), .zn(n88) );
  or04d0 U144 ( .a1(wr_en), .a2(n90), .a3(n89), .a4(n88), .z(n91) );
  oa05d0 U145 ( .a1(n92), .a2(n106), .b(rx_data_valid_r), .c(n91), .zn(n93) );
  oa14d0 U146 ( .a1(rx_data_valid_r), .a2(RESP[3]), .b(n93), .z(n203) );
  in01d0 U147 ( .i(RESP[1]), .zn(n103) );
  oa04d0 U148 ( .a1(rx_data_valid_r), .a2(n103), .b(n93), .zn(n202) );
  or04d0 U149 ( .a1(n140), .a2(VOUT_CONFIG[0]), .a3(VOUT_CONFIG[7]), .a4(
        VOUT_CONFIG[2]), .z(n95) );
  nr04d0 U150 ( .a1(n111), .a2(n113), .a3(n139), .a4(n95), .zn(n94) );
  nd03d0 U151 ( .a1(is_support_12v), .a2(n94), .a3(n141), .zn(n134) );
  nr02d0 U152 ( .a1(n141), .a2(n95), .zn(n96) );
  nd04d0 U153 ( .a1(VOUT_CONFIG[5]), .a2(n96), .a3(n111), .a4(n113), .zn(n117)
         );
  ao04d0 U154 ( .a1(n134), .a2(n117), .b(n135), .zn(n132) );
  in01d0 U155 ( .i(out_volt[0]), .zn(n97) );
  an04d0 U156 ( .a1(n139), .a2(VOUT_CONFIG[3]), .a3(VOUT_CONFIG[6]), .a4(n96), 
        .z(n119) );
  nd02d0 U157 ( .a1(OUTPUT_CONTROL_0_), .a2(n119), .zn(n133) );
  oa04d0 U158 ( .a1(n132), .a2(n97), .b(n133), .zn(n201) );
  in01d0 U159 ( .i(n117), .zn(n98) );
  oa04d0 U160 ( .a1(n119), .a2(n98), .b(OUTPUT_CONTROL_0_), .zn(n136) );
  fn04d0 U161 ( .a1(n135), .a2(n134), .b1(out_volt[1]), .b2(n136), .zn(n200)
         );
  ao14d0 U162 ( .a1(n99), .a2(wr_en), .b(n100), .z(n189) );
  in01d0 U163 ( .i(wr_data[7]), .zn(n110) );
  fn04d0 U164 ( .a1(n138), .a2(n110), .b1(rx_data[7]), .b2(n100), .zn(n188) );
  in01d0 U165 ( .i(wr_data[6]), .zn(n112) );
  fn04d0 U166 ( .a1(n138), .a2(n112), .b1(rx_data[6]), .b2(n100), .zn(n187) );
  in01d0 U167 ( .i(wr_data[5]), .zn(n127) );
  fn04d0 U168 ( .a1(n138), .a2(n127), .b1(rx_data[5]), .b2(n100), .zn(n186) );
  in01d0 U169 ( .i(wr_data[4]), .zn(n128) );
  fn04d0 U170 ( .a1(n138), .a2(n128), .b1(rx_data[4]), .b2(n100), .zn(n185) );
  in01d0 U171 ( .i(wr_data[3]), .zn(n114) );
  fn04d0 U172 ( .a1(n138), .a2(n114), .b1(rx_data[3]), .b2(n100), .zn(n184) );
  in01d0 U173 ( .i(wr_data[2]), .zn(n116) );
  fn04d0 U174 ( .a1(n138), .a2(n116), .b1(rx_data[2]), .b2(n100), .zn(n183) );
  in01d0 U175 ( .i(wr_data[1]), .zn(n130) );
  fn04d0 U176 ( .a1(n138), .a2(n130), .b1(rx_data[1]), .b2(n100), .zn(n182) );
  fn04d0 U177 ( .a1(n138), .a2(n108), .b1(rx_data[0]), .b2(n100), .zn(n181) );
  fn04d0 U178 ( .a1(n103), .a2(n102), .b1(n101), .b2(pl_tx_data[9]), .zn(n179)
         );
  fn04d0 U179 ( .a1(n103), .a2(n102), .b1(n101), .b2(pl_tx_data[8]), .zn(n178)
         );
  nr03d0 U180 ( .a1(n106), .a2(n105), .a3(n104), .zn(n107) );
  ni01d1 U181 ( .i(n107), .z(n131) );
  fn03d0 U182 ( .a1(n131), .a2(n108), .b1(VOUT_CONFIG[0]), .b2(n131), .zn(n177) );
  ao01d0 U183 ( .a1(n131), .a2(n110), .b1(n109), .b2(n129), .zn(n176) );
  ao01d0 U184 ( .a1(n131), .a2(n112), .b1(n111), .b2(n129), .zn(n174) );
  ao01d0 U185 ( .a1(n131), .a2(n114), .b1(n113), .b2(n129), .zn(n173) );
  ao01d0 U186 ( .a1(n131), .a2(n116), .b1(n115), .b2(n129), .zn(n172) );
  nr02d0 U187 ( .a1(n135), .a2(n117), .zn(n123) );
  in01d0 U188 ( .i(VOUT_STATUS[6]), .zn(n120) );
  in01d0 U189 ( .i(n134), .zn(n118) );
  oa04d0 U190 ( .a1(n119), .a2(n118), .b(OUTPUT_CONTROL_0_), .zn(n121) );
  oa04d0 U191 ( .a1(n123), .a2(n120), .b(n121), .zn(n170) );
  in01d0 U192 ( .i(VOUT_STATUS[3]), .zn(n122) );
  oa04d0 U193 ( .a1(n123), .a2(n122), .b(n121), .zn(n166) );
  in01d0 U194 ( .i(pl_tx_data[3]), .zn(n126) );
  oa03d0 U195 ( .a1(rd_en), .a2(RESP[3]), .b1(n124), .b2(data_for_rd_cmd[3]), 
        .c(rx_data_valid_2r), .zn(n125) );
  oa04d0 U196 ( .a1(rx_data_valid_2r), .a2(n126), .b(n125), .zn(n165) );
  ao01d0 U197 ( .a1(n131), .a2(n127), .b1(n139), .b2(n129), .zn(n162) );
  ao01d0 U198 ( .a1(n131), .a2(n128), .b1(n140), .b2(n129), .zn(n161) );
  ao01d0 U199 ( .a1(n131), .a2(n130), .b1(n141), .b2(n129), .zn(n160) );
  ao14d0 U200 ( .a1(VOUT_STATUS[5]), .a2(n133), .b(n132), .z(n159) );
  nr02d0 U201 ( .a1(n135), .a2(n134), .zn(n137) );
  oa04d0 U202 ( .a1(n137), .a2(n142), .b(n136), .zn(n157) );
  nd03d0 U91 ( .a1(n145), .a2(rx_data[10]), .a3(n143), .zn(n39) );
  nr04d0 U92 ( .a1(rx_data[13]), .a2(rx_data[9]), .a3(rx_data[12]), .a4(n144), 
        .zn(n143) );
  ckinv0 U93 ( .i(rx_data[11]), .zn(n144) );
  nr04d0 U94 ( .a1(rx_data[14]), .a2(rx_data[23]), .a3(rx_data[15]), .a4(
        rx_data[20]), .zn(n145) );
endmodule


module fcp_crc_1 ( data_in, crc_en, crc_out, rst, clk );
  input [31:0] data_in;
  output [7:0] crc_out;
  input crc_en, rst, clk;
  wire   n49, n50, n51, n52, n53, n54, n55, n56, n1, n2, n3, n4, n5, n6, n7,
         n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21,
         n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35,
         n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46;

  dfntnb lfsr_q_reg_7_ ( .d(n49), .cp(clk), .q(crc_out[7]), .qn(n46) );
  dfntnb lfsr_q_reg_6_ ( .d(n50), .cp(clk), .q(crc_out[6]), .qn(n45) );
  dfntnb lfsr_q_reg_5_ ( .d(n51), .cp(clk), .q(crc_out[5]), .qn(n44) );
  dfntnb lfsr_q_reg_4_ ( .d(n52), .cp(clk), .q(crc_out[4]), .qn(n43) );
  dfntnb lfsr_q_reg_3_ ( .d(n53), .cp(clk), .q(crc_out[3]), .qn(n42) );
  dfntnb lfsr_q_reg_2_ ( .d(n54), .cp(clk), .q(crc_out[2]), .qn(n41) );
  dfntnb lfsr_q_reg_1_ ( .d(n55), .cp(clk), .q(crc_out[1]), .qn(n40) );
  dfntnb lfsr_q_reg_0_ ( .d(n56), .cp(clk), .q(crc_out[0]), .qn(n39) );
  fn01d0 U2 ( .a1(rst), .b1(crc_en), .zn(n38) );
  xo02d0 U3 ( .a1(data_in[22]), .a2(data_in[5]), .z(n3) );
  xn02d0 U4 ( .a1(data_in[8]), .a2(n40), .zn(n19) );
  xo02d0 U5 ( .a1(n3), .a2(n19), .z(n14) );
  xo02d0 U6 ( .a1(data_in[21]), .a2(data_in[4]), .z(n6) );
  xn02d0 U7 ( .a1(data_in[20]), .a2(data_in[3]), .zn(n26) );
  xn02d0 U8 ( .a1(n6), .a2(n26), .zn(n2) );
  xo02d0 U9 ( .a1(data_in[19]), .a2(data_in[2]), .z(n28) );
  xo02d0 U10 ( .a1(n2), .a2(n28), .z(n33) );
  xn03d0 U11 ( .a1(n14), .a2(n33), .a3(data_in[16]), .zn(n1) );
  or02d0 U12 ( .a1(rst), .a2(crc_en), .z(n36) );
  oa01d0 U13 ( .a1(n38), .a2(n1), .b1(n36), .b2(n46), .zn(n49) );
  xn02d0 U14 ( .a1(data_in[17]), .a2(data_in[0]), .zn(n24) );
  xn02d0 U15 ( .a1(n2), .a2(n24), .zn(n22) );
  xo02d0 U16 ( .a1(data_in[23]), .a2(data_in[6]), .z(n30) );
  xn02d0 U17 ( .a1(n3), .a2(n30), .zn(n12) );
  xn03d0 U18 ( .a1(crc_out[2]), .a2(data_in[9]), .a3(n12), .zn(n4) );
  xn02d0 U19 ( .a1(n22), .a2(n4), .zn(n5) );
  oa01d1 U20 ( .a1(n38), .a2(n5), .b1(n36), .b2(n39), .zn(n56) );
  xo02d0 U21 ( .a1(data_in[18]), .a2(data_in[1]), .z(n35) );
  xn02d0 U22 ( .a1(crc_out[0]), .a2(data_in[7]), .zn(n32) );
  xn02d0 U23 ( .a1(n6), .a2(n32), .zn(n15) );
  xn02d0 U24 ( .a1(n35), .a2(n15), .zn(n7) );
  xn03d0 U25 ( .a1(data_in[10]), .a2(crc_out[3]), .a3(n7), .zn(n8) );
  xo02d0 U26 ( .a1(n8), .a2(n12), .z(n9) );
  oa01d1 U27 ( .a1(n38), .a2(n9), .b1(n36), .b2(n40), .zn(n55) );
  xn03d0 U28 ( .a1(n28), .a2(n19), .a3(n32), .zn(n10) );
  xn03d0 U29 ( .a1(crc_out[4]), .a2(data_in[11]), .a3(n10), .zn(n11) );
  xn02d0 U30 ( .a1(n12), .a2(n11), .zn(n13) );
  oa01d1 U31 ( .a1(n38), .a2(n13), .b1(n41), .b2(n36), .zn(n54) );
  xn02d0 U32 ( .a1(n15), .a2(n14), .zn(n16) );
  xn03d0 U33 ( .a1(data_in[12]), .a2(crc_out[5]), .a3(n16), .zn(n17) );
  xo02d0 U34 ( .a1(n17), .a2(n24), .z(n18) );
  oa01d1 U35 ( .a1(n38), .a2(n18), .b1(n36), .b2(n42), .zn(n53) );
  xn02d0 U36 ( .a1(n35), .a2(n19), .zn(n20) );
  xn03d0 U37 ( .a1(data_in[13]), .a2(crc_out[6]), .a3(n20), .zn(n21) );
  xn02d0 U38 ( .a1(n22), .a2(n21), .zn(n23) );
  oa01d1 U39 ( .a1(n38), .a2(n23), .b1(n36), .b2(n43), .zn(n52) );
  xo02d0 U40 ( .a1(n24), .a2(n35), .z(n25) );
  xn03d0 U41 ( .a1(crc_out[7]), .a2(data_in[14]), .a3(n25), .zn(n27) );
  xn03d0 U42 ( .a1(n28), .a2(n27), .a3(n26), .zn(n29) );
  xn02d0 U43 ( .a1(n30), .a2(n29), .zn(n31) );
  oa01d1 U44 ( .a1(n38), .a2(n31), .b1(n36), .b2(n44), .zn(n51) );
  xn03d0 U45 ( .a1(n33), .a2(data_in[15]), .a3(n32), .zn(n34) );
  xn02d0 U46 ( .a1(n35), .a2(n34), .zn(n37) );
  oa01d1 U47 ( .a1(n38), .a2(n37), .b1(n36), .b2(n45), .zn(n50) );
endmodule


module fcp_rx_ctrl ( clk, rstn, data, rx_own_bus, ping_from_master, 
        reset_from_master, crc_error, par_error, rx_data, rx_data_valid );
  output [23:0] rx_data;
  input clk, rstn, data, rx_own_bus;
  output ping_from_master, reset_from_master, crc_error, par_error,
         rx_data_valid;
  wire   valid_data, enable_search_pos, enable_search_neg, quarter_pulse,
         rx_st, parity_pass, rx_st_r, rx_end_r, crc_en, n148, n149, n150, n151,
         n152, n153, n154, n155, n156, n157, n158, n159, n160, n161, n162,
         n163, n164, n165, n166, n167, n168, n169, n170, n171, n172, n173,
         n174, n175, n176, n177, n178, n179, n180, n181, n182, n183, n184,
         n185, n186, n187, n188, n189, n190, n191, n192, n193, n194, n195,
         n196, n197, n198, n199, n200, n201, n202, n203, n204, n205, n206,
         n207, n208, n209, n210, n211, n212, n213, n214, n215, n216, n217,
         n218, n219, n220, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12,
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
         n142, n143, n144, n145, n146, n147, n221, n223, n224, n225, n226,
         n227, n228, n229, n230, n231, n232, n233, n234, n235, n236, n237;
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
  dfctnq data_r_reg_1_ ( .d(data_r[0]), .cp(clk), .cdn(rstn), .q(data_r[1]) );
  dfctnq data_r_reg_2_ ( .d(data_r[1]), .cp(clk), .cdn(rstn), .q(data_r[2]) );
  dfctnq rx_st_r_reg ( .d(rx_st), .cp(clk), .cdn(rstn), .q(rx_st_r) );
  dfctnq enable_search_neg_reg ( .d(n220), .cp(clk), .cdn(rstn), .q(
        enable_search_neg) );
  dfctnq dur_cnt_reg_0_ ( .d(n219), .cp(clk), .cdn(rstn), .q(dur_cnt[0]) );
  dfctnq dur_cnt_reg_1_ ( .d(n218), .cp(clk), .cdn(rstn), .q(dur_cnt[1]) );
  dfctnq dur_cnt_reg_2_ ( .d(n217), .cp(clk), .cdn(rstn), .q(dur_cnt[2]) );
  dfctnq dur_cnt_reg_3_ ( .d(n216), .cp(clk), .cdn(rstn), .q(dur_cnt[3]) );
  dfctnq dur_cnt_reg_4_ ( .d(n215), .cp(clk), .cdn(rstn), .q(dur_cnt[4]) );
  dfctnq dur_cnt_reg_5_ ( .d(n214), .cp(clk), .cdn(rstn), .q(dur_cnt[5]) );
  dfctnq dur_cnt_reg_6_ ( .d(n213), .cp(clk), .cdn(rstn), .q(dur_cnt[6]) );
  dfctnq dur_cnt_reg_7_ ( .d(n212), .cp(clk), .cdn(rstn), .q(dur_cnt[7]) );
  dfctnq dur_cnt_reg_8_ ( .d(n211), .cp(clk), .cdn(rstn), .q(dur_cnt[8]) );
  dfctnq dur_cnt_reg_9_ ( .d(n210), .cp(clk), .cdn(rstn), .q(dur_cnt[9]) );
  dfctnq dur_cnt_reg_10_ ( .d(n209), .cp(clk), .cdn(rstn), .q(dur_cnt[10]) );
  dfctnq rx_st_reg ( .d(n208), .cp(clk), .cdn(rstn), .q(rx_st) );
  dfctnq enable_search_pos_reg ( .d(n207), .cp(clk), .cdn(rstn), .q(
        enable_search_pos) );
  dfctnq low_dur_cnt_reg_2_ ( .d(n204), .cp(clk), .cdn(rstn), .q(
        low_dur_cnt[2]) );
  dfctnq low_dur_cnt_reg_0_ ( .d(n205), .cp(clk), .cdn(rstn), .q(
        low_dur_cnt[0]) );
  dfctnq low_dur_cnt_reg_1_ ( .d(n206), .cp(clk), .cdn(rstn), .q(
        low_dur_cnt[1]) );
  dfctnq cnt_for_sample_reg_1_ ( .d(n203), .cp(clk), .cdn(rstn), .q(
        cnt_for_sample[1]) );
  dfctnq cnt_for_sample_reg_2_ ( .d(n201), .cp(clk), .cdn(rstn), .q(
        cnt_for_sample[2]) );
  dfctnq cnt_for_sample_reg_3_ ( .d(n200), .cp(clk), .cdn(rstn), .q(
        cnt_for_sample[3]) );
  dfctnq cnt_for_sample_reg_4_ ( .d(n199), .cp(clk), .cdn(rstn), .q(
        cnt_for_sample[4]) );
  dfctnq sample_num_reg_0_ ( .d(n198), .cp(clk), .cdn(rstn), .q(sample_num[0])
         );
  dfctnq sample_num_reg_1_ ( .d(n197), .cp(clk), .cdn(rstn), .q(sample_num[1])
         );
  dfctnq sample_num_reg_2_ ( .d(n196), .cp(clk), .cdn(rstn), .q(sample_num[2])
         );
  dfctnq sample_num_reg_3_ ( .d(n195), .cp(clk), .cdn(rstn), .q(sample_num[3])
         );
  dfctnq clk_sync_cnt_reg_0_ ( .d(n194), .cp(clk), .cdn(rstn), .q(
        clk_sync_cnt[0]) );
  dfctnq clk_sync_cnt_reg_1_ ( .d(n190), .cp(clk), .cdn(rstn), .q(
        clk_sync_cnt[1]) );
  dfctnq clk_sync_cnt_reg_4_ ( .d(n193), .cp(clk), .cdn(rstn), .q(
        clk_sync_cnt[4]) );
  dfctnq clk_sync_cnt_reg_3_ ( .d(n192), .cp(clk), .cdn(rstn), .q(
        clk_sync_cnt[3]) );
  dfctnq clk_sync_cnt_reg_2_ ( .d(n191), .cp(clk), .cdn(rstn), .q(
        clk_sync_cnt[2]) );
  dfctnq rx_data_with_crc_reg_1_ ( .d(n188), .cp(clk), .cdn(rstn), .q(
        rx_data_with_crc[1]) );
  dfctnq rx_data_with_crc_reg_0_ ( .d(n187), .cp(clk), .cdn(rstn), .q(
        rx_data_with_crc[0]) );
  dfctnq rx_data_with_crc_reg_2_ ( .d(n186), .cp(clk), .cdn(rstn), .q(
        rx_data_with_crc[2]) );
  dfctnq rx_data_with_crc_reg_3_ ( .d(n185), .cp(clk), .cdn(rstn), .q(
        rx_data_with_crc[3]) );
  dfctnq rx_data_with_crc_reg_4_ ( .d(n184), .cp(clk), .cdn(rstn), .q(
        rx_data_with_crc[4]) );
  dfctnq rx_data_with_crc_reg_5_ ( .d(n183), .cp(clk), .cdn(rstn), .q(
        rx_data_with_crc[5]) );
  dfctnq rx_data_with_crc_reg_6_ ( .d(n182), .cp(clk), .cdn(rstn), .q(
        rx_data_with_crc[6]) );
  dfctnq rx_data_with_crc_reg_7_ ( .d(n181), .cp(clk), .cdn(rstn), .q(
        rx_data_with_crc[7]) );
  dfctnq rx_data_with_crc_reg_8_ ( .d(n180), .cp(clk), .cdn(rstn), .q(
        rx_data[0]) );
  dfctnq rx_data_with_crc_reg_9_ ( .d(n179), .cp(clk), .cdn(rstn), .q(
        rx_data[1]) );
  dfctnq rx_data_with_crc_reg_10_ ( .d(n178), .cp(clk), .cdn(rstn), .q(
        rx_data[2]) );
  dfctnq rx_data_with_crc_reg_11_ ( .d(n177), .cp(clk), .cdn(rstn), .q(
        rx_data[3]) );
  dfctnq rx_data_with_crc_reg_12_ ( .d(n176), .cp(clk), .cdn(rstn), .q(
        rx_data[4]) );
  dfctnq rx_data_with_crc_reg_13_ ( .d(n175), .cp(clk), .cdn(rstn), .q(
        rx_data[5]) );
  dfctnq rx_data_with_crc_reg_14_ ( .d(n174), .cp(clk), .cdn(rstn), .q(
        rx_data[6]) );
  dfctnq rx_data_with_crc_reg_15_ ( .d(n173), .cp(clk), .cdn(rstn), .q(
        rx_data[7]) );
  dfctnq rx_data_with_crc_reg_16_ ( .d(n172), .cp(clk), .cdn(rstn), .q(
        rx_data[8]) );
  dfctnq rx_data_with_crc_reg_17_ ( .d(n171), .cp(clk), .cdn(rstn), .q(
        rx_data[9]) );
  dfctnq rx_data_with_crc_reg_18_ ( .d(n170), .cp(clk), .cdn(rstn), .q(
        rx_data[10]) );
  dfctnq rx_data_with_crc_reg_19_ ( .d(n169), .cp(clk), .cdn(rstn), .q(
        rx_data[11]) );
  dfctnq rx_data_with_crc_reg_20_ ( .d(n168), .cp(clk), .cdn(rstn), .q(
        rx_data[12]) );
  dfctnq rx_data_with_crc_reg_21_ ( .d(n167), .cp(clk), .cdn(rstn), .q(
        rx_data[13]) );
  dfctnq rx_data_with_crc_reg_22_ ( .d(n166), .cp(clk), .cdn(rstn), .q(
        rx_data[14]) );
  dfctnq rx_data_with_crc_reg_23_ ( .d(n165), .cp(clk), .cdn(rstn), .q(
        rx_data[15]) );
  dfctnq rx_data_with_crc_reg_24_ ( .d(n164), .cp(clk), .cdn(rstn), .q(
        rx_data[16]) );
  dfctnq rx_data_with_crc_reg_25_ ( .d(n163), .cp(clk), .cdn(rstn), .q(
        rx_data[17]) );
  dfctnq rx_data_with_crc_reg_26_ ( .d(n162), .cp(clk), .cdn(rstn), .q(
        rx_data[18]) );
  dfctnq rx_data_with_crc_reg_27_ ( .d(n161), .cp(clk), .cdn(rstn), .q(
        rx_data[19]) );
  dfctnq rx_data_with_crc_reg_28_ ( .d(n160), .cp(clk), .cdn(rstn), .q(
        rx_data[20]) );
  dfctnq rx_data_with_crc_reg_29_ ( .d(n159), .cp(clk), .cdn(rstn), .q(
        rx_data[21]) );
  dfctnq rx_data_with_crc_reg_30_ ( .d(n158), .cp(clk), .cdn(rstn), .q(
        rx_data[22]) );
  dfctnq rx_data_with_crc_reg_31_ ( .d(n157), .cp(clk), .cdn(rstn), .q(
        rx_data[23]) );
  dfctnq rx_end_r_reg ( .d(crc_en), .cp(clk), .cdn(rstn), .q(rx_end_r) );
  dfctnq sample_data_reg_0_ ( .d(n156), .cp(clk), .cdn(rstn), .q(
        sample_data[0]) );
  dfctnq sample_data_reg_1_ ( .d(n155), .cp(clk), .cdn(rstn), .q(
        sample_data[1]) );
  dfctnq sample_data_reg_2_ ( .d(n154), .cp(clk), .cdn(rstn), .q(
        sample_data[2]) );
  dfctnq sample_data_reg_3_ ( .d(n153), .cp(clk), .cdn(rstn), .q(
        sample_data[3]) );
  dfctnq sample_data_reg_4_ ( .d(n152), .cp(clk), .cdn(rstn), .q(
        sample_data[4]) );
  dfctnq sample_data_reg_5_ ( .d(n151), .cp(clk), .cdn(rstn), .q(
        sample_data[5]) );
  dfctnq sample_data_reg_6_ ( .d(n150), .cp(clk), .cdn(rstn), .q(
        sample_data[6]) );
  dfctnq sample_data_reg_7_ ( .d(n149), .cp(clk), .cdn(rstn), .q(
        sample_data[7]) );
  dfctnq sample_data_reg_8_ ( .d(n148), .cp(clk), .cdn(rstn), .q(
        sample_data[8]) );
  dfptnb cnt_for_sample_reg_0_ ( .d(n202), .cp(clk), .sdn(rstn), .q(
        cnt_for_sample[0]), .qn(n237) );
  dfptnb parity_pass_reg ( .d(n189), .cp(clk), .sdn(rstn), .q(parity_pass) );
  nr03d1 U3 ( .a1(n75), .a2(n85), .a3(n2), .zn(quarter_pulse) );
  nd04d0 U4 ( .a1(n91), .a2(n87), .a3(n105), .a4(n77), .zn(n1) );
  in01d0 U5 ( .i(n79), .zn(n80) );
  nd02d0 U6 ( .a1(n107), .a2(n111), .zn(n109) );
  in01d0 U7 ( .i(n59), .zn(n57) );
  in01d0 U8 ( .i(quarter_pulse), .zn(n96) );
  nd02d0 U9 ( .a1(n85), .a2(n86), .zn(n88) );
  in01d0 U10 ( .i(n69), .zn(n78) );
  nd02d0 U11 ( .a1(n32), .a2(n115), .zn(n189) );
  nd02d0 U12 ( .a1(dur_cnt[0]), .a2(dur_cnt[1]), .zn(n72) );
  in01d0 U13 ( .i(dur_cnt[2]), .zn(n74) );
  nr02d0 U14 ( .a1(n72), .a2(n74), .zn(n75) );
  in01d0 U15 ( .i(data_r[1]), .zn(n225) );
  nd03d0 U16 ( .a1(data_r[2]), .a2(enable_search_neg), .a3(n225), .zn(n85) );
  in01d0 U17 ( .i(dur_cnt[7]), .zn(n91) );
  in01d0 U18 ( .i(dur_cnt[6]), .zn(n87) );
  in01d0 U19 ( .i(dur_cnt[4]), .zn(n105) );
  in01d0 U20 ( .i(dur_cnt[3]), .zn(n77) );
  nr02d0 U21 ( .a1(dur_cnt[5]), .a2(n1), .zn(n65) );
  in01d0 U22 ( .i(dur_cnt[10]), .zn(n47) );
  in01d0 U23 ( .i(dur_cnt[9]), .zn(n93) );
  nd02d0 U24 ( .a1(n47), .a2(n93), .zn(n36) );
  in01d0 U25 ( .i(n36), .zn(n64) );
  in01d0 U26 ( .i(dur_cnt[8]), .zn(n63) );
  nd03d0 U27 ( .a1(n65), .a2(n64), .a3(n63), .zn(n2) );
  in01d0 U28 ( .i(sample_num[0]), .zn(n41) );
  in01d0 U29 ( .i(clk_sync_cnt[1]), .zn(n110) );
  in01d0 U30 ( .i(cnt_for_sample[1]), .zn(n50) );
  in01d0 U31 ( .i(cnt_for_sample[2]), .zn(n58) );
  in01d0 U32 ( .i(clk_sync_cnt[4]), .zn(n60) );
  oa01d0 U33 ( .a1(clk_sync_cnt[3]), .a2(n58), .b1(n60), .b2(cnt_for_sample[3]), .zn(n3) );
  ao03d0 U34 ( .a1(n58), .a2(clk_sync_cnt[3]), .b1(n60), .b2(cnt_for_sample[3]), .c(n3), .zn(n5) );
  ao04d0 U35 ( .a1(n50), .a2(clk_sync_cnt[2]), .b(cnt_for_sample[4]), .zn(n4)
         );
  oa05d0 U36 ( .a1(n50), .a2(clk_sync_cnt[2]), .b(n5), .c(n4), .zn(n6) );
  ao03d2 U37 ( .a1(clk_sync_cnt[1]), .a2(n237), .b1(n110), .b2(
        cnt_for_sample[0]), .c(n6), .zn(n236) );
  in01d0 U38 ( .i(n236), .zn(n233) );
  nr02d0 U39 ( .a1(n41), .a2(n233), .zn(n40) );
  nd02d0 U40 ( .a1(sample_num[1]), .a2(n40), .zn(n42) );
  ao08d0 U41 ( .a1(sample_num[0]), .a2(sample_num[2]), .a3(sample_num[1]), .b(
        sample_num[3]), .zn(n7) );
  ao05d0 U42 ( .a1(sample_num[2]), .a2(sample_num[3]), .b(n7), .c(n233), .zn(
        n8) );
  ao04d0 U43 ( .a1(sample_num[3]), .a2(n42), .b(n8), .zn(n9) );
  nr02d0 U44 ( .a1(quarter_pulse), .a2(n9), .zn(n195) );
  in01d0 U45 ( .i(rx_st), .zn(n95) );
  nd02d0 U46 ( .a1(rx_st_r), .a2(n95), .zn(n62) );
  in01d0 U47 ( .i(n62), .zn(crc_en) );
  nd03d0 U48 ( .a1(quarter_pulse), .a2(sample_num[0]), .a3(sample_num[3]), 
        .zn(n10) );
  nr03d0 U49 ( .a1(sample_num[2]), .a2(sample_num[1]), .a3(n10), .zn(n114) );
  in01d0 U50 ( .i(n114), .zn(n107) );
  nr02d0 U51 ( .a1(parity_pass), .a2(n107), .zn(par_error) );
  in01d0 U52 ( .i(rx_data_with_crc[5]), .zn(n122) );
  in01d0 U53 ( .i(rx_data_with_crc[2]), .zn(n119) );
  ao01d0 U54 ( .a1(n122), .a2(crc_data[5]), .b1(n119), .b2(crc_data[2]), .zn(
        n11) );
  oa03d0 U55 ( .a1(n122), .a2(crc_data[5]), .b1(n119), .b2(crc_data[2]), .c(
        n11), .zn(n20) );
  in01d0 U56 ( .i(rx_data_with_crc[1]), .zn(n117) );
  in01d0 U57 ( .i(rx_data_with_crc[4]), .zn(n121) );
  ao01d0 U58 ( .a1(n117), .a2(crc_data[1]), .b1(crc_data[4]), .b2(n121), .zn(
        n12) );
  oa03d0 U59 ( .a1(n117), .a2(crc_data[1]), .b1(n121), .b2(crc_data[4]), .c(
        n12), .zn(n19) );
  in01d0 U60 ( .i(rx_data_with_crc[0]), .zn(n116) );
  in01d0 U61 ( .i(rx_data_with_crc[7]), .zn(n124) );
  oa05d0 U62 ( .a1(n124), .a2(crc_data[7]), .b(rx_end_r), .c(parity_pass), 
        .zn(n13) );
  ao04d0 U63 ( .a1(n124), .a2(crc_data[7]), .b(n13), .zn(n17) );
  in01d0 U64 ( .i(rx_data_with_crc[6]), .zn(n123) );
  in01d0 U65 ( .i(rx_data_with_crc[3]), .zn(n120) );
  ao01d0 U66 ( .a1(n123), .a2(crc_data[6]), .b1(n120), .b2(crc_data[3]), .zn(
        n14) );
  oa03d0 U67 ( .a1(n123), .a2(crc_data[6]), .b1(n120), .b2(crc_data[3]), .c(
        n14), .zn(n15) );
  ao04d0 U68 ( .a1(crc_data[0]), .a2(n116), .b(n15), .zn(n16) );
  oa05d0 U69 ( .a1(crc_data[0]), .a2(n116), .b(n17), .c(n16), .zn(n18) );
  nr03d0 U70 ( .a1(n20), .a2(n19), .a3(n18), .zn(rx_data_valid) );
  fn01d0 U71 ( .a1(n85), .b1(dur_cnt[8]), .zn(n35) );
  nr04d1 U72 ( .a1(n65), .a2(n93), .a3(n47), .a4(n35), .zn(reset_from_master)
         );
  oa05d0 U73 ( .a1(sample_num[1]), .a2(n40), .b(n96), .c(n42), .zn(n21) );
  in01d0 U74 ( .i(n21), .zn(n197) );
  an03d0 U75 ( .a1(low_dur_cnt[1]), .a2(low_dur_cnt[0]), .a3(low_dur_cnt[2]), 
        .z(n37) );
  in01d0 U76 ( .i(enable_search_pos), .zn(n97) );
  or03d0 U77 ( .a1(n225), .a2(n97), .a3(data_r[2]), .z(n102) );
  in01d0 U78 ( .i(cnt_for_sample[3]), .zn(n52) );
  in01d0 U79 ( .i(clk_sync_cnt[3]), .zn(n106) );
  in01d0 U80 ( .i(cnt_for_sample[4]), .zn(n54) );
  in01d0 U81 ( .i(clk_sync_cnt[2]), .zn(n61) );
  oa01d0 U82 ( .a1(n237), .a2(clk_sync_cnt[0]), .b1(n61), .b2(
        cnt_for_sample[2]), .zn(n22) );
  ao03d0 U83 ( .a1(n237), .a2(clk_sync_cnt[0]), .b1(cnt_for_sample[2]), .b2(
        n61), .c(n22), .zn(n23) );
  oa03d0 U84 ( .a1(clk_sync_cnt[4]), .a2(n54), .b1(n60), .b2(cnt_for_sample[4]), .c(n23), .zn(n24) );
  ao03d0 U85 ( .a1(clk_sync_cnt[3]), .a2(n52), .b1(n106), .b2(
        cnt_for_sample[3]), .c(n24), .zn(n25) );
  oa03d0 U86 ( .a1(clk_sync_cnt[1]), .a2(n50), .b1(n110), .b2(
        cnt_for_sample[1]), .c(n25), .zn(n26) );
  oa05d0 U87 ( .a1(n37), .a2(n102), .b(n96), .c(n26), .zn(n56) );
  ao03d0 U88 ( .a1(n95), .a2(cnt_for_sample[0]), .b1(rx_st), .b2(n237), .c(n56), .zn(n27) );
  in01d0 U89 ( .i(n27), .zn(n202) );
  in01d0 U90 ( .i(sample_data[6]), .zn(n232) );
  in01d0 U91 ( .i(sample_data[1]), .zn(n227) );
  in01d0 U92 ( .i(sample_data[4]), .zn(n230) );
  xo02d0 U93 ( .a1(n230), .a2(sample_data[3]), .z(n28) );
  xo03d1 U94 ( .a1(n227), .a2(sample_data[2]), .a3(n28), .z(n30) );
  in01d0 U95 ( .i(sample_data[0]), .zn(n226) );
  in01d0 U96 ( .i(sample_data[8]), .zn(n234) );
  xo02d0 U97 ( .a1(n234), .a2(sample_data[7]), .z(n29) );
  xo03d1 U98 ( .a1(n30), .a2(n226), .a3(n29), .z(n31) );
  xn03d0 U99 ( .a1(n232), .a2(sample_data[5]), .a3(n31), .zn(n113) );
  oa04d0 U100 ( .a1(n113), .a2(n107), .b(parity_pass), .zn(n32) );
  or02d0 U101 ( .a1(rx_st_r), .a2(n95), .z(n115) );
  nd02d0 U102 ( .a1(dur_cnt[5]), .a2(dur_cnt[4]), .zn(n81) );
  in01d0 U103 ( .i(dur_cnt[1]), .zn(n108) );
  nd02d0 U104 ( .a1(n108), .a2(n74), .zn(n67) );
  oa08d0 U105 ( .a1(dur_cnt[3]), .a2(dur_cnt[0]), .a3(n67), .b(dur_cnt[5]), 
        .zn(n33) );
  ao07d0 U106 ( .a1(n81), .a2(dur_cnt[6]), .a3(n33), .b1(dur_cnt[5]), .b2(n87), 
        .zn(n34) );
  or04d0 U107 ( .a1(dur_cnt[7]), .a2(n36), .a3(n35), .a4(n34), .z(n111) );
  in01d0 U108 ( .i(n111), .zn(ping_from_master) );
  in01d0 U109 ( .i(dur_cnt[0]), .zn(n70) );
  ao04d0 U110 ( .a1(data_r[2]), .a2(enable_search_neg), .b(data_r[1]), .zn(n69) );
  ao04d0 U111 ( .a1(data_r[1]), .a2(n70), .b(n69), .zn(n71) );
  oa07d0 U112 ( .a1(dur_cnt[1]), .a2(n225), .a3(n70), .b1(n71), .b2(n108), 
        .zn(n218) );
  nd02d0 U113 ( .a1(dur_cnt[3]), .a2(n75), .zn(n79) );
  ao04d0 U114 ( .a1(data_r[1]), .a2(n79), .b(n69), .zn(n83) );
  oa07d0 U115 ( .a1(dur_cnt[4]), .a2(n225), .a3(n79), .b1(n83), .b2(n105), 
        .zn(n215) );
  in01d0 U116 ( .i(low_dur_cnt[0]), .zn(n98) );
  nd02d0 U117 ( .a1(data_r[1]), .a2(n102), .zn(n38) );
  nd02d0 U118 ( .a1(n37), .a2(n102), .zn(n99) );
  oa03d0 U119 ( .a1(low_dur_cnt[0]), .a2(data_r[1]), .b1(n98), .b2(n38), .c(
        n99), .zn(n205) );
  nr02d0 U120 ( .a1(n81), .a2(n79), .zn(n84) );
  nd02d0 U121 ( .a1(dur_cnt[6]), .a2(n84), .zn(n89) );
  nr02d0 U122 ( .a1(n91), .a2(n89), .zn(n45) );
  in01d0 U123 ( .i(n45), .zn(n39) );
  ao04d0 U124 ( .a1(data_r[1]), .a2(n39), .b(n69), .zn(n46) );
  oa07d0 U125 ( .a1(dur_cnt[8]), .a2(n225), .a3(n39), .b1(n46), .b2(n63), .zn(
        n211) );
  ao05d0 U126 ( .a1(n41), .a2(n233), .b(quarter_pulse), .c(n40), .zn(n198) );
  in01d0 U127 ( .i(n42), .zn(n44) );
  nr02d0 U128 ( .a1(sample_num[2]), .a2(n44), .zn(n43) );
  ao05d0 U129 ( .a1(sample_num[2]), .a2(n44), .b(quarter_pulse), .c(n43), .zn(
        n196) );
  nd03d0 U130 ( .a1(data_r[1]), .a2(dur_cnt[8]), .a3(n45), .zn(n94) );
  oa04d0 U131 ( .a1(dur_cnt[8]), .a2(n225), .b(n46), .zn(n92) );
  ao04d0 U132 ( .a1(data_r[1]), .a2(n93), .b(n92), .zn(n48) );
  oa07d0 U133 ( .a1(dur_cnt[10]), .a2(n93), .a3(n94), .b1(n48), .b2(n47), .zn(
        n209) );
  nd02d0 U134 ( .a1(rx_st), .a2(cnt_for_sample[0]), .zn(n49) );
  nr02d0 U135 ( .a1(n50), .a2(n49), .zn(n59) );
  ao05d0 U136 ( .a1(n50), .a2(n49), .b(n59), .c(n56), .zn(n203) );
  nd02d0 U137 ( .a1(cnt_for_sample[2]), .a2(n59), .zn(n51) );
  nr02d0 U138 ( .a1(n52), .a2(n51), .zn(n55) );
  ao05d0 U139 ( .a1(n52), .a2(n51), .b(n55), .c(n56), .zn(n200) );
  in01d0 U140 ( .i(n55), .zn(n53) );
  ao03d0 U141 ( .a1(cnt_for_sample[4]), .a2(n55), .b1(n54), .b2(n53), .c(n56), 
        .zn(n199) );
  ao03d0 U142 ( .a1(cnt_for_sample[2]), .a2(n59), .b1(n58), .b2(n57), .c(n56), 
        .zn(n201) );
  oa03d0 U143 ( .a1(n114), .a2(n60), .b1(n107), .b2(n74), .c(n111), .zn(n193)
         );
  oa06d0 U144 ( .a1(n70), .a2(n107), .b1(n111), .b2(n87), .c1(n61), .c2(n109), 
        .zn(n191) );
  an02d0 U145 ( .a1(data), .a2(rx_own_bus), .z(valid_data) );
  nd03d0 U147 ( .a1(enable_search_neg), .a2(n111), .a3(n62), .zn(n68) );
  nd04d0 U148 ( .a1(dur_cnt[0]), .a2(n65), .a3(n64), .a4(n63), .zn(n66) );
  oa01d0 U149 ( .a1(reset_from_master), .a2(n68), .b1(n67), .b2(n66), .zn(n220) );
  ao01d0 U150 ( .a1(dur_cnt[0]), .a2(n78), .b1(n225), .b2(n70), .zn(n219) );
  oa04d0 U151 ( .a1(n108), .a2(n74), .b(data_r[1]), .zn(n73) );
  ao06d0 U152 ( .a1(n74), .a2(n73), .b1(n74), .b2(n72), .c1(n73), .c2(n71), 
        .zn(n217) );
  oa05d0 U153 ( .a1(dur_cnt[3]), .a2(n75), .b(data_r[1]), .c(n79), .zn(n76) );
  oa04d0 U154 ( .a1(n78), .a2(n77), .b(n76), .zn(n216) );
  in01d0 U155 ( .i(dur_cnt[5]), .zn(n112) );
  ao07d0 U156 ( .a1(dur_cnt[4]), .a2(n81), .a3(n80), .b1(dur_cnt[5]), .b2(n81), 
        .zn(n82) );
  oa01d0 U157 ( .a1(n83), .a2(n112), .b1(n225), .b2(n82), .zn(n214) );
  nd02d0 U158 ( .a1(data_r[1]), .a2(n84), .zn(n86) );
  ao01d0 U159 ( .a1(dur_cnt[6]), .a2(n88), .b1(n86), .b2(n87), .zn(n213) );
  oa04d0 U160 ( .a1(n91), .a2(n87), .b(data_r[1]), .zn(n90) );
  ao06d0 U161 ( .a1(n91), .a2(n90), .b1(n91), .b2(n89), .c1(n90), .c2(n88), 
        .zn(n212) );
  fn03d0 U162 ( .a1(n94), .a2(n93), .b1(n93), .b2(n92), .zn(n210) );
  oa04d0 U163 ( .a1(ping_from_master), .a2(n95), .b(n96), .zn(n208) );
  oa04d0 U164 ( .a1(crc_en), .a2(n97), .b(n96), .zn(n207) );
  nd02d0 U165 ( .a1(low_dur_cnt[0]), .a2(n225), .zn(n101) );
  oa05d0 U166 ( .a1(data_r[1]), .a2(n98), .b(n102), .c(low_dur_cnt[1]), .zn(
        n100) );
  oa05d0 U167 ( .a1(low_dur_cnt[1]), .a2(n101), .b(n100), .c(n99), .zn(n206)
         );
  nd02d0 U168 ( .a1(low_dur_cnt[1]), .a2(low_dur_cnt[0]), .zn(n103) );
  fn04d0 U169 ( .a1(data_r[1]), .a2(n103), .b1(low_dur_cnt[2]), .b2(n102), 
        .zn(n204) );
  in01d0 U170 ( .i(clk_sync_cnt[0]), .zn(n104) );
  oa01d0 U171 ( .a1(n105), .a2(n111), .b1(n109), .b2(n104), .zn(n194) );
  oa01d0 U172 ( .a1(n108), .a2(n107), .b1(n106), .b2(n109), .zn(n192) );
  oa01d0 U173 ( .a1(n112), .a2(n111), .b1(n110), .b2(n109), .zn(n190) );
  in01d0 U174 ( .i(sample_data[2]), .zn(n228) );
  nd03d1 U175 ( .a1(n114), .a2(n113), .a3(n115), .zn(n118) );
  ckbuf2 U176 ( .i(n118), .z(n224) );
  oa01d0 U178 ( .a1(n228), .a2(n224), .b1(n126), .b2(n117), .zn(n188) );
  oa01d0 U179 ( .a1(n227), .a2(n224), .b1(n126), .b2(n116), .zn(n187) );
  in01d0 U180 ( .i(sample_data[3]), .zn(n229) );
  oa01d0 U181 ( .a1(n229), .a2(n224), .b1(n126), .b2(n119), .zn(n186) );
  oa01d0 U182 ( .a1(n230), .a2(n224), .b1(n126), .b2(n120), .zn(n185) );
  in01d0 U183 ( .i(sample_data[5]), .zn(n231) );
  oa01d0 U184 ( .a1(n231), .a2(n118), .b1(n126), .b2(n121), .zn(n184) );
  oa01d0 U186 ( .a1(n232), .a2(n118), .b1(n126), .b2(n122), .zn(n183) );
  in01d0 U187 ( .i(sample_data[7]), .zn(n235) );
  oa01d0 U188 ( .a1(n235), .a2(n118), .b1(n126), .b2(n123), .zn(n182) );
  oa01d0 U189 ( .a1(n234), .a2(n118), .b1(n126), .b2(n124), .zn(n181) );
  in01d0 U190 ( .i(rx_data[0]), .zn(n125) );
  oa01d0 U191 ( .a1(n118), .a2(n116), .b1(n126), .b2(n125), .zn(n180) );
  in01d0 U192 ( .i(rx_data[1]), .zn(n127) );
  oa01d0 U193 ( .a1(n118), .a2(n117), .b1(n126), .b2(n127), .zn(n179) );
  in01d0 U194 ( .i(rx_data[2]), .zn(n128) );
  oa01d0 U195 ( .a1(n224), .a2(n119), .b1(n126), .b2(n128), .zn(n178) );
  in01d0 U196 ( .i(rx_data[3]), .zn(n129) );
  oa01d0 U197 ( .a1(n224), .a2(n120), .b1(n126), .b2(n129), .zn(n177) );
  in01d0 U198 ( .i(rx_data[4]), .zn(n130) );
  oa01d0 U199 ( .a1(n224), .a2(n121), .b1(n126), .b2(n130), .zn(n176) );
  in01d0 U200 ( .i(rx_data[5]), .zn(n131) );
  oa01d0 U201 ( .a1(n224), .a2(n122), .b1(n126), .b2(n131), .zn(n175) );
  in01d0 U202 ( .i(rx_data[6]), .zn(n132) );
  oa01d0 U203 ( .a1(n224), .a2(n123), .b1(n126), .b2(n132), .zn(n174) );
  in01d0 U204 ( .i(rx_data[7]), .zn(n133) );
  oa01d0 U205 ( .a1(n224), .a2(n124), .b1(n126), .b2(n133), .zn(n173) );
  in01d0 U206 ( .i(rx_data[8]), .zn(n135) );
  oa01d0 U207 ( .a1(n224), .a2(n125), .b1(n126), .b2(n135), .zn(n172) );
  in01d0 U208 ( .i(rx_data[9]), .zn(n137) );
  oa01d0 U209 ( .a1(n224), .a2(n127), .b1(n126), .b2(n137), .zn(n171) );
  in01d0 U210 ( .i(rx_data[10]), .zn(n139) );
  oa01d0 U211 ( .a1(n224), .a2(n128), .b1(n126), .b2(n139), .zn(n170) );
  in01d0 U212 ( .i(rx_data[11]), .zn(n141) );
  oa01d0 U213 ( .a1(n224), .a2(n129), .b1(n126), .b2(n141), .zn(n169) );
  in01d0 U214 ( .i(rx_data[12]), .zn(n143) );
  oa01d0 U215 ( .a1(n224), .a2(n130), .b1(n126), .b2(n143), .zn(n168) );
  in01d0 U216 ( .i(rx_data[13]), .zn(n145) );
  oa01d0 U217 ( .a1(n224), .a2(n131), .b1(n126), .b2(n145), .zn(n167) );
  in01d0 U218 ( .i(rx_data[14]), .zn(n147) );
  oa01d0 U219 ( .a1(n224), .a2(n132), .b1(n126), .b2(n147), .zn(n166) );
  in01d0 U220 ( .i(rx_data[15]), .zn(n223) );
  oa01d0 U221 ( .a1(n224), .a2(n133), .b1(n126), .b2(n223), .zn(n165) );
  in01d0 U222 ( .i(rx_data[16]), .zn(n134) );
  oa01d0 U223 ( .a1(n224), .a2(n135), .b1(n126), .b2(n134), .zn(n164) );
  in01d0 U224 ( .i(rx_data[17]), .zn(n136) );
  oa01d0 U225 ( .a1(n224), .a2(n137), .b1(n126), .b2(n136), .zn(n163) );
  in01d0 U226 ( .i(rx_data[18]), .zn(n138) );
  oa01d0 U227 ( .a1(n224), .a2(n139), .b1(n126), .b2(n138), .zn(n162) );
  in01d0 U228 ( .i(rx_data[19]), .zn(n140) );
  oa01d0 U229 ( .a1(n224), .a2(n141), .b1(n126), .b2(n140), .zn(n161) );
  in01d0 U230 ( .i(rx_data[20]), .zn(n142) );
  oa01d0 U231 ( .a1(n224), .a2(n143), .b1(n126), .b2(n142), .zn(n160) );
  in01d0 U232 ( .i(rx_data[21]), .zn(n144) );
  oa01d0 U233 ( .a1(n224), .a2(n145), .b1(n126), .b2(n144), .zn(n159) );
  in01d0 U234 ( .i(rx_data[22]), .zn(n146) );
  oa01d0 U235 ( .a1(n224), .a2(n147), .b1(n126), .b2(n146), .zn(n158) );
  in01d0 U236 ( .i(rx_data[23]), .zn(n221) );
  oa01d0 U237 ( .a1(n224), .a2(n223), .b1(n126), .b2(n221), .zn(n157) );
  ao01d0 U238 ( .a1(n236), .a2(n225), .b1(n226), .b2(n233), .zn(n156) );
  ao01d0 U239 ( .a1(n236), .a2(n226), .b1(n227), .b2(n233), .zn(n155) );
  ao01d0 U240 ( .a1(n236), .a2(n227), .b1(n228), .b2(n233), .zn(n154) );
  ao01d0 U241 ( .a1(n236), .a2(n228), .b1(n229), .b2(n233), .zn(n153) );
  ao01d0 U242 ( .a1(n236), .a2(n229), .b1(n230), .b2(n233), .zn(n152) );
  ao01d0 U243 ( .a1(n236), .a2(n230), .b1(n231), .b2(n233), .zn(n151) );
  ao01d0 U244 ( .a1(n236), .a2(n231), .b1(n232), .b2(n233), .zn(n150) );
  ao01d0 U245 ( .a1(n236), .a2(n232), .b1(n235), .b2(n233), .zn(n149) );
  ao01d0 U246 ( .a1(n236), .a2(n235), .b1(n234), .b2(n233), .zn(n148) );
  nd02d4 U177 ( .a1(n224), .a2(n115), .zn(n126) );
endmodule


module fcp_crc_0 ( data_in, crc_en, crc_out, rst, clk );
  input [31:0] data_in;
  output [7:0] crc_out;
  input crc_en, rst, clk;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n14, n15, n16, n17,
         n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31,
         n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45,
         n46;

  dfntnb lfsr_q_reg_7_ ( .d(n46), .cp(clk), .q(crc_out[7]), .qn(n38) );
  dfntnb lfsr_q_reg_6_ ( .d(n45), .cp(clk), .q(crc_out[6]), .qn(n37) );
  dfntnb lfsr_q_reg_5_ ( .d(n44), .cp(clk), .q(crc_out[5]), .qn(n36) );
  dfntnb lfsr_q_reg_4_ ( .d(n43), .cp(clk), .q(crc_out[4]), .qn(n35) );
  dfntnb lfsr_q_reg_3_ ( .d(n42), .cp(clk), .q(crc_out[3]), .qn(n34) );
  dfntnb lfsr_q_reg_2_ ( .d(n41), .cp(clk), .q(crc_out[2]), .qn(n33) );
  dfntnb lfsr_q_reg_1_ ( .d(n40), .cp(clk), .q(crc_out[1]), .qn(n32) );
  dfntnb lfsr_q_reg_0_ ( .d(n39), .cp(clk), .q(crc_out[0]), .qn(n31) );
  fn01d0 U2 ( .a1(rst), .b1(crc_en), .zn(n30) );
  xn02d0 U3 ( .a1(data_in[4]), .a2(data_in[3]), .zn(n22) );
  xn02d0 U4 ( .a1(data_in[0]), .a2(n22), .zn(n17) );
  xn02d0 U5 ( .a1(data_in[5]), .a2(data_in[6]), .zn(n10) );
  fn03d0 U6 ( .a1(n33), .a2(n10), .b1(n10), .b2(n33), .zn(n1) );
  xn03d0 U7 ( .a1(n17), .a2(data_in[9]), .a3(n1), .zn(n2) );
  or02d0 U8 ( .a1(rst), .a2(crc_en), .z(n28) );
  oa01d1 U9 ( .a1(n30), .a2(n2), .b1(n31), .b2(n28), .zn(n39) );
  xo02d0 U10 ( .a1(data_in[8]), .a2(crc_out[1]), .z(n20) );
  xo02d0 U11 ( .a1(data_in[2]), .a2(n35), .z(n3) );
  xn03d0 U12 ( .a1(data_in[11]), .a2(n20), .a3(n3), .zn(n4) );
  xo02d0 U13 ( .a1(data_in[7]), .a2(n31), .z(n24) );
  xn03d0 U14 ( .a1(n10), .a2(n4), .a3(n24), .zn(n5) );
  oa01d1 U15 ( .a1(n30), .a2(n5), .b1(n28), .b2(n33), .zn(n41) );
  fn03d0 U16 ( .a1(data_in[1]), .a2(crc_out[7]), .b1(crc_out[7]), .b2(
        data_in[1]), .zn(n8) );
  xn02d0 U17 ( .a1(data_in[6]), .a2(data_in[2]), .zn(n6) );
  xn02d0 U18 ( .a1(data_in[3]), .a2(n6), .zn(n7) );
  xn03d0 U19 ( .a1(data_in[0]), .a2(n8), .a3(n7), .zn(n9) );
  oa01d1 U20 ( .a1(n30), .a2(n9), .b1(n28), .b2(n36), .zn(n44) );
  xn02d0 U21 ( .a1(data_in[4]), .a2(n24), .zn(n15) );
  xo03d1 U22 ( .a1(n34), .a2(data_in[1]), .a3(n10), .z(n11) );
  xn02d0 U23 ( .a1(n15), .a2(n11), .zn(n12) );
  oa01d1 U24 ( .a1(n30), .a2(n12), .b1(n32), .b2(n28), .zn(n40) );
  xn02d0 U28 ( .a1(n15), .a2(n14), .zn(n16) );
  oa01d1 U29 ( .a1(n30), .a2(n16), .b1(n34), .b2(n28), .zn(n42) );
  xn02d0 U30 ( .a1(data_in[1]), .a2(n17), .zn(n18) );
  xo02d0 U31 ( .a1(n37), .a2(n18), .z(n19) );
  xn02d0 U32 ( .a1(n20), .a2(n19), .zn(n21) );
  oa01d1 U33 ( .a1(n30), .a2(n21), .b1(n28), .b2(n35), .zn(n43) );
  xo02d0 U34 ( .a1(data_in[2]), .a2(n22), .z(n26) );
  fn03d0 U35 ( .a1(data_in[1]), .a2(n26), .b1(n26), .b2(data_in[1]), .zn(n23)
         );
  xn02d0 U36 ( .a1(n24), .a2(n23), .zn(n25) );
  oa01d1 U37 ( .a1(n30), .a2(n25), .b1(n28), .b2(n37), .zn(n45) );
  xo02d0 U38 ( .a1(n27), .a2(n26), .z(n29) );
  oa01d0 U39 ( .a1(n30), .a2(n29), .b1(n28), .b2(n38), .zn(n46) );
  xn03d0 U25 ( .a1(n27), .a2(n36), .a3(data_in[0]), .zn(n14) );
  xo02d0 U26 ( .a1(data_in[5]), .a2(n20), .z(n27) );
endmodule


module fcp_tx_ctrl ( clk, rstn, tx_en, tx_type, tx_data, data, tx_done );
  input [15:0] tx_data;
  input clk, rstn, tx_en, tx_type;
  output data, tx_done;
  wire   tx_en_r, tx_init, tx_start, N41, N42, N43, N44, N45, tx_type_reg,
         respond_rd, parity_value, crc_en, n124, n125, n126, n127, n128, n129,
         n130, n131, n132, n133, n134, n135, n136, n137, n138, n139, n141,
         n146, n147, n148, n149, n150, n151, n152, n153, n154, n155, n156,
         n157, n158, n159, n160, n161, n162, n163, n164, n2, n3, n4, n5, n6,
         n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48,
         n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62,
         n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76,
         n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90,
         n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103,
         n104, n105, n106, n107, n108, n109, n110, n111, n112, n113, n114,
         n115, n116;
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
  dfctnq tx_type_reg_reg ( .d(n162), .cp(clk), .cdn(rstn), .q(tx_type_reg) );
  dfctnq tx_cur_st_reg_0_ ( .d(n163), .cp(clk), .cdn(rstn), .q(tx_cur_st[0])
         );
  dfctnq tx_cur_st_reg_1_ ( .d(n164), .cp(clk), .cdn(rstn), .q(tx_cur_st[1])
         );
  dfctnq cycle_cnt_for_UI_reg_1_ ( .d(N42), .cp(clk), .cdn(rstn), .q(
        cycle_cnt_for_UI[1]) );
  dfctnq cycle_cnt_for_UI_reg_2_ ( .d(N43), .cp(clk), .cdn(rstn), .q(
        cycle_cnt_for_UI[2]) );
  dfctnq cycle_cnt_for_UI_reg_3_ ( .d(N44), .cp(clk), .cdn(rstn), .q(
        cycle_cnt_for_UI[3]) );
  dfctnq cycle_cnt_for_UI_reg_4_ ( .d(N45), .cp(clk), .cdn(rstn), .q(
        cycle_cnt_for_UI[4]) );
  dfctnq byte_cnt_reg_0_ ( .d(n160), .cp(clk), .cdn(rstn), .q(byte_cnt[0]) );
  dfctnq byte_cnt_reg_1_ ( .d(n161), .cp(clk), .cdn(rstn), .q(byte_cnt[1]) );
  dfctnq data_for_tx_reg_6_ ( .d(n148), .cp(clk), .cdn(rstn), .q(
        data_for_tx[6]) );
  dfctnq data_for_tx_reg_7_ ( .d(n155), .cp(clk), .cdn(rstn), .q(
        data_for_tx[7]) );
  dfctnq data_for_tx_reg_0_ ( .d(n154), .cp(clk), .cdn(rstn), .q(
        data_for_tx[0]) );
  dfctnq data_for_tx_reg_1_ ( .d(n153), .cp(clk), .cdn(rstn), .q(
        data_for_tx[1]) );
  dfctnq data_for_tx_reg_2_ ( .d(n152), .cp(clk), .cdn(rstn), .q(
        data_for_tx[2]) );
  dfctnq data_for_tx_reg_3_ ( .d(n151), .cp(clk), .cdn(rstn), .q(
        data_for_tx[3]) );
  dfctnq data_for_tx_reg_4_ ( .d(n150), .cp(clk), .cdn(rstn), .q(
        data_for_tx[4]) );
  dfctnq data_for_tx_reg_5_ ( .d(n149), .cp(clk), .cdn(rstn), .q(
        data_for_tx[5]) );
  dfctnq parity_value_reg ( .d(n159), .cp(clk), .cdn(rstn), .q(parity_value)
         );
  dfctnq cycle_cnt_for_quarter_UI_reg_2_ ( .d(n156), .cp(clk), .cdn(rstn), .q(
        cycle_cnt_for_quarter_UI[2]) );
  dfctnq cycle_cnt_for_UI_reg_0_ ( .d(N41), .cp(clk), .cdn(rstn), .q(
        cycle_cnt_for_UI[0]) );
  dfctnq cycle_cnt_for_quarter_UI_reg_0_ ( .d(n157), .cp(clk), .cdn(rstn), .q(
        cycle_cnt_for_quarter_UI[0]) );
  dfctnq cycle_cnt_for_quarter_UI_reg_1_ ( .d(n158), .cp(clk), .cdn(rstn), .q(
        cycle_cnt_for_quarter_UI[1]) );
  dfctnq data_reg ( .d(n147), .cp(clk), .cdn(rstn), .q(data) );
  dfctnq respond_rd_reg ( .d(n146), .cp(clk), .cdn(rstn), .q(respond_rd) );
  dfctnq tx_data_reg_reg_11_ ( .d(n141), .cp(clk), .cdn(rstn), .q(
        tx_data_reg[11]) );
  dfctnq tx_data_reg_reg_9_ ( .d(n139), .cp(clk), .cdn(rstn), .q(
        tx_data_reg[9]) );
  dfctnq tx_data_reg_reg_8_ ( .d(n138), .cp(clk), .cdn(rstn), .q(
        tx_data_reg[8]) );
  dfctnq tx_data_reg_reg_7_ ( .d(n137), .cp(clk), .cdn(rstn), .q(
        tx_data_reg[7]) );
  dfctnq tx_data_reg_reg_6_ ( .d(n136), .cp(clk), .cdn(rstn), .q(
        tx_data_reg[6]) );
  dfctnq tx_data_reg_reg_5_ ( .d(n135), .cp(clk), .cdn(rstn), .q(
        tx_data_reg[5]) );
  dfctnq tx_data_reg_reg_4_ ( .d(n134), .cp(clk), .cdn(rstn), .q(
        tx_data_reg[4]) );
  dfctnq tx_data_reg_reg_3_ ( .d(n133), .cp(clk), .cdn(rstn), .q(
        tx_data_reg[3]) );
  dfctnq tx_data_reg_reg_2_ ( .d(n132), .cp(clk), .cdn(rstn), .q(
        tx_data_reg[2]) );
  dfctnq tx_data_reg_reg_1_ ( .d(n131), .cp(clk), .cdn(rstn), .q(
        tx_data_reg[1]) );
  dfctnq tx_data_reg_reg_0_ ( .d(n130), .cp(clk), .cdn(rstn), .q(
        tx_data_reg[0]) );
  dfctnq UI_cnt_reg_1_ ( .d(n129), .cp(clk), .cdn(rstn), .q(UI_cnt[1]) );
  dfctnq UI_cnt_reg_0_ ( .d(n128), .cp(clk), .cdn(rstn), .q(UI_cnt[0]) );
  dfctnq UI_cnt_reg_2_ ( .d(n127), .cp(clk), .cdn(rstn), .q(UI_cnt[2]) );
  dfctnq UI_cnt_reg_3_ ( .d(n126), .cp(clk), .cdn(rstn), .q(UI_cnt[3]) );
  dfptnb num_of_quarter_UI_reg_0_ ( .d(n124), .cp(clk), .sdn(rstn), .q(
        num_of_quarter_UI[0]), .qn(n115) );
  dfptnb num_of_quarter_UI_reg_1_ ( .d(n125), .cp(clk), .sdn(rstn), .q(
        num_of_quarter_UI[1]) );
  nr03d2 U3 ( .a1(n49), .a2(tx_start), .a3(n47), .zn(n77) );
  oa04d1 U4 ( .a1(n46), .a2(n47), .b(n57), .zn(n82) );
  in01d0 U5 ( .i(n97), .zn(n42) );
  in01d0 U6 ( .i(n9), .zn(n138) );
  fn05d0 U7 ( .a1(tx_en), .b1(tx_en_r), .zn(tx_init) );
  in01d0 U8 ( .i(UI_cnt[2]), .zn(n103) );
  in01d0 U9 ( .i(UI_cnt[3]), .zn(n105) );
  in01d0 U12 ( .i(n47), .zn(n100) );
  nd03d0 U13 ( .a1(n100), .a2(UI_cnt[0]), .a3(UI_cnt[1]), .zn(n101) );
  nr03d2 U14 ( .a1(n103), .a2(n105), .a3(n101), .zn(tx_done) );
  in01d0 U15 ( .i(tx_type), .zn(n4) );
  in01d0 U16 ( .i(tx_start), .zn(n57) );
  nr02d0 U17 ( .a1(n4), .a2(n57), .zn(crc_en) );
  in01d0 U18 ( .i(cycle_cnt_for_quarter_UI[0]), .zn(n38) );
  in01d0 U19 ( .i(cycle_cnt_for_quarter_UI[2]), .zn(n39) );
  nr03d0 U20 ( .a1(n38), .a2(n39), .a3(cycle_cnt_for_quarter_UI[1]), .zn(n114)
         );
  in01d0 U21 ( .i(n114), .zn(n112) );
  nr03d0 U22 ( .a1(num_of_quarter_UI[1]), .a2(num_of_quarter_UI[0]), .a3(n112), 
        .zn(n108) );
  in01d0 U23 ( .i(byte_cnt[0]), .zn(n13) );
  in01d0 U24 ( .i(respond_rd), .zn(n56) );
  ao01d0 U25 ( .a1(respond_rd), .a2(byte_cnt[0]), .b1(n13), .b2(n56), .zn(n51)
         );
  in01d0 U26 ( .i(byte_cnt[1]), .zn(n48) );
  nr02d0 U27 ( .a1(n51), .a2(n48), .zn(n109) );
  in01d0 U28 ( .i(tx_cur_st[1]), .zn(n86) );
  nr02d0 U29 ( .a1(tx_cur_st[0]), .a2(n86), .zn(n3) );
  in01d0 U30 ( .i(tx_cur_st[0]), .zn(n85) );
  ao04d0 U31 ( .a1(crc_en), .a2(n85), .b(tx_cur_st[1]), .zn(n2) );
  ao08d0 U32 ( .a1(n108), .a2(n109), .a3(n3), .b(n2), .zn(n164) );
  nr04d0 U33 ( .a1(UI_cnt[2]), .a2(UI_cnt[0]), .a3(UI_cnt[1]), .a4(n105), .zn(
        n7) );
  nd03d0 U34 ( .a1(n100), .a2(tx_type_reg), .a3(n7), .zn(n52) );
  ao01d0 U35 ( .a1(tx_cur_st[0]), .a2(n52), .b1(n108), .b2(n85), .zn(n6) );
  in01d0 U36 ( .i(tx_done), .zn(n36) );
  ao07d0 U37 ( .a1(tx_start), .a2(n85), .a3(n4), .b1(tx_cur_st[0]), .b2(n36), 
        .zn(n5) );
  ao01d0 U38 ( .a1(tx_cur_st[1]), .a2(n6), .b1(n5), .b2(n86), .zn(n163) );
  nd02d0 U39 ( .a1(UI_cnt[0]), .a2(UI_cnt[1]), .zn(n88) );
  nd03d0 U40 ( .a1(tx_cur_st[1]), .a2(tx_cur_st[0]), .a3(n7), .zn(n98) );
  ao04d0 U41 ( .a1(n88), .a2(n98), .b(n47), .zn(n104) );
  ao04d0 U42 ( .a1(n100), .a2(UI_cnt[0]), .b(UI_cnt[1]), .zn(n8) );
  nr02d0 U43 ( .a1(n104), .a2(n8), .zn(n129) );
  nd02d2 U44 ( .a1(tx_type), .a2(tx_init), .zn(n97) );
  oa01d0 U45 ( .a1(n97), .a2(tx_data[8]), .b1(tx_data_reg[8]), .b2(n42), .zn(
        n9) );
  oa01d0 U46 ( .a1(n97), .a2(tx_data[9]), .b1(tx_data_reg[9]), .b2(n42), .zn(
        n10) );
  in01d0 U47 ( .i(n10), .zn(n139) );
  oa01d0 U48 ( .a1(n97), .a2(tx_data[11]), .b1(tx_data_reg[11]), .b2(n42), 
        .zn(n11) );
  in01d0 U49 ( .i(n11), .zn(n141) );
  nr02d0 U50 ( .a1(n52), .a2(n13), .zn(n12) );
  ao05d0 U51 ( .a1(n52), .a2(n13), .b(n12), .c(tx_init), .zn(n160) );
  in01d0 U52 ( .i(n12), .zn(n14) );
  nr03d0 U53 ( .a1(n52), .a2(n13), .a3(n48), .zn(n46) );
  ao05d0 U54 ( .a1(n48), .a2(n14), .b(n46), .c(tx_init), .zn(n161) );
  in01d0 U55 ( .i(data_for_tx[0]), .zn(n60) );
  in01d0 U56 ( .i(data_for_tx[3]), .zn(n70) );
  xo02d0 U57 ( .a1(n70), .a2(data_for_tx[2]), .z(n15) );
  xo03d1 U58 ( .a1(n60), .a2(data_for_tx[1]), .a3(n15), .z(n18) );
  in01d0 U59 ( .i(data_for_tx[4]), .zn(n73) );
  in01d0 U60 ( .i(data_for_tx[6]), .zn(n90) );
  xo02d0 U61 ( .a1(n90), .a2(data_for_tx[7]), .z(n16) );
  xo03d1 U62 ( .a1(n73), .a2(data_for_tx[5]), .a3(n16), .z(n17) );
  xo02d0 U63 ( .a1(n18), .a2(n17), .z(n20) );
  nd03d0 U64 ( .a1(n85), .a2(n163), .a3(n164), .zn(n19) );
  in01d0 U65 ( .i(n19), .zn(n27) );
  in01d0 U66 ( .i(parity_value), .zn(n89) );
  ao03d0 U67 ( .a1(n20), .a2(n27), .b1(n89), .b2(n19), .c(tx_init), .zn(n159)
         );
  nr02d0 U68 ( .a1(cycle_cnt_for_UI[1]), .a2(cycle_cnt_for_UI[0]), .zn(n21) );
  nr02d0 U69 ( .a1(n163), .a2(n164), .zn(n41) );
  in01d0 U70 ( .i(n41), .zn(n84) );
  nd03d0 U71 ( .a1(n112), .a2(n47), .a3(n84), .zn(n31) );
  ao05d0 U72 ( .a1(cycle_cnt_for_UI[0]), .a2(cycle_cnt_for_UI[1]), .b(n21), 
        .c(n31), .zn(N42) );
  in01d0 U73 ( .i(cycle_cnt_for_UI[2]), .zn(n23) );
  nd02d0 U74 ( .a1(cycle_cnt_for_UI[1]), .a2(cycle_cnt_for_UI[0]), .zn(n22) );
  nr02d0 U75 ( .a1(n23), .a2(n22), .zn(n34) );
  ao05d0 U76 ( .a1(n23), .a2(n22), .b(n34), .c(n31), .zn(N43) );
  nr02d0 U77 ( .a1(n114), .a2(tx_done), .zn(n25) );
  in01d0 U78 ( .i(n163), .zn(n83) );
  nd02d0 U79 ( .a1(n164), .a2(n83), .zn(n37) );
  in01d0 U80 ( .i(n164), .zn(n24) );
  nr04d0 U81 ( .a1(n114), .a2(tx_done), .a3(n163), .a4(n24), .zn(n35) );
  ao07d0 U82 ( .a1(n25), .a2(cycle_cnt_for_quarter_UI[0]), .a3(n37), .b1(n35), 
        .b2(n38), .zn(n26) );
  oa08d0 U83 ( .a1(tx_done), .a2(n27), .a3(n112), .b(n26), .zn(n157) );
  in01d0 U84 ( .i(cycle_cnt_for_UI[3]), .zn(n33) );
  in01d0 U85 ( .i(n34), .zn(n32) );
  nr02d0 U86 ( .a1(n33), .a2(n32), .zn(n30) );
  in01d0 U87 ( .i(cycle_cnt_for_UI[4]), .zn(n29) );
  in01d0 U88 ( .i(n30), .zn(n28) );
  ao03d0 U89 ( .a1(cycle_cnt_for_UI[4]), .a2(n30), .b1(n29), .b2(n28), .c(n31), 
        .zn(N45) );
  ao03d0 U90 ( .a1(cycle_cnt_for_UI[3]), .a2(n34), .b1(n33), .b2(n32), .c(n31), 
        .zn(N44) );
  in01d0 U91 ( .i(cycle_cnt_for_quarter_UI[1]), .zn(n43) );
  nd02d0 U92 ( .a1(cycle_cnt_for_quarter_UI[0]), .a2(n35), .zn(n44) );
  oa05d0 U93 ( .a1(n38), .a2(n37), .b(n112), .c(n36), .zn(n45) );
  oa07d0 U94 ( .a1(cycle_cnt_for_quarter_UI[2]), .a2(n43), .a3(n44), .b1(n45), 
        .b2(n39), .zn(n156) );
  nr03d0 U100 ( .a1(tx_data[8]), .a2(tx_data[9]), .a3(tx_data[11]), .zn(n40)
         );
  ao01d0 U101 ( .a1(n42), .a2(n40), .b1(n56), .b2(n97), .zn(n146) );
  ao04d0 U102 ( .a1(cycle_cnt_for_UI[0]), .a2(n112), .b(n41), .zn(N41) );
  or02d0 U104 ( .a1(tx_type_reg), .a2(n42), .z(n162) );
  ao01d0 U105 ( .a1(cycle_cnt_for_quarter_UI[1]), .a2(n45), .b1(n44), .b2(n43), 
        .zn(n158) );
  in01d0 U106 ( .i(data_for_tx[7]), .zn(n55) );
  in01d0 U107 ( .i(n52), .zn(n49) );
  nd02d0 U108 ( .a1(data_for_tx[6]), .a2(n77), .zn(n54) );
  nd03d0 U109 ( .a1(n49), .a2(n57), .a3(n48), .zn(n50) );
  oa07d2 U110 ( .a1(n56), .a2(byte_cnt[0]), .a3(n50), .b1(respond_rd), .b2(n57), .zn(n78) );
  nr04d2 U111 ( .a1(tx_start), .a2(byte_cnt[1]), .a3(n52), .a4(n51), .zn(n79)
         );
  ao01d0 U112 ( .a1(tx_data_reg[7]), .a2(n78), .b1(n79), .b2(crc_data[7]), 
        .zn(n53) );
  oa05d0 U113 ( .a1(n55), .a2(n82), .b(n54), .c(n53), .zn(n155) );
  nr02d0 U114 ( .a1(n57), .a2(n56), .zn(n67) );
  ao01d0 U115 ( .a1(data_for_tx[7]), .a2(n77), .b1(n67), .b2(tx_data_reg[8]), 
        .zn(n59) );
  ao01d0 U116 ( .a1(crc_data[0]), .a2(n79), .b1(tx_data_reg[0]), .b2(n78), 
        .zn(n58) );
  oa05d0 U117 ( .a1(n60), .a2(n82), .b(n59), .c(n58), .zn(n154) );
  in01d0 U118 ( .i(data_for_tx[1]), .zn(n63) );
  ao01d0 U119 ( .a1(data_for_tx[0]), .a2(n77), .b1(n67), .b2(tx_data_reg[9]), 
        .zn(n62) );
  ao01d0 U120 ( .a1(crc_data[1]), .a2(n79), .b1(tx_data_reg[1]), .b2(n78), 
        .zn(n61) );
  oa05d0 U121 ( .a1(n63), .a2(n82), .b(n62), .c(n61), .zn(n153) );
  in01d0 U122 ( .i(data_for_tx[2]), .zn(n66) );
  nd02d0 U123 ( .a1(data_for_tx[1]), .a2(n77), .zn(n65) );
  ao01d0 U124 ( .a1(crc_data[2]), .a2(n79), .b1(tx_data_reg[2]), .b2(n78), 
        .zn(n64) );
  oa05d0 U125 ( .a1(n66), .a2(n82), .b(n65), .c(n64), .zn(n152) );
  ao01d0 U126 ( .a1(data_for_tx[2]), .a2(n77), .b1(n67), .b2(tx_data_reg[11]), 
        .zn(n69) );
  ao01d0 U127 ( .a1(crc_data[3]), .a2(n79), .b1(tx_data_reg[3]), .b2(n78), 
        .zn(n68) );
  oa05d0 U128 ( .a1(n70), .a2(n82), .b(n69), .c(n68), .zn(n151) );
  nd02d0 U129 ( .a1(data_for_tx[3]), .a2(n77), .zn(n72) );
  ao01d0 U130 ( .a1(crc_data[4]), .a2(n79), .b1(tx_data_reg[4]), .b2(n78), 
        .zn(n71) );
  oa05d0 U131 ( .a1(n73), .a2(n82), .b(n72), .c(n71), .zn(n150) );
  in01d0 U132 ( .i(data_for_tx[5]), .zn(n76) );
  nd02d0 U133 ( .a1(data_for_tx[4]), .a2(n77), .zn(n75) );
  ao01d0 U134 ( .a1(crc_data[5]), .a2(n79), .b1(tx_data_reg[5]), .b2(n78), 
        .zn(n74) );
  oa05d0 U135 ( .a1(n76), .a2(n82), .b(n75), .c(n74), .zn(n149) );
  nd02d0 U136 ( .a1(data_for_tx[5]), .a2(n77), .zn(n81) );
  ao01d0 U137 ( .a1(crc_data[6]), .a2(n79), .b1(tx_data_reg[6]), .b2(n78), 
        .zn(n80) );
  oa05d0 U138 ( .a1(n90), .a2(n82), .b(n81), .c(n80), .zn(n148) );
  ao07d0 U139 ( .a1(n86), .a2(n85), .a3(n84), .b1(tx_cur_st[0]), .b2(n83), 
        .zn(n87) );
  nd02d0 U140 ( .a1(n112), .a2(n87), .zn(n96) );
  nr03d0 U141 ( .a1(UI_cnt[3]), .a2(n103), .a3(n88), .zn(n102) );
  in01d0 U142 ( .i(n102), .zn(n91) );
  nd03d0 U143 ( .a1(n100), .a2(n163), .a3(n164), .zn(n93) );
  ao03d0 U144 ( .a1(n91), .a2(n90), .b1(n102), .b2(n89), .c(n93), .zn(n92) );
  in01d0 U145 ( .i(n92), .zn(n95) );
  ao04d0 U146 ( .a1(data), .a2(n93), .b(n96), .zn(n94) );
  ao01d0 U147 ( .a1(data), .a2(n96), .b1(n95), .b2(n94), .zn(n147) );
  mx21d0 U148 ( .i0(tx_data[7]), .i1(tx_data_reg[7]), .s(n97), .z(n137) );
  mx21d0 U149 ( .i0(tx_data[6]), .i1(tx_data_reg[6]), .s(n97), .z(n136) );
  mx21d0 U150 ( .i0(tx_data[5]), .i1(tx_data_reg[5]), .s(n97), .z(n135) );
  mx21d0 U151 ( .i0(tx_data[4]), .i1(tx_data_reg[4]), .s(n97), .z(n134) );
  mx21d0 U152 ( .i0(tx_data[3]), .i1(tx_data_reg[3]), .s(n97), .z(n133) );
  mx21d0 U153 ( .i0(tx_data[2]), .i1(tx_data_reg[2]), .s(n97), .z(n132) );
  mx21d0 U154 ( .i0(tx_data[1]), .i1(tx_data_reg[1]), .s(n97), .z(n131) );
  mx21d0 U155 ( .i0(tx_data[0]), .i1(tx_data_reg[0]), .s(n97), .z(n130) );
  nd02d0 U156 ( .a1(n100), .a2(n98), .zn(n106) );
  in01d0 U157 ( .i(UI_cnt[0]), .zn(n99) );
  ao01d0 U158 ( .a1(UI_cnt[0]), .a2(n100), .b1(n106), .b2(n99), .zn(n128) );
  ao01d0 U159 ( .a1(UI_cnt[2]), .a2(n104), .b1(n101), .b2(n103), .zn(n127) );
  ao04d0 U160 ( .a1(UI_cnt[3]), .a2(n103), .b(n102), .zn(n107) );
  oa01d0 U161 ( .a1(n107), .a2(n106), .b1(n105), .b2(n104), .zn(n126) );
  ao14d0 U162 ( .a1(n112), .a2(num_of_quarter_UI[1]), .b(n108), .z(n125) );
  nr02d0 U163 ( .a1(n109), .a2(data_for_tx[7]), .zn(n111) );
  nd02d0 U164 ( .a1(parity_value), .a2(n111), .zn(n110) );
  oa05d0 U165 ( .a1(parity_value), .a2(n111), .b(num_of_quarter_UI[1]), .c(
        n110), .zn(n113) );
  ao07d0 U166 ( .a1(n114), .a2(num_of_quarter_UI[0]), .a3(n113), .b1(n112), 
        .b2(n115), .zn(n124) );
  nd03d0 U10 ( .a1(cycle_cnt_for_UI[4]), .a2(cycle_cnt_for_UI[2]), .a3(n116), 
        .zn(n47) );
  nr03d0 U11 ( .a1(cycle_cnt_for_UI[3]), .a2(cycle_cnt_for_UI[0]), .a3(
        cycle_cnt_for_UI[1]), .zn(n116) );
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
         tx_ongoing_d0, N101, tx_ongoing_d1, tx_ongoing_d2, n1, n2, n11, n12,
         n42, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n57, n62,
         n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n3,
         n4, n5, n6, n7, n8, n9, n10, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n35, n36, n37, n38, n39, n40, n41, n43, n44, n56, n58, n59, n60, n61;
  wire   [6:0] cycle_cnt_after_ping;
  wire   [15:0] tx_data;
  tri   data;

  fcp_rx_ctrl U_RX_CTRL ( .clk(clk), .rstn(rstn), .data(data), .rx_own_bus(n75), .ping_from_master(ping_from_master), .reset_from_master(reset_from_master), 
        .par_error(par_error), .rx_data(rx_data), .rx_data_valid(rx_data_valid) );
  fcp_tx_ctrl U_TX_CTRL ( .clk(clk), .rstn(rstn), .tx_en(tx_en), .tx_type(
        tx_type), .tx_data({1'b0, 1'b0, 1'b0, 1'b0, tx_data[11], 1'b0, 
        tx_data[9:0]}), .data(data_out), .tx_done(tx_done) );
  dfctnq tx_ongoing_d1_reg ( .d(tx_ongoing_d0), .cp(clk), .cdn(rstn), .q(
        tx_ongoing_d1) );
  dfctnq tx_ongoing_d2_reg ( .d(tx_ongoing_d1), .cp(clk), .cdn(rstn), .q(
        tx_ongoing_d2) );
  dfctnq after_mst_ping_reg ( .d(n74), .cp(clk), .cdn(rstn), .q(after_mst_ping) );
  dfctnq cycle_cnt_after_ping_reg_1_ ( .d(n72), .cp(clk), .cdn(rstn), .q(
        cycle_cnt_after_ping[1]) );
  dfctnq cycle_cnt_after_ping_reg_2_ ( .d(n70), .cp(clk), .cdn(rstn), .q(
        cycle_cnt_after_ping[2]) );
  dfctnq cycle_cnt_after_ping_reg_3_ ( .d(n69), .cp(clk), .cdn(rstn), .q(
        cycle_cnt_after_ping[3]) );
  dfctnq cycle_cnt_after_ping_reg_4_ ( .d(n68), .cp(clk), .cdn(rstn), .q(
        cycle_cnt_after_ping[4]) );
  dfctnq cycle_cnt_after_ping_reg_5_ ( .d(n67), .cp(clk), .cdn(rstn), .q(
        cycle_cnt_after_ping[5]) );
  dfctnq cycle_cnt_after_ping_reg_6_ ( .d(n66), .cp(clk), .cdn(rstn), .q(
        cycle_cnt_after_ping[6]) );
  dfctnq slv_request_after_ping_reg ( .d(n62), .cp(clk), .cdn(rstn), .q(
        slv_request_after_ping) );
  dfctnq tx_ongoing_window_reg ( .d(n73), .cp(clk), .cdn(rstn), .q(
        tx_ongoing_window) );
  dfctnq tx_en_reg ( .d(N21), .cp(clk), .cdn(rstn), .q(tx_en) );
  dfctnq cycle_cnt_after_ping_reg_0_ ( .d(n71), .cp(clk), .cdn(rstn), .q(
        cycle_cnt_after_ping[0]) );
  dfctnq mst_request_after_slv_ping_reg ( .d(n65), .cp(clk), .cdn(rstn), .q(
        mst_request_after_slv_ping) );
  dfctnq tx_type_reg ( .d(n64), .cp(clk), .cdn(rstn), .q(tx_type) );
  dfctnq tx_en_flag_reg ( .d(n63), .cp(clk), .cdn(rstn), .q(tx_en_flag) );
  dfctnq tx_ongoing_d0_reg ( .d(N101), .cp(clk), .cdn(rstn), .q(tx_ongoing_d0)
         );
  dfctnq tx_data_reg_11_ ( .d(n57), .cp(clk), .cdn(rstn), .q(tx_data[11]) );
  dfctnq tx_data_reg_9_ ( .d(n55), .cp(clk), .cdn(rstn), .q(tx_data[9]) );
  dfctnq tx_data_reg_8_ ( .d(n54), .cp(clk), .cdn(rstn), .q(tx_data[8]) );
  dfctnq tx_data_reg_7_ ( .d(n53), .cp(clk), .cdn(rstn), .q(tx_data[7]) );
  dfctnq tx_data_reg_6_ ( .d(n52), .cp(clk), .cdn(rstn), .q(tx_data[6]) );
  dfctnq tx_data_reg_5_ ( .d(n51), .cp(clk), .cdn(rstn), .q(tx_data[5]) );
  dfctnq tx_data_reg_4_ ( .d(n50), .cp(clk), .cdn(rstn), .q(tx_data[4]) );
  dfctnq tx_data_reg_3_ ( .d(n49), .cp(clk), .cdn(rstn), .q(tx_data[3]) );
  dfctnq tx_data_reg_2_ ( .d(n48), .cp(clk), .cdn(rstn), .q(tx_data[2]) );
  dfctnq tx_data_reg_1_ ( .d(n47), .cp(clk), .cdn(rstn), .q(tx_data[1]) );
  dfctnq tx_data_reg_0_ ( .d(n46), .cp(clk), .cdn(rstn), .q(tx_data[0]) );
  oa05d0 U46 ( .a1(n11), .a2(n42), .b(data), .c(n45), .zn(n12) );
  it01d1 data_tri ( .i(n1), .oe(n2), .zn(data) );
  in01d0 U3 ( .i(n21), .zn(n4) );
  in01d0 U4 ( .i(n29), .zn(n28) );
  in01d0 U5 ( .i(n7), .zn(n64) );
  in01d0 U6 ( .i(data_out), .zn(n1) );
  nd02d0 U7 ( .a1(tx_ongoing_window), .a2(tx_ongoing_d2), .zn(n75) );
  in01d0 U8 ( .i(cycle_cnt_after_ping[3]), .zn(n40) );
  in01d0 U9 ( .i(cycle_cnt_after_ping[4]), .zn(n31) );
  nr02d0 U10 ( .a1(cycle_cnt_after_ping[6]), .a2(cycle_cnt_after_ping[5]), 
        .zn(n3) );
  nr02d0 U11 ( .a1(cycle_cnt_after_ping[1]), .a2(cycle_cnt_after_ping[0]), 
        .zn(n21) );
  nd03d0 U12 ( .a1(cycle_cnt_after_ping[4]), .a2(cycle_cnt_after_ping[2]), 
        .a3(n4), .zn(n39) );
  oa05d0 U13 ( .a1(n40), .a2(n31), .b(n3), .c(n39), .zn(n45) );
  in01d0 U14 ( .i(cycle_cnt_after_ping[5]), .zn(n42) );
  in01d0 U15 ( .i(n75), .zn(n2) );
  an02d0 U16 ( .a1(cycle_cnt_after_ping[1]), .a2(cycle_cnt_after_ping[0]), .z(
        n20) );
  nd02d0 U17 ( .a1(cycle_cnt_after_ping[2]), .a2(n20), .zn(n22) );
  nd02d0 U18 ( .a1(n31), .a2(n40), .zn(n8) );
  nr02d0 U19 ( .a1(cycle_cnt_after_ping[2]), .a2(n8), .zn(n43) );
  nr03d0 U20 ( .a1(cycle_cnt_after_ping[6]), .a2(cycle_cnt_after_ping[5]), 
        .a3(n4), .zn(n14) );
  in01d0 U21 ( .i(cycle_cnt_after_ping[2]), .zn(n19) );
  nd02d0 U22 ( .a1(cycle_cnt_after_ping[6]), .a2(cycle_cnt_after_ping[5]), 
        .zn(n41) );
  nr04d0 U23 ( .a1(n8), .a2(n4), .a3(n19), .a4(n41), .zn(n60) );
  nr02d0 U24 ( .a1(tx_done), .a2(ping_from_master), .zn(n27) );
  in01d0 U25 ( .i(n27), .zn(n5) );
  ao05d0 U26 ( .a1(n43), .a2(n14), .b(n60), .c(n5), .zn(n29) );
  oa05d0 U27 ( .a1(cycle_cnt_after_ping[2]), .a2(n20), .b(n22), .c(n29), .zn(
        n6) );
  in01d0 U28 ( .i(n6), .zn(n70) );
  nr02d2 U29 ( .a1(mst_request_after_slv_ping), .a2(pl_tx_en), .zn(n61) );
  ao01d0 U30 ( .a1(pl_tx_en), .a2(pl_tx_type), .b1(n61), .b2(tx_type), .zn(n7)
         );
  in01d0 U31 ( .i(n8), .zn(n11) );
  in01d0 U32 ( .i(after_mst_ping), .zn(n38) );
  in01d0 U33 ( .i(mst_request_after_slv_ping), .zn(n36) );
  an04d0 U34 ( .a1(n42), .a2(n36), .a3(n11), .a4(cycle_cnt_after_ping[1]), .z(
        n10) );
  in01d0 U35 ( .i(cycle_cnt_after_ping[6]), .zn(n34) );
  nd03d0 U36 ( .a1(cycle_cnt_after_ping[5]), .a2(cycle_cnt_after_ping[4]), 
        .a3(n34), .zn(n32) );
  nr03d0 U37 ( .a1(cycle_cnt_after_ping[1]), .a2(n40), .a3(n32), .zn(n9) );
  ao07d0 U38 ( .a1(cycle_cnt_after_ping[6]), .a2(n38), .a3(n10), .b1(
        after_mst_ping), .b2(n9), .zn(n18) );
  in01d0 U39 ( .i(n41), .zn(n13) );
  nd03d0 U40 ( .a1(n13), .a2(n43), .a3(n20), .zn(n16) );
  nd04d0 U41 ( .a1(cycle_cnt_after_ping[4]), .a2(cycle_cnt_after_ping[2]), 
        .a3(n14), .a4(n40), .zn(n15) );
  oa05d0 U42 ( .a1(slv_request_after_ping), .a2(n16), .b(tx_ongoing_window), 
        .c(n15), .zn(n17) );
  oa08d0 U43 ( .a1(cycle_cnt_after_ping[0]), .a2(n19), .a3(n18), .b(n17), .zn(
        n73) );
  nr03d0 U44 ( .a1(n21), .a2(n20), .a3(n28), .zn(n72) );
  nr02d0 U45 ( .a1(n40), .a2(n22), .zn(n23) );
  ao05d0 U47 ( .a1(n40), .a2(n22), .b(n23), .c(n28), .zn(n69) );
  in01d0 U48 ( .i(n23), .zn(n30) );
  ao03d0 U49 ( .a1(cycle_cnt_after_ping[4]), .a2(n23), .b1(n31), .b2(n30), .c(
        n28), .zn(n68) );
  nd02d0 U50 ( .a1(n29), .a2(n23), .zn(n33) );
  oa05d0 U51 ( .a1(n31), .a2(n30), .b(cycle_cnt_after_ping[5]), .c(n29), .zn(
        n24) );
  oa08d0 U52 ( .a1(cycle_cnt_after_ping[5]), .a2(n31), .a3(n33), .b(n24), .zn(
        n67) );
  nd02d0 U54 ( .a1(tx_en_flag), .a2(n45), .zn(n56) );
  fn05d0 U55 ( .a1(tx_ongoing_window), .b1(n56), .zn(N21) );
  in01d0 U56 ( .i(slv_request_after_ping), .zn(n59) );
  oa03d0 U57 ( .a1(cycle_cnt_after_ping[5]), .a2(cycle_cnt_after_ping[4]), 
        .b1(n42), .b2(n43), .c(n59), .zn(n25) );
  oa14d0 U58 ( .a1(n34), .a2(n25), .b(tx_ongoing_window), .z(N101) );
  in01d0 U59 ( .i(ping_from_master), .zn(n26) );
  oa04d0 U60 ( .a1(n60), .a2(n38), .b(n26), .zn(n74) );
  oa04d0 U61 ( .a1(cycle_cnt_after_ping[0]), .a2(n28), .b(n27), .zn(n71) );
  oa08d0 U62 ( .a1(n31), .a2(n42), .a3(n30), .b(n29), .zn(n35) );
  oa01d0 U63 ( .a1(n35), .a2(n34), .b1(n33), .b2(n32), .zn(n66) );
  oa01d0 U64 ( .a1(n60), .a2(n36), .b1(cycle_cnt_after_ping[6]), .b2(n12), 
        .zn(n65) );
  in01d0 U65 ( .i(tx_en), .zn(n37) );
  ao14d0 U66 ( .a1(n37), .a2(tx_en_flag), .b(pl_tx_en), .z(n63) );
  oa08d0 U67 ( .a1(n40), .a2(n42), .a3(n39), .b(n38), .zn(n44) );
  oa01d0 U68 ( .a1(cycle_cnt_after_ping[6]), .a2(n44), .b1(n43), .b2(n41), 
        .zn(n58) );
  oa01d0 U69 ( .a1(n60), .a2(n59), .b1(n58), .b2(n56), .zn(n62) );
  mx21d0 U70 ( .i0(pl_tx_data[11]), .i1(tx_data[11]), .s(n61), .z(n57) );
  mx21d0 U71 ( .i0(pl_tx_data[9]), .i1(tx_data[9]), .s(n61), .z(n55) );
  mx21d0 U72 ( .i0(pl_tx_data[8]), .i1(tx_data[8]), .s(n61), .z(n54) );
  mx21d0 U73 ( .i0(pl_tx_data[7]), .i1(tx_data[7]), .s(n61), .z(n53) );
  mx21d0 U74 ( .i0(pl_tx_data[6]), .i1(tx_data[6]), .s(n61), .z(n52) );
  mx21d0 U75 ( .i0(pl_tx_data[5]), .i1(tx_data[5]), .s(n61), .z(n51) );
  mx21d0 U76 ( .i0(pl_tx_data[4]), .i1(tx_data[4]), .s(n61), .z(n50) );
  mx21d0 U77 ( .i0(pl_tx_data[3]), .i1(tx_data[3]), .s(n61), .z(n49) );
  mx21d0 U78 ( .i0(pl_tx_data[2]), .i1(tx_data[2]), .s(n61), .z(n48) );
  mx21d0 U79 ( .i0(pl_tx_data[1]), .i1(tx_data[1]), .s(n61), .z(n47) );
  mx21d0 U80 ( .i0(pl_tx_data[0]), .i1(tx_data[0]), .s(n61), .z(n46) );
endmodule


module fcp_core ( clk, rstn, is_support_12v, out_volt, data );
  output [1:0] out_volt;
  input clk, rstn, is_support_12v;
  inout data;
  wire   ping_from_master, reset_from_master, par_error, rx_data_valid,
         tx_done, pl_tx_en, pl_tx_type, SYNOPSYS_UNCONNECTED_1,
         SYNOPSYS_UNCONNECTED_2, SYNOPSYS_UNCONNECTED_3,
         SYNOPSYS_UNCONNECTED_4, SYNOPSYS_UNCONNECTED_5;
  wire   [23:0] rx_data;
  wire   [11:0] pl_tx_data;
  tri   data;

  fcp_logical_layer U_FCP_LOGICAL_LAYER ( .clk(clk), .rstn(rstn), 
        .is_support_12v(is_support_12v), .ping_from_master(ping_from_master), 
        .reset_from_master(reset_from_master), .crc_error(1'b0), .par_error(
        par_error), .rx_data(rx_data), .rx_data_valid(rx_data_valid), 
        .tx_done(tx_done), .pl_tx_en(pl_tx_en), .pl_tx_type(pl_tx_type), 
        .pl_tx_data({SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2, 
        SYNOPSYS_UNCONNECTED_3, SYNOPSYS_UNCONNECTED_4, pl_tx_data[11], 
        SYNOPSYS_UNCONNECTED_5, pl_tx_data[9:0]}), .out_volt(out_volt) );
  fcp_physical_layer U_FCP_PYSICAL_LAYER ( .clk(clk), .rstn(rstn), .pl_tx_en(
        pl_tx_en), .pl_tx_type(pl_tx_type), .pl_tx_data({1'b0, 1'b0, 1'b0, 
        1'b0, pl_tx_data[11], 1'b0, pl_tx_data[9:0]}), .ping_from_master(
        ping_from_master), .reset_from_master(reset_from_master), .par_error(
        par_error), .rx_data(rx_data), .rx_data_valid(rx_data_valid), 
        .tx_done(tx_done), .data(data) );
endmodule


