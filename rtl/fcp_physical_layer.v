`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:12:21 08/12/2017
// Design Name: 
// Module Name:    fcp physical layer
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////

/*=================================================================================================================================================
Symbol     |Parameter                       |Condition              |Min.    |Typ.    |Max.    |Unit            |Notes
-----------|--------------------------------|-----------------------|--------|--------|--------|----------------|----------------------------------
tRISE      |Rise time                       |10% - 90%              |        |1       |3.6     |μs              |½ clock based on 125 kHz Osc.
-----------|--------------------------------|-----------------------|--------|--------|--------|----------------|----------------------------------
tFALL      |Fall time                       |90% - 10%              |        |1       |3.6     |μs              |
-----------|--------------------------------|-----------------------|--------|--------|--------|----------------|----------------------------------
UI         |Unit Interval for               |125 kHz clock assumed  |144     |160     |176     |μs              |20 * 1/125 kHz ± 10%
           |FCP PHY communication           |                       |        |        |        |                |
-----------|--------------------------------|-----------------------|--------|--------|--------|----------------|----------------------------------
NRETRY     |Number of retries of            |RLOAD=15kΩ             |        |5       |        |tPING +tWAIT_F  |
           |first ping sequence             |                       |        |        |        |                |
-----------|--------------------------------|-----------------------|--------|--------|--------|----------------|----------------------------------
tB         |Data transfer bit rate          |                       |        |1       |        |UI              |
-----------|--------------------------------|-----------------------|--------|--------|--------|----------------|----------------------------------
tB/4       |1/4 UI sync pulses              |                       |        |0.25    |        |UI              |
-----------|--------------------------------|-----------------------|--------|--------|--------|----------------|----------------------------------
tPSLV      |Slave Ping Duration             |                       |        |16      |        |UI              |
-----------|--------------------------------|-----------------------|--------|--------|--------|----------------|----------------------------------
tPMST      |Master Ping Duration            |                       |        |16      |        |UI              |
-----------|--------------------------------|-----------------------|--------|--------|--------|----------------|----------------------------------
tMREQ      |Master Request Window.          |                       |1       |        |2       |UI              |
           |Duration from completion        |                       |        |        |        |                |
           |of slave ping.                  |                       |        |        |        |                |
-----------|--------------------------------|-----------------------|--------|--------|--------|----------------|----------------------------------
tSREQ      |Slave Request Window.           |                       |3       |        |5       |UI              |
           |Duration from completion        |                       |        |        |        |                |
           |of slave ping.                  |                       |        |        |        |                |
-----------|--------------------------------|-----------------------|--------|--------|--------|----------------|----------------------------------
tWAIT_F    |Wait time before                |                       |5       |        |        |UI              |
           |declaring failure.              |                       |        |        |        |                |
-----------|--------------------------------|-----------------------|--------|--------|--------|----------------|----------------------------------
tWAIT      |Wait time between               |                       |1       |        |5       |UI              |
           |transactions                    |                       |        |        |        |                |
-----------|--------------------------------|-----------------------|--------|--------|--------|----------------|----------------------------------
tFC_LOW    |Time transmitter must           |                       |        |        |1       |UI              |
           |actively drive the bus low      |                       |        |        |        |                |
           |after completing a transmission |                       |        |        |        |                |
-----------|--------------------------------|-----------------------|--------|--------|--------|----------------|----------------------------------
tVDP_SRC_ON|Time VDP_SRC is enabled         |                       |40      |60      |80      |ms              |Follows BC1.2 timing
           |after attach                    |                       |        |        |        |                |
-----------|--------------------------------|-----------------------|--------|--------|--------|----------------|----------------------------------
tSTART     |Transmitter is starting         |                       |        |1       |        |UI              |
           |data transmission               |                       |        |        |        |                |
-----------|--------------------------------|-----------------------|--------|--------|--------|----------------|----------------------------------
tRESET     |Master reset pulse duration     |                       |        |100     |        |UI              |
=================================================================================================================================================*/

module fcp_physical_layer (
    clk,
    rstn,
    // I
    pl_tx_en,
    pl_tx_type,
    pl_tx_data,
    // O
    ping_from_master,
    reset_from_master,
    crc_error,
    par_error,
    rx_data,
    rx_data_valid,
    tx_done,
    // IO
    data
);

//================================
// IO ports
//================================
input               clk;
input               rstn;
input               pl_tx_en;
input               pl_tx_type;
input       [15:0]  pl_tx_data;

output              ping_from_master;
output              reset_from_master;
output              crc_error;
output              par_error;
output      [23:0]  rx_data;
output              rx_data_valid;
output              tx_done;

inout               data;

parameter MULT_125K     = 8;
parameter UI_CYCLE      = 20*MULT_125K;

localparam RW_IDLE         = 2'b00;
localparam RW_STATE0       = 2'b01;
localparam RW_STATE1       = 2'b10;
localparam RW_STATE2       = 2'b11;

//================================
// Signals
//================================
reg         tx_ongoing_window;
reg         tx_ongoing_d0;
reg         tx_ongoing_d1;
reg         tx_ongoing_d2;
wire        out_en;
wire        data_out;
wire        data_in;
reg         tx_en_flag;
reg         tx_en;
reg         tx_type;
reg [15:0]  tx_data;
reg [31:0]  cycle_cnt_after_ping;
reg         after_mst_ping;
reg         mst_request_after_slv_ping;
reg         slv_request_after_ping;

//========================================================================================
//========================================================================================
//              Main
//========================================================================================
//========================================================================================
// For inout port
assign data     = out_en ? data_out : 1'bz;
assign data_in  = data;

always @(posedge clk or negedge rstn) begin
    if (!rstn) begin
        tx_en_flag <= 1'b0;
    end else if (pl_tx_en) begin
        tx_en_flag <= 1'b1;
    end else if (tx_en) begin
        tx_en_flag <= 1'b0;
    end
end

always @(posedge clk or negedge rstn) begin
    if (!rstn) begin
        tx_en <= 1'b0;
    end else if (tx_en_flag & tx_ongoing_window & cycle_cnt_after_ping>UI_CYCLE) begin
        tx_en <= 1'b1;
    end else begin
        tx_en <= 1'b0;
    end
end

always @(posedge clk or negedge rstn) begin
    if (!rstn) begin
        tx_type <= 1'b0;
        tx_data <= 16'b0;
    end else if (pl_tx_en) begin
        tx_type <= pl_tx_type;
        tx_data <= pl_tx_data;
    end else if (mst_request_after_slv_ping) begin
        tx_type <= 1'b0;
        tx_data <= pl_tx_data;
    end
end

// 1 UI = 20 cycle, cnt 5 UI
always @(posedge clk or negedge rstn) begin
    if (!rstn) begin
        cycle_cnt_after_ping <= 32'b0;
    end else if (ping_from_master | tx_done) begin
        cycle_cnt_after_ping <= 32'b1;
    end else if (cycle_cnt_after_ping == UI_CYCLE*5) begin
        cycle_cnt_after_ping <= 32'b0;
    end else if (|cycle_cnt_after_ping) begin
        cycle_cnt_after_ping <= cycle_cnt_after_ping + 32'b1;
    end
end

always @(posedge clk or negedge rstn) begin
    if (!rstn) begin
        after_mst_ping <= 1'b0;
    end else if (ping_from_master) begin
        after_mst_ping <= 1'b1;
    end else if (cycle_cnt_after_ping == UI_CYCLE*5) begin
        after_mst_ping <= 1'b0;
    end
end

always @(posedge clk or negedge rstn) begin
    if (!rstn) begin
        mst_request_after_slv_ping <= 1'b0;
    end else if (data_in & (cycle_cnt_after_ping>UI_CYCLE && cycle_cnt_after_ping<UI_CYCLE*2)) begin
        mst_request_after_slv_ping <= 1'b1;
    end else if (cycle_cnt_after_ping == UI_CYCLE*5) begin
        mst_request_after_slv_ping <= 1'b0;
    end
end

assign after_mst_ping_slv_req = tx_en_flag & (after_mst_ping && cycle_cnt_after_ping>UI_CYCLE && cycle_cnt_after_ping<UI_CYCLE*5);
assign after_slv_ping_slv_req = tx_en_flag & (!after_mst_ping && cycle_cnt_after_ping>UI_CYCLE*3 && cycle_cnt_after_ping<UI_CYCLE*5);
always @(posedge clk or negedge rstn) begin
    if (!rstn) begin
        slv_request_after_ping <= 1'b0;
    end else if (after_mst_ping_slv_req | after_slv_ping_slv_req) begin
        slv_request_after_ping <= 1'b1;
    end else if (cycle_cnt_after_ping == UI_CYCLE*5) begin
        slv_request_after_ping <= 1'b0;
    end
end

always @(posedge clk or negedge rstn) begin
    if (!rstn) begin
        tx_ongoing_window <= 1'b0;
    end else if (cycle_cnt_after_ping == UI_CYCLE) begin
        tx_ongoing_window <= 1'b0;
    end else if (cycle_cnt_after_ping == UI_CYCLE*3 & after_mst_ping) begin
        tx_ongoing_window <= 1'b1;
    end else if (cycle_cnt_after_ping == UI_CYCLE*3.5 & !after_mst_ping & !mst_request_after_slv_ping) begin
        tx_ongoing_window <= 1'b1;
    end else if (cycle_cnt_after_ping == UI_CYCLE*5 & !slv_request_after_ping) begin
        tx_ongoing_window <= 1'b0;
    end
end

always @(posedge clk or negedge rstn) begin
    if (!rstn) begin
        tx_ongoing_d0 <= 1'b0;
    end else if (tx_ongoing_window==1'b0) begin
        tx_ongoing_d0 <= 1'b0;
    end else if (!slv_request_after_ping & (cycle_cnt_after_ping>=UI_CYCLE*4 & cycle_cnt_after_ping<=UI_CYCLE*5)) begin
        tx_ongoing_d0 <= 1'b0;
    end else begin
        tx_ongoing_d0 <= tx_ongoing_window;
    end
end

always @(posedge clk or negedge rstn) begin
    if (!rstn) begin
        {tx_ongoing_d2, tx_ongoing_d1} <= 2'b0;
    end else begin
        {tx_ongoing_d2, tx_ongoing_d1} <= {tx_ongoing_d1, tx_ongoing_d0};
    end
end

assign out_en = tx_ongoing_window & tx_ongoing_d2;
assign rd_en  = ~out_en;

// UI = 20 clock cycle
//========================================================================================
//========================================================================================
//              Rx
//========================================================================================
//========================================================================================
fcp_rx_ctrl #(.UI_CYCLE(UI_CYCLE)) U_RX_CTRL (
    // I
     .clk               (clk)
    ,.rstn              (rstn)
    ,.data              (data_in)
    ,.rx_own_bus        (rd_en)
    // O
    ,.ping_from_master  (ping_from_master)
    ,.reset_from_master (reset_from_master)
    ,.crc_error         (crc_error)
    ,.par_error         (par_error)
    ,.rx_data           (rx_data)
    ,.rx_data_valid     (rx_data_valid)
);

//========================================================================================
//========================================================================================
//              Tx
//========================================================================================
//========================================================================================
fcp_tx_ctrl #(.UI_CYCLE(UI_CYCLE)) U_TX_CTRL (
    // I
     .clk       (clk)
    ,.rstn      (rstn)
    ,.tx_en     (tx_en)
    ,.tx_type   (tx_type)
    ,.tx_data   (tx_data)
    // O
    ,.data      (data_out)
    ,.tx_done   (tx_done)
);


endmodule

