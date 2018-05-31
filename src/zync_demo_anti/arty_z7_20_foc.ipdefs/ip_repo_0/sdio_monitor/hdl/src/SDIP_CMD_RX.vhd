----------------------------------------------------------------------------------
-- Company: Trioflex OY
-- Engineer: Indrek Tubalkain
-- 
-- Create Date:    12:59:55 04/08/2010 
-- Design Name: 
-- Module Name:    SDIP_CMD_RX - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

--library work;
--use work.SDIP_CONFIG.all;
--use work.SDIP_SPEC.all;

entity SDIP_CMD_RX is Port ( 
		SD_CLK 		: in  std_logic;
      SD_CMD 		: in  std_logic;
		--
		reset			: in  std_logic;
		RX_en       : in  std_logic;
      COMMAND 		: out std_logic_vector(5 downto 0);	-- received command
      ARG 			: out std_logic_vector(31 downto 0); -- received argument
		--
      CRC_ERR 		: out  std_logic;
		new_CMD		: out  std_logic;
      CMD_DONE 	: out  std_logic -- pulse one clock when command done and ok
		);
end SDIP_CMD_RX;

architecture Behavioral of SDIP_CMD_RX is

	COMPONENT SDIP_RX_CRC7
	PORT(
		reset 	: in  std_logic;
		clk 		: in  std_logic;
		din 		: in  std_logic;
		crcen 	: in  std_logic;          
		crc 		: out std_logic_vector(6 downto 0)
		);
	END COMPONENT;


  -- Physical Layer Simplified Specification Version 2.00
  -- table 4.35 page 63
  constant SD_STATE_IDLE  : std_logic_vector(3 downto 0) := "0000";  -- 0
  constant SD_STATE_RDY   : std_logic_vector(3 downto 0) := "0001";  -- 1
  constant SD_STATE_IDENT : std_logic_vector(3 downto 0) := "0010";  -- 2
  constant SD_STATE_STBY  : std_logic_vector(3 downto 0) := "0011";  -- 3
  constant SD_STATE_TRAN  : std_logic_vector(3 downto 0) := "0100";  -- 4
  constant SD_STATE_DATA  : std_logic_vector(3 downto 0) := "0101";  -- 5
  constant SD_STATE_RCV   : std_logic_vector(3 downto 0) := "0110";  -- 6
  constant SD_STATE_PRG   : std_logic_vector(3 downto 0) := "0111";  -- 7
  constant SD_STATE_DIS   : std_logic_vector(3 downto 0) := "1000";  -- 8
  -- 9-14 reserved
  constant SD_STATE_IO    : std_logic_vector(3 downto 0) := "1111";  -- 15



signal read_CRC_s 	: std_logic_vector(6 downto 0);
signal calc_CRC 		: std_logic_vector(6 downto 0);
signal calc_CRC_s 	: std_logic_vector(6 downto 0);

signal BitCount 		: std_logic_vector(7 downto 0) := (others => '0');
signal command_sr 	: std_logic_vector(7 downto 0) := (others => '0');
signal arg_sr 			: std_logic_vector(31 downto 0) := (others => '0');
signal CMD_RX_ACT 	: std_logic := '0';
signal CMD_i1 			: std_logic := '0';
signal CMD_i2 			: std_logic := '0';
signal CMD_START 		: std_logic := '0';
signal cmd_done_s 	: std_logic := '0';
signal command_s 		: std_logic_vector(5 downto 0) := (others => '0');
signal arg_s 			: std_logic_vector(31 downto 0):= (others => '0');

signal CRC_RST       : std_logic := '1';
signal CRC_ERR_s     : std_logic := '0';
signal new_CMD_s     : std_logic := '0';

begin
	CRC_ERR 	<= CRC_ERR_s;
	COMMAND	<= command_s;
	ARG		<= arg_s;
	CMD_DONE	<= cmd_done_s;
	new_CMD	<= new_CMD_s;
   --
	


CMD_START <= CMD_i1 and CMD_i2 and not SD_CMD and RX_en; -- = 1 when (1 1 0)
	



Process_CLK : process (SD_CLK, reset) is
begin  
	if reset = '1' then
		CRC_RST        <= '1';
		CRC_ERR_s 		<= '0';
		calc_CRC_s     <= (others => '0');
		read_CRC_s		<= (others => '0');
		CMD_RX_ACT 		<= '0';	-- 
		cmd_done_s 		<= '0';
		command_s 		<= (others => '0');
      arg_s				<= (others => '0');
		BitCount 		<= "00000000";
		command_sr 		<= "00000001";
		arg_sr 			<= X"00000000";
      CMD_i1 			<= '0';
      CMD_i2 			<= '0';
		new_CMD_s		<= '0';

		
	else
	 	if (rising_edge(SD_CLK)) then -- we store on the rising edge
			-- 2 clock shifter
			CMD_i1 <= SD_CMD;
			CMD_i2 <= CMD_i1;
			
				-- Start Bit
			if(CMD_RX_ACT = '0') then	
				CMD_RX_ACT 	<= CMD_START;
				cmd_done_s 	<= '0';
				command_sr 	<= "00000001"; -- invert start bit
				CRC_RST    	<= not CMD_START;
				calc_CRC_s  <= (others => '0');
				read_CRC_s	<= (others => '0');
				
			else
				
				if (BitCount = "00100111") then   -- 39 RX Command done
					CRC_RST    	<= '1';
					calc_CRC_s  <= calc_CRC;
					command_s 	<= command_sr(5 downto 0);
					arg_s 		<= arg_sr;
					new_CMD_s	<= '1';
--					command_valid_s <= command_sr(7) and command_sr(6);
				else
					new_CMD_s	<= '0';
				end if;
				
--				if(new_CMD_s = '1') then
--					new_CMD_s	<= '0';
--				end if;

				if (BitCount = "00101111") then -- 47
					CMD_RX_ACT 	<= '0';
					cmd_done_s 	<= '1';
					BitCount 	<= "00000000";
					
					-- compare calculated and shifted CRC
					-- If NOT equal then turn ERR signal HIGH
					if(read_CRC_s /= calc_CRC_s)then
						CRC_ERR_s <= '1';
					end if;
				else
					BitCount 	<= BitCount + "00000001";
					cmd_done_s 	<= '0';
					CRC_ERR_s 	<= '0';
				end if;
					
				-- shift inverted start bit + transmit bit + 6 bit command 
				if (command_sr(7) = '0') then
					command_sr(7 downto 1) <= command_sr(6 downto 0);
					command_sr(0) <= SD_CMD;
				end if;
					
				-- shift 32 bit argument  
				if ((command_sr(7) = '1') and (BitCount < X"27")) then
					arg_sr(31 downto 1) <= arg_sr(30 downto 0);
					arg_sr(0) <= SD_CMD;
				end if;
				
				-- shift 7 bit CRC data
				if((BitCount >= X"27") and (BitCount < X"2E"))then
					read_CRC_s(6 downto 1) <= read_CRC_s(5 downto 0);
					read_CRC_s(0) <= SD_CMD;
				end if;

			end if;
		end if;
	end if;
end process Process_CLK;






	Inst_SDIP_RX_CRC7: SDIP_RX_CRC7 PORT MAP(
		reset 	=> CRC_RST,
		clk 		=> SD_CLK,
		din 		=> SD_CMD,
		crc 		=> calc_CRC,
		crcen 	=> '1'
	);

end Behavioral;

