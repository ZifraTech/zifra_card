-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
-- Date        : Wed Apr 11 16:39:00 2018
-- Host        : W7-64-05 running 64-bit Service Pack 1  (build 7601)
-- Command     : write_vhdl -force -mode funcsim -rename_top zsys_sdio_monitor_axis_v1_0_0_0 -prefix
--               zsys_sdio_monitor_axis_v1_0_0_0_ zsys_sdio_monitor_axis_v1_0_0_0_sim_netlist.vhdl
-- Design      : zsys_sdio_monitor_axis_v1_0_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity zsys_sdio_monitor_axis_v1_0_0_0_SDIP_RX_CRC7 is
  port (
    D : out STD_LOGIC_VECTOR ( 6 downto 0 );
    SDIO_CMD_I : in STD_LOGIC;
    SDIO_CMD_O : in STD_LOGIC;
    SDIO_CMD_T : in STD_LOGIC;
    CMD_RX_ACT : in STD_LOGIC;
    SDIO_CLK_FB : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end zsys_sdio_monitor_axis_v1_0_0_0_SDIP_RX_CRC7;

architecture STRUCTURE of zsys_sdio_monitor_axis_v1_0_0_0_SDIP_RX_CRC7 is
  signal crc : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal p_6_out : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \calc_CRC_s[1]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \calc_CRC_s[2]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \calc_CRC_s[3]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \calc_CRC_s[4]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \calc_CRC_s[5]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \calc_CRC_s[6]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \sr[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \sr[3]_i_1\ : label is "soft_lutpair0";
begin
\calc_CRC_s[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => CMD_RX_ACT,
      I1 => crc(0),
      O => D(0)
    );
\calc_CRC_s[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => CMD_RX_ACT,
      I1 => crc(1),
      O => D(1)
    );
\calc_CRC_s[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => CMD_RX_ACT,
      I1 => crc(2),
      O => D(2)
    );
\calc_CRC_s[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => CMD_RX_ACT,
      I1 => crc(3),
      O => D(3)
    );
\calc_CRC_s[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => CMD_RX_ACT,
      I1 => crc(4),
      O => D(4)
    );
\calc_CRC_s[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => CMD_RX_ACT,
      I1 => crc(5),
      O => D(5)
    );
\calc_CRC_s[6]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => CMD_RX_ACT,
      I1 => crc(6),
      O => D(6)
    );
\sr[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"57A8"
    )
        port map (
      I0 => SDIO_CMD_I,
      I1 => SDIO_CMD_O,
      I2 => SDIO_CMD_T,
      I3 => crc(6),
      O => p_6_out(0)
    );
\sr[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"9995666A"
    )
        port map (
      I0 => crc(2),
      I1 => SDIO_CMD_I,
      I2 => SDIO_CMD_O,
      I3 => SDIO_CMD_T,
      I4 => crc(6),
      O => p_6_out(3)
    );
\sr_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => SDIO_CLK_FB,
      CE => '1',
      CLR => AR(0),
      D => p_6_out(0),
      Q => crc(0)
    );
\sr_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => SDIO_CLK_FB,
      CE => '1',
      CLR => AR(0),
      D => crc(0),
      Q => crc(1)
    );
\sr_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => SDIO_CLK_FB,
      CE => '1',
      CLR => AR(0),
      D => crc(1),
      Q => crc(2)
    );
\sr_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => SDIO_CLK_FB,
      CE => '1',
      CLR => AR(0),
      D => p_6_out(3),
      Q => crc(3)
    );
\sr_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => SDIO_CLK_FB,
      CE => '1',
      CLR => AR(0),
      D => crc(3),
      Q => crc(4)
    );
\sr_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => SDIO_CLK_FB,
      CE => '1',
      CLR => AR(0),
      D => crc(4),
      Q => crc(5)
    );
\sr_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => SDIO_CLK_FB,
      CE => '1',
      CLR => AR(0),
      D => crc(5),
      Q => crc(6)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity zsys_sdio_monitor_axis_v1_0_0_0_SDIP_CMD_RX is
  port (
    SDIO_CMD : out STD_LOGIC;
    clear : out STD_LOGIC;
    new_CMD : out STD_LOGIC;
    m_cmd_axis_tvalid : out STD_LOGIC;
    CRC_ERR : out STD_LOGIC;
    ACMD_s_reg : out STD_LOGIC;
    m_cmd_axis_tuser : out STD_LOGIC_VECTOR ( 5 downto 0 );
    m_cmd_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    SDIO_CLK_FB : in STD_LOGIC;
    RX_en : in STD_LOGIC;
    SDIO_CMD_I : in STD_LOGIC;
    SDIO_CMD_O : in STD_LOGIC;
    SDIO_CMD_T : in STD_LOGIC;
    axis_aresetn : in STD_LOGIC;
    \command_s_reg[2]_0\ : in STD_LOGIC;
    ACMD_s_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end zsys_sdio_monitor_axis_v1_0_0_0_SDIP_CMD_RX;

architecture STRUCTURE of zsys_sdio_monitor_axis_v1_0_0_0_SDIP_CMD_RX is
  signal \BitCount[1]_i_1_n_0\ : STD_LOGIC;
  signal \BitCount_reg__0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal CMD_RX_ACT : STD_LOGIC;
  signal CMD_RX_ACT_i_1_n_0 : STD_LOGIC;
  signal CMD_i1 : STD_LOGIC;
  signal CMD_i2 : STD_LOGIC;
  signal \^crc_err\ : STD_LOGIC;
  signal CRC_ERR_s_i_1_n_0 : STD_LOGIC;
  signal CRC_ERR_s_i_2_n_0 : STD_LOGIC;
  signal CRC_ERR_s_i_3_n_0 : STD_LOGIC;
  signal CRC_ERR_s_i_4_n_0 : STD_LOGIC;
  signal CRC_ERR_s_i_5_n_0 : STD_LOGIC;
  signal CRC_RST : STD_LOGIC;
  signal CRC_RST_i_1_n_0 : STD_LOGIC;
  signal CRC_RST_i_2_n_0 : STD_LOGIC;
  signal Inst_SDIP_RX_CRC7_n_0 : STD_LOGIC;
  signal Inst_SDIP_RX_CRC7_n_1 : STD_LOGIC;
  signal Inst_SDIP_RX_CRC7_n_2 : STD_LOGIC;
  signal Inst_SDIP_RX_CRC7_n_3 : STD_LOGIC;
  signal Inst_SDIP_RX_CRC7_n_4 : STD_LOGIC;
  signal Inst_SDIP_RX_CRC7_n_5 : STD_LOGIC;
  signal Inst_SDIP_RX_CRC7_n_6 : STD_LOGIC;
  signal \^sdio_cmd\ : STD_LOGIC;
  signal arg_sr : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \arg_sr[31]_i_2_n_0\ : STD_LOGIC;
  signal arg_sr_0 : STD_LOGIC;
  signal \calc_CRC_s[6]_i_1_n_0\ : STD_LOGIC;
  signal \calc_CRC_s_reg_n_0_[0]\ : STD_LOGIC;
  signal \calc_CRC_s_reg_n_0_[1]\ : STD_LOGIC;
  signal \calc_CRC_s_reg_n_0_[2]\ : STD_LOGIC;
  signal \calc_CRC_s_reg_n_0_[3]\ : STD_LOGIC;
  signal \calc_CRC_s_reg_n_0_[4]\ : STD_LOGIC;
  signal \calc_CRC_s_reg_n_0_[5]\ : STD_LOGIC;
  signal \calc_CRC_s_reg_n_0_[6]\ : STD_LOGIC;
  signal \^clear\ : STD_LOGIC;
  signal cmd_done_s : STD_LOGIC;
  signal cmd_done_s_i_2_n_0 : STD_LOGIC;
  signal command_s : STD_LOGIC;
  signal \command_sr[7]_i_1_n_0\ : STD_LOGIC;
  signal \command_sr_reg_n_0_[0]\ : STD_LOGIC;
  signal \command_sr_reg_n_0_[1]\ : STD_LOGIC;
  signal \command_sr_reg_n_0_[2]\ : STD_LOGIC;
  signal \command_sr_reg_n_0_[3]\ : STD_LOGIC;
  signal \command_sr_reg_n_0_[4]\ : STD_LOGIC;
  signal \command_sr_reg_n_0_[5]\ : STD_LOGIC;
  signal \command_sr_reg_n_0_[6]\ : STD_LOGIC;
  signal \^m_cmd_axis_tuser\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \^m_cmd_axis_tvalid\ : STD_LOGIC;
  signal new_CMD_s_i_1_n_0 : STD_LOGIC;
  signal new_CMD_s_i_3_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal p_0_in_1 : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal read_CRC_s : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \read_CRC_s[0]_i_1_n_0\ : STD_LOGIC;
  signal \read_CRC_s[1]_i_1_n_0\ : STD_LOGIC;
  signal \read_CRC_s[2]_i_1_n_0\ : STD_LOGIC;
  signal \read_CRC_s[3]_i_1_n_0\ : STD_LOGIC;
  signal \read_CRC_s[4]_i_1_n_0\ : STD_LOGIC;
  signal \read_CRC_s[5]_i_1_n_0\ : STD_LOGIC;
  signal \read_CRC_s[6]_i_1_n_0\ : STD_LOGIC;
  signal \read_CRC_s[6]_i_2_n_0\ : STD_LOGIC;
  signal \read_CRC_s[6]_i_3_n_0\ : STD_LOGIC;
  signal \read_CRC_s_reg_n_0_[6]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \BitCount[0]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \BitCount[1]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \BitCount[2]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \BitCount[3]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \BitCount[4]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \BitCount[5]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \BitCount[6]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \BitCount[7]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of CRC_ERR_s_i_3 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of CRC_ERR_s_i_4 : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of CRC_RST_i_2 : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of SDIO_CMD_INST_0 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of cmd_done_s_i_2 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \command_sr[0]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \command_sr[2]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \command_sr[3]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \command_sr[4]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \command_sr[5]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \command_sr[6]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \command_sr[7]_i_2\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of new_CMD_s_i_3 : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \read_CRC_s[0]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \read_CRC_s[2]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \read_CRC_s[3]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \read_CRC_s[4]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \read_CRC_s[5]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \read_CRC_s[6]_i_2\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \read_CRC_s[6]_i_3\ : label is "soft_lutpair8";
begin
  CRC_ERR <= \^crc_err\;
  SDIO_CMD <= \^sdio_cmd\;
  clear <= \^clear\;
  m_cmd_axis_tuser(5 downto 0) <= \^m_cmd_axis_tuser\(5 downto 0);
  m_cmd_axis_tvalid <= \^m_cmd_axis_tvalid\;
ACMD_s_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00FF0200"
    )
        port map (
      I0 => \^m_cmd_axis_tuser\(5),
      I1 => \^m_cmd_axis_tuser\(3),
      I2 => \command_s_reg[2]_0\,
      I3 => \^m_cmd_axis_tvalid\,
      I4 => ACMD_s_reg_0(0),
      O => ACMD_s_reg
    );
