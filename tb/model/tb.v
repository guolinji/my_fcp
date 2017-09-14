`timescale 1us / 1ns

module testbench;

localparam SCLK_PERIOD      = 0.5;
localparam RST_TIME         = 10;

localparam SBRWR            = 8'b0000_1011;
localparam SBRRD            = 8'b0000_1100;

reg sclk;
always begin
    sclk = 0;
    forever #SCLK_PERIOD sclk = ~sclk;
end


reg rstn;

initial begin
    rstn = 0;
    #RST_TIME
    rstn = 1;

    #2000000
    $finish();
end


initial begin
    $fsdbDumpfile("model.fsdb");
    $fsdbDumpvars;
end

mst_model U_MST_MODEL ();

fcp_core U_FCP_CORE (
     .clk               (sclk)
    ,.rstn              (rstn)
    ,.is_support_12v    (1'b1)
    ,.out_volt          ()
    ,.data              (U_MST_MODEL.x)
);

endmodule

