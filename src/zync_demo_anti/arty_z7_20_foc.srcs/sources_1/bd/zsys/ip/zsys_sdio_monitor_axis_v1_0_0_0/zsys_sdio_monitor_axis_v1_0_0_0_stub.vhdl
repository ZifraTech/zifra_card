-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
-- Date        : Wed Apr 11 16:39:00 2018
-- Host        : W7-64-05 running 64-bit Service Pack 1  (build 7601)
-- Command     : write_vhdl -force -mode synth_stub -rename_top zsys_sdio_monitor_axis_v1_0_0_0 -prefix
--               zsys_sdio_monitor_axis_v1_0_0_0_ zsys_sdio_monitor_axis_v1_0_0_0_stub.vhdl
-- Design      : zsys_sdio_monitor_axis_v1_0_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity zsys_sdio_monitor_axis_v1_0_0_0 is
  Port ( 
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

end zsys_sdio_monitor_axis_v1_0_0_0;

architecture stub of zsys_sdio_monitor_axis_v1_0_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "SDIO_CLK_IN,SDIO_CLK_FB,SDIO_CMD_I,SDIO_CMD_O,SDIO_CMD_T,SDIO_DAT_I[3:0],SDIO_DAT_O[3:0],SDIO_DAT_T[3:0],SDIO_CDN,SDIO_WP,SDIO_BUSPOW,SDIO_BUSVOLT[2:0],SDIO_LED,SDIO_CLK,SDIO_CMD,SDIO_CMD_DIR,SDIO_DAT[3:0],SDIO_DAT_DIR,LED,BUSPOW,BUSVOLT[2:0],CDN,WP,STATE[3:0],new_CMD,CRC_ERR,RX_en,axis_aclk,axis_aresetn,m_cmd_axis_tvalid,m_cmd_axis_tdata[31:0],m_cmd_axis_tuser[7:0],m_cmd_axis_tlast,m_cmd_axis_tready,m_dat_axis_tvalid,m_dat_axis_tdata[7:0],m_dat_axis_tlast,m_dat_axis_tready";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "sdio_to_axis_v1_0,Vivado 2017.4";
begin
end;
