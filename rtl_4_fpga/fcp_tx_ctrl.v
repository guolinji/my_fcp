`timescale 1us / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:12:21 08/12/2017
// Design Name: 
// Module Name:    tx ctrl
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

module fcp_tx_ctrl (
    clk,
    rstn,
    // I
    tx_en,
    tx_type,
    tx_afc,
    tx_data,
    tune_up,
    tune_cycle,
    // O
    data,
    tx_done
);

//================================
// IO ports
//================================
input           clk;
input           rstn;
input           tx_en;              // tx enable -> level signal
input           tx_type;            // 0: slave ping    1: data
input           tx_afc;
input   [15:0]  tx_data;            // tx data
input           tune_up;
input   [7:0]   tune_cycle;
output          data;               // single bit for communication
output          tx_done;            // data has been transmitted

parameter UI_CYCLE         = 20;

localparam TX_IDLE         = 2'b00;
localparam TX_PING         = 2'b01;
localparam TX_QUARTER_UI   = 2'b10;
localparam TX_DATA         = 2'b11;

//================================
// Signals
//================================
reg             tx_en_r;                    // reg for tx_en
reg             tx_start;                   // start of trans
wire            tx_init;
wire    [9:0]  UI_cycle_tuned;
reg     [9:0]  cycle_cnt_for_UI;           // clock cnt for UI
reg     [7:0]  cycle_cnt_for_quarter_UI;   // clock cnt for 1/4 UI
reg     [3:0]   UI_cnt;                     // UI cnt
wire            UI_end;                     // UI end
wire            sixteen_UI_end;             // 16 UI end
wire            quarter_UI_end;             // 1/4 UI end
reg             parity_value;
wire            nxt_msb;
wire            tx_crc_finish;
reg     [1:0]   tx_cur_st;
reg     [1:0]   tx_nxt_st;
wire            toggle_for_ping;            // data will toggle to generate ping
wire            toggle_for_quarter;         // date will toggle to generate 1/4 UI
wire            start_tx_data_bit;          // begin to trans real data
reg     [1:0]   num_of_quarter_UI;          // cnt how many 1/4 UI has been sent
reg             data;
reg     [1:0]   byte_cnt;
reg     [15:0]  tx_data_reg;
reg             tx_type_reg;
reg             tx_afc_reg;
reg             respond_rd;
wire    [7:0]   crc_data;
reg     [7:0]   data_for_tx;
wire            one_byte_send;

always @(posedge clk or negedge rstn) begin
    if (!rstn) begin
        tx_en_r <= 1'b0;
    end else begin
        tx_en_r <= tx_en;
    end
end

// posedge of the tx_en
assign tx_init     = tx_en & (!tx_en_r);

always @(posedge clk or negedge rstn) begin
    if (!rstn) begin
        tx_start <= 1'b0;
    end else begin
        tx_start <= tx_init;
    end
end

// UI cycle cnt -> 20 cycle
always @(posedge clk or negedge rstn) begin
    if (!rstn) begin
        cycle_cnt_for_UI <= 10'b0;
    end else if (tx_nxt_st==TX_IDLE) begin
        cycle_cnt_for_UI <= 10'b0;
    end else if (UI_end | quarter_UI_end) begin
        cycle_cnt_for_UI <= 10'b1;
    end else begin
        cycle_cnt_for_UI <= cycle_cnt_for_UI + 10'b1;
    end
end

// UI cnt -> max 16UI ; also used to count 8 bit + 1 parity
always @(posedge clk or negedge rstn) begin
    if (!rstn) begin
        UI_cnt <= 4'b0;
    end else if (UI_end) begin
        UI_cnt <= (tx_cur_st==TX_PING && UI_cnt==4'd15) ? 0 :
                  (tx_cur_st==TX_DATA && UI_cnt==4'd8)  ? 0 : (UI_cnt + 1);
    end
end

// 1/4 UI cycle cnt -> 5 cycle
always @(posedge clk or negedge rstn) begin
    if (!rstn) begin
        cycle_cnt_for_quarter_UI <= 8'b0;
    end else if (start_tx_data_bit | tx_done) begin
        cycle_cnt_for_quarter_UI <= 8'b0;
    end else if (quarter_UI_end) begin
        cycle_cnt_for_quarter_UI <= 8'b1;
    end else if (tx_nxt_st==TX_QUARTER_UI) begin
        cycle_cnt_for_quarter_UI <= cycle_cnt_for_quarter_UI + 8'b1;
    end
end

assign UI_cycle_tuned   = tune_up ? UI_CYCLE+tune_cycle : UI_CYCLE-tune_cycle;
assign UI_end           = cycle_cnt_for_UI==UI_cycle_tuned;
assign quarter_UI_end   = cycle_cnt_for_quarter_UI==(UI_cycle_tuned/4);
//assign UI_end           = cycle_cnt_for_UI==UI_CYCLE;
//assign quarter_UI_end   = cycle_cnt_for_quarter_UI==(UI_CYCLE/4);
assign sixteen_UI_end   = UI_end && (UI_cnt==4'hf);
assign one_byte_send    = tx_type_reg && UI_end && (UI_cnt==4'd8);

// save the tx_data at the beginning
// respond_rd 0->        ack + crc
//            1-> ack + data + crc
always @(posedge clk or negedge rstn) begin
    if(!rstn) begin
        tx_data_reg <= 16'b0;
        tx_type_reg <= 1'b0;
        respond_rd  <= 1'b0;
    end else if (tx_init & tx_type) begin
        tx_data_reg <= tx_afc ? {8'h0, 8'b01000110} : tx_data;
        tx_type_reg <= tx_type;
        tx_afc_reg  <= tx_afc;
        respond_rd  <= |tx_data[15:8];
    end
end

always @(posedge clk or negedge rstn) begin
    if(!rstn) begin
        byte_cnt <= 2'b0;
    end else if (tx_init) begin
        byte_cnt <= 2'b0;
    end else if (one_byte_send) begin
        byte_cnt <= byte_cnt + 2'b1;
    end
end

assign tx_crc_finish    = tx_afc_reg ? byte_cnt==2'd1 : (respond_rd ? byte_cnt==2'd3 : byte_cnt==2'd2);

// initial for the data
always @(posedge clk or negedge rstn) begin
    if (!rstn) begin
        data_for_tx <= 8'h0;
    end else if (tx_start) begin
        data_for_tx <= respond_rd ? tx_data_reg[15:8] : tx_data_reg[7:0];
    end else if (one_byte_send) begin
        if (byte_cnt==2'b0) begin
            data_for_tx <= respond_rd ? tx_data_reg[7:0] : crc_data;
        end else if (byte_cnt==2'b1) begin
            data_for_tx <= respond_rd ? crc_data : 8'h0;
        end else if (byte_cnt==2'd2) begin
            data_for_tx <= 8'h0;
        end
    end else if (UI_end) begin
        data_for_tx <= {data_for_tx[6:0], data_for_tx[7]};
    end
end

always @(posedge clk or negedge rstn) begin
    if (!rstn) begin
        parity_value <= 1'b0;
    end else if (tx_init) begin
        parity_value <= 1'b0;
    end else if (start_tx_data_bit) begin
        parity_value <= !(^data_for_tx);
    end
end

assign nxt_msb = tx_crc_finish ? 1'b1 : data_for_tx[7];
always @(posedge clk or negedge rstn) begin
    if(!rstn) begin
        num_of_quarter_UI <= 2'b11;
    end else if (quarter_UI_end) begin
        if (num_of_quarter_UI==2'b11) begin
            num_of_quarter_UI <= parity_value^nxt_msb ? 2'd0 : 2'd1;
        end else begin
            num_of_quarter_UI <= num_of_quarter_UI - 2'b1;
        end
    end
end

//========================================================================================
//              Main State
//========================================================================================
always @(posedge clk or negedge rstn) begin
    if(!rstn) begin
        tx_cur_st <= TX_IDLE;
    end else begin
        tx_cur_st <= tx_nxt_st;
    end
end

always @(*) begin
    tx_nxt_st = tx_cur_st;

    case(tx_cur_st)
    TX_IDLE: begin
        if (tx_start & tx_type) begin
            tx_nxt_st = TX_QUARTER_UI;
        end else if (tx_start & !tx_type) begin
            tx_nxt_st = TX_PING;
        end
    end
    TX_PING: begin
        if (sixteen_UI_end) begin
            tx_nxt_st = TX_IDLE;
        end
    end
    TX_QUARTER_UI: begin
        if (quarter_UI_end) begin
            if (num_of_quarter_UI>0) begin          // still need to send 1/4 UI
                tx_nxt_st = TX_QUARTER_UI;
            end else if (tx_crc_finish) begin      // no data to trans, will send ping
                tx_nxt_st = TX_PING;
            end else begin                          // send nxt data or crc
                tx_nxt_st = TX_DATA;
            end
        end
    end
    TX_DATA: begin
        if (one_byte_send) begin
            tx_nxt_st = TX_QUARTER_UI;
        end
    end
    endcase
    //default;
end

assign tx_done              = sixteen_UI_end;
assign toggle_for_ping      = (tx_cur_st==TX_PING && tx_nxt_st!=TX_PING) || (tx_cur_st!=TX_PING && tx_nxt_st==TX_PING);
assign start_tx_data_bit    = (tx_cur_st!=TX_DATA && tx_nxt_st==TX_DATA);
assign toggle_quarter       = (tx_cur_st!=TX_QUARTER_UI && tx_nxt_st==TX_QUARTER_UI) | quarter_UI_end;


always @(posedge clk or negedge rstn) begin
    if(!rstn) begin
        data <= 1'b0;
    end else if (toggle_for_ping | toggle_quarter) begin
        data <= !data;
    end else if (tx_nxt_st==TX_DATA & UI_end) begin
        data <= UI_cnt==4'd7 ? parity_value : data_for_tx[6];
    end
end

assign crc_en       = tx_start & tx_type;
fcp_crc U_CRC (
     .clk       (clk)
    ,.rst       (tx_done)
    ,.crc_en    (crc_en)
    ,.data_in   ({16'b0,tx_data_reg})
    ,.crc_out   (crc_data)
);

endmodule





