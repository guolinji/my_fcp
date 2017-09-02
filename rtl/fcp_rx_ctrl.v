`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:12:21 08/12/2017
// Design Name: 
// Module Name:    rx ctrl
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

module fcp_rx_ctrl (
    clk,
    rstn,
    // I
    data,
    rx_own_bus,
    // O
    ping_from_master,
    reset_from_master,
    crc_error,
    par_error,
    rx_data,
    rx_data_valid
);

//================================
// IO ports
//================================
input           clk;
input           rstn;
input           data;                   // single bit for communication
input           rx_own_bus;             // master own the bus
output          ping_from_master;       // get master ping
output          reset_from_master;      // get master reset
output          crc_error;
output          par_error;
output  [23:0]  rx_data;                // 32 bit data received
output          rx_data_valid;          // rx_data is valid. will not enable either parity error or crc error

//================================
// Signals
//================================
reg     [10:0]  dur_cnt;
reg     [2:0]   data_r;
wire            valid_data;
wire            data_pos_edge;
wire            data_neg_edge;
wire            quarter_pulse;
wire            ping_from_master;
wire            reset_from_master;
reg     [2:0]   low_dur_cnt;
wire            low_quarter_pulse;
reg     [4:0]   clk_sync_cnt;
reg     [4:0]   cnt_for_sample;
wire            sample_en;
reg     [8:0]   sample_data;
reg     [3:0]   sample_num;
wire            parity_en;
wire            parity_value;
reg             parity_pass;
reg     [31:0]  rx_data_with_crc;
wire    [23:0]  rx_data;
reg             rx_st;
reg             rx_st_r;
wire            rx_start;
wire            rx_end;
reg             rx_end_r;
wire    [7:0]   crc_data;
wire            crc_pass;
wire            rx_data_valid;
reg             enable_search_pos;
reg             enable_search_neg;

//========================================================================================
//              Main State
//========================================================================================
assign valid_data   = rx_own_bus ? data : 1'b0;

always @(posedge clk or negedge rstn) begin
    if (!rstn) begin
        data_r <= 3'b0;
    end else begin
        data_r <= {data_r[1:0], valid_data};
    end
end

//assign data_pos_edge        = enable_search_pos ? data_r[1]&(!data_r[2]) : 1'b0;
//assign data_neg_edge        = enable_search_neg ? data_r[2]&(!data_r[1]) : 1'b0;
assign data_pos_edge        = data_r[1]&(!data_r[2]);
assign data_neg_edge        = data_r[2]&(!data_r[1]);
assign data_for_check       = data_r[1];

//assign data_pos_edge        = valid_data&(!data_r[0]);
//assign data_neg_edge        = data_r[0]&(!valid_data);
//assign data_for_check       = valid_data;

always @(posedge clk or negedge rstn) begin
    if (!rstn) begin
        enable_search_pos <= 1'b0;
    end else if (quarter_pulse) begin
        enable_search_pos <= 1'b1;
    end else if (rx_end) begin
        enable_search_pos <= 1'b0;
    end
end

always @(posedge clk or negedge rstn) begin
    if (!rstn) begin
        enable_search_neg <= 1'b0;
    end else if (dur_cnt==1) begin
        enable_search_neg <= 1'b1;
    end else if (rx_end | ping_from_master | reset_from_master) begin
        enable_search_neg <= 1'b0;
    end
end

// UI = 20 clock cycle
always @(posedge clk or negedge rstn) begin
    if (!rstn) begin
        dur_cnt <= 11'b0;
    end else if (data_neg_edge) begin   //reset the count at the end of a pulse
        dur_cnt <= 11'b0;
    end else if (data_for_check) begin
        dur_cnt <= dur_cnt + 1;
    end
end

assign quarter_pulse        = data_neg_edge ? (dur_cnt<7) : 1'b0;                       // 1/4 UI Pulse
assign ping_from_master     = data_neg_edge ? (dur_cnt>=261 && dur_cnt<=392) : 1'b0;
assign reset_from_master    = data_neg_edge ? (dur_cnt>=1630) : 1'b0;

// Low quarter pulse cnt
// begins when a quarter_pulse is dectected
// stops when the next posedge is dectected
always @(posedge clk or negedge rstn) begin
    if (!rstn) begin
        low_dur_cnt <= 3'b0;
    end else if (data_pos_edge) begin                                   // start count when a high 1/4 pulse is detected
        low_dur_cnt <= 3'b0;
    end else if (low_dur_cnt==7) begin                                   // start count when a high 1/4 pulse is detected
        low_dur_cnt <= 7;
    end else if (!data_for_check) begin
        low_dur_cnt <= low_dur_cnt + 1;
    end
end

assign low_quarter_pulse    = data_pos_edge ? (low_dur_cnt<7) : 1'b0;

// Clock sync cnt
always @(posedge clk or negedge rstn) begin
    if (!rstn) begin
        clk_sync_cnt <= 5'b0;
    end else if (ping_from_master) begin     // 16 UI master ping
        clk_sync_cnt <= dur_cnt>>4;
    //end else if (parity_en) begin               // 1/4 UI Sync
    //    clk_sync_cnt <= dur_cnt<<2;
    end
end

// Count for 1 UI, sample at 1/2 UI
always @(posedge clk or negedge rstn) begin
    if (!rstn) begin
        cnt_for_sample <= 5'b1;
    end else if (cnt_for_sample==clk_sync_cnt) begin
        cnt_for_sample <= 5'b1;
    end else if (quarter_pulse | low_quarter_pulse) begin
        cnt_for_sample <= 5'b1;
    end else if (rx_st) begin
        cnt_for_sample <= cnt_for_sample + 1;
    end
end

assign sample_en    = (cnt_for_sample==(clk_sync_cnt-5'd4)) ? 1'b1 : 1'b0;

// sampled data [8:1] data, [0:0] parity
always @(posedge clk or negedge rstn) begin
    if (!rstn) begin
        sample_data <= 9'b0;
    end else if (sample_en) begin
        sample_data <= {sample_data[7:0], data_for_check};
    end
end

// bit numbers have been sampled
always @(posedge clk or negedge rstn) begin
    if (!rstn) begin
        sample_num <= 4'b0;
    end else if (quarter_pulse) begin
        sample_num <= 4'b0;
    end else if (sample_en) begin
        sample_num <= sample_num + 1;
    end
end

assign parity_en            = quarter_pulse & (sample_num == 9);
assign parity_value         = ^sample_data; // 1:pass  0:fail

// parity fail register
always @(posedge clk or negedge rstn) begin
    if (!rstn) begin
        parity_pass <= 1'b1;
    end else if (rx_start) begin
        parity_pass <= 1'b1;
    end else if (parity_en) begin
        if (!parity_pass) begin              // if previous parity check fail, it remains
            parity_pass <= 1'b0;
        end else if (!parity_value) begin    // parity check fail
            parity_pass <= 1'b0;
        end
    end
end

// 32 bit register to store the received data
always @(posedge clk or negedge rstn) begin
    if (!rstn) begin
        rx_data_with_crc <= 32'b0;
    end else if (rx_start) begin
        rx_data_with_crc <= 32'b0;
    end else if (parity_en & parity_value) begin
        rx_data_with_crc <= {rx_data_with_crc[23:0], sample_data[8:1]};
    end
end

assign rx_data      = rx_data_with_crc[31:8];

// Rx FSM
always @(posedge clk or negedge rstn) begin
    if(!rstn) begin
        rx_st <= 1'b0;
    end else if (quarter_pulse) begin
        rx_st <= 1'b1;
    end else if (ping_from_master) begin
        rx_st <= 1'b0;
    end
end

always @(posedge clk or negedge rstn) begin
    if(!rstn) begin
        rx_st_r <= 1'b0;
        rx_end_r <= 1'b0;
    end else begin
        rx_st_r <= rx_st;
        rx_end_r <= rx_end;
    end
end

assign crc_en       = rx_end;
fcp_crc U_CRC (
     .clk       (clk)
    ,.rst       (quarter_pulse)
    ,.crc_en    (crc_en)
    ,.data_in   ({8'b0,rx_data_with_crc[31:8]})
    ,.crc_out   (crc_data)
);

assign crc_pass = crc_data==rx_data_with_crc[7:0];

assign rx_start         = rx_st & (!rx_st_r);
assign rx_end           = (!rx_st) & rx_st_r;
assign rx_data_valid    = rx_end_r & parity_pass & crc_pass;

assign crc_error        = rx_data_valid & (!crc_pass);
assign par_error        = parity_en & (!parity_pass);

endmodule

