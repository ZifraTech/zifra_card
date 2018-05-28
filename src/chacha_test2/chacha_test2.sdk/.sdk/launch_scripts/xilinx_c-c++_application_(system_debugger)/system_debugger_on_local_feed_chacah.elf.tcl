connect -url tcp:127.0.0.1:3121
targets -set -nocase -filter {name =~ "microblaze*#0" && bscan=="USER2"  && jtag_cable_name =~ "JTAG-ONB4 2516330005f7A"} -index 0
loadhw /home/torbjorn/development/vhdl/cifra/chacha_test2/chacha_test2.sdk/design_1_wrapper_hw_platform_0/system.hdf
targets -set -nocase -filter {name =~ "microblaze*#0" && bscan=="USER2"  && jtag_cable_name =~ "JTAG-ONB4 2516330005f7A"} -index 0
rst -processor
targets -set -nocase -filter {name =~ "microblaze*#0" && bscan=="USER2"  && jtag_cable_name =~ "JTAG-ONB4 2516330005f7A"} -index 0
dow /home/torbjorn/development/vhdl/cifra/chacha_test2/chacha_test2.sdk/feed_chacah/Debug/feed_chacah.elf
targets -set -nocase -filter {name =~ "microblaze*#0" && bscan=="USER2"  && jtag_cable_name =~ "JTAG-ONB4 2516330005f7A"} -index 0
con
