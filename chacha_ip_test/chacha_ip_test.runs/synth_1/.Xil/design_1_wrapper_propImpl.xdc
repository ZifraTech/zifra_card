set_property SRC_FILE_INFO {cfile:/home/torbjorn/development/vhdl/cifra/chacha_ip_test/chacha_ip_test.srcs/sources_1/bd/design_1/ip/design_1_clk_wiz_0_0/design_1_clk_wiz_0_0.xdc rfile:../../../chacha_ip_test.srcs/sources_1/bd/design_1/ip/design_1_clk_wiz_0_0/design_1_clk_wiz_0_0.xdc id:1 order:EARLY scoped_inst:design_1_i/clk_wiz_0/inst} [current_design]
set_property SRC_FILE_INFO {cfile:/home/torbjorn/development/vhdl/cifra/chacha_ip_test/chacha_ip_test.srcs/sources_1/bd/design_1/ip/design_1_microblaze_0_0/design_1_microblaze_0_0.xdc rfile:../../../chacha_ip_test.srcs/sources_1/bd/design_1/ip/design_1_microblaze_0_0/design_1_microblaze_0_0.xdc id:2 order:EARLY scoped_inst:design_1_i/microblaze_0/U0} [current_design]
set_property SRC_FILE_INFO {cfile:/home/torbjorn/development/vhdl/cifra/chacha_ip_test/chacha_ip_test.srcs/sources_1/bd/design_1/ip/design_1_mdm_1_0/design_1_mdm_1_0.xdc rfile:../../../chacha_ip_test.srcs/sources_1/bd/design_1/ip/design_1_mdm_1_0/design_1_mdm_1_0.xdc id:3 order:EARLY scoped_inst:design_1_i/mdm_1/U0} [current_design]
set_property SRC_FILE_INFO {cfile:/home/torbjorn/development/vhdl/cifra/chacha_ip_test/chacha_ip_test.srcs/sources_1/bd/design_1/ip/design_1_axi_quad_spi_0_0/design_1_axi_quad_spi_0_0_clocks.xdc rfile:../../../chacha_ip_test.srcs/sources_1/bd/design_1/ip/design_1_axi_quad_spi_0_0/design_1_axi_quad_spi_0_0_clocks.xdc id:4 order:LATE scoped_inst:design_1_i/axi_quad_spi_0/U0} [current_design]
set_property src_info {type:SCOPED_XDC file:1 line:57 export:INPUT save:INPUT read:READ} [current_design]
set_input_jitter [get_clocks -of_objects [get_ports clk_in1]] 0.1
set_property src_info {type:SCOPED_XDC file:2 line:2 export:INPUT save:INPUT read:READ} [current_design]
set_ip_msg_config -idlist { DPOP-3 PDCN-1569 CDC-1 CDC-4 CDC-7 TIMING-9 TIMING-10 }
set_property src_info {type:SCOPED_XDC file:3 line:57 export:INPUT save:INPUT read:READ} [current_design]
set_ip_msg_config -idlist { CDC-1 CDCM-1 REQP-1851 TIMING-2 TIMING-4 TIMING-9 TIMING-10 TIMING-14 }
set_property src_info {type:SCOPED_XDC file:4 line:51 export:INPUT save:INPUT read:READ} [current_design]
set_max_delay -from [get_cells -hierarchical -filter {NAME =~*RX_FIFO_II/USE_2N_DEPTH.V6_S6_AND_LATER.I_ASYNC_FIFO_BRAM/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/rd_pntr_gc_reg[*]}] -to [get_cells -hierarchical -filter {NAME =~*RX_FIFO_II/USE_2N_DEPTH.V6_S6_AND_LATER.I_ASYNC_FIFO_BRAM/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/gsync_stage[*].wr_stg_inst/Q_reg_reg[*]}] -datapath_only [get_property -min PERIOD [get_clocks -of_objects [get_pins design_1_i/axi_quad_spi_0/U0/s_axi_aclk]]]
set_property src_info {type:SCOPED_XDC file:4 line:52 export:INPUT save:INPUT read:READ} [current_design]
set_max_delay -from [get_cells -hierarchical -filter {NAME =~*RX_FIFO_II/USE_2N_DEPTH.V6_S6_AND_LATER.I_ASYNC_FIFO_BRAM/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/wr_pntr_gc_reg[*]}] -to [get_cells -hierarchical -filter {NAME =~*RX_FIFO_II/USE_2N_DEPTH.V6_S6_AND_LATER.I_ASYNC_FIFO_BRAM/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/gsync_stage[*].rd_stg_inst/Q_reg_reg[*]}] -datapath_only [get_property -min PERIOD [get_clocks -of_objects [get_pins design_1_i/axi_quad_spi_0/U0/ext_spi_clk]]]
set_property src_info {type:SCOPED_XDC file:4 line:55 export:INPUT save:INPUT read:READ} [current_design]
set_max_delay -from [get_cells -hierarchical -filter {NAME =~*TX_FIFO_II/USE_2N_DEPTH.V6_S6_AND_LATER.I_ASYNC_FIFO_BRAM/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/rd_pntr_gc_reg[*]}] -to [get_cells -hierarchical -filter {NAME =~*TX_FIFO_II/USE_2N_DEPTH.V6_S6_AND_LATER.I_ASYNC_FIFO_BRAM/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/gsync_stage[*].wr_stg_inst/Q_reg_reg[*]}] -datapath_only [get_property -min PERIOD [get_clocks -of_objects [get_pins design_1_i/axi_quad_spi_0/U0/ext_spi_clk]]]
set_property src_info {type:SCOPED_XDC file:4 line:56 export:INPUT save:INPUT read:READ} [current_design]
set_max_delay -from [get_cells -hierarchical -filter {NAME =~*TX_FIFO_II/USE_2N_DEPTH.V6_S6_AND_LATER.I_ASYNC_FIFO_BRAM/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/wr_pntr_gc_reg[*]}] -to [get_cells -hierarchical -filter {NAME =~*TX_FIFO_II/USE_2N_DEPTH.V6_S6_AND_LATER.I_ASYNC_FIFO_BRAM/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/gsync_stage[*].rd_stg_inst/Q_reg_reg[*]}] -datapath_only [get_property -min PERIOD [get_clocks -of_objects [get_pins design_1_i/axi_quad_spi_0/U0/s_axi_aclk]]]