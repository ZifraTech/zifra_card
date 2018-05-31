----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09.04.2018 18:27:13
-- Design Name: 
-- Module Name: clock_detector - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity clock_detector is Port (
        refclk : in STD_LOGIC;  -- REFERENCE Clock
        clk : in STD_LOGIC;     -- Clock to monitor
        SLOW : out STD_LOGIC);  -- SLOW is set 1 when clk is slow compared to ref clock
end clock_detector;

architecture Behavioral of clock_detector is

signal clk_sr: std_logic_vector(1 downto 0);
signal counter: unsigned(11 downto 0);

begin

  process (refclk)
  begin
    if (refclk'event and refclk='1') then
      clk_sr  <= clk_sr(0) & clk; -- shift slow clock
      if clk_sr="00" then
        counter <= X"000";
      else
        counter <= counter + X"001";
      end if;
      if clk_sr="10" then
        if (counter > X"008") then
            SLOW <= '1';
        else
            SLOW <= '0';
        end if;
      end if;            
    end if;
  end process;

end Behavioral;
