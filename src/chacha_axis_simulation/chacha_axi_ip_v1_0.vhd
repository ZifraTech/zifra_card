-- TODO if we can not controle when we update IV and key form the outside I can make it idiot proof later

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity chacha_axi_ip_v1_0 is
	generic(
		-- Users to add parameters here
		CONTROLE_BUS           : integer := 320;
		-- User parameters ends
		-- Do not modify the parameters beyond this line

		C_S00_AXIS_TDATA_WIDTH : integer := 512;
		C_M00_AXIS_TDATA_WIDTH : integer := 512
	);
	port(
		-- Users to add ports here
		-- controle stream buss we will need 320 bit size key(256) + IV(64)
		-- will have the rounds static fore now 

		s01_axis_tready : out std_logic;
		s01_axis_tdata  : in  std_logic_vector(CONTROLE_BUS - 1 downto 0); -- the 256LSB is the key the 64MSB are the IV
		-- s01_axis_tlast  : in  std_logic;
		s01_axis_tvalid : in  std_logic;
		-- User ports ends
		-- Do not modify the ports beyond this line

		-- Ports of Axi Slave Bus Interface S00_AXIS
		axis_aclk       : in  std_logic;
		axis_aresetn    : in  std_logic;
		s00_axis_tready : out std_logic;
		s00_axis_tdata  : in  std_logic_vector(C_S00_AXIS_TDATA_WIDTH - 1 downto 0);
		-- s00_axis_tstrb  : in  std_logic_vector((C_S00_AXIS_TDATA_WIDTH / 8) - 1 downto 0); --Testing with out this
		-- s00_axis_tlast  : in  std_logic;
		s00_axis_tvalid : in  std_logic;
		-- Ports of Axi Master Bus Interface M00_AXIS
		-- m00_axis_aclk	: in std_logic;
		-- m00_axis_aresetn	: in std_logic;
		m00_axis_tvalid : out std_logic;
		m00_axis_tdata  : out std_logic_vector(C_M00_AXIS_TDATA_WIDTH - 1 downto 0);
		-- m00_axis_tstrb  : out std_logic_vector((C_M00_AXIS_TDATA_WIDTH / 8) - 1 downto 0);
		m00_axis_tlast  : out std_logic;
		m00_axis_tready : in  std_logic
	);
end chacha_axi_ip_v1_0;

architecture arch_imp of chacha_axi_ip_v1_0 is

	-- component declaration
	component chacha_core
		port(
			clk            : in  std_logic;
			reset_n        : in  std_logic;
			init           : in  std_logic; -- Initiates new encryption.
			next_b         : in  std_logic; -- next block needs to be triggerd between each block
			key            : in  std_logic_vector(255 downto 0);
			keylen         : in  std_logic; -- key lode enable
			iv             : in  std_logic_vector(63 downto 0);
			ctr            : in  std_logic_vector(63 downto 0); -- 64 bit counter
			rounds         : in  std_logic_vector(4 downto 0); -- rounds range from 2 to 32
			data_in        : in  std_logic_vector(511 downto 0);
			ready          : out std_logic; -- ready fore new data
			data_out       : out std_logic_vector(511 downto 0);
			data_out_valid : out std_logic
		);
	end component chacha_core;
	signal data_out_valid_sig : std_logic;
	signal next_block_sig     : std_logic;
	signal keylen_sig         : std_logic;
	signal key_reg            : std_logic_vector(255 downto 0);
	signal iv_reg             : std_logic_vector(63 downto 0);
	signal ready_sig          : std_logic;

begin

	-- Instantiation of Axi Bus Interface S00_AXIS

	-- Add user logic here
	-- --------------------This part takes care of loding new key and iv--------------------------
	key_reg <= s01_axis_tdata(255 downto 0);

	update_key_iv : process(axis_aclk)
	begin
		if rising_edge(axis_aclk) then
			if (s01_axis_tvalid = '1') and (ready_sig = '1') then
				keylen_sig <= '1';
				iv_reg     <= s01_axis_tdata(319 downto 256);
			end if;
		end if;

	end process update_key_iv;

	-- --------------------This part takes care of trigireing new blocks---------------------------
	m00_axis_tvalid <= data_out_valid_sig;
	s00_axis_tready <= ready_sig;
	s01_axis_tready <= ready_sig;

	next_block : process(axis_aclk, s00_axis_tvalid, data_out_valid_sig)
	begin
		if rising_edge(axis_aclk) then
			if (s00_axis_tvalid = '1') and (data_out_valid_sig = '1') then
				next_block_sig <= '1';
			else
				next_block_sig <= '0';
			end if;
		end if;
	end process next_block;

	crypto : chacha_core
		port map(
			clk            => axis_aclk,
			reset_n        => axis_aresetn,
			init           => s00_axis_tvalid,
			next_b         => next_block_sig,
			key            => key_reg,
			keylen         => keylen_sig,
			iv             => iv_reg,
			ctr            => (others => '0'),
			rounds         => "01000",
			data_in        => s00_axis_tdata,
			ready          => ready_sig,
			data_out       => m00_axis_tdata,
			data_out_valid => data_out_valid_sig
		);

-- User logic ends

end arch_imp;
