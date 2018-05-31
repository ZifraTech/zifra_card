// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Wed Apr 11 16:39:00 2018
// Host        : W7-64-05 running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode funcsim -rename_top zsys_sdio_monitor_axis_v1_0_0_0 -prefix
//               zsys_sdio_monitor_axis_v1_0_0_0_ zsys_sdio_monitor_axis_v1_0_0_0_sim_netlist.v
// Design      : zsys_sdio_monitor_axis_v1_0_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module zsys_sdio_monitor_axis_v1_0_0_0_SDIP_CMD_RX
   (SDIO_CMD,
    clear,
    new_CMD,
    m_cmd_axis_tvalid,
    CRC_ERR,
    ACMD_s_reg,
    m_cmd_axis_tuser,
    m_cmd_axis_tdata,
    SDIO_CLK_FB,
    RX_en,
    SDIO_CMD_I,
    SDIO_CMD_O,
    SDIO_CMD_T,
    axis_aresetn,
    \command_s_reg[2]_0 ,
    ACMD_s_reg_0);
  output SDIO_CMD;
  output clear;
  output new_CMD;
  output m_cmd_axis_tvalid;
  output CRC_ERR;
  output ACMD_s_reg;
  output [5:0]m_cmd_axis_tuser;
  output [31:0]m_cmd_axis_tdata;
  input SDIO_CLK_FB;
  input RX_en;
  input SDIO_CMD_I;
  input SDIO_CMD_O;
  input SDIO_CMD_T;
  input axis_aresetn;
  input \command_s_reg[2]_0 ;
  input [0:0]ACMD_s_reg_0;

  wire ACMD_s_reg;
  wire [0:0]ACMD_s_reg_0;
  wire \BitCount[1]_i_1_n_0 ;
  wire [7:0]BitCount_reg__0;
  wire CMD_RX_ACT;
  wire CMD_RX_ACT_i_1_n_0;
  wire CMD_i1;
  wire CMD_i2;
  wire CRC_ERR;
  wire CRC_ERR_s_i_1_n_0;
  wire CRC_ERR_s_i_2_n_0;
  wire CRC_ERR_s_i_3_n_0;
  wire CRC_ERR_s_i_4_n_0;
  wire CRC_ERR_s_i_5_n_0;
  wire CRC_RST;
  wire CRC_RST_i_1_n_0;
  wire CRC_RST_i_2_n_0;
  wire Inst_SDIP_RX_CRC7_n_0;
  wire Inst_SDIP_RX_CRC7_n_1;
  wire Inst_SDIP_RX_CRC7_n_2;
  wire Inst_SDIP_RX_CRC7_n_3;
  wire Inst_SDIP_RX_CRC7_n_4;
  wire Inst_SDIP_RX_CRC7_n_5;
  wire Inst_SDIP_RX_CRC7_n_6;
  wire RX_en;
  wire SDIO_CLK_FB;
  wire SDIO_CMD;
  wire SDIO_CMD_I;
  wire SDIO_CMD_O;
  wire SDIO_CMD_T;
  wire [31:0]arg_sr;
  wire \arg_sr[31]_i_2_n_0 ;
  wire arg_sr_0;
  wire axis_aresetn;
  wire \calc_CRC_s[6]_i_1_n_0 ;
  wire \calc_CRC_s_reg_n_0_[0] ;
  wire \calc_CRC_s_reg_n_0_[1] ;
  wire \calc_CRC_s_reg_n_0_[2] ;
  wire \calc_CRC_s_reg_n_0_[3] ;
  wire \calc_CRC_s_reg_n_0_[4] ;
  wire \calc_CRC_s_reg_n_0_[5] ;
  wire \calc_CRC_s_reg_n_0_[6] ;
  wire clear;
  wire cmd_done_s;
  wire cmd_done_s_i_2_n_0;
  wire command_s;
  wire \command_s_reg[2]_0 ;
  wire \command_sr[7]_i_1_n_0 ;
  wire \command_sr_reg_n_0_[0] ;
  wire \command_sr_reg_n_0_[1] ;
  wire \command_sr_reg_n_0_[2] ;
  wire \command_sr_reg_n_0_[3] ;
  wire \command_sr_reg_n_0_[4] ;
  wire \command_sr_reg_n_0_[5] ;
  wire \command_sr_reg_n_0_[6] ;
  wire [31:0]m_cmd_axis_tdata;
  wire [5:0]m_cmd_axis_tuser;
  wire m_cmd_axis_tvalid;
  wire new_CMD;
  wire new_CMD_s_i_1_n_0;
  wire new_CMD_s_i_3_n_0;
  wire [7:0]p_0_in;
  wire p_0_in_1;
  wire [7:0]p_1_in;
  wire [5:0]read_CRC_s;
  wire \read_CRC_s[0]_i_1_n_0 ;
  wire \read_CRC_s[1]_i_1_n_0 ;
  wire \read_CRC_s[2]_i_1_n_0 ;
  wire \read_CRC_s[3]_i_1_n_0 ;
  wire \read_CRC_s[4]_i_1_n_0 ;
  wire \read_CRC_s[5]_i_1_n_0 ;
  wire \read_CRC_s[6]_i_1_n_0 ;
  wire \read_CRC_s[6]_i_2_n_0 ;
  wire \read_CRC_s[6]_i_3_n_0 ;
  wire \read_CRC_s_reg_n_0_[6] ;

  LUT5 #(
    .INIT(32'h00FF0200)) 
    ACMD_s_i_1
       (.I0(m_cmd_axis_tuser[5]),
        .I1(m_cmd_axis_tuser[3]),
        .I2(\command_s_reg[2]_0 ),
        .I3(m_cmd_axis_tvalid),
        .I4(ACMD_s_reg_0),
        .O(ACMD_s_reg));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \BitCount[0]_i_1 
       (.I0(BitCount_reg__0[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \BitCount[1]_i_1 
       (.I0(BitCount_reg__0[1]),
        .I1(BitCount_reg__0[0]),
        .O(\BitCount[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \BitCount[2]_i_1 
       (.I0(BitCount_reg__0[1]),
        .I1(BitCount_reg__0[0]),
        .I2(BitCount_reg__0[2]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \BitCount[3]_i_1 
       (.I0(BitCount_reg__0[3]),
        .I1(BitCount_reg__0[2]),
        .I2(BitCount_reg__0[1]),
        .I3(BitCount_reg__0[0]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hAAAA5551)) 
    \BitCount[4]_i_1 
       (.I0(cmd_done_s_i_2_n_0),
        .I1(BitCount_reg__0[5]),
        .I2(BitCount_reg__0[6]),
        .I3(BitCount_reg__0[7]),
        .I4(BitCount_reg__0[4]),
        .O(p_0_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hF00FF0E0)) 
    \BitCount[5]_i_1 
       (.I0(BitCount_reg__0[7]),
        .I1(BitCount_reg__0[6]),
        .I2(BitCount_reg__0[5]),
        .I3(cmd_done_s_i_2_n_0),
        .I4(BitCount_reg__0[4]),
        .O(p_0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hDF20)) 
    \BitCount[6]_i_1 
       (.I0(BitCount_reg__0[5]),
        .I1(cmd_done_s_i_2_n_0),
        .I2(BitCount_reg__0[4]),
        .I3(BitCount_reg__0[6]),
        .O(p_0_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hF7FF0800)) 
    \BitCount[7]_i_1 
       (.I0(BitCount_reg__0[6]),
        .I1(BitCount_reg__0[4]),
        .I2(cmd_done_s_i_2_n_0),
        .I3(BitCount_reg__0[5]),
        .I4(BitCount_reg__0[7]),
        .O(p_0_in[7]));
  FDCE #(
    .INIT(1'b0)) 
    \BitCount_reg[0] 
       (.C(SDIO_CLK_FB),
        .CE(CMD_RX_ACT),
        .CLR(clear),
        .D(p_0_in[0]),
        .Q(BitCount_reg__0[0]));
  FDCE #(
    .INIT(1'b0)) 
    \BitCount_reg[1] 
       (.C(SDIO_CLK_FB),
        .CE(CMD_RX_ACT),
        .CLR(clear),
        .D(\BitCount[1]_i_1_n_0 ),
        .Q(BitCount_reg__0[1]));
  FDCE #(
    .INIT(1'b0)) 
    \BitCount_reg[2] 
       (.C(SDIO_CLK_FB),
        .CE(CMD_RX_ACT),
        .CLR(clear),
        .D(p_0_in[2]),
        .Q(BitCount_reg__0[2]));
  FDCE #(
    .INIT(1'b0)) 
    \BitCount_reg[3] 
       (.C(SDIO_CLK_FB),
        .CE(CMD_RX_ACT),
        .CLR(clear),
        .D(p_0_in[3]),
        .Q(BitCount_reg__0[3]));
  FDCE #(
    .INIT(1'b0)) 
    \BitCount_reg[4] 
       (.C(SDIO_CLK_FB),
        .CE(CMD_RX_ACT),
        .CLR(clear),
        .D(p_0_in[4]),
        .Q(BitCount_reg__0[4]));
  FDCE #(
    .INIT(1'b0)) 
    \BitCount_reg[5] 
       (.C(SDIO_CLK_FB),
        .CE(CMD_RX_ACT),
        .CLR(clear),
        .D(p_0_in[5]),
        .Q(BitCount_reg__0[5]));
  FDCE #(
    .INIT(1'b0)) 
    \BitCount_reg[6] 
       (.C(SDIO_CLK_FB),
        .CE(CMD_RX_ACT),
        .CLR(clear),
        .D(p_0_in[6]),
        .Q(BitCount_reg__0[6]));
  FDCE #(
    .INIT(1'b0)) 
    \BitCount_reg[7] 
       (.C(SDIO_CLK_FB),
        .CE(CMD_RX_ACT),
        .CLR(clear),
        .D(p_0_in[7]),
        .Q(BitCount_reg__0[7]));
  LUT6 #(
    .INIT(64'hB888888888888888)) 
    CMD_RX_ACT_i_1
       (.I0(CRC_ERR_s_i_3_n_0),
        .I1(CMD_RX_ACT),
        .I2(CRC_RST_i_2_n_0),
        .I3(CMD_i1),
        .I4(RX_en),
        .I5(CMD_i2),
        .O(CMD_RX_ACT_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    CMD_RX_ACT_reg
       (.C(SDIO_CLK_FB),
        .CE(1'b1),
        .CLR(clear),
        .D(CMD_RX_ACT_i_1_n_0),
        .Q(CMD_RX_ACT));
  FDCE #(
    .INIT(1'b0)) 
    CMD_i1_reg
       (.C(SDIO_CLK_FB),
        .CE(1'b1),
        .CLR(clear),
        .D(SDIO_CMD),
        .Q(CMD_i1));
  FDCE #(
    .INIT(1'b0)) 
    CMD_i2_reg
       (.C(SDIO_CLK_FB),
        .CE(1'b1),
        .CLR(clear),
        .D(CMD_i1),
        .Q(CMD_i2));
  LUT4 #(
    .INIT(16'h3F08)) 
    CRC_ERR_s_i_1
       (.I0(CRC_ERR_s_i_2_n_0),
        .I1(CMD_RX_ACT),
        .I2(CRC_ERR_s_i_3_n_0),
        .I3(CRC_ERR),
        .O(CRC_ERR_s_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFBEFFFFBE)) 
    CRC_ERR_s_i_2
       (.I0(CRC_ERR_s_i_4_n_0),
        .I1(read_CRC_s[1]),
        .I2(\calc_CRC_s_reg_n_0_[1] ),
        .I3(read_CRC_s[2]),
        .I4(\calc_CRC_s_reg_n_0_[2] ),
        .I5(CRC_ERR_s_i_5_n_0),
        .O(CRC_ERR_s_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hFFFFFEFF)) 
    CRC_ERR_s_i_3
       (.I0(BitCount_reg__0[4]),
        .I1(BitCount_reg__0[7]),
        .I2(BitCount_reg__0[6]),
        .I3(BitCount_reg__0[5]),
        .I4(cmd_done_s_i_2_n_0),
        .O(CRC_ERR_s_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h6FF6)) 
    CRC_ERR_s_i_4
       (.I0(read_CRC_s[3]),
        .I1(\calc_CRC_s_reg_n_0_[3] ),
        .I2(read_CRC_s[4]),
        .I3(\calc_CRC_s_reg_n_0_[4] ),
        .O(CRC_ERR_s_i_4_n_0));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    CRC_ERR_s_i_5
       (.I0(\calc_CRC_s_reg_n_0_[6] ),
        .I1(\read_CRC_s_reg_n_0_[6] ),
        .I2(\calc_CRC_s_reg_n_0_[5] ),
        .I3(read_CRC_s[5]),
        .I4(read_CRC_s[0]),
        .I5(\calc_CRC_s_reg_n_0_[0] ),
        .O(CRC_ERR_s_i_5_n_0));
  FDCE #(
    .INIT(1'b0)) 
    CRC_ERR_s_reg
       (.C(SDIO_CLK_FB),
        .CE(1'b1),
        .CLR(clear),
        .D(CRC_ERR_s_i_1_n_0),
        .Q(CRC_ERR));
  LUT6 #(
    .INIT(64'h8BBBBBBBBBBBBBBB)) 
    CRC_RST_i_1
       (.I0(new_CMD_s_i_1_n_0),
        .I1(CMD_RX_ACT),
        .I2(CMD_i2),
        .I3(RX_en),
        .I4(CMD_i1),
        .I5(CRC_RST_i_2_n_0),
        .O(CRC_RST_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h1F)) 
    CRC_RST_i_2
       (.I0(SDIO_CMD_T),
        .I1(SDIO_CMD_O),
        .I2(SDIO_CMD_I),
        .O(CRC_RST_i_2_n_0));
  FDPE #(
    .INIT(1'b1)) 
    CRC_RST_reg
       (.C(SDIO_CLK_FB),
        .CE(\calc_CRC_s[6]_i_1_n_0 ),
        .D(CRC_RST_i_1_n_0),
        .PRE(clear),
        .Q(CRC_RST));
  zsys_sdio_monitor_axis_v1_0_0_0_SDIP_RX_CRC7 Inst_SDIP_RX_CRC7
       (.AR(CRC_RST),
        .CMD_RX_ACT(CMD_RX_ACT),
        .D({Inst_SDIP_RX_CRC7_n_0,Inst_SDIP_RX_CRC7_n_1,Inst_SDIP_RX_CRC7_n_2,Inst_SDIP_RX_CRC7_n_3,Inst_SDIP_RX_CRC7_n_4,Inst_SDIP_RX_CRC7_n_5,Inst_SDIP_RX_CRC7_n_6}),
        .SDIO_CLK_FB(SDIO_CLK_FB),
        .SDIO_CMD_I(SDIO_CMD_I),
        .SDIO_CMD_O(SDIO_CMD_O),
        .SDIO_CMD_T(SDIO_CMD_T));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    SDIO_CMD_INST_0
       (.I0(SDIO_CMD_I),
        .I1(SDIO_CMD_O),
        .I2(SDIO_CMD_T),
        .O(SDIO_CMD));
  LUT2 #(
    .INIT(4'h8)) 
    \arg_s[31]_i_1 
       (.I0(new_CMD_s_i_1_n_0),
        .I1(CMD_RX_ACT),
        .O(command_s));
  FDCE #(
    .INIT(1'b0)) 
    \arg_s_reg[0] 
       (.C(SDIO_CLK_FB),
        .CE(command_s),
        .CLR(clear),
        .D(arg_sr[0]),
        .Q(m_cmd_axis_tdata[0]));
  FDCE #(
    .INIT(1'b0)) 
    \arg_s_reg[10] 
       (.C(SDIO_CLK_FB),
        .CE(command_s),
        .CLR(clear),
        .D(arg_sr[10]),
        .Q(m_cmd_axis_tdata[10]));
  FDCE #(
    .INIT(1'b0)) 
    \arg_s_reg[11] 
       (.C(SDIO_CLK_FB),
        .CE(command_s),
        .CLR(clear),
        .D(arg_sr[11]),
        .Q(m_cmd_axis_tdata[11]));
  FDCE #(
    .INIT(1'b0)) 
    \arg_s_reg[12] 
       (.C(SDIO_CLK_FB),
        .CE(command_s),
        .CLR(clear),
        .D(arg_sr[12]),
        .Q(m_cmd_axis_tdata[12]));
  FDCE #(
    .INIT(1'b0)) 
    \arg_s_reg[13] 
       (.C(SDIO_CLK_FB),
        .CE(command_s),
        .CLR(clear),
        .D(arg_sr[13]),
        .Q(m_cmd_axis_tdata[13]));
  FDCE #(
    .INIT(1'b0)) 
    \arg_s_reg[14] 
       (.C(SDIO_CLK_FB),
        .CE(command_s),
        .CLR(clear),
        .D(arg_sr[14]),
        .Q(m_cmd_axis_tdata[14]));
  FDCE #(
    .INIT(1'b0)) 
    \arg_s_reg[15] 
       (.C(SDIO_CLK_FB),
        .CE(command_s),
        .CLR(clear),
        .D(arg_sr[15]),
        .Q(m_cmd_axis_tdata[15]));
  FDCE #(
    .INIT(1'b0)) 
    \arg_s_reg[16] 
       (.C(SDIO_CLK_FB),
        .CE(command_s),
        .CLR(clear),
        .D(arg_sr[16]),
        .Q(m_cmd_axis_tdata[16]));
  FDCE #(
    .INIT(1'b0)) 
    \arg_s_reg[17] 
       (.C(SDIO_CLK_FB),
        .CE(command_s),
        .CLR(clear),
        .D(arg_sr[17]),
        .Q(m_cmd_axis_tdata[17]));
  FDCE #(
    .INIT(1'b0)) 
    \arg_s_reg[18] 
       (.C(SDIO_CLK_FB),
        .CE(command_s),
        .CLR(clear),
        .D(arg_sr[18]),
        .Q(m_cmd_axis_tdata[18]));
  FDCE #(
    .INIT(1'b0)) 
    \arg_s_reg[19] 
       (.C(SDIO_CLK_FB),
        .CE(command_s),
        .CLR(clear),
        .D(arg_sr[19]),
        .Q(m_cmd_axis_tdata[19]));
  FDCE #(
    .INIT(1'b0)) 
    \arg_s_reg[1] 
       (.C(SDIO_CLK_FB),
        .CE(command_s),
        .CLR(clear),
        .D(arg_sr[1]),
        .Q(m_cmd_axis_tdata[1]));
  FDCE #(
    .INIT(1'b0)) 
    \arg_s_reg[20] 
       (.C(SDIO_CLK_FB),
        .CE(command_s),
        .CLR(clear),
        .D(arg_sr[20]),
        .Q(m_cmd_axis_tdata[20]));
  FDCE #(
    .INIT(1'b0)) 
    \arg_s_reg[21] 
       (.C(SDIO_CLK_FB),
        .CE(command_s),
        .CLR(clear),
        .D(arg_sr[21]),
        .Q(m_cmd_axis_tdata[21]));
  FDCE #(
    .INIT(1'b0)) 
    \arg_s_reg[22] 
       (.C(SDIO_CLK_FB),
        .CE(command_s),
        .CLR(clear),
        .D(arg_sr[22]),
        .Q(m_cmd_axis_tdata[22]));
  FDCE #(
    .INIT(1'b0)) 
    \arg_s_reg[23] 
       (.C(SDIO_CLK_FB),
        .CE(command_s),
        .CLR(clear),
        .D(arg_sr[23]),
        .Q(m_cmd_axis_tdata[23]));
  FDCE #(
    .INIT(1'b0)) 
    \arg_s_reg[24] 
       (.C(SDIO_CLK_FB),
        .CE(command_s),
        .CLR(clear),
        .D(arg_sr[24]),
        .Q(m_cmd_axis_tdata[24]));
  FDCE #(
    .INIT(1'b0)) 
    \arg_s_reg[25] 
       (.C(SDIO_CLK_FB),
        .CE(command_s),
        .CLR(clear),
        .D(arg_sr[25]),
        .Q(m_cmd_axis_tdata[25]));
  FDCE #(
    .INIT(1'b0)) 
    \arg_s_reg[26] 
       (.C(SDIO_CLK_FB),
        .CE(command_s),
        .CLR(clear),
        .D(arg_sr[26]),
        .Q(m_cmd_axis_tdata[26]));
  FDCE #(
    .INIT(1'b0)) 
    \arg_s_reg[27] 
       (.C(SDIO_CLK_FB),
        .CE(command_s),
        .CLR(clear),
        .D(arg_sr[27]),
        .Q(m_cmd_axis_tdata[27]));
  FDCE #(
    .INIT(1'b0)) 
    \arg_s_reg[28] 
       (.C(SDIO_CLK_FB),
        .CE(command_s),
        .CLR(clear),
        .D(arg_sr[28]),
        .Q(m_cmd_axis_tdata[28]));
  FDCE #(
    .INIT(1'b0)) 
    \arg_s_reg[29] 
       (.C(SDIO_CLK_FB),
        .CE(command_s),
        .CLR(clear),
        .D(arg_sr[29]),
        .Q(m_cmd_axis_tdata[29]));
  FDCE #(
    .INIT(1'b0)) 
    \arg_s_reg[2] 
       (.C(SDIO_CLK_FB),
        .CE(command_s),
        .CLR(clear),
        .D(arg_sr[2]),
        .Q(m_cmd_axis_tdata[2]));
  FDCE #(
    .INIT(1'b0)) 
    \arg_s_reg[30] 
       (.C(SDIO_CLK_FB),
        .CE(command_s),
        .CLR(clear),
        .D(arg_sr[30]),
        .Q(m_cmd_axis_tdata[30]));
  FDCE #(
    .INIT(1'b0)) 
    \arg_s_reg[31] 
       (.C(SDIO_CLK_FB),
        .CE(command_s),
        .CLR(clear),
        .D(arg_sr[31]),
        .Q(m_cmd_axis_tdata[31]));
  FDCE #(
    .INIT(1'b0)) 
    \arg_s_reg[3] 
       (.C(SDIO_CLK_FB),
        .CE(command_s),
        .CLR(clear),
        .D(arg_sr[3]),
        .Q(m_cmd_axis_tdata[3]));
  FDCE #(
    .INIT(1'b0)) 
    \arg_s_reg[4] 
       (.C(SDIO_CLK_FB),
        .CE(command_s),
        .CLR(clear),
        .D(arg_sr[4]),
        .Q(m_cmd_axis_tdata[4]));
  FDCE #(
    .INIT(1'b0)) 
    \arg_s_reg[5] 
       (.C(SDIO_CLK_FB),
        .CE(command_s),
        .CLR(clear),
        .D(arg_sr[5]),
        .Q(m_cmd_axis_tdata[5]));
  FDCE #(
    .INIT(1'b0)) 
    \arg_s_reg[6] 
       (.C(SDIO_CLK_FB),
        .CE(command_s),
        .CLR(clear),
        .D(arg_sr[6]),
        .Q(m_cmd_axis_tdata[6]));
  FDCE #(
    .INIT(1'b0)) 
    \arg_s_reg[7] 
       (.C(SDIO_CLK_FB),
        .CE(command_s),
        .CLR(clear),
        .D(arg_sr[7]),
        .Q(m_cmd_axis_tdata[7]));
  FDCE #(
    .INIT(1'b0)) 
    \arg_s_reg[8] 
       (.C(SDIO_CLK_FB),
        .CE(command_s),
        .CLR(clear),
        .D(arg_sr[8]),
        .Q(m_cmd_axis_tdata[8]));
  FDCE #(
    .INIT(1'b0)) 
    \arg_s_reg[9] 
       (.C(SDIO_CLK_FB),
        .CE(command_s),
        .CLR(clear),
        .D(arg_sr[9]),
        .Q(m_cmd_axis_tdata[9]));
  LUT5 #(
    .INIT(32'h10000000)) 
    \arg_sr[31]_i_1 
       (.I0(BitCount_reg__0[6]),
        .I1(BitCount_reg__0[7]),
        .I2(p_0_in_1),
        .I3(CMD_RX_ACT),
        .I4(\arg_sr[31]_i_2_n_0 ),
        .O(arg_sr_0));
  LUT6 #(
    .INIT(64'h0000007FFFFFFFFF)) 
    \arg_sr[31]_i_2 
       (.I0(BitCount_reg__0[2]),
        .I1(BitCount_reg__0[1]),
        .I2(BitCount_reg__0[0]),
        .I3(BitCount_reg__0[3]),
        .I4(BitCount_reg__0[4]),
        .I5(BitCount_reg__0[5]),
        .O(\arg_sr[31]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \arg_sr_reg[0] 
       (.C(SDIO_CLK_FB),
        .CE(arg_sr_0),
        .CLR(clear),
        .D(SDIO_CMD),
        .Q(arg_sr[0]));
  FDCE #(
    .INIT(1'b0)) 
    \arg_sr_reg[10] 
       (.C(SDIO_CLK_FB),
        .CE(arg_sr_0),
        .CLR(clear),
        .D(arg_sr[9]),
        .Q(arg_sr[10]));
  FDCE #(
    .INIT(1'b0)) 
    \arg_sr_reg[11] 
       (.C(SDIO_CLK_FB),
        .CE(arg_sr_0),
        .CLR(clear),
        .D(arg_sr[10]),
        .Q(arg_sr[11]));
  FDCE #(
    .INIT(1'b0)) 
    \arg_sr_reg[12] 
       (.C(SDIO_CLK_FB),
        .CE(arg_sr_0),
        .CLR(clear),
        .D(arg_sr[11]),
        .Q(arg_sr[12]));
  FDCE #(
    .INIT(1'b0)) 
    \arg_sr_reg[13] 
       (.C(SDIO_CLK_FB),
        .CE(arg_sr_0),
        .CLR(clear),
        .D(arg_sr[12]),
        .Q(arg_sr[13]));
  FDCE #(
    .INIT(1'b0)) 
    \arg_sr_reg[14] 
       (.C(SDIO_CLK_FB),
        .CE(arg_sr_0),
        .CLR(clear),
        .D(arg_sr[13]),
        .Q(arg_sr[14]));
  FDCE #(
    .INIT(1'b0)) 
    \arg_sr_reg[15] 
       (.C(SDIO_CLK_FB),
        .CE(arg_sr_0),
        .CLR(clear),
        .D(arg_sr[14]),
        .Q(arg_sr[15]));
  FDCE #(
    .INIT(1'b0)) 
    \arg_sr_reg[16] 
       (.C(SDIO_CLK_FB),
        .CE(arg_sr_0),
        .CLR(clear),
        .D(arg_sr[15]),
        .Q(arg_sr[16]));
  FDCE #(
    .INIT(1'b0)) 
    \arg_sr_reg[17] 
       (.C(SDIO_CLK_FB),
        .CE(arg_sr_0),
        .CLR(clear),
        .D(arg_sr[16]),
        .Q(arg_sr[17]));
  FDCE #(
    .INIT(1'b0)) 
    \arg_sr_reg[18] 
       (.C(SDIO_CLK_FB),
        .CE(arg_sr_0),
        .CLR(clear),
        .D(arg_sr[17]),
        .Q(arg_sr[18]));
  FDCE #(
    .INIT(1'b0)) 
    \arg_sr_reg[19] 
       (.C(SDIO_CLK_FB),
        .CE(arg_sr_0),
        .CLR(clear),
        .D(arg_sr[18]),
        .Q(arg_sr[19]));
  FDCE #(
    .INIT(1'b0)) 
    \arg_sr_reg[1] 
       (.C(SDIO_CLK_FB),
        .CE(arg_sr_0),
        .CLR(clear),
        .D(arg_sr[0]),
        .Q(arg_sr[1]));
  FDCE #(
    .INIT(1'b0)) 
    \arg_sr_reg[20] 
       (.C(SDIO_CLK_FB),
        .CE(arg_sr_0),
        .CLR(clear),
        .D(arg_sr[19]),
        .Q(arg_sr[20]));
  FDCE #(
    .INIT(1'b0)) 
    \arg_sr_reg[21] 
       (.C(SDIO_CLK_FB),
        .CE(arg_sr_0),
        .CLR(clear),
        .D(arg_sr[20]),
        .Q(arg_sr[21]));
  FDCE #(
    .INIT(1'b0)) 
    \arg_sr_reg[22] 
       (.C(SDIO_CLK_FB),
        .CE(arg_sr_0),
        .CLR(clear),
        .D(arg_sr[21]),
        .Q(arg_sr[22]));
  FDCE #(
    .INIT(1'b0)) 
    \arg_sr_reg[23] 
       (.C(SDIO_CLK_FB),
        .CE(arg_sr_0),
        .CLR(clear),
        .D(arg_sr[22]),
        .Q(arg_sr[23]));
  FDCE #(
    .INIT(1'b0)) 
    \arg_sr_reg[24] 
       (.C(SDIO_CLK_FB),
        .CE(arg_sr_0),
        .CLR(clear),
        .D(arg_sr[23]),
        .Q(arg_sr[24]));
  FDCE #(
    .INIT(1'b0)) 
    \arg_sr_reg[25] 
       (.C(SDIO_CLK_FB),
        .CE(arg_sr_0),
        .CLR(clear),
        .D(arg_sr[24]),
        .Q(arg_sr[25]));
  FDCE #(
    .INIT(1'b0)) 
    \arg_sr_reg[26] 
       (.C(SDIO_CLK_FB),
        .CE(arg_sr_0),
        .CLR(clear),
        .D(arg_sr[25]),
        .Q(arg_sr[26]));
  FDCE #(
    .INIT(1'b0)) 
    \arg_sr_reg[27] 
       (.C(SDIO_CLK_FB),
        .CE(arg_sr_0),
        .CLR(clear),
        .D(arg_sr[26]),
        .Q(arg_sr[27]));
  FDCE #(
    .INIT(1'b0)) 
    \arg_sr_reg[28] 
       (.C(SDIO_CLK_FB),
        .CE(arg_sr_0),
        .CLR(clear),
        .D(arg_sr[27]),
        .Q(arg_sr[28]));
  FDCE #(
    .INIT(1'b0)) 
    \arg_sr_reg[29] 
       (.C(SDIO_CLK_FB),
        .CE(arg_sr_0),
        .CLR(clear),
        .D(arg_sr[28]),
        .Q(arg_sr[29]));
  FDCE #(
    .INIT(1'b0)) 
    \arg_sr_reg[2] 
       (.C(SDIO_CLK_FB),
        .CE(arg_sr_0),
        .CLR(clear),
        .D(arg_sr[1]),
        .Q(arg_sr[2]));
  FDCE #(
    .INIT(1'b0)) 
    \arg_sr_reg[30] 
       (.C(SDIO_CLK_FB),
        .CE(arg_sr_0),
        .CLR(clear),
        .D(arg_sr[29]),
        .Q(arg_sr[30]));
  FDCE #(
    .INIT(1'b0)) 
    \arg_sr_reg[31] 
       (.C(SDIO_CLK_FB),
        .CE(arg_sr_0),
        .CLR(clear),
        .D(arg_sr[30]),
        .Q(arg_sr[31]));
  FDCE #(
    .INIT(1'b0)) 
    \arg_sr_reg[3] 
       (.C(SDIO_CLK_FB),
        .CE(arg_sr_0),
        .CLR(clear),
        .D(arg_sr[2]),
        .Q(arg_sr[3]));
  FDCE #(
    .INIT(1'b0)) 
    \arg_sr_reg[4] 
       (.C(SDIO_CLK_FB),
        .CE(arg_sr_0),
        .CLR(clear),
        .D(arg_sr[3]),
        .Q(arg_sr[4]));
  FDCE #(
    .INIT(1'b0)) 
    \arg_sr_reg[5] 
       (.C(SDIO_CLK_FB),
        .CE(arg_sr_0),
        .CLR(clear),
        .D(arg_sr[4]),
        .Q(arg_sr[5]));
  FDCE #(
    .INIT(1'b0)) 
    \arg_sr_reg[6] 
       (.C(SDIO_CLK_FB),
        .CE(arg_sr_0),
        .CLR(clear),
        .D(arg_sr[5]),
        .Q(arg_sr[6]));
  FDCE #(
    .INIT(1'b0)) 
    \arg_sr_reg[7] 
       (.C(SDIO_CLK_FB),
        .CE(arg_sr_0),
        .CLR(clear),
        .D(arg_sr[6]),
        .Q(arg_sr[7]));
  FDCE #(
    .INIT(1'b0)) 
    \arg_sr_reg[8] 
       (.C(SDIO_CLK_FB),
        .CE(arg_sr_0),
        .CLR(clear),
        .D(arg_sr[7]),
        .Q(arg_sr[8]));
  FDCE #(
    .INIT(1'b0)) 
    \arg_sr_reg[9] 
       (.C(SDIO_CLK_FB),
        .CE(arg_sr_0),
        .CLR(clear),
        .D(arg_sr[8]),
        .Q(arg_sr[9]));
  LUT2 #(
    .INIT(4'hB)) 
    \calc_CRC_s[6]_i_1 
       (.I0(new_CMD_s_i_1_n_0),
        .I1(CMD_RX_ACT),
        .O(\calc_CRC_s[6]_i_1_n_0 ));
  FDCE \calc_CRC_s_reg[0] 
       (.C(SDIO_CLK_FB),
        .CE(\calc_CRC_s[6]_i_1_n_0 ),
        .CLR(clear),
        .D(Inst_SDIP_RX_CRC7_n_6),
        .Q(\calc_CRC_s_reg_n_0_[0] ));
  FDCE \calc_CRC_s_reg[1] 
       (.C(SDIO_CLK_FB),
        .CE(\calc_CRC_s[6]_i_1_n_0 ),
        .CLR(clear),
        .D(Inst_SDIP_RX_CRC7_n_5),
        .Q(\calc_CRC_s_reg_n_0_[1] ));
  FDCE \calc_CRC_s_reg[2] 
       (.C(SDIO_CLK_FB),
        .CE(\calc_CRC_s[6]_i_1_n_0 ),
        .CLR(clear),
        .D(Inst_SDIP_RX_CRC7_n_4),
        .Q(\calc_CRC_s_reg_n_0_[2] ));
  FDCE \calc_CRC_s_reg[3] 
       (.C(SDIO_CLK_FB),
        .CE(\calc_CRC_s[6]_i_1_n_0 ),
        .CLR(clear),
        .D(Inst_SDIP_RX_CRC7_n_3),
        .Q(\calc_CRC_s_reg_n_0_[3] ));
  FDCE \calc_CRC_s_reg[4] 
       (.C(SDIO_CLK_FB),
        .CE(\calc_CRC_s[6]_i_1_n_0 ),
        .CLR(clear),
        .D(Inst_SDIP_RX_CRC7_n_2),
        .Q(\calc_CRC_s_reg_n_0_[4] ));
  FDCE \calc_CRC_s_reg[5] 
       (.C(SDIO_CLK_FB),
        .CE(\calc_CRC_s[6]_i_1_n_0 ),
        .CLR(clear),
        .D(Inst_SDIP_RX_CRC7_n_1),
        .Q(\calc_CRC_s_reg_n_0_[5] ));
  FDCE \calc_CRC_s_reg[6] 
       (.C(SDIO_CLK_FB),
        .CE(\calc_CRC_s[6]_i_1_n_0 ),
        .CLR(clear),
        .D(Inst_SDIP_RX_CRC7_n_0),
        .Q(\calc_CRC_s_reg_n_0_[6] ));
  LUT6 #(
    .INIT(64'h0000000000000020)) 
    cmd_done_s_i_1
       (.I0(CMD_RX_ACT),
        .I1(cmd_done_s_i_2_n_0),
        .I2(BitCount_reg__0[5]),
        .I3(BitCount_reg__0[6]),
        .I4(BitCount_reg__0[7]),
        .I5(BitCount_reg__0[4]),
        .O(cmd_done_s));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    cmd_done_s_i_2
       (.I0(BitCount_reg__0[0]),
        .I1(BitCount_reg__0[1]),
        .I2(BitCount_reg__0[2]),
        .I3(BitCount_reg__0[3]),
        .O(cmd_done_s_i_2_n_0));
  FDCE #(
    .INIT(1'b0)) 
    cmd_done_s_reg
       (.C(SDIO_CLK_FB),
        .CE(1'b1),
        .CLR(clear),
        .D(cmd_done_s),
        .Q(m_cmd_axis_tvalid));
  FDCE #(
    .INIT(1'b0)) 
    \command_s_reg[0] 
       (.C(SDIO_CLK_FB),
        .CE(command_s),
        .CLR(clear),
        .D(\command_sr_reg_n_0_[0] ),
        .Q(m_cmd_axis_tuser[0]));
  FDCE #(
    .INIT(1'b0)) 
    \command_s_reg[1] 
       (.C(SDIO_CLK_FB),
        .CE(command_s),
        .CLR(clear),
        .D(\command_sr_reg_n_0_[1] ),
        .Q(m_cmd_axis_tuser[1]));
  FDCE #(
    .INIT(1'b0)) 
    \command_s_reg[2] 
       (.C(SDIO_CLK_FB),
        .CE(command_s),
        .CLR(clear),
        .D(\command_sr_reg_n_0_[2] ),
        .Q(m_cmd_axis_tuser[2]));
  FDCE #(
    .INIT(1'b0)) 
    \command_s_reg[3] 
       (.C(SDIO_CLK_FB),
        .CE(command_s),
        .CLR(clear),
        .D(\command_sr_reg_n_0_[3] ),
        .Q(m_cmd_axis_tuser[3]));
  FDCE #(
    .INIT(1'b0)) 
    \command_s_reg[4] 
       (.C(SDIO_CLK_FB),
        .CE(command_s),
        .CLR(clear),
        .D(\command_sr_reg_n_0_[4] ),
        .Q(m_cmd_axis_tuser[4]));
  FDCE #(
    .INIT(1'b0)) 
    \command_s_reg[5] 
       (.C(SDIO_CLK_FB),
        .CE(command_s),
        .CLR(clear),
        .D(\command_sr_reg_n_0_[5] ),
        .Q(m_cmd_axis_tuser[5]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hA8FF)) 
    \command_sr[0]_i_1 
       (.I0(SDIO_CMD_I),
        .I1(SDIO_CMD_O),
        .I2(SDIO_CMD_T),
        .I3(CMD_RX_ACT),
        .O(p_1_in[0]));
  LUT2 #(
    .INIT(4'h8)) 
    \command_sr[1]_i_1 
       (.I0(CMD_RX_ACT),
        .I1(\command_sr_reg_n_0_[0] ),
        .O(p_1_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \command_sr[2]_i_1 
       (.I0(CMD_RX_ACT),
        .I1(\command_sr_reg_n_0_[1] ),
        .O(p_1_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \command_sr[3]_i_1 
       (.I0(CMD_RX_ACT),
        .I1(\command_sr_reg_n_0_[2] ),
        .O(p_1_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \command_sr[4]_i_1 
       (.I0(CMD_RX_ACT),
        .I1(\command_sr_reg_n_0_[3] ),
        .O(p_1_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \command_sr[5]_i_1 
       (.I0(CMD_RX_ACT),
        .I1(\command_sr_reg_n_0_[4] ),
        .O(p_1_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \command_sr[6]_i_1 
       (.I0(CMD_RX_ACT),
        .I1(\command_sr_reg_n_0_[5] ),
        .O(p_1_in[6]));
  LUT2 #(
    .INIT(4'h7)) 
    \command_sr[7]_i_1 
       (.I0(CMD_RX_ACT),
        .I1(p_0_in_1),
        .O(\command_sr[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \command_sr[7]_i_2 
       (.I0(CMD_RX_ACT),
        .I1(\command_sr_reg_n_0_[6] ),
        .O(p_1_in[7]));
  FDPE #(
    .INIT(1'b0)) 
    \command_sr_reg[0] 
       (.C(SDIO_CLK_FB),
        .CE(\command_sr[7]_i_1_n_0 ),
        .D(p_1_in[0]),
        .PRE(clear),
        .Q(\command_sr_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \command_sr_reg[1] 
       (.C(SDIO_CLK_FB),
        .CE(\command_sr[7]_i_1_n_0 ),
        .CLR(clear),
        .D(p_1_in[1]),
        .Q(\command_sr_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \command_sr_reg[2] 
       (.C(SDIO_CLK_FB),
        .CE(\command_sr[7]_i_1_n_0 ),
        .CLR(clear),
        .D(p_1_in[2]),
        .Q(\command_sr_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \command_sr_reg[3] 
       (.C(SDIO_CLK_FB),
        .CE(\command_sr[7]_i_1_n_0 ),
        .CLR(clear),
        .D(p_1_in[3]),
        .Q(\command_sr_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \command_sr_reg[4] 
       (.C(SDIO_CLK_FB),
        .CE(\command_sr[7]_i_1_n_0 ),
        .CLR(clear),
        .D(p_1_in[4]),
        .Q(\command_sr_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \command_sr_reg[5] 
       (.C(SDIO_CLK_FB),
        .CE(\command_sr[7]_i_1_n_0 ),
        .CLR(clear),
        .D(p_1_in[5]),
        .Q(\command_sr_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \command_sr_reg[6] 
       (.C(SDIO_CLK_FB),
        .CE(\command_sr[7]_i_1_n_0 ),
        .CLR(clear),
        .D(p_1_in[6]),
        .Q(\command_sr_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \command_sr_reg[7] 
       (.C(SDIO_CLK_FB),
        .CE(\command_sr[7]_i_1_n_0 ),
        .CLR(clear),
        .D(p_1_in[7]),
        .Q(p_0_in_1));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    new_CMD_s_i_1
       (.I0(BitCount_reg__0[3]),
        .I1(new_CMD_s_i_3_n_0),
        .I2(BitCount_reg__0[4]),
        .I3(BitCount_reg__0[7]),
        .I4(BitCount_reg__0[6]),
        .I5(BitCount_reg__0[5]),
        .O(new_CMD_s_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    new_CMD_s_i_2
       (.I0(axis_aresetn),
        .O(clear));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    new_CMD_s_i_3
       (.I0(BitCount_reg__0[2]),
        .I1(BitCount_reg__0[1]),
        .I2(BitCount_reg__0[0]),
        .O(new_CMD_s_i_3_n_0));
  FDCE #(
    .INIT(1'b0)) 
    new_CMD_s_reg
       (.C(SDIO_CLK_FB),
        .CE(CMD_RX_ACT),
        .CLR(clear),
        .D(new_CMD_s_i_1_n_0),
        .Q(new_CMD));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h8880)) 
    \read_CRC_s[0]_i_1 
       (.I0(CMD_RX_ACT),
        .I1(SDIO_CMD_I),
        .I2(SDIO_CMD_O),
        .I3(SDIO_CMD_T),
        .O(\read_CRC_s[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \read_CRC_s[1]_i_1 
       (.I0(CMD_RX_ACT),
        .I1(read_CRC_s[0]),
        .O(\read_CRC_s[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \read_CRC_s[2]_i_1 
       (.I0(CMD_RX_ACT),
        .I1(read_CRC_s[1]),
        .O(\read_CRC_s[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \read_CRC_s[3]_i_1 
       (.I0(CMD_RX_ACT),
        .I1(read_CRC_s[2]),
        .O(\read_CRC_s[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \read_CRC_s[4]_i_1 
       (.I0(CMD_RX_ACT),
        .I1(read_CRC_s[3]),
        .O(\read_CRC_s[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \read_CRC_s[5]_i_1 
       (.I0(CMD_RX_ACT),
        .I1(read_CRC_s[4]),
        .O(\read_CRC_s[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h555F5F5F5D555555)) 
    \read_CRC_s[6]_i_1 
       (.I0(CMD_RX_ACT),
        .I1(BitCount_reg__0[0]),
        .I2(\read_CRC_s[6]_i_3_n_0 ),
        .I3(BitCount_reg__0[2]),
        .I4(BitCount_reg__0[1]),
        .I5(BitCount_reg__0[3]),
        .O(\read_CRC_s[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \read_CRC_s[6]_i_2 
       (.I0(CMD_RX_ACT),
        .I1(read_CRC_s[5]),
        .O(\read_CRC_s[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hFFFD)) 
    \read_CRC_s[6]_i_3 
       (.I0(BitCount_reg__0[5]),
        .I1(BitCount_reg__0[6]),
        .I2(BitCount_reg__0[7]),
        .I3(BitCount_reg__0[4]),
        .O(\read_CRC_s[6]_i_3_n_0 ));
  FDCE \read_CRC_s_reg[0] 
       (.C(SDIO_CLK_FB),
        .CE(\read_CRC_s[6]_i_1_n_0 ),
        .CLR(clear),
        .D(\read_CRC_s[0]_i_1_n_0 ),
        .Q(read_CRC_s[0]));
  FDCE \read_CRC_s_reg[1] 
       (.C(SDIO_CLK_FB),
        .CE(\read_CRC_s[6]_i_1_n_0 ),
        .CLR(clear),
        .D(\read_CRC_s[1]_i_1_n_0 ),
        .Q(read_CRC_s[1]));
  FDCE \read_CRC_s_reg[2] 
       (.C(SDIO_CLK_FB),
        .CE(\read_CRC_s[6]_i_1_n_0 ),
        .CLR(clear),
        .D(\read_CRC_s[2]_i_1_n_0 ),
        .Q(read_CRC_s[2]));
  FDCE \read_CRC_s_reg[3] 
       (.C(SDIO_CLK_FB),
        .CE(\read_CRC_s[6]_i_1_n_0 ),
        .CLR(clear),
        .D(\read_CRC_s[3]_i_1_n_0 ),
        .Q(read_CRC_s[3]));
  FDCE \read_CRC_s_reg[4] 
       (.C(SDIO_CLK_FB),
        .CE(\read_CRC_s[6]_i_1_n_0 ),
        .CLR(clear),
        .D(\read_CRC_s[4]_i_1_n_0 ),
        .Q(read_CRC_s[4]));
  FDCE \read_CRC_s_reg[5] 
       (.C(SDIO_CLK_FB),
        .CE(\read_CRC_s[6]_i_1_n_0 ),
        .CLR(clear),
        .D(\read_CRC_s[5]_i_1_n_0 ),
        .Q(read_CRC_s[5]));
  FDCE \read_CRC_s_reg[6] 
       (.C(SDIO_CLK_FB),
        .CE(\read_CRC_s[6]_i_1_n_0 ),
        .CLR(clear),
        .D(\read_CRC_s[6]_i_2_n_0 ),
        .Q(\read_CRC_s_reg_n_0_[6] ));
endmodule

module zsys_sdio_monitor_axis_v1_0_0_0_SDIP_RX_CRC7
   (D,
    SDIO_CMD_I,
    SDIO_CMD_O,
    SDIO_CMD_T,
    CMD_RX_ACT,
    SDIO_CLK_FB,
    AR);
  output [6:0]D;
  input SDIO_CMD_I;
  input SDIO_CMD_O;
  input SDIO_CMD_T;
  input CMD_RX_ACT;
  input SDIO_CLK_FB;
  input [0:0]AR;

  wire [0:0]AR;
  wire CMD_RX_ACT;
  wire [6:0]D;
  wire SDIO_CLK_FB;
  wire SDIO_CMD_I;
  wire SDIO_CMD_O;
  wire SDIO_CMD_T;
  wire [6:0]crc;
  wire [3:0]p_6_out;

  LUT2 #(
    .INIT(4'h8)) 
    \calc_CRC_s[0]_i_1 
       (.I0(CMD_RX_ACT),
        .I1(crc[0]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \calc_CRC_s[1]_i_1 
       (.I0(CMD_RX_ACT),
        .I1(crc[1]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \calc_CRC_s[2]_i_1 
       (.I0(CMD_RX_ACT),
        .I1(crc[2]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \calc_CRC_s[3]_i_1 
       (.I0(CMD_RX_ACT),
        .I1(crc[3]),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \calc_CRC_s[4]_i_1 
       (.I0(CMD_RX_ACT),
        .I1(crc[4]),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \calc_CRC_s[5]_i_1 
       (.I0(CMD_RX_ACT),
        .I1(crc[5]),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \calc_CRC_s[6]_i_2 
       (.I0(CMD_RX_ACT),
        .I1(crc[6]),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h57A8)) 
    \sr[0]_i_1 
       (.I0(SDIO_CMD_I),
        .I1(SDIO_CMD_O),
        .I2(SDIO_CMD_T),
        .I3(crc[6]),
        .O(p_6_out[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h9995666A)) 
    \sr[3]_i_1 
       (.I0(crc[2]),
        .I1(SDIO_CMD_I),
        .I2(SDIO_CMD_O),
        .I3(SDIO_CMD_T),
        .I4(crc[6]),
        .O(p_6_out[3]));
  FDCE \sr_reg[0] 
       (.C(SDIO_CLK_FB),
        .CE(1'b1),
        .CLR(AR),
        .D(p_6_out[0]),
        .Q(crc[0]));
  FDCE \sr_reg[1] 
       (.C(SDIO_CLK_FB),
        .CE(1'b1),
        .CLR(AR),
        .D(crc[0]),
        .Q(crc[1]));
  FDCE \sr_reg[2] 
       (.C(SDIO_CLK_FB),
        .CE(1'b1),
        .CLR(AR),
        .D(crc[1]),
        .Q(crc[2]));
  FDCE \sr_reg[3] 
       (.C(SDIO_CLK_FB),
        .CE(1'b1),
        .CLR(AR),
        .D(p_6_out[3]),
        .Q(crc[3]));
  FDCE \sr_reg[4] 
       (.C(SDIO_CLK_FB),
        .CE(1'b1),
        .CLR(AR),
        .D(crc[3]),
        .Q(crc[4]));
  FDCE \sr_reg[5] 
       (.C(SDIO_CLK_FB),
        .CE(1'b1),
        .CLR(AR),
        .D(crc[4]),
        .Q(crc[5]));
  FDCE \sr_reg[6] 
       (.C(SDIO_CLK_FB),
        .CE(1'b1),
        .CLR(AR),
        .D(crc[5]),
        .Q(crc[6]));
endmodule

module zsys_sdio_monitor_axis_v1_0_0_0_sdio_to_axis_v1_0
   (m_cmd_axis_tuser,
    SDIO_CMD,
    new_CMD,
    m_cmd_axis_tvalid,
    CRC_ERR,
    m_cmd_axis_tdata,
    SDIO_DAT,
    SDIO_CLK_FB,
    axis_aclk,
    SDIO_CMD_T,
    RX_en,
    SDIO_CMD_I,
    SDIO_CMD_O,
    axis_aresetn,
    SDIO_DAT_I,
    SDIO_DAT_T,
    SDIO_DAT_O);
  output [7:0]m_cmd_axis_tuser;
  output SDIO_CMD;
  output new_CMD;
  output m_cmd_axis_tvalid;
  output CRC_ERR;
  output [31:0]m_cmd_axis_tdata;
  output [3:0]SDIO_DAT;
  input SDIO_CLK_FB;
  input axis_aclk;
  input SDIO_CMD_T;
  input RX_en;
  input SDIO_CMD_I;
  input SDIO_CMD_O;
  input axis_aresetn;
  input [3:0]SDIO_DAT_I;
  input [3:0]SDIO_DAT_T;
  input [3:0]SDIO_DAT_O;

  wire \ACMD_s0/i__n_0 ;
  wire CRC_ERR;
  wire Inst_SDIP_CMD_RX_n_5;
  wire RX_en;
  wire SDIO_CLK_FB;
  wire SDIO_CMD;
  wire SDIO_CMD_I;
  wire SDIO_CMD_O;
  wire SDIO_CMD_T;
  wire \SDIO_CMD_T_d_reg[1]_srl2_U0_SDIO_CMD_T_d_reg_c_0_n_0 ;
  wire \SDIO_CMD_T_d_reg[2]_U0_SDIO_CMD_T_d_reg_c_1_n_0 ;
  wire SDIO_CMD_T_d_reg_c_0_n_0;
  wire SDIO_CMD_T_d_reg_c_1_n_0;
  wire SDIO_CMD_T_d_reg_c_n_0;
  wire SDIO_CMD_T_d_reg_gate_n_0;
  wire [3:0]SDIO_DAT;
  wire [3:0]SDIO_DAT_I;
  wire [3:0]SDIO_DAT_O;
  wire [3:0]SDIO_DAT_T;
  wire axis_aclk;
  wire axis_aresetn;
  wire clear;
  wire [31:0]m_cmd_axis_tdata;
  wire [7:0]m_cmd_axis_tuser;
  wire m_cmd_axis_tvalid;
  wire new_CMD;

  LUT4 #(
    .INIT(16'h7FFF)) 
    \ACMD_s0/i_ 
       (.I0(m_cmd_axis_tuser[2]),
        .I1(m_cmd_axis_tuser[4]),
        .I2(m_cmd_axis_tuser[0]),
        .I3(m_cmd_axis_tuser[1]),
        .O(\ACMD_s0/i__n_0 ));
  FDCE ACMD_s_reg
       (.C(axis_aclk),
        .CE(1'b1),
        .CLR(clear),
        .D(Inst_SDIP_CMD_RX_n_5),
        .Q(m_cmd_axis_tuser[7]));
  zsys_sdio_monitor_axis_v1_0_0_0_SDIP_CMD_RX Inst_SDIP_CMD_RX
       (.ACMD_s_reg(Inst_SDIP_CMD_RX_n_5),
        .ACMD_s_reg_0(m_cmd_axis_tuser[7]),
        .CRC_ERR(CRC_ERR),
        .RX_en(RX_en),
        .SDIO_CLK_FB(SDIO_CLK_FB),
        .SDIO_CMD(SDIO_CMD),
        .SDIO_CMD_I(SDIO_CMD_I),
        .SDIO_CMD_O(SDIO_CMD_O),
        .SDIO_CMD_T(SDIO_CMD_T),
        .axis_aresetn(axis_aresetn),
        .clear(clear),
        .\command_s_reg[2]_0 (\ACMD_s0/i__n_0 ),
        .m_cmd_axis_tdata(m_cmd_axis_tdata),
        .m_cmd_axis_tuser(m_cmd_axis_tuser[5:0]),
        .m_cmd_axis_tvalid(m_cmd_axis_tvalid),
        .new_CMD(new_CMD));
  (* srl_bus_name = "\U0/SDIO_CMD_T_d_reg " *) 
  (* srl_name = "\U0/SDIO_CMD_T_d_reg[1]_srl2_U0_SDIO_CMD_T_d_reg_c_0 " *) 
  SRL16E \SDIO_CMD_T_d_reg[1]_srl2_U0_SDIO_CMD_T_d_reg_c_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(SDIO_CLK_FB),
        .D(SDIO_CMD_T),
        .Q(\SDIO_CMD_T_d_reg[1]_srl2_U0_SDIO_CMD_T_d_reg_c_0_n_0 ));
  FDRE \SDIO_CMD_T_d_reg[2]_U0_SDIO_CMD_T_d_reg_c_1 
       (.C(SDIO_CLK_FB),
        .CE(1'b1),
        .D(\SDIO_CMD_T_d_reg[1]_srl2_U0_SDIO_CMD_T_d_reg_c_0_n_0 ),
        .Q(\SDIO_CMD_T_d_reg[2]_U0_SDIO_CMD_T_d_reg_c_1_n_0 ),
        .R(1'b0));
  FDPE \SDIO_CMD_T_d_reg[3]_inv 
       (.C(SDIO_CLK_FB),
        .CE(1'b1),
        .D(SDIO_CMD_T_d_reg_gate_n_0),
        .PRE(clear),
        .Q(m_cmd_axis_tuser[6]));
  FDCE SDIO_CMD_T_d_reg_c
       (.C(SDIO_CLK_FB),
        .CE(1'b1),
        .CLR(clear),
        .D(1'b1),
        .Q(SDIO_CMD_T_d_reg_c_n_0));
  FDCE SDIO_CMD_T_d_reg_c_0
       (.C(SDIO_CLK_FB),
        .CE(1'b1),
        .CLR(clear),
        .D(SDIO_CMD_T_d_reg_c_n_0),
        .Q(SDIO_CMD_T_d_reg_c_0_n_0));
  FDCE SDIO_CMD_T_d_reg_c_1
       (.C(SDIO_CLK_FB),
        .CE(1'b1),
        .CLR(clear),
        .D(SDIO_CMD_T_d_reg_c_0_n_0),
        .Q(SDIO_CMD_T_d_reg_c_1_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    SDIO_CMD_T_d_reg_gate
       (.I0(\SDIO_CMD_T_d_reg[2]_U0_SDIO_CMD_T_d_reg_c_1_n_0 ),
        .I1(SDIO_CMD_T_d_reg_c_1_n_0),
        .O(SDIO_CMD_T_d_reg_gate_n_0));
  LUT3 #(
    .INIT(8'hA8)) 
    \SDIO_DAT[0]_INST_0 
       (.I0(SDIO_DAT_I[0]),
        .I1(SDIO_DAT_T[0]),
        .I2(SDIO_DAT_O[0]),
        .O(SDIO_DAT[0]));
  LUT3 #(
    .INIT(8'hA8)) 
    \SDIO_DAT[1]_INST_0 
       (.I0(SDIO_DAT_I[1]),
        .I1(SDIO_DAT_T[1]),
        .I2(SDIO_DAT_O[1]),
        .O(SDIO_DAT[1]));
  LUT3 #(
    .INIT(8'hA8)) 
    \SDIO_DAT[2]_INST_0 
       (.I0(SDIO_DAT_I[2]),
        .I1(SDIO_DAT_T[2]),
        .I2(SDIO_DAT_O[2]),
        .O(SDIO_DAT[2]));
  LUT3 #(
    .INIT(8'hA8)) 
    \SDIO_DAT[3]_INST_0 
       (.I0(SDIO_DAT_I[3]),
        .I1(SDIO_DAT_T[3]),
        .I2(SDIO_DAT_O[3]),
        .O(SDIO_DAT[3]));
endmodule

(* CHECK_LICENSE_TYPE = "zsys_sdio_monitor_axis_v1_0_0_0,sdio_to_axis_v1_0,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "sdio_to_axis_v1_0,Vivado 2017.4" *) 
(* NotValidForBitStream *)
module zsys_sdio_monitor_axis_v1_0_0_0
   (SDIO_CLK_IN,
    SDIO_CLK_FB,
    SDIO_CMD_I,
    SDIO_CMD_O,
    SDIO_CMD_T,
    SDIO_DAT_I,
    SDIO_DAT_O,
    SDIO_DAT_T,
    SDIO_CDN,
    SDIO_WP,
    SDIO_BUSPOW,
    SDIO_BUSVOLT,
    SDIO_LED,
    SDIO_CLK,
    SDIO_CMD,
    SDIO_CMD_DIR,
    SDIO_DAT,
    SDIO_DAT_DIR,
    LED,
    BUSPOW,
    BUSVOLT,
    CDN,
    WP,
    STATE,
    new_CMD,
    CRC_ERR,
    RX_en,
    axis_aclk,
    axis_aresetn,
    m_cmd_axis_tvalid,
    m_cmd_axis_tdata,
    m_cmd_axis_tuser,
    m_cmd_axis_tlast,
    m_cmd_axis_tready,
    m_dat_axis_tvalid,
    m_dat_axis_tdata,
    m_dat_axis_tlast,
    m_dat_axis_tready);
  (* x_interface_info = "xilinx.com:interface:sdio:1.0 SD CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME SD, FREQ_HZ 50000000, ASSOCIATED_BUSIF SD" *) input SDIO_CLK_IN;
  (* x_interface_info = "xilinx.com:interface:sdio:1.0 SD CLK_FB" *) input SDIO_CLK_FB;
  (* x_interface_info = "xilinx.com:interface:sdio:1.0 SD CMD_I" *) input SDIO_CMD_I;
  (* x_interface_info = "xilinx.com:interface:sdio:1.0 SD CMD_O" *) input SDIO_CMD_O;
  (* x_interface_info = "xilinx.com:interface:sdio:1.0 SD CMD_T" *) input SDIO_CMD_T;
  (* x_interface_info = "xilinx.com:interface:sdio:1.0 SD DATA_I" *) input [3:0]SDIO_DAT_I;
  (* x_interface_info = "xilinx.com:interface:sdio:1.0 SD DATA_O" *) input [3:0]SDIO_DAT_O;
  (* x_interface_info = "xilinx.com:interface:sdio:1.0 SD DATA_T" *) input [3:0]SDIO_DAT_T;
  (* x_interface_info = "xilinx.com:interface:sdio:1.0 SD CDN" *) input SDIO_CDN;
  (* x_interface_info = "xilinx.com:interface:sdio:1.0 SD WP" *) input SDIO_WP;
  (* x_interface_info = "xilinx.com:interface:sdio:1.0 SD BUSPOW" *) input SDIO_BUSPOW;
  (* x_interface_info = "xilinx.com:interface:sdio:1.0 SD BUSVOLT" *) input [2:0]SDIO_BUSVOLT;
  (* x_interface_info = "xilinx.com:interface:sdio:1.0 SD LED" *) input SDIO_LED;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 SDIO_CLK CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME SDIO_CLK, FREQ_HZ 50000000, ASSOCIATED_BUSIF SD, PHASE 0.000, CLK_DOMAIN zsys_sdio_monitor_axis_v1_0_0_0_SDIO_CLK" *) output SDIO_CLK;
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
  (* x_interface_info = "xilinx.com:signal:clock:1.0 axis_aclk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME axis_aclk, ASSOCIATED_RESET axis_aresetn, ASSOCIATED_BUSIF m_cmd_axis:m_dat_axis, FREQ_HZ 50000000, PHASE 0.000, CLK_DOMAIN zsys_sdio_monitor_axis_v1_0_0_0_SDIO_CLK" *) input axis_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 axis_aresetn RST" *) (* x_interface_parameter = "XIL_INTERFACENAME axis_aresetn, POLARITY ACTIVE_LOW" *) input axis_aresetn;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_cmd_axis TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME m_cmd_axis, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 8, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 50000000, PHASE 0.000, CLK_DOMAIN zsys_sdio_monitor_axis_v1_0_0_0_SDIO_CLK, LAYERED_METADATA undef" *) output m_cmd_axis_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_cmd_axis TDATA" *) output [31:0]m_cmd_axis_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_cmd_axis TUSER" *) output [7:0]m_cmd_axis_tuser;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_cmd_axis TLAST" *) output m_cmd_axis_tlast;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_cmd_axis TREADY" *) input m_cmd_axis_tready;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_dat_axis TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME m_dat_axis, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 50000000, PHASE 0.000, CLK_DOMAIN zsys_sdio_monitor_axis_v1_0_0_0_SDIO_CLK, LAYERED_METADATA undef" *) output m_dat_axis_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_dat_axis TDATA" *) output [7:0]m_dat_axis_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_dat_axis TLAST" *) output m_dat_axis_tlast;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_dat_axis TREADY" *) input m_dat_axis_tready;

  wire \<const0> ;
  wire CRC_ERR;
  wire RX_en;
  wire SDIO_BUSPOW;
  wire [2:0]SDIO_BUSVOLT;
  wire SDIO_CDN;
  wire SDIO_CLK_FB;
  wire SDIO_CMD;
  wire SDIO_CMD_DIR;
  wire SDIO_CMD_I;
  wire SDIO_CMD_O;
  wire SDIO_CMD_T;
  wire [3:0]SDIO_DAT;
  wire SDIO_DAT_DIR;
  wire [3:0]SDIO_DAT_I;
  wire [3:0]SDIO_DAT_O;
  wire [3:0]SDIO_DAT_T;
  wire SDIO_LED;
  wire SDIO_WP;
  wire axis_aclk;
  wire axis_aresetn;
  wire [31:0]m_cmd_axis_tdata;
  wire [7:0]m_cmd_axis_tuser;
  wire m_cmd_axis_tvalid;
  wire new_CMD;

  assign BUSPOW = SDIO_BUSPOW;
  assign BUSVOLT[2:0] = SDIO_BUSVOLT;
  assign CDN = SDIO_CDN;
  assign LED = SDIO_LED;
  assign SDIO_CLK = SDIO_CLK_FB;
  assign STATE[3] = \<const0> ;
  assign STATE[2] = \<const0> ;
  assign STATE[1] = \<const0> ;
  assign STATE[0] = \<const0> ;
  assign WP = SDIO_WP;
  GND GND
       (.G(\<const0> ));
  LUT1 #(
    .INIT(2'h1)) 
    SDIO_CMD_DIR_INST_0
       (.I0(SDIO_CMD_T),
        .O(SDIO_CMD_DIR));
  LUT1 #(
    .INIT(2'h1)) 
    SDIO_DAT_DIR_INST_0
       (.I0(SDIO_DAT_T[0]),
        .O(SDIO_DAT_DIR));
  zsys_sdio_monitor_axis_v1_0_0_0_sdio_to_axis_v1_0 U0
       (.CRC_ERR(CRC_ERR),
        .RX_en(RX_en),
        .SDIO_CLK_FB(SDIO_CLK_FB),
        .SDIO_CMD(SDIO_CMD),
        .SDIO_CMD_I(SDIO_CMD_I),
        .SDIO_CMD_O(SDIO_CMD_O),
        .SDIO_CMD_T(SDIO_CMD_T),
        .SDIO_DAT(SDIO_DAT),
        .SDIO_DAT_I(SDIO_DAT_I),
        .SDIO_DAT_O(SDIO_DAT_O),
        .SDIO_DAT_T(SDIO_DAT_T),
        .axis_aclk(axis_aclk),
        .axis_aresetn(axis_aresetn),
        .m_cmd_axis_tdata(m_cmd_axis_tdata),
        .m_cmd_axis_tuser(m_cmd_axis_tuser),
        .m_cmd_axis_tvalid(m_cmd_axis_tvalid),
        .new_CMD(new_CMD));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
