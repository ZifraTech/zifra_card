--Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Command: generate_target bd_f448_wrapper.bd
--Design : bd_f448_wrapper
--Purpose: IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_f448_wrapper is
  port (
    SLOT_0_AXIS_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_0_AXIS_tlast : in STD_LOGIC;
    SLOT_0_AXIS_tready : in STD_LOGIC;
    SLOT_0_AXIS_tuser : in STD_LOGIC_VECTOR ( 7 downto 0 );
    SLOT_0_AXIS_tvalid : in STD_LOGIC;
    SLOT_1_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_1_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_1_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_1_AXI_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_1_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    SLOT_1_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_1_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_1_AXI_arready : in STD_LOGIC;
    SLOT_1_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_1_AXI_arvalid : in STD_LOGIC;
    SLOT_1_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_1_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_1_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_1_AXI_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_1_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    SLOT_1_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_1_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_1_AXI_awready : in STD_LOGIC;
    SLOT_1_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_1_AXI_awvalid : in STD_LOGIC;
    SLOT_1_AXI_bid : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_1_AXI_bready : in STD_LOGIC;
    SLOT_1_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_1_AXI_bvalid : in STD_LOGIC;
    SLOT_1_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_1_AXI_rid : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_1_AXI_rlast : in STD_LOGIC;
    SLOT_1_AXI_rready : in STD_LOGIC;
    SLOT_1_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_1_AXI_rvalid : in STD_LOGIC;
    SLOT_1_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_1_AXI_wlast : in STD_LOGIC;
    SLOT_1_AXI_wready : in STD_LOGIC;
    SLOT_1_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_1_AXI_wvalid : in STD_LOGIC;
    SLOT_2_AXI_araddr : in STD_LOGIC_VECTOR ( 12 downto 0 );
    SLOT_2_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_2_AXI_arready : in STD_LOGIC;
    SLOT_2_AXI_arvalid : in STD_LOGIC;
    SLOT_2_AXI_awaddr : in STD_LOGIC_VECTOR ( 12 downto 0 );
    SLOT_2_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_2_AXI_awready : in STD_LOGIC;
    SLOT_2_AXI_awvalid : in STD_LOGIC;
    SLOT_2_AXI_bready : in STD_LOGIC;
    SLOT_2_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_2_AXI_bvalid : in STD_LOGIC;
    SLOT_2_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_2_AXI_rready : in STD_LOGIC;
    SLOT_2_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_2_AXI_rvalid : in STD_LOGIC;
    SLOT_2_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_2_AXI_wready : in STD_LOGIC;
    SLOT_2_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_2_AXI_wvalid : in STD_LOGIC;
    SLOT_3_AXI_araddr : in STD_LOGIC_VECTOR ( 12 downto 0 );
    SLOT_3_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_3_AXI_arready : in STD_LOGIC;
    SLOT_3_AXI_arvalid : in STD_LOGIC;
    SLOT_3_AXI_awaddr : in STD_LOGIC_VECTOR ( 12 downto 0 );
    SLOT_3_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_3_AXI_awready : in STD_LOGIC;
    SLOT_3_AXI_awvalid : in STD_LOGIC;
    SLOT_3_AXI_bready : in STD_LOGIC;
    SLOT_3_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_3_AXI_bvalid : in STD_LOGIC;
    SLOT_3_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_3_AXI_rready : in STD_LOGIC;
    SLOT_3_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_3_AXI_rvalid : in STD_LOGIC;
    SLOT_3_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_3_AXI_wready : in STD_LOGIC;
    SLOT_3_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_3_AXI_wvalid : in STD_LOGIC;
    SLOT_4_BRAM_addr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    SLOT_4_BRAM_clk : in STD_LOGIC;
    SLOT_4_BRAM_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_4_BRAM_dout : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_4_BRAM_en : in STD_LOGIC;
    SLOT_4_BRAM_rst : in STD_LOGIC;
    SLOT_4_BRAM_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    clk : in STD_LOGIC;
    probe0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe3 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    probe4 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe5 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe6 : in STD_LOGIC_VECTOR ( 0 to 0 );
    resetn : in STD_LOGIC
  );
end bd_f448_wrapper;

