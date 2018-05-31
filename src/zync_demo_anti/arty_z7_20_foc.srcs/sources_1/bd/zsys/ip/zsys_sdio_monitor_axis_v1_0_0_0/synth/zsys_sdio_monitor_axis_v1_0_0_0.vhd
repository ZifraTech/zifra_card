-- (c) Copyright 1995-2018 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: microfpga.com:user:sdio_monitor_axis_v1_0:1.0
-- IP Revision: 13

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY zsys_sdio_monitor_axis_v1_0_0_0 IS
  PORT (
    SDIO_CLK_IN : IN STD_LOGIC;
    SDIO_CLK_FB : IN STD_LOGIC;
    SDIO_CMD_I : IN STD_LOGIC;
    SDIO_CMD_O : IN STD_LOGIC;
    SDIO_CMD_T : IN STD_LOGIC;
    SDIO_DAT_I : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    SDIO_DAT_O : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    SDIO_DAT_T : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    SDIO_CDN : IN STD_LOGIC;
    SDIO_WP : IN STD_LOGIC;
    SDIO_BUSPOW : IN STD_LOGIC;
    SDIO_BUSVOLT : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    SDIO_LED : IN STD_LOGIC;
    SDIO_CLK : OUT STD_LOGIC;
    SDIO_CMD : OUT STD_LOGIC;
    SDIO_CMD_DIR : OUT STD_LOGIC;
    SDIO_DAT : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    SDIO_DAT_DIR : OUT STD_LOGIC;
    LED : OUT STD_LOGIC;
    BUSPOW : OUT STD_LOGIC;
    BUSVOLT : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    CDN : OUT STD_LOGIC;
    WP : OUT STD_LOGIC;
    STATE : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    new_CMD : OUT STD_LOGIC;
    CRC_ERR : OUT STD_LOGIC;
    RX_en : IN STD_LOGIC;
    axis_aclk : IN STD_LOGIC;
    axis_aresetn : IN STD_LOGIC;
    m_cmd_axis_tvalid : OUT STD_LOGIC;
    m_cmd_axis_tdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    m_cmd_axis_tuser : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    m_cmd_axis_tlast : OUT STD_LOGIC;
    m_cmd_axis_tready : IN STD_LOGIC;
    m_dat_axis_tvalid : OUT STD_LOGIC;
    m_dat_axis_tdata : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    m_dat_axis_tlast : OUT STD_LOGIC;
    m_dat_axis_tready : IN STD_LOGIC
  );
END zsys_sdio_monitor_axis_v1_0_0_0;

