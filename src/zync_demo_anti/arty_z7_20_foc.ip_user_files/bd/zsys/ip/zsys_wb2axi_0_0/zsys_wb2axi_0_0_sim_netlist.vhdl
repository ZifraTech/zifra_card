-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
-- Date        : Fri Apr 13 14:21:04 2018
-- Host        : W7-64-05 running 64-bit Service Pack 1  (build 7601)
-- Command     : write_vhdl -force -mode funcsim
--               B:/SVN/cores/customers/zifra/zybo/zybo_foc/arty_z7_20_foc.srcs/sources_1/bd/zsys/ip/zsys_wb2axi_0_0/zsys_wb2axi_0_0_sim_netlist.vhdl
-- Design      : zsys_wb2axi_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity zsys_wb2axi_0_0_wb2axi is
  port (
    m_axi_arvalid : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_awvalid : out STD_LOGIC;
    clk : in STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    rst : in STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bvalid : in STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    wb_stb_i : in STD_LOGIC;
    wb_cyc_i : in STD_LOGIC;
    wb_we_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of zsys_wb2axi_0_0_wb2axi : entity is "wb2axi";
end zsys_wb2axi_0_0_wb2axi;

architecture STRUCTURE of zsys_wb2axi_0_0_wb2axi is
  signal ardone : STD_LOGIC;
  signal ardone_i_1_n_0 : STD_LOGIC;
  signal ardone_i_2_n_0 : STD_LOGIC;
  signal awdone : STD_LOGIC;
  signal awdone_i_1_n_0 : STD_LOGIC;
  signal p_10_in : STD_LOGIC;
  signal wdone : STD_LOGIC;
  signal wdone_i_1_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of ardone_i_2 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of awdone_i_2 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of m_axi_arvalid_INST_0 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of m_axi_wvalid_INST_0 : label is "soft_lutpair1";
begin
ardone_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000008F8"
    )
        port map (
      I0 => ardone_i_2_n_0,
      I1 => m_axi_arready,
      I2 => ardone,
      I3 => m_axi_rvalid,
      I4 => rst,
      O => ardone_i_1_n_0
    );
ardone_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => wb_stb_i,
      I1 => wb_cyc_i,
      I2 => wb_we_i,
      O => ardone_i_2_n_0
    );
ardone_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => ardone_i_1_n_0,
      Q => ardone,
      R => '0'
    );
awdone_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000008F8"
    )
        port map (
      I0 => p_10_in,
      I1 => m_axi_awready,
      I2 => awdone,
      I3 => m_axi_bvalid,
      I4 => rst,
      O => awdone_i_1_n_0
    );
awdone_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => wb_stb_i,
      I1 => wb_cyc_i,
      I2 => wb_we_i,
      O => p_10_in
    );
awdone_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => awdone_i_1_n_0,
      Q => awdone,
      R => '0'
    );
m_axi_arvalid_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => wb_we_i,
      I1 => wb_cyc_i,
      I2 => wb_stb_i,
      I3 => ardone,
      O => m_axi_arvalid
    );
m_axi_awvalid_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => wb_we_i,
      I1 => wb_cyc_i,
      I2 => wb_stb_i,
      I3 => awdone,
      O => m_axi_awvalid
    );
m_axi_wvalid_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => wb_we_i,
      I1 => wb_cyc_i,
      I2 => wb_stb_i,
      I3 => wdone,
      O => m_axi_wvalid
    );
wdone_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000008F8"
    )
        port map (
      I0 => p_10_in,
      I1 => m_axi_wready,
      I2 => wdone,
      I3 => m_axi_bvalid,
      I4 => rst,
      O => wdone_i_1_n_0
    );
wdone_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => wdone_i_1_n_0,
      Q => wdone,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity zsys_wb2axi_0_0 is
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of zsys_wb2axi_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of zsys_wb2axi_0_0 : entity is "zsys_wb2axi_0_0,wb2axi,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of zsys_wb2axi_0_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of zsys_wb2axi_0_0 : entity is "wb2axi,Vivado 2017.4";
end zsys_wb2axi_0_0;

