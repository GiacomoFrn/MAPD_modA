## Switches
set_property -dict { PACKAGE_PIN A8    IOSTANDARD LVCMOS33 } [get_ports { a_in }]; #IO_L12N_T1_MRCC_16 Sch=sw[0]
set_property -dict { PACKAGE_PIN C11   IOSTANDARD LVCMOS33 } [get_ports { b_in }]; #IO_L13P_T2_MRCC_16 Sch=sw[1]
set_property -dict { PACKAGE_PIN C10   IOSTANDARD LVCMOS33 } [get_ports { c_in }]; #IO_L13N_T2_MRCC_16 Sch=sw[2]

## Led
set_property -dict { PACKAGE_PIN G6    IOSTANDARD LVCMOS33 } [get_ports { y_out }]; #IO_L19P_T3_35 Sch=led0_r
set_property -dict { PACKAGE_PIN J4    IOSTANDARD LVCMOS33 } [get_ports { c_out }]; #IO_L21P_T3_DQS_35 Sch=led1_g