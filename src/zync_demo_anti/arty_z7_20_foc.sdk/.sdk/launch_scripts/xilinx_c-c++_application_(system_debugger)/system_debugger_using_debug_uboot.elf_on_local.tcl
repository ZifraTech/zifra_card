connect -url tcp:127.0.0.1:3121
source B:/SVN/cores/customers/zifra/zybo/zybo_foc/arty_z7_20_foc.sdk/zsys_wrapper_hw_platform_0/ps7_init.tcl
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent Arty Z7 210346298153A"} -index 0
loadhw -hw B:/SVN/cores/customers/zifra/zybo/zybo_foc/arty_z7_20_foc.sdk/zsys_wrapper_hw_platform_0/system.hdf -mem-ranges [list {0x40000000 0xbfffffff}]
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent Arty Z7 210346298153A"} -index 0
stop
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent Arty Z7 210346298153A"} -index 0
rst -processor
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent Arty Z7 210346298153A"} -index 0
dow B:/SVN/cores/customers/zifra/zybo/zybo_foc/arty_z7_20_foc.sdk/uboot/Debug/uboot.elf
configparams force-mem-access 0
bpadd -addr &main
