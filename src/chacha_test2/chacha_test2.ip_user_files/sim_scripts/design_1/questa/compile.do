vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/xpm
vlib questa_lib/msim/lib_cdc_v1_0_2
vlib questa_lib/msim/proc_sys_reset_v5_0_12
vlib questa_lib/msim/axi_lite_ipif_v3_0_4
vlib questa_lib/msim/lib_pkg_v1_0_2
vlib questa_lib/msim/lib_srl_fifo_v1_0_2
vlib questa_lib/msim/axi_uartlite_v2_0_19
vlib questa_lib/msim/microblaze_v10_0_5
vlib questa_lib/msim/lmb_v10_v3_0_9
vlib questa_lib/msim/lmb_bram_if_cntlr_v4_0_14
vlib questa_lib/msim/blk_mem_gen_v8_4_1
vlib questa_lib/msim/mdm_v3_2_12
vlib questa_lib/msim/axis_infrastructure_v1_1_0
vlib questa_lib/msim/axis_register_slice_v1_1_15
vlib questa_lib/msim/axis_dwidth_converter_v1_1_14
vlib questa_lib/msim/util_vector_logic_v2_0_1

vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap xpm questa_lib/msim/xpm
vmap lib_cdc_v1_0_2 questa_lib/msim/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_12 questa_lib/msim/proc_sys_reset_v5_0_12
vmap axi_lite_ipif_v3_0_4 questa_lib/msim/axi_lite_ipif_v3_0_4
vmap lib_pkg_v1_0_2 questa_lib/msim/lib_pkg_v1_0_2
vmap lib_srl_fifo_v1_0_2 questa_lib/msim/lib_srl_fifo_v1_0_2
vmap axi_uartlite_v2_0_19 questa_lib/msim/axi_uartlite_v2_0_19
vmap microblaze_v10_0_5 questa_lib/msim/microblaze_v10_0_5
vmap lmb_v10_v3_0_9 questa_lib/msim/lmb_v10_v3_0_9
vmap lmb_bram_if_cntlr_v4_0_14 questa_lib/msim/lmb_bram_if_cntlr_v4_0_14
vmap blk_mem_gen_v8_4_1 questa_lib/msim/blk_mem_gen_v8_4_1
vmap mdm_v3_2_12 questa_lib/msim/mdm_v3_2_12
vmap axis_infrastructure_v1_1_0 questa_lib/msim/axis_infrastructure_v1_1_0
vmap axis_register_slice_v1_1_15 questa_lib/msim/axis_register_slice_v1_1_15
vmap axis_dwidth_converter_v1_1_14 questa_lib/msim/axis_dwidth_converter_v1_1_14
vmap util_vector_logic_v2_0_1 questa_lib/msim/util_vector_logic_v2_0_1

vlog -work xil_defaultlib -64 -sv "+incdir+../../../../chacha_test2.srcs/sources_1/bd/design_1/ipshared/4868" "+incdir+../../../../chacha_test2.srcs/sources_1/bd/design_1/ipshared/0ab1/hdl" "+incdir+../../../../chacha_test2.srcs/sources_1/bd/design_1/ipshared/6180/hdl/verilog" "+incdir+../../../../chacha_test2.srcs/sources_1/bd/design_1/ipshared/a08d/hdl/verilog" "+incdir+../../../../chacha_test2.srcs/sources_1/bd/design_1/ipshared/6851/hdl/verilog" "+incdir+../../../../chacha_test2.srcs/sources_1/bd/design_1/ipshared/82bb/hdl/verilog" "+incdir+../../../../chacha_test2.srcs/sources_1/bd/design_1/ipshared/4868" "+incdir+../../../../chacha_test2.srcs/sources_1/bd/design_1/ipshared/0ab1/hdl" "+incdir+../../../../chacha_test2.srcs/sources_1/bd/design_1/ipshared/6180/hdl/verilog" "+incdir+../../../../chacha_test2.srcs/sources_1/bd/design_1/ipshared/a08d/hdl/verilog" "+incdir+../../../../chacha_test2.srcs/sources_1/bd/design_1/ipshared/6851/hdl/verilog" "+incdir+../../../../chacha_test2.srcs/sources_1/bd/design_1/ipshared/82bb/hdl/verilog" \
"/opt/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/opt/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"/opt/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93 \
"/opt/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work lib_cdc_v1_0_2 -64 -93 \
"../../../../chacha_test2.srcs/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_12 -64 -93 \
"../../../../chacha_test2.srcs/sources_1/bd/design_1/ipshared/f86a/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_1/ip/design_1_proc_sys_reset_0_0/sim/design_1_proc_sys_reset_0_0.vhd" \

