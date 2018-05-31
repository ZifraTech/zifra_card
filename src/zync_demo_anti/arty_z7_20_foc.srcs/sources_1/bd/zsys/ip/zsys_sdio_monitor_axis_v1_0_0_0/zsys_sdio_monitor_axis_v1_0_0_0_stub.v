// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Wed Apr 11 16:39:00 2018
// Host        : W7-64-05 running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode synth_stub -rename_top zsys_sdio_monitor_axis_v1_0_0_0 -prefix
//               zsys_sdio_monitor_axis_v1_0_0_0_ zsys_sdio_monitor_axis_v1_0_0_0_stub.v
// Design      : zsys_sdio_monitor_axis_v1_0_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "sdio_to_axis_v1_0,Vivado 2017.4" *)
module zsys_sdio_monitor_axis_v1_0_0_0(SDIO_CLK_IN, SDIO_CLK_FB, SDIO_CMD_I, 
  SDIO_CMD_O, SDIO_CMD_T, SDIO_DAT_I, SDIO_DAT_O, SDIO_DAT_T, SDIO_CDN, SDIO_WP, SDIO_BUSPOW, 
  SDIO_BUSVOLT, SDIO_LED, SDIO_CLK, SDIO_CMD, SDIO_CMD_DIR, SDIO_DAT, SDIO_DAT_DIR, LED, BUSPOW, 
  BUSVOLT, CDN, WP, STATE, new_CMD, CRC_ERR, RX_en, axis_aclk, axis_aresetn, m_cmd_axis_tvalid, 
  m_cmd_axis_tdata, m_cmd_axis_tuser, m_cmd_axis_tlast, m_cmd_axis_tready, 
  m_dat_axis_tvalid, m_dat_axis_tdata, m_dat_axis_tlast, m_dat_axis_tready)
/* synthesis syn_black_box black_box_pad_pin="SDIO_CLK_IN,SDIO_CLK_FB,SDIO_CMD_I,SDIO_CMD_O,SDIO_CMD_T,SDIO_DAT_I[3:0],SDIO_DAT_O[3:0],SDIO_DAT_T[3:0],SDIO_CDN,SDIO_WP,SDIO_BUSPOW,SDIO_BUSVOLT[2:0],SDIO_LED,SDIO_CLK,SDIO_CMD,SDIO_CMD_DIR,SDIO_DAT[3:0],SDIO_DAT_DIR,LED,BUSPOW,BUSVOLT[2:0],CDN,WP,STATE[3:0],new_CMD,CRC_ERR,RX_en,axis_aclk,axis_aresetn,m_cmd_axis_tvalid,m_cmd_axis_tdata[31:0],m_cmd_axis_tuser[7:0],m_cmd_axis_tlast,m_cmd_axis_tready,m_dat_axis_tvalid,m_dat_axis_tdata[7:0],m_dat_axis_tlast,m_dat_axis_tready" */;
  input SDIO_CLK_IN;
  input SDIO_CLK_FB;
  input SDIO_CMD_I;
  input SDIO_CMD_O;
  input SDIO_CMD_T;
  input [3:0]SDIO_DAT_I;
  input [3:0]SDIO_DAT_O;
  input [3:0]SDIO_DAT_T;
  input SDIO_CDN;
  input SDIO_WP;
  input SDIO_BUSPOW;
  input [2:0]SDIO_BUSVOLT;
  input SDIO_LED;
  output SDIO_CLK;
  output SDIO_CMD;
  output SDIO_CMD_DIR;
  output [3:0]SDIO_DAT;
  output SDIO_DAT_DIR;
  output LED;
  output BUSPOW;
  output [2:0]BUSVOLT;
  output CDN;
  output WP;
  output [3:0]STATE;
  output new_CMD;
  output CRC_ERR;
  input RX_en;
  input axis_aclk;
  input axis_aresetn;
  output m_cmd_axis_tvalid;
  output [31:0]m_cmd_axis_tdata;
  output [7:0]m_cmd_axis_tuser;
  output m_cmd_axis_tlast;
  input m_cmd_axis_tready;
  output m_dat_axis_tvalid;
  output [7:0]m_dat_axis_tdata;
  output m_dat_axis_tlast;
  input m_dat_axis_tready;
endmodule
