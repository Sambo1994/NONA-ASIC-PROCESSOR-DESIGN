create_clock -name clk -period 10 [get_ports clk]
set_input_delay 1 -clock clk [get_ports data_in]
set_output_delay 1 -clock clk [get_ports data_out]
set_clock_uncertainty 0.2 [get_clocks clk]