vlog -work xil_defaultlib -64 "+incdir+../../../../chacha_test2.srcs/sources_1/bd/design_1/ipshared/4868" "+incdir+../../../../chacha_test2.srcs/sources_1/bd/design_1/ipshared/0ab1/hdl" "+incdir+../../../../chacha_test2.srcs/sources_1/bd/design_1/ipshared/6180/hdl/verilog" "+incdir+../../../../chacha_test2.srcs/sources_1/bd/design_1/ipshared/a08d/hdl/verilog" "+incdir+../../../../chacha_test2.srcs/sources_1/bd/design_1/ipshared/6851/hdl/verilog" "+incdir+../../../../chacha_test2.srcs/sources_1/bd/design_1/ipshared/82bb/hdl/verilog" "+incdir+../../../../chacha_test2.srcs/sources_1/bd/design_1/ipshared/4868" "+incdir+../../../../chacha_test2.srcs/sources_1/bd/design_1/ipshared/0ab1/hdl" "+incdir+../../../../chacha_test2.srcs/sources_1/bd/design_1/ipshared/6180/hdl/verilog" "+incdir+../../../../chacha_test2.srcs/sources_1/bd/design_1/ipshared/a08d/hdl/verilog" "+incdir+../../../../chacha_test2.srcs/sources_1/bd/design_1/ipshared/6851/hdl/verilog" "+incdir+../../../../chacha_test2.srcs/sources_1/bd/design_1/ipshared/82bb/hdl/verilog" \
"../../../bd/design_1/ip/design_1_clk_wiz_0_0/design_1_clk_wiz_0_0_clk_wiz.v" \
"../../../bd/design_1/ip/design_1_clk_wiz_0_0/design_1_clk_wiz_0_0.v" \

vcom -work axi_lite_ipif_v3_0_4 -64 -93 \
"../../../../chacha_test2.srcs/sources_1/bd/design_1/ipshared/cced/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work lib_pkg_v1_0_2 -64 -93 \
"../../../../chacha_test2.srcs/sources_1/bd/design_1/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \

vcom -work lib_srl_fifo_v1_0_2 -64 -93 \
"../../../../chacha_test2.srcs/sources_1/bd/design_1/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vcom -work axi_uartlite_v2_0_19 -64 -93 \
"../../../../chacha_test2.srcs/sources_1/bd/design_1/ipshared/c778/hdl/axi_uartlite_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_1/ip/design_1_axi_uartlite_0_0/sim/design_1_axi_uartlite_0_0.vhd" \

vcom -work microblaze_v10_0_5 -64 -93 \
"../../../../chacha_test2.srcs/sources_1/bd/design_1/ipshared/4f30/hdl/microblaze_v10_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_1/ip/design_1_microblaze_0_0/sim/design_1_microblaze_0_0.vhd" \

vcom -work lmb_v10_v3_0_9 -64 -93 \
"../../../../chacha_test2.srcs/sources_1/bd/design_1/ipshared/78eb/hdl/lmb_v10_v3_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_1/ip/design_1_dlmb_v10_0/sim/design_1_dlmb_v10_0.vhd" \
"../../../bd/design_1/ip/design_1_ilmb_v10_0/sim/design_1_ilmb_v10_0.vhd" \

vcom -work lmb_bram_if_cntlr_v4_0_14 -64 -93 \
"../../../../chacha_test2.srcs/sources_1/bd/design_1/ipshared/226d/hdl/lmb_bram_if_cntlr_v4_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_1/ip/design_1_dlmb_bram_if_cntlr_0/sim/design_1_dlmb_bram_if_cntlr_0.vhd" \
"../../../bd/design_1/ip/design_1_ilmb_bram_if_cntlr_0/sim/design_1_ilmb_bram_if_cntlr_0.vhd" \

