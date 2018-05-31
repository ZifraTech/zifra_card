// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Fri Apr 13 14:21:04 2018
// Host        : W7-64-05 running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode funcsim
//               B:/SVN/cores/customers/zifra/zybo/zybo_foc/arty_z7_20_foc.srcs/sources_1/bd/zsys/ip/zsys_wb2axi_0_0/zsys_wb2axi_0_0_sim_netlist.v
// Design      : zsys_wb2axi_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "zsys_wb2axi_0_0,wb2axi,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "wb2axi,Vivado 2017.4" *) 
(* NotValidForBitStream *)
module zsys_wb2axi_0_0
   (clk,
    rst,
    wb_cyc_i,
    wb_stb_i,
    wb_we_i,
    wb_adr_i,
    wb_dat_i,
    wb_sel_i,
    wb_cti_i,
    wb_bte_i,
    wb_ack_o,
    wb_err_o,
    wb_rty_o,
    wb_dat_o,
    m_axi_awid,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awqos,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bid,
    m_axi_bresp,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_arid,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arsize,
    m_axi_arburst,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arqos,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rid,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rlast,
    m_axi_rvalid,
    m_axi_rready);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF m_axi, ASSOCIATED_RESET rst, FREQ_HZ 50000000, PHASE 0.000, CLK_DOMAIN zsys_processing_system7_0_1_FCLK_CLK0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW" *) input rst;
  (* X_INTERFACE_INFO = "zifra.tech:userIP:wishbone:1.0 WB cyc" *) input wb_cyc_i;
  (* X_INTERFACE_INFO = "zifra.tech:userIP:wishbone:1.0 WB stb" *) input wb_stb_i;
  (* X_INTERFACE_INFO = "zifra.tech:userIP:wishbone:1.0 WB we" *) input wb_we_i;
  (* X_INTERFACE_INFO = "zifra.tech:userIP:wishbone:1.0 WB adr" *) input [31:0]wb_adr_i;
  (* X_INTERFACE_INFO = "zifra.tech:userIP:wishbone:1.0 WB dat_o" *) input [31:0]wb_dat_i;
  (* X_INTERFACE_INFO = "zifra.tech:userIP:wishbone:1.0 WB sel" *) input [3:0]wb_sel_i;
  (* X_INTERFACE_INFO = "zifra.tech:userIP:wishbone:1.0 WB cti" *) input [2:0]wb_cti_i;
  (* X_INTERFACE_INFO = "zifra.tech:userIP:wishbone:1.0 WB bte" *) input [1:0]wb_bte_i;
  (* X_INTERFACE_INFO = "zifra.tech:userIP:wishbone:1.0 WB ack" *) output wb_ack_o;
  (* X_INTERFACE_INFO = "zifra.tech:userIP:wishbone:1.0 WB err" *) output wb_err_o;
  (* X_INTERFACE_INFO = "zifra.tech:userIP:wishbone:1.0 WB rty" *) output wb_rty_o;
  (* X_INTERFACE_INFO = "zifra.tech:userIP:wishbone:1.0 WB dat_i" *) output [31:0]wb_dat_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi AWID" *) output [0:0]m_axi_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi AWADDR" *) output [31:0]m_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi AWLEN" *) output [7:0]m_axi_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi AWSIZE" *) output [2:0]m_axi_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi AWBURST" *) output [1:0]m_axi_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi AWCACHE" *) output [3:0]m_axi_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi AWPROT" *) output [2:0]m_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi AWQOS" *) output [3:0]m_axi_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi AWVALID" *) output m_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi AWREADY" *) input m_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi WDATA" *) output [31:0]m_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi WSTRB" *) output [3:0]m_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi WLAST" *) output m_axi_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi WVALID" *) output m_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi WREADY" *) input m_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi BID" *) input [0:0]m_axi_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi BRESP" *) input [1:0]m_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi BVALID" *) input m_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi BREADY" *) output m_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi ARID" *) output [0:0]m_axi_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi ARADDR" *) output [31:0]m_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi ARLEN" *) output [7:0]m_axi_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi ARSIZE" *) output [2:0]m_axi_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi ARBURST" *) output [1:0]m_axi_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi ARCACHE" *) output [3:0]m_axi_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi ARPROT" *) output [2:0]m_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi ARQOS" *) output [3:0]m_axi_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi ARVALID" *) output m_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi ARREADY" *) input m_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi RID" *) input [0:0]m_axi_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi RDATA" *) input [31:0]m_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi RRESP" *) input [1:0]m_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi RLAST" *) input m_axi_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi RVALID" *) input m_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axi, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 50000000, ID_WIDTH 1, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.000, CLK_DOMAIN zsys_processing_system7_0_1_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0" *) output m_axi_rready;

  wire \<const0> ;
  wire \<const1> ;
  wire clk;
  wire m_axi_arready;
  wire m_axi_arvalid;
  wire m_axi_awready;
  wire m_axi_awvalid;
  wire m_axi_bvalid;
  wire [31:0]m_axi_rdata;
  wire m_axi_rvalid;
  wire m_axi_wready;
  wire m_axi_wvalid;
  wire rst;
  wire wb_ack_o;
  wire [31:0]wb_adr_i;
  wire wb_cyc_i;
  wire [31:0]wb_dat_i;
  wire [3:0]wb_sel_i;
  wire wb_stb_i;
  wire wb_we_i;

  assign m_axi_araddr[31:0] = wb_adr_i;
  assign m_axi_arburst[1] = \<const0> ;
  assign m_axi_arburst[0] = \<const1> ;
  assign m_axi_arcache[3] = \<const0> ;
  assign m_axi_arcache[2] = \<const0> ;
  assign m_axi_arcache[1] = \<const1> ;
  assign m_axi_arcache[0] = \<const1> ;
  assign m_axi_arid[0] = \<const0> ;
  assign m_axi_arlen[7] = \<const0> ;
  assign m_axi_arlen[6] = \<const0> ;
  assign m_axi_arlen[5] = \<const0> ;
  assign m_axi_arlen[4] = \<const0> ;
  assign m_axi_arlen[3] = \<const0> ;
  assign m_axi_arlen[2] = \<const0> ;
  assign m_axi_arlen[1] = \<const0> ;
  assign m_axi_arlen[0] = \<const0> ;
  assign m_axi_arprot[2] = \<const0> ;
  assign m_axi_arprot[1] = \<const1> ;
  assign m_axi_arprot[0] = \<const0> ;
  assign m_axi_arqos[3] = \<const0> ;
  assign m_axi_arqos[2] = \<const0> ;
  assign m_axi_arqos[1] = \<const0> ;
  assign m_axi_arqos[0] = \<const0> ;
  assign m_axi_arsize[2] = \<const0> ;
  assign m_axi_arsize[1] = \<const1> ;
  assign m_axi_arsize[0] = \<const0> ;
  assign m_axi_awaddr[31:0] = wb_adr_i;
  assign m_axi_awburst[1] = \<const0> ;
  assign m_axi_awburst[0] = \<const1> ;
  assign m_axi_awcache[3] = \<const0> ;
  assign m_axi_awcache[2] = \<const0> ;
  assign m_axi_awcache[1] = \<const0> ;
  assign m_axi_awcache[0] = \<const0> ;
  assign m_axi_awid[0] = \<const0> ;
  assign m_axi_awlen[7] = \<const0> ;
  assign m_axi_awlen[6] = \<const0> ;
  assign m_axi_awlen[5] = \<const0> ;
  assign m_axi_awlen[4] = \<const0> ;
  assign m_axi_awlen[3] = \<const0> ;
  assign m_axi_awlen[2] = \<const0> ;
  assign m_axi_awlen[1] = \<const0> ;
  assign m_axi_awlen[0] = \<const0> ;
  assign m_axi_awprot[2] = \<const0> ;
  assign m_axi_awprot[1] = \<const1> ;
  assign m_axi_awprot[0] = \<const0> ;
  assign m_axi_awqos[3] = \<const0> ;
  assign m_axi_awqos[2] = \<const0> ;
  assign m_axi_awqos[1] = \<const0> ;
  assign m_axi_awqos[0] = \<const0> ;
  assign m_axi_awsize[2] = \<const0> ;
  assign m_axi_awsize[1] = \<const1> ;
  assign m_axi_awsize[0] = \<const0> ;
  assign m_axi_bready = \<const1> ;
  assign m_axi_rready = \<const1> ;
  assign m_axi_wdata[31:0] = wb_dat_i;
  assign m_axi_wlast = \<const1> ;
  assign m_axi_wstrb[3:0] = wb_sel_i;
  assign wb_dat_o[31:0] = m_axi_rdata;
  assign wb_err_o = \<const0> ;
  assign wb_rty_o = \<const0> ;
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  zsys_wb2axi_0_0_wb2axi inst
       (.clk(clk),
        .m_axi_arready(m_axi_arready),
        .m_axi_arvalid(m_axi_arvalid),
        .m_axi_awready(m_axi_awready),
        .m_axi_awvalid(m_axi_awvalid),
        .m_axi_bvalid(m_axi_bvalid),
        .m_axi_rvalid(m_axi_rvalid),
        .m_axi_wready(m_axi_wready),
        .m_axi_wvalid(m_axi_wvalid),
        .rst(rst),
        .wb_cyc_i(wb_cyc_i),
        .wb_stb_i(wb_stb_i),
        .wb_we_i(wb_we_i));
  LUT2 #(
    .INIT(4'hE)) 
    wb_ack_o_INST_0
       (.I0(m_axi_bvalid),
        .I1(m_axi_rvalid),
        .O(wb_ack_o));
endmodule

(* ORIG_REF_NAME = "wb2axi" *) 
module zsys_wb2axi_0_0_wb2axi
   (m_axi_arvalid,
    m_axi_wvalid,
    m_axi_awvalid,
    clk,
    m_axi_arready,
    m_axi_rvalid,
    rst,
    m_axi_wready,
    m_axi_bvalid,
    m_axi_awready,
    wb_stb_i,
    wb_cyc_i,
    wb_we_i);
  output m_axi_arvalid;
  output m_axi_wvalid;
  output m_axi_awvalid;
  input clk;
  input m_axi_arready;
  input m_axi_rvalid;
  input rst;
  input m_axi_wready;
  input m_axi_bvalid;
  input m_axi_awready;
  input wb_stb_i;
  input wb_cyc_i;
  input wb_we_i;

  wire ardone;
  wire ardone_i_1_n_0;
  wire ardone_i_2_n_0;
  wire awdone;
  wire awdone_i_1_n_0;
  wire clk;
  wire m_axi_arready;
  wire m_axi_arvalid;
  wire m_axi_awready;
  wire m_axi_awvalid;
  wire m_axi_bvalid;
  wire m_axi_rvalid;
  wire m_axi_wready;
  wire m_axi_wvalid;
  wire p_10_in;
  wire rst;
  wire wb_cyc_i;
  wire wb_stb_i;
  wire wb_we_i;
  wire wdone;
  wire wdone_i_1_n_0;

  LUT5 #(
    .INIT(32'h000008F8)) 
    ardone_i_1
       (.I0(ardone_i_2_n_0),
        .I1(m_axi_arready),
        .I2(ardone),
        .I3(m_axi_rvalid),
        .I4(rst),
        .O(ardone_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h08)) 
    ardone_i_2
       (.I0(wb_stb_i),
        .I1(wb_cyc_i),
        .I2(wb_we_i),
        .O(ardone_i_2_n_0));
  FDRE ardone_reg
       (.C(clk),
        .CE(1'b1),
        .D(ardone_i_1_n_0),
        .Q(ardone),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h000008F8)) 
    awdone_i_1
       (.I0(p_10_in),
        .I1(m_axi_awready),
        .I2(awdone),
        .I3(m_axi_bvalid),
        .I4(rst),
        .O(awdone_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h80)) 
    awdone_i_2
       (.I0(wb_stb_i),
        .I1(wb_cyc_i),
        .I2(wb_we_i),
        .O(p_10_in));
  FDRE awdone_reg
       (.C(clk),
        .CE(1'b1),
        .D(awdone_i_1_n_0),
        .Q(awdone),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    m_axi_arvalid_INST_0
       (.I0(wb_we_i),
        .I1(wb_cyc_i),
        .I2(wb_stb_i),
        .I3(ardone),
        .O(m_axi_arvalid));
  LUT4 #(
    .INIT(16'h0080)) 
    m_axi_awvalid_INST_0
       (.I0(wb_we_i),
        .I1(wb_cyc_i),
        .I2(wb_stb_i),
        .I3(awdone),
        .O(m_axi_awvalid));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    m_axi_wvalid_INST_0
       (.I0(wb_we_i),
        .I1(wb_cyc_i),
        .I2(wb_stb_i),
        .I3(wdone),
        .O(m_axi_wvalid));
  LUT5 #(
    .INIT(32'h000008F8)) 
    wdone_i_1
       (.I0(p_10_in),
        .I1(m_axi_wready),
        .I2(wdone),
        .I3(m_axi_bvalid),
        .I4(rst),
        .O(wdone_i_1_n_0));
  FDRE wdone_reg
       (.C(clk),
        .CE(1'b1),
        .D(wdone_i_1_n_0),
        .Q(wdone),
        .R(1'b0));
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