\BitCount[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \BitCount_reg__0\(0),
      O => p_0_in(0)
    );
\BitCount[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \BitCount_reg__0\(1),
      I1 => \BitCount_reg__0\(0),
      O => \BitCount[1]_i_1_n_0\
    );
\BitCount[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \BitCount_reg__0\(1),
      I1 => \BitCount_reg__0\(0),
      I2 => \BitCount_reg__0\(2),
      O => p_0_in(2)
    );
\BitCount[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \BitCount_reg__0\(3),
      I1 => \BitCount_reg__0\(2),
      I2 => \BitCount_reg__0\(1),
      I3 => \BitCount_reg__0\(0),
      O => p_0_in(3)
    );
\BitCount[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA5551"
    )
        port map (
      I0 => cmd_done_s_i_2_n_0,
      I1 => \BitCount_reg__0\(5),
      I2 => \BitCount_reg__0\(6),
      I3 => \BitCount_reg__0\(7),
      I4 => \BitCount_reg__0\(4),
      O => p_0_in(4)
    );
\BitCount[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F00FF0E0"
    )
        port map (
      I0 => \BitCount_reg__0\(7),
      I1 => \BitCount_reg__0\(6),
      I2 => \BitCount_reg__0\(5),
      I3 => cmd_done_s_i_2_n_0,
      I4 => \BitCount_reg__0\(4),
      O => p_0_in(5)
    );
\BitCount[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DF20"
    )
        port map (
      I0 => \BitCount_reg__0\(5),
      I1 => cmd_done_s_i_2_n_0,
      I2 => \BitCount_reg__0\(4),
      I3 => \BitCount_reg__0\(6),
      O => p_0_in(6)
    );
\BitCount[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F7FF0800"
    )
        port map (
      I0 => \BitCount_reg__0\(6),
      I1 => \BitCount_reg__0\(4),
      I2 => cmd_done_s_i_2_n_0,
      I3 => \BitCount_reg__0\(5),
      I4 => \BitCount_reg__0\(7),
      O => p_0_in(7)
    );
\BitCount_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => SDIO_CLK_FB,
      CE => CMD_RX_ACT,
      CLR => \^clear\,
      D => p_0_in(0),
      Q => \BitCount_reg__0\(0)
    );
\BitCount_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => SDIO_CLK_FB,
      CE => CMD_RX_ACT,
      CLR => \^clear\,
      D => \BitCount[1]_i_1_n_0\,
      Q => \BitCount_reg__0\(1)
    );
\BitCount_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => SDIO_CLK_FB,
      CE => CMD_RX_ACT,
      CLR => \^clear\,
      D => p_0_in(2),
      Q => \BitCount_reg__0\(2)
    );
\BitCount_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => SDIO_CLK_FB,
      CE => CMD_RX_ACT,
      CLR => \^clear\,
      D => p_0_in(3),
      Q => \BitCount_reg__0\(3)
    );
\BitCount_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => SDIO_CLK_FB,
      CE => CMD_RX_ACT,
      CLR => \^clear\,
      D => p_0_in(4),
      Q => \BitCount_reg__0\(4)
    );
\BitCount_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => SDIO_CLK_FB,
      CE => CMD_RX_ACT,
      CLR => \^clear\,
      D => p_0_in(5),
      Q => \BitCount_reg__0\(5)
    );
\BitCount_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => SDIO_CLK_FB,
      CE => CMD_RX_ACT,
      CLR => \^clear\,
      D => p_0_in(6),
      Q => \BitCount_reg__0\(6)
    );
\BitCount_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => SDIO_CLK_FB,
      CE => CMD_RX_ACT,
      CLR => \^clear\,
      D => p_0_in(7),
      Q => \BitCount_reg__0\(7)
    );
CMD_RX_ACT_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888888888888888"
    )
        port map (
      I0 => CRC_ERR_s_i_3_n_0,
      I1 => CMD_RX_ACT,
      I2 => CRC_RST_i_2_n_0,
      I3 => CMD_i1,
      I4 => RX_en,
      I5 => CMD_i2,
      O => CMD_RX_ACT_i_1_n_0
    );
CMD_RX_ACT_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => SDIO_CLK_FB,
      CE => '1',
      CLR => \^clear\,
      D => CMD_RX_ACT_i_1_n_0,
      Q => CMD_RX_ACT
    );
CMD_i1_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => SDIO_CLK_FB,
      CE => '1',
      CLR => \^clear\,
      D => \^sdio_cmd\,
      Q => CMD_i1
    );
CMD_i2_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => SDIO_CLK_FB,
      CE => '1',
      CLR => \^clear\,
      D => CMD_i1,
      Q => CMD_i2
    );
CRC_ERR_s_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3F08"
    )
        port map (
      I0 => CRC_ERR_s_i_2_n_0,
      I1 => CMD_RX_ACT,
      I2 => CRC_ERR_s_i_3_n_0,
      I3 => \^crc_err\,
      O => CRC_ERR_s_i_1_n_0
    );
