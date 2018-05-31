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

-- IP VLNV: xilinx.com:ip:system_ila:1.1
-- IP Revision: 1

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY zsys_system_ila_0_0 IS
  PORT (
    clk : IN STD_LOGIC;
    probe0 : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    probe1 : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    probe2 : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    probe3 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    probe4 : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    probe5 : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    probe6 : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    SLOT_0_AXIS_tdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    SLOT_0_AXIS_tlast : IN STD_LOGIC;
    SLOT_0_AXIS_tuser : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    SLOT_0_AXIS_tvalid : IN STD_LOGIC;
    SLOT_0_AXIS_tready : IN STD_LOGIC;
    SLOT_1_AXI_awid : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    SLOT_1_AXI_awaddr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    SLOT_1_AXI_awlen : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    SLOT_1_AXI_awsize : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    SLOT_1_AXI_awburst : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    SLOT_1_AXI_awcache : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    SLOT_1_AXI_awprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    SLOT_1_AXI_awqos : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    SLOT_1_AXI_awvalid : IN STD_LOGIC;
    SLOT_1_AXI_awready : IN STD_LOGIC;
    SLOT_1_AXI_wdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    SLOT_1_AXI_wstrb : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    SLOT_1_AXI_wlast : IN STD_LOGIC;
    SLOT_1_AXI_wvalid : IN STD_LOGIC;
    SLOT_1_AXI_wready : IN STD_LOGIC;
    SLOT_1_AXI_bid : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    SLOT_1_AXI_bresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    SLOT_1_AXI_bvalid : IN STD_LOGIC;
    SLOT_1_AXI_bready : IN STD_LOGIC;
    SLOT_1_AXI_arid : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    SLOT_1_AXI_araddr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    SLOT_1_AXI_arlen : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    SLOT_1_AXI_arsize : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    SLOT_1_AXI_arburst : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    SLOT_1_AXI_arcache : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    SLOT_1_AXI_arprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    SLOT_1_AXI_arqos : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    SLOT_1_AXI_arvalid : IN STD_LOGIC;
    SLOT_1_AXI_arready : IN STD_LOGIC;
    SLOT_1_AXI_rid : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    SLOT_1_AXI_rdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    SLOT_1_AXI_rresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    SLOT_1_AXI_rlast : IN STD_LOGIC;
    SLOT_1_AXI_rvalid : IN STD_LOGIC;
    SLOT_1_AXI_rready : IN STD_LOGIC;
    SLOT_2_AXI_awaddr : IN STD_LOGIC_VECTOR(12 DOWNTO 0);
    SLOT_2_AXI_awprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    SLOT_2_AXI_awvalid : IN STD_LOGIC;
    SLOT_2_AXI_awready : IN STD_LOGIC;
    SLOT_2_AXI_wdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    SLOT_2_AXI_wstrb : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    SLOT_2_AXI_wvalid : IN STD_LOGIC;
    SLOT_2_AXI_wready : IN STD_LOGIC;
    SLOT_2_AXI_bresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    SLOT_2_AXI_bvalid : IN STD_LOGIC;
    SLOT_2_AXI_bready : IN STD_LOGIC;
    SLOT_2_AXI_araddr : IN STD_LOGIC_VECTOR(12 DOWNTO 0);
    SLOT_2_AXI_arprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    SLOT_2_AXI_arvalid : IN STD_LOGIC;
    SLOT_2_AXI_arready : IN STD_LOGIC;
    SLOT_2_AXI_rdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    SLOT_2_AXI_rresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    SLOT_2_AXI_rvalid : IN STD_LOGIC;
    SLOT_2_AXI_rready : IN STD_LOGIC;
    SLOT_3_AXI_awaddr : IN STD_LOGIC_VECTOR(12 DOWNTO 0);
    SLOT_3_AXI_awprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    SLOT_3_AXI_awvalid : IN STD_LOGIC;
    SLOT_3_AXI_awready : IN STD_LOGIC;
    SLOT_3_AXI_wdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    SLOT_3_AXI_wstrb : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    SLOT_3_AXI_wvalid : IN STD_LOGIC;
    SLOT_3_AXI_wready : IN STD_LOGIC;
    SLOT_3_AXI_bresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    SLOT_3_AXI_bvalid : IN STD_LOGIC;
    SLOT_3_AXI_bready : IN STD_LOGIC;
    SLOT_3_AXI_araddr : IN STD_LOGIC_VECTOR(12 DOWNTO 0);
    SLOT_3_AXI_arprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    SLOT_3_AXI_arvalid : IN STD_LOGIC;
    SLOT_3_AXI_arready : IN STD_LOGIC;
    SLOT_3_AXI_rdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    SLOT_3_AXI_rresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    SLOT_3_AXI_rvalid : IN STD_LOGIC;
    SLOT_3_AXI_rready : IN STD_LOGIC;
    SLOT_4_BRAM_en : IN STD_LOGIC;
    SLOT_4_BRAM_dout : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    SLOT_4_BRAM_din : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    SLOT_4_BRAM_we : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    SLOT_4_BRAM_addr : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    SLOT_4_BRAM_clk : IN STD_LOGIC;
    SLOT_4_BRAM_rst : IN STD_LOGIC;
    resetn : IN STD_LOGIC
  );
