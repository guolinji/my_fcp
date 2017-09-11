`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:12:21 08/12/2017
// Design Name: 
// Module Name:    fcp logical layer
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

module fcp_logical_layer (
    clk,
    rstn,
    // I
    is_support_12v,
    ping_from_master,
    reset_from_master,
    afc_iden,
    crc_error,
    par_error,
    rx_data,
    rx_data_valid,
    tx_done,
    // O
    pl_tx_en,
    pl_tx_type,
    pl_tx_afc,
    pl_tx_data,
    out_volt
);

//================================
// IO ports
//================================
input               clk;
input               rstn;
input               is_support_12v;
input               ping_from_master;
input               reset_from_master;
input               afc_iden;
input               crc_error;
input               par_error;
input       [23:0]  rx_data;
input               rx_data_valid;
input               tx_done;

output              pl_tx_en;
output              pl_tx_type;
output              pl_tx_afc;
output      [15:0]  pl_tx_data;
output      [1:0]   out_volt; //00:5V    01:9v    10:12v    11:Reserved

localparam SLV_IDLE         = 2'b00;
localparam SLV_SEND_PING    = 2'b01;
localparam SLV_SEND_RESPOND = 2'b10;

localparam ACK              = 8'b0000_1000;
localparam NACK             = 8'b0000_0011;
localparam SBRWR            = 8'b0000_1011;
localparam SBRRD            = 8'b0000_1100;

//================================
// Signals
//================================
reg [7:0]   DVCTYPE              ;  //0x00 DVCTYPE                R           8’h00
reg [7:0]   SPEC_VER             ;  //0x01 SPEC_VER               R           8’h00
reg [7:0]   SCNTL                ;  //0x02 SCNTL                  R/W         8’h00
reg [7:0]   SSTAT                ;  //0x03 SSTAT                  RR          8’h00
reg [7:0]   ID_OUI0              ;  //0x04 ID_OUI0                R           8’h00
reg [7:0]   CAPABILITIES         ;  //0x20 CAPABILITIES           R           8’b000X_XXXX
reg [7:0]   DISCRETE_CAPABILITIES;  //0x21 DISCRETE_CAPABILITIES  R           8’b0XXX_0XXX
reg [7:0]   MAX_PWR              ;  //0x22 MAX_PWR                R           8’xXX
reg [7:0]   ADAPTER_STATUS       ;  //0x28 ADAPTER_STATUS         RR          8’b0000_0000
reg [7:0]   VOUT_STATUS          ;  //0x29 VOUT_STATUS            R           8’xXX
reg [7:0]   OUTPUT_CONTROL       ;  //0x2B OUTPUT_CONTROL         R/W         8’x00
reg [7:0]   VOUT_CONFIG          ;  //0x2C VOUT_CONFIG            R/W         8’xXX
reg [7:0]   DISCRETE_VOUT_0      ;  //0x30 DISCRETE_VOUT_0        R           8’xXX
reg [7:0]   DISCRETE_VOUT_1      ;  //0x31 DISCRETE_VOUT_1        R           8’xXX
reg [7:0]   DISCRETE_VOUT_2      ;  //0x32 DISCRETE_VOUT_2        R           8’xXX

reg [1:0]   out_volt;
//reg [1:0]   up_step;
//reg [1:0]   down_step;
//reg [6:0]   vol_adjust_cycle_cnt;

reg         wr_en;
reg         rd_en;
reg [7:0]   wr_data;
reg [7:0]   addr;
reg         rx_data_valid_r;
reg         rx_data_valid_2r;
wire        wr_addr_exist;
wire        rd_addr_exist;
reg [7:0]   RESP;
reg [7:0]   data_for_rd_cmd;
reg [15:0]  pl_tx_data;
wire        pl_tx_en;
wire        pl_tx_type;
wire        pl_tx_afc;
reg         cmd_get_but_not_process;
wire        send_resp;
wire        send_ping;
reg         afc_pr;
reg [1:0]   afc_cmd_cnt;

reg [1:0]   cur_st;
reg [1:0]   nxt_st;

always @(posedge clk or negedge rstn) begin // adjust volt
    if (!rstn) begin
        out_volt <= 2'b0;  //5v
    end else if (OUTPUT_CONTROL[0]) begin
        if (VOUT_CONFIG==8'd50) begin
            out_volt <= 2'b00; //5v
        end else if (VOUT_CONFIG==8'd90) begin
            out_volt <= 2'b01; //9v
        end else if ((VOUT_CONFIG==8'd120) && is_support_12v) begin
            out_volt <= 2'b10; //12v
        end
    end else if (afc_cmd_cnt==2'd3) begin
        out_volt <= 2'b01;
    end
end

//always @(posedge clk or negedge rstn) begin // increase volt
//    if (!rstn) begin
//        vol_adjust_cycle_cnt <= 7'b0;
//    end else if (OUTPUT_CONTROL[0]) begin
//        vol_adjust_cycle_cnt <= 7'b1;
//    end else if (vol_adjust_cycle_cnt==7'd100) begin
//        vol_adjust_cycle_cnt <= 7'b0;
//    end else if (|vol_adjust_cycle_cnt) begin
//        vol_adjust_cycle_cnt <= vol_adjust_cycle_cnt + 7'b1;
//    end
//end
//
//always @(posedge clk or negedge rstn) begin // increase volt
//    if (!rstn) begin
//        up_step <= 2'd0;
//    end else if (OUTPUT_CONTROL[0]) begin
//        if (VOUT_CONFIG==8'd120) begin
//            up_step <= VOUT_STATUS==8'd50 ? 2'd2 : (VOUT_STATUS==8'd90 ? 2'd1 : 2'd0);
//        end else if (VOUT_CONFIG==8'd90) begin
//            up_step <= VOUT_STATUS==8'd50 ? 2'd1 : 2'd0;
//        end else if (VOUT_CONFIG==8'd50) begin
//            up_step <= 2'd0;
//        end
//    end else if (vol_adjust_cycle_cnt==100) begin
//        up_step <= 2'd0;
//    end
//end
//
//always @(posedge clk or negedge rstn) begin // decrease volt
//    if (!rstn) begin
//        down_step <= 2'd0;
//    end else if (OUTPUT_CONTROL[0]) begin
//        if (VOUT_CONFIG==8'd90) begin
//            down_step <= VOUT_STATUS==8'd120 ? 2'd1 : 2'd0;
//        end else if (VOUT_CONFIG==8'd120) begin
//            down_step <= 2'd0;
//        end else begin
//            down_step <= VOUT_STATUS==8'd120 ? 2'd2 : (VOUT_STATUS==8'd90 ? 2'd1 : 2'd0);
//        end
//    end else if (vol_adjust_cycle_cnt==100) begin
//        down_step <= 2'd0;
//    end
//end
//
//always @(posedge clk or negedge rstn) begin
//    if (!rstn) begin
//        UP_VOLT <= 1'b0;
//        DN_VOLT <= 1'b0;
//    end else if (vol_adjust_cycle_cnt==1) begin
//        UP_VOLT <= |up_step;
//        DN_VOLT <= |down_step;
//    end else if (vol_adjust_cycle_cnt==26) begin
//        UP_VOLT <= 1'b0;
//        DN_VOLT <= 1'b0;
//    end else if (vol_adjust_cycle_cnt==51) begin
//        UP_VOLT <= up_step[1];
//        DN_VOLT <= down_step[1];
//    end else if (vol_adjust_cycle_cnt==76) begin
//        UP_VOLT <= 1'b0;
//        DN_VOLT <= 1'b0;
//    end
//end

always @(posedge clk or negedge rstn) begin
    if (!rstn) begin
        VOUT_STATUS <= 8'd50;
    end else if (OUTPUT_CONTROL[0]) begin
        VOUT_STATUS <=  VOUT_CONFIG==8'd50 ? 8'd50 :
                        VOUT_CONFIG==8'd90 ? 8'd90 :
                       (VOUT_CONFIG==8'd120) && is_support_12v ? 8'd120 : VOUT_STATUS;
    end
end

// read only registers
always @(posedge clk) begin
    DVCTYPE                 <= 8'h01;
    SPEC_VER                <= 8'h20;
    ID_OUI0                 <= 8'b10111011;
    CAPABILITIES            <= 8'h01;
    DISCRETE_CAPABILITIES   <= is_support_12v ? 8'h2 : 8'h1;
    MAX_PWR                 <= 8'h24;
    DISCRETE_VOUT_0         <= 8'd50;
    DISCRETE_VOUT_1         <= 8'd90;
    DISCRETE_VOUT_2         <= 8'd120;
end

// read/Write registers
always @(posedge clk or negedge rstn) begin // SCNTL is reserved
    if (!rstn) begin
        SCNTL                   <= 8'h0;
    end else begin
        SCNTL                   <= 8'h0;
    end
end

always @(posedge clk or negedge rstn) begin // lsb: SET_VOUT
    if (!rstn) begin
        OUTPUT_CONTROL          <= 8'h0;
    end else if (wr_en & send_resp & (addr==8'h2B)) begin
        OUTPUT_CONTROL          <= {7'b0, wr_data[0]};
    end else begin
        OUTPUT_CONTROL          <= 8'h0;
    end
end

always @(posedge clk or negedge rstn) begin
    if (!rstn) begin
        VOUT_CONFIG             <= 8'd50;   // default 5V
    end else if (wr_en & send_resp & (addr==8'h2C)) begin
        VOUT_CONFIG             <= wr_data;
    end
end

// read/read registers
// automatically set by the hardware.
// Once set, only cleared upon reading the register or by a POR event.
always @(posedge clk or negedge rstn) begin
    if (!rstn) begin
        SSTAT                   <= 8'h0;
    end else if (rd_en & (addr==8'h03)) begin
        SSTAT                   <= 8'h0;
    end else begin
        if (crc_error) begin
            SSTAT               <= {6'h0, 1'b1, SSTAT[0]};
        end else if (par_error) begin
            SSTAT               <= {6'h0, SSTAT[1], 1'b1};
        end
    end
end

always @(posedge clk) begin
    ADAPTER_STATUS          <= 8'h0;
end

//     [23:16]  [15:8]      [7:0]
// RD: 8'b0     SBRRD       REGADDR
// WT: SBRWR    EGADDR      DATA
always @(posedge clk or negedge rstn) begin
    if (!rstn) begin
        wr_en   <= 1'b0;
        rd_en   <= 1'b0;
        wr_data <= 8'b0;
        addr    <= 8'b0;
    end else if (rx_data_valid) begin
        wr_en   <= rx_data[23:16]==SBRWR;
        rd_en   <= rx_data[23:16]==8'b0 && rx_data[15:8]==SBRRD;
        wr_data <= rx_data[23:16]==SBRWR ? rx_data[7:0]  : 8'b0;
        addr    <= rx_data[23:16]==SBRWR ? rx_data[15:8] : rx_data[7:0];
    end
end

always @(posedge clk or negedge rstn) begin
    if (!rstn) begin
        rx_data_valid_r <= 1'b0;
    end else begin
        rx_data_valid_r <= rx_data_valid;
    end
end

always @(posedge clk or negedge rstn) begin
    if (!rstn) begin
        rx_data_valid_2r <= 1'b0;
    end else begin
        rx_data_valid_2r <= rx_data_valid_r;
    end
end

assign wr_addr_exist = (addr==8'h02||addr==8'h2B|| addr==8'h2C);
assign rd_addr_exist = (addr<=8'h04||addr==8'h20|| addr==8'h21||addr==8'h22||
                        addr==8'h28||addr==8'h29|| addr==8'h2B||addr==8'h2C||
                        addr==8'h30||addr==8'h31||(addr==8'h32&&is_support_12v));

always @(posedge clk or negedge rstn) begin
    if (!rstn) begin
        RESP    <= 8'b0;
    end else if (rx_data_valid_r) begin
        if (wr_en==1'b0 && rd_en==1'b0) begin
            RESP    <= NACK;
        end else if (wr_en) begin
            RESP    <= wr_addr_exist ? ACK : NACK;
        end else if (rd_en) begin
            RESP    <= rd_addr_exist ? ACK : NACK;
        end
    end
end


always @(*) begin
    if (rd_en) begin
        case (addr)
        8'h00: data_for_rd_cmd  = DVCTYPE              ;
        8'h01: data_for_rd_cmd  = SPEC_VER             ;
        8'h02: data_for_rd_cmd  = SCNTL                ;
        8'h03: data_for_rd_cmd  = SSTAT                ;
        8'h04: data_for_rd_cmd  = ID_OUI0              ;
        8'h20: data_for_rd_cmd  = CAPABILITIES         ;
        8'h21: data_for_rd_cmd  = DISCRETE_CAPABILITIES;
        8'h22: data_for_rd_cmd  = MAX_PWR              ;
        8'h28: data_for_rd_cmd  = ADAPTER_STATUS       ;
        8'h29: data_for_rd_cmd  = VOUT_STATUS          ;
        8'h2B: data_for_rd_cmd  = OUTPUT_CONTROL       ;
        8'h2C: data_for_rd_cmd  = VOUT_CONFIG          ;
        8'h30: data_for_rd_cmd  = DISCRETE_VOUT_0      ;
        8'h31: data_for_rd_cmd  = DISCRETE_VOUT_1      ;
        8'h32: data_for_rd_cmd  = DISCRETE_VOUT_2      ;
        endcase
    end
end

always @(posedge clk or negedge rstn) begin
    if (!rstn) begin
        pl_tx_data <= 16'b0;
    end else if (rx_data_valid_2r) begin
        if (rd_en) begin
            pl_tx_data <= {RESP, data_for_rd_cmd};
        end else begin
            pl_tx_data <= {8'b0, RESP};
        end
    end
end

always @(posedge clk or negedge rstn) begin
    if (!rstn) begin
        cmd_get_but_not_process <= 1'b0;
    end else if (reset_from_master) begin
        cmd_get_but_not_process <= 1'b0;
    end else if (rx_data_valid|afc_iden) begin
        cmd_get_but_not_process <= 1'b1;
    end else if (send_resp) begin
        cmd_get_but_not_process <= 1'b0;
    end
end

always @(posedge clk or negedge rstn) begin
    if (!rstn) begin
        afc_pr <= 1'b0;
    end else if (afc_iden) begin
        afc_pr <= 1'b1;
    end else if (nxt_st==SLV_IDLE) begin
        afc_pr <= 1'b0;
    end
end

always @(posedge clk or negedge rstn) begin
    if (!rstn) begin
        afc_cmd_cnt <= 2'b0;
    end else if (tx_done&afc_pr&!cmd_get_but_not_process) begin
        afc_cmd_cnt <= afc_cmd_cnt + 2'b1;
    end else if (rx_data_valid) begin
        afc_cmd_cnt <= 2'b0;
    end
end

//========================================================================================
//========================================================================================
//              Main State
//========================================================================================
//========================================================================================
always @(posedge clk or negedge rstn) begin
    if(!rstn) begin
        cur_st <= SLV_IDLE;
    end else begin
        cur_st <= nxt_st;
    end
end

always @(*) begin
    nxt_st = cur_st;

    case(cur_st)
    SLV_IDLE: begin
        if (ping_from_master) begin
            nxt_st = SLV_SEND_PING;
        end
    end
    SLV_SEND_PING: begin
        if (reset_from_master) begin
            nxt_st = SLV_IDLE;
        end else if (tx_done) begin
            if (cmd_get_but_not_process) begin
                nxt_st = SLV_SEND_RESPOND;
            end else begin
                nxt_st = SLV_IDLE;
            end
        end
    end
    SLV_SEND_RESPOND: begin
        if (reset_from_master | tx_done) begin
            nxt_st = SLV_IDLE;
        end
    end
    default;
    endcase
end

assign send_ping    = (nxt_st==SLV_SEND_PING) & (cur_st==SLV_IDLE);
assign send_resp    = (nxt_st==SLV_SEND_RESPOND) & (cur_st==SLV_SEND_PING);
assign pl_tx_en     = send_ping | send_resp;
assign pl_tx_type   = (nxt_st==SLV_SEND_RESPOND); // 0->PING  1->RESPOND
assign pl_tx_afc    = (nxt_st==SLV_SEND_RESPOND) & afc_pr;

endmodule

