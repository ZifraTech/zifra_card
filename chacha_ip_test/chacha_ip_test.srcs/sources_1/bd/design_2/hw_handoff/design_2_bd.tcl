
################################################################
# This is a generated script based on design: design_2
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2016.2
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_msg_id "BD_TCL-109" "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source design_2_script.tcl

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7a100tcsg324-2
   set_property BOARD_PART trenz.biz:te0725_100_2c:part0:1.0 [current_project]
}


# CHANGE DESIGN NAME HERE
set design_name design_2

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      common::send_msg_id "BD_TCL-001" "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_msg_id "BD_TCL-002" "INFO" "Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   common::send_msg_id "BD_TCL-003" "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   common::send_msg_id "BD_TCL-004" "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

common::send_msg_id "BD_TCL-005" "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_msg_id "BD_TCL-114" "ERROR" $errMsg}
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################


# Hierarchical cell: microblaze_0_local_memory
proc create_hier_cell_microblaze_0_local_memory { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" create_hier_cell_microblaze_0_local_memory() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode MirroredMaster -vlnv xilinx.com:interface:lmb_rtl:1.0 DLMB
  create_bd_intf_pin -mode MirroredMaster -vlnv xilinx.com:interface:lmb_rtl:1.0 ILMB

  # Create pins
  create_bd_pin -dir I -type clk LMB_Clk
  create_bd_pin -dir I -from 0 -to 0 -type rst SYS_Rst

  # Create instance: dlmb_bram_if_cntlr, and set properties
  set dlmb_bram_if_cntlr [ create_bd_cell -type ip -vlnv xilinx.com:ip:lmb_bram_if_cntlr:4.0 dlmb_bram_if_cntlr ]
  set_property -dict [ list \
CONFIG.C_ECC {0} \
 ] $dlmb_bram_if_cntlr

  # Create instance: dlmb_v10, and set properties
  set dlmb_v10 [ create_bd_cell -type ip -vlnv xilinx.com:ip:lmb_v10:3.0 dlmb_v10 ]

  # Create instance: ilmb_bram_if_cntlr, and set properties
  set ilmb_bram_if_cntlr [ create_bd_cell -type ip -vlnv xilinx.com:ip:lmb_bram_if_cntlr:4.0 ilmb_bram_if_cntlr ]
  set_property -dict [ list \
CONFIG.C_ECC {0} \
 ] $ilmb_bram_if_cntlr

  # Create instance: ilmb_v10, and set properties
  set ilmb_v10 [ create_bd_cell -type ip -vlnv xilinx.com:ip:lmb_v10:3.0 ilmb_v10 ]

  # Create instance: lmb_bram, and set properties
  set lmb_bram [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.3 lmb_bram ]
  set_property -dict [ list \
CONFIG.Memory_Type {True_Dual_Port_RAM} \
CONFIG.use_bram_block {BRAM_Controller} \
 ] $lmb_bram

  # Create interface connections
  connect_bd_intf_net -intf_net microblaze_0_dlmb [get_bd_intf_pins DLMB] [get_bd_intf_pins dlmb_v10/LMB_M]
  connect_bd_intf_net -intf_net microblaze_0_dlmb_bus [get_bd_intf_pins dlmb_bram_if_cntlr/SLMB] [get_bd_intf_pins dlmb_v10/LMB_Sl_0]
  connect_bd_intf_net -intf_net microblaze_0_dlmb_cntlr [get_bd_intf_pins dlmb_bram_if_cntlr/BRAM_PORT] [get_bd_intf_pins lmb_bram/BRAM_PORTA]
  connect_bd_intf_net -intf_net microblaze_0_ilmb [get_bd_intf_pins ILMB] [get_bd_intf_pins ilmb_v10/LMB_M]
  connect_bd_intf_net -intf_net microblaze_0_ilmb_bus [get_bd_intf_pins ilmb_bram_if_cntlr/SLMB] [get_bd_intf_pins ilmb_v10/LMB_Sl_0]
  connect_bd_intf_net -intf_net microblaze_0_ilmb_cntlr [get_bd_intf_pins ilmb_bram_if_cntlr/BRAM_PORT] [get_bd_intf_pins lmb_bram/BRAM_PORTB]

  # Create port connections
  connect_bd_net -net SYS_Rst_1 [get_bd_pins SYS_Rst] [get_bd_pins dlmb_bram_if_cntlr/LMB_Rst] [get_bd_pins dlmb_v10/SYS_Rst] [get_bd_pins ilmb_bram_if_cntlr/LMB_Rst] [get_bd_pins ilmb_v10/SYS_Rst]
  connect_bd_net -net microblaze_0_Clk [get_bd_pins LMB_Clk] [get_bd_pins dlmb_bram_if_cntlr/LMB_Clk] [get_bd_pins dlmb_v10/LMB_Clk] [get_bd_pins ilmb_bram_if_cntlr/LMB_Clk] [get_bd_pins ilmb_v10/LMB_Clk]

  # Restore current instance
  current_bd_instance $oldCurInst
}


# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports
  set onboard_LED [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:gpio_rtl:1.0 onboard_LED ]
  set uart [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:uart_rtl:1.0 uart ]

  # Create ports
  set reset [ create_bd_port -dir I -type rst reset ]
  set_property -dict [ list \
CONFIG.POLARITY {ACTIVE_HIGH} \
 ] $reset
  set sys_clock [ create_bd_port -dir I -type clk sys_clock ]
  set_property -dict [ list \
CONFIG.FREQ_HZ {100000000} \
CONFIG.PHASE {0.000} \
 ] $sys_clock

  # Create instance: axi_gpio_0, and set properties
  set axi_gpio_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 axi_gpio_0 ]
  set_property -dict [ list \
CONFIG.GPIO_BOARD_INTERFACE {onboard_LED} \
CONFIG.USE_BOARD_FLOW {true} \
 ] $axi_gpio_0

  # Create instance: axi_uartlite_0, and set properties
  set axi_uartlite_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_uartlite:2.0 axi_uartlite_0 ]
  set_property -dict [ list \
CONFIG.C_S_AXI_ACLK_FREQ_HZ {100000000} \
CONFIG.UARTLITE_BOARD_INTERFACE {uart} \
CONFIG.USE_BOARD_FLOW {true} \
 ] $axi_uartlite_0

  # Need to retain value_src of defaults
  set_property -dict [ list \
CONFIG.C_S_AXI_ACLK_FREQ_HZ.VALUE_SRC {DEFAULT} \
 ] $axi_uartlite_0

  # Create instance: axis_dwidth_converter_0, and set properties
  set axis_dwidth_converter_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axis_dwidth_converter:1.1 axis_dwidth_converter_0 ]
  set_property -dict [ list \
CONFIG.M_TDATA_NUM_BYTES {64} \
 ] $axis_dwidth_converter_0

  # Create instance: axis_dwidth_converter_1, and set properties
  set axis_dwidth_converter_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axis_dwidth_converter:1.1 axis_dwidth_converter_1 ]

  # Create instance: chacha_axi_ip_0, and set properties
  set chacha_axi_ip_0 [ create_bd_cell -type ip -vlnv user.org:user:chacha_axi_ip:1.0 chacha_axi_ip_0 ]

  # Create instance: clk_wiz_0, and set properties
  set clk_wiz_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:clk_wiz:5.3 clk_wiz_0 ]
  set_property -dict [ list \
CONFIG.CLKOUT1_JITTER {130.958} \
CONFIG.CLKOUT1_PHASE_ERROR {98.575} \
CONFIG.CLK_IN1_BOARD_INTERFACE {sys_clock} \
CONFIG.MMCM_CLKFBOUT_MULT_F {10.000} \
CONFIG.MMCM_CLKIN1_PERIOD {10.0} \
CONFIG.MMCM_CLKIN2_PERIOD {10.0} \
CONFIG.MMCM_CLKOUT0_DIVIDE_F {10.000} \
CONFIG.MMCM_COMPENSATION {ZHOLD} \
CONFIG.RESET_BOARD_INTERFACE {reset} \
CONFIG.USE_BOARD_FLOW {true} \
 ] $clk_wiz_0

  # Need to retain value_src of defaults
  set_property -dict [ list \
CONFIG.CLKOUT1_JITTER.VALUE_SRC {DEFAULT} \
CONFIG.CLKOUT1_PHASE_ERROR.VALUE_SRC {DEFAULT} \
CONFIG.MMCM_CLKFBOUT_MULT_F.VALUE_SRC {DEFAULT} \
CONFIG.MMCM_CLKIN1_PERIOD.VALUE_SRC {DEFAULT} \
CONFIG.MMCM_CLKIN2_PERIOD.VALUE_SRC {DEFAULT} \
CONFIG.MMCM_CLKOUT0_DIVIDE_F.VALUE_SRC {DEFAULT} \
CONFIG.MMCM_COMPENSATION.VALUE_SRC {DEFAULT} \
 ] $clk_wiz_0

  # Create instance: mdm_1, and set properties
  set mdm_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:mdm:3.2 mdm_1 ]

  # Create instance: microblaze_0, and set properties
  set microblaze_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:microblaze:9.6 microblaze_0 ]
  set_property -dict [ list \
CONFIG.C_DEBUG_ENABLED {1} \
CONFIG.C_D_AXI {1} \
CONFIG.C_D_LMB {1} \
CONFIG.C_I_LMB {1} \
 ] $microblaze_0

  # Create instance: microblaze_0_axi_intc, and set properties
  set microblaze_0_axi_intc [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_intc:4.1 microblaze_0_axi_intc ]
  set_property -dict [ list \
CONFIG.C_HAS_FAST {1} \
 ] $microblaze_0_axi_intc

  # Create instance: microblaze_0_axi_periph, and set properties
  set microblaze_0_axi_periph [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 microblaze_0_axi_periph ]
  set_property -dict [ list \
CONFIG.NUM_MI {3} \
 ] $microblaze_0_axi_periph

  # Create instance: microblaze_0_local_memory
  create_hier_cell_microblaze_0_local_memory [current_bd_instance .] microblaze_0_local_memory

  # Create instance: microblaze_0_xlconcat, and set properties
  set microblaze_0_xlconcat [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 microblaze_0_xlconcat ]

  # Create instance: proc_sys_reset_0, and set properties
  set proc_sys_reset_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 proc_sys_reset_0 ]
  set_property -dict [ list \
CONFIG.RESET_BOARD_INTERFACE {reset} \
CONFIG.USE_BOARD_FLOW {true} \
 ] $proc_sys_reset_0

  # Create instance: util_vector_logic_0, and set properties
  set util_vector_logic_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_0 ]
  set_property -dict [ list \
CONFIG.C_OPERATION {not} \
CONFIG.C_SIZE {1} \
CONFIG.LOGO_FILE {data/sym_notgate.png} \
 ] $util_vector_logic_0

  # Create interface connections
  connect_bd_intf_net -intf_net axi_gpio_0_GPIO [get_bd_intf_ports onboard_LED] [get_bd_intf_pins axi_gpio_0/GPIO]
  connect_bd_intf_net -intf_net axi_uartlite_0_UART [get_bd_intf_ports uart] [get_bd_intf_pins axi_uartlite_0/UART]
  connect_bd_intf_net -intf_net axis_dwidth_converter_0_M_AXIS [get_bd_intf_pins axis_dwidth_converter_0/M_AXIS] [get_bd_intf_pins chacha_axi_ip_0/S00_AXIS]
  connect_bd_intf_net -intf_net chacha_axi_ip_0_M00_AXIS [get_bd_intf_pins axis_dwidth_converter_1/S_AXIS] [get_bd_intf_pins chacha_axi_ip_0/M00_AXIS]
  connect_bd_intf_net -intf_net microblaze_0_axi_dp [get_bd_intf_pins microblaze_0/M_AXI_DP] [get_bd_intf_pins microblaze_0_axi_periph/S00_AXI]
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M01_AXI [get_bd_intf_pins axi_uartlite_0/S_AXI] [get_bd_intf_pins microblaze_0_axi_periph/M01_AXI]
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M02_AXI [get_bd_intf_pins axi_gpio_0/S_AXI] [get_bd_intf_pins microblaze_0_axi_periph/M02_AXI]
  connect_bd_intf_net -intf_net microblaze_0_debug [get_bd_intf_pins mdm_1/MBDEBUG_0] [get_bd_intf_pins microblaze_0/DEBUG]
  connect_bd_intf_net -intf_net microblaze_0_dlmb_1 [get_bd_intf_pins microblaze_0/DLMB] [get_bd_intf_pins microblaze_0_local_memory/DLMB]
  connect_bd_intf_net -intf_net microblaze_0_ilmb_1 [get_bd_intf_pins microblaze_0/ILMB] [get_bd_intf_pins microblaze_0_local_memory/ILMB]
  connect_bd_intf_net -intf_net microblaze_0_intc_axi [get_bd_intf_pins microblaze_0_axi_intc/s_axi] [get_bd_intf_pins microblaze_0_axi_periph/M00_AXI]
  connect_bd_intf_net -intf_net microblaze_0_interrupt [get_bd_intf_pins microblaze_0/INTERRUPT] [get_bd_intf_pins microblaze_0_axi_intc/interrupt]

  # Create port connections
  connect_bd_net -net axis_dwidth_converter_0_m_axis_tdata [get_bd_pins axis_dwidth_converter_0/m_axis_tdata] [get_bd_pins chacha_axi_ip_0/s00_axis_tdata]
  connect_bd_net -net axis_dwidth_converter_0_m_axis_tvalid [get_bd_pins axis_dwidth_converter_0/m_axis_tvalid] [get_bd_pins chacha_axi_ip_0/s00_axis_tvalid]
  connect_bd_net -net axis_dwidth_converter_1_s_axis_tready [get_bd_pins axis_dwidth_converter_1/s_axis_tready] [get_bd_pins chacha_axi_ip_0/m00_axis_tready]
  connect_bd_net -net chacha_axi_ip_0_m00_axis_tdata [get_bd_pins axis_dwidth_converter_1/s_axis_tdata] [get_bd_pins chacha_axi_ip_0/m00_axis_tdata]
  connect_bd_net -net chacha_axi_ip_0_m00_axis_tvalid [get_bd_pins axis_dwidth_converter_1/s_axis_tvalid] [get_bd_pins chacha_axi_ip_0/m00_axis_tvalid]
  connect_bd_net -net chacha_axi_ip_0_s00_axis_tready [get_bd_pins axis_dwidth_converter_0/m_axis_tready] [get_bd_pins chacha_axi_ip_0/s00_axis_tready]
  connect_bd_net -net clk_wiz_0_locked [get_bd_pins clk_wiz_0/locked] [get_bd_pins proc_sys_reset_0/dcm_locked]
  connect_bd_net -net mdm_1_debug_sys_rst [get_bd_pins mdm_1/Debug_SYS_Rst] [get_bd_pins proc_sys_reset_0/mb_debug_sys_rst]
  connect_bd_net -net microblaze_0_Clk [get_bd_pins axi_gpio_0/s_axi_aclk] [get_bd_pins axi_uartlite_0/s_axi_aclk] [get_bd_pins axis_dwidth_converter_0/aclk] [get_bd_pins axis_dwidth_converter_1/aclk] [get_bd_pins chacha_axi_ip_0/axis_aclk] [get_bd_pins clk_wiz_0/clk_out1] [get_bd_pins microblaze_0/Clk] [get_bd_pins microblaze_0_axi_intc/processor_clk] [get_bd_pins microblaze_0_axi_intc/s_axi_aclk] [get_bd_pins microblaze_0_axi_periph/ACLK] [get_bd_pins microblaze_0_axi_periph/M00_ACLK] [get_bd_pins microblaze_0_axi_periph/M01_ACLK] [get_bd_pins microblaze_0_axi_periph/M02_ACLK] [get_bd_pins microblaze_0_axi_periph/S00_ACLK] [get_bd_pins microblaze_0_local_memory/LMB_Clk] [get_bd_pins proc_sys_reset_0/slowest_sync_clk]
  connect_bd_net -net microblaze_0_intr [get_bd_pins microblaze_0_axi_intc/intr] [get_bd_pins microblaze_0_xlconcat/dout]
  connect_bd_net -net proc_sys_reset_0_bus_struct_reset [get_bd_pins microblaze_0_local_memory/SYS_Rst] [get_bd_pins proc_sys_reset_0/bus_struct_reset]
  connect_bd_net -net proc_sys_reset_0_interconnect_aresetn [get_bd_pins microblaze_0_axi_periph/ARESETN] [get_bd_pins proc_sys_reset_0/interconnect_aresetn]
  connect_bd_net -net proc_sys_reset_0_mb_reset [get_bd_pins microblaze_0/Reset] [get_bd_pins microblaze_0_axi_intc/processor_rst] [get_bd_pins proc_sys_reset_0/mb_reset]
  connect_bd_net -net proc_sys_reset_0_peripheral_aresetn [get_bd_pins axi_gpio_0/s_axi_aresetn] [get_bd_pins axi_uartlite_0/s_axi_aresetn] [get_bd_pins microblaze_0_axi_intc/s_axi_aresetn] [get_bd_pins microblaze_0_axi_periph/M00_ARESETN] [get_bd_pins microblaze_0_axi_periph/M01_ARESETN] [get_bd_pins microblaze_0_axi_periph/M02_ARESETN] [get_bd_pins microblaze_0_axi_periph/S00_ARESETN] [get_bd_pins proc_sys_reset_0/peripheral_aresetn]
  connect_bd_net -net reset_1 [get_bd_ports reset] [get_bd_pins clk_wiz_0/reset] [get_bd_pins proc_sys_reset_0/ext_reset_in] [get_bd_pins util_vector_logic_0/Op1]
  connect_bd_net -net sys_clock_1 [get_bd_ports sys_clock] [get_bd_pins clk_wiz_0/clk_in1]
  connect_bd_net -net util_vector_logic_0_Res [get_bd_pins axis_dwidth_converter_0/aresetn] [get_bd_pins axis_dwidth_converter_1/aresetn] [get_bd_pins chacha_axi_ip_0/axis_aresetn] [get_bd_pins util_vector_logic_0/Res]

  # Create address segments
  create_bd_addr_seg -range 0x00010000 -offset 0x40000000 [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs axi_gpio_0/S_AXI/Reg] SEG_axi_gpio_0_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x40600000 [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs axi_uartlite_0/S_AXI/Reg] SEG_axi_uartlite_0_Reg
  create_bd_addr_seg -range 0x00020000 -offset 0x00000000 [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs microblaze_0_local_memory/dlmb_bram_if_cntlr/SLMB/Mem] SEG_dlmb_bram_if_cntlr_Mem
  create_bd_addr_seg -range 0x00020000 -offset 0x00000000 [get_bd_addr_spaces microblaze_0/Instruction] [get_bd_addr_segs microblaze_0_local_memory/ilmb_bram_if_cntlr/SLMB/Mem] SEG_ilmb_bram_if_cntlr_Mem
  create_bd_addr_seg -range 0x00010000 -offset 0x41200000 [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs microblaze_0_axi_intc/S_AXI/Reg] SEG_microblaze_0_axi_intc_Reg

  # Perform GUI Layout
  regenerate_bd_layout -layout_string {
   guistr: "# # String gsaved with Nlview 6.5.12  2016-01-29 bk=1.3547 VDI=39 GEI=35 GUI=JA:1.6
#  -string -flagsOSRD
preplace port sys_clock -pg 1 -y 300 -defaultsOSRD
preplace port onboard_LED -pg 1 -y 460 -defaultsOSRD
preplace port uart -pg 1 -y 570 -defaultsOSRD
preplace port reset -pg 1 -y 150 -defaultsOSRD
preplace inst microblaze_0_axi_periph -pg 1 -lvl 5 -y 420 -defaultsOSRD
preplace inst util_vector_logic_0 -pg 1 -lvl 1 -y 200 -defaultsOSRD
preplace inst chacha_axi_ip_0 -pg 1 -lvl 3 -y 110 -defaultsOSRD
preplace inst microblaze_0_xlconcat -pg 1 -lvl 2 -y 710 -defaultsOSRD
preplace inst axi_gpio_0 -pg 1 -lvl 6 -y 460 -defaultsOSRD
preplace inst proc_sys_reset_0 -pg 1 -lvl 2 -y 260 -defaultsOSRD
preplace inst axis_dwidth_converter_0 -pg 1 -lvl 2 -y 70 -defaultsOSRD
preplace inst mdm_1 -pg 1 -lvl 3 -y 300 -defaultsOSRD
preplace inst microblaze_0_axi_intc -pg 1 -lvl 3 -y 700 -defaultsOSRD
preplace inst axis_dwidth_converter_1 -pg 1 -lvl 4 -y 110 -defaultsOSRD
preplace inst microblaze_0 -pg 1 -lvl 4 -y 300 -defaultsOSRD
preplace inst axi_uartlite_0 -pg 1 -lvl 6 -y 580 -defaultsOSRD
preplace inst clk_wiz_0 -pg 1 -lvl 1 -y 290 -defaultsOSRD
preplace inst microblaze_0_local_memory -pg 1 -lvl 5 -y 200 -defaultsOSRD
preplace netloc chacha_axi_ip_0_m00_axis_tvalid 1 3 1 990
preplace netloc chacha_axi_ip_0_m00_axis_tdata 1 3 1 980
preplace netloc axis_dwidth_converter_0_m_axis_tvalid 1 2 1 580
preplace netloc clk_wiz_0_locked 1 1 1 N
preplace netloc axis_dwidth_converter_0_M_AXIS 1 2 1 N
preplace netloc microblaze_0_intr 1 2 1 NJ
preplace netloc axis_dwidth_converter_1_s_axis_tready 1 3 1 1000
preplace netloc microblaze_0_Clk 1 1 5 240 150 610 370 1020 210 1510 580 1830
preplace netloc microblaze_0_intc_axi 1 2 4 620 600 NJ 600 NJ 600 1820
preplace netloc microblaze_0_interrupt 1 3 1 1030
preplace netloc util_vector_logic_0_Res 1 1 3 250 170 620 230 NJ
preplace netloc proc_sys_reset_0_bus_struct_reset 1 2 3 NJ 240 NJ 220 1490
preplace netloc proc_sys_reset_0_mb_reset 1 2 2 590 390 NJ
preplace netloc microblaze_0_ilmb_1 1 4 1 1500
preplace netloc sys_clock_1 1 0 1 NJ
preplace netloc microblaze_0_axi_dp 1 4 1 N
preplace netloc proc_sys_reset_0_interconnect_aresetn 1 2 3 600 380 NJ 380 NJ
preplace netloc chacha_axi_ip_0_M00_AXIS 1 3 1 N
preplace netloc microblaze_0_axi_periph_M01_AXI 1 5 1 1840
preplace netloc axis_dwidth_converter_0_m_axis_tdata 1 2 1 590
preplace netloc axi_gpio_0_GPIO 1 6 1 NJ
preplace netloc axi_uartlite_0_UART 1 6 1 NJ
preplace netloc proc_sys_reset_0_peripheral_aresetn 1 2 4 580 400 NJ 400 1490 590 1850
preplace netloc microblaze_0_axi_periph_M02_AXI 1 5 1 N
preplace netloc microblaze_0_dlmb_1 1 4 1 1480
preplace netloc microblaze_0_debug 1 3 1 N
preplace netloc chacha_axi_ip_0_s00_axis_tready 1 2 1 610
preplace netloc mdm_1_debug_sys_rst 1 1 3 260 360 NJ 360 990
preplace netloc reset_1 1 0 2 20 350 NJ
levelinfo -pg 1 0 130 420 800 1260 1670 1950 2070 -top 0 -bot 800
",
}

  # Restore current instance
  current_bd_instance $oldCurInst

  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


