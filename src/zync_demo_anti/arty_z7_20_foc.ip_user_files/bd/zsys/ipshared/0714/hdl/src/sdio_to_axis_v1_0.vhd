----------------------------------------------------------------------------------
-- Company: microFPGA UG
-- Engineer: Antti Lukats
-- 
-- Create Date:    26/11/2017 
-- Design Name: 
-- Module Name:    sdio_to_axis_v1_0 
-- Project Name: 
-- Target Devices: any 
-- Tool versions:  Vivado 2016.4 +
-- Description:    SDIO to AXI4-S Toplevel component
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Revision 0.02 - Added Copyright and File header metadata
-- Additional Comments: Initial testing was done on Arduzynq (Trenz Electronic TE0723)
--
----------------------------------------------------------------------------------



library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity sdio_to_axis_v1_0 is
	generic (


		C_INCLUDE_LED	: boolean   := false;
		C_INCLUDE_WP	: boolean   := false;
		C_INCLUDE_CDN	: boolean   := false;
		C_INCLUDE_POW	: boolean   := false;
		C_INCLUDE_VOLT	: boolean   := false;

		C_SDIO_WIDTH	: integer	:= 4
	);
	port (
		-- SD I/O
		
        SDIO_CLK_IN : in std_logic;
        SDIO_CLK_FB : in std_logic; -- out
        
        SDIO_CMD_I : in std_logic; --out
        SDIO_CMD_O : in std_logic;
        SDIO_CMD_T : in std_logic;

        SDIO_DAT_I : in std_logic_vector(C_SDIO_WIDTH-1 downto 0); -- out
        SDIO_DAT_O : in std_logic_vector(C_SDIO_WIDTH-1 downto 0);
        SDIO_DAT_T : in std_logic_vector(C_SDIO_WIDTH-1 downto 0);

        -- sideband
        SDIO_CDN     : in std_logic; -- out
        SDIO_WP      : in std_logic; -- out
        
        SDIO_BUSPOW  : in std_logic;
        SDIO_BUSVOLT : in std_logic_vector(2 downto 0);
        SDIO_LED     : in std_logic;


        -- to user

        SDIO_CLK     : out std_logic;
        SDIO_CMD     : out std_logic;
        SDIO_CMD_DIR : out std_logic;
        SDIO_DAT     : out std_logic_vector(C_SDIO_WIDTH-1 downto 0);
        SDIO_DAT_DIR : out std_logic;

        LED          : out std_logic;
        BUSPOW       : out std_logic;
        BUSVOLT      : out std_logic_vector(2 downto 0);

        CDN          : out std_logic; -- in
        WP           : out std_logic; -- in

        -- internal/Debug
        STATE        : out std_logic_vector(3 downto 0); -- Current State

        new_CMD      : out std_logic; 
        CRC_ERR      : out std_logic;
        RX_en        : in std_logic := '1';



		-- User ports ends
		-- Do not modify the ports beyond this line


		
		axis_aclk	    : in std_logic;
		axis_aresetn	: in std_logic;
		
		-- Ports of Axi Slave Bus Interface s_axis
		
--		-- all data on CMD line is streamed out
--		s_cmd_axis_tready	: out std_logic;
--        s_cmd_axis_tdata    : in std_logic_vector(7 downto 0) := X"00";
--        s_cmd_axis_tlast    : in std_logic := '0';
--        s_cmd_axis_tvalid   : in std_logic := '0';

--        -- all data on DATx is streamed out
--		s_dat_axis_tready	: out std_logic;
--		s_dat_axis_tdata	: in std_logic_vector(7 downto 0) := X"00";
--		s_dat_axis_tlast	: in std_logic := '0';
--		s_dat_axis_tvalid	: in std_logic := '0';

		-- Ports of Axi Master Bus Interface m_axis
		m_cmd_axis_tvalid	: out std_logic;
        m_cmd_axis_tdata    : out std_logic_vector(31 downto 0);
        m_cmd_axis_tuser    : out std_logic_vector(7 downto 0);
        m_cmd_axis_tlast    : out std_logic;
        m_cmd_axis_tready   : in std_logic := '1';

		m_dat_axis_tvalid	: out std_logic;
		m_dat_axis_tdata	: out std_logic_vector(7 downto 0);
		m_dat_axis_tlast	: out std_logic;
		m_dat_axis_tready	: in std_logic := '1'
	);
end sdio_to_axis_v1_0;

