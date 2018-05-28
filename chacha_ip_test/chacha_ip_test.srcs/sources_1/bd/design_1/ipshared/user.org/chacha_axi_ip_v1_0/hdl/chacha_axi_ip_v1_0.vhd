library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity chacha_axi_ip_v1_0 is
	generic(
		-- Users to add parameters here

		-- User parameters ends
		-- Do not modify the parameters beyond this line


		-- Parameters of Axi Slave Bus Interface S00_AXIS
		C_S00_AXIS_TDATA_WIDTH : integer := 512;

		-- Parameters of Axi Master Bus Interface M00_AXIS
		C_M00_AXIS_TDATA_WIDTH : integer := 512
	--C_M00_AXIS_START_COUNT	: integer	:= 32
	);
	port(
		-- Users to add ports here

		-- User ports ends
		-- Do not modify the ports beyond this line


		-- Ports of Axi Slave Bus Interface S00_AXIS
		axis_aclk       : in  std_logic;
		axis_aresetn    : in  std_logic;
		s00_axis_tready : out std_logic;
		s00_axis_tdata  : in  std_logic_vector(C_S00_AXIS_TDATA_WIDTH - 1 downto 0);
		s00_axis_tstrb  : in  std_logic_vector((C_S00_AXIS_TDATA_WIDTH / 8) - 1 downto 0);
		s00_axis_tlast  : in  std_logic;
		s00_axis_tvalid : in  std_logic;

		-- Ports of Axi Master Bus Interface M00_AXIS
		--m00_axis_aclk	: in std_logic;
		--m00_axis_aresetn	: in std_logic;
		m00_axis_tvalid : out std_logic;
		m00_axis_tdata  : out std_logic_vector(C_M00_AXIS_TDATA_WIDTH - 1 downto 0);
		m00_axis_tstrb  : out std_logic_vector((C_M00_AXIS_TDATA_WIDTH / 8) - 1 downto 0);
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
			init           : in  std_logic;
			next_b         : in  std_logic; -- next block used when multiple blocks
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

--init              => OPEN,              -- Initiates new encryption.
--next              => OPEN,              -- This one is used when multiple blocks
-- key               => OPEN,              -- 256 bit encryption key
--  keylen            => OPEN,              -- Key Load enable
--  iv                => OPEN,              -- 64 bit IV argument
--   ctr               => h"0",              -- 64 bit counter
-- rounds            => OPEN,              -- rounds 5bit. range from 2 to 32
--  data_in           => s_axis_tdata,
--ready             => OPEN,              -- ready fore new data
--data_out          => m_axis_tdata,
--   data_out_valid    => m_axis_tready
begin

	-- Instantiation of Axi Bus Interface S00_AXIS


	-- Add user logic here
	crypto : chacha_core
		port map(
			clk            => axis_aclk,
			reset_n        => axis_aresetn,
			init           => '1',
			next_b         => '1',
			key            => (others => '1'),
			keylen         => '1',
			iv             => (others => '1'),
			ctr            => (others => '0'),
			rounds         => "00100",
			data_in        => s00_axis_tdata,
			ready          => s00_axis_tready,
			data_out       => m00_axis_tdata,
			data_out_valid => m00_axis_tvalid
		);

-- User logic ends

end arch_imp;
