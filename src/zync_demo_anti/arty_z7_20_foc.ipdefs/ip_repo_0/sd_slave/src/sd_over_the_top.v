
module sd_top_top(

        // clocking/reset
        input  wire         clk_50_over,
        input  wire         reset_n_over,
    
        // physical interface to SD pins
	    input  wire         sd_clk,
	    inout  wire         sd_cmd,
	    inout  wire [3:0]   sd_dat,

        // wishbone interface
        output wire         wbm_clk_o_over,
        output wire [31:0]  wbm_adr_o_over,
        input  wire [31:0]  wbm_dat_i_over,
        output wire [31:0]  wbm_dat_o_over,
        output wire [3:0]   wbm_sel_o_over,
        output wire         wbm_cyc_o_over,
        output wire         wbm_stb_o_over,
        output wire         wbm_we_o_over,
        input  wire         wbm_ack_i_over,
        output wire [2:0]   wbm_cti_o_over,
        output wire [1:0]   wbm_bte_o_over,

        // options
        input  wire         opt_enable_hs_over,
        
        // ila interface
        output wire sd_cmd_i
       // output  wire        sd_clk_probe
        //inout   wire        sd_cmd_probe,
        //inout   wire [3:0]  sd_dat_probe        
	);



wire sd_clk_buf, wb_sdhc_clk; // TODO uncerten about this one.
    
IBUFG sd_clk_IBUFG (
    .I ( sd_clk ),
    .O ( sd_clk_buf )
);

wire sd_cmd_i, sd_cmd_o, sd_cmd_t;
IOBUF sd_cmd_IOBUF (
    .IO ( sd_cmd ),
    .I  ( sd_cmd_o ),
    .O  ( sd_cmd_i ),
    .T  ( sd_cmd_t )
);
wire [3:0] sd_dat_i, sd_dat_o, sd_dat_t;

// AL
genvar i;

//assign sd_clk = sd_clk_probe;

generate for(i = 0; i < 4; i = i + 1) begin : sd_dat_IOBUF
    IOBUF sd_dat_IOBUF (
        .IO ( sd_dat[i] ),
        .I  ( sd_dat_o[i] ),
        .O  ( sd_dat_i[i] ),
        .T  ( sd_dat_t[i] )
    );
end endgenerate

sd_top sd_top (
    .clk_50        ( wb_clk ),
    .reset_n       ( ~wb_rst ),

    .sd_clk        ( sd_clk_buf ),
    .sd_cmd_i      ( sd_cmd_i ),
    .sd_cmd_o      ( sd_cmd_o ),
    .sd_cmd_t      ( sd_cmd_t ),
    .sd_dat_i      ( sd_dat_i ),
    .sd_dat_o      ( sd_dat_o ),
    .sd_dat_t      ( sd_dat_t ),

    .wbm_clk_o     ( wbm_clk_o_over ),
    .wbm_adr_o     ( wbm_adr_o_over ),
    .wbm_dat_o     ( wbm_dat_o_over ),
    .wbm_sel_o     ( wbm_sel_o_over ),
    .wbm_cyc_o     ( wbm_cyc_o_over ),
    .wbm_stb_o     ( wbm_stb_o_over ),
    .wbm_we_o      ( wbm_we_o_over  ),
    .wbm_cti_o     ( wbm_cti_o_over ),
    .wbm_bte_o     ( wbm_bte_o_over ),
    .wbm_dat_i     ( wbm_dat_i_over ),
    .wbm_ack_i     ( wbm_ack_i_over ),

    .opt_enable_hs ( opt_enable_hs_over ) //( EN_HS ) //TODO need to figure out if we need this it is used in the original top.
);

ila_debug (
    .clk        ( clk_50_over ),
    .probe0     ( sd_dat_i )      
    
);


endmodule
