`timescale 1ns / 1ps

module testbench;

localparam SCLK_PERIOD       = 4000;
localparam MCLK_PERIOD       = 4000;
localparam RST_TIME         = 10000;

localparam TX_IDLE         = 2'b00;
localparam TX_PING         = 2'b01;
localparam TX_QUARTER_UI   = 2'b10;
localparam TX_DATA         = 2'b11;

localparam SBRWR            = 8'b0000_1011;
localparam SBRRD            = 8'b0000_1100;

reg sclk, mclk;
always begin
    sclk = 0;
    forever #SCLK_PERIOD sclk = ~sclk;
end

always begin
    mclk = 0;
    forever #MCLK_PERIOD mclk = ~mclk;
end

wire mclk_d;
wire [15:0] rand;
assign rand = {$random}%2000;
assign #(rand) mclk_d = mclk;

reg rstn;
reg tx_en;
reg tx_type;
reg tx_reset;
reg [23:0]  tx_data;

task volt_change;
    input   [7:0]   vol;
    begin
        #20000000
        tx_en   = 1;
        tx_type = 0;
        #10000
        tx_en   = 0;
        #5914748
        tx_en   = 1;
        tx_type = 1;
        tx_data[23:16] = SBRWR;
        tx_data[15:8]  = 8'h2c;
        tx_data[7:0]   = vol;
        #10000
        tx_en   = 0;
        #20000000
        tx_en   = 1;
        tx_type = 0;
        #10000
        tx_en   = 0;
        #5914748
        tx_en   = 1;
        tx_type = 1;
        tx_data[23:16] = SBRWR;
        tx_data[15:8]  = 8'h2B;
        tx_data[7:0]   = 8'h01;
        #10000
        tx_en   = 0;
    end
endtask


initial begin
    rstn = 0;
    tx_type = 0;
    tx_reset = 0;
    tx_en   = 0;
    tx_data = 0;
    #RST_TIME
    rstn = 1;

    #20000000
    tx_en   = 1;
    tx_type = 0;
    #10000
    tx_en   = 0;
    #5914748
    tx_en   = 1;
    tx_type = 1;
    tx_data[7:0]   = 8'h01;
    #10000
    tx_en   = 0;

    #10613000
    tx_en   = 1;
    tx_type = 0;
    #10000
    tx_en   = 0;
    #5914748
    tx_en   = 1;
    tx_type = 1;
    tx_data[7:0]   = 8'h01;
    #10000
    tx_en   = 0;

    #10613000
    tx_en   = 1;
    tx_type = 0;
    #10000
    tx_en   = 0;
    #5914748
    tx_en   = 1;
    tx_type = 1;
    tx_data[7:0]   = 8'h01;
    #10000
    tx_en   = 0;

    #20000000
    tx_en   = 1;
    tx_type = 0;
    #10000
    tx_en   = 0;
    #5914748
    tx_en   = 1;
    tx_type = 1;
    tx_data[23:16] = 8'h0;
    tx_data[15:8]  = SBRRD;
    tx_data[7:0]   = 8'h04;
    #10000
    tx_en   = 0;

    #20000000
    tx_en   = 1;
    tx_type = 0;
    #10000
    tx_en   = 0;
    #5914748
    tx_en   = 1;
    tx_type = 1;
    tx_data[23:16] = 8'h0;
    tx_data[15:8]  = SBRRD;
    tx_data[7:0]   = 8'h21;
    #10000
    tx_en   = 0;

    #20000000
    tx_en   = 1;
    tx_type = 0;
    #10000
    tx_en   = 0;
    #5914748
    tx_en   = 1;
    tx_type = 1;
    tx_data[23:16] = 8'h0;
    tx_data[15:8]  = SBRRD;
    tx_data[7:0]   = 8'h32;
    #10000
    tx_en   = 0;

    #20000000
    tx_en   = 1;
    tx_type = 0;
    #10000
    tx_en   = 0;
    #5914748
    tx_en   = 1;
    tx_type = 1;
    tx_data[23:16] = SBRWR;
    tx_data[15:8]  = 8'h2c;
    tx_data[7:0]   = 8'd120;
    #10000
    tx_en   = 0;

    #20000000
    tx_en   = 1;
    tx_type = 0;
    #10000
    tx_en   = 0;
    #5914748
    tx_en   = 1;
    tx_type = 1;
    tx_data[23:16] = 8'h0;
    tx_data[15:8]  = SBRRD;
    tx_data[7:0]   = 8'h2c;
    #10000
    tx_en   = 0;

    volt_change(8'd90);
    volt_change(8'd120);
    volt_change(8'd90);
    volt_change(8'd50);
    volt_change(8'd120);

    #20000000
    tx_reset = 1;
    #10000
    tx_reset = 0;

    volt_change(8'd50);
    volt_change(8'd80);
    volt_change(8'd90);
    volt_change(8'd40);
    volt_change(8'd120);
    volt_change(8'd20);

    #200000000
    $finish();
end

reg [6:0]   cycle_cnt_after_ping;
always @(posedge mclk_d or negedge rstn) begin
    if (!rstn) begin
        cycle_cnt_after_ping <= 7'd100;
    end else if (U_FCP_CORE.U_FCP_PYSICAL_LAYER.U_TX_CTRL.tx_done) begin
        cycle_cnt_after_ping <= 7'b1;
    end else if (cycle_cnt_after_ping == 7'd100) begin
        cycle_cnt_after_ping <= 7'd100;
    end else if (cycle_cnt_after_ping!=100) begin
        cycle_cnt_after_ping <= cycle_cnt_after_ping + 7'b1;
    end
end

reg         after_data;
always @(posedge sclk or negedge rstn) begin
    if (!rstn) begin
        after_data <= 1'b0;
    end else if (U_FCP_CORE.U_FCP_PYSICAL_LAYER.U_TX_CTRL.tx_done) begin
        after_data <= ~after_data;
    end
end


reg     [1:0]   tx_cur_st;
reg     [1:0]   tx_nxt_st;

always @(posedge mclk_d or negedge rstn) begin
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
        tx_nxt_st = TX_PING;
    end
    endcase
end

initial begin
    $fsdbDumpfile("core.fsdb");
    $fsdbDumpvars;
end

mst_physical_layer U_MST_PYSICAL_LAYER (
         .clk                   (mclk_d)
        ,.rstn                  (rstn)
        // I
        ,.pl_tx_en              (tx_en)
        ,.pl_tx_type            (tx_type)
        ,.pl_reset              (tx_reset)
        ,.pl_tx_data            (tx_data)
        // O
        ,.ping_from_master      ()
        ,.reset_from_master     ()
        ,.crc_error             ()
        ,.par_error             ()
        ,.rx_data               ()
        ,.rx_data_valid         ()
        ,.tx_done               ()
        // IO
        ,.data                  (data)
        );

fcp_core U_FCP_CORE (
     .clk       (sclk)
    ,.rstn      (rstn)
    ,.UP_VOLT   ()
    ,.DN_VOLT   ()
    ,.data      (data)
);

endmodule