architecture STRUCTURE of zsys_wb2axi_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal \^m_axi_rdata\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^wb_adr_i\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^wb_dat_i\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^wb_sel_i\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF m_axi, ASSOCIATED_RESET rst, FREQ_HZ 50000000, PHASE 0.000, CLK_DOMAIN zsys_processing_system7_0_1_FCLK_CLK0";
  attribute X_INTERFACE_INFO of m_axi_arready : signal is "xilinx.com:interface:aximm:1.0 m_axi ARREADY";
  attribute X_INTERFACE_INFO of m_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 m_axi ARVALID";
  attribute X_INTERFACE_INFO of m_axi_awready : signal is "xilinx.com:interface:aximm:1.0 m_axi AWREADY";
  attribute X_INTERFACE_INFO of m_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 m_axi AWVALID";
  attribute X_INTERFACE_INFO of m_axi_bready : signal is "xilinx.com:interface:aximm:1.0 m_axi BREADY";
  attribute X_INTERFACE_INFO of m_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 m_axi BVALID";
  attribute X_INTERFACE_INFO of m_axi_rlast : signal is "xilinx.com:interface:aximm:1.0 m_axi RLAST";
  attribute X_INTERFACE_INFO of m_axi_rready : signal is "xilinx.com:interface:aximm:1.0 m_axi RREADY";
  attribute X_INTERFACE_PARAMETER of m_axi_rready : signal is "XIL_INTERFACENAME m_axi, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 50000000, ID_WIDTH 1, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.000, CLK_DOMAIN zsys_processing_system7_0_1_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0";
  attribute X_INTERFACE_INFO of m_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 m_axi RVALID";
  attribute X_INTERFACE_INFO of m_axi_wlast : signal is "xilinx.com:interface:aximm:1.0 m_axi WLAST";
  attribute X_INTERFACE_INFO of m_axi_wready : signal is "xilinx.com:interface:aximm:1.0 m_axi WREADY";
  attribute X_INTERFACE_INFO of m_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 m_axi WVALID";
  attribute X_INTERFACE_INFO of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute X_INTERFACE_PARAMETER of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of wb_ack_o : signal is "zifra.tech:userIP:wishbone:1.0 WB ack";
  attribute X_INTERFACE_INFO of wb_cyc_i : signal is "zifra.tech:userIP:wishbone:1.0 WB cyc";
  attribute X_INTERFACE_INFO of wb_err_o : signal is "zifra.tech:userIP:wishbone:1.0 WB err";
  attribute X_INTERFACE_INFO of wb_rty_o : signal is "zifra.tech:userIP:wishbone:1.0 WB rty";
  attribute X_INTERFACE_INFO of wb_stb_i : signal is "zifra.tech:userIP:wishbone:1.0 WB stb";
  attribute X_INTERFACE_INFO of wb_we_i : signal is "zifra.tech:userIP:wishbone:1.0 WB we";
  attribute X_INTERFACE_INFO of m_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 m_axi ARADDR";
  attribute X_INTERFACE_INFO of m_axi_arburst : signal is "xilinx.com:interface:aximm:1.0 m_axi ARBURST";
  attribute X_INTERFACE_INFO of m_axi_arcache : signal is "xilinx.com:interface:aximm:1.0 m_axi ARCACHE";
  attribute X_INTERFACE_INFO of m_axi_arid : signal is "xilinx.com:interface:aximm:1.0 m_axi ARID";
  attribute X_INTERFACE_INFO of m_axi_arlen : signal is "xilinx.com:interface:aximm:1.0 m_axi ARLEN";
  attribute X_INTERFACE_INFO of m_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 m_axi ARPROT";
  attribute X_INTERFACE_INFO of m_axi_arqos : signal is "xilinx.com:interface:aximm:1.0 m_axi ARQOS";
  attribute X_INTERFACE_INFO of m_axi_arsize : signal is "xilinx.com:interface:aximm:1.0 m_axi ARSIZE";
  attribute X_INTERFACE_INFO of m_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 m_axi AWADDR";
  attribute X_INTERFACE_INFO of m_axi_awburst : signal is "xilinx.com:interface:aximm:1.0 m_axi AWBURST";
  attribute X_INTERFACE_INFO of m_axi_awcache : signal is "xilinx.com:interface:aximm:1.0 m_axi AWCACHE";
  attribute X_INTERFACE_INFO of m_axi_awid : signal is "xilinx.com:interface:aximm:1.0 m_axi AWID";
  attribute X_INTERFACE_INFO of m_axi_awlen : signal is "xilinx.com:interface:aximm:1.0 m_axi AWLEN";
  attribute X_INTERFACE_INFO of m_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 m_axi AWPROT";
  attribute X_INTERFACE_INFO of m_axi_awqos : signal is "xilinx.com:interface:aximm:1.0 m_axi AWQOS";
  attribute X_INTERFACE_INFO of m_axi_awsize : signal is "xilinx.com:interface:aximm:1.0 m_axi AWSIZE";
  attribute X_INTERFACE_INFO of m_axi_bid : signal is "xilinx.com:interface:aximm:1.0 m_axi BID";
  attribute X_INTERFACE_INFO of m_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 m_axi BRESP";
  attribute X_INTERFACE_INFO of m_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 m_axi RDATA";
  attribute X_INTERFACE_INFO of m_axi_rid : signal is "xilinx.com:interface:aximm:1.0 m_axi RID";
  attribute X_INTERFACE_INFO of m_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 m_axi RRESP";
  attribute X_INTERFACE_INFO of m_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 m_axi WDATA";
  attribute X_INTERFACE_INFO of m_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 m_axi WSTRB";
  attribute X_INTERFACE_INFO of wb_adr_i : signal is "zifra.tech:userIP:wishbone:1.0 WB adr";
  attribute X_INTERFACE_INFO of wb_bte_i : signal is "zifra.tech:userIP:wishbone:1.0 WB bte";
  attribute X_INTERFACE_INFO of wb_cti_i : signal is "zifra.tech:userIP:wishbone:1.0 WB cti";
  attribute X_INTERFACE_INFO of wb_dat_i : signal is "zifra.tech:userIP:wishbone:1.0 WB dat_o";
  attribute X_INTERFACE_INFO of wb_dat_o : signal is "zifra.tech:userIP:wishbone:1.0 WB dat_i";
  attribute X_INTERFACE_INFO of wb_sel_i : signal is "zifra.tech:userIP:wishbone:1.0 WB sel";
