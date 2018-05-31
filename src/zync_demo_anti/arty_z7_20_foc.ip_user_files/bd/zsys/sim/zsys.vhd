--Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
--Date        : Sun Apr 15 16:10:02 2018
--Host        : W7-64-05 running 64-bit Service Pack 1  (build 7601)
--Command     : generate_target zsys.bd
--Design      : zsys
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s00_couplers_imp_19HK85L is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 12 downto 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 12 downto 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 12 downto 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 12 downto 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end s00_couplers_imp_19HK85L;

architecture STRUCTURE of s00_couplers_imp_19HK85L is
  signal s00_couplers_to_s00_couplers_ARADDR : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal s00_couplers_to_s00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_s00_couplers_ARREADY : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_ARVALID : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_AWADDR : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal s00_couplers_to_s00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_s00_couplers_AWREADY : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_AWVALID : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_BREADY : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_s00_couplers_BVALID : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_s00_couplers_RREADY : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_s00_couplers_RVALID : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_s00_couplers_WREADY : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_s00_couplers_WVALID : STD_LOGIC;
begin
  M_AXI_araddr(12 downto 0) <= s00_couplers_to_s00_couplers_ARADDR(12 downto 0);
  M_AXI_arprot(2 downto 0) <= s00_couplers_to_s00_couplers_ARPROT(2 downto 0);
  M_AXI_arvalid <= s00_couplers_to_s00_couplers_ARVALID;
  M_AXI_awaddr(12 downto 0) <= s00_couplers_to_s00_couplers_AWADDR(12 downto 0);
  M_AXI_awprot(2 downto 0) <= s00_couplers_to_s00_couplers_AWPROT(2 downto 0);
  M_AXI_awvalid <= s00_couplers_to_s00_couplers_AWVALID;
  M_AXI_bready <= s00_couplers_to_s00_couplers_BREADY;
  M_AXI_rready <= s00_couplers_to_s00_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= s00_couplers_to_s00_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= s00_couplers_to_s00_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= s00_couplers_to_s00_couplers_WVALID;
  S_AXI_arready <= s00_couplers_to_s00_couplers_ARREADY;
  S_AXI_awready <= s00_couplers_to_s00_couplers_AWREADY;
  S_AXI_bresp(1 downto 0) <= s00_couplers_to_s00_couplers_BRESP(1 downto 0);
  S_AXI_bvalid <= s00_couplers_to_s00_couplers_BVALID;
  S_AXI_rdata(31 downto 0) <= s00_couplers_to_s00_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= s00_couplers_to_s00_couplers_RRESP(1 downto 0);
  S_AXI_rvalid <= s00_couplers_to_s00_couplers_RVALID;
  S_AXI_wready <= s00_couplers_to_s00_couplers_WREADY;
  s00_couplers_to_s00_couplers_ARADDR(12 downto 0) <= S_AXI_araddr(12 downto 0);
  s00_couplers_to_s00_couplers_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  s00_couplers_to_s00_couplers_ARREADY <= M_AXI_arready;
  s00_couplers_to_s00_couplers_ARVALID <= S_AXI_arvalid;
  s00_couplers_to_s00_couplers_AWADDR(12 downto 0) <= S_AXI_awaddr(12 downto 0);
  s00_couplers_to_s00_couplers_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  s00_couplers_to_s00_couplers_AWREADY <= M_AXI_awready;
  s00_couplers_to_s00_couplers_AWVALID <= S_AXI_awvalid;
  s00_couplers_to_s00_couplers_BREADY <= S_AXI_bready;
  s00_couplers_to_s00_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  s00_couplers_to_s00_couplers_BVALID <= M_AXI_bvalid;
  s00_couplers_to_s00_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  s00_couplers_to_s00_couplers_RREADY <= S_AXI_rready;
  s00_couplers_to_s00_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  s00_couplers_to_s00_couplers_RVALID <= M_AXI_rvalid;
  s00_couplers_to_s00_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  s00_couplers_to_s00_couplers_WREADY <= M_AXI_wready;
  s00_couplers_to_s00_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  s00_couplers_to_s00_couplers_WVALID <= S_AXI_wvalid;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s00_couplers_imp_L9H7L4 is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_rlast : in STD_LOGIC;
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wlast : out STD_LOGIC;
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end s00_couplers_imp_L9H7L4;

architecture STRUCTURE of s00_couplers_imp_L9H7L4 is
  component zsys_auto_pc_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_arid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component zsys_auto_pc_0;
  signal S_ACLK_1 : STD_LOGIC;
  signal S_ARESETN_1 : STD_LOGIC;
  signal auto_pc_to_s00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_s00_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_s00_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_s00_couplers_ARID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal auto_pc_to_s00_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal auto_pc_to_s00_couplers_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_pc_to_s00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_s00_couplers_ARREADY : STD_LOGIC;
  signal auto_pc_to_s00_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_s00_couplers_ARVALID : STD_LOGIC;
  signal auto_pc_to_s00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_s00_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_s00_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_s00_couplers_AWID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal auto_pc_to_s00_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal auto_pc_to_s00_couplers_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_pc_to_s00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_s00_couplers_AWREADY : STD_LOGIC;
  signal auto_pc_to_s00_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_s00_couplers_AWVALID : STD_LOGIC;
  signal auto_pc_to_s00_couplers_BID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal auto_pc_to_s00_couplers_BREADY : STD_LOGIC;
  signal auto_pc_to_s00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_s00_couplers_BVALID : STD_LOGIC;
  signal auto_pc_to_s00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_s00_couplers_RID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal auto_pc_to_s00_couplers_RLAST : STD_LOGIC;
  signal auto_pc_to_s00_couplers_RREADY : STD_LOGIC;
  signal auto_pc_to_s00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_s00_couplers_RVALID : STD_LOGIC;
  signal auto_pc_to_s00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_s00_couplers_WLAST : STD_LOGIC;
  signal auto_pc_to_s00_couplers_WREADY : STD_LOGIC;
  signal auto_pc_to_s00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_s00_couplers_WVALID : STD_LOGIC;
  signal s00_couplers_to_auto_pc_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_auto_pc_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_pc_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_ARID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal s00_couplers_to_auto_pc_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_pc_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_auto_pc_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_ARREADY : STD_LOGIC;
  signal s00_couplers_to_auto_pc_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_auto_pc_ARVALID : STD_LOGIC;
  signal s00_couplers_to_auto_pc_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_auto_pc_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_pc_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_AWID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal s00_couplers_to_auto_pc_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_pc_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_auto_pc_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_AWREADY : STD_LOGIC;
  signal s00_couplers_to_auto_pc_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_auto_pc_AWVALID : STD_LOGIC;
  signal s00_couplers_to_auto_pc_BID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal s00_couplers_to_auto_pc_BREADY : STD_LOGIC;
  signal s00_couplers_to_auto_pc_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_pc_BVALID : STD_LOGIC;
  signal s00_couplers_to_auto_pc_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_auto_pc_RID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal s00_couplers_to_auto_pc_RLAST : STD_LOGIC;
  signal s00_couplers_to_auto_pc_RREADY : STD_LOGIC;
  signal s00_couplers_to_auto_pc_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_pc_RVALID : STD_LOGIC;
  signal s00_couplers_to_auto_pc_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_auto_pc_WID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal s00_couplers_to_auto_pc_WLAST : STD_LOGIC;
  signal s00_couplers_to_auto_pc_WREADY : STD_LOGIC;
  signal s00_couplers_to_auto_pc_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_WVALID : STD_LOGIC;
  signal NLW_auto_pc_m_axi_arqos_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_auto_pc_m_axi_arregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_auto_pc_m_axi_awqos_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_auto_pc_m_axi_awregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
  M_AXI_araddr(31 downto 0) <= auto_pc_to_s00_couplers_ARADDR(31 downto 0);
  M_AXI_arburst(1 downto 0) <= auto_pc_to_s00_couplers_ARBURST(1 downto 0);
  M_AXI_arcache(3 downto 0) <= auto_pc_to_s00_couplers_ARCACHE(3 downto 0);
  M_AXI_arid(11 downto 0) <= auto_pc_to_s00_couplers_ARID(11 downto 0);
  M_AXI_arlen(7 downto 0) <= auto_pc_to_s00_couplers_ARLEN(7 downto 0);
  M_AXI_arlock(0) <= auto_pc_to_s00_couplers_ARLOCK(0);
  M_AXI_arprot(2 downto 0) <= auto_pc_to_s00_couplers_ARPROT(2 downto 0);
  M_AXI_arsize(2 downto 0) <= auto_pc_to_s00_couplers_ARSIZE(2 downto 0);
  M_AXI_arvalid <= auto_pc_to_s00_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= auto_pc_to_s00_couplers_AWADDR(31 downto 0);
  M_AXI_awburst(1 downto 0) <= auto_pc_to_s00_couplers_AWBURST(1 downto 0);
  M_AXI_awcache(3 downto 0) <= auto_pc_to_s00_couplers_AWCACHE(3 downto 0);
  M_AXI_awid(11 downto 0) <= auto_pc_to_s00_couplers_AWID(11 downto 0);
  M_AXI_awlen(7 downto 0) <= auto_pc_to_s00_couplers_AWLEN(7 downto 0);
  M_AXI_awlock(0) <= auto_pc_to_s00_couplers_AWLOCK(0);
  M_AXI_awprot(2 downto 0) <= auto_pc_to_s00_couplers_AWPROT(2 downto 0);
  M_AXI_awsize(2 downto 0) <= auto_pc_to_s00_couplers_AWSIZE(2 downto 0);
  M_AXI_awvalid <= auto_pc_to_s00_couplers_AWVALID;
  M_AXI_bready <= auto_pc_to_s00_couplers_BREADY;
  M_AXI_rready <= auto_pc_to_s00_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= auto_pc_to_s00_couplers_WDATA(31 downto 0);
  M_AXI_wlast <= auto_pc_to_s00_couplers_WLAST;
  M_AXI_wstrb(3 downto 0) <= auto_pc_to_s00_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= auto_pc_to_s00_couplers_WVALID;
  S_ACLK_1 <= S_ACLK;
  S_ARESETN_1 <= S_ARESETN;
  S_AXI_arready <= s00_couplers_to_auto_pc_ARREADY;
  S_AXI_awready <= s00_couplers_to_auto_pc_AWREADY;
  S_AXI_bid(11 downto 0) <= s00_couplers_to_auto_pc_BID(11 downto 0);
  S_AXI_bresp(1 downto 0) <= s00_couplers_to_auto_pc_BRESP(1 downto 0);
  S_AXI_bvalid <= s00_couplers_to_auto_pc_BVALID;
  S_AXI_rdata(31 downto 0) <= s00_couplers_to_auto_pc_RDATA(31 downto 0);
  S_AXI_rid(11 downto 0) <= s00_couplers_to_auto_pc_RID(11 downto 0);
  S_AXI_rlast <= s00_couplers_to_auto_pc_RLAST;
  S_AXI_rresp(1 downto 0) <= s00_couplers_to_auto_pc_RRESP(1 downto 0);
  S_AXI_rvalid <= s00_couplers_to_auto_pc_RVALID;
  S_AXI_wready <= s00_couplers_to_auto_pc_WREADY;
  auto_pc_to_s00_couplers_ARREADY <= M_AXI_arready;
  auto_pc_to_s00_couplers_AWREADY <= M_AXI_awready;
  auto_pc_to_s00_couplers_BID(11 downto 0) <= M_AXI_bid(11 downto 0);
  auto_pc_to_s00_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  auto_pc_to_s00_couplers_BVALID <= M_AXI_bvalid;
  auto_pc_to_s00_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  auto_pc_to_s00_couplers_RID(11 downto 0) <= M_AXI_rid(11 downto 0);
  auto_pc_to_s00_couplers_RLAST <= M_AXI_rlast;
  auto_pc_to_s00_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  auto_pc_to_s00_couplers_RVALID <= M_AXI_rvalid;
  auto_pc_to_s00_couplers_WREADY <= M_AXI_wready;
  s00_couplers_to_auto_pc_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  s00_couplers_to_auto_pc_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  s00_couplers_to_auto_pc_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  s00_couplers_to_auto_pc_ARID(11 downto 0) <= S_AXI_arid(11 downto 0);
  s00_couplers_to_auto_pc_ARLEN(3 downto 0) <= S_AXI_arlen(3 downto 0);
  s00_couplers_to_auto_pc_ARLOCK(1 downto 0) <= S_AXI_arlock(1 downto 0);
  s00_couplers_to_auto_pc_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  s00_couplers_to_auto_pc_ARQOS(3 downto 0) <= S_AXI_arqos(3 downto 0);
  s00_couplers_to_auto_pc_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  s00_couplers_to_auto_pc_ARVALID <= S_AXI_arvalid;
  s00_couplers_to_auto_pc_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  s00_couplers_to_auto_pc_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  s00_couplers_to_auto_pc_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  s00_couplers_to_auto_pc_AWID(11 downto 0) <= S_AXI_awid(11 downto 0);
  s00_couplers_to_auto_pc_AWLEN(3 downto 0) <= S_AXI_awlen(3 downto 0);
  s00_couplers_to_auto_pc_AWLOCK(1 downto 0) <= S_AXI_awlock(1 downto 0);
  s00_couplers_to_auto_pc_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  s00_couplers_to_auto_pc_AWQOS(3 downto 0) <= S_AXI_awqos(3 downto 0);
  s00_couplers_to_auto_pc_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  s00_couplers_to_auto_pc_AWVALID <= S_AXI_awvalid;
  s00_couplers_to_auto_pc_BREADY <= S_AXI_bready;
  s00_couplers_to_auto_pc_RREADY <= S_AXI_rready;
  s00_couplers_to_auto_pc_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  s00_couplers_to_auto_pc_WID(11 downto 0) <= S_AXI_wid(11 downto 0);
  s00_couplers_to_auto_pc_WLAST <= S_AXI_wlast;
  s00_couplers_to_auto_pc_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  s00_couplers_to_auto_pc_WVALID <= S_AXI_wvalid;
