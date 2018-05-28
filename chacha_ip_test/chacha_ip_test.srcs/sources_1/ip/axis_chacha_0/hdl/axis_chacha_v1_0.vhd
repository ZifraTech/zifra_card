library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity axis_chacha_v1_0 is
	generic (
		-- Users to add parameters here

		-- User parameters ends
		-- Do not modify the parameters beyond this line


		-- Parameters of Axi Slave Bus Interface S_AXIS
		C_S_AXIS_TDATA_WIDTH	: integer	:= 512;

		-- Parameters of Axi Master Bus Interface M_AXIS
		C_M_AXIS_TDATA_WIDTH	: integer	:= 512
	);
	port (
		-- Users to add ports here

		-- User ports ends
		-- Do not modify the ports beyond this line


		-- Ports of Axi Slave Bus Interface S_AXIS
		axis_aclk	: in std_logic;
		axis_aresetn	: in std_logic;
		
		s_axis_tready	: out std_logic;
		s_axis_tdata	: in std_logic_vector(C_S_AXIS_TDATA_WIDTH-1 downto 0);
		s_axis_tstrb	: in std_logic_vector((C_S_AXIS_TDATA_WIDTH/8)-1 downto 0);
		s_axis_tlast	: in std_logic;
		s_axis_tvalid	: in std_logic;

		-- Ports of Axi Master Bus Interface M_AXIS
		--m_axis_aclk	: in std_logic;
		--m_axis_aresetn	: in std_logic;
		m_axis_tvalid	: out std_logic;
		m_axis_tdata	: out std_logic_vector(C_M_AXIS_TDATA_WIDTH-1 downto 0);
		m_axis_tstrb	: out std_logic_vector((C_M_AXIS_TDATA_WIDTH/8)-1 downto 0);
		m_axis_tlast	: out std_logic;
		m_axis_tready	: in std_logic
	);
end axis_chacha_v1_0;

architecture arch_imp of axis_chacha_v1_0 is


begin

chacha_inst : entity work.chacha_core
	port map (
		clk	              => axis_aclk,
		reset_n           => axis_aresetn,
		
		data_in           => s_axis_tdata,
		data_out          => m_axis_tdata,
		data_out_valid    => m_axis_tready
		
	);




end arch_imp;
