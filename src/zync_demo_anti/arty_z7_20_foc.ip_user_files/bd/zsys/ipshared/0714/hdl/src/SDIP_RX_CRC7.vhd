--------------------------------------------------------------------------------
-- Company: Trioflex OY
-- Engineer: Indrek Tubalkain 
--
-- Create Date: 
-- Design Name:    
-- Module Name: sdip_crc7 - Behavioral
-- Project Name:      
-- Target Device:  
-- Tool versions:  
-- Description: MMC/SD Carc CRC7 module
--              Can be used to 'shift out' 
--              the CRC7+stop bit after CALC
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:

--------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity SDIP_RX_CRC7 is Port ( 
		reset 	: in  std_logic;
      clk 		: in  std_logic;
      din 		: in  std_logic;
      crc 		: out std_logic_vector(6 downto 0);
      crcen 	: in  std_logic
		);
end SDIP_RX_CRC7;

architecture Behavioral of SDIP_RX_CRC7 is

signal sr : std_logic_vector(6 downto 0);

begin
	crc <= sr;

Process_CLK : process (clk, reset) is
begin  
	if reset = '1' then
		sr <= "0000000";
	else
	 	if rising_edge(clk) then
			if crcen = '1' then
				sr(0) <= din xor sr(6);
				sr(1) <= sr(0);
				sr(2) <= sr(1);
				sr(3) <= sr(2) xor sr(6) xor din;
				sr(4) <= sr(3);
				sr(5) <= sr(4);
				sr(6) <= sr(5);
			else
				sr(6 downto 1) <= sr(5 downto 0);
				-- STOP Bit!
				sr(0) <= '1';
			end if;
		end if;
	end if;
end process Process_CLK;

end Behavioral;
