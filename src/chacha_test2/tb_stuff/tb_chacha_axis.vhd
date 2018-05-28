library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_chacha_axis is
	port(
		clk                    : in  std_logic;
		chacha_ready           : in  std_logic;
		data_from_chacha_valid : in  std_logic;
		data_from_chacha       : in  std_logic_vector(511 downto 0);
		rst                    : out std_logic;
		data_to_chacah         : out std_logic_vector(511 downto 0);
		data_to_chacha_valid   : out std_logic
	);
end entity tb_chacha_axis;

architecture RTL of tb_chacha_axis is
begin
	-- STATEMACHINE
	-- PUTT DATA ON THE OUTPUT
	-- WHEN CHACHA READY GIVE AN DATA VALID SIGNAL
	-- WHAIT FORE DATA VALID FROM CHACHA
end architecture RTL;
