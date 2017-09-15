`timescale 1us / 1ns

module mst_model(
    D
);

inout D;
localparam UI            = 160;
localparam UI_2          = UI*2;
localparam UI_3          = UI*3;
localparam UI_4          = UI*4;
localparam UI_5          = UI*5;
localparam UI_1_4        = UI/4;
localparam UI_16         = UI*16;
localparam UI_25         = UI*25;
localparam UI_100        = UI*100;
localparam P_TIME        = 2000;

localparam SBRWR            = 8'b0000_1011;
localparam SBRRD            = 8'b0000_1100;

reg data;

task ping;
    begin
        data = 1'b1;
        #UI_16
        data = 1'bz;
    end
endtask

task tx_sync;
    input pre_lsb;
    input nxt_msb;
    begin
        case ({pre_lsb,nxt_msb})
            2'b00: begin
                data = 1'b1;
                #UI_1_4
                data = 1'b0;
                #UI_1_4
                data = 1'b1;
                #UI_1_4
                data = 1'b0;
            end
            2'b01: begin
                data = 1'b1;
                #UI_1_4
                data = 1'b0;
                #UI_1_4
                data = 1'b1;
            end
            2'b10: begin
                data = 1'b0;
                #UI_1_4
                data = 1'b1;
                #UI_1_4
                data = 1'b0;
            end
            2'b11: begin
                data = 1'b0;
                #UI_1_4
                data = 1'b1;
                #UI_1_4
                data = 1'b0;
                #UI_1_4
                data = 1'b1;
            end
        endcase
    end
endtask

task tx;
    input [7:0] tda;
    input nxt_msb;
    begin
        #UI
        data = tda[6];
        #UI
        data = tda[5];
        #UI
        data = tda[4];
        #UI
        data = tda[3];
        #UI
        data = tda[2];
        #UI
        data = tda[1];
        #UI
        data = tda[0];
        #UI
        data = ~^tda;
        #UI;
        tx_sync(~^tda, nxt_msb);
    end
endtask

initial begin
    data = 1'bz;
    #P_TIME

    // 0000 0001
    #UI_25
    ping();
    #UI_25
    tx_sync(0,0);
    tx(8'h01,1);
    ping();

    #UI_25
    ping();
    #UI_25
    tx_sync(0,0);
    tx(8'h01,1);
    ping();

    #UI_25
    ping();
    #UI_25
    tx_sync(0,0);
    tx(8'h01,1);
    ping();

    // rd ID
    #UI_100
    ping();
    #UI_25
    tx_sync(0,0);
    tx(SBRRD,0);
    tx(8'h4,1);
    tx(8'b1110_0010,1);
    ping();

    // rd DISCRETE_CAPABILITIES
    #UI_100
    ping();
    #UI_25
    tx_sync(0,0);
    tx(SBRRD,0);
    tx(8'h21,1);
    tx(8'b1011_0000,1);
    ping();

    // rd DISCRETE_OUT_V2
    #UI_100
    ping();
    #UI_25
    tx_sync(0,0);
    tx(SBRRD,0);
    tx(8'h32,0);
    tx(8'b0010_0000,1);
    ping();

    // wr VOUT_CONFIG
    #UI_100
    ping();
    #UI_25
    tx_sync(0,0);
    tx(SBRWR,0);
    tx(8'h2c,0);
    tx(8'd90,0);
    tx(8'b0011_0100,1);
    ping();

    // rd VOUT_CONFIG
    #UI_100
    ping();
    #UI_25
    tx_sync(0,0);
    tx(SBRRD,0);
    tx(8'h2c,1);
    tx(8'b1001_1100,1);
    ping();

    // wr OUTPUT_CONTROL
    #UI_100
    ping();
    #UI_25
    tx_sync(0,0);
    tx(SBRWR,0);
    tx(8'h2b,0);
    tx(8'h01,1);
    tx(8'b1110_1101,1);
    ping();
end

wire D;
assign D = data;

pulldown (D);

endmodule

