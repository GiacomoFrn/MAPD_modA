set_property SRC_FILE_INFO {cfile:C:/Users/giaco/Documents/Uni/PoD/MaPD/MAPD_modA/uart/uart.srcs/constrs_1/new/mapping.xdc rfile:../../../uart.srcs/constrs_1/new/mapping.xdc id:1} [current_design]
set_property src_info {type:XDC file:1 line:1 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN D10   IOSTANDARD LVCMOS33 } [get_ports { output }]; #IO_L19N_T3_VREF_16 Sch=uart_rxd_out
set_property src_info {type:XDC file:1 line:2 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN A9    IOSTANDARD LVCMOS33 } [get_ports { input }]; #IO_L14N_T2_SRCC_16 Sch=uart_txd_in
set_property src_info {type:XDC file:1 line:3 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN E3    IOSTANDARD LVCMOS33 } [get_ports { clk }]; #IO_L12P_T1_MRCC_35 Sch=gclk[100]