vlog -work blk_mem_gen_v8_4_1 -64 "+incdir+../../../../chacha_test2.srcs/sources_1/bd/design_1/ipshared/4868" "+incdir+../../../../chacha_test2.srcs/sources_1/bd/design_1/ipshared/0ab1/hdl" "+incdir+../../../../chacha_test2.srcs/sources_1/bd/design_1/ipshared/6180/hdl/verilog" "+incdir+../../../../chacha_test2.srcs/sources_1/bd/design_1/ipshared/a08d/hdl/verilog" "+incdir+../../../../chacha_test2.srcs/sources_1/bd/design_1/ipshared/6851/hdl/verilog" "+incdir+../../../../chacha_test2.srcs/sources_1/bd/design_1/ipshared/82bb/hdl/verilog" "+incdir+../../../../chacha_test2.srcs/sources_1/bd/design_1/ipshared/4868" "+incdir+../../../../chacha_test2.srcs/sources_1/bd/design_1/ipshared/0ab1/hdl" "+incdir+../../../../chacha_test2.srcs/sources_1/bd/design_1/ipshared/6180/hdl/verilog" "+incdir+../../../../chacha_test2.srcs/sources_1/bd/design_1/ipshared/a08d/hdl/verilog" "+incdir+../../../../chacha_test2.srcs/sources_1/bd/design_1/ipshared/6851/hdl/verilog" "+incdir+../../../../chacha_test2.srcs/sources_1/bd/design_1/ipshared/82bb/hdl/verilog" \
"../../../../chacha_test2.srcs/sources_1/bd/design_1/ipshared/67d8/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib -64 "+incdir+../../../../chacha_test2.srcs/sources_1/bd/design_1/ipshared/4868" "+incdir+../../../../chacha_test2.srcs/sources_1/bd/design_1/ipshared/0ab1/hdl" "+incdir+../../../../chacha_test2.srcs/sources_1/bd/design_1/ipshared/6180/hdl/verilog" "+incdir+../../../../chacha_test2.srcs/sources_1/bd/design_1/ipshared/a08d/hdl/verilog" "+incdir+../../../../chacha_test2.srcs/sources_1/bd/design_1/ipshared/6851/hdl/verilog" "+incdir+../../../../chacha_test2.srcs/sources_1/bd/design_1/ipshared/82bb/hdl/verilog" "+incdir+../../../../chacha_test2.srcs/sources_1/bd/design_1/ipshared/4868" "+incdir+../../../../chacha_test2.srcs/sources_1/bd/design_1/ipshared/0ab1/hdl" "+incdir+../../../../chacha_test2.srcs/sources_1/bd/design_1/ipshared/6180/hdl/verilog" "+incdir+../../../../chacha_test2.srcs/sources_1/bd/design_1/ipshared/a08d/hdl/verilog" "+incdir+../../../../chacha_test2.srcs/sources_1/bd/design_1/ipshared/6851/hdl/verilog" "+incdir+../../../../chacha_test2.srcs/sources_1/bd/design_1/ipshared/82bb/hdl/verilog" \
"../../../bd/design_1/ip/design_1_lmb_bram_0/sim/design_1_lmb_bram_0.v" \

vcom -work mdm_v3_2_12 -64 -93 \
"../../../../chacha_test2.srcs/sources_1/bd/design_1/ipshared/8608/hdl/mdm_v3_2_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_1/ip/design_1_mdm_1_0/sim/design_1_mdm_1_0.vhd" \

vlog -work axis_infrastructure_v1_1_0 -64 "+incdir+../../../../chacha_test2.srcs/sources_1/bd/design_1/ipshared/4868" "+incdir+../../../../chacha_test2.srcs/sources_1/bd/design_1/ipshared/0ab1/hdl" "+incdir+../../../../chacha_test2.srcs/sources_1/bd/design_1/ipshared/6180/hdl/verilog" "+incdir+../../../../chacha_test2.srcs/sources_1/bd/design_1/ipshared/a08d/hdl/verilog" "+incdir+../../../../chacha_test2.srcs/sources_1/bd/design_1/ipshared/6851/hdl/verilog" "+incdir+../../../../chacha_test2.srcs/sources_1/bd/design_1/ipshared/82bb/hdl/verilog" "+incdir+../../../../chacha_test2.srcs/sources_1/bd/design_1/ipshared/4868" "+incdir+../../../../chacha_test2.srcs/sources_1/bd/design_1/ipshared/0ab1/hdl" "+incdir+../../../../chacha_test2.srcs/sources_1/bd/design_1/ipshared/6180/hdl/verilog" "+incdir+../../../../chacha_test2.srcs/sources_1/bd/design_1/ipshared/a08d/hdl/verilog" "+incdir+../../../../chacha_test2.srcs/sources_1/bd/design_1/ipshared/6851/hdl/verilog" "+incdir+../../../../chacha_test2.srcs/sources_1/bd/design_1/ipshared/82bb/hdl/verilog" \
"../../../../chacha_test2.srcs/sources_1/bd/design_1/ipshared/0ab1/hdl/axis_infrastructure_v1_1_vl_rfs.v" \

