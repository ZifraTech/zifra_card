library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_chacha_axis is
end entity tb_chacha_axis;

architecture RTL of tb_chacha_axis is
	component chacha_axi_ip_v1_0
		generic(
			CONTROLE_BUS           : integer := 320;
			C_S00_AXIS_TDATA_WIDTH : integer := 512;
			C_M00_AXIS_TDATA_WIDTH : integer := 512
		);
		port(
			s01_axis_tready : out std_logic;
			s01_axis_tdata  : in  std_logic_vector(CONTROLE_BUS - 1 downto 0);
			s01_axis_tvalid : in  std_logic;
			axis_aclk       : in  std_logic;
			axis_aresetn    : in  std_logic;
			s00_axis_tready : out std_logic;
			s00_axis_tdata  : in  std_logic_vector(C_S00_AXIS_TDATA_WIDTH - 1 downto 0);
			s00_axis_tvalid : in  std_logic;
			m00_axis_tvalid : out std_logic;
			m00_axis_tdata  : out std_logic_vector(C_M00_AXIS_TDATA_WIDTH - 1 downto 0);
			m00_axis_tlast  : out std_logic;
			m00_axis_tready : in  std_logic
		);
	end component chacha_axi_ip_v1_0;

	constant mesage1              : std_logic_vector(511 downto 0) := x"FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00";
	constant mesage2              : std_logic_vector(511 downto 0) := x"0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF";
	constant key1                 : std_logic_vector(255 downto 0) := x"0001000100010001000100010001000100010001000100010001000100010001";
	constant key2                 : std_logic_vector(255 downto 0) := X"1110111011101110111011101110111011101110111011101110111011101110";
	constant iv1                  : std_logic_vector(63 downto 0)  := x"0001000100010001";
	constant iv2                  : std_logic_vector(63 downto 0)  := x"1100110011001100";
	signal clk                    : std_logic;
	signal data_in                : std_logic_vector(512 - 1 downto 0);
	signal data_out               : std_logic_vector(512 - 1 downto 0);
	signal reset_n                : std_logic;
	signal period                 : time                           := 20 ns;
	signal chacha_ready           : std_logic;
	signal data_to_chacha_valid   : std_logic;
	signal data_from_chacha_valid : std_logic;
	signal last                   : std_logic;
	signal controle_data          : std_logic_vector(320 - 1 downto 0);
	signal valid_controle         : std_logic;
	signal enc_data1              : std_logic_vector(512 - 1 downto 0);
	signal enc_data2              : std_logic_vector(512 - 1 downto 0);
	signal dec_data2              : std_logic_vector(512 - 1 downto 0);
	signal dec_data1              : std_logic_vector(512 - 1 downto 0);
	

begin
	dut : component chacha_axi_ip_v1_0
		port map(
			s01_axis_tdata  => controle_data,
			s01_axis_tvalid => valid_controle,
			axis_aclk       => clk,
			axis_aresetn    => reset_n,
			s00_axis_tready => chacha_ready, -- I'm here.
			s00_axis_tdata  => data_in,
			s00_axis_tvalid => data_to_chacha_valid,
			m00_axis_tvalid => data_from_chacha_valid,
			m00_axis_tdata  => data_out,
			m00_axis_tlast  => open,
			m00_axis_tready => last
		);

	reset_n <= '0', '1' after 200 ns;

	clock_driver : process
	begin
		clk <= '0';
		wait for period / 2;
		clk <= '1';
		wait for period / 2;
	end process clock_driver;

	exitanda : process
	begin
		--------------sett key1 and IV1------------------------
		wait for 500 ns;
		controle_data  <= iv1 & key1;
		valid_controle <= '1';
		wait for 100 ns;
		valid_controle <= '0';
		wait for 100 ns;
		data_in <= mesage1;             -- lodng here so that I do not have to wait later 
		if chacha_ready /= '1' then
			wait until chacha_ready = '1';
		end if;

		--------------encrypte mesage1-------------------------
		data_to_chacha_valid <= '1';
		wait for 100 ns;
		data_to_chacha_valid <= '0';

		wait until data_from_chacha_valid = '1';
		enc_data1 <= data_out;
		if chacha_ready /= '1' then
			wait until chacha_ready = '1';
		end if;

		------------sett key2 and IV2--------------------------
		controle_data  <= iv2 & key2;
		valid_controle <= '1';
		wait for 100 ns;
		valid_controle <= '0';
		wait for 100 ns;
		data_in        <= mesage2;

		if chacha_ready /= '1' then
			wait until chacha_ready = '1';
		end if;

		------------encrypt/decrypt mesage2-----------------------------                           
		data_to_chacha_valid <= '1';
		wait for 100 ns;
		data_to_chacha_valid <= '0';

		wait until data_from_chacha_valid = '1';
		enc_data2 <= data_out;
		wait for 100 ns;
		data_in <= enc_data2;
		if chacha_ready /= '1' then
			wait until chacha_ready = '1';
		end if;
		data_to_chacha_valid <= '1';
		wait for 100 ns;
		data_to_chacha_valid <= '0';

		wait until data_from_chacha_valid = '1';
		dec_data2 <= data_out;
		data_in   <= enc_data1;         -- pre loding this

		wait for 100 ns;				-- waiting for data_out to propegate to dec_data2
		assert dec_data2 = mesage2 report "Nott the right decrypted message2" severity error;

		if chacha_ready /= '1' then
			wait until chacha_ready = '1';
		end if;

		------------loding key1 and iv1 again--------------------------------
		controle_data  <= iv1 & key1;
		valid_controle <= '1';
		wait for 100 ns;
		valid_controle <= '0';
		wait for 100 ns;
		if chacha_ready /= '1' then
			wait until chacha_ready = '1';
		end if;

		--------------decrypting message1-------------------------------------
		data_to_chacha_valid <= '1';
		wait for 100 ns;
		data_to_chacha_valid <= '0';

		wait until data_from_chacha_valid = '1';
		dec_data1 <= data_out;
		wait for 100 ns;			-- putt waiting for data_out to progepate to dec_data1
		assert dec_data1 = mesage1 report "Not the write message1" severity error;
		wait for 500 ns;
		report "Test finiched " severity failure;

	end process exitanda;

end architecture RTL;