ARCHITECTURE zsys_sdio_monitor_axis_v1_0_0_0_arch OF zsys_sdio_monitor_axis_v1_0_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF zsys_sdio_monitor_axis_v1_0_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT sdio_to_axis_v1_0 IS
    GENERIC (
      C_INCLUDE_LED : BOOLEAN;
      C_INCLUDE_WP : BOOLEAN;
      C_INCLUDE_CDN : BOOLEAN;
      C_INCLUDE_POW : BOOLEAN;
      C_INCLUDE_VOLT : BOOLEAN;
      C_SDIO_WIDTH : INTEGER
    );
    PORT (
      SDIO_CLK_IN : IN STD_LOGIC;
      SDIO_CLK_FB : IN STD_LOGIC;
      SDIO_CMD_I : IN STD_LOGIC;
      SDIO_CMD_O : IN STD_LOGIC;
      SDIO_CMD_T : IN STD_LOGIC;
      SDIO_DAT_I : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      SDIO_DAT_O : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      SDIO_DAT_T : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      SDIO_CDN : IN STD_LOGIC;
      SDIO_WP : IN STD_LOGIC;
      SDIO_BUSPOW : IN STD_LOGIC;
      SDIO_BUSVOLT : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      SDIO_LED : IN STD_LOGIC;
      SDIO_CLK : OUT STD_LOGIC;
      SDIO_CMD : OUT STD_LOGIC;
      SDIO_CMD_DIR : OUT STD_LOGIC;
      SDIO_DAT : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      SDIO_DAT_DIR : OUT STD_LOGIC;
      LED : OUT STD_LOGIC;
      BUSPOW : OUT STD_LOGIC;
      BUSVOLT : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      CDN : OUT STD_LOGIC;
      WP : OUT STD_LOGIC;
      STATE : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      new_CMD : OUT STD_LOGIC;
      CRC_ERR : OUT STD_LOGIC;
      RX_en : IN STD_LOGIC;
      axis_aclk : IN STD_LOGIC;
      axis_aresetn : IN STD_LOGIC;
      m_cmd_axis_tvalid : OUT STD_LOGIC;
      m_cmd_axis_tdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      m_cmd_axis_tuser : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      m_cmd_axis_tlast : OUT STD_LOGIC;
      m_cmd_axis_tready : IN STD_LOGIC;
      m_dat_axis_tvalid : OUT STD_LOGIC;
      m_dat_axis_tdata : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      m_dat_axis_tlast : OUT STD_LOGIC;
      m_dat_axis_tready : IN STD_LOGIC
    );
  END COMPONENT sdio_to_axis_v1_0;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF zsys_sdio_monitor_axis_v1_0_0_0_arch: ARCHITECTURE IS "sdio_to_axis_v1_0,Vivado 2017.4";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF zsys_sdio_monitor_axis_v1_0_0_0_arch : ARCHITECTURE IS "zsys_sdio_monitor_axis_v1_0_0_0,sdio_to_axis_v1_0,{}";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_INFO OF m_dat_axis_tready: SIGNAL IS "xilinx.com:interface:axis:1.0 m_dat_axis TREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m_dat_axis_tlast: SIGNAL IS "xilinx.com:interface:axis:1.0 m_dat_axis TLAST";
  ATTRIBUTE X_INTERFACE_INFO OF m_dat_axis_tdata: SIGNAL IS "xilinx.com:interface:axis:1.0 m_dat_axis TDATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF m_dat_axis_tvalid: SIGNAL IS "XIL_INTERFACENAME m_dat_axis, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 50000000, PHASE 0.000, CLK_DOMAIN zsys_sdio_monitor_axis_v1_0_0_0_SDIO_CLK, LAYERED_METADATA undef";
  ATTRIBUTE X_INTERFACE_INFO OF m_dat_axis_tvalid: SIGNAL IS "xilinx.com:interface:axis:1.0 m_dat_axis TVALID";
  ATTRIBUTE X_INTERFACE_INFO OF m_cmd_axis_tready: SIGNAL IS "xilinx.com:interface:axis:1.0 m_cmd_axis TREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m_cmd_axis_tlast: SIGNAL IS "xilinx.com:interface:axis:1.0 m_cmd_axis TLAST";
  ATTRIBUTE X_INTERFACE_INFO OF m_cmd_axis_tuser: SIGNAL IS "xilinx.com:interface:axis:1.0 m_cmd_axis TUSER";
  ATTRIBUTE X_INTERFACE_INFO OF m_cmd_axis_tdata: SIGNAL IS "xilinx.com:interface:axis:1.0 m_cmd_axis TDATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF m_cmd_axis_tvalid: SIGNAL IS "XIL_INTERFACENAME m_cmd_axis, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 8, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 50000000, PHASE 0.000, CLK_DOMAIN zsys_sdio_monitor_axis_v1_0_0_0_SDIO_CLK, LAYERED_METADATA undef";
  ATTRIBUTE X_INTERFACE_INFO OF m_cmd_axis_tvalid: SIGNAL IS "xilinx.com:interface:axis:1.0 m_cmd_axis TVALID";
  ATTRIBUTE X_INTERFACE_PARAMETER OF axis_aresetn: SIGNAL IS "XIL_INTERFACENAME axis_aresetn, POLARITY ACTIVE_LOW";
  ATTRIBUTE X_INTERFACE_INFO OF axis_aresetn: SIGNAL IS "xilinx.com:signal:reset:1.0 axis_aresetn RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF axis_aclk: SIGNAL IS "XIL_INTERFACENAME axis_aclk, ASSOCIATED_RESET axis_aresetn, ASSOCIATED_BUSIF m_cmd_axis:m_dat_axis, FREQ_HZ 50000000, PHASE 0.000, CLK_DOMAIN zsys_sdio_monitor_axis_v1_0_0_0_SDIO_CLK";
  ATTRIBUTE X_INTERFACE_INFO OF axis_aclk: SIGNAL IS "xilinx.com:signal:clock:1.0 axis_aclk CLK";
  ATTRIBUTE X_INTERFACE_PARAMETER OF SDIO_CLK: SIGNAL IS "XIL_INTERFACENAME SDIO_CLK, FREQ_HZ 50000000, ASSOCIATED_BUSIF SD, PHASE 0.000, CLK_DOMAIN zsys_sdio_monitor_axis_v1_0_0_0_SDIO_CLK";
  ATTRIBUTE X_INTERFACE_INFO OF SDIO_CLK: SIGNAL IS "xilinx.com:signal:clock:1.0 SDIO_CLK CLK";
  ATTRIBUTE X_INTERFACE_INFO OF SDIO_LED: SIGNAL IS "xilinx.com:interface:sdio:1.0 SD LED";
  ATTRIBUTE X_INTERFACE_INFO OF SDIO_BUSVOLT: SIGNAL IS "xilinx.com:interface:sdio:1.0 SD BUSVOLT";
  ATTRIBUTE X_INTERFACE_INFO OF SDIO_BUSPOW: SIGNAL IS "xilinx.com:interface:sdio:1.0 SD BUSPOW";
  ATTRIBUTE X_INTERFACE_INFO OF SDIO_WP: SIGNAL IS "xilinx.com:interface:sdio:1.0 SD WP";
  ATTRIBUTE X_INTERFACE_INFO OF SDIO_CDN: SIGNAL IS "xilinx.com:interface:sdio:1.0 SD CDN";
  ATTRIBUTE X_INTERFACE_INFO OF SDIO_DAT_T: SIGNAL IS "xilinx.com:interface:sdio:1.0 SD DATA_T";
  ATTRIBUTE X_INTERFACE_INFO OF SDIO_DAT_O: SIGNAL IS "xilinx.com:interface:sdio:1.0 SD DATA_O";
  ATTRIBUTE X_INTERFACE_INFO OF SDIO_DAT_I: SIGNAL IS "xilinx.com:interface:sdio:1.0 SD DATA_I";
  ATTRIBUTE X_INTERFACE_INFO OF SDIO_CMD_T: SIGNAL IS "xilinx.com:interface:sdio:1.0 SD CMD_T";
  ATTRIBUTE X_INTERFACE_INFO OF SDIO_CMD_O: SIGNAL IS "xilinx.com:interface:sdio:1.0 SD CMD_O";
  ATTRIBUTE X_INTERFACE_INFO OF SDIO_CMD_I: SIGNAL IS "xilinx.com:interface:sdio:1.0 SD CMD_I";
  ATTRIBUTE X_INTERFACE_INFO OF SDIO_CLK_FB: SIGNAL IS "xilinx.com:interface:sdio:1.0 SD CLK_FB";
  ATTRIBUTE X_INTERFACE_PARAMETER OF SDIO_CLK_IN: SIGNAL IS "XIL_INTERFACENAME SD, FREQ_HZ 50000000, ASSOCIATED_BUSIF SD";
  ATTRIBUTE X_INTERFACE_INFO OF SDIO_CLK_IN: SIGNAL IS "xilinx.com:interface:sdio:1.0 SD CLK";