vlog -work axis_register_slice_v1_1_15 -64 "+incdir+../../../../chacha_test2.srcs/sources_1/bd/design_1/ipshared/4868" "+incdir+../../../../chacha_test2.srcs/sources_1/bd/design_1/ipshared/0ab1/hdl" "+incdir+../../../../chacha_test2.srcs/sources_1/bd/design_1/ipshared/6180/hdl/verilog" "+incdir+../../../../chacha_test2.srcs/sources_1/bd/design_1/ipshared/a08d/hdl/verilog" "+incdir+../../../../chacha_test2.srcs/sources_1/bd/design_1/ipshared/6851/hdl/verilog" "+incdir+../../../../chacha_test2.srcs/sources_1/bd/design_1/ipshared/82bb/hdl/verilog" "+incdir+../../../../chacha_test2.srcs/sources_1/bd/design_1/ipshared/4868" "+incdir+../../../../chacha_test2.srcs/sources_1/bd/design_1/ipshared/0ab1/hdl" "+incdir+../../../../chacha_test2.srcs/sources_1/bd/design_1/ipshared/6180/hdl/verilog" "+incdir+../../../../chacha_test2.srcs/sources_1/bd/design_1/ipshared/a08d/hdl/verilog" "+incdir+../../../../chacha_test2.srcs/sources_1/bd/design_1/ipshared/6851/hdl/verilog" "+incdir+../../../../chacha_test2.srcs/sources_1/bd/design_1/ipshared/82bb/hdl/verilog" \
"../../../../chacha_test2.srcs/sources_1/bd/design_1/ipshared/cd45/hdl/axis_register_slice_v1_1_vl_rfs.v" \

vlog -work axis_dwidth_converter_v1_1_14 -64 "+incdir+../../../../chacha_test2.srcs/sources_1/bd/design_1/ipshared/4868" "+incdir+../../../../chacha_test2.srcs/sources_1/bd/design_1/ipshared/0ab1/hdl" "+incdir+../../../../chacha_test2.srcs/sources_1/bd/design_1/ipshared/6180/hdl/verilog" "+incdir+../../../../chacha_test2.srcs/sources_1/bd/design_1/ipshared/a08d/hdl/verilog" "+incdir+../../../../chacha_test2.srcs/sources_1/bd/design_1/ipshared/6851/hdl/verilog" "+incdir+../../../../chacha_test2.srcs/sources_1/bd/design_1/ipshared/82bb/hdl/verilog" "+incdir+../../../../chacha_test2.srcs/sources_1/bd/design_1/ipshared/4868" "+incdir+../../../../chacha_test2.srcs/sources_1/bd/design_1/ipshared/0ab1/hdl" "+incdir+../../../../chacha_test2.srcs/sources_1/bd/design_1/ipshared/6180/hdl/verilog" "+incdir+../../../../chacha_test2.srcs/sources_1/bd/design_1/ipshared/a08d/hdl/verilog" "+incdir+../../../../chacha_test2.srcs/sources_1/bd/design_1/ipshared/6851/hdl/verilog" "+incdir+../../../../chacha_test2.srcs/sources_1/bd/design_1/ipshared/82bb/hdl/verilog" \
"../../../../chacha_test2.srcs/sources_1/bd/design_1/ipshared/1019/hdl/axis_dwidth_converter_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 "+incdir+../../../../chacha_test2.srcs/sources_1/bd/design_1/ipshared/4868" "+incdir+../../../../chacha_test2.srcs/sources_1/bd/design_1/ipshared/0ab1/hdl" "+incdir+../../../../chacha_test2.srcs/sources_1/bd/design_1/ipshared/6180/hdl/verilog" "+incdir+../../../../chacha_test2.srcs/sources_1/bd/design_1/ipshared/a08d/hdl/verilog" "+incdir+../../../../chacha_test2.srcs/sources_1/bd/design_1/ipshared/6851/hdl/verilog" "+incdir+../../../../chacha_test2.srcs/sources_1/bd/design_1/ipshared/82bb/hdl/verilog" "+incdir+../../../../chacha_test2.srcs/sources_1/bd/design_1/ipshared/4868" "+incdir+../../../../chacha_test2.srcs/sources_1/bd/design_1/ipshared/0ab1/hdl" "+incdir+../../../../chacha_test2.srcs/sources_1/bd/design_1/ipshared/6180/hdl/verilog" "+incdir+../../../../chacha_test2.srcs/sources_1/bd/design_1/ipshared/a08d/hdl/verilog" "+incdir+../../../../chacha_test2.srcs/sources_1/bd/design_1/ipshared/6851/hdl/verilog" "+incdir+../../../../chacha_test2.srcs/sources_1/bd/design_1/ipshared/82bb/hdl/verilog" \
"../../../bd/design_1/ip/design_1_axis_dwidth_converter_0_0/sim/design_1_axis_dwidth_converter_0_0.v" \
"../../../bd/design_1/ip/design_1_axis_dwidth_converter_1_0/sim/design_1_axis_dwidth_converter_1_0.v" \

