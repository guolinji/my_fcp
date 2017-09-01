
`timescale 1ns / 1ps

module testbench;

localparam RCLK_PERIOD       = 4000;
localparam TCLK_PERIOD       = 4000;
localparam RST_TIME         = 10000;

reg rx_clk;
reg clk;
always begin
    rx_clk = 0;
    forever #RCLK_PERIOD rx_clk = ~rx_clk;
end

always begin
    clk = 0;
    forever #TCLK_PERIOD clk = ~clk;
end

wire tx_clk;
wire [15:0] rand;
assign rand = {$random}%2000;
assign #(rand) tx_clk = clk;

reg rstn;
reg tx_en;
reg tx_type;
reg [15:0]  tx_data;

wire    rx_data_valid;
wire [23:0] rx_data;

initial begin
    rstn = 0;
    tx_type = 1;
    tx_en   = 0;
    tx_data = 16'b0;
    #RST_TIME
    rstn = 1;
    //#400000000
    //$finish();
end

initial begin
    $fsdbDumpfile("test.fsdb");
    $fsdbDumpvars;
end

reg [7:0] rand0;
reg [7:0] rand1;
reg       rd;
wire    tx_done;
always @(*) begin
    if (tx_done & !tx_type) begin
        rand0 = {$random}%256;
        rand1 = {$random}%256;
        rd    = {$random}%2;
        tx_data = rd ? {rand0, rand1} : {6'b0, rand1};
    end
end

always @(*) begin
    if (tx_done)
        tx_en = 0;
    else  begin
        #1000000
        tx_en   =  1;
        tx_type =  ~tx_type;
    end
end

always @(*) begin
    if (rx_data_valid && tx_data!=rx_data[15:0]) begin
        $display($time, "Error!");
        $finish();
    end
end

reg [31:0] cnt;
always @(posedge tx_clk or negedge rstn) begin
    if (!rstn)
       cnt <= 0;
    else if (tx_done)
       cnt <= cnt +1;
end 

always @(*) begin
    if (cnt == 1000)
        $finish();
    else if (cnt%100 == 0)
        $display("Processing cnt: %d", cnt);
end

wire data;
fcp_tx_ctrl U_TX_CTRL (
     .clk       (tx_clk)
    ,.rstn      (rstn)
    ,.tx_en     (tx_en)
    ,.tx_type   (tx_type)
    ,.tx_data   (tx_data)
    ,.data      (data)
    ,.tx_done   (tx_done)
);

fcp_rx_ctrl U_RX_CTRL (
     .clk       (rx_clk)
    ,.rstn      (rstn)
    ,.data      (data)
    ,.rx_own_bus (1'b1)
    ,.ping_from_master   ()
    ,.reset_from_master   ()
    ,.rx_data      (rx_data)
    ,.rx_data_valid   (rx_data_valid)
);

endmodule