architecture arch_imp of sdio_to_axis_v1_0 is

	COMPONENT SDIP_CMD_RX
	PORT(
		SD_CLK 			: in  std_logic;
		SD_CMD 			: in  std_logic;
		reset			: in  std_logic;
		RX_en       	: in  std_logic;
		COMMAND 		: out std_logic_vector(5 downto 0);
		ARG 			: out std_logic_vector(31 downto 0);
		CRC_ERR 		: out std_logic;
		new_CMD			: out  std_logic;
		CMD_DONE 		: out std_logic
		);
	END COMPONENT;

signal SDIO_CMD_s : std_logic;
signal SDIO_CLK_s : std_logic;

signal COMMAND_s 	   	: std_logic_vector(5 downto 0);
signal ARG_s			: std_logic_vector(31 downto 0) := (others => '0');

signal reset_hi : std_logic;

signal SDIO_CMD_T_d 	: std_logic_vector(3 downto 0);
signal ACMD_s : std_logic;
signal m_cmd_axis_tvalid_s : std_logic;

begin
    reset_hi <= not axis_aresetn;
    
    --- SDIO_CLK_FB <= SDIO_CLK_IN;
    
    -- signal out
    SDIO_CLK    <= SDIO_CLK_FB;
    SDIO_CLK_s  <= SDIO_CLK_FB;
    -- Signal out
    SDIO_CMD    <= SDIO_CMD_s;
    SDIO_CMD_DIR <= not SDIO_CMD_T;
    
    --- SDIO_CMD_s    <= SDIO_CMD_O or SDIO_CMD_T;
    --- SDIO_DAT      <= SDIO_DAT_O or SDIO_DAT_T;

    -- CMD input internal signal
    -- fixed wired OR active low, if EITHER side is driving then we monitor..
    SDIO_CMD_s    <= SDIO_CMD_I and (SDIO_CMD_O or SDIO_CMD_T);
    
    -- DAT not used we just route it out
    SDIO_DAT      <= SDIO_DAT_I and (SDIO_DAT_O or SDIO_DAT_T);
    SDIO_DAT_DIR <= not SDIO_DAT_T(0);
    --- SDIO_CMD_I  <= '1';
    --- SDIO_DAT_I  <= "1111";
    
    
    ---  SDIO_CDN    <= CDN;
    --- SDIO_WP     <= WP;    

    --
    WP          <= SDIO_WP;
    CDN         <= SDIO_CDN;
     
    BUSPOW      <= SDIO_BUSPOW;
    BUSVOLT     <= SDIO_BUSVOLT;
    LED         <= SDIO_LED;

    STATE       <= "0000"; -- FAKE :(


	Inst_SDIP_CMD_RX: SDIP_CMD_RX PORT MAP(
		SD_CLK 	      => SDIO_CLK_s,
		SD_CMD 	      => SDIO_CMD_s,
		reset         => reset_hi,
		RX_en         => RX_en,
		COMMAND 	  => COMMAND_s,
		ARG 		  => ARG_s,
		CRC_ERR 	  => CRC_ERR,
		new_CMD	      => new_CMD,
		CMD_DONE      => m_cmd_axis_tvalid_s 
	);

    m_cmd_axis_tvalid <= m_cmd_axis_tvalid_s;

Process_SDIO_CLK_s : process (SDIO_CLK_s, axis_aresetn) is
begin  
	if axis_aresetn = '0' then
		SDIO_CMD_T_d <= "0000";
	else
	 	if rising_edge(SDIO_CLK_s) then
            SDIO_CMD_T_d <= SDIO_CMD_T_d(2 downto 0) & SDIO_CMD_T;
		end if;
	end if;
end process Process_SDIO_CLK_s;


Process_axis_aclk : process (axis_aclk, axis_aresetn) is
begin  
	if axis_aresetn = '0' then
		ACMD_s <= '0';
	else
	 	if rising_edge(axis_aclk) then
            if (m_cmd_axis_tvalid_s = '1')  then
                if (COMMAND_s(5 downto 0) = "110111") and (ACMD_s = '0') then -- ACMD => hex 37 or dec 55
                  ACMD_s <= '1';
                else 
                  ACMD_s <= '0';
                end if;
                     
            end if;
		end if;
	end if;
end process Process_axis_aclk;

    -- stream out command log
    m_cmd_axis_tdata                <= ARG_s;
    m_cmd_axis_tuser(5 downto 0)    <= COMMAND_s;
    m_cmd_axis_tuser(6)             <= not SDIO_CMD_T_d(3);
    m_cmd_axis_tuser(7)             <= ACMD_s;
   
    
    


end arch_imp;