CRC_ERR_s_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFBEFFFFBE"
    )
        port map (
      I0 => CRC_ERR_s_i_4_n_0,
      I1 => read_CRC_s(1),
      I2 => \calc_CRC_s_reg_n_0_[1]\,
      I3 => read_CRC_s(2),
      I4 => \calc_CRC_s_reg_n_0_[2]\,
      I5 => CRC_ERR_s_i_5_n_0,
      O => CRC_ERR_s_i_2_n_0
    );
CRC_ERR_s_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFEFF"
    )
        port map (
      I0 => \BitCount_reg__0\(4),
      I1 => \BitCount_reg__0\(7),
      I2 => \BitCount_reg__0\(6),
      I3 => \BitCount_reg__0\(5),
      I4 => cmd_done_s_i_2_n_0,
      O => CRC_ERR_s_i_3_n_0
    );
CRC_ERR_s_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => read_CRC_s(3),
      I1 => \calc_CRC_s_reg_n_0_[3]\,
      I2 => read_CRC_s(4),
      I3 => \calc_CRC_s_reg_n_0_[4]\,
      O => CRC_ERR_s_i_4_n_0
    );
CRC_ERR_s_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => \calc_CRC_s_reg_n_0_[6]\,
      I1 => \read_CRC_s_reg_n_0_[6]\,
      I2 => \calc_CRC_s_reg_n_0_[5]\,
      I3 => read_CRC_s(5),
      I4 => read_CRC_s(0),
      I5 => \calc_CRC_s_reg_n_0_[0]\,
      O => CRC_ERR_s_i_5_n_0
    );
CRC_ERR_s_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => SDIO_CLK_FB,
      CE => '1',
      CLR => \^clear\,
      D => CRC_ERR_s_i_1_n_0,
      Q => \^crc_err\
    );
CRC_RST_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8BBBBBBBBBBBBBBB"
    )
        port map (
      I0 => new_CMD_s_i_1_n_0,
      I1 => CMD_RX_ACT,
      I2 => CMD_i2,
      I3 => RX_en,
      I4 => CMD_i1,
      I5 => CRC_RST_i_2_n_0,
      O => CRC_RST_i_1_n_0
    );
CRC_RST_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1F"
    )
        port map (
      I0 => SDIO_CMD_T,
      I1 => SDIO_CMD_O,
      I2 => SDIO_CMD_I,
      O => CRC_RST_i_2_n_0
    );
CRC_RST_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => SDIO_CLK_FB,
      CE => \calc_CRC_s[6]_i_1_n_0\,
      D => CRC_RST_i_1_n_0,
      PRE => \^clear\,
      Q => CRC_RST
    );
Inst_SDIP_RX_CRC7: entity work.zsys_sdio_monitor_axis_v1_0_0_0_SDIP_RX_CRC7
     port map (
      AR(0) => CRC_RST,
      CMD_RX_ACT => CMD_RX_ACT,
      D(6) => Inst_SDIP_RX_CRC7_n_0,
      D(5) => Inst_SDIP_RX_CRC7_n_1,
      D(4) => Inst_SDIP_RX_CRC7_n_2,
      D(3) => Inst_SDIP_RX_CRC7_n_3,
      D(2) => Inst_SDIP_RX_CRC7_n_4,
      D(1) => Inst_SDIP_RX_CRC7_n_5,
      D(0) => Inst_SDIP_RX_CRC7_n_6,
      SDIO_CLK_FB => SDIO_CLK_FB,
      SDIO_CMD_I => SDIO_CMD_I,
      SDIO_CMD_O => SDIO_CMD_O,
      SDIO_CMD_T => SDIO_CMD_T
    );
SDIO_CMD_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => SDIO_CMD_I,
      I1 => SDIO_CMD_O,
      I2 => SDIO_CMD_T,
      O => \^sdio_cmd\
    );
\arg_s[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => new_CMD_s_i_1_n_0,
      I1 => CMD_RX_ACT,
      O => command_s
    );
\arg_s_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => SDIO_CLK_FB,
      CE => command_s,
      CLR => \^clear\,
      D => arg_sr(0),
      Q => m_cmd_axis_tdata(0)
    );
\arg_s_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => SDIO_CLK_FB,
      CE => command_s,
      CLR => \^clear\,
      D => arg_sr(10),
      Q => m_cmd_axis_tdata(10)
    );
\arg_s_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => SDIO_CLK_FB,
      CE => command_s,
      CLR => \^clear\,
      D => arg_sr(11),
      Q => m_cmd_axis_tdata(11)
    );
\arg_s_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => SDIO_CLK_FB,
      CE => command_s,
      CLR => \^clear\,
      D => arg_sr(12),
      Q => m_cmd_axis_tdata(12)
    );
\arg_s_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => SDIO_CLK_FB,
      CE => command_s,
      CLR => \^clear\,
      D => arg_sr(13),
      Q => m_cmd_axis_tdata(13)
    );
\arg_s_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => SDIO_CLK_FB,
      CE => command_s,
      CLR => \^clear\,
      D => arg_sr(14),
      Q => m_cmd_axis_tdata(14)
    );
\arg_s_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => SDIO_CLK_FB,
      CE => command_s,
      CLR => \^clear\,
      D => arg_sr(15),
      Q => m_cmd_axis_tdata(15)
    );
\arg_s_reg[16]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => SDIO_CLK_FB,
      CE => command_s,
      CLR => \^clear\,
      D => arg_sr(16),
      Q => m_cmd_axis_tdata(16)
    );
\arg_s_reg[17]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => SDIO_CLK_FB,
      CE => command_s,
      CLR => \^clear\,
      D => arg_sr(17),
      Q => m_cmd_axis_tdata(17)
    );
\arg_s_reg[18]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => SDIO_CLK_FB,
      CE => command_s,
      CLR => \^clear\,
      D => arg_sr(18),
      Q => m_cmd_axis_tdata(18)
    );
\arg_s_reg[19]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => SDIO_CLK_FB,
      CE => command_s,
      CLR => \^clear\,
      D => arg_sr(19),
      Q => m_cmd_axis_tdata(19)
    );
\arg_s_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => SDIO_CLK_FB,
      CE => command_s,
      CLR => \^clear\,
      D => arg_sr(1),
      Q => m_cmd_axis_tdata(1)
    );
\arg_s_reg[20]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => SDIO_CLK_FB,
      CE => command_s,
      CLR => \^clear\,
      D => arg_sr(20),
      Q => m_cmd_axis_tdata(20)
    );
\arg_s_reg[21]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => SDIO_CLK_FB,
      CE => command_s,
      CLR => \^clear\,
      D => arg_sr(21),
      Q => m_cmd_axis_tdata(21)
    );
\arg_s_reg[22]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => SDIO_CLK_FB,
      CE => command_s,
      CLR => \^clear\,
      D => arg_sr(22),
      Q => m_cmd_axis_tdata(22)
    );
\arg_s_reg[23]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => SDIO_CLK_FB,
      CE => command_s,
      CLR => \^clear\,
      D => arg_sr(23),
      Q => m_cmd_axis_tdata(23)
    );
\arg_s_reg[24]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => SDIO_CLK_FB,
      CE => command_s,
      CLR => \^clear\,
      D => arg_sr(24),
      Q => m_cmd_axis_tdata(24)
    );
\arg_s_reg[25]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => SDIO_CLK_FB,
      CE => command_s,
      CLR => \^clear\,
      D => arg_sr(25),
      Q => m_cmd_axis_tdata(25)
    );
\arg_s_reg[26]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => SDIO_CLK_FB,
      CE => command_s,
      CLR => \^clear\,
      D => arg_sr(26),
      Q => m_cmd_axis_tdata(26)
    );
\arg_s_reg[27]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => SDIO_CLK_FB,
      CE => command_s,
      CLR => \^clear\,
      D => arg_sr(27),
      Q => m_cmd_axis_tdata(27)
    );
\arg_s_reg[28]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => SDIO_CLK_FB,
      CE => command_s,
      CLR => \^clear\,
      D => arg_sr(28),
      Q => m_cmd_axis_tdata(28)
    );