END zsys_system_ila_0_0;

ARCHITECTURE zsys_system_ila_0_0_arch OF zsys_system_ila_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF zsys_system_ila_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT bd_f448 IS
    PORT (
      clk : IN STD_LOGIC;
      probe0 : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      probe1 : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      probe2 : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      probe3 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      probe4 : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      probe5 : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      probe6 : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      SLOT_0_AXIS_tdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      SLOT_0_AXIS_tlast : IN STD_LOGIC;
      SLOT_0_AXIS_tuser : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      SLOT_0_AXIS_tvalid : IN STD_LOGIC;
      SLOT_0_AXIS_tready : IN STD_LOGIC;
      SLOT_1_AXI_awid : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      SLOT_1_AXI_awaddr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      SLOT_1_AXI_awlen : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      SLOT_1_AXI_awsize : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      SLOT_1_AXI_awburst : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      SLOT_1_AXI_awcache : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      SLOT_1_AXI_awprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      SLOT_1_AXI_awqos : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      SLOT_1_AXI_awvalid : IN STD_LOGIC;
      SLOT_1_AXI_awready : IN STD_LOGIC;
      SLOT_1_AXI_wdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      SLOT_1_AXI_wstrb : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      SLOT_1_AXI_wlast : IN STD_LOGIC;
      SLOT_1_AXI_wvalid : IN STD_LOGIC;
      SLOT_1_AXI_wready : IN STD_LOGIC;
      SLOT_1_AXI_bid : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      SLOT_1_AXI_bresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      SLOT_1_AXI_bvalid : IN STD_LOGIC;
      SLOT_1_AXI_bready : IN STD_LOGIC;
      SLOT_1_AXI_arid : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      SLOT_1_AXI_araddr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      SLOT_1_AXI_arlen : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      SLOT_1_AXI_arsize : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      SLOT_1_AXI_arburst : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      SLOT_1_AXI_arcache : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      SLOT_1_AXI_arprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      SLOT_1_AXI_arqos : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      SLOT_1_AXI_arvalid : IN STD_LOGIC;
      SLOT_1_AXI_arready : IN STD_LOGIC;
      SLOT_1_AXI_rid : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      SLOT_1_AXI_rdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      SLOT_1_AXI_rresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      SLOT_1_AXI_rlast : IN STD_LOGIC;
      SLOT_1_AXI_rvalid : IN STD_LOGIC;
      SLOT_1_AXI_rready : IN STD_LOGIC;
      SLOT_2_AXI_awaddr : IN STD_LOGIC_VECTOR(12 DOWNTO 0);
      SLOT_2_AXI_awprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      SLOT_2_AXI_awvalid : IN STD_LOGIC;
      SLOT_2_AXI_awready : IN STD_LOGIC;
      SLOT_2_AXI_wdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      SLOT_2_AXI_wstrb : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      SLOT_2_AXI_wvalid : IN STD_LOGIC;
      SLOT_2_AXI_wready : IN STD_LOGIC;
      SLOT_2_AXI_bresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      SLOT_2_AXI_bvalid : IN STD_LOGIC;
      SLOT_2_AXI_bready : IN STD_LOGIC;
      SLOT_2_AXI_araddr : IN STD_LOGIC_VECTOR(12 DOWNTO 0);
      SLOT_2_AXI_arprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      SLOT_2_AXI_arvalid : IN STD_LOGIC;
      SLOT_2_AXI_arready : IN STD_LOGIC;
      SLOT_2_AXI_rdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      SLOT_2_AXI_rresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      SLOT_2_AXI_rvalid : IN STD_LOGIC;
      SLOT_2_AXI_rready : IN STD_LOGIC;
      SLOT_3_AXI_awaddr : IN STD_LOGIC_VECTOR(12 DOWNTO 0);
      SLOT_3_AXI_awprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      SLOT_3_AXI_awvalid : IN STD_LOGIC;
      SLOT_3_AXI_awready : IN STD_LOGIC;
      SLOT_3_AXI_wdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      SLOT_3_AXI_wstrb : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      SLOT_3_AXI_wvalid : IN STD_LOGIC;
      SLOT_3_AXI_wready : IN STD_LOGIC;
      SLOT_3_AXI_bresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      SLOT_3_AXI_bvalid : IN STD_LOGIC;
      SLOT_3_AXI_bready : IN STD_LOGIC;
      SLOT_3_AXI_araddr : IN STD_LOGIC_VECTOR(12 DOWNTO 0);
      SLOT_3_AXI_arprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      SLOT_3_AXI_arvalid : IN STD_LOGIC;
      SLOT_3_AXI_arready : IN STD_LOGIC;
      SLOT_3_AXI_rdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      SLOT_3_AXI_rresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      SLOT_3_AXI_rvalid : IN STD_LOGIC;
      SLOT_3_AXI_rready : IN STD_LOGIC;
      SLOT_4_BRAM_en : IN STD_LOGIC;
      SLOT_4_BRAM_dout : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      SLOT_4_BRAM_din : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      SLOT_4_BRAM_we : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      SLOT_4_BRAM_addr : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      SLOT_4_BRAM_clk : IN STD_LOGIC;
      SLOT_4_BRAM_rst : IN STD_LOGIC;
      resetn : IN STD_LOGIC
    );
  END COMPONENT bd_f448;
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER OF resetn: SIGNAL IS "XIL_INTERFACENAME RST.resetn, POLARITY ACTIVE_LOW";
  ATTRIBUTE X_INTERFACE_INFO OF resetn: SIGNAL IS "xilinx.com:signal:reset:1.0 RST.resetn RST";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_4_BRAM_rst: SIGNAL IS "xilinx.com:interface:bram:1.0 SLOT_4_BRAM RST";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_4_BRAM_clk: SIGNAL IS "xilinx.com:interface:bram:1.0 SLOT_4_BRAM CLK";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_4_BRAM_addr: SIGNAL IS "xilinx.com:interface:bram:1.0 SLOT_4_BRAM ADDR";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_4_BRAM_we: SIGNAL IS "xilinx.com:interface:bram:1.0 SLOT_4_BRAM WE";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_4_BRAM_din: SIGNAL IS "xilinx.com:interface:bram:1.0 SLOT_4_BRAM DIN";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_4_BRAM_dout: SIGNAL IS "xilinx.com:interface:bram:1.0 SLOT_4_BRAM DOUT";
  ATTRIBUTE X_INTERFACE_PARAMETER OF SLOT_4_BRAM_en: SIGNAL IS "XIL_INTERFACENAME SLOT_4_BRAM, MEM_SIZE 65536, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ_WRITE";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_4_BRAM_en: SIGNAL IS "xilinx.com:interface:bram:1.0 SLOT_4_BRAM EN";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_3_AXI_rready: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_3_AXI RREADY";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_3_AXI_rvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_3_AXI RVALID";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_3_AXI_rresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_3_AXI RRESP";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_3_AXI_rdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_3_AXI RDATA";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_3_AXI_arready: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_3_AXI ARREADY";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_3_AXI_arvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_3_AXI ARVALID";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_3_AXI_arprot: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_3_AXI ARPROT";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_3_AXI_araddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_3_AXI ARADDR";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_3_AXI_bready: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_3_AXI BREADY";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_3_AXI_bvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_3_AXI BVALID";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_3_AXI_bresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_3_AXI BRESP";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_3_AXI_wready: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_3_AXI WREADY";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_3_AXI_wvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_3_AXI WVALID";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_3_AXI_wstrb: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_3_AXI WSTRB";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_3_AXI_wdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_3_AXI WDATA";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_3_AXI_awready: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_3_AXI AWREADY";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_3_AXI_awvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_3_AXI AWVALID";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_3_AXI_awprot: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_3_AXI AWPROT";
  ATTRIBUTE X_INTERFACE_PARAMETER OF SLOT_3_AXI_awaddr: SIGNAL IS "XIL_INTERFACENAME SLOT_3_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 50000000, ID_WIDTH 0, ADDR_WIDTH 13, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN zsys_processing_system7_0_1_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_3_AXI_awaddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_3_AXI AWADDR";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_2_AXI_rready: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_2_AXI RREADY";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_2_AXI_rvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_2_AXI RVALID";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_2_AXI_rresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_2_AXI RRESP";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_2_AXI_rdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_2_AXI RDATA";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_2_AXI_arready: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_2_AXI ARREADY";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_2_AXI_arvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_2_AXI ARVALID";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_2_AXI_arprot: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_2_AXI ARPROT";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_2_AXI_araddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_2_AXI ARADDR";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_2_AXI_bready: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_2_AXI BREADY";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_2_AXI_bvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_2_AXI BVALID";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_2_AXI_bresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_2_AXI BRESP";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_2_AXI_wready: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_2_AXI WREADY";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_2_AXI_wvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_2_AXI WVALID";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_2_AXI_wstrb: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_2_AXI WSTRB";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_2_AXI_wdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_2_AXI WDATA";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_2_AXI_awready: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_2_AXI AWREADY";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_2_AXI_awvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_2_AXI AWVALID";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_2_AXI_awprot: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_2_AXI AWPROT";
  ATTRIBUTE X_INTERFACE_PARAMETER OF SLOT_2_AXI_awaddr: SIGNAL IS "XIL_INTERFACENAME SLOT_2_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 50000000, ID_WIDTH 0, ADDR_WIDTH 13, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN zsys_processing_system7_0_1_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_2_AXI_awaddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_2_AXI AWADDR";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_1_AXI_rready: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_1_AXI RREADY";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_1_AXI_rvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_1_AXI RVALID";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_1_AXI_rlast: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_1_AXI RLAST";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_1_AXI_rresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_1_AXI RRESP";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_1_AXI_rdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_1_AXI RDATA";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_1_AXI_rid: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_1_AXI RID";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_1_AXI_arready: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_1_AXI ARREADY";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_1_AXI_arvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_1_AXI ARVALID";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_1_AXI_arqos: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_1_AXI ARQOS";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_1_AXI_arprot: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_1_AXI ARPROT";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_1_AXI_arcache: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_1_AXI ARCACHE";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_1_AXI_arburst: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_1_AXI ARBURST";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_1_AXI_arsize: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_1_AXI ARSIZE";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_1_AXI_arlen: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_1_AXI ARLEN";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_1_AXI_araddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_1_AXI ARADDR";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_1_AXI_arid: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_1_AXI ARID";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_1_AXI_bready: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_1_AXI BREADY";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_1_AXI_bvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_1_AXI BVALID";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_1_AXI_bresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_1_AXI BRESP";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_1_AXI_bid: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_1_AXI BID";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_1_AXI_wready: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_1_AXI WREADY";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_1_AXI_wvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_1_AXI WVALID";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_1_AXI_wlast: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_1_AXI WLAST";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_1_AXI_wstrb: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_1_AXI WSTRB";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_1_AXI_wdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_1_AXI WDATA";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_1_AXI_awready: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_1_AXI AWREADY";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_1_AXI_awvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_1_AXI AWVALID";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_1_AXI_awqos: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_1_AXI AWQOS";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_1_AXI_awprot: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_1_AXI AWPROT";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_1_AXI_awcache: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_1_AXI AWCACHE";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_1_AXI_awburst: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_1_AXI AWBURST";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_1_AXI_awsize: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_1_AXI AWSIZE";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_1_AXI_awlen: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_1_AXI AWLEN";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_1_AXI_awaddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_1_AXI AWADDR";
  ATTRIBUTE X_INTERFACE_PARAMETER OF SLOT_1_AXI_awid: SIGNAL IS "XIL_INTERFACENAME SLOT_1_AXI, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 50000000, ID_WIDTH 1, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.000, CLK_DOMAIN zsys_processing_system7_0_1_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_1_AXI_awid: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_1_AXI AWID";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_0_AXIS_tready: SIGNAL IS "xilinx.com:interface:axis:1.0 SLOT_0_AXIS TREADY";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_0_AXIS_tvalid: SIGNAL IS "xilinx.com:interface:axis:1.0 SLOT_0_AXIS TVALID";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_0_AXIS_tuser: SIGNAL IS "xilinx.com:interface:axis:1.0 SLOT_0_AXIS TUSER";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_0_AXIS_tlast: SIGNAL IS "xilinx.com:interface:axis:1.0 SLOT_0_AXIS TLAST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF SLOT_0_AXIS_tdata: SIGNAL IS "XIL_INTERFACENAME SLOT_0_AXIS, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 8, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 50000000, PHASE 0.000, CLK_DOMAIN zsys_processing_system7_0_1_FCLK_CLK0, LAYERED_METADATA undef";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_0_AXIS_tdata: SIGNAL IS "xilinx.com:interface:axis:1.0 SLOT_0_AXIS TDATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF clk: SIGNAL IS "XIL_INTERFACENAME CLK.clk, FREQ_HZ 50000000, PHASE 0.000, CLK_DOMAIN zsys_processing_system7_0_1_FCLK_CLK0, ASSOCIATED_BUSIF SLOT_0_AXIS:SLOT_1_AXI:SLOT_2_AXI:SLOT_3_AXI, ASSOCIATED_RESET resetn";
  ATTRIBUTE X_INTERFACE_INFO OF clk: SIGNAL IS "xilinx.com:signal:clock:1.0 CLK.clk CLK";
