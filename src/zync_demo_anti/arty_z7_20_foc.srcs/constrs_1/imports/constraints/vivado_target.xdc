set_property BITSTREAM.GENERAL.COMPRESS TRUE [current_design]

create_clock -period 20.000 -name sd_clk -waveform {0.000 10.000} [get_nets zsys_i/emio_sdemu_0/sd_clk]


set_property PACKAGE_PIN Y18 [get_ports clk_out_0]
set_property PACKAGE_PIN U18 [get_ports clk_in_0]
set_property IOSTANDARD LVCMOS33 [get_ports clk_in_0]
set_property IOSTANDARD LVCMOS33 [get_ports clk_out_0]

set_property SLEW FAST [get_ports clk_out_0]
set_property DRIVE 16 [get_ports clk_out_0]
set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
connect_debug_port dbg_hub/clk [get_nets clk]