\arg_s_reg[29]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => SDIO_CLK_FB,
      CE => command_s,
      CLR => \^clear\,
      D => arg_sr(29),
      Q => m_cmd_axis_tdata(29)
    );
\arg_s_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => SDIO_CLK_FB,
      CE => command_s,
      CLR => \^clear\,
      D => arg_sr(2),
      Q => m_cmd_axis_tdata(2)
    );
\arg_s_reg[30]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => SDIO_CLK_FB,
      CE => command_s,
      CLR => \^clear\,
      D => arg_sr(30),
      Q => m_cmd_axis_tdata(30)
    );
\arg_s_reg[31]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => SDIO_CLK_FB,
      CE => command_s,
      CLR => \^clear\,
      D => arg_sr(31),
      Q => m_cmd_axis_tdata(31)
    );
\arg_s_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => SDIO_CLK_FB,
      CE => command_s,
      CLR => \^clear\,
      D => arg_sr(3),
      Q => m_cmd_axis_tdata(3)
    );
\arg_s_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => SDIO_CLK_FB,
      CE => command_s,
      CLR => \^clear\,
      D => arg_sr(4),
      Q => m_cmd_axis_tdata(4)
    );
\arg_s_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => SDIO_CLK_FB,
      CE => command_s,
      CLR => \^clear\,
      D => arg_sr(5),
      Q => m_cmd_axis_tdata(5)
    );
\arg_s_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => SDIO_CLK_FB,
      CE => command_s,
      CLR => \^clear\,
      D => arg_sr(6),
      Q => m_cmd_axis_tdata(6)
    );
\arg_s_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => SDIO_CLK_FB,
      CE => command_s,
      CLR => \^clear\,
      D => arg_sr(7),
      Q => m_cmd_axis_tdata(7)
    );
\arg_s_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => SDIO_CLK_FB,
      CE => command_s,
      CLR => \^clear\,
      D => arg_sr(8),
      Q => m_cmd_axis_tdata(8)
    );
\arg_s_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => SDIO_CLK_FB,
      CE => command_s,
      CLR => \^clear\,
      D => arg_sr(9),
      Q => m_cmd_axis_tdata(9)
    );
\arg_sr[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000000"
    )
        port map (
      I0 => \BitCount_reg__0\(6),
      I1 => \BitCount_reg__0\(7),
      I2 => p_0_in_1,
      I3 => CMD_RX_ACT,
      I4 => \arg_sr[31]_i_2_n_0\,
      O => arg_sr_0
    );
\arg_sr[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000007FFFFFFFFF"
    )
        port map (
      I0 => \BitCount_reg__0\(2),
      I1 => \BitCount_reg__0\(1),
      I2 => \BitCount_reg__0\(0),
      I3 => \BitCount_reg__0\(3),
      I4 => \BitCount_reg__0\(4),
      I5 => \BitCount_reg__0\(5),
      O => \arg_sr[31]_i_2_n_0\
    );
\arg_sr_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => SDIO_CLK_FB,
      CE => arg_sr_0,
      CLR => \^clear\,
      D => \^sdio_cmd\,
      Q => arg_sr(0)
    );
\arg_sr_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => SDIO_CLK_FB,
      CE => arg_sr_0,
      CLR => \^clear\,
      D => arg_sr(9),
      Q => arg_sr(10)
    );
\arg_sr_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => SDIO_CLK_FB,
      CE => arg_sr_0,
      CLR => \^clear\,
      D => arg_sr(10),
      Q => arg_sr(11)
    );
\arg_sr_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => SDIO_CLK_FB,
      CE => arg_sr_0,
      CLR => \^clear\,
      D => arg_sr(11),
      Q => arg_sr(12)
    );
\arg_sr_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => SDIO_CLK_FB,
      CE => arg_sr_0,
      CLR => \^clear\,
      D => arg_sr(12),
      Q => arg_sr(13)
    );
\arg_sr_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => SDIO_CLK_FB,
      CE => arg_sr_0,
      CLR => \^clear\,
      D => arg_sr(13),
      Q => arg_sr(14)
    );
\arg_sr_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => SDIO_CLK_FB,
      CE => arg_sr_0,
      CLR => \^clear\,
      D => arg_sr(14),
      Q => arg_sr(15)
    );
\arg_sr_reg[16]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => SDIO_CLK_FB,
      CE => arg_sr_0,
      CLR => \^clear\,
      D => arg_sr(15),
      Q => arg_sr(16)
    );
\arg_sr_reg[17]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => SDIO_CLK_FB,
      CE => arg_sr_0,
      CLR => \^clear\,
      D => arg_sr(16),
      Q => arg_sr(17)
    );
\arg_sr_reg[18]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => SDIO_CLK_FB,
      CE => arg_sr_0,
      CLR => \^clear\,
      D => arg_sr(17),
      Q => arg_sr(18)
    );
\arg_sr_reg[19]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => SDIO_CLK_FB,
      CE => arg_sr_0,
      CLR => \^clear\,
      D => arg_sr(18),
      Q => arg_sr(19)
    );
\arg_sr_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => SDIO_CLK_FB,
      CE => arg_sr_0,
      CLR => \^clear\,
      D => arg_sr(0),
      Q => arg_sr(1)
    );
\arg_sr_reg[20]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => SDIO_CLK_FB,
      CE => arg_sr_0,
      CLR => \^clear\,
      D => arg_sr(19),
      Q => arg_sr(20)
    );
\arg_sr_reg[21]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => SDIO_CLK_FB,
      CE => arg_sr_0,
      CLR => \^clear\,
      D => arg_sr(20),
      Q => arg_sr(21)
    );
\arg_sr_reg[22]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => SDIO_CLK_FB,
      CE => arg_sr_0,
      CLR => \^clear\,
      D => arg_sr(21),
      Q => arg_sr(22)
    );
\arg_sr_reg[23]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => SDIO_CLK_FB,
      CE => arg_sr_0,
      CLR => \^clear\,
      D => arg_sr(22),
      Q => arg_sr(23)
    );
\arg_sr_reg[24]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => SDIO_CLK_FB,
      CE => arg_sr_0,
      CLR => \^clear\,
      D => arg_sr(23),
      Q => arg_sr(24)
    );
\arg_sr_reg[25]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => SDIO_CLK_FB,
      CE => arg_sr_0,
      CLR => \^clear\,
      D => arg_sr(24),
      Q => arg_sr(25)
    );
\arg_sr_reg[26]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => SDIO_CLK_FB,
      CE => arg_sr_0,
      CLR => \^clear\,
      D => arg_sr(25),
      Q => arg_sr(26)
    );
\arg_sr_reg[27]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => SDIO_CLK_FB,
      CE => arg_sr_0,
      CLR => \^clear\,
      D => arg_sr(26),
      Q => arg_sr(27)
    );
\arg_sr_reg[28]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => SDIO_CLK_FB,
      CE => arg_sr_0,
      CLR => \^clear\,
      D => arg_sr(27),
      Q => arg_sr(28)
    );
\arg_sr_reg[29]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => SDIO_CLK_FB,
      CE => arg_sr_0,
      CLR => \^clear\,
      D => arg_sr(28),
      Q => arg_sr(29)
    );
\arg_sr_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => SDIO_CLK_FB,
      CE => arg_sr_0,
      CLR => \^clear\,
      D => arg_sr(1),
      Q => arg_sr(2)
    );
\arg_sr_reg[30]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => SDIO_CLK_FB,
      CE => arg_sr_0,
      CLR => \^clear\,
      D => arg_sr(29),
      Q => arg_sr(30)
    );
\arg_sr_reg[31]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => SDIO_CLK_FB,
      CE => arg_sr_0,
      CLR => \^clear\,
      D => arg_sr(30),
      Q => arg_sr(31)
    );
\arg_sr_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => SDIO_CLK_FB,
      CE => arg_sr_0,
      CLR => \^clear\,
      D => arg_sr(2),
      Q => arg_sr(3)
    );
