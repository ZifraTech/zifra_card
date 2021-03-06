# 
# Synthesis run script generated by Vivado
# 

proc create_report { reportName command } {
  set status "."
  append status $reportName ".fail"
  if { [file exists $status] } {
    eval file delete [glob $status]
  }
  send_msg_id runtcl-4 info "Executing : $command"
  set retval [eval catch { $command } msg]
  if { $retval != 0 } {
    set fp [open $status w]
    close $fp
    send_msg_id runtcl-5 warning "$msg"
  }
}
create_project -in_memory -part xc7a100tcsg324-2

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir /home/torbjorn/development/vhdl/cifra/sd_slave/sd_slave_vhdl/sd_slave_vhdl.cache/wt [current_project]
set_property parent.project_path /home/torbjorn/development/vhdl/cifra/sd_slave/sd_slave_vhdl/sd_slave_vhdl.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property board_part trenz.biz:te0725_100_2c:part0:1.0 [current_project]
set_property ip_output_repo /home/torbjorn/development/vhdl/cifra/sd_slave/sd_slave_vhdl/sd_slave_vhdl.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_verilog {
  /home/torbjorn/development/vhdl/cifra/sd_slave/src/sd_const.vh
  /home/torbjorn/development/vhdl/cifra/sd_slave/src/sd_params.vh
}
read_verilog -library xil_defaultlib {
  /home/torbjorn/development/vhdl/cifra/sd_slave/src/common.v
  /home/torbjorn/development/vhdl/cifra/sd_slave/src/sd_brams.v
  /home/torbjorn/development/vhdl/cifra/sd_slave/src/sd_link.v
  /home/torbjorn/development/vhdl/cifra/sd_slave/src/sd_mgr.v
  /home/torbjorn/development/vhdl/cifra/sd_slave/src/sd_phy.v
  /home/torbjorn/development/vhdl/cifra/sd_slave/src/sd_top.v
  /home/torbjorn/development/vhdl/cifra/sd_slave/src/sd_wishbone.v
}
read_vhdl -library xil_defaultlib /home/torbjorn/development/vhdl/cifra/sd_slave/src/sd_over_the_top.vhd
# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}

synth_design -top sd_over_the_top -part xc7a100tcsg324-2


# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef sd_over_the_top.dcp
create_report "synth_1_synth_report_utilization_0" "report_utilization -file sd_over_the_top_utilization_synth.rpt -pb sd_over_the_top_utilization_synth.pb"
