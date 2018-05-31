# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  ipgui::add_page $IPINST -name "Page 0"

  ipgui::add_param $IPINST -name "ASSOCIATED_BUSIF"

}

proc update_PARAM_VALUE.ASSOCIATED_BUSIF { PARAM_VALUE.ASSOCIATED_BUSIF } {
	# Procedure called to update ASSOCIATED_BUSIF when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ASSOCIATED_BUSIF { PARAM_VALUE.ASSOCIATED_BUSIF } {
	# Procedure called to validate ASSOCIATED_BUSIF
	return true
}


