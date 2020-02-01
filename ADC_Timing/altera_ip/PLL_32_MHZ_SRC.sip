set_global_assignment -entity "PLL_32_MHZ_SRC" -library "lib_PLL_32_MHZ_SRC" -name IP_TOOL_NAME "altera_pll"
set_global_assignment -entity "PLL_32_MHZ_SRC" -library "lib_PLL_32_MHZ_SRC" -name IP_TOOL_VERSION "18.1"
set_global_assignment -entity "PLL_32_MHZ_SRC" -library "lib_PLL_32_MHZ_SRC" -name IP_TOOL_ENV "mwpim"
set_global_assignment -library "lib_PLL_32_MHZ_SRC" -name SPD_FILE [file join $::quartus(sip_path) "PLL_32_MHZ_SRC.spd"]

set_global_assignment -library "lib_PLL_32_MHZ_SRC" -name MISC_FILE [file join $::quartus(sip_path) "PLL_32_MHZ_SRC_sim/PLL_32_MHZ_SRC.vo"]