\arg_sr_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => SDIO_CLK_FB,
      CE => arg_sr_0,
      CLR => \^clear\,
      D => arg_sr(3),
      Q => arg_sr(4)
    );
\arg_sr_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => SDIO_CLK_FB,
      CE => arg_sr_0,
      CLR => \^clear\,
      D => arg_sr(4),
      Q => arg_sr(5)
    );
\arg_sr_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => SDIO_CLK_FB,
      CE => arg_sr_0,
      CLR => \^clear\,
      D => arg_sr(5),
      Q => arg_sr(6)
    );
\arg_sr_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => SDIO_CLK_FB,
      CE => arg_sr_0,
      CLR => \^clear\,
      D => arg_sr(6),
      Q => arg_sr(7)
    );
\arg_sr_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => SDIO_CLK_FB,
      CE => arg_sr_0,
      CLR => \^clear\,
      D => arg_sr(7),
      Q => arg_sr(8)
    );
\arg_sr_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => SDIO_CLK_FB,
      CE => arg_sr_0,
      CLR => \^clear\,
      D => arg_sr(8),
      Q => arg_sr(9)
    );
\calc_CRC_s[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => new_CMD_s_i_1_n_0,
      I1 => CMD_RX_ACT,
      O => \calc_CRC_s[6]_i_1_n_0\
    );
\calc_CRC_s_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => SDIO_CLK_FB,
      CE => \calc_CRC_s[6]_i_1_n_0\,
      CLR => \^clear\,
      D => Inst_SDIP_RX_CRC7_n_6,
      Q => \calc_CRC_s_reg_n_0_[0]\
    );
\calc_CRC_s_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => SDIO_CLK_FB,
      CE => \calc_CRC_s[6]_i_1_n_0\,
      CLR => \^clear\,
      D => Inst_SDIP_RX_CRC7_n_5,
      Q => \calc_CRC_s_reg_n_0_[1]\
    );
\calc_CRC_s_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => SDIO_CLK_FB,
      CE => \calc_CRC_s[6]_i_1_n_0\,
      CLR => \^clear\,
      D => Inst_SDIP_RX_CRC7_n_4,
      Q => \calc_CRC_s_reg_n_0_[2]\
    );
\calc_CRC_s_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => SDIO_CLK_FB,
      CE => \calc_CRC_s[6]_i_1_n_0\,
      CLR => \^clear\,
      D => Inst_SDIP_RX_CRC7_n_3,
      Q => \calc_CRC_s_reg_n_0_[3]\
    );
\calc_CRC_s_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => SDIO_CLK_FB,
      CE => \calc_CRC_s[6]_i_1_n_0\,
      CLR => \^clear\,
      D => Inst_SDIP_RX_CRC7_n_2,
      Q => \calc_CRC_s_reg_n_0_[4]\
    );
\calc_CRC_s_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => SDIO_CLK_FB,
      CE => \calc_CRC_s[6]_i_1_n_0\,
      CLR => \^clear\,
      D => Inst_SDIP_RX_CRC7_n_1,
      Q => \calc_CRC_s_reg_n_0_[5]\
    );
\calc_CRC_s_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => SDIO_CLK_FB,
      CE => \calc_CRC_s[6]_i_1_n_0\,
      CLR => \^clear\,
      D => Inst_SDIP_RX_CRC7_n_0,
      Q => \calc_CRC_s_reg_n_0_[6]\
    );
cmd_done_s_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000020"
    )
        port map (
      I0 => CMD_RX_ACT,
      I1 => cmd_done_s_i_2_n_0,
      I2 => \BitCount_reg__0\(5),
      I3 => \BitCount_reg__0\(6),
      I4 => \BitCount_reg__0\(7),
      I5 => \BitCount_reg__0\(4),
      O => cmd_done_s
    );
cmd_done_s_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \BitCount_reg__0\(0),
      I1 => \BitCount_reg__0\(1),
      I2 => \BitCount_reg__0\(2),
      I3 => \BitCount_reg__0\(3),
      O => cmd_done_s_i_2_n_0
    );
cmd_done_s_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => SDIO_CLK_FB,
      CE => '1',
      CLR => \^clear\,
      D => cmd_done_s,
      Q => \^m_cmd_axis_tvalid\
    );
\command_s_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => SDIO_CLK_FB,
      CE => command_s,
      CLR => \^clear\,
      D => \command_sr_reg_n_0_[0]\,
      Q => \^m_cmd_axis_tuser\(0)
    );
\command_s_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => SDIO_CLK_FB,
      CE => command_s,
      CLR => \^clear\,
      D => \command_sr_reg_n_0_[1]\,
      Q => \^m_cmd_axis_tuser\(1)
    );
\command_s_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => SDIO_CLK_FB,
      CE => command_s,
      CLR => \^clear\,
      D => \command_sr_reg_n_0_[2]\,
      Q => \^m_cmd_axis_tuser\(2)
    );
\command_s_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => SDIO_CLK_FB,
      CE => command_s,
      CLR => \^clear\,
      D => \command_sr_reg_n_0_[3]\,
      Q => \^m_cmd_axis_tuser\(3)
    );
\command_s_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => SDIO_CLK_FB,
      CE => command_s,
      CLR => \^clear\,
      D => \command_sr_reg_n_0_[4]\,
      Q => \^m_cmd_axis_tuser\(4)
    );
\command_s_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => SDIO_CLK_FB,
      CE => command_s,
      CLR => \^clear\,
      D => \command_sr_reg_n_0_[5]\,
      Q => \^m_cmd_axis_tuser\(5)
    );
\command_sr[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A8FF"
    )
        port map (
      I0 => SDIO_CMD_I,
      I1 => SDIO_CMD_O,
      I2 => SDIO_CMD_T,
      I3 => CMD_RX_ACT,
      O => p_1_in(0)
    );
\command_sr[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => CMD_RX_ACT,
      I1 => \command_sr_reg_n_0_[0]\,
      O => p_1_in(1)
    );
\command_sr[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => CMD_RX_ACT,
      I1 => \command_sr_reg_n_0_[1]\,
      O => p_1_in(2)
    );
\command_sr[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => CMD_RX_ACT,
      I1 => \command_sr_reg_n_0_[2]\,
      O => p_1_in(3)
    );
\command_sr[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => CMD_RX_ACT,
      I1 => \command_sr_reg_n_0_[3]\,
      O => p_1_in(4)
    );
\command_sr[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => CMD_RX_ACT,
      I1 => \command_sr_reg_n_0_[4]\,
      O => p_1_in(5)
    );
\command_sr[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => CMD_RX_ACT,
      I1 => \command_sr_reg_n_0_[5]\,
      O => p_1_in(6)
    );
\command_sr[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => CMD_RX_ACT,
      I1 => p_0_in_1,
      O => \command_sr[7]_i_1_n_0\
    );
\command_sr[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => CMD_RX_ACT,
      I1 => \command_sr_reg_n_0_[6]\,
      O => p_1_in(7)
    );
\command_sr_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => SDIO_CLK_FB,
      CE => \command_sr[7]_i_1_n_0\,
      D => p_1_in(0),
      PRE => \^clear\,
      Q => \command_sr_reg_n_0_[0]\
    );
\command_sr_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => SDIO_CLK_FB,
      CE => \command_sr[7]_i_1_n_0\,
      CLR => \^clear\,
      D => p_1_in(1),
      Q => \command_sr_reg_n_0_[1]\
    );
\command_sr_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => SDIO_CLK_FB,
      CE => \command_sr[7]_i_1_n_0\,
      CLR => \^clear\,
      D => p_1_in(2),
      Q => \command_sr_reg_n_0_[2]\
    );
\command_sr_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => SDIO_CLK_FB,
      CE => \command_sr[7]_i_1_n_0\,
      CLR => \^clear\,
      D => p_1_in(3),
      Q => \command_sr_reg_n_0_[3]\
    );