vlog -work util_vector_logic_v2_0_1 -64 "+incdir+../../../../chacha_test2.srcs/sources_1/bd/design_1/ipshared/4868" "+incdir+../../../../chacha_test2.srcs/sources_1/bd/design_1/ipshared/0ab1/hdl" "+incdir+../../../../chacha_test2.srcs/sources_1/bd/design_1/ipshared/6180/hdl/verilog" "+incdir+../../../../chacha_test2.srcs/sources_1/bd/design_1/ipshared/a08d/hdl/verilog" "+incdir+../../../../chacha_test2.srcs/sources_1/bd/design_1/ipshared/6851/hdl/verilog" "+incdir+../../../../chacha_test2.srcs/sources_1/bd/design_1/ipshared/82bb/hdl/verilog" "+incdir+../../../../chacha_test2.srcs/sources_1/bd/design_1/ipshared/4868" "+incdir+../../../../chacha_test2.srcs/sources_1/bd/design_1/ipshared/0ab1/hdl" "+incdir+../../../../chacha_test2.srcs/sources_1/bd/design_1/ipshared/6180/hdl/verilog" "+incdir+../../../../chacha_test2.srcs/sources_1/bd/design_1/ipshared/a08d/hdl/verilog" "+incdir+../../../../chacha_test2.srcs/sources_1/bd/design_1/ipshared/6851/hdl/verilog" "+incdir+../../../../chacha_test2.srcs/sources_1/bd/design_1/ipshared/82bb/hdl/verilog" \
"../../../../chacha_test2.srcs/sources_1/bd/design_1/ipshared/2137/hdl/util_vector_logic_v2_0_vl_rfs.v" \

vlog -work xil_defaultlib -64 "+incdir+../../../../chacha_test2.srcs/sources_1/bd/design_1/ipshared/4868" "+incdir+../../../../chacha_test2.srcs/sources_1/bd/design_1/ipshared/0ab1/hdl" "+incdir+../../../../chacha_test2.srcs/sources_1/bd/design_1/ipshared/6180/hdl/verilog" "+incdir+../../../../chacha_test2.srcs/sources_1/bd/design_1/ipshared/a08d/hdl/verilog" "+incdir+../../../../chacha_test2.srcs/sources_1/bd/design_1/ipshared/6851/hdl/verilog" "+incdir+../../../../chacha_test2.srcs/sources_1/bd/design_1/ipshared/82bb/hdl/verilog" "+incdir+../../../../chacha_test2.srcs/sources_1/bd/design_1/ipshared/4868" "+incdir+../../../../chacha_test2.srcs/sources_1/bd/design_1/ipshared/0ab1/hdl" "+incdir+../../../../chacha_test2.srcs/sources_1/bd/design_1/ipshared/6180/hdl/verilog" "+incdir+../../../../chacha_test2.srcs/sources_1/bd/design_1/ipshared/a08d/hdl/verilog" "+incdir+../../../../chacha_test2.srcs/sources_1/bd/design_1/ipshared/6851/hdl/verilog" "+incdir+../../../../chacha_test2.srcs/sources_1/bd/design_1/ipshared/82bb/hdl/verilog" \
"../../../bd/design_1/ip/design_1_util_vector_logic_0_0/sim/design_1_util_vector_logic_0_0.v" \
"../../../../chacha_test2.srcs/sources_1/bd/design_1/ipshared/77fc/hdl/chacha_qr.v" \
"../../../../chacha_test2.srcs/sources_1/bd/design_1/ipshared/77fc/hdl/chacha_core.v" \

vcom -work xil_defaultlib -64 -93 \
"../../../../chacha_test2.srcs/sources_1/bd/design_1/ipshared/77fc/hdl/chacha_axi_ip_v1_0.vhd" \
"../../../bd/design_1/ip/design_1_chacha_axi_ip_1_0/sim/design_1_chacha_axi_ip_1_0.vhd" \
"../../../bd/design_1/ip/design_1_ila_0_1/sim/design_1_ila_0_1.vhd" \
"../../../bd/design_1/sim/design_1.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

