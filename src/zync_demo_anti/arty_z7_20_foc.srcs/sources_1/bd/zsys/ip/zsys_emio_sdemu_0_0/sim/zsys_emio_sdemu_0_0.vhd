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

-- IP VLNV: zifra.tech:userIP:emio_sdemu:1.3
-- IP Revision: 15

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY zsys_emio_sdemu_0_0 IS
  PORT (
    clk_50 : IN STD_LOGIC;
    clk_100 : IN STD_LOGIC;
    clk_200 : IN STD_LOGIC;
    reset_n : IN STD_LOGIC;
    sd_clk_fb : OUT STD_LOGIC;
    sd_clk : IN STD_LOGIC;
    clk_out : OUT STD_LOGIC;
    clk_in : IN STD_LOGIC;
    sd_cmd_i : OUT STD_LOGIC;
    sd_cmd_o : IN STD_LOGIC;
    sd_cmd_t : IN STD_LOGIC;
    sd_dat_i : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    sd_dat_o : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    sd_dat_t : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    sd_busvolt : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    sd_buspower : IN STD_LOGIC;
    sd_led : IN STD_LOGIC;
    sd_wp : OUT STD_LOGIC;
    sd_cdn : OUT STD_LOGIC;
    wbm_clk_o : OUT STD_LOGIC;
    wbm_adr_o : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    wbm_dat_i : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    wbm_dat_o : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    wbm_sel_o : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    wbm_cyc_o : OUT STD_LOGIC;
    wbm_stb_o : OUT STD_LOGIC;
    wbm_we_o : OUT STD_LOGIC;
    wbm_ack_i : IN STD_LOGIC;
    wbm_cti_o : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    wbm_bte_o : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    opt_enable_hs : IN STD_LOGIC;
    state_debug : OUT STD_LOGIC_VECTOR(5 DOWNTO 0)
  );
END zsys_emio_sdemu_0_0;