\command_sr_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => SDIO_CLK_FB,
      CE => \command_sr[7]_i_1_n_0\,
      CLR => \^clear\,
      D => p_1_in(4),
      Q => \command_sr_reg_n_0_[4]\
    );
\command_sr_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => SDIO_CLK_FB,
      CE => \command_sr[7]_i_1_n_0\,
      CLR => \^clear\,
      D => p_1_in(5),
      Q => \command_sr_reg_n_0_[5]\
    );
\command_sr_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => SDIO_CLK_FB,
      CE => \command_sr[7]_i_1_n_0\,
      CLR => \^clear\,
      D => p_1_in(6),
      Q => \command_sr_reg_n_0_[6]\
    );
\command_sr_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => SDIO_CLK_FB,
      CE => \command_sr[7]_i_1_n_0\,
      CLR => \^clear\,
      D => p_1_in(7),
      Q => p_0_in_1
    );
new_CMD_s_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000100000000"
    )
        port map (
      I0 => \BitCount_reg__0\(3),
      I1 => new_CMD_s_i_3_n_0,
      I2 => \BitCount_reg__0\(4),
      I3 => \BitCount_reg__0\(7),
      I4 => \BitCount_reg__0\(6),
      I5 => \BitCount_reg__0\(5),
      O => new_CMD_s_i_1_n_0
    );
new_CMD_s_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => axis_aresetn,
      O => \^clear\
    );
new_CMD_s_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \BitCount_reg__0\(2),
      I1 => \BitCount_reg__0\(1),
      I2 => \BitCount_reg__0\(0),
      O => new_CMD_s_i_3_n_0
    );
new_CMD_s_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => SDIO_CLK_FB,
      CE => CMD_RX_ACT,
      CLR => \^clear\,
      D => new_CMD_s_i_1_n_0,
      Q => new_CMD
    );
\read_CRC_s[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8880"
    )
        port map (
      I0 => CMD_RX_ACT,
      I1 => SDIO_CMD_I,
      I2 => SDIO_CMD_O,
      I3 => SDIO_CMD_T,
      O => \read_CRC_s[0]_i_1_n_0\
    );
\read_CRC_s[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => CMD_RX_ACT,
      I1 => read_CRC_s(0),
      O => \read_CRC_s[1]_i_1_n_0\
    );
\read_CRC_s[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => CMD_RX_ACT,
      I1 => read_CRC_s(1),
      O => \read_CRC_s[2]_i_1_n_0\
    );
\read_CRC_s[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => CMD_RX_ACT,
      I1 => read_CRC_s(2),
      O => \read_CRC_s[3]_i_1_n_0\
    );
\read_CRC_s[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => CMD_RX_ACT,
      I1 => read_CRC_s(3),
      O => \read_CRC_s[4]_i_1_n_0\
    );
\read_CRC_s[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => CMD_RX_ACT,
      I1 => read_CRC_s(4),
      O => \read_CRC_s[5]_i_1_n_0\
    );
\read_CRC_s[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"555F5F5F5D555555"
    )
        port map (
      I0 => CMD_RX_ACT,
      I1 => \BitCount_reg__0\(0),
      I2 => \read_CRC_s[6]_i_3_n_0\,
      I3 => \BitCount_reg__0\(2),
      I4 => \BitCount_reg__0\(1),
      I5 => \BitCount_reg__0\(3),
      O => \read_CRC_s[6]_i_1_n_0\
    );
\read_CRC_s[6]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => CMD_RX_ACT,
      I1 => read_CRC_s(5),
      O => \read_CRC_s[6]_i_2_n_0\
    );
\read_CRC_s[6]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => \BitCount_reg__0\(5),
      I1 => \BitCount_reg__0\(6),
      I2 => \BitCount_reg__0\(7),
      I3 => \BitCount_reg__0\(4),
      O => \read_CRC_s[6]_i_3_n_0\
    );
\read_CRC_s_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => SDIO_CLK_FB,
      CE => \read_CRC_s[6]_i_1_n_0\,
      CLR => \^clear\,
      D => \read_CRC_s[0]_i_1_n_0\,
      Q => read_CRC_s(0)
    );
\read_CRC_s_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => SDIO_CLK_FB,
      CE => \read_CRC_s[6]_i_1_n_0\,
      CLR => \^clear\,
      D => \read_CRC_s[1]_i_1_n_0\,
      Q => read_CRC_s(1)
    );
\read_CRC_s_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => SDIO_CLK_FB,
      CE => \read_CRC_s[6]_i_1_n_0\,
      CLR => \^clear\,
      D => \read_CRC_s[2]_i_1_n_0\,
      Q => read_CRC_s(2)
    );
\read_CRC_s_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => SDIO_CLK_FB,
      CE => \read_CRC_s[6]_i_1_n_0\,
      CLR => \^clear\,
      D => \read_CRC_s[3]_i_1_n_0\,
      Q => read_CRC_s(3)
    );
\read_CRC_s_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => SDIO_CLK_FB,
      CE => \read_CRC_s[6]_i_1_n_0\,
      CLR => \^clear\,
      D => \read_CRC_s[4]_i_1_n_0\,
      Q => read_CRC_s(4)
    );
\read_CRC_s_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => SDIO_CLK_FB,
      CE => \read_CRC_s[6]_i_1_n_0\,
      CLR => \^clear\,
      D => \read_CRC_s[5]_i_1_n_0\,
      Q => read_CRC_s(5)
    );
\read_CRC_s_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => SDIO_CLK_FB,
      CE => \read_CRC_s[6]_i_1_n_0\,
      CLR => \^clear\,
      D => \read_CRC_s[6]_i_2_n_0\,
      Q => \read_CRC_s_reg_n_0_[6]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity zsys_sdio_monitor_axis_v1_0_0_0_sdio_to_axis_v1_0 is
  port (
    m_cmd_axis_tuser : out STD_LOGIC_VECTOR ( 7 downto 0 );
    SDIO_CMD : out STD_LOGIC;
    new_CMD : out STD_LOGIC;
    m_cmd_axis_tvalid : out STD_LOGIC;
    CRC_ERR : out STD_LOGIC;
    m_cmd_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    SDIO_DAT : out STD_LOGIC_VECTOR ( 3 downto 0 );
    SDIO_CLK_FB : in STD_LOGIC;
    axis_aclk : in STD_LOGIC;
    SDIO_CMD_T : in STD_LOGIC;
    RX_en : in STD_LOGIC;
    SDIO_CMD_I : in STD_LOGIC;
    SDIO_CMD_O : in STD_LOGIC;
    axis_aresetn : in STD_LOGIC;
    SDIO_DAT_I : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SDIO_DAT_T : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SDIO_DAT_O : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
end zsys_sdio_monitor_axis_v1_0_0_0_sdio_to_axis_v1_0;

architecture STRUCTURE of zsys_sdio_monitor_axis_v1_0_0_0_sdio_to_axis_v1_0 is
  signal \ACMD_s0/i__n_0\ : STD_LOGIC;
  signal Inst_SDIP_CMD_RX_n_5 : STD_LOGIC;
  signal \SDIO_CMD_T_d_reg[1]_srl2_U0_SDIO_CMD_T_d_reg_c_0_n_0\ : STD_LOGIC;
  signal \SDIO_CMD_T_d_reg[2]_U0_SDIO_CMD_T_d_reg_c_1_n_0\ : STD_LOGIC;
  signal SDIO_CMD_T_d_reg_c_0_n_0 : STD_LOGIC;
  signal SDIO_CMD_T_d_reg_c_1_n_0 : STD_LOGIC;
  signal SDIO_CMD_T_d_reg_c_n_0 : STD_LOGIC;
  signal SDIO_CMD_T_d_reg_gate_n_0 : STD_LOGIC;
  signal clear : STD_LOGIC;
  signal \^m_cmd_axis_tuser\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute srl_bus_name : string;
  attribute srl_bus_name of \SDIO_CMD_T_d_reg[1]_srl2_U0_SDIO_CMD_T_d_reg_c_0\ : label is "\U0/SDIO_CMD_T_d_reg ";
  attribute srl_name : string;
  attribute srl_name of \SDIO_CMD_T_d_reg[1]_srl2_U0_SDIO_CMD_T_d_reg_c_0\ : label is "\U0/SDIO_CMD_T_d_reg[1]_srl2_U0_SDIO_CMD_T_d_reg_c_0 ";
begin
  m_cmd_axis_tuser(7 downto 0) <= \^m_cmd_axis_tuser\(7 downto 0);
\ACMD_s0/i_\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \^m_cmd_axis_tuser\(2),
      I1 => \^m_cmd_axis_tuser\(4),
      I2 => \^m_cmd_axis_tuser\(0),
      I3 => \^m_cmd_axis_tuser\(1),
      O => \ACMD_s0/i__n_0\
    );