auto_pc: component zsys_auto_pc_0
     port map (
      aclk => S_ACLK_1,
      aresetn => S_ARESETN_1,
      m_axi_araddr(31 downto 0) => auto_pc_to_s00_couplers_ARADDR(31 downto 0),
      m_axi_arburst(1 downto 0) => auto_pc_to_s00_couplers_ARBURST(1 downto 0),
      m_axi_arcache(3 downto 0) => auto_pc_to_s00_couplers_ARCACHE(3 downto 0),
      m_axi_arid(11 downto 0) => auto_pc_to_s00_couplers_ARID(11 downto 0),
      m_axi_arlen(7 downto 0) => auto_pc_to_s00_couplers_ARLEN(7 downto 0),
      m_axi_arlock(0) => auto_pc_to_s00_couplers_ARLOCK(0),
      m_axi_arprot(2 downto 0) => auto_pc_to_s00_couplers_ARPROT(2 downto 0),
      m_axi_arqos(3 downto 0) => NLW_auto_pc_m_axi_arqos_UNCONNECTED(3 downto 0),
      m_axi_arready => auto_pc_to_s00_couplers_ARREADY,
      m_axi_arregion(3 downto 0) => NLW_auto_pc_m_axi_arregion_UNCONNECTED(3 downto 0),
      m_axi_arsize(2 downto 0) => auto_pc_to_s00_couplers_ARSIZE(2 downto 0),
      m_axi_arvalid => auto_pc_to_s00_couplers_ARVALID,
      m_axi_awaddr(31 downto 0) => auto_pc_to_s00_couplers_AWADDR(31 downto 0),
      m_axi_awburst(1 downto 0) => auto_pc_to_s00_couplers_AWBURST(1 downto 0),
      m_axi_awcache(3 downto 0) => auto_pc_to_s00_couplers_AWCACHE(3 downto 0),
      m_axi_awid(11 downto 0) => auto_pc_to_s00_couplers_AWID(11 downto 0),
      m_axi_awlen(7 downto 0) => auto_pc_to_s00_couplers_AWLEN(7 downto 0),
      m_axi_awlock(0) => auto_pc_to_s00_couplers_AWLOCK(0),
      m_axi_awprot(2 downto 0) => auto_pc_to_s00_couplers_AWPROT(2 downto 0),
      m_axi_awqos(3 downto 0) => NLW_auto_pc_m_axi_awqos_UNCONNECTED(3 downto 0),
      m_axi_awready => auto_pc_to_s00_couplers_AWREADY,
      m_axi_awregion(3 downto 0) => NLW_auto_pc_m_axi_awregion_UNCONNECTED(3 downto 0),
      m_axi_awsize(2 downto 0) => auto_pc_to_s00_couplers_AWSIZE(2 downto 0),
      m_axi_awvalid => auto_pc_to_s00_couplers_AWVALID,
      m_axi_bid(11 downto 0) => auto_pc_to_s00_couplers_BID(11 downto 0),
      m_axi_bready => auto_pc_to_s00_couplers_BREADY,
      m_axi_bresp(1 downto 0) => auto_pc_to_s00_couplers_BRESP(1 downto 0),
      m_axi_bvalid => auto_pc_to_s00_couplers_BVALID,
      m_axi_rdata(31 downto 0) => auto_pc_to_s00_couplers_RDATA(31 downto 0),
      m_axi_rid(11 downto 0) => auto_pc_to_s00_couplers_RID(11 downto 0),
      m_axi_rlast => auto_pc_to_s00_couplers_RLAST,
      m_axi_rready => auto_pc_to_s00_couplers_RREADY,
      m_axi_rresp(1 downto 0) => auto_pc_to_s00_couplers_RRESP(1 downto 0),
      m_axi_rvalid => auto_pc_to_s00_couplers_RVALID,
      m_axi_wdata(31 downto 0) => auto_pc_to_s00_couplers_WDATA(31 downto 0),
      m_axi_wlast => auto_pc_to_s00_couplers_WLAST,
      m_axi_wready => auto_pc_to_s00_couplers_WREADY,
      m_axi_wstrb(3 downto 0) => auto_pc_to_s00_couplers_WSTRB(3 downto 0),
      m_axi_wvalid => auto_pc_to_s00_couplers_WVALID,
      s_axi_araddr(31 downto 0) => s00_couplers_to_auto_pc_ARADDR(31 downto 0),
      s_axi_arburst(1 downto 0) => s00_couplers_to_auto_pc_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => s00_couplers_to_auto_pc_ARCACHE(3 downto 0),
      s_axi_arid(11 downto 0) => s00_couplers_to_auto_pc_ARID(11 downto 0),
      s_axi_arlen(3 downto 0) => s00_couplers_to_auto_pc_ARLEN(3 downto 0),
      s_axi_arlock(1 downto 0) => s00_couplers_to_auto_pc_ARLOCK(1 downto 0),
      s_axi_arprot(2 downto 0) => s00_couplers_to_auto_pc_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => s00_couplers_to_auto_pc_ARQOS(3 downto 0),
      s_axi_arready => s00_couplers_to_auto_pc_ARREADY,
      s_axi_arsize(2 downto 0) => s00_couplers_to_auto_pc_ARSIZE(2 downto 0),
      s_axi_arvalid => s00_couplers_to_auto_pc_ARVALID,
      s_axi_awaddr(31 downto 0) => s00_couplers_to_auto_pc_AWADDR(31 downto 0),
      s_axi_awburst(1 downto 0) => s00_couplers_to_auto_pc_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => s00_couplers_to_auto_pc_AWCACHE(3 downto 0),
      s_axi_awid(11 downto 0) => s00_couplers_to_auto_pc_AWID(11 downto 0),
      s_axi_awlen(3 downto 0) => s00_couplers_to_auto_pc_AWLEN(3 downto 0),
      s_axi_awlock(1 downto 0) => s00_couplers_to_auto_pc_AWLOCK(1 downto 0),
      s_axi_awprot(2 downto 0) => s00_couplers_to_auto_pc_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => s00_couplers_to_auto_pc_AWQOS(3 downto 0),
      s_axi_awready => s00_couplers_to_auto_pc_AWREADY,
      s_axi_awsize(2 downto 0) => s00_couplers_to_auto_pc_AWSIZE(2 downto 0),
      s_axi_awvalid => s00_couplers_to_auto_pc_AWVALID,
      s_axi_bid(11 downto 0) => s00_couplers_to_auto_pc_BID(11 downto 0),
      s_axi_bready => s00_couplers_to_auto_pc_BREADY,
      s_axi_bresp(1 downto 0) => s00_couplers_to_auto_pc_BRESP(1 downto 0),
      s_axi_bvalid => s00_couplers_to_auto_pc_BVALID,
      s_axi_rdata(31 downto 0) => s00_couplers_to_auto_pc_RDATA(31 downto 0),
      s_axi_rid(11 downto 0) => s00_couplers_to_auto_pc_RID(11 downto 0),
      s_axi_rlast => s00_couplers_to_auto_pc_RLAST,
      s_axi_rready => s00_couplers_to_auto_pc_RREADY,
      s_axi_rresp(1 downto 0) => s00_couplers_to_auto_pc_RRESP(1 downto 0),
      s_axi_rvalid => s00_couplers_to_auto_pc_RVALID,
      s_axi_wdata(31 downto 0) => s00_couplers_to_auto_pc_WDATA(31 downto 0),
      s_axi_wid(11 downto 0) => s00_couplers_to_auto_pc_WID(11 downto 0),
      s_axi_wlast => s00_couplers_to_auto_pc_WLAST,
      s_axi_wready => s00_couplers_to_auto_pc_WREADY,
      s_axi_wstrb(3 downto 0) => s00_couplers_to_auto_pc_WSTRB(3 downto 0),
      s_axi_wvalid => s00_couplers_to_auto_pc_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity zsys_axi_interconnect_0_0 is
  port (
    ACLK : in STD_LOGIC;
    ARESETN : in STD_LOGIC;
    M00_ACLK : in STD_LOGIC;
    M00_ARESETN : in STD_LOGIC;
    M00_AXI_araddr : out STD_LOGIC_VECTOR ( 12 downto 0 );
    M00_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arready : in STD_LOGIC;
    M00_AXI_arvalid : out STD_LOGIC;
    M00_AXI_awaddr : out STD_LOGIC_VECTOR ( 12 downto 0 );
    M00_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awready : in STD_LOGIC;
    M00_AXI_awvalid : out STD_LOGIC;
    M00_AXI_bready : out STD_LOGIC;
    M00_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_bvalid : in STD_LOGIC;
    M00_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_rready : out STD_LOGIC;
    M00_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_rvalid : in STD_LOGIC;
    M00_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_wready : in STD_LOGIC;
    M00_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_wvalid : out STD_LOGIC;
    S00_ACLK : in STD_LOGIC;
    S00_ARESETN : in STD_LOGIC;
    S00_AXI_araddr : in STD_LOGIC_VECTOR ( 12 downto 0 );
    S00_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arready : out STD_LOGIC;
    S00_AXI_arvalid : in STD_LOGIC;
    S00_AXI_awaddr : in STD_LOGIC_VECTOR ( 12 downto 0 );
    S00_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awready : out STD_LOGIC;
    S00_AXI_awvalid : in STD_LOGIC;
    S00_AXI_bready : in STD_LOGIC;
    S00_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_bvalid : out STD_LOGIC;
    S00_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_rready : in STD_LOGIC;
    S00_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_rvalid : out STD_LOGIC;
    S00_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_wready : out STD_LOGIC;
    S00_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_wvalid : in STD_LOGIC
  );
end zsys_axi_interconnect_0_0;

architecture STRUCTURE of zsys_axi_interconnect_0_0 is
  signal S00_ACLK_1 : STD_LOGIC;
  signal S00_ARESETN_1 : STD_LOGIC;
  signal axi_interconnect_0_ACLK_net : STD_LOGIC;
  signal axi_interconnect_0_ARESETN_net : STD_LOGIC;
  signal axi_interconnect_0_to_s00_couplers_ARADDR : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_ARREADY : STD_LOGIC;
  signal axi_interconnect_0_to_s00_couplers_ARVALID : STD_LOGIC;
  signal axi_interconnect_0_to_s00_couplers_AWADDR : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_AWREADY : STD_LOGIC;
  signal axi_interconnect_0_to_s00_couplers_AWVALID : STD_LOGIC;
  signal axi_interconnect_0_to_s00_couplers_BREADY : STD_LOGIC;
  signal axi_interconnect_0_to_s00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_BVALID : STD_LOGIC;
  signal axi_interconnect_0_to_s00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_RREADY : STD_LOGIC;
  signal axi_interconnect_0_to_s00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_RVALID : STD_LOGIC;
  signal axi_interconnect_0_to_s00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_WREADY : STD_LOGIC;
  signal axi_interconnect_0_to_s00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_WVALID : STD_LOGIC;
  signal s00_couplers_to_axi_interconnect_0_ARADDR : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal s00_couplers_to_axi_interconnect_0_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_axi_interconnect_0_ARREADY : STD_LOGIC;
  signal s00_couplers_to_axi_interconnect_0_ARVALID : STD_LOGIC;
  signal s00_couplers_to_axi_interconnect_0_AWADDR : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal s00_couplers_to_axi_interconnect_0_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_axi_interconnect_0_AWREADY : STD_LOGIC;
  signal s00_couplers_to_axi_interconnect_0_AWVALID : STD_LOGIC;
  signal s00_couplers_to_axi_interconnect_0_BREADY : STD_LOGIC;
  signal s00_couplers_to_axi_interconnect_0_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_axi_interconnect_0_BVALID : STD_LOGIC;
  signal s00_couplers_to_axi_interconnect_0_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_axi_interconnect_0_RREADY : STD_LOGIC;
  signal s00_couplers_to_axi_interconnect_0_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_axi_interconnect_0_RVALID : STD_LOGIC;
  signal s00_couplers_to_axi_interconnect_0_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_axi_interconnect_0_WREADY : STD_LOGIC;
  signal s00_couplers_to_axi_interconnect_0_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_axi_interconnect_0_WVALID : STD_LOGIC;
begin
  M00_AXI_araddr(12 downto 0) <= s00_couplers_to_axi_interconnect_0_ARADDR(12 downto 0);
  M00_AXI_arprot(2 downto 0) <= s00_couplers_to_axi_interconnect_0_ARPROT(2 downto 0);
  M00_AXI_arvalid <= s00_couplers_to_axi_interconnect_0_ARVALID;
  M00_AXI_awaddr(12 downto 0) <= s00_couplers_to_axi_interconnect_0_AWADDR(12 downto 0);
  M00_AXI_awprot(2 downto 0) <= s00_couplers_to_axi_interconnect_0_AWPROT(2 downto 0);
  M00_AXI_awvalid <= s00_couplers_to_axi_interconnect_0_AWVALID;
  M00_AXI_bready <= s00_couplers_to_axi_interconnect_0_BREADY;
  M00_AXI_rready <= s00_couplers_to_axi_interconnect_0_RREADY;
  M00_AXI_wdata(31 downto 0) <= s00_couplers_to_axi_interconnect_0_WDATA(31 downto 0);
  M00_AXI_wstrb(3 downto 0) <= s00_couplers_to_axi_interconnect_0_WSTRB(3 downto 0);
  M00_AXI_wvalid <= s00_couplers_to_axi_interconnect_0_WVALID;
  S00_ACLK_1 <= S00_ACLK;
  S00_ARESETN_1 <= S00_ARESETN;
  S00_AXI_arready <= axi_interconnect_0_to_s00_couplers_ARREADY;
  S00_AXI_awready <= axi_interconnect_0_to_s00_couplers_AWREADY;
  S00_AXI_bresp(1 downto 0) <= axi_interconnect_0_to_s00_couplers_BRESP(1 downto 0);
  S00_AXI_bvalid <= axi_interconnect_0_to_s00_couplers_BVALID;
  S00_AXI_rdata(31 downto 0) <= axi_interconnect_0_to_s00_couplers_RDATA(31 downto 0);
  S00_AXI_rresp(1 downto 0) <= axi_interconnect_0_to_s00_couplers_RRESP(1 downto 0);
  S00_AXI_rvalid <= axi_interconnect_0_to_s00_couplers_RVALID;
  S00_AXI_wready <= axi_interconnect_0_to_s00_couplers_WREADY;
  axi_interconnect_0_ACLK_net <= M00_ACLK;
  axi_interconnect_0_ARESETN_net <= M00_ARESETN;
  axi_interconnect_0_to_s00_couplers_ARADDR(12 downto 0) <= S00_AXI_araddr(12 downto 0);
  axi_interconnect_0_to_s00_couplers_ARPROT(2 downto 0) <= S00_AXI_arprot(2 downto 0);
  axi_interconnect_0_to_s00_couplers_ARVALID <= S00_AXI_arvalid;
  axi_interconnect_0_to_s00_couplers_AWADDR(12 downto 0) <= S00_AXI_awaddr(12 downto 0);
  axi_interconnect_0_to_s00_couplers_AWPROT(2 downto 0) <= S00_AXI_awprot(2 downto 0);
  axi_interconnect_0_to_s00_couplers_AWVALID <= S00_AXI_awvalid;
  axi_interconnect_0_to_s00_couplers_BREADY <= S00_AXI_bready;
  axi_interconnect_0_to_s00_couplers_RREADY <= S00_AXI_rready;
  axi_interconnect_0_to_s00_couplers_WDATA(31 downto 0) <= S00_AXI_wdata(31 downto 0);
  axi_interconnect_0_to_s00_couplers_WSTRB(3 downto 0) <= S00_AXI_wstrb(3 downto 0);
  axi_interconnect_0_to_s00_couplers_WVALID <= S00_AXI_wvalid;
  s00_couplers_to_axi_interconnect_0_ARREADY <= M00_AXI_arready;
  s00_couplers_to_axi_interconnect_0_AWREADY <= M00_AXI_awready;
  s00_couplers_to_axi_interconnect_0_BRESP(1 downto 0) <= M00_AXI_bresp(1 downto 0);
  s00_couplers_to_axi_interconnect_0_BVALID <= M00_AXI_bvalid;
  s00_couplers_to_axi_interconnect_0_RDATA(31 downto 0) <= M00_AXI_rdata(31 downto 0);
  s00_couplers_to_axi_interconnect_0_RRESP(1 downto 0) <= M00_AXI_rresp(1 downto 0);
  s00_couplers_to_axi_interconnect_0_RVALID <= M00_AXI_rvalid;
  s00_couplers_to_axi_interconnect_0_WREADY <= M00_AXI_wready;
s00_couplers: entity work.s00_couplers_imp_19HK85L
     port map (
      M_ACLK => axi_interconnect_0_ACLK_net,
      M_ARESETN => axi_interconnect_0_ARESETN_net,
      M_AXI_araddr(12 downto 0) => s00_couplers_to_axi_interconnect_0_ARADDR(12 downto 0),
      M_AXI_arprot(2 downto 0) => s00_couplers_to_axi_interconnect_0_ARPROT(2 downto 0),
      M_AXI_arready => s00_couplers_to_axi_interconnect_0_ARREADY,
      M_AXI_arvalid => s00_couplers_to_axi_interconnect_0_ARVALID,
      M_AXI_awaddr(12 downto 0) => s00_couplers_to_axi_interconnect_0_AWADDR(12 downto 0),
      M_AXI_awprot(2 downto 0) => s00_couplers_to_axi_interconnect_0_AWPROT(2 downto 0),
      M_AXI_awready => s00_couplers_to_axi_interconnect_0_AWREADY,
      M_AXI_awvalid => s00_couplers_to_axi_interconnect_0_AWVALID,
      M_AXI_bready => s00_couplers_to_axi_interconnect_0_BREADY,
      M_AXI_bresp(1 downto 0) => s00_couplers_to_axi_interconnect_0_BRESP(1 downto 0),
      M_AXI_bvalid => s00_couplers_to_axi_interconnect_0_BVALID,
      M_AXI_rdata(31 downto 0) => s00_couplers_to_axi_interconnect_0_RDATA(31 downto 0),
      M_AXI_rready => s00_couplers_to_axi_interconnect_0_RREADY,
      M_AXI_rresp(1 downto 0) => s00_couplers_to_axi_interconnect_0_RRESP(1 downto 0),
      M_AXI_rvalid => s00_couplers_to_axi_interconnect_0_RVALID,
      M_AXI_wdata(31 downto 0) => s00_couplers_to_axi_interconnect_0_WDATA(31 downto 0),
      M_AXI_wready => s00_couplers_to_axi_interconnect_0_WREADY,
      M_AXI_wstrb(3 downto 0) => s00_couplers_to_axi_interconnect_0_WSTRB(3 downto 0),
      M_AXI_wvalid => s00_couplers_to_axi_interconnect_0_WVALID,
      S_ACLK => S00_ACLK_1,
      S_ARESETN => S00_ARESETN_1,
      S_AXI_araddr(12 downto 0) => axi_interconnect_0_to_s00_couplers_ARADDR(12 downto 0),
      S_AXI_arprot(2 downto 0) => axi_interconnect_0_to_s00_couplers_ARPROT(2 downto 0),
      S_AXI_arready => axi_interconnect_0_to_s00_couplers_ARREADY,
      S_AXI_arvalid => axi_interconnect_0_to_s00_couplers_ARVALID,
      S_AXI_awaddr(12 downto 0) => axi_interconnect_0_to_s00_couplers_AWADDR(12 downto 0),
      S_AXI_awprot(2 downto 0) => axi_interconnect_0_to_s00_couplers_AWPROT(2 downto 0),
      S_AXI_awready => axi_interconnect_0_to_s00_couplers_AWREADY,
      S_AXI_awvalid => axi_interconnect_0_to_s00_couplers_AWVALID,
      S_AXI_bready => axi_interconnect_0_to_s00_couplers_BREADY,
      S_AXI_bresp(1 downto 0) => axi_interconnect_0_to_s00_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => axi_interconnect_0_to_s00_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => axi_interconnect_0_to_s00_couplers_RDATA(31 downto 0),
      S_AXI_rready => axi_interconnect_0_to_s00_couplers_RREADY,
      S_AXI_rresp(1 downto 0) => axi_interconnect_0_to_s00_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => axi_interconnect_0_to_s00_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => axi_interconnect_0_to_s00_couplers_WDATA(31 downto 0),
      S_AXI_wready => axi_interconnect_0_to_s00_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => axi_interconnect_0_to_s00_couplers_WSTRB(3 downto 0),
      S_AXI_wvalid => axi_interconnect_0_to_s00_couplers_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity zsys_axi_interconnect_1_0 is
  port (
    ACLK : in STD_LOGIC;
    ARESETN : in STD_LOGIC;
    M00_ACLK : in STD_LOGIC;
    M00_ARESETN : in STD_LOGIC;
    M00_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    M00_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M00_AXI_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arready : in STD_LOGIC;
    M00_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arvalid : out STD_LOGIC;
    M00_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    M00_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M00_AXI_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awready : in STD_LOGIC;
    M00_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awvalid : out STD_LOGIC;
    M00_AXI_bid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    M00_AXI_bready : out STD_LOGIC;
    M00_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_bvalid : in STD_LOGIC;
    M00_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_rid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    M00_AXI_rlast : in STD_LOGIC;
    M00_AXI_rready : out STD_LOGIC;
    M00_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_rvalid : in STD_LOGIC;
    M00_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_wlast : out STD_LOGIC;
    M00_AXI_wready : in STD_LOGIC;
    M00_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_wvalid : out STD_LOGIC;
    S00_ACLK : in STD_LOGIC;
    S00_ARESETN : in STD_LOGIC;
    S00_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S00_AXI_arlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arready : out STD_LOGIC;
    S00_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arvalid : in STD_LOGIC;
    S00_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S00_AXI_awlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awready : out STD_LOGIC;
    S00_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awvalid : in STD_LOGIC;
    S00_AXI_bid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    S00_AXI_bready : in STD_LOGIC;
    S00_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_bvalid : out STD_LOGIC;
    S00_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_rid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    S00_AXI_rlast : out STD_LOGIC;
    S00_AXI_rready : in STD_LOGIC;
    S00_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_rvalid : out STD_LOGIC;
    S00_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_wid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S00_AXI_wlast : in STD_LOGIC;
    S00_AXI_wready : out STD_LOGIC;
    S00_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_wvalid : in STD_LOGIC
  );
end zsys_axi_interconnect_1_0;

architecture STRUCTURE of zsys_axi_interconnect_1_0 is
  signal S00_ACLK_1 : STD_LOGIC;
  signal S00_ARESETN_1 : STD_LOGIC;
  signal axi_interconnect_1_ACLK_net : STD_LOGIC;
  signal axi_interconnect_1_ARESETN_net : STD_LOGIC;
  signal axi_interconnect_1_to_s00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_1_to_s00_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_1_to_s00_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_1_to_s00_couplers_ARID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal axi_interconnect_1_to_s00_couplers_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_1_to_s00_couplers_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_1_to_s00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_1_to_s00_couplers_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_1_to_s00_couplers_ARREADY : STD_LOGIC;
  signal axi_interconnect_1_to_s00_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_1_to_s00_couplers_ARVALID : STD_LOGIC;
  signal axi_interconnect_1_to_s00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_1_to_s00_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_1_to_s00_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_1_to_s00_couplers_AWID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal axi_interconnect_1_to_s00_couplers_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_1_to_s00_couplers_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_1_to_s00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_1_to_s00_couplers_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_1_to_s00_couplers_AWREADY : STD_LOGIC;
  signal axi_interconnect_1_to_s00_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_1_to_s00_couplers_AWVALID : STD_LOGIC;
  signal axi_interconnect_1_to_s00_couplers_BID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal axi_interconnect_1_to_s00_couplers_BREADY : STD_LOGIC;
  signal axi_interconnect_1_to_s00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_1_to_s00_couplers_BVALID : STD_LOGIC;
  signal axi_interconnect_1_to_s00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_1_to_s00_couplers_RID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal axi_interconnect_1_to_s00_couplers_RLAST : STD_LOGIC;
  signal axi_interconnect_1_to_s00_couplers_RREADY : STD_LOGIC;
  signal axi_interconnect_1_to_s00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_1_to_s00_couplers_RVALID : STD_LOGIC;
  signal axi_interconnect_1_to_s00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_1_to_s00_couplers_WID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal axi_interconnect_1_to_s00_couplers_WLAST : STD_LOGIC;
  signal axi_interconnect_1_to_s00_couplers_WREADY : STD_LOGIC;
  signal axi_interconnect_1_to_s00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_1_to_s00_couplers_WVALID : STD_LOGIC;
  signal s00_couplers_to_axi_interconnect_1_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_axi_interconnect_1_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_axi_interconnect_1_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_axi_interconnect_1_ARID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal s00_couplers_to_axi_interconnect_1_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s00_couplers_to_axi_interconnect_1_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_axi_interconnect_1_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_axi_interconnect_1_ARREADY : STD_LOGIC;
  signal s00_couplers_to_axi_interconnect_1_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_axi_interconnect_1_ARVALID : STD_LOGIC;
  signal s00_couplers_to_axi_interconnect_1_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_axi_interconnect_1_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_axi_interconnect_1_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_axi_interconnect_1_AWID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal s00_couplers_to_axi_interconnect_1_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s00_couplers_to_axi_interconnect_1_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_axi_interconnect_1_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_axi_interconnect_1_AWREADY : STD_LOGIC;
  signal s00_couplers_to_axi_interconnect_1_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_axi_interconnect_1_AWVALID : STD_LOGIC;
  signal s00_couplers_to_axi_interconnect_1_BID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal s00_couplers_to_axi_interconnect_1_BREADY : STD_LOGIC;
  signal s00_couplers_to_axi_interconnect_1_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_axi_interconnect_1_BVALID : STD_LOGIC;
  signal s00_couplers_to_axi_interconnect_1_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_axi_interconnect_1_RID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal s00_couplers_to_axi_interconnect_1_RLAST : STD_LOGIC;
  signal s00_couplers_to_axi_interconnect_1_RREADY : STD_LOGIC;
  signal s00_couplers_to_axi_interconnect_1_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_axi_interconnect_1_RVALID : STD_LOGIC;
  signal s00_couplers_to_axi_interconnect_1_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_axi_interconnect_1_WLAST : STD_LOGIC;
  signal s00_couplers_to_axi_interconnect_1_WREADY : STD_LOGIC;
  signal s00_couplers_to_axi_interconnect_1_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_axi_interconnect_1_WVALID : STD_LOGIC;
begin
  M00_AXI_araddr(31 downto 0) <= s00_couplers_to_axi_interconnect_1_ARADDR(31 downto 0);
  M00_AXI_arburst(1 downto 0) <= s00_couplers_to_axi_interconnect_1_ARBURST(1 downto 0);
  M00_AXI_arcache(3 downto 0) <= s00_couplers_to_axi_interconnect_1_ARCACHE(3 downto 0);
  M00_AXI_arid(11 downto 0) <= s00_couplers_to_axi_interconnect_1_ARID(11 downto 0);
  M00_AXI_arlen(7 downto 0) <= s00_couplers_to_axi_interconnect_1_ARLEN(7 downto 0);
  M00_AXI_arlock(0) <= s00_couplers_to_axi_interconnect_1_ARLOCK(0);
  M00_AXI_arprot(2 downto 0) <= s00_couplers_to_axi_interconnect_1_ARPROT(2 downto 0);
  M00_AXI_arsize(2 downto 0) <= s00_couplers_to_axi_interconnect_1_ARSIZE(2 downto 0);
  M00_AXI_arvalid <= s00_couplers_to_axi_interconnect_1_ARVALID;
  M00_AXI_awaddr(31 downto 0) <= s00_couplers_to_axi_interconnect_1_AWADDR(31 downto 0);
  M00_AXI_awburst(1 downto 0) <= s00_couplers_to_axi_interconnect_1_AWBURST(1 downto 0);
  M00_AXI_awcache(3 downto 0) <= s00_couplers_to_axi_interconnect_1_AWCACHE(3 downto 0);
  M00_AXI_awid(11 downto 0) <= s00_couplers_to_axi_interconnect_1_AWID(11 downto 0);
  M00_AXI_awlen(7 downto 0) <= s00_couplers_to_axi_interconnect_1_AWLEN(7 downto 0);
  M00_AXI_awlock(0) <= s00_couplers_to_axi_interconnect_1_AWLOCK(0);
  M00_AXI_awprot(2 downto 0) <= s00_couplers_to_axi_interconnect_1_AWPROT(2 downto 0);
  M00_AXI_awsize(2 downto 0) <= s00_couplers_to_axi_interconnect_1_AWSIZE(2 downto 0);
  M00_AXI_awvalid <= s00_couplers_to_axi_interconnect_1_AWVALID;
  M00_AXI_bready <= s00_couplers_to_axi_interconnect_1_BREADY;
  M00_AXI_rready <= s00_couplers_to_axi_interconnect_1_RREADY;
  M00_AXI_wdata(31 downto 0) <= s00_couplers_to_axi_interconnect_1_WDATA(31 downto 0);
  M00_AXI_wlast <= s00_couplers_to_axi_interconnect_1_WLAST;
  M00_AXI_wstrb(3 downto 0) <= s00_couplers_to_axi_interconnect_1_WSTRB(3 downto 0);
  M00_AXI_wvalid <= s00_couplers_to_axi_interconnect_1_WVALID;
  S00_ACLK_1 <= S00_ACLK;
  S00_ARESETN_1 <= S00_ARESETN;
  S00_AXI_arready <= axi_interconnect_1_to_s00_couplers_ARREADY;
  S00_AXI_awready <= axi_interconnect_1_to_s00_couplers_AWREADY;
  S00_AXI_bid(11 downto 0) <= axi_interconnect_1_to_s00_couplers_BID(11 downto 0);
  S00_AXI_bresp(1 downto 0) <= axi_interconnect_1_to_s00_couplers_BRESP(1 downto 0);
  S00_AXI_bvalid <= axi_interconnect_1_to_s00_couplers_BVALID;
  S00_AXI_rdata(31 downto 0) <= axi_interconnect_1_to_s00_couplers_RDATA(31 downto 0);
  S00_AXI_rid(11 downto 0) <= axi_interconnect_1_to_s00_couplers_RID(11 downto 0);
  S00_AXI_rlast <= axi_interconnect_1_to_s00_couplers_RLAST;
  S00_AXI_rresp(1 downto 0) <= axi_interconnect_1_to_s00_couplers_RRESP(1 downto 0);
  S00_AXI_rvalid <= axi_interconnect_1_to_s00_couplers_RVALID;
  S00_AXI_wready <= axi_interconnect_1_to_s00_couplers_WREADY;
  axi_interconnect_1_ACLK_net <= M00_ACLK;
  axi_interconnect_1_ARESETN_net <= M00_ARESETN;
  axi_interconnect_1_to_s00_couplers_ARADDR(31 downto 0) <= S00_AXI_araddr(31 downto 0);
  axi_interconnect_1_to_s00_couplers_ARBURST(1 downto 0) <= S00_AXI_arburst(1 downto 0);
  axi_interconnect_1_to_s00_couplers_ARCACHE(3 downto 0) <= S00_AXI_arcache(3 downto 0);
  axi_interconnect_1_to_s00_couplers_ARID(11 downto 0) <= S00_AXI_arid(11 downto 0);
  axi_interconnect_1_to_s00_couplers_ARLEN(3 downto 0) <= S00_AXI_arlen(3 downto 0);
  axi_interconnect_1_to_s00_couplers_ARLOCK(1 downto 0) <= S00_AXI_arlock(1 downto 0);
  axi_interconnect_1_to_s00_couplers_ARPROT(2 downto 0) <= S00_AXI_arprot(2 downto 0);
  axi_interconnect_1_to_s00_couplers_ARQOS(3 downto 0) <= S00_AXI_arqos(3 downto 0);
  axi_interconnect_1_to_s00_couplers_ARSIZE(2 downto 0) <= S00_AXI_arsize(2 downto 0);
  axi_interconnect_1_to_s00_couplers_ARVALID <= S00_AXI_arvalid;
  axi_interconnect_1_to_s00_couplers_AWADDR(31 downto 0) <= S00_AXI_awaddr(31 downto 0);
  axi_interconnect_1_to_s00_couplers_AWBURST(1 downto 0) <= S00_AXI_awburst(1 downto 0);
  axi_interconnect_1_to_s00_couplers_AWCACHE(3 downto 0) <= S00_AXI_awcache(3 downto 0);
  axi_interconnect_1_to_s00_couplers_AWID(11 downto 0) <= S00_AXI_awid(11 downto 0);
  axi_interconnect_1_to_s00_couplers_AWLEN(3 downto 0) <= S00_AXI_awlen(3 downto 0);
  axi_interconnect_1_to_s00_couplers_AWLOCK(1 downto 0) <= S00_AXI_awlock(1 downto 0);
  axi_interconnect_1_to_s00_couplers_AWPROT(2 downto 0) <= S00_AXI_awprot(2 downto 0);
  axi_interconnect_1_to_s00_couplers_AWQOS(3 downto 0) <= S00_AXI_awqos(3 downto 0);
  axi_interconnect_1_to_s00_couplers_AWSIZE(2 downto 0) <= S00_AXI_awsize(2 downto 0);
  axi_interconnect_1_to_s00_couplers_AWVALID <= S00_AXI_awvalid;
  axi_interconnect_1_to_s00_couplers_BREADY <= S00_AXI_bready;
  axi_interconnect_1_to_s00_couplers_RREADY <= S00_AXI_rready;
  axi_interconnect_1_to_s00_couplers_WDATA(31 downto 0) <= S00_AXI_wdata(31 downto 0);
  axi_interconnect_1_to_s00_couplers_WID(11 downto 0) <= S00_AXI_wid(11 downto 0);
  axi_interconnect_1_to_s00_couplers_WLAST <= S00_AXI_wlast;
  axi_interconnect_1_to_s00_couplers_WSTRB(3 downto 0) <= S00_AXI_wstrb(3 downto 0);
  axi_interconnect_1_to_s00_couplers_WVALID <= S00_AXI_wvalid;
  s00_couplers_to_axi_interconnect_1_ARREADY <= M00_AXI_arready;
  s00_couplers_to_axi_interconnect_1_AWREADY <= M00_AXI_awready;
  s00_couplers_to_axi_interconnect_1_BID(11 downto 0) <= M00_AXI_bid(11 downto 0);
  s00_couplers_to_axi_interconnect_1_BRESP(1 downto 0) <= M00_AXI_bresp(1 downto 0);
  s00_couplers_to_axi_interconnect_1_BVALID <= M00_AXI_bvalid;
  s00_couplers_to_axi_interconnect_1_RDATA(31 downto 0) <= M00_AXI_rdata(31 downto 0);
  s00_couplers_to_axi_interconnect_1_RID(11 downto 0) <= M00_AXI_rid(11 downto 0);
  s00_couplers_to_axi_interconnect_1_RLAST <= M00_AXI_rlast;
  s00_couplers_to_axi_interconnect_1_RRESP(1 downto 0) <= M00_AXI_rresp(1 downto 0);
  s00_couplers_to_axi_interconnect_1_RVALID <= M00_AXI_rvalid;
  s00_couplers_to_axi_interconnect_1_WREADY <= M00_AXI_wready;
s00_couplers: entity work.s00_couplers_imp_L9H7L4
     port map (
      M_ACLK => axi_interconnect_1_ACLK_net,
      M_ARESETN => axi_interconnect_1_ARESETN_net,
      M_AXI_araddr(31 downto 0) => s00_couplers_to_axi_interconnect_1_ARADDR(31 downto 0),
      M_AXI_arburst(1 downto 0) => s00_couplers_to_axi_interconnect_1_ARBURST(1 downto 0),
      M_AXI_arcache(3 downto 0) => s00_couplers_to_axi_interconnect_1_ARCACHE(3 downto 0),
      M_AXI_arid(11 downto 0) => s00_couplers_to_axi_interconnect_1_ARID(11 downto 0),
      M_AXI_arlen(7 downto 0) => s00_couplers_to_axi_interconnect_1_ARLEN(7 downto 0),
      M_AXI_arlock(0) => s00_couplers_to_axi_interconnect_1_ARLOCK(0),
      M_AXI_arprot(2 downto 0) => s00_couplers_to_axi_interconnect_1_ARPROT(2 downto 0),
      M_AXI_arready => s00_couplers_to_axi_interconnect_1_ARREADY,
      M_AXI_arsize(2 downto 0) => s00_couplers_to_axi_interconnect_1_ARSIZE(2 downto 0),
      M_AXI_arvalid => s00_couplers_to_axi_interconnect_1_ARVALID,
      M_AXI_awaddr(31 downto 0) => s00_couplers_to_axi_interconnect_1_AWADDR(31 downto 0),
      M_AXI_awburst(1 downto 0) => s00_couplers_to_axi_interconnect_1_AWBURST(1 downto 0),
      M_AXI_awcache(3 downto 0) => s00_couplers_to_axi_interconnect_1_AWCACHE(3 downto 0),
      M_AXI_awid(11 downto 0) => s00_couplers_to_axi_interconnect_1_AWID(11 downto 0),
      M_AXI_awlen(7 downto 0) => s00_couplers_to_axi_interconnect_1_AWLEN(7 downto 0),
      M_AXI_awlock(0) => s00_couplers_to_axi_interconnect_1_AWLOCK(0),
      M_AXI_awprot(2 downto 0) => s00_couplers_to_axi_interconnect_1_AWPROT(2 downto 0),
      M_AXI_awready => s00_couplers_to_axi_interconnect_1_AWREADY,
      M_AXI_awsize(2 downto 0) => s00_couplers_to_axi_interconnect_1_AWSIZE(2 downto 0),
      M_AXI_awvalid => s00_couplers_to_axi_interconnect_1_AWVALID,
      M_AXI_bid(11 downto 0) => s00_couplers_to_axi_interconnect_1_BID(11 downto 0),
      M_AXI_bready => s00_couplers_to_axi_interconnect_1_BREADY,
      M_AXI_bresp(1 downto 0) => s00_couplers_to_axi_interconnect_1_BRESP(1 downto 0),
      M_AXI_bvalid => s00_couplers_to_axi_interconnect_1_BVALID,
      M_AXI_rdata(31 downto 0) => s00_couplers_to_axi_interconnect_1_RDATA(31 downto 0),
      M_AXI_rid(11 downto 0) => s00_couplers_to_axi_interconnect_1_RID(11 downto 0),
      M_AXI_rlast => s00_couplers_to_axi_interconnect_1_RLAST,
      M_AXI_rready => s00_couplers_to_axi_interconnect_1_RREADY,
      M_AXI_rresp(1 downto 0) => s00_couplers_to_axi_interconnect_1_RRESP(1 downto 0),
      M_AXI_rvalid => s00_couplers_to_axi_interconnect_1_RVALID,
      M_AXI_wdata(31 downto 0) => s00_couplers_to_axi_interconnect_1_WDATA(31 downto 0),
      M_AXI_wlast => s00_couplers_to_axi_interconnect_1_WLAST,
      M_AXI_wready => s00_couplers_to_axi_interconnect_1_WREADY,
      M_AXI_wstrb(3 downto 0) => s00_couplers_to_axi_interconnect_1_WSTRB(3 downto 0),
      M_AXI_wvalid => s00_couplers_to_axi_interconnect_1_WVALID,
      S_ACLK => S00_ACLK_1,
      S_ARESETN => S00_ARESETN_1,
      S_AXI_araddr(31 downto 0) => axi_interconnect_1_to_s00_couplers_ARADDR(31 downto 0),
      S_AXI_arburst(1 downto 0) => axi_interconnect_1_to_s00_couplers_ARBURST(1 downto 0),
      S_AXI_arcache(3 downto 0) => axi_interconnect_1_to_s00_couplers_ARCACHE(3 downto 0),
      S_AXI_arid(11 downto 0) => axi_interconnect_1_to_s00_couplers_ARID(11 downto 0),
      S_AXI_arlen(3 downto 0) => axi_interconnect_1_to_s00_couplers_ARLEN(3 downto 0),
      S_AXI_arlock(1 downto 0) => axi_interconnect_1_to_s00_couplers_ARLOCK(1 downto 0),
      S_AXI_arprot(2 downto 0) => axi_interconnect_1_to_s00_couplers_ARPROT(2 downto 0),
      S_AXI_arqos(3 downto 0) => axi_interconnect_1_to_s00_couplers_ARQOS(3 downto 0),
      S_AXI_arready => axi_interconnect_1_to_s00_couplers_ARREADY,
      S_AXI_arsize(2 downto 0) => axi_interconnect_1_to_s00_couplers_ARSIZE(2 downto 0),
      S_AXI_arvalid => axi_interconnect_1_to_s00_couplers_ARVALID,
      S_AXI_awaddr(31 downto 0) => axi_interconnect_1_to_s00_couplers_AWADDR(31 downto 0),
      S_AXI_awburst(1 downto 0) => axi_interconnect_1_to_s00_couplers_AWBURST(1 downto 0),
      S_AXI_awcache(3 downto 0) => axi_interconnect_1_to_s00_couplers_AWCACHE(3 downto 0),
      S_AXI_awid(11 downto 0) => axi_interconnect_1_to_s00_couplers_AWID(11 downto 0),
      S_AXI_awlen(3 downto 0) => axi_interconnect_1_to_s00_couplers_AWLEN(3 downto 0),
      S_AXI_awlock(1 downto 0) => axi_interconnect_1_to_s00_couplers_AWLOCK(1 downto 0),
      S_AXI_awprot(2 downto 0) => axi_interconnect_1_to_s00_couplers_AWPROT(2 downto 0),
      S_AXI_awqos(3 downto 0) => axi_interconnect_1_to_s00_couplers_AWQOS(3 downto 0),
      S_AXI_awready => axi_interconnect_1_to_s00_couplers_AWREADY,
      S_AXI_awsize(2 downto 0) => axi_interconnect_1_to_s00_couplers_AWSIZE(2 downto 0),
      S_AXI_awvalid => axi_interconnect_1_to_s00_couplers_AWVALID,
      S_AXI_bid(11 downto 0) => axi_interconnect_1_to_s00_couplers_BID(11 downto 0),
      S_AXI_bready => axi_interconnect_1_to_s00_couplers_BREADY,
      S_AXI_bresp(1 downto 0) => axi_interconnect_1_to_s00_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => axi_interconnect_1_to_s00_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => axi_interconnect_1_to_s00_couplers_RDATA(31 downto 0),
      S_AXI_rid(11 downto 0) => axi_interconnect_1_to_s00_couplers_RID(11 downto 0),
      S_AXI_rlast => axi_interconnect_1_to_s00_couplers_RLAST,
      S_AXI_rready => axi_interconnect_1_to_s00_couplers_RREADY,
      S_AXI_rresp(1 downto 0) => axi_interconnect_1_to_s00_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => axi_interconnect_1_to_s00_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => axi_interconnect_1_to_s00_couplers_WDATA(31 downto 0),
      S_AXI_wid(11 downto 0) => axi_interconnect_1_to_s00_couplers_WID(11 downto 0),
      S_AXI_wlast => axi_interconnect_1_to_s00_couplers_WLAST,
      S_AXI_wready => axi_interconnect_1_to_s00_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => axi_interconnect_1_to_s00_couplers_WSTRB(3 downto 0),
      S_AXI_wvalid => axi_interconnect_1_to_s00_couplers_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity zsys is
  port (
    DDR_addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_ba : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_cas_n : inout STD_LOGIC;
    DDR_ck_n : inout STD_LOGIC;
    DDR_ck_p : inout STD_LOGIC;
    DDR_cke : inout STD_LOGIC;
    DDR_cs_n : inout STD_LOGIC;
    DDR_dm : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dq : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_dqs_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dqs_p : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_odt : inout STD_LOGIC;
    DDR_ras_n : inout STD_LOGIC;
    DDR_reset_n : inout STD_LOGIC;
    DDR_we_n : inout STD_LOGIC;
    FIXED_IO_ddr_vrn : inout STD_LOGIC;
    FIXED_IO_ddr_vrp : inout STD_LOGIC;
    FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    FIXED_IO_ps_clk : inout STD_LOGIC;
    FIXED_IO_ps_porb : inout STD_LOGIC;
    FIXED_IO_ps_srstb : inout STD_LOGIC;
    clk_in_0 : in STD_LOGIC;
    clk_out_0 : out STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of zsys : entity is "zsys,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=zsys,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=20,numReposBlks=16,numNonXlnxBlks=3,numHierBlks=4,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=1,numPkgbdBlks=0,bdsource=USER,da_axi4_cnt=2,da_bram_cntlr_cnt=2,da_ps7_cnt=2,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of zsys : entity is "zsys.hwdef";
end zsys;

architecture STRUCTURE of zsys is
  component zsys_processing_system7_0_1 is
  port (
    GPIO_I : in STD_LOGIC_VECTOR ( 1 downto 0 );
    GPIO_O : out STD_LOGIC_VECTOR ( 1 downto 0 );
    GPIO_T : out STD_LOGIC_VECTOR ( 1 downto 0 );
    SDIO0_CLK : out STD_LOGIC;
    SDIO0_CLK_FB : in STD_LOGIC;
    SDIO0_CMD_O : out STD_LOGIC;
    SDIO0_CMD_I : in STD_LOGIC;
    SDIO0_CMD_T : out STD_LOGIC;
    SDIO0_DATA_I : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SDIO0_DATA_O : out STD_LOGIC_VECTOR ( 3 downto 0 );
    SDIO0_DATA_T : out STD_LOGIC_VECTOR ( 3 downto 0 );
    SDIO0_LED : out STD_LOGIC;
    SDIO0_CDN : in STD_LOGIC;
    SDIO0_WP : in STD_LOGIC;
    SDIO0_BUSPOW : out STD_LOGIC;
    SDIO0_BUSVOLT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_GP0_ARVALID : out STD_LOGIC;
    M_AXI_GP0_AWVALID : out STD_LOGIC;
    M_AXI_GP0_BREADY : out STD_LOGIC;
    M_AXI_GP0_RREADY : out STD_LOGIC;
    M_AXI_GP0_WLAST : out STD_LOGIC;
    M_AXI_GP0_WVALID : out STD_LOGIC;
    M_AXI_GP0_ARID : out STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP0_AWID : out STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP0_WID : out STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP0_ARBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_ARLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_ARSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_GP0_AWBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_AWLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_AWSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_GP0_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_GP0_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_GP0_ARADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_GP0_AWADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_GP0_WDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_GP0_ARCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_ARLEN : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_ARQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_AWCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_AWLEN : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_AWQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_WSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_ACLK : in STD_LOGIC;
    M_AXI_GP0_ARREADY : in STD_LOGIC;
    M_AXI_GP0_AWREADY : in STD_LOGIC;
    M_AXI_GP0_BVALID : in STD_LOGIC;
    M_AXI_GP0_RLAST : in STD_LOGIC;
    M_AXI_GP0_RVALID : in STD_LOGIC;
    M_AXI_GP0_WREADY : in STD_LOGIC;
    M_AXI_GP0_BID : in STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP0_RID : in STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP0_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_RDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    IRQ_F2P : in STD_LOGIC_VECTOR ( 0 to 0 );
    FCLK_CLK0 : out STD_LOGIC;
    FCLK_CLK1 : out STD_LOGIC;
    FCLK_CLK2 : out STD_LOGIC;
    FCLK_RESET0_N : out STD_LOGIC;
    MIO : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    DDR_CAS_n : inout STD_LOGIC;
    DDR_CKE : inout STD_LOGIC;
    DDR_Clk_n : inout STD_LOGIC;
    DDR_Clk : inout STD_LOGIC;
    DDR_CS_n : inout STD_LOGIC;
    DDR_DRSTB : inout STD_LOGIC;
    DDR_ODT : inout STD_LOGIC;
    DDR_RAS_n : inout STD_LOGIC;
    DDR_WEB : inout STD_LOGIC;
    DDR_BankAddr : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_Addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_VRN : inout STD_LOGIC;
    DDR_VRP : inout STD_LOGIC;
    DDR_DM : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_DQ : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_DQS_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_DQS : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    PS_SRSTB : inout STD_LOGIC;
    PS_CLK : inout STD_LOGIC;
    PS_PORB : inout STD_LOGIC
  );
  end component zsys_processing_system7_0_1;
  component zsys_proc_sys_reset_0_0 is
  port (
    slowest_sync_clk : in STD_LOGIC;
    ext_reset_in : in STD_LOGIC;
    aux_reset_in : in STD_LOGIC;
    mb_debug_sys_rst : in STD_LOGIC;
    dcm_locked : in STD_LOGIC;
    mb_reset : out STD_LOGIC;
    bus_struct_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    interconnect_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component zsys_proc_sys_reset_0_0;
  component zsys_axi_protocol_converter_0_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 12 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 12 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 12 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 12 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component zsys_axi_protocol_converter_0_0;
  component zsys_system_ila_0_0 is
  port (
    clk : in STD_LOGIC;
    probe0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe3 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    probe4 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe5 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe6 : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_0_AXIS_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_0_AXIS_tlast : in STD_LOGIC;
    SLOT_0_AXIS_tuser : in STD_LOGIC_VECTOR ( 7 downto 0 );
    SLOT_0_AXIS_tvalid : in STD_LOGIC;
    SLOT_0_AXIS_tready : in STD_LOGIC;
    SLOT_1_AXI_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_1_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_1_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    SLOT_1_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_1_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_1_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_1_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_1_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_1_AXI_awvalid : in STD_LOGIC;
    SLOT_1_AXI_awready : in STD_LOGIC;
    SLOT_1_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_1_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_1_AXI_wlast : in STD_LOGIC;
    SLOT_1_AXI_wvalid : in STD_LOGIC;
    SLOT_1_AXI_wready : in STD_LOGIC;
    SLOT_1_AXI_bid : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_1_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_1_AXI_bvalid : in STD_LOGIC;
    SLOT_1_AXI_bready : in STD_LOGIC;
    SLOT_1_AXI_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_1_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_1_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    SLOT_1_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_1_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_1_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_1_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_1_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_1_AXI_arvalid : in STD_LOGIC;
    SLOT_1_AXI_arready : in STD_LOGIC;
    SLOT_1_AXI_rid : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_1_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_1_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_1_AXI_rlast : in STD_LOGIC;
    SLOT_1_AXI_rvalid : in STD_LOGIC;
    SLOT_1_AXI_rready : in STD_LOGIC;
    SLOT_2_AXI_awaddr : in STD_LOGIC_VECTOR ( 12 downto 0 );
    SLOT_2_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_2_AXI_awvalid : in STD_LOGIC;
    SLOT_2_AXI_awready : in STD_LOGIC;
    SLOT_2_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_2_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_2_AXI_wvalid : in STD_LOGIC;
    SLOT_2_AXI_wready : in STD_LOGIC;
    SLOT_2_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_2_AXI_bvalid : in STD_LOGIC;
    SLOT_2_AXI_bready : in STD_LOGIC;
    SLOT_2_AXI_araddr : in STD_LOGIC_VECTOR ( 12 downto 0 );
    SLOT_2_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_2_AXI_arvalid : in STD_LOGIC;
    SLOT_2_AXI_arready : in STD_LOGIC;
    SLOT_2_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_2_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_2_AXI_rvalid : in STD_LOGIC;
    SLOT_2_AXI_rready : in STD_LOGIC;
    SLOT_3_AXI_awaddr : in STD_LOGIC_VECTOR ( 12 downto 0 );
    SLOT_3_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_3_AXI_awvalid : in STD_LOGIC;
    SLOT_3_AXI_awready : in STD_LOGIC;
    SLOT_3_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_3_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_3_AXI_wvalid : in STD_LOGIC;
    SLOT_3_AXI_wready : in STD_LOGIC;
    SLOT_3_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_3_AXI_bvalid : in STD_LOGIC;
    SLOT_3_AXI_bready : in STD_LOGIC;
    SLOT_3_AXI_araddr : in STD_LOGIC_VECTOR ( 12 downto 0 );
    SLOT_3_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_3_AXI_arvalid : in STD_LOGIC;
    SLOT_3_AXI_arready : in STD_LOGIC;
    SLOT_3_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_3_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_3_AXI_rvalid : in STD_LOGIC;
    SLOT_3_AXI_rready : in STD_LOGIC;
    resetn : in STD_LOGIC;
    SLOT_4_BRAM_en : in STD_LOGIC;
    SLOT_4_BRAM_dout : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_4_BRAM_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_4_BRAM_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_4_BRAM_addr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    SLOT_4_BRAM_clk : in STD_LOGIC;
    SLOT_4_BRAM_rst : in STD_LOGIC
  );
  end component zsys_system_ila_0_0;
  component zsys_axis_data_fifo_0_0 is
  port (
    s_axis_aresetn : in STD_LOGIC;
    m_axis_aresetn : in STD_LOGIC;
    s_axis_aclk : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tuser : in STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_aclk : in STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tuser : out STD_LOGIC_VECTOR ( 7 downto 0 );
    axis_data_count : out STD_LOGIC_VECTOR ( 31 downto 0 );
    axis_wr_data_count : out STD_LOGIC_VECTOR ( 31 downto 0 );
    axis_rd_data_count : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component zsys_axis_data_fifo_0_0;
  component zsys_clock_detector_0_0 is
  port (
    refclk : in STD_LOGIC;
    clk : in STD_LOGIC;
    SLOW : out STD_LOGIC
  );
  end component zsys_clock_detector_0_0;
  component zsys_sdio_monitor_axis_v1_0_0_0 is
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
  end component zsys_sdio_monitor_axis_v1_0_0_0;
  component zsys_wb2axi_0_0 is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    wb_cyc_i : in STD_LOGIC;
    wb_stb_i : in STD_LOGIC;
    wb_we_i : in STD_LOGIC;
    wb_adr_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    wb_dat_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    wb_sel_i : in STD_LOGIC_VECTOR ( 3 downto 0 );
    wb_cti_i : in STD_LOGIC_VECTOR ( 2 downto 0 );
    wb_bte_i : in STD_LOGIC_VECTOR ( 1 downto 0 );
    wb_ack_o : out STD_LOGIC;
    wb_err_o : out STD_LOGIC;
    wb_rty_o : out STD_LOGIC;
    wb_dat_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_arid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component zsys_wb2axi_0_0;
  component zsys_axi_bram_ctrl_0_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    bram_rst_a : out STD_LOGIC;
    bram_clk_a : out STD_LOGIC;
    bram_en_a : out STD_LOGIC;
    bram_we_a : out STD_LOGIC_VECTOR ( 3 downto 0 );
    bram_addr_a : out STD_LOGIC_VECTOR ( 15 downto 0 );
    bram_wrdata_a : out STD_LOGIC_VECTOR ( 31 downto 0 );
    bram_rddata_a : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component zsys_axi_bram_ctrl_0_0;
  component zsys_axi_bram_ctrl_0_bram_0 is
  port (
    clka : in STD_LOGIC;
    rsta : in STD_LOGIC;
    ena : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 3 downto 0 );
    addra : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 31 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 31 downto 0 );
    clkb : in STD_LOGIC;
    rstb : in STD_LOGIC;
    enb : in STD_LOGIC;
    web : in STD_LOGIC_VECTOR ( 3 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 31 downto 0 );
    doutb : out STD_LOGIC_VECTOR ( 31 downto 0 );
    rsta_busy : out STD_LOGIC;
    rstb_busy : out STD_LOGIC
  );
  end component zsys_axi_bram_ctrl_0_bram_0;
  component zsys_vio_0_0 is
  port (
    clk : in STD_LOGIC;
    probe_in0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe_out0 : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component zsys_vio_0_0;
  component zsys_axi_bram_ctrl_1_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC;
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC;
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    bram_rst_a : out STD_LOGIC;
    bram_clk_a : out STD_LOGIC;
    bram_en_a : out STD_LOGIC;
    bram_we_a : out STD_LOGIC_VECTOR ( 3 downto 0 );
    bram_addr_a : out STD_LOGIC_VECTOR ( 15 downto 0 );
    bram_wrdata_a : out STD_LOGIC_VECTOR ( 31 downto 0 );
    bram_rddata_a : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component zsys_axi_bram_ctrl_1_0;
  component zsys_oddr_0_0 is
  port (
    clk_in : in STD_LOGIC;
    clk_out : out STD_LOGIC
  );
  end component zsys_oddr_0_0;
  component zsys_util_ds_buf_0_0 is
  port (
    BUFG_I : in STD_LOGIC_VECTOR ( 0 to 0 );
    BUFG_O : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component zsys_util_ds_buf_0_0;
  component zsys_emio_sdemu_0_0 is
  port (
    clk_50 : in STD_LOGIC;
    clk_100 : in STD_LOGIC;
    clk_200 : in STD_LOGIC;
    reset_n : in STD_LOGIC;
    sd_clk_fb : out STD_LOGIC;
    sd_clk : in STD_LOGIC;
    clk_out : out STD_LOGIC;
    clk_in : in STD_LOGIC;
    sd_cmd_i : out STD_LOGIC;
    sd_cmd_o : in STD_LOGIC;
    sd_cmd_t : in STD_LOGIC;
    sd_dat_i : out STD_LOGIC_VECTOR ( 3 downto 0 );
    sd_dat_o : in STD_LOGIC_VECTOR ( 3 downto 0 );
    sd_dat_t : in STD_LOGIC_VECTOR ( 3 downto 0 );
    sd_busvolt : in STD_LOGIC_VECTOR ( 2 downto 0 );
    sd_buspower : in STD_LOGIC;
    sd_led : in STD_LOGIC;
    sd_wp : out STD_LOGIC;
    sd_cdn : out STD_LOGIC;
    wbm_clk_o : out STD_LOGIC;
    wbm_adr_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    wbm_dat_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    wbm_dat_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    wbm_sel_o : out STD_LOGIC_VECTOR ( 3 downto 0 );
    wbm_cyc_o : out STD_LOGIC;
    wbm_stb_o : out STD_LOGIC;
    wbm_we_o : out STD_LOGIC;
    wbm_ack_i : in STD_LOGIC;
    wbm_cti_o : out STD_LOGIC_VECTOR ( 2 downto 0 );
    wbm_bte_o : out STD_LOGIC_VECTOR ( 1 downto 0 );
    opt_enable_hs : in STD_LOGIC;
    state_debug : out STD_LOGIC_VECTOR ( 5 downto 0 )
  );
  end component zsys_emio_sdemu_0_0;
  signal BUSPOW : STD_LOGIC;
  signal CMD_DIR : STD_LOGIC;
  signal CMD_TDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute CONN_BUS_INFO : string;
  attribute CONN_BUS_INFO of CMD_TDATA : signal is "CMD xilinx.com:interface:axis:1.0 None TDATA";
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of CMD_TDATA : signal is std.standard.true;
  signal CMD_TLAST : STD_LOGIC;
  attribute CONN_BUS_INFO of CMD_TLAST : signal is "CMD xilinx.com:interface:axis:1.0 None TLAST";
  attribute DONT_TOUCH of CMD_TLAST : signal is std.standard.true;
  signal CMD_TUSER : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute CONN_BUS_INFO of CMD_TUSER : signal is "CMD xilinx.com:interface:axis:1.0 None TUSER";
  attribute DONT_TOUCH of CMD_TUSER : signal is std.standard.true;
  signal CMD_TVALID : STD_LOGIC;
  attribute CONN_BUS_INFO of CMD_TVALID : signal is "CMD xilinx.com:interface:axis:1.0 None TVALID";
  attribute DONT_TOUCH of CMD_TVALID : signal is std.standard.true;
  signal S00_AXI_1_ARADDR : STD_LOGIC_VECTOR ( 12 downto 0 );
  attribute CONN_BUS_INFO of S00_AXI_1_ARADDR : signal is "S00_AXI_1 xilinx.com:interface:aximm:1.0 AXI4LITE ARADDR";
  attribute DONT_TOUCH of S00_AXI_1_ARADDR : signal is std.standard.true;
  signal S00_AXI_1_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute CONN_BUS_INFO of S00_AXI_1_ARPROT : signal is "S00_AXI_1 xilinx.com:interface:aximm:1.0 AXI4LITE ARPROT";
  attribute DONT_TOUCH of S00_AXI_1_ARPROT : signal is std.standard.true;
  signal S00_AXI_1_ARREADY : STD_LOGIC;
  attribute CONN_BUS_INFO of S00_AXI_1_ARREADY : signal is "S00_AXI_1 xilinx.com:interface:aximm:1.0 None ARREADY";
  attribute DONT_TOUCH of S00_AXI_1_ARREADY : signal is std.standard.true;
  signal S00_AXI_1_ARVALID : STD_LOGIC;
  attribute CONN_BUS_INFO of S00_AXI_1_ARVALID : signal is "S00_AXI_1 xilinx.com:interface:aximm:1.0 AXI4LITE ARVALID";
  attribute DONT_TOUCH of S00_AXI_1_ARVALID : signal is std.standard.true;
  signal S00_AXI_1_AWADDR : STD_LOGIC_VECTOR ( 12 downto 0 );
  attribute CONN_BUS_INFO of S00_AXI_1_AWADDR : signal is "S00_AXI_1 xilinx.com:interface:aximm:1.0 AXI4LITE AWADDR";
  attribute DONT_TOUCH of S00_AXI_1_AWADDR : signal is std.standard.true;
  signal S00_AXI_1_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute CONN_BUS_INFO of S00_AXI_1_AWPROT : signal is "S00_AXI_1 xilinx.com:interface:aximm:1.0 AXI4LITE AWPROT";
  attribute DONT_TOUCH of S00_AXI_1_AWPROT : signal is std.standard.true;
  signal S00_AXI_1_AWREADY : STD_LOGIC;
  attribute CONN_BUS_INFO of S00_AXI_1_AWREADY : signal is "S00_AXI_1 xilinx.com:interface:aximm:1.0 None AWREADY";
  attribute DONT_TOUCH of S00_AXI_1_AWREADY : signal is std.standard.true;
  signal S00_AXI_1_AWVALID : STD_LOGIC;
  attribute CONN_BUS_INFO of S00_AXI_1_AWVALID : signal is "S00_AXI_1 xilinx.com:interface:aximm:1.0 AXI4LITE AWVALID";
  attribute DONT_TOUCH of S00_AXI_1_AWVALID : signal is std.standard.true;
  signal S00_AXI_1_BREADY : STD_LOGIC;
  attribute CONN_BUS_INFO of S00_AXI_1_BREADY : signal is "S00_AXI_1 xilinx.com:interface:aximm:1.0 AXI4LITE BREADY";
  attribute DONT_TOUCH of S00_AXI_1_BREADY : signal is std.standard.true;
  signal S00_AXI_1_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute CONN_BUS_INFO of S00_AXI_1_BRESP : signal is "S00_AXI_1 xilinx.com:interface:aximm:1.0 None BRESP";
  attribute DONT_TOUCH of S00_AXI_1_BRESP : signal is std.standard.true;
  signal S00_AXI_1_BVALID : STD_LOGIC;
  attribute CONN_BUS_INFO of S00_AXI_1_BVALID : signal is "S00_AXI_1 xilinx.com:interface:aximm:1.0 None BVALID";
  attribute DONT_TOUCH of S00_AXI_1_BVALID : signal is std.standard.true;
  signal S00_AXI_1_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute CONN_BUS_INFO of S00_AXI_1_RDATA : signal is "S00_AXI_1 xilinx.com:interface:aximm:1.0 None RDATA";
  attribute DONT_TOUCH of S00_AXI_1_RDATA : signal is std.standard.true;
  signal S00_AXI_1_RREADY : STD_LOGIC;
  attribute CONN_BUS_INFO of S00_AXI_1_RREADY : signal is "S00_AXI_1 xilinx.com:interface:aximm:1.0 AXI4LITE RREADY";
  attribute DONT_TOUCH of S00_AXI_1_RREADY : signal is std.standard.true;
  signal S00_AXI_1_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute CONN_BUS_INFO of S00_AXI_1_RRESP : signal is "S00_AXI_1 xilinx.com:interface:aximm:1.0 None RRESP";
  attribute DONT_TOUCH of S00_AXI_1_RRESP : signal is std.standard.true;
  signal S00_AXI_1_RVALID : STD_LOGIC;
  attribute CONN_BUS_INFO of S00_AXI_1_RVALID : signal is "S00_AXI_1 xilinx.com:interface:aximm:1.0 None RVALID";
  attribute DONT_TOUCH of S00_AXI_1_RVALID : signal is std.standard.true;
  signal S00_AXI_1_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute CONN_BUS_INFO of S00_AXI_1_WDATA : signal is "S00_AXI_1 xilinx.com:interface:aximm:1.0 AXI4LITE WDATA";
  attribute DONT_TOUCH of S00_AXI_1_WDATA : signal is std.standard.true;
  signal S00_AXI_1_WREADY : STD_LOGIC;
  attribute CONN_BUS_INFO of S00_AXI_1_WREADY : signal is "S00_AXI_1 xilinx.com:interface:aximm:1.0 None WREADY";
  attribute DONT_TOUCH of S00_AXI_1_WREADY : signal is std.standard.true;
  signal S00_AXI_1_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute CONN_BUS_INFO of S00_AXI_1_WSTRB : signal is "S00_AXI_1 xilinx.com:interface:aximm:1.0 AXI4LITE WSTRB";
  attribute DONT_TOUCH of S00_AXI_1_WSTRB : signal is std.standard.true;
  signal S00_AXI_1_WVALID : STD_LOGIC;
  attribute CONN_BUS_INFO of S00_AXI_1_WVALID : signal is "S00_AXI_1 xilinx.com:interface:aximm:1.0 AXI4LITE WVALID";
  attribute DONT_TOUCH of S00_AXI_1_WVALID : signal is std.standard.true;
  signal S00_AXI_2_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S00_AXI_2_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S00_AXI_2_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S00_AXI_2_ARID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal S00_AXI_2_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S00_AXI_2_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S00_AXI_2_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal S00_AXI_2_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S00_AXI_2_ARREADY : STD_LOGIC;
  signal S00_AXI_2_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal S00_AXI_2_ARVALID : STD_LOGIC;
  signal S00_AXI_2_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S00_AXI_2_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S00_AXI_2_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S00_AXI_2_AWID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal S00_AXI_2_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S00_AXI_2_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S00_AXI_2_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal S00_AXI_2_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S00_AXI_2_AWREADY : STD_LOGIC;
  signal S00_AXI_2_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal S00_AXI_2_AWVALID : STD_LOGIC;
  signal S00_AXI_2_BID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal S00_AXI_2_BREADY : STD_LOGIC;
  signal S00_AXI_2_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S00_AXI_2_BVALID : STD_LOGIC;
  signal S00_AXI_2_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S00_AXI_2_RID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal S00_AXI_2_RLAST : STD_LOGIC;
  signal S00_AXI_2_RREADY : STD_LOGIC;
  signal S00_AXI_2_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S00_AXI_2_RVALID : STD_LOGIC;
  signal S00_AXI_2_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S00_AXI_2_WID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal S00_AXI_2_WLAST : STD_LOGIC;
  signal S00_AXI_2_WREADY : STD_LOGIC;
  signal S00_AXI_2_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S00_AXI_2_WVALID : STD_LOGIC;
  signal SDIO_CLK : STD_LOGIC;
  signal SDIO_CMD : STD_LOGIC;
  signal SDIO_DAT : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal SDIO_DAT_DIR : STD_LOGIC;
  signal SLOW : STD_LOGIC;
  signal aux_reset : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_bram_ctrl_0_BRAM_PORTA_ADDR : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute CONN_BUS_INFO of axi_bram_ctrl_0_BRAM_PORTA_ADDR : signal is "axi_bram_ctrl_0_BRAM_PORTA xilinx.com:interface:bram:1.0 None ADDR";
  attribute DONT_TOUCH of axi_bram_ctrl_0_BRAM_PORTA_ADDR : signal is std.standard.true;
  signal axi_bram_ctrl_0_BRAM_PORTA_CLK : STD_LOGIC;
  attribute CONN_BUS_INFO of axi_bram_ctrl_0_BRAM_PORTA_CLK : signal is "axi_bram_ctrl_0_BRAM_PORTA xilinx.com:interface:bram:1.0 None CLK";
  attribute DONT_TOUCH of axi_bram_ctrl_0_BRAM_PORTA_CLK : signal is std.standard.true;
  signal axi_bram_ctrl_0_BRAM_PORTA_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute CONN_BUS_INFO of axi_bram_ctrl_0_BRAM_PORTA_DIN : signal is "axi_bram_ctrl_0_BRAM_PORTA xilinx.com:interface:bram:1.0 None DIN";
  attribute DONT_TOUCH of axi_bram_ctrl_0_BRAM_PORTA_DIN : signal is std.standard.true;
  signal axi_bram_ctrl_0_BRAM_PORTA_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute CONN_BUS_INFO of axi_bram_ctrl_0_BRAM_PORTA_DOUT : signal is "axi_bram_ctrl_0_BRAM_PORTA xilinx.com:interface:bram:1.0 None DOUT";
  attribute DONT_TOUCH of axi_bram_ctrl_0_BRAM_PORTA_DOUT : signal is std.standard.true;
  signal axi_bram_ctrl_0_BRAM_PORTA_EN : STD_LOGIC;
  attribute CONN_BUS_INFO of axi_bram_ctrl_0_BRAM_PORTA_EN : signal is "axi_bram_ctrl_0_BRAM_PORTA xilinx.com:interface:bram:1.0 None EN";
  attribute DONT_TOUCH of axi_bram_ctrl_0_BRAM_PORTA_EN : signal is std.standard.true;
  signal axi_bram_ctrl_0_BRAM_PORTA_RST : STD_LOGIC;
  attribute CONN_BUS_INFO of axi_bram_ctrl_0_BRAM_PORTA_RST : signal is "axi_bram_ctrl_0_BRAM_PORTA xilinx.com:interface:bram:1.0 None RST";
  attribute DONT_TOUCH of axi_bram_ctrl_0_BRAM_PORTA_RST : signal is std.standard.true;
  signal axi_bram_ctrl_0_BRAM_PORTA_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute CONN_BUS_INFO of axi_bram_ctrl_0_BRAM_PORTA_WE : signal is "axi_bram_ctrl_0_BRAM_PORTA xilinx.com:interface:bram:1.0 None WE";
  attribute DONT_TOUCH of axi_bram_ctrl_0_BRAM_PORTA_WE : signal is std.standard.true;
  signal axi_bram_ctrl_1_BRAM_PORTA_ADDR : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal axi_bram_ctrl_1_BRAM_PORTA_CLK : STD_LOGIC;
  signal axi_bram_ctrl_1_BRAM_PORTA_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_bram_ctrl_1_BRAM_PORTA_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_bram_ctrl_1_BRAM_PORTA_EN : STD_LOGIC;
  signal axi_bram_ctrl_1_BRAM_PORTA_RST : STD_LOGIC;
  signal axi_bram_ctrl_1_BRAM_PORTA_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_0_M00_AXI_ARADDR : STD_LOGIC_VECTOR ( 12 downto 0 );
  attribute CONN_BUS_INFO of axi_interconnect_0_M00_AXI_ARADDR : signal is "axi_interconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4LITE ARADDR";
  attribute DONT_TOUCH of axi_interconnect_0_M00_AXI_ARADDR : signal is std.standard.true;
  signal axi_interconnect_0_M00_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute CONN_BUS_INFO of axi_interconnect_0_M00_AXI_ARPROT : signal is "axi_interconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4LITE ARPROT";
  attribute DONT_TOUCH of axi_interconnect_0_M00_AXI_ARPROT : signal is std.standard.true;
  signal axi_interconnect_0_M00_AXI_ARREADY : STD_LOGIC;
  attribute CONN_BUS_INFO of axi_interconnect_0_M00_AXI_ARREADY : signal is "axi_interconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4LITE ARREADY";
  attribute DONT_TOUCH of axi_interconnect_0_M00_AXI_ARREADY : signal is std.standard.true;
  signal axi_interconnect_0_M00_AXI_ARVALID : STD_LOGIC;
  attribute CONN_BUS_INFO of axi_interconnect_0_M00_AXI_ARVALID : signal is "axi_interconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4LITE ARVALID";
  attribute DONT_TOUCH of axi_interconnect_0_M00_AXI_ARVALID : signal is std.standard.true;
  signal axi_interconnect_0_M00_AXI_AWADDR : STD_LOGIC_VECTOR ( 12 downto 0 );
  attribute CONN_BUS_INFO of axi_interconnect_0_M00_AXI_AWADDR : signal is "axi_interconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4LITE AWADDR";
  attribute DONT_TOUCH of axi_interconnect_0_M00_AXI_AWADDR : signal is std.standard.true;
  signal axi_interconnect_0_M00_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute CONN_BUS_INFO of axi_interconnect_0_M00_AXI_AWPROT : signal is "axi_interconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4LITE AWPROT";
  attribute DONT_TOUCH of axi_interconnect_0_M00_AXI_AWPROT : signal is std.standard.true;
  signal axi_interconnect_0_M00_AXI_AWREADY : STD_LOGIC;
  attribute CONN_BUS_INFO of axi_interconnect_0_M00_AXI_AWREADY : signal is "axi_interconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4LITE AWREADY";
  attribute DONT_TOUCH of axi_interconnect_0_M00_AXI_AWREADY : signal is std.standard.true;
  signal axi_interconnect_0_M00_AXI_AWVALID : STD_LOGIC;
  attribute CONN_BUS_INFO of axi_interconnect_0_M00_AXI_AWVALID : signal is "axi_interconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4LITE AWVALID";
  attribute DONT_TOUCH of axi_interconnect_0_M00_AXI_AWVALID : signal is std.standard.true;
  signal axi_interconnect_0_M00_AXI_BREADY : STD_LOGIC;
  attribute CONN_BUS_INFO of axi_interconnect_0_M00_AXI_BREADY : signal is "axi_interconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4LITE BREADY";
  attribute DONT_TOUCH of axi_interconnect_0_M00_AXI_BREADY : signal is std.standard.true;
  signal axi_interconnect_0_M00_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute CONN_BUS_INFO of axi_interconnect_0_M00_AXI_BRESP : signal is "axi_interconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4LITE BRESP";
  attribute DONT_TOUCH of axi_interconnect_0_M00_AXI_BRESP : signal is std.standard.true;
  signal axi_interconnect_0_M00_AXI_BVALID : STD_LOGIC;
  attribute CONN_BUS_INFO of axi_interconnect_0_M00_AXI_BVALID : signal is "axi_interconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4LITE BVALID";
  attribute DONT_TOUCH of axi_interconnect_0_M00_AXI_BVALID : signal is std.standard.true;
  signal axi_interconnect_0_M00_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute CONN_BUS_INFO of axi_interconnect_0_M00_AXI_RDATA : signal is "axi_interconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4LITE RDATA";
  attribute DONT_TOUCH of axi_interconnect_0_M00_AXI_RDATA : signal is std.standard.true;
  signal axi_interconnect_0_M00_AXI_RREADY : STD_LOGIC;
  attribute CONN_BUS_INFO of axi_interconnect_0_M00_AXI_RREADY : signal is "axi_interconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4LITE RREADY";
  attribute DONT_TOUCH of axi_interconnect_0_M00_AXI_RREADY : signal is std.standard.true;
  signal axi_interconnect_0_M00_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute CONN_BUS_INFO of axi_interconnect_0_M00_AXI_RRESP : signal is "axi_interconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4LITE RRESP";
  attribute DONT_TOUCH of axi_interconnect_0_M00_AXI_RRESP : signal is std.standard.true;
  signal axi_interconnect_0_M00_AXI_RVALID : STD_LOGIC;
  attribute CONN_BUS_INFO of axi_interconnect_0_M00_AXI_RVALID : signal is "axi_interconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4LITE RVALID";
  attribute DONT_TOUCH of axi_interconnect_0_M00_AXI_RVALID : signal is std.standard.true;
  signal axi_interconnect_0_M00_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute CONN_BUS_INFO of axi_interconnect_0_M00_AXI_WDATA : signal is "axi_interconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4LITE WDATA";
  attribute DONT_TOUCH of axi_interconnect_0_M00_AXI_WDATA : signal is std.standard.true;
  signal axi_interconnect_0_M00_AXI_WREADY : STD_LOGIC;
  attribute CONN_BUS_INFO of axi_interconnect_0_M00_AXI_WREADY : signal is "axi_interconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4LITE WREADY";
  attribute DONT_TOUCH of axi_interconnect_0_M00_AXI_WREADY : signal is std.standard.true;
  signal axi_interconnect_0_M00_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute CONN_BUS_INFO of axi_interconnect_0_M00_AXI_WSTRB : signal is "axi_interconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4LITE WSTRB";
  attribute DONT_TOUCH of axi_interconnect_0_M00_AXI_WSTRB : signal is std.standard.true;
  signal axi_interconnect_0_M00_AXI_WVALID : STD_LOGIC;
  attribute CONN_BUS_INFO of axi_interconnect_0_M00_AXI_WVALID : signal is "axi_interconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4LITE WVALID";
  attribute DONT_TOUCH of axi_interconnect_0_M00_AXI_WVALID : signal is std.standard.true;
  signal axi_interconnect_1_M00_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_1_M00_AXI_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_1_M00_AXI_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_1_M00_AXI_ARID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal axi_interconnect_1_M00_AXI_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_interconnect_1_M00_AXI_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_1_M00_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_1_M00_AXI_ARREADY : STD_LOGIC;
  signal axi_interconnect_1_M00_AXI_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_1_M00_AXI_ARVALID : STD_LOGIC;
  signal axi_interconnect_1_M00_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_1_M00_AXI_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_1_M00_AXI_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_1_M00_AXI_AWID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal axi_interconnect_1_M00_AXI_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_interconnect_1_M00_AXI_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_1_M00_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_1_M00_AXI_AWREADY : STD_LOGIC;
  signal axi_interconnect_1_M00_AXI_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_1_M00_AXI_AWVALID : STD_LOGIC;
  signal axi_interconnect_1_M00_AXI_BID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal axi_interconnect_1_M00_AXI_BREADY : STD_LOGIC;
  signal axi_interconnect_1_M00_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_1_M00_AXI_BVALID : STD_LOGIC;
  signal axi_interconnect_1_M00_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_1_M00_AXI_RID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal axi_interconnect_1_M00_AXI_RLAST : STD_LOGIC;
  signal axi_interconnect_1_M00_AXI_RREADY : STD_LOGIC;
  signal axi_interconnect_1_M00_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_1_M00_AXI_RVALID : STD_LOGIC;
  signal axi_interconnect_1_M00_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_1_M00_AXI_WLAST : STD_LOGIC;
  signal axi_interconnect_1_M00_AXI_WREADY : STD_LOGIC;
  signal axi_interconnect_1_M00_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_1_M00_AXI_WVALID : STD_LOGIC;
  signal clk_in_0_1 : STD_LOGIC;
  signal emio_sdemu_0_WB_ack : STD_LOGIC;
  signal emio_sdemu_0_WB_adr : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal emio_sdemu_0_WB_bte : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal emio_sdemu_0_WB_cti : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal emio_sdemu_0_WB_cyc : STD_LOGIC;
  signal emio_sdemu_0_WB_dat_i : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal emio_sdemu_0_WB_dat_o : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal emio_sdemu_0_WB_sel : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal emio_sdemu_0_WB_stb : STD_LOGIC;
  signal emio_sdemu_0_WB_we : STD_LOGIC;
  signal emio_sdemu_0_clk_out : STD_LOGIC;
  signal oddr_0_clk_out : STD_LOGIC;
  signal proc_sys_reset_0_interconnect_aresetn : STD_LOGIC_VECTOR ( 0 to 0 );
  signal proc_sys_reset_0_peripheral_aresetn : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ps7_DDR_ADDR : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal ps7_DDR_BA : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ps7_DDR_CAS_N : STD_LOGIC;
  signal ps7_DDR_CKE : STD_LOGIC;
  signal ps7_DDR_CK_N : STD_LOGIC;
  signal ps7_DDR_CK_P : STD_LOGIC;
  signal ps7_DDR_CS_N : STD_LOGIC;
  signal ps7_DDR_DM : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps7_DDR_DQ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_DDR_DQS_N : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps7_DDR_DQS_P : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps7_DDR_ODT : STD_LOGIC;
  signal ps7_DDR_RAS_N : STD_LOGIC;
  signal ps7_DDR_RESET_N : STD_LOGIC;
  signal ps7_DDR_WE_N : STD_LOGIC;
  signal ps7_FCLK_CLK0 : STD_LOGIC;
  signal ps7_FCLK_CLK1 : STD_LOGIC;
  signal ps7_FCLK_CLK2 : STD_LOGIC;
  signal ps7_FCLK_RESET0_N : STD_LOGIC;
  signal ps7_FIXED_IO_DDR_VRN : STD_LOGIC;
  signal ps7_FIXED_IO_DDR_VRP : STD_LOGIC;
  signal ps7_FIXED_IO_MIO : STD_LOGIC_VECTOR ( 53 downto 0 );
  signal ps7_FIXED_IO_PS_CLK : STD_LOGIC;
  signal ps7_FIXED_IO_PS_PORB : STD_LOGIC;
  signal ps7_FIXED_IO_PS_SRSTB : STD_LOGIC;
  signal ps7_SDIO0_CLK : STD_LOGIC;
  signal ps7_SDIO_1_BUSPOW : STD_LOGIC;
  signal ps7_SDIO_1_BUSVOLT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ps7_SDIO_1_CDN : STD_LOGIC;
  signal ps7_SDIO_1_CMD_I : STD_LOGIC;
  signal ps7_SDIO_1_CMD_O : STD_LOGIC;
  signal ps7_SDIO_1_CMD_T : STD_LOGIC;
  signal ps7_SDIO_1_DATA_I : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps7_SDIO_1_DATA_O : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps7_SDIO_1_DATA_T : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps7_SDIO_1_LED : STD_LOGIC;
  signal ps7_SDIO_1_WP : STD_LOGIC;
  signal sdio_monitor_axis_v1_0_0_m_cmd_axis_TDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal sdio_monitor_axis_v1_0_0_m_cmd_axis_TLAST : STD_LOGIC;
  signal sdio_monitor_axis_v1_0_0_m_cmd_axis_TREADY : STD_LOGIC;
  signal sdio_monitor_axis_v1_0_0_m_cmd_axis_TUSER : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal sdio_monitor_axis_v1_0_0_m_cmd_axis_TVALID : STD_LOGIC;
  signal util_ds_buf_0_BUFG_O : STD_LOGIC_VECTOR ( 0 to 0 );
  signal wb2axi_0_m_axi_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute CONN_BUS_INFO of wb2axi_0_m_axi_ARADDR : signal is "wb2axi_0_m_axi xilinx.com:interface:aximm:1.0 AXI4 ARADDR";
  attribute DONT_TOUCH of wb2axi_0_m_axi_ARADDR : signal is std.standard.true;
  signal wb2axi_0_m_axi_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute CONN_BUS_INFO of wb2axi_0_m_axi_ARBURST : signal is "wb2axi_0_m_axi xilinx.com:interface:aximm:1.0 AXI4 ARBURST";
  attribute DONT_TOUCH of wb2axi_0_m_axi_ARBURST : signal is std.standard.true;
  signal wb2axi_0_m_axi_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute CONN_BUS_INFO of wb2axi_0_m_axi_ARCACHE : signal is "wb2axi_0_m_axi xilinx.com:interface:aximm:1.0 AXI4 ARCACHE";
  attribute DONT_TOUCH of wb2axi_0_m_axi_ARCACHE : signal is std.standard.true;
  signal wb2axi_0_m_axi_ARID : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute CONN_BUS_INFO of wb2axi_0_m_axi_ARID : signal is "wb2axi_0_m_axi xilinx.com:interface:aximm:1.0 AXI4 ARID";
  attribute DONT_TOUCH of wb2axi_0_m_axi_ARID : signal is std.standard.true;
  signal wb2axi_0_m_axi_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute CONN_BUS_INFO of wb2axi_0_m_axi_ARLEN : signal is "wb2axi_0_m_axi xilinx.com:interface:aximm:1.0 AXI4 ARLEN";
  attribute DONT_TOUCH of wb2axi_0_m_axi_ARLEN : signal is std.standard.true;
  signal wb2axi_0_m_axi_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute CONN_BUS_INFO of wb2axi_0_m_axi_ARPROT : signal is "wb2axi_0_m_axi xilinx.com:interface:aximm:1.0 AXI4 ARPROT";
  attribute DONT_TOUCH of wb2axi_0_m_axi_ARPROT : signal is std.standard.true;
  signal wb2axi_0_m_axi_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute CONN_BUS_INFO of wb2axi_0_m_axi_ARQOS : signal is "wb2axi_0_m_axi xilinx.com:interface:aximm:1.0 AXI4 ARQOS";
  attribute DONT_TOUCH of wb2axi_0_m_axi_ARQOS : signal is std.standard.true;
  signal wb2axi_0_m_axi_ARREADY : STD_LOGIC;
  attribute CONN_BUS_INFO of wb2axi_0_m_axi_ARREADY : signal is "wb2axi_0_m_axi xilinx.com:interface:aximm:1.0 AXI4 ARREADY";
  attribute DONT_TOUCH of wb2axi_0_m_axi_ARREADY : signal is std.standard.true;
  signal wb2axi_0_m_axi_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute CONN_BUS_INFO of wb2axi_0_m_axi_ARSIZE : signal is "wb2axi_0_m_axi xilinx.com:interface:aximm:1.0 AXI4 ARSIZE";
  attribute DONT_TOUCH of wb2axi_0_m_axi_ARSIZE : signal is std.standard.true;
  signal wb2axi_0_m_axi_ARVALID : STD_LOGIC;
  attribute CONN_BUS_INFO of wb2axi_0_m_axi_ARVALID : signal is "wb2axi_0_m_axi xilinx.com:interface:aximm:1.0 AXI4 ARVALID";
  attribute DONT_TOUCH of wb2axi_0_m_axi_ARVALID : signal is std.standard.true;
  signal wb2axi_0_m_axi_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute CONN_BUS_INFO of wb2axi_0_m_axi_AWADDR : signal is "wb2axi_0_m_axi xilinx.com:interface:aximm:1.0 AXI4 AWADDR";
  attribute DONT_TOUCH of wb2axi_0_m_axi_AWADDR : signal is std.standard.true;
  signal wb2axi_0_m_axi_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute CONN_BUS_INFO of wb2axi_0_m_axi_AWBURST : signal is "wb2axi_0_m_axi xilinx.com:interface:aximm:1.0 AXI4 AWBURST";
  attribute DONT_TOUCH of wb2axi_0_m_axi_AWBURST : signal is std.standard.true;
  signal wb2axi_0_m_axi_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute CONN_BUS_INFO of wb2axi_0_m_axi_AWCACHE : signal is "wb2axi_0_m_axi xilinx.com:interface:aximm:1.0 AXI4 AWCACHE";
  attribute DONT_TOUCH of wb2axi_0_m_axi_AWCACHE : signal is std.standard.true;
  signal wb2axi_0_m_axi_AWID : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute CONN_BUS_INFO of wb2axi_0_m_axi_AWID : signal is "wb2axi_0_m_axi xilinx.com:interface:aximm:1.0 AXI4 AWID";
  attribute DONT_TOUCH of wb2axi_0_m_axi_AWID : signal is std.standard.true;
  signal wb2axi_0_m_axi_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute CONN_BUS_INFO of wb2axi_0_m_axi_AWLEN : signal is "wb2axi_0_m_axi xilinx.com:interface:aximm:1.0 AXI4 AWLEN";
  attribute DONT_TOUCH of wb2axi_0_m_axi_AWLEN : signal is std.standard.true;
  signal wb2axi_0_m_axi_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute CONN_BUS_INFO of wb2axi_0_m_axi_AWPROT : signal is "wb2axi_0_m_axi xilinx.com:interface:aximm:1.0 AXI4 AWPROT";
  attribute DONT_TOUCH of wb2axi_0_m_axi_AWPROT : signal is std.standard.true;
  signal wb2axi_0_m_axi_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute CONN_BUS_INFO of wb2axi_0_m_axi_AWQOS : signal is "wb2axi_0_m_axi xilinx.com:interface:aximm:1.0 AXI4 AWQOS";
  attribute DONT_TOUCH of wb2axi_0_m_axi_AWQOS : signal is std.standard.true;
  signal wb2axi_0_m_axi_AWREADY : STD_LOGIC;
  attribute CONN_BUS_INFO of wb2axi_0_m_axi_AWREADY : signal is "wb2axi_0_m_axi xilinx.com:interface:aximm:1.0 AXI4 AWREADY";
  attribute DONT_TOUCH of wb2axi_0_m_axi_AWREADY : signal is std.standard.true;
  signal wb2axi_0_m_axi_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute CONN_BUS_INFO of wb2axi_0_m_axi_AWSIZE : signal is "wb2axi_0_m_axi xilinx.com:interface:aximm:1.0 AXI4 AWSIZE";
  attribute DONT_TOUCH of wb2axi_0_m_axi_AWSIZE : signal is std.standard.true;
  signal wb2axi_0_m_axi_AWVALID : STD_LOGIC;
  attribute CONN_BUS_INFO of wb2axi_0_m_axi_AWVALID : signal is "wb2axi_0_m_axi xilinx.com:interface:aximm:1.0 AXI4 AWVALID";
  attribute DONT_TOUCH of wb2axi_0_m_axi_AWVALID : signal is std.standard.true;
  signal wb2axi_0_m_axi_BID : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute CONN_BUS_INFO of wb2axi_0_m_axi_BID : signal is "wb2axi_0_m_axi xilinx.com:interface:aximm:1.0 AXI4 BID";
  attribute DONT_TOUCH of wb2axi_0_m_axi_BID : signal is std.standard.true;
  signal wb2axi_0_m_axi_BREADY : STD_LOGIC;
  attribute CONN_BUS_INFO of wb2axi_0_m_axi_BREADY : signal is "wb2axi_0_m_axi xilinx.com:interface:aximm:1.0 AXI4 BREADY";
  attribute DONT_TOUCH of wb2axi_0_m_axi_BREADY : signal is std.standard.true;
  signal wb2axi_0_m_axi_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute CONN_BUS_INFO of wb2axi_0_m_axi_BRESP : signal is "wb2axi_0_m_axi xilinx.com:interface:aximm:1.0 AXI4 BRESP";
  attribute DONT_TOUCH of wb2axi_0_m_axi_BRESP : signal is std.standard.true;
  signal wb2axi_0_m_axi_BVALID : STD_LOGIC;
  attribute CONN_BUS_INFO of wb2axi_0_m_axi_BVALID : signal is "wb2axi_0_m_axi xilinx.com:interface:aximm:1.0 AXI4 BVALID";
  attribute DONT_TOUCH of wb2axi_0_m_axi_BVALID : signal is std.standard.true;
  signal wb2axi_0_m_axi_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute CONN_BUS_INFO of wb2axi_0_m_axi_RDATA : signal is "wb2axi_0_m_axi xilinx.com:interface:aximm:1.0 AXI4 RDATA";
  attribute DONT_TOUCH of wb2axi_0_m_axi_RDATA : signal is std.standard.true;
  signal wb2axi_0_m_axi_RID : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute CONN_BUS_INFO of wb2axi_0_m_axi_RID : signal is "wb2axi_0_m_axi xilinx.com:interface:aximm:1.0 AXI4 RID";
  attribute DONT_TOUCH of wb2axi_0_m_axi_RID : signal is std.standard.true;
  signal wb2axi_0_m_axi_RLAST : STD_LOGIC;
  attribute CONN_BUS_INFO of wb2axi_0_m_axi_RLAST : signal is "wb2axi_0_m_axi xilinx.com:interface:aximm:1.0 AXI4 RLAST";
  attribute DONT_TOUCH of wb2axi_0_m_axi_RLAST : signal is std.standard.true;
  signal wb2axi_0_m_axi_RREADY : STD_LOGIC;
  attribute CONN_BUS_INFO of wb2axi_0_m_axi_RREADY : signal is "wb2axi_0_m_axi xilinx.com:interface:aximm:1.0 AXI4 RREADY";
  attribute DONT_TOUCH of wb2axi_0_m_axi_RREADY : signal is std.standard.true;
  signal wb2axi_0_m_axi_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute CONN_BUS_INFO of wb2axi_0_m_axi_RRESP : signal is "wb2axi_0_m_axi xilinx.com:interface:aximm:1.0 AXI4 RRESP";
  attribute DONT_TOUCH of wb2axi_0_m_axi_RRESP : signal is std.standard.true;
  signal wb2axi_0_m_axi_RVALID : STD_LOGIC;
  attribute CONN_BUS_INFO of wb2axi_0_m_axi_RVALID : signal is "wb2axi_0_m_axi xilinx.com:interface:aximm:1.0 AXI4 RVALID";
  attribute DONT_TOUCH of wb2axi_0_m_axi_RVALID : signal is std.standard.true;
  signal wb2axi_0_m_axi_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute CONN_BUS_INFO of wb2axi_0_m_axi_WDATA : signal is "wb2axi_0_m_axi xilinx.com:interface:aximm:1.0 AXI4 WDATA";
  attribute DONT_TOUCH of wb2axi_0_m_axi_WDATA : signal is std.standard.true;
  signal wb2axi_0_m_axi_WLAST : STD_LOGIC;
  attribute CONN_BUS_INFO of wb2axi_0_m_axi_WLAST : signal is "wb2axi_0_m_axi xilinx.com:interface:aximm:1.0 AXI4 WLAST";
  attribute DONT_TOUCH of wb2axi_0_m_axi_WLAST : signal is std.standard.true;
  signal wb2axi_0_m_axi_WREADY : STD_LOGIC;
  attribute CONN_BUS_INFO of wb2axi_0_m_axi_WREADY : signal is "wb2axi_0_m_axi xilinx.com:interface:aximm:1.0 AXI4 WREADY";
  attribute DONT_TOUCH of wb2axi_0_m_axi_WREADY : signal is std.standard.true;
  signal wb2axi_0_m_axi_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute CONN_BUS_INFO of wb2axi_0_m_axi_WSTRB : signal is "wb2axi_0_m_axi xilinx.com:interface:aximm:1.0 AXI4 WSTRB";
  attribute DONT_TOUCH of wb2axi_0_m_axi_WSTRB : signal is std.standard.true;
  signal wb2axi_0_m_axi_WVALID : STD_LOGIC;
  attribute CONN_BUS_INFO of wb2axi_0_m_axi_WVALID : signal is "wb2axi_0_m_axi xilinx.com:interface:aximm:1.0 AXI4 WVALID";
  attribute DONT_TOUCH of wb2axi_0_m_axi_WVALID : signal is std.standard.true;
  signal NLW_axi_bram_ctrl_0_bram_rsta_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_bram_ctrl_0_bram_rstb_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_axis_data_fifo_0_axis_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_axis_data_fifo_0_axis_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_axis_data_fifo_0_axis_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_emio_sdemu_0_sd_clk_fb_UNCONNECTED : STD_LOGIC;
  signal NLW_emio_sdemu_0_wbm_clk_o_UNCONNECTED : STD_LOGIC;
  signal NLW_emio_sdemu_0_state_debug_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_proc_sys_reset_0_mb_reset_UNCONNECTED : STD_LOGIC;
  signal NLW_proc_sys_reset_0_bus_struct_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_proc_sys_reset_0_peripheral_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_ps7_GPIO_O_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_ps7_GPIO_T_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_sdio_monitor_axis_v1_0_0_CDN_UNCONNECTED : STD_LOGIC;
  signal NLW_sdio_monitor_axis_v1_0_0_CRC_ERR_UNCONNECTED : STD_LOGIC;
  signal NLW_sdio_monitor_axis_v1_0_0_LED_UNCONNECTED : STD_LOGIC;
  signal NLW_sdio_monitor_axis_v1_0_0_WP_UNCONNECTED : STD_LOGIC;
  signal NLW_sdio_monitor_axis_v1_0_0_m_dat_axis_tlast_UNCONNECTED : STD_LOGIC;
  signal NLW_sdio_monitor_axis_v1_0_0_m_dat_axis_tvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_sdio_monitor_axis_v1_0_0_new_CMD_UNCONNECTED : STD_LOGIC;
  signal NLW_sdio_monitor_axis_v1_0_0_BUSVOLT_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_sdio_monitor_axis_v1_0_0_STATE_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_sdio_monitor_axis_v1_0_0_m_dat_axis_tdata_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_wb2axi_0_wb_err_o_UNCONNECTED : STD_LOGIC;
  signal NLW_wb2axi_0_wb_rty_o_UNCONNECTED : STD_LOGIC;
  attribute BMM_INFO_ADDRESS_SPACE : string;
  attribute BMM_INFO_ADDRESS_SPACE of axi_bram_ctrl_1 : label is "byte  0x40000000 32 > zsys axi_bram_ctrl_0_bram";
  attribute KEEP_HIERARCHY : string;
  attribute KEEP_HIERARCHY of axi_bram_ctrl_1 : label is "yes";
  attribute BMM_INFO_PROCESSOR : string;
  attribute BMM_INFO_PROCESSOR of ps7 : label is "arm > zsys axi_bram_ctrl_1";
  attribute KEEP_HIERARCHY of ps7 : label is "yes";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of DDR_cas_n : signal is "xilinx.com:interface:ddrx:1.0 DDR CAS_N";
  attribute X_INTERFACE_INFO of DDR_ck_n : signal is "xilinx.com:interface:ddrx:1.0 DDR CK_N";
  attribute X_INTERFACE_INFO of DDR_ck_p : signal is "xilinx.com:interface:ddrx:1.0 DDR CK_P";
  attribute X_INTERFACE_INFO of DDR_cke : signal is "xilinx.com:interface:ddrx:1.0 DDR CKE";
  attribute X_INTERFACE_INFO of DDR_cs_n : signal is "xilinx.com:interface:ddrx:1.0 DDR CS_N";
  attribute X_INTERFACE_INFO of DDR_odt : signal is "xilinx.com:interface:ddrx:1.0 DDR ODT";
  attribute X_INTERFACE_INFO of DDR_ras_n : signal is "xilinx.com:interface:ddrx:1.0 DDR RAS_N";
  attribute X_INTERFACE_INFO of DDR_reset_n : signal is "xilinx.com:interface:ddrx:1.0 DDR RESET_N";
  attribute X_INTERFACE_INFO of DDR_we_n : signal is "xilinx.com:interface:ddrx:1.0 DDR WE_N";
  attribute X_INTERFACE_INFO of FIXED_IO_ddr_vrn : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO DDR_VRN";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of FIXED_IO_ddr_vrn : signal is "XIL_INTERFACENAME FIXED_IO, CAN_DEBUG false";
  attribute X_INTERFACE_INFO of FIXED_IO_ddr_vrp : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO DDR_VRP";
  attribute X_INTERFACE_INFO of FIXED_IO_ps_clk : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_CLK";
  attribute X_INTERFACE_INFO of FIXED_IO_ps_porb : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_PORB";
  attribute X_INTERFACE_INFO of FIXED_IO_ps_srstb : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_SRSTB";
  attribute X_INTERFACE_INFO of DDR_addr : signal is "xilinx.com:interface:ddrx:1.0 DDR ADDR";
  attribute X_INTERFACE_PARAMETER of DDR_addr : signal is "XIL_INTERFACENAME DDR, AXI_ARBITRATION_SCHEME TDM, BURST_LENGTH 8, CAN_DEBUG false, CAS_LATENCY 11, CAS_WRITE_LATENCY 11, CS_ENABLED true, DATA_MASK_ENABLED true, DATA_WIDTH 8, MEMORY_TYPE COMPONENTS, MEM_ADDR_MAP ROW_COLUMN_BANK, SLOT Single, TIMEPERIOD_PS 1250";
  attribute X_INTERFACE_INFO of DDR_ba : signal is "xilinx.com:interface:ddrx:1.0 DDR BA";
  attribute X_INTERFACE_INFO of DDR_dm : signal is "xilinx.com:interface:ddrx:1.0 DDR DM";
  attribute X_INTERFACE_INFO of DDR_dq : signal is "xilinx.com:interface:ddrx:1.0 DDR DQ";
  attribute X_INTERFACE_INFO of DDR_dqs_n : signal is "xilinx.com:interface:ddrx:1.0 DDR DQS_N";
  attribute X_INTERFACE_INFO of DDR_dqs_p : signal is "xilinx.com:interface:ddrx:1.0 DDR DQS_P";
  attribute X_INTERFACE_INFO of FIXED_IO_mio : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO MIO";
begin
  clk_in_0_1 <= clk_in_0;
  clk_out_0 <= oddr_0_clk_out;
axi_bram_ctrl_0: component zsys_axi_bram_ctrl_0_0
     port map (
      bram_addr_a(15 downto 0) => axi_bram_ctrl_0_BRAM_PORTA_ADDR(15 downto 0),
      bram_clk_a => axi_bram_ctrl_0_BRAM_PORTA_CLK,
      bram_en_a => axi_bram_ctrl_0_BRAM_PORTA_EN,
      bram_rddata_a(31 downto 0) => axi_bram_ctrl_0_BRAM_PORTA_DOUT(31 downto 0),
      bram_rst_a => axi_bram_ctrl_0_BRAM_PORTA_RST,
      bram_we_a(3 downto 0) => axi_bram_ctrl_0_BRAM_PORTA_WE(3 downto 0),
      bram_wrdata_a(31 downto 0) => axi_bram_ctrl_0_BRAM_PORTA_DIN(31 downto 0),
      s_axi_aclk => ps7_FCLK_CLK0,
      s_axi_araddr(15 downto 13) => B"000",
      s_axi_araddr(12 downto 0) => axi_interconnect_0_M00_AXI_ARADDR(12 downto 0),
      s_axi_aresetn => proc_sys_reset_0_interconnect_aresetn(0),
      s_axi_arprot(2 downto 0) => axi_interconnect_0_M00_AXI_ARPROT(2 downto 0),
      s_axi_arready => axi_interconnect_0_M00_AXI_ARREADY,
      s_axi_arvalid => axi_interconnect_0_M00_AXI_ARVALID,
      s_axi_awaddr(15 downto 13) => B"000",
      s_axi_awaddr(12 downto 0) => axi_interconnect_0_M00_AXI_AWADDR(12 downto 0),
      s_axi_awprot(2 downto 0) => axi_interconnect_0_M00_AXI_AWPROT(2 downto 0),
      s_axi_awready => axi_interconnect_0_M00_AXI_AWREADY,
      s_axi_awvalid => axi_interconnect_0_M00_AXI_AWVALID,
      s_axi_bready => axi_interconnect_0_M00_AXI_BREADY,
      s_axi_bresp(1 downto 0) => axi_interconnect_0_M00_AXI_BRESP(1 downto 0),
      s_axi_bvalid => axi_interconnect_0_M00_AXI_BVALID,
      s_axi_rdata(31 downto 0) => axi_interconnect_0_M00_AXI_RDATA(31 downto 0),
      s_axi_rready => axi_interconnect_0_M00_AXI_RREADY,
      s_axi_rresp(1 downto 0) => axi_interconnect_0_M00_AXI_RRESP(1 downto 0),
      s_axi_rvalid => axi_interconnect_0_M00_AXI_RVALID,
      s_axi_wdata(31 downto 0) => axi_interconnect_0_M00_AXI_WDATA(31 downto 0),
      s_axi_wready => axi_interconnect_0_M00_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => axi_interconnect_0_M00_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => axi_interconnect_0_M00_AXI_WVALID
    );
axi_bram_ctrl_0_bram: component zsys_axi_bram_ctrl_0_bram_0
     port map (
      addra(31 downto 16) => B"0000000000000000",
      addra(15 downto 0) => axi_bram_ctrl_0_BRAM_PORTA_ADDR(15 downto 0),
      addrb(31 downto 16) => B"0000000000000000",
      addrb(15 downto 0) => axi_bram_ctrl_1_BRAM_PORTA_ADDR(15 downto 0),
      clka => axi_bram_ctrl_0_BRAM_PORTA_CLK,
      clkb => axi_bram_ctrl_1_BRAM_PORTA_CLK,
      dina(31 downto 0) => axi_bram_ctrl_0_BRAM_PORTA_DIN(31 downto 0),
      dinb(31 downto 0) => axi_bram_ctrl_1_BRAM_PORTA_DIN(31 downto 0),
      douta(31 downto 0) => axi_bram_ctrl_0_BRAM_PORTA_DOUT(31 downto 0),
      doutb(31 downto 0) => axi_bram_ctrl_1_BRAM_PORTA_DOUT(31 downto 0),
      ena => axi_bram_ctrl_0_BRAM_PORTA_EN,
      enb => axi_bram_ctrl_1_BRAM_PORTA_EN,
      rsta => axi_bram_ctrl_0_BRAM_PORTA_RST,
      rsta_busy => NLW_axi_bram_ctrl_0_bram_rsta_busy_UNCONNECTED,
      rstb => axi_bram_ctrl_1_BRAM_PORTA_RST,
      rstb_busy => NLW_axi_bram_ctrl_0_bram_rstb_busy_UNCONNECTED,
      wea(3 downto 0) => axi_bram_ctrl_0_BRAM_PORTA_WE(3 downto 0),
      web(3 downto 0) => axi_bram_ctrl_1_BRAM_PORTA_WE(3 downto 0)
    );
axi_bram_ctrl_1: component zsys_axi_bram_ctrl_1_0
     port map (
      bram_addr_a(15 downto 0) => axi_bram_ctrl_1_BRAM_PORTA_ADDR(15 downto 0),
      bram_clk_a => axi_bram_ctrl_1_BRAM_PORTA_CLK,
      bram_en_a => axi_bram_ctrl_1_BRAM_PORTA_EN,
      bram_rddata_a(31 downto 0) => axi_bram_ctrl_1_BRAM_PORTA_DOUT(31 downto 0),
      bram_rst_a => axi_bram_ctrl_1_BRAM_PORTA_RST,
      bram_we_a(3 downto 0) => axi_bram_ctrl_1_BRAM_PORTA_WE(3 downto 0),
      bram_wrdata_a(31 downto 0) => axi_bram_ctrl_1_BRAM_PORTA_DIN(31 downto 0),
      s_axi_aclk => ps7_FCLK_CLK0,
      s_axi_araddr(15 downto 0) => axi_interconnect_1_M00_AXI_ARADDR(15 downto 0),
      s_axi_arburst(1 downto 0) => axi_interconnect_1_M00_AXI_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => axi_interconnect_1_M00_AXI_ARCACHE(3 downto 0),
      s_axi_aresetn => proc_sys_reset_0_peripheral_aresetn(0),
      s_axi_arid(11 downto 0) => axi_interconnect_1_M00_AXI_ARID(11 downto 0),
      s_axi_arlen(7 downto 0) => axi_interconnect_1_M00_AXI_ARLEN(7 downto 0),
      s_axi_arlock => axi_interconnect_1_M00_AXI_ARLOCK(0),
      s_axi_arprot(2 downto 0) => axi_interconnect_1_M00_AXI_ARPROT(2 downto 0),
      s_axi_arready => axi_interconnect_1_M00_AXI_ARREADY,
      s_axi_arsize(2 downto 0) => axi_interconnect_1_M00_AXI_ARSIZE(2 downto 0),
      s_axi_arvalid => axi_interconnect_1_M00_AXI_ARVALID,
      s_axi_awaddr(15 downto 0) => axi_interconnect_1_M00_AXI_AWADDR(15 downto 0),
      s_axi_awburst(1 downto 0) => axi_interconnect_1_M00_AXI_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => axi_interconnect_1_M00_AXI_AWCACHE(3 downto 0),
      s_axi_awid(11 downto 0) => axi_interconnect_1_M00_AXI_AWID(11 downto 0),
      s_axi_awlen(7 downto 0) => axi_interconnect_1_M00_AXI_AWLEN(7 downto 0),
      s_axi_awlock => axi_interconnect_1_M00_AXI_AWLOCK(0),
      s_axi_awprot(2 downto 0) => axi_interconnect_1_M00_AXI_AWPROT(2 downto 0),
      s_axi_awready => axi_interconnect_1_M00_AXI_AWREADY,
      s_axi_awsize(2 downto 0) => axi_interconnect_1_M00_AXI_AWSIZE(2 downto 0),
      s_axi_awvalid => axi_interconnect_1_M00_AXI_AWVALID,
      s_axi_bid(11 downto 0) => axi_interconnect_1_M00_AXI_BID(11 downto 0),
      s_axi_bready => axi_interconnect_1_M00_AXI_BREADY,
      s_axi_bresp(1 downto 0) => axi_interconnect_1_M00_AXI_BRESP(1 downto 0),
      s_axi_bvalid => axi_interconnect_1_M00_AXI_BVALID,
      s_axi_rdata(31 downto 0) => axi_interconnect_1_M00_AXI_RDATA(31 downto 0),
      s_axi_rid(11 downto 0) => axi_interconnect_1_M00_AXI_RID(11 downto 0),
      s_axi_rlast => axi_interconnect_1_M00_AXI_RLAST,
      s_axi_rready => axi_interconnect_1_M00_AXI_RREADY,
      s_axi_rresp(1 downto 0) => axi_interconnect_1_M00_AXI_RRESP(1 downto 0),
      s_axi_rvalid => axi_interconnect_1_M00_AXI_RVALID,
      s_axi_wdata(31 downto 0) => axi_interconnect_1_M00_AXI_WDATA(31 downto 0),
      s_axi_wlast => axi_interconnect_1_M00_AXI_WLAST,
      s_axi_wready => axi_interconnect_1_M00_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => axi_interconnect_1_M00_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => axi_interconnect_1_M00_AXI_WVALID
    );
axi_interconnect_0: entity work.zsys_axi_interconnect_0_0
     port map (
      ACLK => ps7_FCLK_CLK0,
      ARESETN => proc_sys_reset_0_interconnect_aresetn(0),
      M00_ACLK => ps7_FCLK_CLK0,
      M00_ARESETN => proc_sys_reset_0_interconnect_aresetn(0),
      M00_AXI_araddr(12 downto 0) => axi_interconnect_0_M00_AXI_ARADDR(12 downto 0),
      M00_AXI_arprot(2 downto 0) => axi_interconnect_0_M00_AXI_ARPROT(2 downto 0),
      M00_AXI_arready => axi_interconnect_0_M00_AXI_ARREADY,
      M00_AXI_arvalid => axi_interconnect_0_M00_AXI_ARVALID,
      M00_AXI_awaddr(12 downto 0) => axi_interconnect_0_M00_AXI_AWADDR(12 downto 0),
      M00_AXI_awprot(2 downto 0) => axi_interconnect_0_M00_AXI_AWPROT(2 downto 0),
      M00_AXI_awready => axi_interconnect_0_M00_AXI_AWREADY,
      M00_AXI_awvalid => axi_interconnect_0_M00_AXI_AWVALID,
      M00_AXI_bready => axi_interconnect_0_M00_AXI_BREADY,
      M00_AXI_bresp(1 downto 0) => axi_interconnect_0_M00_AXI_BRESP(1 downto 0),
      M00_AXI_bvalid => axi_interconnect_0_M00_AXI_BVALID,
      M00_AXI_rdata(31 downto 0) => axi_interconnect_0_M00_AXI_RDATA(31 downto 0),
      M00_AXI_rready => axi_interconnect_0_M00_AXI_RREADY,
      M00_AXI_rresp(1 downto 0) => axi_interconnect_0_M00_AXI_RRESP(1 downto 0),
      M00_AXI_rvalid => axi_interconnect_0_M00_AXI_RVALID,
      M00_AXI_wdata(31 downto 0) => axi_interconnect_0_M00_AXI_WDATA(31 downto 0),
      M00_AXI_wready => axi_interconnect_0_M00_AXI_WREADY,
      M00_AXI_wstrb(3 downto 0) => axi_interconnect_0_M00_AXI_WSTRB(3 downto 0),
      M00_AXI_wvalid => axi_interconnect_0_M00_AXI_WVALID,
      S00_ACLK => ps7_FCLK_CLK0,
      S00_ARESETN => proc_sys_reset_0_interconnect_aresetn(0),
      S00_AXI_araddr(12 downto 0) => S00_AXI_1_ARADDR(12 downto 0),
      S00_AXI_arprot(2 downto 0) => S00_AXI_1_ARPROT(2 downto 0),
      S00_AXI_arready => S00_AXI_1_ARREADY,
      S00_AXI_arvalid => S00_AXI_1_ARVALID,
      S00_AXI_awaddr(12 downto 0) => S00_AXI_1_AWADDR(12 downto 0),
      S00_AXI_awprot(2 downto 0) => S00_AXI_1_AWPROT(2 downto 0),
      S00_AXI_awready => S00_AXI_1_AWREADY,
      S00_AXI_awvalid => S00_AXI_1_AWVALID,
      S00_AXI_bready => S00_AXI_1_BREADY,
      S00_AXI_bresp(1 downto 0) => S00_AXI_1_BRESP(1 downto 0),
      S00_AXI_bvalid => S00_AXI_1_BVALID,
      S00_AXI_rdata(31 downto 0) => S00_AXI_1_RDATA(31 downto 0),
      S00_AXI_rready => S00_AXI_1_RREADY,
      S00_AXI_rresp(1 downto 0) => S00_AXI_1_RRESP(1 downto 0),
      S00_AXI_rvalid => S00_AXI_1_RVALID,
      S00_AXI_wdata(31 downto 0) => S00_AXI_1_WDATA(31 downto 0),
      S00_AXI_wready => S00_AXI_1_WREADY,
      S00_AXI_wstrb(3 downto 0) => S00_AXI_1_WSTRB(3 downto 0),
      S00_AXI_wvalid => S00_AXI_1_WVALID
    );
axi_interconnect_1: entity work.zsys_axi_interconnect_1_0
     port map (
      ACLK => ps7_FCLK_CLK0,
      ARESETN => proc_sys_reset_0_peripheral_aresetn(0),
      M00_ACLK => ps7_FCLK_CLK0,
      M00_ARESETN => proc_sys_reset_0_peripheral_aresetn(0),
      M00_AXI_araddr(31 downto 0) => axi_interconnect_1_M00_AXI_ARADDR(31 downto 0),
      M00_AXI_arburst(1 downto 0) => axi_interconnect_1_M00_AXI_ARBURST(1 downto 0),
      M00_AXI_arcache(3 downto 0) => axi_interconnect_1_M00_AXI_ARCACHE(3 downto 0),
      M00_AXI_arid(11 downto 0) => axi_interconnect_1_M00_AXI_ARID(11 downto 0),
      M00_AXI_arlen(7 downto 0) => axi_interconnect_1_M00_AXI_ARLEN(7 downto 0),
      M00_AXI_arlock(0) => axi_interconnect_1_M00_AXI_ARLOCK(0),
      M00_AXI_arprot(2 downto 0) => axi_interconnect_1_M00_AXI_ARPROT(2 downto 0),
      M00_AXI_arready => axi_interconnect_1_M00_AXI_ARREADY,
      M00_AXI_arsize(2 downto 0) => axi_interconnect_1_M00_AXI_ARSIZE(2 downto 0),
      M00_AXI_arvalid => axi_interconnect_1_M00_AXI_ARVALID,
      M00_AXI_awaddr(31 downto 0) => axi_interconnect_1_M00_AXI_AWADDR(31 downto 0),
      M00_AXI_awburst(1 downto 0) => axi_interconnect_1_M00_AXI_AWBURST(1 downto 0),
      M00_AXI_awcache(3 downto 0) => axi_interconnect_1_M00_AXI_AWCACHE(3 downto 0),
      M00_AXI_awid(11 downto 0) => axi_interconnect_1_M00_AXI_AWID(11 downto 0),
      M00_AXI_awlen(7 downto 0) => axi_interconnect_1_M00_AXI_AWLEN(7 downto 0),
      M00_AXI_awlock(0) => axi_interconnect_1_M00_AXI_AWLOCK(0),
      M00_AXI_awprot(2 downto 0) => axi_interconnect_1_M00_AXI_AWPROT(2 downto 0),
      M00_AXI_awready => axi_interconnect_1_M00_AXI_AWREADY,
      M00_AXI_awsize(2 downto 0) => axi_interconnect_1_M00_AXI_AWSIZE(2 downto 0),
      M00_AXI_awvalid => axi_interconnect_1_M00_AXI_AWVALID,
      M00_AXI_bid(11 downto 0) => axi_interconnect_1_M00_AXI_BID(11 downto 0),
      M00_AXI_bready => axi_interconnect_1_M00_AXI_BREADY,
      M00_AXI_bresp(1 downto 0) => axi_interconnect_1_M00_AXI_BRESP(1 downto 0),
      M00_AXI_bvalid => axi_interconnect_1_M00_AXI_BVALID,
      M00_AXI_rdata(31 downto 0) => axi_interconnect_1_M00_AXI_RDATA(31 downto 0),
      M00_AXI_rid(11 downto 0) => axi_interconnect_1_M00_AXI_RID(11 downto 0),
      M00_AXI_rlast => axi_interconnect_1_M00_AXI_RLAST,
      M00_AXI_rready => axi_interconnect_1_M00_AXI_RREADY,
      M00_AXI_rresp(1 downto 0) => axi_interconnect_1_M00_AXI_RRESP(1 downto 0),
      M00_AXI_rvalid => axi_interconnect_1_M00_AXI_RVALID,
      M00_AXI_wdata(31 downto 0) => axi_interconnect_1_M00_AXI_WDATA(31 downto 0),
      M00_AXI_wlast => axi_interconnect_1_M00_AXI_WLAST,
      M00_AXI_wready => axi_interconnect_1_M00_AXI_WREADY,
      M00_AXI_wstrb(3 downto 0) => axi_interconnect_1_M00_AXI_WSTRB(3 downto 0),
      M00_AXI_wvalid => axi_interconnect_1_M00_AXI_WVALID,
      S00_ACLK => ps7_FCLK_CLK0,
      S00_ARESETN => proc_sys_reset_0_peripheral_aresetn(0),
      S00_AXI_araddr(31 downto 0) => S00_AXI_2_ARADDR(31 downto 0),
      S00_AXI_arburst(1 downto 0) => S00_AXI_2_ARBURST(1 downto 0),
      S00_AXI_arcache(3 downto 0) => S00_AXI_2_ARCACHE(3 downto 0),
      S00_AXI_arid(11 downto 0) => S00_AXI_2_ARID(11 downto 0),
      S00_AXI_arlen(3 downto 0) => S00_AXI_2_ARLEN(3 downto 0),
      S00_AXI_arlock(1 downto 0) => S00_AXI_2_ARLOCK(1 downto 0),
      S00_AXI_arprot(2 downto 0) => S00_AXI_2_ARPROT(2 downto 0),
      S00_AXI_arqos(3 downto 0) => S00_AXI_2_ARQOS(3 downto 0),
      S00_AXI_arready => S00_AXI_2_ARREADY,
      S00_AXI_arsize(2 downto 0) => S00_AXI_2_ARSIZE(2 downto 0),
      S00_AXI_arvalid => S00_AXI_2_ARVALID,
      S00_AXI_awaddr(31 downto 0) => S00_AXI_2_AWADDR(31 downto 0),
      S00_AXI_awburst(1 downto 0) => S00_AXI_2_AWBURST(1 downto 0),
      S00_AXI_awcache(3 downto 0) => S00_AXI_2_AWCACHE(3 downto 0),
      S00_AXI_awid(11 downto 0) => S00_AXI_2_AWID(11 downto 0),
      S00_AXI_awlen(3 downto 0) => S00_AXI_2_AWLEN(3 downto 0),
      S00_AXI_awlock(1 downto 0) => S00_AXI_2_AWLOCK(1 downto 0),
      S00_AXI_awprot(2 downto 0) => S00_AXI_2_AWPROT(2 downto 0),
      S00_AXI_awqos(3 downto 0) => S00_AXI_2_AWQOS(3 downto 0),
      S00_AXI_awready => S00_AXI_2_AWREADY,
      S00_AXI_awsize(2 downto 0) => S00_AXI_2_AWSIZE(2 downto 0),
      S00_AXI_awvalid => S00_AXI_2_AWVALID,
      S00_AXI_bid(11 downto 0) => S00_AXI_2_BID(11 downto 0),
      S00_AXI_bready => S00_AXI_2_BREADY,
      S00_AXI_bresp(1 downto 0) => S00_AXI_2_BRESP(1 downto 0),
      S00_AXI_bvalid => S00_AXI_2_BVALID,
      S00_AXI_rdata(31 downto 0) => S00_AXI_2_RDATA(31 downto 0),
      S00_AXI_rid(11 downto 0) => S00_AXI_2_RID(11 downto 0),
      S00_AXI_rlast => S00_AXI_2_RLAST,
      S00_AXI_rready => S00_AXI_2_RREADY,
      S00_AXI_rresp(1 downto 0) => S00_AXI_2_RRESP(1 downto 0),
      S00_AXI_rvalid => S00_AXI_2_RVALID,
      S00_AXI_wdata(31 downto 0) => S00_AXI_2_WDATA(31 downto 0),
      S00_AXI_wid(11 downto 0) => S00_AXI_2_WID(11 downto 0),
      S00_AXI_wlast => S00_AXI_2_WLAST,
      S00_AXI_wready => S00_AXI_2_WREADY,
      S00_AXI_wstrb(3 downto 0) => S00_AXI_2_WSTRB(3 downto 0),
      S00_AXI_wvalid => S00_AXI_2_WVALID
    );
axi_protocol_converter_0: component zsys_axi_protocol_converter_0_0
     port map (
      aclk => ps7_FCLK_CLK0,
      aresetn => proc_sys_reset_0_interconnect_aresetn(0),
      m_axi_araddr(12 downto 0) => S00_AXI_1_ARADDR(12 downto 0),
      m_axi_arprot(2 downto 0) => S00_AXI_1_ARPROT(2 downto 0),
      m_axi_arready => S00_AXI_1_ARREADY,
      m_axi_arvalid => S00_AXI_1_ARVALID,
      m_axi_awaddr(12 downto 0) => S00_AXI_1_AWADDR(12 downto 0),
      m_axi_awprot(2 downto 0) => S00_AXI_1_AWPROT(2 downto 0),
      m_axi_awready => S00_AXI_1_AWREADY,
      m_axi_awvalid => S00_AXI_1_AWVALID,
      m_axi_bready => S00_AXI_1_BREADY,
      m_axi_bresp(1 downto 0) => S00_AXI_1_BRESP(1 downto 0),
      m_axi_bvalid => S00_AXI_1_BVALID,
      m_axi_rdata(31 downto 0) => S00_AXI_1_RDATA(31 downto 0),
      m_axi_rready => S00_AXI_1_RREADY,
      m_axi_rresp(1 downto 0) => S00_AXI_1_RRESP(1 downto 0),
      m_axi_rvalid => S00_AXI_1_RVALID,
      m_axi_wdata(31 downto 0) => S00_AXI_1_WDATA(31 downto 0),
      m_axi_wready => S00_AXI_1_WREADY,
      m_axi_wstrb(3 downto 0) => S00_AXI_1_WSTRB(3 downto 0),
      m_axi_wvalid => S00_AXI_1_WVALID,
      s_axi_araddr(12 downto 0) => wb2axi_0_m_axi_ARADDR(12 downto 0),
      s_axi_arburst(1 downto 0) => wb2axi_0_m_axi_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => wb2axi_0_m_axi_ARCACHE(3 downto 0),
      s_axi_arid(0) => wb2axi_0_m_axi_ARID(0),
      s_axi_arlen(7 downto 0) => wb2axi_0_m_axi_ARLEN(7 downto 0),
      s_axi_arlock(0) => '0',
      s_axi_arprot(2 downto 0) => wb2axi_0_m_axi_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => wb2axi_0_m_axi_ARQOS(3 downto 0),
      s_axi_arready => wb2axi_0_m_axi_ARREADY,
      s_axi_arregion(3 downto 0) => B"0000",
      s_axi_arsize(2 downto 0) => wb2axi_0_m_axi_ARSIZE(2 downto 0),
      s_axi_arvalid => wb2axi_0_m_axi_ARVALID,
      s_axi_awaddr(12 downto 0) => wb2axi_0_m_axi_AWADDR(12 downto 0),
      s_axi_awburst(1 downto 0) => wb2axi_0_m_axi_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => wb2axi_0_m_axi_AWCACHE(3 downto 0),
      s_axi_awid(0) => wb2axi_0_m_axi_AWID(0),
      s_axi_awlen(7 downto 0) => wb2axi_0_m_axi_AWLEN(7 downto 0),
      s_axi_awlock(0) => '0',
      s_axi_awprot(2 downto 0) => wb2axi_0_m_axi_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => wb2axi_0_m_axi_AWQOS(3 downto 0),
      s_axi_awready => wb2axi_0_m_axi_AWREADY,
      s_axi_awregion(3 downto 0) => B"0000",
      s_axi_awsize(2 downto 0) => wb2axi_0_m_axi_AWSIZE(2 downto 0),
      s_axi_awvalid => wb2axi_0_m_axi_AWVALID,
      s_axi_bid(0) => wb2axi_0_m_axi_BID(0),
      s_axi_bready => wb2axi_0_m_axi_BREADY,
      s_axi_bresp(1 downto 0) => wb2axi_0_m_axi_BRESP(1 downto 0),
      s_axi_bvalid => wb2axi_0_m_axi_BVALID,
      s_axi_rdata(31 downto 0) => wb2axi_0_m_axi_RDATA(31 downto 0),
      s_axi_rid(0) => wb2axi_0_m_axi_RID(0),
      s_axi_rlast => wb2axi_0_m_axi_RLAST,
      s_axi_rready => wb2axi_0_m_axi_RREADY,
      s_axi_rresp(1 downto 0) => wb2axi_0_m_axi_RRESP(1 downto 0),
      s_axi_rvalid => wb2axi_0_m_axi_RVALID,
      s_axi_wdata(31 downto 0) => wb2axi_0_m_axi_WDATA(31 downto 0),
      s_axi_wlast => wb2axi_0_m_axi_WLAST,
      s_axi_wready => wb2axi_0_m_axi_WREADY,
      s_axi_wstrb(3 downto 0) => wb2axi_0_m_axi_WSTRB(3 downto 0),
      s_axi_wvalid => wb2axi_0_m_axi_WVALID
    );
axis_data_fifo_0: component zsys_axis_data_fifo_0_0
     port map (
      axis_data_count(31 downto 0) => NLW_axis_data_fifo_0_axis_data_count_UNCONNECTED(31 downto 0),
      axis_rd_data_count(31 downto 0) => NLW_axis_data_fifo_0_axis_rd_data_count_UNCONNECTED(31 downto 0),
      axis_wr_data_count(31 downto 0) => NLW_axis_data_fifo_0_axis_wr_data_count_UNCONNECTED(31 downto 0),
      m_axis_aclk => ps7_FCLK_CLK0,
      m_axis_aresetn => proc_sys_reset_0_interconnect_aresetn(0),
      m_axis_tdata(31 downto 0) => CMD_TDATA(31 downto 0),
      m_axis_tlast => CMD_TLAST,
      m_axis_tready => '1',
      m_axis_tuser(7 downto 0) => CMD_TUSER(7 downto 0),
      m_axis_tvalid => CMD_TVALID,
      s_axis_aclk => SDIO_CLK,
      s_axis_aresetn => proc_sys_reset_0_interconnect_aresetn(0),
      s_axis_tdata(31 downto 0) => sdio_monitor_axis_v1_0_0_m_cmd_axis_TDATA(31 downto 0),
      s_axis_tlast => sdio_monitor_axis_v1_0_0_m_cmd_axis_TLAST,
      s_axis_tready => sdio_monitor_axis_v1_0_0_m_cmd_axis_TREADY,
      s_axis_tuser(7 downto 0) => sdio_monitor_axis_v1_0_0_m_cmd_axis_TUSER(7 downto 0),
      s_axis_tvalid => sdio_monitor_axis_v1_0_0_m_cmd_axis_TVALID
    );
clock_detector_0: component zsys_clock_detector_0_0
     port map (
      SLOW => SLOW,
      clk => SDIO_CLK,
      refclk => ps7_FCLK_CLK0
    );
emio_sdemu_0: component zsys_emio_sdemu_0_0
     port map (
      clk_100 => ps7_FCLK_CLK1,
      clk_200 => ps7_FCLK_CLK2,
      clk_50 => ps7_FCLK_CLK0,
      clk_in => clk_in_0_1,
      clk_out => emio_sdemu_0_clk_out,
      opt_enable_hs => '0',
      reset_n => proc_sys_reset_0_peripheral_aresetn(0),
      sd_buspower => ps7_SDIO_1_BUSPOW,
      sd_busvolt(2 downto 0) => ps7_SDIO_1_BUSVOLT(2 downto 0),
      sd_cdn => ps7_SDIO_1_CDN,
      sd_clk => ps7_SDIO0_CLK,
      sd_clk_fb => NLW_emio_sdemu_0_sd_clk_fb_UNCONNECTED,
      sd_cmd_i => ps7_SDIO_1_CMD_I,
      sd_cmd_o => ps7_SDIO_1_CMD_O,
      sd_cmd_t => ps7_SDIO_1_CMD_T,
      sd_dat_i(3 downto 0) => ps7_SDIO_1_DATA_I(3 downto 0),
      sd_dat_o(3 downto 0) => ps7_SDIO_1_DATA_O(3 downto 0),
      sd_dat_t(3 downto 0) => ps7_SDIO_1_DATA_T(3 downto 0),
      sd_led => ps7_SDIO_1_LED,
      sd_wp => ps7_SDIO_1_WP,
      state_debug(5 downto 0) => NLW_emio_sdemu_0_state_debug_UNCONNECTED(5 downto 0),
      wbm_ack_i => emio_sdemu_0_WB_ack,
      wbm_adr_o(31 downto 0) => emio_sdemu_0_WB_adr(31 downto 0),
      wbm_bte_o(1 downto 0) => emio_sdemu_0_WB_bte(1 downto 0),
      wbm_clk_o => NLW_emio_sdemu_0_wbm_clk_o_UNCONNECTED,
      wbm_cti_o(2 downto 0) => emio_sdemu_0_WB_cti(2 downto 0),
      wbm_cyc_o => emio_sdemu_0_WB_cyc,
      wbm_dat_i(31 downto 0) => emio_sdemu_0_WB_dat_i(31 downto 0),
      wbm_dat_o(31 downto 0) => emio_sdemu_0_WB_dat_o(31 downto 0),
      wbm_sel_o(3 downto 0) => emio_sdemu_0_WB_sel(3 downto 0),
      wbm_stb_o => emio_sdemu_0_WB_stb,
      wbm_we_o => emio_sdemu_0_WB_we
    );
oddr_0: component zsys_oddr_0_0
     port map (
      clk_in => util_ds_buf_0_BUFG_O(0),
      clk_out => oddr_0_clk_out
    );
proc_sys_reset_0: component zsys_proc_sys_reset_0_0
     port map (
      aux_reset_in => aux_reset(0),
      bus_struct_reset(0) => NLW_proc_sys_reset_0_bus_struct_reset_UNCONNECTED(0),
      dcm_locked => '1',
      ext_reset_in => ps7_FCLK_RESET0_N,
      interconnect_aresetn(0) => proc_sys_reset_0_interconnect_aresetn(0),
      mb_debug_sys_rst => '0',
      mb_reset => NLW_proc_sys_reset_0_mb_reset_UNCONNECTED,
      peripheral_aresetn(0) => proc_sys_reset_0_peripheral_aresetn(0),
      peripheral_reset(0) => NLW_proc_sys_reset_0_peripheral_reset_UNCONNECTED(0),
      slowest_sync_clk => ps7_FCLK_CLK0
    );
ps7: component zsys_processing_system7_0_1
     port map (
      DDR_Addr(14 downto 0) => DDR_addr(14 downto 0),
      DDR_BankAddr(2 downto 0) => DDR_ba(2 downto 0),
      DDR_CAS_n => DDR_cas_n,
      DDR_CKE => DDR_cke,
      DDR_CS_n => DDR_cs_n,
      DDR_Clk => DDR_ck_p,
      DDR_Clk_n => DDR_ck_n,
      DDR_DM(3 downto 0) => DDR_dm(3 downto 0),
      DDR_DQ(31 downto 0) => DDR_dq(31 downto 0),
      DDR_DQS(3 downto 0) => DDR_dqs_p(3 downto 0),
      DDR_DQS_n(3 downto 0) => DDR_dqs_n(3 downto 0),
      DDR_DRSTB => DDR_reset_n,
      DDR_ODT => DDR_odt,
      DDR_RAS_n => DDR_ras_n,
      DDR_VRN => FIXED_IO_ddr_vrn,
      DDR_VRP => FIXED_IO_ddr_vrp,
      DDR_WEB => DDR_we_n,
      FCLK_CLK0 => ps7_FCLK_CLK0,
      FCLK_CLK1 => ps7_FCLK_CLK1,
      FCLK_CLK2 => ps7_FCLK_CLK2,
      FCLK_RESET0_N => ps7_FCLK_RESET0_N,
      GPIO_I(1 downto 0) => B"00",
      GPIO_O(1 downto 0) => NLW_ps7_GPIO_O_UNCONNECTED(1 downto 0),
      GPIO_T(1 downto 0) => NLW_ps7_GPIO_T_UNCONNECTED(1 downto 0),
      IRQ_F2P(0) => '0',
      MIO(53 downto 0) => FIXED_IO_mio(53 downto 0),
      M_AXI_GP0_ACLK => ps7_FCLK_CLK0,
      M_AXI_GP0_ARADDR(31 downto 0) => S00_AXI_2_ARADDR(31 downto 0),
      M_AXI_GP0_ARBURST(1 downto 0) => S00_AXI_2_ARBURST(1 downto 0),
      M_AXI_GP0_ARCACHE(3 downto 0) => S00_AXI_2_ARCACHE(3 downto 0),
      M_AXI_GP0_ARID(11 downto 0) => S00_AXI_2_ARID(11 downto 0),
      M_AXI_GP0_ARLEN(3 downto 0) => S00_AXI_2_ARLEN(3 downto 0),
      M_AXI_GP0_ARLOCK(1 downto 0) => S00_AXI_2_ARLOCK(1 downto 0),
      M_AXI_GP0_ARPROT(2 downto 0) => S00_AXI_2_ARPROT(2 downto 0),
      M_AXI_GP0_ARQOS(3 downto 0) => S00_AXI_2_ARQOS(3 downto 0),
      M_AXI_GP0_ARREADY => S00_AXI_2_ARREADY,
      M_AXI_GP0_ARSIZE(2 downto 0) => S00_AXI_2_ARSIZE(2 downto 0),
      M_AXI_GP0_ARVALID => S00_AXI_2_ARVALID,
      M_AXI_GP0_AWADDR(31 downto 0) => S00_AXI_2_AWADDR(31 downto 0),
      M_AXI_GP0_AWBURST(1 downto 0) => S00_AXI_2_AWBURST(1 downto 0),
      M_AXI_GP0_AWCACHE(3 downto 0) => S00_AXI_2_AWCACHE(3 downto 0),
      M_AXI_GP0_AWID(11 downto 0) => S00_AXI_2_AWID(11 downto 0),
      M_AXI_GP0_AWLEN(3 downto 0) => S00_AXI_2_AWLEN(3 downto 0),
      M_AXI_GP0_AWLOCK(1 downto 0) => S00_AXI_2_AWLOCK(1 downto 0),
      M_AXI_GP0_AWPROT(2 downto 0) => S00_AXI_2_AWPROT(2 downto 0),
      M_AXI_GP0_AWQOS(3 downto 0) => S00_AXI_2_AWQOS(3 downto 0),
      M_AXI_GP0_AWREADY => S00_AXI_2_AWREADY,
      M_AXI_GP0_AWSIZE(2 downto 0) => S00_AXI_2_AWSIZE(2 downto 0),
      M_AXI_GP0_AWVALID => S00_AXI_2_AWVALID,
      M_AXI_GP0_BID(11 downto 0) => S00_AXI_2_BID(11 downto 0),
      M_AXI_GP0_BREADY => S00_AXI_2_BREADY,
      M_AXI_GP0_BRESP(1 downto 0) => S00_AXI_2_BRESP(1 downto 0),
      M_AXI_GP0_BVALID => S00_AXI_2_BVALID,
      M_AXI_GP0_RDATA(31 downto 0) => S00_AXI_2_RDATA(31 downto 0),
      M_AXI_GP0_RID(11 downto 0) => S00_AXI_2_RID(11 downto 0),
      M_AXI_GP0_RLAST => S00_AXI_2_RLAST,
      M_AXI_GP0_RREADY => S00_AXI_2_RREADY,
      M_AXI_GP0_RRESP(1 downto 0) => S00_AXI_2_RRESP(1 downto 0),
      M_AXI_GP0_RVALID => S00_AXI_2_RVALID,
      M_AXI_GP0_WDATA(31 downto 0) => S00_AXI_2_WDATA(31 downto 0),
      M_AXI_GP0_WID(11 downto 0) => S00_AXI_2_WID(11 downto 0),
      M_AXI_GP0_WLAST => S00_AXI_2_WLAST,
      M_AXI_GP0_WREADY => S00_AXI_2_WREADY,
      M_AXI_GP0_WSTRB(3 downto 0) => S00_AXI_2_WSTRB(3 downto 0),
      M_AXI_GP0_WVALID => S00_AXI_2_WVALID,
      PS_CLK => FIXED_IO_ps_clk,
      PS_PORB => FIXED_IO_ps_porb,
      PS_SRSTB => FIXED_IO_ps_srstb,
      SDIO0_BUSPOW => ps7_SDIO_1_BUSPOW,
      SDIO0_BUSVOLT(2 downto 0) => ps7_SDIO_1_BUSVOLT(2 downto 0),
      SDIO0_CDN => ps7_SDIO_1_CDN,
      SDIO0_CLK => ps7_SDIO0_CLK,
      SDIO0_CLK_FB => ps7_SDIO0_CLK,
      SDIO0_CMD_I => ps7_SDIO_1_CMD_I,
      SDIO0_CMD_O => ps7_SDIO_1_CMD_O,
      SDIO0_CMD_T => ps7_SDIO_1_CMD_T,
      SDIO0_DATA_I(3 downto 0) => ps7_SDIO_1_DATA_I(3 downto 0),
      SDIO0_DATA_O(3 downto 0) => ps7_SDIO_1_DATA_O(3 downto 0),
      SDIO0_DATA_T(3 downto 0) => ps7_SDIO_1_DATA_T(3 downto 0),
      SDIO0_LED => ps7_SDIO_1_LED,
      SDIO0_WP => ps7_SDIO_1_WP
    );
sdio_monitor_axis_v1_0_0: component zsys_sdio_monitor_axis_v1_0_0_0
     port map (
      BUSPOW => BUSPOW,
      BUSVOLT(2 downto 0) => NLW_sdio_monitor_axis_v1_0_0_BUSVOLT_UNCONNECTED(2 downto 0),
      CDN => NLW_sdio_monitor_axis_v1_0_0_CDN_UNCONNECTED,
      CRC_ERR => NLW_sdio_monitor_axis_v1_0_0_CRC_ERR_UNCONNECTED,
      LED => NLW_sdio_monitor_axis_v1_0_0_LED_UNCONNECTED,
      RX_en => '1',
      SDIO_BUSPOW => ps7_SDIO_1_BUSPOW,
      SDIO_BUSVOLT(2 downto 0) => ps7_SDIO_1_BUSVOLT(2 downto 0),
      SDIO_CDN => ps7_SDIO_1_CDN,
      SDIO_CLK => SDIO_CLK,
      SDIO_CLK_FB => clk_in_0_1,
      SDIO_CLK_IN => clk_in_0_1,
      SDIO_CMD => SDIO_CMD,
      SDIO_CMD_DIR => CMD_DIR,
      SDIO_CMD_I => ps7_SDIO_1_CMD_I,
      SDIO_CMD_O => ps7_SDIO_1_CMD_O,
      SDIO_CMD_T => ps7_SDIO_1_CMD_T,
      SDIO_DAT(3 downto 0) => SDIO_DAT(3 downto 0),
      SDIO_DAT_DIR => SDIO_DAT_DIR,
      SDIO_DAT_I(3 downto 0) => ps7_SDIO_1_DATA_I(3 downto 0),
      SDIO_DAT_O(3 downto 0) => ps7_SDIO_1_DATA_O(3 downto 0),
      SDIO_DAT_T(3 downto 0) => ps7_SDIO_1_DATA_T(3 downto 0),
      SDIO_LED => ps7_SDIO_1_LED,
      SDIO_WP => ps7_SDIO_1_WP,
      STATE(3 downto 0) => NLW_sdio_monitor_axis_v1_0_0_STATE_UNCONNECTED(3 downto 0),
      WP => NLW_sdio_monitor_axis_v1_0_0_WP_UNCONNECTED,
      axis_aclk => SDIO_CLK,
      axis_aresetn => proc_sys_reset_0_interconnect_aresetn(0),
      m_cmd_axis_tdata(31 downto 0) => sdio_monitor_axis_v1_0_0_m_cmd_axis_TDATA(31 downto 0),
      m_cmd_axis_tlast => sdio_monitor_axis_v1_0_0_m_cmd_axis_TLAST,
      m_cmd_axis_tready => sdio_monitor_axis_v1_0_0_m_cmd_axis_TREADY,
      m_cmd_axis_tuser(7 downto 0) => sdio_monitor_axis_v1_0_0_m_cmd_axis_TUSER(7 downto 0),
      m_cmd_axis_tvalid => sdio_monitor_axis_v1_0_0_m_cmd_axis_TVALID,
      m_dat_axis_tdata(7 downto 0) => NLW_sdio_monitor_axis_v1_0_0_m_dat_axis_tdata_UNCONNECTED(7 downto 0),
      m_dat_axis_tlast => NLW_sdio_monitor_axis_v1_0_0_m_dat_axis_tlast_UNCONNECTED,
      m_dat_axis_tready => '1',
      m_dat_axis_tvalid => NLW_sdio_monitor_axis_v1_0_0_m_dat_axis_tvalid_UNCONNECTED,
      new_CMD => NLW_sdio_monitor_axis_v1_0_0_new_CMD_UNCONNECTED
    );
system_ila_0: component zsys_system_ila_0_0
     port map (
      SLOT_0_AXIS_tdata(31 downto 0) => CMD_TDATA(31 downto 0),
      SLOT_0_AXIS_tlast => CMD_TLAST,
      SLOT_0_AXIS_tready => '1',
      SLOT_0_AXIS_tuser(7 downto 0) => CMD_TUSER(7 downto 0),
      SLOT_0_AXIS_tvalid => CMD_TVALID,
      SLOT_1_AXI_araddr(31 downto 0) => wb2axi_0_m_axi_ARADDR(31 downto 0),
      SLOT_1_AXI_arburst(1 downto 0) => wb2axi_0_m_axi_ARBURST(1 downto 0),
      SLOT_1_AXI_arcache(3 downto 0) => wb2axi_0_m_axi_ARCACHE(3 downto 0),
      SLOT_1_AXI_arid(0) => wb2axi_0_m_axi_ARID(0),
      SLOT_1_AXI_arlen(7 downto 0) => wb2axi_0_m_axi_ARLEN(7 downto 0),
      SLOT_1_AXI_arprot(2 downto 0) => wb2axi_0_m_axi_ARPROT(2 downto 0),
      SLOT_1_AXI_arqos(3 downto 0) => wb2axi_0_m_axi_ARQOS(3 downto 0),
      SLOT_1_AXI_arready => wb2axi_0_m_axi_ARREADY,
      SLOT_1_AXI_arsize(2 downto 0) => wb2axi_0_m_axi_ARSIZE(2 downto 0),
      SLOT_1_AXI_arvalid => wb2axi_0_m_axi_ARVALID,
      SLOT_1_AXI_awaddr(31 downto 0) => wb2axi_0_m_axi_AWADDR(31 downto 0),
      SLOT_1_AXI_awburst(1 downto 0) => wb2axi_0_m_axi_AWBURST(1 downto 0),
      SLOT_1_AXI_awcache(3 downto 0) => wb2axi_0_m_axi_AWCACHE(3 downto 0),
      SLOT_1_AXI_awid(0) => wb2axi_0_m_axi_AWID(0),
      SLOT_1_AXI_awlen(7 downto 0) => wb2axi_0_m_axi_AWLEN(7 downto 0),
      SLOT_1_AXI_awprot(2 downto 0) => wb2axi_0_m_axi_AWPROT(2 downto 0),
      SLOT_1_AXI_awqos(3 downto 0) => wb2axi_0_m_axi_AWQOS(3 downto 0),
      SLOT_1_AXI_awready => wb2axi_0_m_axi_AWREADY,
      SLOT_1_AXI_awsize(2 downto 0) => wb2axi_0_m_axi_AWSIZE(2 downto 0),
      SLOT_1_AXI_awvalid => wb2axi_0_m_axi_AWVALID,
      SLOT_1_AXI_bid(0) => wb2axi_0_m_axi_BID(0),
      SLOT_1_AXI_bready => wb2axi_0_m_axi_BREADY,
      SLOT_1_AXI_bresp(1 downto 0) => wb2axi_0_m_axi_BRESP(1 downto 0),
      SLOT_1_AXI_bvalid => wb2axi_0_m_axi_BVALID,
      SLOT_1_AXI_rdata(31 downto 0) => wb2axi_0_m_axi_RDATA(31 downto 0),
      SLOT_1_AXI_rid(0) => wb2axi_0_m_axi_RID(0),
      SLOT_1_AXI_rlast => wb2axi_0_m_axi_RLAST,
      SLOT_1_AXI_rready => wb2axi_0_m_axi_RREADY,
      SLOT_1_AXI_rresp(1 downto 0) => wb2axi_0_m_axi_RRESP(1 downto 0),
      SLOT_1_AXI_rvalid => wb2axi_0_m_axi_RVALID,
      SLOT_1_AXI_wdata(31 downto 0) => wb2axi_0_m_axi_WDATA(31 downto 0),
      SLOT_1_AXI_wlast => wb2axi_0_m_axi_WLAST,
      SLOT_1_AXI_wready => wb2axi_0_m_axi_WREADY,
      SLOT_1_AXI_wstrb(3 downto 0) => wb2axi_0_m_axi_WSTRB(3 downto 0),
      SLOT_1_AXI_wvalid => wb2axi_0_m_axi_WVALID,
      SLOT_2_AXI_araddr(12 downto 0) => S00_AXI_1_ARADDR(12 downto 0),
      SLOT_2_AXI_arprot(2 downto 0) => S00_AXI_1_ARPROT(2 downto 0),
      SLOT_2_AXI_arready => S00_AXI_1_ARREADY,
      SLOT_2_AXI_arvalid => S00_AXI_1_ARVALID,
      SLOT_2_AXI_awaddr(12 downto 0) => S00_AXI_1_AWADDR(12 downto 0),
      SLOT_2_AXI_awprot(2 downto 0) => S00_AXI_1_AWPROT(2 downto 0),
      SLOT_2_AXI_awready => S00_AXI_1_AWREADY,
      SLOT_2_AXI_awvalid => S00_AXI_1_AWVALID,
      SLOT_2_AXI_bready => S00_AXI_1_BREADY,
      SLOT_2_AXI_bresp(1 downto 0) => S00_AXI_1_BRESP(1 downto 0),
      SLOT_2_AXI_bvalid => S00_AXI_1_BVALID,
      SLOT_2_AXI_rdata(31 downto 0) => S00_AXI_1_RDATA(31 downto 0),
      SLOT_2_AXI_rready => S00_AXI_1_RREADY,
      SLOT_2_AXI_rresp(1 downto 0) => S00_AXI_1_RRESP(1 downto 0),
      SLOT_2_AXI_rvalid => S00_AXI_1_RVALID,
      SLOT_2_AXI_wdata(31 downto 0) => S00_AXI_1_WDATA(31 downto 0),
      SLOT_2_AXI_wready => S00_AXI_1_WREADY,
      SLOT_2_AXI_wstrb(3 downto 0) => S00_AXI_1_WSTRB(3 downto 0),
      SLOT_2_AXI_wvalid => S00_AXI_1_WVALID,
      SLOT_3_AXI_araddr(12 downto 0) => axi_interconnect_0_M00_AXI_ARADDR(12 downto 0),
      SLOT_3_AXI_arprot(2 downto 0) => axi_interconnect_0_M00_AXI_ARPROT(2 downto 0),
      SLOT_3_AXI_arready => axi_interconnect_0_M00_AXI_ARREADY,
      SLOT_3_AXI_arvalid => axi_interconnect_0_M00_AXI_ARVALID,
      SLOT_3_AXI_awaddr(12 downto 0) => axi_interconnect_0_M00_AXI_AWADDR(12 downto 0),
      SLOT_3_AXI_awprot(2 downto 0) => axi_interconnect_0_M00_AXI_AWPROT(2 downto 0),
      SLOT_3_AXI_awready => axi_interconnect_0_M00_AXI_AWREADY,
      SLOT_3_AXI_awvalid => axi_interconnect_0_M00_AXI_AWVALID,
      SLOT_3_AXI_bready => axi_interconnect_0_M00_AXI_BREADY,
      SLOT_3_AXI_bresp(1 downto 0) => axi_interconnect_0_M00_AXI_BRESP(1 downto 0),
      SLOT_3_AXI_bvalid => axi_interconnect_0_M00_AXI_BVALID,
      SLOT_3_AXI_rdata(31 downto 0) => axi_interconnect_0_M00_AXI_RDATA(31 downto 0),
      SLOT_3_AXI_rready => axi_interconnect_0_M00_AXI_RREADY,
      SLOT_3_AXI_rresp(1 downto 0) => axi_interconnect_0_M00_AXI_RRESP(1 downto 0),
      SLOT_3_AXI_rvalid => axi_interconnect_0_M00_AXI_RVALID,
      SLOT_3_AXI_wdata(31 downto 0) => axi_interconnect_0_M00_AXI_WDATA(31 downto 0),
      SLOT_3_AXI_wready => axi_interconnect_0_M00_AXI_WREADY,
      SLOT_3_AXI_wstrb(3 downto 0) => axi_interconnect_0_M00_AXI_WSTRB(3 downto 0),
      SLOT_3_AXI_wvalid => axi_interconnect_0_M00_AXI_WVALID,
      SLOT_4_BRAM_addr(15 downto 0) => axi_bram_ctrl_0_BRAM_PORTA_ADDR(15 downto 0),
      SLOT_4_BRAM_clk => axi_bram_ctrl_0_BRAM_PORTA_CLK,
      SLOT_4_BRAM_din(31 downto 0) => axi_bram_ctrl_0_BRAM_PORTA_DIN(31 downto 0),
      SLOT_4_BRAM_dout(31 downto 0) => axi_bram_ctrl_0_BRAM_PORTA_DOUT(31 downto 0),
      SLOT_4_BRAM_en => axi_bram_ctrl_0_BRAM_PORTA_EN,
      SLOT_4_BRAM_rst => axi_bram_ctrl_0_BRAM_PORTA_RST,
      SLOT_4_BRAM_we(3 downto 0) => axi_bram_ctrl_0_BRAM_PORTA_WE(3 downto 0),
      clk => ps7_FCLK_CLK0,
      probe0(0) => SDIO_CLK,
      probe1(0) => SDIO_CMD,
      probe2(0) => CMD_DIR,
      probe3(3 downto 0) => SDIO_DAT(3 downto 0),
      probe4(0) => SDIO_DAT_DIR,
      probe5(0) => SLOW,
      probe6(0) => clk_in_0_1,
      resetn => proc_sys_reset_0_interconnect_aresetn(0)
    );
util_ds_buf_0: component zsys_util_ds_buf_0_0
     port map (
      BUFG_I(0) => emio_sdemu_0_clk_out,
      BUFG_O(0) => util_ds_buf_0_BUFG_O(0)
    );
vio_0: component zsys_vio_0_0
     port map (
      clk => ps7_FCLK_CLK0,
      probe_in0(0) => BUSPOW,
      probe_out0(0) => aux_reset(0)
    );
wb2axi_0: component zsys_wb2axi_0_0
     port map (
      clk => ps7_FCLK_CLK0,
      m_axi_araddr(31 downto 0) => wb2axi_0_m_axi_ARADDR(31 downto 0),
      m_axi_arburst(1 downto 0) => wb2axi_0_m_axi_ARBURST(1 downto 0),
      m_axi_arcache(3 downto 0) => wb2axi_0_m_axi_ARCACHE(3 downto 0),
      m_axi_arid(0) => wb2axi_0_m_axi_ARID(0),
      m_axi_arlen(7 downto 0) => wb2axi_0_m_axi_ARLEN(7 downto 0),
      m_axi_arprot(2 downto 0) => wb2axi_0_m_axi_ARPROT(2 downto 0),
      m_axi_arqos(3 downto 0) => wb2axi_0_m_axi_ARQOS(3 downto 0),
      m_axi_arready => wb2axi_0_m_axi_ARREADY,
      m_axi_arsize(2 downto 0) => wb2axi_0_m_axi_ARSIZE(2 downto 0),
      m_axi_arvalid => wb2axi_0_m_axi_ARVALID,
      m_axi_awaddr(31 downto 0) => wb2axi_0_m_axi_AWADDR(31 downto 0),
      m_axi_awburst(1 downto 0) => wb2axi_0_m_axi_AWBURST(1 downto 0),
      m_axi_awcache(3 downto 0) => wb2axi_0_m_axi_AWCACHE(3 downto 0),
      m_axi_awid(0) => wb2axi_0_m_axi_AWID(0),
      m_axi_awlen(7 downto 0) => wb2axi_0_m_axi_AWLEN(7 downto 0),
      m_axi_awprot(2 downto 0) => wb2axi_0_m_axi_AWPROT(2 downto 0),
      m_axi_awqos(3 downto 0) => wb2axi_0_m_axi_AWQOS(3 downto 0),
      m_axi_awready => wb2axi_0_m_axi_AWREADY,
      m_axi_awsize(2 downto 0) => wb2axi_0_m_axi_AWSIZE(2 downto 0),
      m_axi_awvalid => wb2axi_0_m_axi_AWVALID,
      m_axi_bid(0) => wb2axi_0_m_axi_BID(0),
      m_axi_bready => wb2axi_0_m_axi_BREADY,
      m_axi_bresp(1 downto 0) => wb2axi_0_m_axi_BRESP(1 downto 0),
      m_axi_bvalid => wb2axi_0_m_axi_BVALID,
      m_axi_rdata(31 downto 0) => wb2axi_0_m_axi_RDATA(31 downto 0),
      m_axi_rid(0) => wb2axi_0_m_axi_RID(0),
      m_axi_rlast => wb2axi_0_m_axi_RLAST,
      m_axi_rready => wb2axi_0_m_axi_RREADY,
      m_axi_rresp(1 downto 0) => wb2axi_0_m_axi_RRESP(1 downto 0),
      m_axi_rvalid => wb2axi_0_m_axi_RVALID,
      m_axi_wdata(31 downto 0) => wb2axi_0_m_axi_WDATA(31 downto 0),
      m_axi_wlast => wb2axi_0_m_axi_WLAST,
      m_axi_wready => wb2axi_0_m_axi_WREADY,
      m_axi_wstrb(3 downto 0) => wb2axi_0_m_axi_WSTRB(3 downto 0),
      m_axi_wvalid => wb2axi_0_m_axi_WVALID,
      rst => proc_sys_reset_0_interconnect_aresetn(0),
      wb_ack_o => emio_sdemu_0_WB_ack,
      wb_adr_i(31 downto 0) => emio_sdemu_0_WB_adr(31 downto 0),
      wb_bte_i(1 downto 0) => emio_sdemu_0_WB_bte(1 downto 0),
      wb_cti_i(2 downto 0) => emio_sdemu_0_WB_cti(2 downto 0),
      wb_cyc_i => emio_sdemu_0_WB_cyc,
      wb_dat_i(31 downto 0) => emio_sdemu_0_WB_dat_o(31 downto 0),
      wb_dat_o(31 downto 0) => emio_sdemu_0_WB_dat_i(31 downto 0),
      wb_err_o => NLW_wb2axi_0_wb_err_o_UNCONNECTED,
      wb_rty_o => NLW_wb2axi_0_wb_rty_o_UNCONNECTED,
      wb_sel_i(3 downto 0) => emio_sdemu_0_WB_sel(3 downto 0),
      wb_stb_i => emio_sdemu_0_WB_stb,
      wb_we_i => emio_sdemu_0_WB_we
    );
end STRUCTURE;
