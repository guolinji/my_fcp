create_clock -period 1000 [get_ports clk]
set_input_delay  600 [get_ports {rstn is_support_12v data}] -clock clk
set_output_delay 600 [get_ports {out_volt* data}] -clock clk

set_max_fanout 32 [current_design]