ACMD_s_reg: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => '1',
      CLR => clear,
      D => Inst_SDIP_CMD_RX_n_5,
      Q => \^m_cmd_axis_tuser\(7)
    );
Inst_SDIP_CMD_RX: entity work.zsys_sdio_monitor_axis_v1_0_0_0_SDIP_CMD_RX
     port map (
      ACMD_s_reg => Inst_SDIP_CMD_RX_n_5,
      ACMD_s_reg_0(0) => \^m_cmd_axis_tuser\(7),
      CRC_ERR => CRC_ERR,
      RX_en => RX_en,
      SDIO_CLK_FB => SDIO_CLK_FB,
      SDIO_CMD => SDIO_CMD,
      SDIO_CMD_I => SDIO_CMD_I,
      SDIO_CMD_O => SDIO_CMD_O,
      SDIO_CMD_T => SDIO_CMD_T,
      axis_aresetn => axis_aresetn,
      clear => clear,
      \command_s_reg[2]_0\ => \ACMD_s0/i__n_0\,
      m_cmd_axis_tdata(31 downto 0) => m_cmd_axis_tdata(31 downto 0),
      m_cmd_axis_tuser(5 downto 0) => \^m_cmd_axis_tuser\(5 downto 0),
      m_cmd_axis_tvalid => m_cmd_axis_tvalid,
      new_CMD => new_CMD
    );
\SDIO_CMD_T_d_reg[1]_srl2_U0_SDIO_CMD_T_d_reg_c_0\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => SDIO_CLK_FB,
      D => SDIO_CMD_T,
      Q => \SDIO_CMD_T_d_reg[1]_srl2_U0_SDIO_CMD_T_d_reg_c_0_n_0\
    );
\SDIO_CMD_T_d_reg[2]_U0_SDIO_CMD_T_d_reg_c_1\: unisim.vcomponents.FDRE
     port map (
      C => SDIO_CLK_FB,
      CE => '1',
      D => \SDIO_CMD_T_d_reg[1]_srl2_U0_SDIO_CMD_T_d_reg_c_0_n_0\,
      Q => \SDIO_CMD_T_d_reg[2]_U0_SDIO_CMD_T_d_reg_c_1_n_0\,
      R => '0'
    );
\SDIO_CMD_T_d_reg[3]_inv\: unisim.vcomponents.FDPE
     port map (
      C => SDIO_CLK_FB,
      CE => '1',
      D => SDIO_CMD_T_d_reg_gate_n_0,
      PRE => clear,
      Q => \^m_cmd_axis_tuser\(6)
    );
SDIO_CMD_T_d_reg_c: unisim.vcomponents.FDCE
     port map (
      C => SDIO_CLK_FB,
      CE => '1',
      CLR => clear,
      D => '1',
      Q => SDIO_CMD_T_d_reg_c_n_0
    );
SDIO_CMD_T_d_reg_c_0: unisim.vcomponents.FDCE
     port map (
      C => SDIO_CLK_FB,
      CE => '1',
      CLR => clear,
      D => SDIO_CMD_T_d_reg_c_n_0,
      Q => SDIO_CMD_T_d_reg_c_0_n_0
    );
SDIO_CMD_T_d_reg_c_1: unisim.vcomponents.FDCE
     port map (
      C => SDIO_CLK_FB,
      CE => '1',
      CLR => clear,
      D => SDIO_CMD_T_d_reg_c_0_n_0,
      Q => SDIO_CMD_T_d_reg_c_1_n_0
    );
SDIO_CMD_T_d_reg_gate: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \SDIO_CMD_T_d_reg[2]_U0_SDIO_CMD_T_d_reg_c_1_n_0\,
      I1 => SDIO_CMD_T_d_reg_c_1_n_0,
      O => SDIO_CMD_T_d_reg_gate_n_0
    );
\SDIO_DAT[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => SDIO_DAT_I(0),
      I1 => SDIO_DAT_T(0),
      I2 => SDIO_DAT_O(0),
      O => SDIO_DAT(0)
    );
\SDIO_DAT[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => SDIO_DAT_I(1),
      I1 => SDIO_DAT_T(1),
      I2 => SDIO_DAT_O(1),
      O => SDIO_DAT(1)
    );
\SDIO_DAT[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => SDIO_DAT_I(2),
      I1 => SDIO_DAT_T(2),
      I2 => SDIO_DAT_O(2),
      O => SDIO_DAT(2)
    );