ARCHITECTURE zsys_emio_sdemu_0_0_arch OF zsys_emio_sdemu_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF zsys_emio_sdemu_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT emio_sdemu IS
    PORT (
      clk_50 : IN STD_LOGIC;
      clk_100 : IN STD_LOGIC;
      clk_200 : IN STD_LOGIC;
      reset_n : IN STD_LOGIC;
      sd_clk_fb : OUT STD_LOGIC;
      sd_clk : IN STD_LOGIC;
      clk_out : OUT STD_LOGIC;
      clk_in : IN STD_LOGIC;
      sd_cmd_i : OUT STD_LOGIC;
      sd_cmd_o : IN STD_LOGIC;
      sd_cmd_t : IN STD_LOGIC;
      sd_dat_i : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      sd_dat_o : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      sd_dat_t : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      sd_busvolt : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      sd_buspower : IN STD_LOGIC;
      sd_led : IN STD_LOGIC;
      sd_wp : OUT STD_LOGIC;
      sd_cdn : OUT STD_LOGIC;
      wbm_clk_o : OUT STD_LOGIC;
      wbm_adr_o : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      wbm_dat_i : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      wbm_dat_o : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      wbm_sel_o : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      wbm_cyc_o : OUT STD_LOGIC;
      wbm_stb_o : OUT STD_LOGIC;
      wbm_we_o : OUT STD_LOGIC;
      wbm_ack_i : IN STD_LOGIC;
      wbm_cti_o : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      wbm_bte_o : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      opt_enable_hs : IN STD_LOGIC;
      state_debug : OUT STD_LOGIC_VECTOR(5 DOWNTO 0)
    );
  END COMPONENT emio_sdemu;
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_INFO OF wbm_bte_o: SIGNAL IS "zifra.tech:userIP:wishbone:1.0 WB bte";
  ATTRIBUTE X_INTERFACE_INFO OF wbm_cti_o: SIGNAL IS "zifra.tech:userIP:wishbone:1.0 WB cti";
  ATTRIBUTE X_INTERFACE_INFO OF wbm_ack_i: SIGNAL IS "zifra.tech:userIP:wishbone:1.0 WB ack";
  ATTRIBUTE X_INTERFACE_INFO OF wbm_we_o: SIGNAL IS "zifra.tech:userIP:wishbone:1.0 WB we";
  ATTRIBUTE X_INTERFACE_INFO OF wbm_stb_o: SIGNAL IS "zifra.tech:userIP:wishbone:1.0 WB stb";
  ATTRIBUTE X_INTERFACE_INFO OF wbm_cyc_o: SIGNAL IS "zifra.tech:userIP:wishbone:1.0 WB cyc";
  ATTRIBUTE X_INTERFACE_INFO OF wbm_sel_o: SIGNAL IS "zifra.tech:userIP:wishbone:1.0 WB sel";
  ATTRIBUTE X_INTERFACE_INFO OF wbm_dat_o: SIGNAL IS "zifra.tech:userIP:wishbone:1.0 WB dat_o";
  ATTRIBUTE X_INTERFACE_INFO OF wbm_dat_i: SIGNAL IS "zifra.tech:userIP:wishbone:1.0 WB dat_i";
  ATTRIBUTE X_INTERFACE_INFO OF wbm_adr_o: SIGNAL IS "zifra.tech:userIP:wishbone:1.0 WB adr";
  ATTRIBUTE X_INTERFACE_INFO OF sd_cdn: SIGNAL IS "xilinx.com:interface:sdio:1.0 SDIO CDN";
  ATTRIBUTE X_INTERFACE_INFO OF sd_wp: SIGNAL IS "xilinx.com:interface:sdio:1.0 SDIO WP";
  ATTRIBUTE X_INTERFACE_INFO OF sd_led: SIGNAL IS "xilinx.com:interface:sdio:1.0 SDIO LED";
  ATTRIBUTE X_INTERFACE_INFO OF sd_buspower: SIGNAL IS "xilinx.com:interface:sdio:1.0 SDIO BUSPOW";
  ATTRIBUTE X_INTERFACE_INFO OF sd_busvolt: SIGNAL IS "xilinx.com:interface:sdio:1.0 SDIO BUSVOLT";
  ATTRIBUTE X_INTERFACE_INFO OF sd_dat_t: SIGNAL IS "xilinx.com:interface:sdio:1.0 SDIO DATA_T";
  ATTRIBUTE X_INTERFACE_INFO OF sd_dat_o: SIGNAL IS "xilinx.com:interface:sdio:1.0 SDIO DATA_O";
  ATTRIBUTE X_INTERFACE_INFO OF sd_dat_i: SIGNAL IS "xilinx.com:interface:sdio:1.0 SDIO DATA_I";
  ATTRIBUTE X_INTERFACE_INFO OF sd_cmd_t: SIGNAL IS "xilinx.com:interface:sdio:1.0 SDIO CMD_T";
  ATTRIBUTE X_INTERFACE_INFO OF sd_cmd_o: SIGNAL IS "xilinx.com:interface:sdio:1.0 SDIO CMD_O";
  ATTRIBUTE X_INTERFACE_INFO OF sd_cmd_i: SIGNAL IS "xilinx.com:interface:sdio:1.0 SDIO CMD_I";
  ATTRIBUTE X_INTERFACE_INFO OF sd_clk: SIGNAL IS "xilinx.com:interface:sdio:1.0 SDIO CLK";
  ATTRIBUTE X_INTERFACE_INFO OF sd_clk_fb: SIGNAL IS "xilinx.com:interface:sdio:1.0 SDIO CLK_FB";
  ATTRIBUTE X_INTERFACE_PARAMETER OF reset_n: SIGNAL IS "XIL_INTERFACENAME reset_n, POLARITY ACTIVE_LOW";
  ATTRIBUTE X_INTERFACE_INFO OF reset_n: SIGNAL IS "xilinx.com:signal:reset:1.0 reset_n RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF clk_50: SIGNAL IS "XIL_INTERFACENAME clk_50, ASSOCIATED_BUSIF WB, FREQ_HZ 50000000, PHASE 0.000, CLK_DOMAIN zsys_processing_system7_0_1_FCLK_CLK0";
  ATTRIBUTE X_INTERFACE_INFO OF clk_50: SIGNAL IS "xilinx.com:signal:clock:1.0 clk_50 CLK";
BEGIN
  U0 : emio_sdemu
    PORT MAP (
      clk_50 => clk_50,
      clk_100 => clk_100,
      clk_200 => clk_200,
      reset_n => reset_n,
      sd_clk_fb => sd_clk_fb,
      sd_clk => sd_clk,
      clk_out => clk_out,
      clk_in => clk_in,
      sd_cmd_i => sd_cmd_i,
      sd_cmd_o => sd_cmd_o,
      sd_cmd_t => sd_cmd_t,
      sd_dat_i => sd_dat_i,
      sd_dat_o => sd_dat_o,
      sd_dat_t => sd_dat_t,
      sd_busvolt => sd_busvolt,
      sd_buspower => sd_buspower,
      sd_led => sd_led,
      sd_wp => sd_wp,
      sd_cdn => sd_cdn,
      wbm_clk_o => wbm_clk_o,
      wbm_adr_o => wbm_adr_o,
      wbm_dat_i => wbm_dat_i,
      wbm_dat_o => wbm_dat_o,
      wbm_sel_o => wbm_sel_o,
      wbm_cyc_o => wbm_cyc_o,
      wbm_stb_o => wbm_stb_o,
      wbm_we_o => wbm_we_o,
      wbm_ack_i => wbm_ack_i,
      wbm_cti_o => wbm_cti_o,
      wbm_bte_o => wbm_bte_o,
      opt_enable_hs => opt_enable_hs,
      state_debug => state_debug
    );
END zsys_emio_sdemu_0_0_arch;
