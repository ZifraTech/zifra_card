--Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2016.2 (lin64) Build 1577090 Thu Jun  2 16:32:35 MDT 2016
--Date        : Wed Dec 14 14:25:26 2016
--Host        : linux-2g37 running 64-bit openSUSE Leap 42.1 (x86_64)
--Command     : generate_target design_2_wrapper.bd
--Design      : design_2_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_2_wrapper is
  port (
    onboard_led_tri_o : out STD_LOGIC;
    reset : in STD_LOGIC;
    sys_clock : in STD_LOGIC;
    uart_rxd : in STD_LOGIC;
    uart_txd : out STD_LOGIC
  );
end design_2_wrapper;

architecture STRUCTURE of design_2_wrapper is
  component design_2 is
  port (
    uart_rxd : in STD_LOGIC;
    uart_txd : out STD_LOGIC;
    reset : in STD_LOGIC;
    onboard_LED_tri_o : out STD_LOGIC;
    sys_clock : in STD_LOGIC
  );
  end component design_2;
begin
design_2_i: component design_2
     port map (
      onboard_LED_tri_o => onboard_led_tri_o,
      reset => reset,
      sys_clock => sys_clock,
      uart_rxd => uart_rxd,
      uart_txd => uart_txd
    );
end STRUCTURE;