begin
  \^m_axi_rdata\(31 downto 0) <= m_axi_rdata(31 downto 0);
  \^wb_adr_i\(31 downto 0) <= wb_adr_i(31 downto 0);
  \^wb_dat_i\(31 downto 0) <= wb_dat_i(31 downto 0);
  \^wb_sel_i\(3 downto 0) <= wb_sel_i(3 downto 0);
  m_axi_araddr(31 downto 0) <= \^wb_adr_i\(31 downto 0);
  m_axi_arburst(1) <= \<const0>\;
  m_axi_arburst(0) <= \<const1>\;
  m_axi_arcache(3) <= \<const0>\;
  m_axi_arcache(2) <= \<const0>\;
  m_axi_arcache(1) <= \<const1>\;
  m_axi_arcache(0) <= \<const1>\;
  m_axi_arid(0) <= \<const0>\;
  m_axi_arlen(7) <= \<const0>\;
  m_axi_arlen(6) <= \<const0>\;
  m_axi_arlen(5) <= \<const0>\;
  m_axi_arlen(4) <= \<const0>\;
  m_axi_arlen(3) <= \<const0>\;
  m_axi_arlen(2) <= \<const0>\;
  m_axi_arlen(1) <= \<const0>\;
  m_axi_arlen(0) <= \<const0>\;
  m_axi_arprot(2) <= \<const0>\;
  m_axi_arprot(1) <= \<const1>\;
  m_axi_arprot(0) <= \<const0>\;
  m_axi_arqos(3) <= \<const0>\;
  m_axi_arqos(2) <= \<const0>\;
  m_axi_arqos(1) <= \<const0>\;
  m_axi_arqos(0) <= \<const0>\;
  m_axi_arsize(2) <= \<const0>\;
  m_axi_arsize(1) <= \<const1>\;
  m_axi_arsize(0) <= \<const0>\;
  m_axi_awaddr(31 downto 0) <= \^wb_adr_i\(31 downto 0);
  m_axi_awburst(1) <= \<const0>\;
  m_axi_awburst(0) <= \<const1>\;
  m_axi_awcache(3) <= \<const0>\;
  m_axi_awcache(2) <= \<const0>\;
  m_axi_awcache(1) <= \<const0>\;
  m_axi_awcache(0) <= \<const0>\;
  m_axi_awid(0) <= \<const0>\;
  m_axi_awlen(7) <= \<const0>\;
  m_axi_awlen(6) <= \<const0>\;
  m_axi_awlen(5) <= \<const0>\;
  m_axi_awlen(4) <= \<const0>\;
  m_axi_awlen(3) <= \<const0>\;
  m_axi_awlen(2) <= \<const0>\;
  m_axi_awlen(1) <= \<const0>\;
  m_axi_awlen(0) <= \<const0>\;
  m_axi_awprot(2) <= \<const0>\;
  m_axi_awprot(1) <= \<const1>\;
  m_axi_awprot(0) <= \<const0>\;
  m_axi_awqos(3) <= \<const0>\;
  m_axi_awqos(2) <= \<const0>\;
  m_axi_awqos(1) <= \<const0>\;
  m_axi_awqos(0) <= \<const0>\;
  m_axi_awsize(2) <= \<const0>\;
  m_axi_awsize(1) <= \<const1>\;
  m_axi_awsize(0) <= \<const0>\;
  m_axi_bready <= \<const1>\;
  m_axi_rready <= \<const1>\;
  m_axi_wdata(31 downto 0) <= \^wb_dat_i\(31 downto 0);
  m_axi_wlast <= \<const1>\;
  m_axi_wstrb(3 downto 0) <= \^wb_sel_i\(3 downto 0);
  wb_dat_o(31 downto 0) <= \^m_axi_rdata\(31 downto 0);
  wb_err_o <= \<const0>\;
  wb_rty_o <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
inst: entity work.zsys_wb2axi_0_0_wb2axi
     port map (
      clk => clk,
      m_axi_arready => m_axi_arready,
      m_axi_arvalid => m_axi_arvalid,
      m_axi_awready => m_axi_awready,
      m_axi_awvalid => m_axi_awvalid,
      m_axi_bvalid => m_axi_bvalid,
      m_axi_rvalid => m_axi_rvalid,
      m_axi_wready => m_axi_wready,
      m_axi_wvalid => m_axi_wvalid,
      rst => rst,
      wb_cyc_i => wb_cyc_i,
      wb_stb_i => wb_stb_i,
      wb_we_i => wb_we_i
    );
wb_ack_o_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => m_axi_bvalid,
      I1 => m_axi_rvalid,
      O => wb_ack_o
    );
end STRUCTURE;
