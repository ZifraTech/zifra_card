# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "C_SDIO_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_INCLUDE_LED" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_INCLUDE_WP" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_INCLUDE_CDN" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_INCLUDE_POW" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_INCLUDE_VOLT" -parent ${Page_0}


}

proc update_PARAM_VALUE.C_INCLUDE_CDN { PARAM_VALUE.C_INCLUDE_CDN } {
	# Procedure called to update C_INCLUDE_CDN when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_INCLUDE_CDN { PARAM_VALUE.C_INCLUDE_CDN } {
	# Procedure called to validate C_INCLUDE_CDN
	return true
}

proc update_PARAM_VALUE.C_INCLUDE_LED { PARAM_VALUE.C_INCLUDE_LED } {
	# Procedure called to update C_INCLUDE_LED when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_INCLUDE_LED { PARAM_VALUE.C_INCLUDE_LED } {
	# Procedure called to validate C_INCLUDE_LED
	return true
}

proc update_PARAM_VALUE.C_INCLUDE_POW { PARAM_VALUE.C_INCLUDE_POW } {
	# Procedure called to update C_INCLUDE_POW when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_INCLUDE_POW { PARAM_VALUE.C_INCLUDE_POW } {
	# Procedure called to validate C_INCLUDE_POW
	return true
}

proc update_PARAM_VALUE.C_INCLUDE_VOLT { PARAM_VALUE.C_INCLUDE_VOLT } {
	# Procedure called to update C_INCLUDE_VOLT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_INCLUDE_VOLT { PARAM_VALUE.C_INCLUDE_VOLT } {
	# Procedure called to validate C_INCLUDE_VOLT
	return true
}

proc update_PARAM_VALUE.C_INCLUDE_WP { PARAM_VALUE.C_INCLUDE_WP } {
	# Procedure called to update C_INCLUDE_WP when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_INCLUDE_WP { PARAM_VALUE.C_INCLUDE_WP } {
	# Procedure called to validate C_INCLUDE_WP
	return true
}

proc update_PARAM_VALUE.C_SDIO_WIDTH { PARAM_VALUE.C_SDIO_WIDTH } {
	# Procedure called to update C_SDIO_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_SDIO_WIDTH { PARAM_VALUE.C_SDIO_WIDTH } {
	# Procedure called to validate C_SDIO_WIDTH
	return true
}


proc update_MODELPARAM_VALUE.C_INCLUDE_LED { MODELPARAM_VALUE.C_INCLUDE_LED PARAM_VALUE.C_INCLUDE_LED } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_INCLUDE_LED}] ${MODELPARAM_VALUE.C_INCLUDE_LED}
}

proc update_MODELPARAM_VALUE.C_INCLUDE_WP { MODELPARAM_VALUE.C_INCLUDE_WP PARAM_VALUE.C_INCLUDE_WP } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_INCLUDE_WP}] ${MODELPARAM_VALUE.C_INCLUDE_WP}
}

proc update_MODELPARAM_VALUE.C_INCLUDE_CDN { MODELPARAM_VALUE.C_INCLUDE_CDN PARAM_VALUE.C_INCLUDE_CDN } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_INCLUDE_CDN}] ${MODELPARAM_VALUE.C_INCLUDE_CDN}
}

proc update_MODELPARAM_VALUE.C_INCLUDE_POW { MODELPARAM_VALUE.C_INCLUDE_POW PARAM_VALUE.C_INCLUDE_POW } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_INCLUDE_POW}] ${MODELPARAM_VALUE.C_INCLUDE_POW}
}

proc update_MODELPARAM_VALUE.C_INCLUDE_VOLT { MODELPARAM_VALUE.C_INCLUDE_VOLT PARAM_VALUE.C_INCLUDE_VOLT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_INCLUDE_VOLT}] ${MODELPARAM_VALUE.C_INCLUDE_VOLT}
}

proc update_MODELPARAM_VALUE.C_SDIO_WIDTH { MODELPARAM_VALUE.C_SDIO_WIDTH PARAM_VALUE.C_SDIO_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_SDIO_WIDTH}] ${MODELPARAM_VALUE.C_SDIO_WIDTH}
}

