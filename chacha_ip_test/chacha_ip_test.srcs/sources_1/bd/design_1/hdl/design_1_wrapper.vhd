--Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2016.2 (lin64) Build 1577090 Thu Jun  2 16:32:35 MDT 2016
--Date        : Wed Dec 14 12:04:11 2016
--Host        : linux-2g37 running 64-bit openSUSE Leap 42.1 (x86_64)
--Command     : generate_target design_1_wrapper.bd
--Design      : design_1_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_wrapper is
  port (
    onboard_led_tri_o : out STD_LOGIC;
    reset : in STD_LOGIC;
    spi_flash_io0_io : inout STD_LOGIC;
    spi_flash_io1_io : inout STD_LOGIC;
    spi_flash_ss_io : inout STD_LOGIC;
    sys_clock : in STD_LOGIC;
    uart_rxd : in STD_LOGIC;
    uart_txd : out STD_LOGIC
  );
end design_1_wrapper;

architecture STRUCTURE of design_1_wrapper is
  component design_1 is
  port (
    spi_flash_io0_i : in STD_LOGIC;
    spi_flash_io0_o : out STD_LOGIC;
    spi_flash_io0_t : out STD_LOGIC;
    spi_flash_io1_i : in STD_LOGIC;
    spi_flash_io1_o : out STD_LOGIC;
    spi_flash_io1_t : out STD_LOGIC;
    spi_flash_ss_i : in STD_LOGIC;
    spi_flash_ss_o : out STD_LOGIC;
    spi_flash_ss_t : out STD_LOGIC;
    uart_rxd : in STD_LOGIC;
    uart_txd : out STD_LOGIC;
    sys_clock : in STD_LOGIC;
    reset : in STD_LOGIC;
    onboard_LED_tri_o : out STD_LOGIC
  );
  end component design_1;
  component IOBUF is
  port (
    I : in STD_LOGIC;
    O : out STD_LOGIC;
    T : in STD_LOGIC;
    IO : inout STD_LOGIC
  );
  end component IOBUF;
  signal spi_flash_io0_i : STD_LOGIC;
  signal spi_flash_io0_o : STD_LOGIC;
  signal spi_flash_io0_t : STD_LOGIC;
  signal spi_flash_io1_i : STD_LOGIC;
  signal spi_flash_io1_o : STD_LOGIC;
  signal spi_flash_io1_t : STD_LOGIC;
  signal spi_flash_ss_i : STD_LOGIC;
  signal spi_flash_ss_o : STD_LOGIC;
  signal spi_flash_ss_t : STD_LOGIC;
begin
design_1_i: component design_1
     port map (
      onboard_LED_tri_o => onboard_led_tri_o,
      reset => reset,
      spi_flash_io0_i => spi_flash_io0_i,
      spi_flash_io0_o => spi_flash_io0_o,
      spi_flash_io0_t => spi_flash_io0_t,
      spi_flash_io1_i => spi_flash_io1_i,
      spi_flash_io1_o => spi_flash_io1_o,
      spi_flash_io1_t => spi_flash_io1_t,
      spi_flash_ss_i => spi_flash_ss_i,
      spi_flash_ss_o => spi_flash_ss_o,
      spi_flash_ss_t => spi_flash_ss_t,
      sys_clock => sys_clock,
      uart_rxd => uart_rxd,
      uart_txd => uart_txd
    );
spi_flash_io0_iobuf: component IOBUF
     port map (
      I => spi_flash_io0_o,
      IO => spi_flash_io0_io,
      O => spi_flash_io0_i,
      T => spi_flash_io0_t
    );
spi_flash_io1_iobuf: component IOBUF
     port map (
      I => spi_flash_io1_o,
      IO => spi_flash_io1_io,
      O => spi_flash_io1_i,
      T => spi_flash_io1_t
    );
spi_flash_ss_iobuf: component IOBUF
     port map (
      I => spi_flash_ss_o,
      IO => spi_flash_ss_io,
      O => spi_flash_ss_i,
      T => spi_flash_ss_t
    );
end STRUCTURE;