architecture STRUCTURE of bd_f448_wrapper is
  component bd_f448 is
  port (
    clk : in STD_LOGIC;
    probe0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe3 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    probe4 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe5 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe6 : in STD_LOGIC_VECTOR ( 0 to 0 );
    resetn : in STD_LOGIC;
    SLOT_0_AXIS_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_0_AXIS_tlast : in STD_LOGIC;
    SLOT_0_AXIS_tready : in STD_LOGIC;
    SLOT_0_AXIS_tuser : in STD_LOGIC_VECTOR ( 7 downto 0 );
    SLOT_0_AXIS_tvalid : in STD_LOGIC;
    SLOT_1_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_1_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_1_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_1_AXI_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_1_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    SLOT_1_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_1_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_1_AXI_arready : in STD_LOGIC;
    SLOT_1_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_1_AXI_arvalid : in STD_LOGIC;
    SLOT_1_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_1_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_1_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_1_AXI_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_1_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    SLOT_1_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_1_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_1_AXI_awready : in STD_LOGIC;
    SLOT_1_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_1_AXI_awvalid : in STD_LOGIC;
    SLOT_1_AXI_bid : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_1_AXI_bready : in STD_LOGIC;
    SLOT_1_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_1_AXI_bvalid : in STD_LOGIC;
    SLOT_1_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_1_AXI_rid : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_1_AXI_rlast : in STD_LOGIC;
    SLOT_1_AXI_rready : in STD_LOGIC;
    SLOT_1_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_1_AXI_rvalid : in STD_LOGIC;
    SLOT_1_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_1_AXI_wlast : in STD_LOGIC;
    SLOT_1_AXI_wready : in STD_LOGIC;
    SLOT_1_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_1_AXI_wvalid : in STD_LOGIC;
    SLOT_2_AXI_araddr : in STD_LOGIC_VECTOR ( 12 downto 0 );
    SLOT_2_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_2_AXI_arready : in STD_LOGIC;
    SLOT_2_AXI_arvalid : in STD_LOGIC;
    SLOT_2_AXI_awaddr : in STD_LOGIC_VECTOR ( 12 downto 0 );
    SLOT_2_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_2_AXI_awready : in STD_LOGIC;
    SLOT_2_AXI_awvalid : in STD_LOGIC;
    SLOT_2_AXI_bready : in STD_LOGIC;
    SLOT_2_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_2_AXI_bvalid : in STD_LOGIC;
    SLOT_2_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_2_AXI_rready : in STD_LOGIC;
    SLOT_2_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_2_AXI_rvalid : in STD_LOGIC;
    SLOT_2_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_2_AXI_wready : in STD_LOGIC;
    SLOT_2_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_2_AXI_wvalid : in STD_LOGIC;
    SLOT_3_AXI_araddr : in STD_LOGIC_VECTOR ( 12 downto 0 );
    SLOT_3_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_3_AXI_arready : in STD_LOGIC;
    SLOT_3_AXI_arvalid : in STD_LOGIC;
    SLOT_3_AXI_awaddr : in STD_LOGIC_VECTOR ( 12 downto 0 );
    SLOT_3_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_3_AXI_awready : in STD_LOGIC;
    SLOT_3_AXI_awvalid : in STD_LOGIC;
    SLOT_3_AXI_bready : in STD_LOGIC;
    SLOT_3_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_3_AXI_bvalid : in STD_LOGIC;
    SLOT_3_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_3_AXI_rready : in STD_LOGIC;
    SLOT_3_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_3_AXI_rvalid : in STD_LOGIC;
    SLOT_3_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_3_AXI_wready : in STD_LOGIC;
    SLOT_3_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_3_AXI_wvalid : in STD_LOGIC;
    SLOT_4_BRAM_addr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    SLOT_4_BRAM_clk : in STD_LOGIC;
    SLOT_4_BRAM_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_4_BRAM_dout : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_4_BRAM_en : in STD_LOGIC;
    SLOT_4_BRAM_rst : in STD_LOGIC;
    SLOT_4_BRAM_we : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component bd_f448;
begin
bd_f448_i: component bd_f448
     port map (
      SLOT_0_AXIS_tdata(31 downto 0) => SLOT_0_AXIS_tdata(31 downto 0),
      SLOT_0_AXIS_tlast => SLOT_0_AXIS_tlast,
      SLOT_0_AXIS_tready => SLOT_0_AXIS_tready,
      SLOT_0_AXIS_tuser(7 downto 0) => SLOT_0_AXIS_tuser(7 downto 0),
      SLOT_0_AXIS_tvalid => SLOT_0_AXIS_tvalid,
      SLOT_1_AXI_araddr(31 downto 0) => SLOT_1_AXI_araddr(31 downto 0),
      SLOT_1_AXI_arburst(1 downto 0) => SLOT_1_AXI_arburst(1 downto 0),
      SLOT_1_AXI_arcache(3 downto 0) => SLOT_1_AXI_arcache(3 downto 0),
      SLOT_1_AXI_arid(0) => SLOT_1_AXI_arid(0),
      SLOT_1_AXI_arlen(7 downto 0) => SLOT_1_AXI_arlen(7 downto 0),
      SLOT_1_AXI_arprot(2 downto 0) => SLOT_1_AXI_arprot(2 downto 0),
      SLOT_1_AXI_arqos(3 downto 0) => SLOT_1_AXI_arqos(3 downto 0),
      SLOT_1_AXI_arready => SLOT_1_AXI_arready,
      SLOT_1_AXI_arsize(2 downto 0) => SLOT_1_AXI_arsize(2 downto 0),
      SLOT_1_AXI_arvalid => SLOT_1_AXI_arvalid,
      SLOT_1_AXI_awaddr(31 downto 0) => SLOT_1_AXI_awaddr(31 downto 0),
      SLOT_1_AXI_awburst(1 downto 0) => SLOT_1_AXI_awburst(1 downto 0),
      SLOT_1_AXI_awcache(3 downto 0) => SLOT_1_AXI_awcache(3 downto 0),
      SLOT_1_AXI_awid(0) => SLOT_1_AXI_awid(0),
      SLOT_1_AXI_awlen(7 downto 0) => SLOT_1_AXI_awlen(7 downto 0),
      SLOT_1_AXI_awprot(2 downto 0) => SLOT_1_AXI_awprot(2 downto 0),
      SLOT_1_AXI_awqos(3 downto 0) => SLOT_1_AXI_awqos(3 downto 0),
      SLOT_1_AXI_awready => SLOT_1_AXI_awready,
      SLOT_1_AXI_awsize(2 downto 0) => SLOT_1_AXI_awsize(2 downto 0),
      SLOT_1_AXI_awvalid => SLOT_1_AXI_awvalid,
      SLOT_1_AXI_bid(0) => SLOT_1_AXI_bid(0),
      SLOT_1_AXI_bready => SLOT_1_AXI_bready,
      SLOT_1_AXI_bresp(1 downto 0) => SLOT_1_AXI_bresp(1 downto 0),
      SLOT_1_AXI_bvalid => SLOT_1_AXI_bvalid,
      SLOT_1_AXI_rdata(31 downto 0) => SLOT_1_AXI_rdata(31 downto 0),
      SLOT_1_AXI_rid(0) => SLOT_1_AXI_rid(0),
      SLOT_1_AXI_rlast => SLOT_1_AXI_rlast,
      SLOT_1_AXI_rready => SLOT_1_AXI_rready,
      SLOT_1_AXI_rresp(1 downto 0) => SLOT_1_AXI_rresp(1 downto 0),
      SLOT_1_AXI_rvalid => SLOT_1_AXI_rvalid,
      SLOT_1_AXI_wdata(31 downto 0) => SLOT_1_AXI_wdata(31 downto 0),
      SLOT_1_AXI_wlast => SLOT_1_AXI_wlast,
      SLOT_1_AXI_wready => SLOT_1_AXI_wready,
      SLOT_1_AXI_wstrb(3 downto 0) => SLOT_1_AXI_wstrb(3 downto 0),
      SLOT_1_AXI_wvalid => SLOT_1_AXI_wvalid,
      SLOT_2_AXI_araddr(12 downto 0) => SLOT_2_AXI_araddr(12 downto 0),
      SLOT_2_AXI_arprot(2 downto 0) => SLOT_2_AXI_arprot(2 downto 0),
      SLOT_2_AXI_arready => SLOT_2_AXI_arready,
      SLOT_2_AXI_arvalid => SLOT_2_AXI_arvalid,
      SLOT_2_AXI_awaddr(12 downto 0) => SLOT_2_AXI_awaddr(12 downto 0),
      SLOT_2_AXI_awprot(2 downto 0) => SLOT_2_AXI_awprot(2 downto 0),
      SLOT_2_AXI_awready => SLOT_2_AXI_awready,
      SLOT_2_AXI_awvalid => SLOT_2_AXI_awvalid,
      SLOT_2_AXI_bready => SLOT_2_AXI_bready,
      SLOT_2_AXI_bresp(1 downto 0) => SLOT_2_AXI_bresp(1 downto 0),
      SLOT_2_AXI_bvalid => SLOT_2_AXI_bvalid,
      SLOT_2_AXI_rdata(31 downto 0) => SLOT_2_AXI_rdata(31 downto 0),
      SLOT_2_AXI_rready => SLOT_2_AXI_rready,
      SLOT_2_AXI_rresp(1 downto 0) => SLOT_2_AXI_rresp(1 downto 0),
      SLOT_2_AXI_rvalid => SLOT_2_AXI_rvalid,
      SLOT_2_AXI_wdata(31 downto 0) => SLOT_2_AXI_wdata(31 downto 0),
      SLOT_2_AXI_wready => SLOT_2_AXI_wready,
      SLOT_2_AXI_wstrb(3 downto 0) => SLOT_2_AXI_wstrb(3 downto 0),
      SLOT_2_AXI_wvalid => SLOT_2_AXI_wvalid,
      SLOT_3_AXI_araddr(12 downto 0) => SLOT_3_AXI_araddr(12 downto 0),
      SLOT_3_AXI_arprot(2 downto 0) => SLOT_3_AXI_arprot(2 downto 0),
      SLOT_3_AXI_arready => SLOT_3_AXI_arready,
      SLOT_3_AXI_arvalid => SLOT_3_AXI_arvalid,
      SLOT_3_AXI_awaddr(12 downto 0) => SLOT_3_AXI_awaddr(12 downto 0),
      SLOT_3_AXI_awprot(2 downto 0) => SLOT_3_AXI_awprot(2 downto 0),
      SLOT_3_AXI_awready => SLOT_3_AXI_awready,
      SLOT_3_AXI_awvalid => SLOT_3_AXI_awvalid,
      SLOT_3_AXI_bready => SLOT_3_AXI_bready,
      SLOT_3_AXI_bresp(1 downto 0) => SLOT_3_AXI_bresp(1 downto 0),
      SLOT_3_AXI_bvalid => SLOT_3_AXI_bvalid,
      SLOT_3_AXI_rdata(31 downto 0) => SLOT_3_AXI_rdata(31 downto 0),
      SLOT_3_AXI_rready => SLOT_3_AXI_rready,
      SLOT_3_AXI_rresp(1 downto 0) => SLOT_3_AXI_rresp(1 downto 0),
      SLOT_3_AXI_rvalid => SLOT_3_AXI_rvalid,
      SLOT_3_AXI_wdata(31 downto 0) => SLOT_3_AXI_wdata(31 downto 0),
      SLOT_3_AXI_wready => SLOT_3_AXI_wready,
      SLOT_3_AXI_wstrb(3 downto 0) => SLOT_3_AXI_wstrb(3 downto 0),
      SLOT_3_AXI_wvalid => SLOT_3_AXI_wvalid,
      SLOT_4_BRAM_addr(15 downto 0) => SLOT_4_BRAM_addr(15 downto 0),
      SLOT_4_BRAM_clk => SLOT_4_BRAM_clk,
      SLOT_4_BRAM_din(31 downto 0) => SLOT_4_BRAM_din(31 downto 0),
      SLOT_4_BRAM_dout(31 downto 0) => SLOT_4_BRAM_dout(31 downto 0),
      SLOT_4_BRAM_en => SLOT_4_BRAM_en,
      SLOT_4_BRAM_rst => SLOT_4_BRAM_rst,
      SLOT_4_BRAM_we(3 downto 0) => SLOT_4_BRAM_we(3 downto 0),
      clk => clk,
      probe0(0) => probe0(0),
      probe1(0) => probe1(0),
      probe2(0) => probe2(0),
      probe3(3 downto 0) => probe3(3 downto 0),
      probe4(0) => probe4(0),
      probe5(0) => probe5(0),
      probe6(0) => probe6(0),
      resetn => resetn
    );
end STRUCTURE;
