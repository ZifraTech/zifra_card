library ieee;
  use ieee.std_logic_1164.all;
  use ieee.numeric_std.all;

Library UNISIM;
  use UNISIM.vcomponents.all;


entity emio_sdemu is
port(
	clk_50        : in  std_logic;
	clk_100       : in  std_logic;
	clk_200       : in  std_logic;
	
	reset_n       : in  std_logic;

	--physical interface to SD pins
	sd_clk_fb     : out std_logic; -- connect to CLK_FB port of MASTER SDIO Interface
	sd_clk        : in std_logic; -- connect to CLK port of MASTER SDIO Interface
	
	clk_out       : out std_logic;
	clk_in        : in std_logic;
	
	sd_cmd_i      : out  std_logic;
	sd_cmd_o      : in std_logic;
	sd_cmd_t      : in std_logic;
	
	sd_dat_i      : out  std_logic_vector(3 downto 0);
	sd_dat_o      : in std_logic_vector(3 downto 0);
	sd_dat_t      : in std_logic_vector(3 downto 0);

    sd_busvolt    : in std_logic_vector(2 downto 0);
	sd_buspower   : in std_logic;
    sd_led        : in std_logic;
    
    sd_wp         : out std_logic;
    sd_cdn        : out std_logic;
	
	-- wishbone interface
	wbm_clk_o     : out std_logic;
	wbm_adr_o     : out std_logic_vector(31 downto 0);
	wbm_dat_i     : in  std_logic_vector(31 downto 0);
	wbm_dat_o     : out std_logic_vector(31 downto 0);
	wbm_sel_o     : out std_logic_vector(3 downto 0);
	wbm_cyc_o     : out std_logic;
	wbm_stb_o     : out std_logic;
	wbm_we_o      : out std_logic;
	wbm_ack_i     : in  std_logic;
	wbm_cti_o     : out std_logic_vector(2 downto 0);
	wbm_bte_o     : out std_logic_vector(1 downto 0);
	--options
	opt_enable_hs : in  std_logic;
	--debug
	state_debug   : out std_logic_vector(5 downto 0)
);


end entity emio_sdemu;


architecture RTL of emio_sdemu is
	
	-- add components
	
	component sd_top
		port(
			clk_50        : in  std_logic;
			clk_100       : in  std_logic;
			clk_200       : in  std_logic;
			reset_n       : in  std_logic;
			--physical interface to SD pins
			sd_clk        : in  std_logic;
			sd_cmd_i      : in  std_logic;
			sd_cmd_o      : out std_logic;
			sd_cmd_t      : out std_logic;
			sd_dat_i      : in  std_logic_vector(3 downto 0);
			sd_dat_o      : out std_logic_vector(3 downto 0);
			sd_dat_t      : out std_logic_vector(3 downto 0);
			-- wishbone interface
			wbm_clk_o     : out std_logic;
			wbm_adr_o     : out std_logic_vector(31 downto 0);
			wbm_dat_i     : in  std_logic_vector(31 downto 0);
			wbm_dat_o     : out std_logic_vector(31 downto 0);
			wbm_sel_o     : out std_logic_vector(3 downto 0);
			wbm_cyc_o     : out std_logic;
			wbm_stb_o     : out std_logic;
			wbm_we_o      : out std_logic;
			wbm_ack_i     : in  std_logic;
			wbm_cti_o     : out std_logic_vector(2 downto 0);
			wbm_bte_o     : out std_logic_vector(1 downto 0);
			--options
			opt_enable_hs : in  std_logic;
			--debugg
			state_debug   : out std_logic_vector(5 downto 0)
		);
	end component;

    signal sd_clk_buf: std_logic;
    
       
    signal sd_cmd_i_s: std_logic;
    signal sd_cmd_o_s: std_logic;
    signal sd_cmd_t_s: std_logic;
    
    signal sd_dat_i_s: std_logic_vector(3 downto 0);
    signal sd_dat_o_s: std_logic_vector(3 downto 0);
    signal sd_dat_t_s: std_logic_vector(3 downto 0);

    signal wb_addr_remap: std_logic_vector(31 downto 0);

begin
    sd_wp        <= '0';
    sd_cdn       <= '0';

    -- BUFG: Global Clock Simple Buffer
    --       Artix-7
    -- Xilinx HDL Language Template, version 2017.4
    
    clk_out <= sd_clk;
    
    BUFG_inst : BUFG
    port map (
      O => sd_clk_buf, -- 1-bit output: Clock output
      I => clk_in      -- 1-bit input: Clock input
    );    
    sd_clk_fb <= sd_clk_buf;

    -- funky wired or
    sd_cmd_i   <= (sd_cmd_o or sd_cmd_t) and (sd_cmd_o_s or sd_cmd_t_s);
    sd_cmd_i_s <= (sd_cmd_o or sd_cmd_t) and (sd_cmd_o_s or sd_cmd_t_s);
    
    sd_dat_i   <= (sd_dat_o or sd_dat_t) and (sd_dat_o_s or sd_dat_t_s);
    sd_dat_i_s <= (sd_dat_o or sd_dat_t) and (sd_dat_o_s or sd_dat_t_s);

    -- address wrap into upper 512KByte of lower 1GBbyte ext DDR space
    wbm_adr_o <= "0000" & wb_addr_remap(27 downto 0);

	SDTOP : sd_top
		port map(
			clk_50        => clk_50,
			clk_100       => clk_100,
			clk_200       => clk_200,
			
			reset_n       => reset_n,
			
			sd_clk        => sd_clk_buf,
			sd_cmd_i      => sd_cmd_i_s,
			sd_cmd_o      => sd_cmd_o_s,
			sd_cmd_t      => sd_cmd_t_s,
			
			sd_dat_i      => sd_dat_i_s,
			sd_dat_o      => sd_dat_o_s,
			sd_dat_t      => sd_dat_t_s,
			wbm_clk_o     => wbm_clk_o,
			wbm_adr_o     => wb_addr_remap, --wbm_adr_o,
			wbm_dat_i     => wbm_dat_i,
			wbm_dat_o     => wbm_dat_o,
			wbm_sel_o     => wbm_sel_o,
			wbm_cyc_o     => wbm_cyc_o,
			wbm_stb_o     => wbm_stb_o,
			wbm_we_o      => wbm_we_o,
			wbm_ack_i     => wbm_ack_i,
			wbm_cti_o     => wbm_cti_o,
			wbm_bte_o     => wbm_bte_o,
			
			opt_enable_hs => opt_enable_hs,
			state_debug   => state_debug
		);

end architecture RTL;