BEGIN
  U0 : sdio_to_axis_v1_0
    GENERIC MAP (
      C_INCLUDE_LED => false,
      C_INCLUDE_WP => false,
      C_INCLUDE_CDN => false,
      C_INCLUDE_POW => false,
      C_INCLUDE_VOLT => false,
      C_SDIO_WIDTH => 4
    )
    PORT MAP (
      SDIO_CLK_IN => SDIO_CLK_IN,
      SDIO_CLK_FB => SDIO_CLK_FB,
      SDIO_CMD_I => SDIO_CMD_I,
      SDIO_CMD_O => SDIO_CMD_O,
      SDIO_CMD_T => SDIO_CMD_T,
      SDIO_DAT_I => SDIO_DAT_I,
      SDIO_DAT_O => SDIO_DAT_O,
      SDIO_DAT_T => SDIO_DAT_T,
      SDIO_CDN => SDIO_CDN,
      SDIO_WP => SDIO_WP,
      SDIO_BUSPOW => SDIO_BUSPOW,
      SDIO_BUSVOLT => SDIO_BUSVOLT,
      SDIO_LED => SDIO_LED,
      SDIO_CLK => SDIO_CLK,
      SDIO_CMD => SDIO_CMD,
      SDIO_CMD_DIR => SDIO_CMD_DIR,
      SDIO_DAT => SDIO_DAT,
      SDIO_DAT_DIR => SDIO_DAT_DIR,
      LED => LED,
      BUSPOW => BUSPOW,
      BUSVOLT => BUSVOLT,
      CDN => CDN,
      WP => WP,
      STATE => STATE,
      new_CMD => new_CMD,
      CRC_ERR => CRC_ERR,
      RX_en => RX_en,
      axis_aclk => axis_aclk,
      axis_aresetn => axis_aresetn,
      m_cmd_axis_tvalid => m_cmd_axis_tvalid,
      m_cmd_axis_tdata => m_cmd_axis_tdata,
      m_cmd_axis_tuser => m_cmd_axis_tuser,
      m_cmd_axis_tlast => m_cmd_axis_tlast,
      m_cmd_axis_tready => m_cmd_axis_tready,
      m_dat_axis_tvalid => m_dat_axis_tvalid,
      m_dat_axis_tdata => m_dat_axis_tdata,
      m_dat_axis_tlast => m_dat_axis_tlast,
      m_dat_axis_tready => m_dat_axis_tready
    );
END zsys_sdio_monitor_axis_v1_0_0_0_arch;
