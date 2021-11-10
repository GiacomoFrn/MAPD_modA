set_property PACKAGE_PIN E1 [get_ports { led_out }]; 
set_property IOSTANDARD LVCMOS33 [get_ports { led_out }]; 
#IO_L18N_T2_35 Sch=led_out
set_property PACKAGE_PIN D9 [get_ports { btn_in[0]}];
set_property PACKAGE_PIN C9 [get_ports { btn_in[1]}]; 
#IO_L11P_T1_SRCC_16 Sch=btn_in[1]
set_property IOSTANDARD LVCMOS33 [get_ports { btn_in[0] }];
set_property IOSTANDARD LVCMOS33 [get_ports { btn_in[1] }];
