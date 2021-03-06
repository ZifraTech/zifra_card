#!/bin/bash -f
# ****************************************************************************
# Vivado (TM) v2017.4 (64-bit)
#
# Filename    : elaborate.sh
# Simulator   : Xilinx Vivado Simulator
# Description : Script for elaborating the compiled design
#
# Generated by Vivado on Mon Apr 16 14:08:12 CEST 2018
# SW Build 2086221 on Fri Dec 15 20:54:30 MST 2017
#
# Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
#
# usage: elaborate.sh
#
# ****************************************************************************
ExecStep()
{
"$@"
RETVAL=$?
if [ $RETVAL -ne 0 ]
then
exit $RETVAL
fi
}
ExecStep xelab -wto d5db53f13c344bea9dc7da58a7b85080 --incr --debug typical --relax --mt 8 -L xil_defaultlib -L axi_infrastructure_v1_1_0 -L smartconnect_v1_0 -L axi_protocol_checker_v2_0_1 -L axi_vip_v1_1_1 -L processing_system7_vip_v1_0_3 -L lib_cdc_v1_0_2 -L proc_sys_reset_v5_0_12 -L generic_baseblocks_v2_1_0 -L fifo_generator_v13_2_1 -L axi_data_fifo_v2_1_14 -L axi_register_slice_v2_1_15 -L axi_protocol_converter_v2_1_15 -L gigantic_mux -L xlconcat_v2_1_1 -L axis_infrastructure_v1_1_0 -L axis_data_fifo_v1_1_16 -L blk_mem_gen_v8_3_6 -L axi_bram_ctrl_v4_0_13 -L blk_mem_gen_v8_4_1 -L util_ds_buf_v2_01_a -L xilinx_vip -L unisims_ver -L unimacro_ver -L secureip -L xpm --snapshot zsys_wrapper_behav xil_defaultlib.zsys_wrapper xil_defaultlib.glbl -log elaborate.log