BEGIN
  U0 : bd_f448
    PORT MAP (
      clk => clk,
      probe0 => probe0,
      probe1 => probe1,
      probe2 => probe2,
      probe3 => probe3,
      probe4 => probe4,
      probe5 => probe5,
      probe6 => probe6,
      SLOT_0_AXIS_tdata => SLOT_0_AXIS_tdata,
      SLOT_0_AXIS_tlast => SLOT_0_AXIS_tlast,
      SLOT_0_AXIS_tuser => SLOT_0_AXIS_tuser,
      SLOT_0_AXIS_tvalid => SLOT_0_AXIS_tvalid,
      SLOT_0_AXIS_tready => SLOT_0_AXIS_tready,
      SLOT_1_AXI_awid => SLOT_1_AXI_awid,
      SLOT_1_AXI_awaddr => SLOT_1_AXI_awaddr,
      SLOT_1_AXI_awlen => SLOT_1_AXI_awlen,
      SLOT_1_AXI_awsize => SLOT_1_AXI_awsize,
      SLOT_1_AXI_awburst => SLOT_1_AXI_awburst,
      SLOT_1_AXI_awcache => SLOT_1_AXI_awcache,
      SLOT_1_AXI_awprot => SLOT_1_AXI_awprot,
      SLOT_1_AXI_awqos => SLOT_1_AXI_awqos,
      SLOT_1_AXI_awvalid => SLOT_1_AXI_awvalid,
      SLOT_1_AXI_awready => SLOT_1_AXI_awready,
      SLOT_1_AXI_wdata => SLOT_1_AXI_wdata,
      SLOT_1_AXI_wstrb => SLOT_1_AXI_wstrb,
      SLOT_1_AXI_wlast => SLOT_1_AXI_wlast,
      SLOT_1_AXI_wvalid => SLOT_1_AXI_wvalid,
      SLOT_1_AXI_wready => SLOT_1_AXI_wready,
      SLOT_1_AXI_bid => SLOT_1_AXI_bid,
      SLOT_1_AXI_bresp => SLOT_1_AXI_bresp,
      SLOT_1_AXI_bvalid => SLOT_1_AXI_bvalid,
      SLOT_1_AXI_bready => SLOT_1_AXI_bready,
      SLOT_1_AXI_arid => SLOT_1_AXI_arid,
      SLOT_1_AXI_araddr => SLOT_1_AXI_araddr,
      SLOT_1_AXI_arlen => SLOT_1_AXI_arlen,
      SLOT_1_AXI_arsize => SLOT_1_AXI_arsize,
      SLOT_1_AXI_arburst => SLOT_1_AXI_arburst,
      SLOT_1_AXI_arcache => SLOT_1_AXI_arcache,
      SLOT_1_AXI_arprot => SLOT_1_AXI_arprot,
      SLOT_1_AXI_arqos => SLOT_1_AXI_arqos,
      SLOT_1_AXI_arvalid => SLOT_1_AXI_arvalid,
      SLOT_1_AXI_arready => SLOT_1_AXI_arready,
      SLOT_1_AXI_rid => SLOT_1_AXI_rid,
      SLOT_1_AXI_rdata => SLOT_1_AXI_rdata,
      SLOT_1_AXI_rresp => SLOT_1_AXI_rresp,
      SLOT_1_AXI_rlast => SLOT_1_AXI_rlast,
      SLOT_1_AXI_rvalid => SLOT_1_AXI_rvalid,
      SLOT_1_AXI_rready => SLOT_1_AXI_rready,
      SLOT_2_AXI_awaddr => SLOT_2_AXI_awaddr,
      SLOT_2_AXI_awprot => SLOT_2_AXI_awprot,
      SLOT_2_AXI_awvalid => SLOT_2_AXI_awvalid,
      SLOT_2_AXI_awready => SLOT_2_AXI_awready,
      SLOT_2_AXI_wdata => SLOT_2_AXI_wdata,
      SLOT_2_AXI_wstrb => SLOT_2_AXI_wstrb,
      SLOT_2_AXI_wvalid => SLOT_2_AXI_wvalid,
      SLOT_2_AXI_wready => SLOT_2_AXI_wready,
      SLOT_2_AXI_bresp => SLOT_2_AXI_bresp,
      SLOT_2_AXI_bvalid => SLOT_2_AXI_bvalid,
      SLOT_2_AXI_bready => SLOT_2_AXI_bready,
      SLOT_2_AXI_araddr => SLOT_2_AXI_araddr,
      SLOT_2_AXI_arprot => SLOT_2_AXI_arprot,
      SLOT_2_AXI_arvalid => SLOT_2_AXI_arvalid,
      SLOT_2_AXI_arready => SLOT_2_AXI_arready,
      SLOT_2_AXI_rdata => SLOT_2_AXI_rdata,
      SLOT_2_AXI_rresp => SLOT_2_AXI_rresp,
      SLOT_2_AXI_rvalid => SLOT_2_AXI_rvalid,
      SLOT_2_AXI_rready => SLOT_2_AXI_rready,
      SLOT_3_AXI_awaddr => SLOT_3_AXI_awaddr,
      SLOT_3_AXI_awprot => SLOT_3_AXI_awprot,
      SLOT_3_AXI_awvalid => SLOT_3_AXI_awvalid,
      SLOT_3_AXI_awready => SLOT_3_AXI_awready,
      SLOT_3_AXI_wdata => SLOT_3_AXI_wdata,
      SLOT_3_AXI_wstrb => SLOT_3_AXI_wstrb,
      SLOT_3_AXI_wvalid => SLOT_3_AXI_wvalid,
      SLOT_3_AXI_wready => SLOT_3_AXI_wready,
      SLOT_3_AXI_bresp => SLOT_3_AXI_bresp,
      SLOT_3_AXI_bvalid => SLOT_3_AXI_bvalid,
      SLOT_3_AXI_bready => SLOT_3_AXI_bready,
      SLOT_3_AXI_araddr => SLOT_3_AXI_araddr,
      SLOT_3_AXI_arprot => SLOT_3_AXI_arprot,
      SLOT_3_AXI_arvalid => SLOT_3_AXI_arvalid,
      SLOT_3_AXI_arready => SLOT_3_AXI_arready,
      SLOT_3_AXI_rdata => SLOT_3_AXI_rdata,
      SLOT_3_AXI_rresp => SLOT_3_AXI_rresp,
      SLOT_3_AXI_rvalid => SLOT_3_AXI_rvalid,
      SLOT_3_AXI_rready => SLOT_3_AXI_rready,
      SLOT_4_BRAM_en => SLOT_4_BRAM_en,
      SLOT_4_BRAM_dout => SLOT_4_BRAM_dout,
      SLOT_4_BRAM_din => SLOT_4_BRAM_din,
      SLOT_4_BRAM_we => SLOT_4_BRAM_we,
      SLOT_4_BRAM_addr => SLOT_4_BRAM_addr,
      SLOT_4_BRAM_clk => SLOT_4_BRAM_clk,
      SLOT_4_BRAM_rst => SLOT_4_BRAM_rst,
      resetn => resetn
    );
END zsys_system_ila_0_0_arch;
