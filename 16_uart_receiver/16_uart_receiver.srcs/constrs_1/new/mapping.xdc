set_property -dict { PACKAGE_PIN D10   IOSTANDARD LVCMOS33 } [get_ports { out_uart }]; #IO_L19N_T3_VREF_16 Sch=uart_rxd_out
set_property -dict { PACKAGE_PIN A9    IOSTANDARD LVCMOS33 } [get_ports { uart_rx }]; #IO_L14N_T2_SRCC_16 Sch=uart_txd_in
set_property -dict { PACKAGE_PIN E3    IOSTANDARD LVCMOS33 } [get_ports { clk_rx }]; #IO_L12P_T1_MRCC_35 Sch=gclk[100]