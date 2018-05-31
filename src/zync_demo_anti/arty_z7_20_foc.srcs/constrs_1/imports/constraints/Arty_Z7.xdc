#set_property PACKAGE_PIN W15   [get_ports { shield_spi_io0_io }]; #IO_L10N_T1_34 Sch=ck_miso
#set_property PACKAGE_PIN T12   [get_ports { shield_spi_io1_io }]; #IO_L2P_T0_34 Sch=ck_mosi
#set_property PACKAGE_PIN H15   [get_ports { shield_spi_sck_io }]; #IO_L19P_T3_35 Sch=ck_sck
#set_property PACKAGE_PIN P16   [get_ports { shield_iic_scl_io }]; #IO_L24N_T3_34 Sch=ck_scl
#set_property PACKAGE_PIN P15   [get_ports { shield_iic_sda_io }]; #IO_L24P_T3_34 Sch=ck_sda
#set_property PACKAGE_PIN F16   [get_ports { shield_spi_ss_io }]; #IO_L6P_T0_35 Sch=ck_ss


#set_property PACKAGE_PIN W19 [get_ports {gpio_0_tri_io[0]}]; # EXT1
#set_property IOSTANDARD LVCMOS33 [get_ports gpio_0_tri_io[0]]
# J9 <-> PMODA
# J8 <-> PMODB