\SDIO_DAT[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => SDIO_DAT_I(3),
      I1 => SDIO_DAT_T(3),
      I2 => SDIO_DAT_O(3),
      O => SDIO_DAT(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity zsys_sdio_monitor_axis_v1_0_0_0 is
  port (
    SDIO_CLK_IN : in STD_LOGIC;
    SDIO_CLK_FB : in STD_LOGIC;
    SDIO_CMD_I : in STD_LOGIC;
    SDIO_CMD_O : in STD_LOGIC;
    SDIO_CMD_T : in STD_LOGIC;
    SDIO_DAT_I : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SDIO_DAT_O : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SDIO_DAT_T : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SDIO_CDN : in STD_LOGIC;
    SDIO_WP : in STD_LOGIC;
    SDIO_BUSPOW : in STD_LOGIC;
    SDIO_BUSVOLT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SDIO_LED : in STD_LOGIC;
    SDIO_CLK : out STD_LOGIC;
    SDIO_CMD : out STD_LOGIC;
    SDIO_CMD_DIR : out STD_LOGIC;
    SDIO_DAT : out STD_LOGIC_VECTOR ( 3 downto 0 );
    SDIO_DAT_DIR : out STD_LOGIC;
    LED : out STD_LOGIC;
    BUSPOW : out STD_LOGIC;
    BUSVOLT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    CDN : out STD_LOGIC;
    WP : out STD_LOGIC;
    STATE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    new_CMD : out STD_LOGIC;
    CRC_ERR : out STD_LOGIC;
    RX_en : in STD_LOGIC;
    axis_aclk : in STD_LOGIC;
    axis_aresetn : in STD_LOGIC;
    m_cmd_axis_tvalid : out STD_LOGIC;
    m_cmd_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_cmd_axis_tuser : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_cmd_axis_tlast : out STD_LOGIC;
    m_cmd_axis_tready : in STD_LOGIC;
    m_dat_axis_tvalid : out STD_LOGIC;
    m_dat_axis_tdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_dat_axis_tlast : out STD_LOGIC;
    m_dat_axis_tready : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of zsys_sdio_monitor_axis_v1_0_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of zsys_sdio_monitor_axis_v1_0_0_0 : entity is "zsys_sdio_monitor_axis_v1_0_0_0,sdio_to_axis_v1_0,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of zsys_sdio_monitor_axis_v1_0_0_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of zsys_sdio_monitor_axis_v1_0_0_0 : entity is "sdio_to_axis_v1_0,Vivado 2017.4";
end zsys_sdio_monitor_axis_v1_0_0_0;

architecture STRUCTURE of zsys_sdio_monitor_axis_v1_0_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^sdio_buspow\ : STD_LOGIC;
  signal \^sdio_busvolt\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^sdio_cdn\ : STD_LOGIC;
  signal \^sdio_clk_fb\ : STD_LOGIC;
  signal \^sdio_led\ : STD_LOGIC;
  signal \^sdio_wp\ : STD_LOGIC;
  attribute x_interface_info : string;
  attribute x_interface_info of SDIO_BUSPOW : signal is "xilinx.com:interface:sdio:1.0 SD BUSPOW";
  attribute x_interface_info of SDIO_CDN : signal is "xilinx.com:interface:sdio:1.0 SD CDN";
  attribute x_interface_info of SDIO_CLK : signal is "xilinx.com:signal:clock:1.0 SDIO_CLK CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of SDIO_CLK : signal is "XIL_INTERFACENAME SDIO_CLK, FREQ_HZ 50000000, ASSOCIATED_BUSIF SD, PHASE 0.000, CLK_DOMAIN zsys_sdio_monitor_axis_v1_0_0_0_SDIO_CLK";
  attribute x_interface_info of SDIO_CLK_FB : signal is "xilinx.com:interface:sdio:1.0 SD CLK_FB";
  attribute x_interface_info of SDIO_CLK_IN : signal is "xilinx.com:interface:sdio:1.0 SD CLK";
  attribute x_interface_parameter of SDIO_CLK_IN : signal is "XIL_INTERFACENAME SD, FREQ_HZ 50000000, ASSOCIATED_BUSIF SD";
  attribute x_interface_info of SDIO_CMD_I : signal is "xilinx.com:interface:sdio:1.0 SD CMD_I";
  attribute x_interface_info of SDIO_CMD_O : signal is "xilinx.com:interface:sdio:1.0 SD CMD_O";
  attribute x_interface_info of SDIO_CMD_T : signal is "xilinx.com:interface:sdio:1.0 SD CMD_T";
  attribute x_interface_info of SDIO_LED : signal is "xilinx.com:interface:sdio:1.0 SD LED";
  attribute x_interface_info of SDIO_WP : signal is "xilinx.com:interface:sdio:1.0 SD WP";
  attribute x_interface_info of axis_aclk : signal is "xilinx.com:signal:clock:1.0 axis_aclk CLK";
  attribute x_interface_parameter of axis_aclk : signal is "XIL_INTERFACENAME axis_aclk, ASSOCIATED_RESET axis_aresetn, ASSOCIATED_BUSIF m_cmd_axis:m_dat_axis, FREQ_HZ 50000000, PHASE 0.000, CLK_DOMAIN zsys_sdio_monitor_axis_v1_0_0_0_SDIO_CLK";
  attribute x_interface_info of axis_aresetn : signal is "xilinx.com:signal:reset:1.0 axis_aresetn RST";
  attribute x_interface_parameter of axis_aresetn : signal is "XIL_INTERFACENAME axis_aresetn, POLARITY ACTIVE_LOW";
  attribute x_interface_info of m_cmd_axis_tlast : signal is "xilinx.com:interface:axis:1.0 m_cmd_axis TLAST";
  attribute x_interface_info of m_cmd_axis_tready : signal is "xilinx.com:interface:axis:1.0 m_cmd_axis TREADY";
  attribute x_interface_info of m_cmd_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 m_cmd_axis TVALID";
  attribute x_interface_parameter of m_cmd_axis_tvalid : signal is "XIL_INTERFACENAME m_cmd_axis, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 8, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 50000000, PHASE 0.000, CLK_DOMAIN zsys_sdio_monitor_axis_v1_0_0_0_SDIO_CLK, LAYERED_METADATA undef";
  attribute x_interface_info of m_dat_axis_tlast : signal is "xilinx.com:interface:axis:1.0 m_dat_axis TLAST";
  attribute x_interface_info of m_dat_axis_tready : signal is "xilinx.com:interface:axis:1.0 m_dat_axis TREADY";
  attribute x_interface_info of m_dat_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 m_dat_axis TVALID";
  attribute x_interface_parameter of m_dat_axis_tvalid : signal is "XIL_INTERFACENAME m_dat_axis, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 50000000, PHASE 0.000, CLK_DOMAIN zsys_sdio_monitor_axis_v1_0_0_0_SDIO_CLK, LAYERED_METADATA undef";
  attribute x_interface_info of SDIO_BUSVOLT : signal is "xilinx.com:interface:sdio:1.0 SD BUSVOLT";
  attribute x_interface_info of SDIO_DAT_I : signal is "xilinx.com:interface:sdio:1.0 SD DATA_I";
  attribute x_interface_info of SDIO_DAT_O : signal is "xilinx.com:interface:sdio:1.0 SD DATA_O";
  attribute x_interface_info of SDIO_DAT_T : signal is "xilinx.com:interface:sdio:1.0 SD DATA_T";
  attribute x_interface_info of m_cmd_axis_tdata : signal is "xilinx.com:interface:axis:1.0 m_cmd_axis TDATA";
  attribute x_interface_info of m_cmd_axis_tuser : signal is "xilinx.com:interface:axis:1.0 m_cmd_axis TUSER";
  attribute x_interface_info of m_dat_axis_tdata : signal is "xilinx.com:interface:axis:1.0 m_dat_axis TDATA";
begin
  BUSPOW <= \^sdio_buspow\;
  BUSVOLT(2 downto 0) <= \^sdio_busvolt\(2 downto 0);
  CDN <= \^sdio_cdn\;
  LED <= \^sdio_led\;
  SDIO_CLK <= \^sdio_clk_fb\;
  STATE(3) <= \<const0>\;
  STATE(2) <= \<const0>\;
  STATE(1) <= \<const0>\;
  STATE(0) <= \<const0>\;
  WP <= \^sdio_wp\;
  \^sdio_buspow\ <= SDIO_BUSPOW;
  \^sdio_busvolt\(2 downto 0) <= SDIO_BUSVOLT(2 downto 0);
  \^sdio_cdn\ <= SDIO_CDN;
  \^sdio_clk_fb\ <= SDIO_CLK_FB;
  \^sdio_led\ <= SDIO_LED;
  \^sdio_wp\ <= SDIO_WP;
  m_cmd_axis_tlast <= 'Z';
  m_dat_axis_tlast <= 'Z';
  m_dat_axis_tvalid <= 'Z';
  m_dat_axis_tdata(0) <= 'Z';
  m_dat_axis_tdata(1) <= 'Z';
  m_dat_axis_tdata(2) <= 'Z';
  m_dat_axis_tdata(3) <= 'Z';
  m_dat_axis_tdata(4) <= 'Z';
  m_dat_axis_tdata(5) <= 'Z';
  m_dat_axis_tdata(6) <= 'Z';
  m_dat_axis_tdata(7) <= 'Z';
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
SDIO_CMD_DIR_INST_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => SDIO_CMD_T,
      O => SDIO_CMD_DIR
    );
SDIO_DAT_DIR_INST_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => SDIO_DAT_T(0),
      O => SDIO_DAT_DIR
    );
U0: entity work.zsys_sdio_monitor_axis_v1_0_0_0_sdio_to_axis_v1_0
     port map (
      CRC_ERR => CRC_ERR,
      RX_en => RX_en,
      SDIO_CLK_FB => \^sdio_clk_fb\,
      SDIO_CMD => SDIO_CMD,
      SDIO_CMD_I => SDIO_CMD_I,
      SDIO_CMD_O => SDIO_CMD_O,
      SDIO_CMD_T => SDIO_CMD_T,
      SDIO_DAT(3 downto 0) => SDIO_DAT(3 downto 0),
      SDIO_DAT_I(3 downto 0) => SDIO_DAT_I(3 downto 0),
      SDIO_DAT_O(3 downto 0) => SDIO_DAT_O(3 downto 0),
      SDIO_DAT_T(3 downto 0) => SDIO_DAT_T(3 downto 0),
      axis_aclk => axis_aclk,
      axis_aresetn => axis_aresetn,
      m_cmd_axis_tdata(31 downto 0) => m_cmd_axis_tdata(31 downto 0),
      m_cmd_axis_tuser(7 downto 0) => m_cmd_axis_tuser(7 downto 0),
      m_cmd_axis_tvalid => m_cmd_axis_tvalid,
      new_CMD => new_CMD
    );
end STRUCTURE;
