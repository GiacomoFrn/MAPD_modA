
u
Command: %s
53*	vivadotcl2D
0synth_design -top top_vhdl -part xc7a35tcsg324-12default:defaultZ4-113h px? 
:
Starting synth_design
149*	vivadotclZ4-321h px? 
?
?The '%s' target of the following IPs are stale, please generate the output products using the generate_target or synth_ip command before running synth_design.
%s160*	vivadotcl2
	Synthesis2default:default2?
qC:/Users/giaco/Documents/Uni/PoD/MaPD/vivado_proj/Pmod-I2S2-Arty-A7-35.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0.xci
2default:defaultZ4-393h px? 
?
?The '%s' target of the following IPs are stale, please generate the output products using the generate_target or synth_ip command before running synth_design.
%s160*	vivadotcl2"
Implementation2default:default2?
qC:/Users/giaco/Documents/Uni/PoD/MaPD/vivado_proj/Pmod-I2S2-Arty-A7-35.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0.xci
2default:defaultZ4-393h px? 
?
IP '%s' is locked:
%s
1260*coregen2
	clk_wiz_02default:default2?
?* IP definition 'Clocking Wizard (6.0)' for IP 'clk_wiz_0' (customized with software release 2018.2) has a different revision in the IP Catalog.
* This IP has board specific outputs. Current project board 'unset' and the board 'digilentinc.com:arty-a7-35:part0:1.0' used to customize the IP 'clk_wiz_0' do not match.
* Current project part 'xc7a35tcsg324-1' and the part 'xc7a35ticsg324-1L' used to customize the IP 'clk_wiz_0' do not match.
Please select 'Report IP Status' from the 'Tools/Report' menu or run Tcl command 'report_ip_status' for more information.2default:defaultZ19-2162h px?
?
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2default:default2
xc7a35t2default:defaultZ17-347h px? 
?
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2default:default2
xc7a35t2default:defaultZ17-349h px? 
?
%s*synth2?
xStarting RTL Elaboration : Time (s): cpu = 00:00:01 ; elapsed = 00:00:02 . Memory (MB): peak = 393.316 ; gain = 100.086
2default:defaulth px? 
?
synthesizing module '%s'638*oasys2
top_vhdl2default:default2t
^C:/Users/giaco/Documents/Uni/PoD/MaPD/MAPD_modA/demo_pmod/demo_pmod.srcs/sources_1/new/top.vhd2default:default2
222default:default8@Z8-638h px? 
g
%s
*synth2O
;	Parameter NUMBER_OF_SWITCHES bound to: 4 - type: integer 
2default:defaulth p
x
? 
V
%s
*synth2>
*	Parameter RESET_POLARITY bound to: 1'b0 
2default:defaulth p
x
? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
	clk_wiz_02default:default2?
?C:/Users/giaco/Documents/Uni/PoD/MaPD/MAPD_modA/demo_pmod/demo_pmod.runs/synth_1/.Xil/Vivado-2400-DESKTOP-A6N5RC6/realtime/clk_wiz_0_stub.vhdl2default:default2
52default:default2
m_clk2default:default2
	clk_wiz_02default:default2t
^C:/Users/giaco/Documents/Uni/PoD/MaPD/MAPD_modA/demo_pmod/demo_pmod.srcs/sources_1/new/top.vhd2default:default2
892default:default8@Z8-3491h px? 
?
synthesizing module '%s'638*oasys2
	clk_wiz_02default:default2?
?C:/Users/giaco/Documents/Uni/PoD/MaPD/MAPD_modA/demo_pmod/demo_pmod.runs/synth_1/.Xil/Vivado-2400-DESKTOP-A6N5RC6/realtime/clk_wiz_0_stub.vhdl2default:default2
132default:default8@Z8-638h px? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
	axis_i2s22default:default2o
[C:/Users/giaco/Documents/Uni/PoD/MaPD/MAPD_modA/Pmod-I2S2-master/shared/src/hdl/axis_i2s2.v2default:default2
242default:default2
m_i2s22default:default2
	axis_i2s22default:default2t
^C:/Users/giaco/Documents/Uni/PoD/MaPD/MAPD_modA/demo_pmod/demo_pmod.srcs/sources_1/new/top.vhd2default:default2
982default:default8@Z8-3491h px? 
?
synthesizing module '%s'%s4497*oasys2
	axis_i2s22default:default2
 2default:default2q
[C:/Users/giaco/Documents/Uni/PoD/MaPD/MAPD_modA/Pmod-I2S2-master/shared/src/hdl/axis_i2s2.v2default:default2
242default:default8@Z8-6157h px? 
Y
%s
*synth2A
-	Parameter EOF_COUNT bound to: 9'b111000111 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
	axis_i2s22default:default2
 2default:default2
12default:default2
12default:default2q
[C:/Users/giaco/Documents/Uni/PoD/MaPD/MAPD_modA/Pmod-I2S2-master/shared/src/hdl/axis_i2s2.v2default:default2
242default:default8@Z8-6155h px? 
a
%s
*synth2I
5	Parameter SWITCH_WIDTH bound to: 4 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter DATA_WIDTH bound to: 24 - type: integer 
2default:defaulth p
x
? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2*
axis_volume_controller2default:default2|
hC:/Users/giaco/Documents/Uni/PoD/MaPD/MAPD_modA/Pmod-I2S2-master/shared/src/hdl/axis_volume_controller.v2default:default2
212default:default2
m_vc2default:default2*
axis_volume_controller2default:default2t
^C:/Users/giaco/Documents/Uni/PoD/MaPD/MAPD_modA/demo_pmod/demo_pmod.srcs/sources_1/new/top.vhd2default:default2
1202default:default8@Z8-3491h px? 
?
synthesizing module '%s'%s4497*oasys2*
axis_volume_controller2default:default2
 2default:default2~
hC:/Users/giaco/Documents/Uni/PoD/MaPD/MAPD_modA/Pmod-I2S2-master/shared/src/hdl/axis_volume_controller.v2default:default2
212default:default8@Z8-6157h px? 
a
%s
*synth2I
5	Parameter SWITCH_WIDTH bound to: 4 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter DATA_WIDTH bound to: 24 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter MULTIPLIER_WIDTH bound to: 24 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2*
axis_volume_controller2default:default2
 2default:default2
22default:default2
12default:default2~
hC:/Users/giaco/Documents/Uni/PoD/MaPD/MAPD_modA/Pmod-I2S2-master/shared/src/hdl/axis_volume_controller.v2default:default2
212default:default8@Z8-6155h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2
top_vhdl2default:default2
32default:default2
12default:default2t
^C:/Users/giaco/Documents/Uni/PoD/MaPD/MAPD_modA/demo_pmod/demo_pmod.srcs/sources_1/new/top.vhd2default:default2
222default:default8@Z8-256h px? 
?
%s*synth2?
xFinished RTL Elaboration : Time (s): cpu = 00:00:02 ; elapsed = 00:00:02 . Memory (MB): peak = 449.738 ; gain = 156.508
2default:defaulth px? 
D
%s
*synth2,

Report Check Netlist: 
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
? 
u
%s
*synth2]
I|      |Item              |Errors |Warnings |Status |Description       |
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
? 
u
%s
*synth2]
I|1     |multi_driven_nets |      0|        0|Passed |Multi driven nets |
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
? 
?
'tying undriven pin %s:%s to constant 0
3295*oasys2
m_i2s22default:default2&
tx_axis_s_data[31]2default:default2t
^C:/Users/giaco/Documents/Uni/PoD/MaPD/MAPD_modA/demo_pmod/demo_pmod.srcs/sources_1/new/top.vhd2default:default2
982default:default8@Z8-3295h px? 
?
'tying undriven pin %s:%s to constant 0
3295*oasys2
m_i2s22default:default2&
tx_axis_s_data[30]2default:default2t
^C:/Users/giaco/Documents/Uni/PoD/MaPD/MAPD_modA/demo_pmod/demo_pmod.srcs/sources_1/new/top.vhd2default:default2
982default:default8@Z8-3295h px? 
?
'tying undriven pin %s:%s to constant 0
3295*oasys2
m_i2s22default:default2&
tx_axis_s_data[29]2default:default2t
^C:/Users/giaco/Documents/Uni/PoD/MaPD/MAPD_modA/demo_pmod/demo_pmod.srcs/sources_1/new/top.vhd2default:default2
982default:default8@Z8-3295h px? 
?
'tying undriven pin %s:%s to constant 0
3295*oasys2
m_i2s22default:default2&
tx_axis_s_data[28]2default:default2t
^C:/Users/giaco/Documents/Uni/PoD/MaPD/MAPD_modA/demo_pmod/demo_pmod.srcs/sources_1/new/top.vhd2default:default2
982default:default8@Z8-3295h px? 
?
'tying undriven pin %s:%s to constant 0
3295*oasys2
m_i2s22default:default2&
tx_axis_s_data[27]2default:default2t
^C:/Users/giaco/Documents/Uni/PoD/MaPD/MAPD_modA/demo_pmod/demo_pmod.srcs/sources_1/new/top.vhd2default:default2
982default:default8@Z8-3295h px? 
?
'tying undriven pin %s:%s to constant 0
3295*oasys2
m_i2s22default:default2&
tx_axis_s_data[26]2default:default2t
^C:/Users/giaco/Documents/Uni/PoD/MaPD/MAPD_modA/demo_pmod/demo_pmod.srcs/sources_1/new/top.vhd2default:default2
982default:default8@Z8-3295h px? 
?
'tying undriven pin %s:%s to constant 0
3295*oasys2
m_i2s22default:default2&
tx_axis_s_data[25]2default:default2t
^C:/Users/giaco/Documents/Uni/PoD/MaPD/MAPD_modA/demo_pmod/demo_pmod.srcs/sources_1/new/top.vhd2default:default2
982default:default8@Z8-3295h px? 
?
'tying undriven pin %s:%s to constant 0
3295*oasys2
m_i2s22default:default2&
tx_axis_s_data[24]2default:default2t
^C:/Users/giaco/Documents/Uni/PoD/MaPD/MAPD_modA/demo_pmod/demo_pmod.srcs/sources_1/new/top.vhd2default:default2
982default:default8@Z8-3295h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Handling Custom Attributes : Time (s): cpu = 00:00:02 ; elapsed = 00:00:02 . Memory (MB): peak = 449.738 ; gain = 156.508
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:02 ; elapsed = 00:00:02 . Memory (MB): peak = 449.738 ; gain = 156.508
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
V
Loading part %s157*device2#
xc7a35tcsg324-12default:defaultZ21-403h px? 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px? 
>

Processing XDC Constraints
244*projectZ1-262h px? 
=
Initializing timing engine
348*projectZ1-569h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
?c:/Users/giaco/Documents/Uni/PoD/MaPD/vivado_proj/Pmod-I2S2-Arty-A7-35.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0/clk_wiz_0_in_context.xdc2default:default2
m_clk	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
?c:/Users/giaco/Documents/Uni/PoD/MaPD/vivado_proj/Pmod-I2S2-Arty-A7-35.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0/clk_wiz_0_in_context.xdc2default:default2
m_clk	2default:default8Z20-847h px? 
?
Parsing XDC File [%s]
179*designutils2x
bC:/Users/giaco/Documents/Uni/PoD/MaPD/MAPD_modA/demo_pmod/demo_pmod.srcs/constrs_1/new/mapping.xdc2default:default8Z20-179h px? 
?
Finished Parsing XDC File [%s]
178*designutils2x
bC:/Users/giaco/Documents/Uni/PoD/MaPD/MAPD_modA/demo_pmod/demo_pmod.srcs/constrs_1/new/mapping.xdc2default:default8Z20-178h px? 
?
?Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2v
bC:/Users/giaco/Documents/Uni/PoD/MaPD/MAPD_modA/demo_pmod/demo_pmod.srcs/constrs_1/new/mapping.xdc2default:default2.
.Xil/top_vhdl_propImpl.xdc2default:defaultZ1-236h px? 
?
Parsing XDC File [%s]
179*designutils2u
_C:/Users/giaco/Documents/Uni/PoD/MaPD/MAPD_modA/demo_pmod/demo_pmod.runs/synth_1/dont_touch.xdc2default:default8Z20-179h px? 
?
Finished Parsing XDC File [%s]
178*designutils2u
_C:/Users/giaco/Documents/Uni/PoD/MaPD/MAPD_modA/demo_pmod/demo_pmod.runs/synth_1/dont_touch.xdc2default:default8Z20-178h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0012default:default2
785.7772default:default2
0.0002default:defaultZ17-268h px? 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0012default:default2
785.7772default:default2
0.0002default:defaultZ17-268h px? 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
785.7772default:default2
0.0002default:defaultZ17-268h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common24
 Constraint Validation Runtime : 2default:default2
00:00:002default:default2 
00:00:00.0032default:default2
785.7772default:default2
0.0002default:defaultZ17-268h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
~Finished Constraint Validation : Time (s): cpu = 00:00:08 ; elapsed = 00:00:09 . Memory (MB): peak = 785.777 ; gain = 492.547
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
V
%s
*synth2>
*Start Loading Part and Timing Information
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
J
%s
*synth22
Loading part: xc7a35tcsg324-1
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Loading Part and Timing Information : Time (s): cpu = 00:00:08 ; elapsed = 00:00:09 . Memory (MB): peak = 785.777 ; gain = 492.547
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
Z
%s
*synth2B
.Start Applying 'set_property' XDC Constraints
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:08 ; elapsed = 00:00:09 . Memory (MB): peak = 785.777 ; gain = 492.547
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:08 ; elapsed = 00:00:10 . Memory (MB): peak = 785.777 ; gain = 492.547
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
L
%s
*synth24
 Start RTL Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      9 Bit       Adders := 1     
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               48 Bit    Registers := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               32 Bit    Registers := 4     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               25 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               24 Bit    Registers := 4     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                9 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                4 Bit    Registers := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                3 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 7     
2default:defaulth p
x
? 
?
%s
*synth2'
+---Multipliers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                25x48  Multipliers := 2     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     48 Bit        Muxes := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   3 Input     32 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     32 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   4 Input     24 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     24 Bit        Muxes := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 10    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   4 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Finished RTL Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
Y
%s
*synth2A
-Start RTL Hierarchical Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Hierarchical RTL Component report 
2default:defaulth p
x
? 
>
%s
*synth2&
Module axis_i2s2 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      9 Bit       Adders := 1     
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               32 Bit    Registers := 4     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               24 Bit    Registers := 4     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                9 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                3 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 3     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   3 Input     32 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     32 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   4 Input     24 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     24 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 8     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   4 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
? 
K
%s
*synth23
Module axis_volume_controller 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               48 Bit    Registers := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               25 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                4 Bit    Registers := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 4     
2default:defaulth p
x
? 
?
%s
*synth2'
+---Multipliers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                25x48  Multipliers := 2     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     48 Bit        Muxes := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     24 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 2     
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
[
%s
*synth2C
/Finished RTL Hierarchical Component Statistics
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
H
%s
*synth20
Start Part Resource Summary
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2j
VPart Resources:
DSPs: 90 (col length:60)
BRAMs: 100 (col length: RAMB18 60 RAMB36 30)
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Finished Part Resource Summary
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
W
%s
*synth2?
+Start Cross Boundary and Area Optimization
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
]
%s
*synth2E
1Warning: Parallel synthesis criteria is not met 
2default:defaulth p
x
? 
?
cNot enough pipeline registers after wide multiplier. Recommended levels of pipeline registers is %s4267*oasys2
62default:default2~
hC:/Users/giaco/Documents/Uni/PoD/MaPD/MAPD_modA/Pmod-I2S2-master/shared/src/hdl/axis_volume_controller.v2default:default2
762default:default8@Z8-5845h px? 
?
cNot enough pipeline registers after wide multiplier. Recommended levels of pipeline registers is %s4267*oasys2
62default:default2~
hC:/Users/giaco/Documents/Uni/PoD/MaPD/MAPD_modA/Pmod-I2S2-master/shared/src/hdl/axis_volume_controller.v2default:default2
772default:default8@Z8-5845h px? 
h
%s
*synth2P
<DSP Report: Generating DSP m_vc/, operation Mode is: A2*B2.
2default:defaulth p
x
? 
_
%s
*synth2G
3DSP Report: register B is absorbed into DSP m_vc/.
2default:defaulth p
x
? 
_
%s
*synth2G
3DSP Report: register A is absorbed into DSP m_vc/.
2default:defaulth p
x
? 
c
%s
*synth2K
7DSP Report: operator m_vc/ is absorbed into DSP m_vc/.
2default:defaulth p
x
? 
c
%s
*synth2K
7DSP Report: operator m_vc/ is absorbed into DSP m_vc/.
2default:defaulth p
x
? 
s
%s
*synth2[
GDSP Report: Generating DSP m_vc/, operation Mode is: (PCIN>>17)+A2*B2.
2default:defaulth p
x
? 
_
%s
*synth2G
3DSP Report: register B is absorbed into DSP m_vc/.
2default:defaulth p
x
? 
_
%s
*synth2G
3DSP Report: register A is absorbed into DSP m_vc/.
2default:defaulth p
x
? 
c
%s
*synth2K
7DSP Report: operator m_vc/ is absorbed into DSP m_vc/.
2default:defaulth p
x
? 
c
%s
*synth2K
7DSP Report: operator m_vc/ is absorbed into DSP m_vc/.
2default:defaulth p
x
? 
h
%s
*synth2P
<DSP Report: Generating DSP m_vc/, operation Mode is: A2*B2.
2default:defaulth p
x
? 
_
%s
*synth2G
3DSP Report: register B is absorbed into DSP m_vc/.
2default:defaulth p
x
? 
_
%s
*synth2G
3DSP Report: register A is absorbed into DSP m_vc/.
2default:defaulth p
x
? 
c
%s
*synth2K
7DSP Report: operator m_vc/ is absorbed into DSP m_vc/.
2default:defaulth p
x
? 
c
%s
*synth2K
7DSP Report: operator m_vc/ is absorbed into DSP m_vc/.
2default:defaulth p
x
? 
s
%s
*synth2[
GDSP Report: Generating DSP m_vc/, operation Mode is: (PCIN>>17)+A2*B2.
2default:defaulth p
x
? 
_
%s
*synth2G
3DSP Report: register B is absorbed into DSP m_vc/.
2default:defaulth p
x
? 
_
%s
*synth2G
3DSP Report: register A is absorbed into DSP m_vc/.
2default:defaulth p
x
? 
c
%s
*synth2K
7DSP Report: operator m_vc/ is absorbed into DSP m_vc/.
2default:defaulth p
x
? 
c
%s
*synth2K
7DSP Report: operator m_vc/ is absorbed into DSP m_vc/.
2default:defaulth p
x
? 
h
%s
*synth2P
<DSP Report: Generating DSP m_vc/, operation Mode is: A2*B2.
2default:defaulth p
x
? 
_
%s
*synth2G
3DSP Report: register B is absorbed into DSP m_vc/.
2default:defaulth p
x
? 
_
%s
*synth2G
3DSP Report: register A is absorbed into DSP m_vc/.
2default:defaulth p
x
? 
c
%s
*synth2K
7DSP Report: operator m_vc/ is absorbed into DSP m_vc/.
2default:defaulth p
x
? 
c
%s
*synth2K
7DSP Report: operator m_vc/ is absorbed into DSP m_vc/.
2default:defaulth p
x
? 
s
%s
*synth2[
GDSP Report: Generating DSP m_vc/, operation Mode is: (PCIN>>17)+A2*B2.
2default:defaulth p
x
? 
_
%s
*synth2G
3DSP Report: register B is absorbed into DSP m_vc/.
2default:defaulth p
x
? 
_
%s
*synth2G
3DSP Report: register A is absorbed into DSP m_vc/.
2default:defaulth p
x
? 
c
%s
*synth2K
7DSP Report: operator m_vc/ is absorbed into DSP m_vc/.
2default:defaulth p
x
? 
c
%s
*synth2K
7DSP Report: operator m_vc/ is absorbed into DSP m_vc/.
2default:defaulth p
x
? 
h
%s
*synth2P
<DSP Report: Generating DSP m_vc/, operation Mode is: A2*B2.
2default:defaulth p
x
? 
_
%s
*synth2G
3DSP Report: register B is absorbed into DSP m_vc/.
2default:defaulth p
x
? 
_
%s
*synth2G
3DSP Report: register A is absorbed into DSP m_vc/.
2default:defaulth p
x
? 
c
%s
*synth2K
7DSP Report: operator m_vc/ is absorbed into DSP m_vc/.
2default:defaulth p
x
? 
c
%s
*synth2K
7DSP Report: operator m_vc/ is absorbed into DSP m_vc/.
2default:defaulth p
x
? 
s
%s
*synth2[
GDSP Report: Generating DSP m_vc/, operation Mode is: (PCIN>>17)+A2*B2.
2default:defaulth p
x
? 
_
%s
*synth2G
3DSP Report: register B is absorbed into DSP m_vc/.
2default:defaulth p
x
? 
_
%s
*synth2G
3DSP Report: register A is absorbed into DSP m_vc/.
2default:defaulth p
x
? 
c
%s
*synth2K
7DSP Report: operator m_vc/ is absorbed into DSP m_vc/.
2default:defaulth p
x
? 
c
%s
*synth2K
7DSP Report: operator m_vc/ is absorbed into DSP m_vc/.
2default:defaulth p
x
? 
h
%s
*synth2P
<DSP Report: Generating DSP m_vc/, operation Mode is: A2*B2.
2default:defaulth p
x
? 
_
%s
*synth2G
3DSP Report: register B is absorbed into DSP m_vc/.
2default:defaulth p
x
? 
_
%s
*synth2G
3DSP Report: register A is absorbed into DSP m_vc/.
2default:defaulth p
x
? 
c
%s
*synth2K
7DSP Report: operator m_vc/ is absorbed into DSP m_vc/.
2default:defaulth p
x
? 
c
%s
*synth2K
7DSP Report: operator m_vc/ is absorbed into DSP m_vc/.
2default:defaulth p
x
? 
s
%s
*synth2[
GDSP Report: Generating DSP m_vc/, operation Mode is: (PCIN>>17)+A2*B2.
2default:defaulth p
x
? 
_
%s
*synth2G
3DSP Report: register B is absorbed into DSP m_vc/.
2default:defaulth p
x
? 
_
%s
*synth2G
3DSP Report: register A is absorbed into DSP m_vc/.
2default:defaulth p
x
? 
c
%s
*synth2K
7DSP Report: operator m_vc/ is absorbed into DSP m_vc/.
2default:defaulth p
x
? 
c
%s
*synth2K
7DSP Report: operator m_vc/ is absorbed into DSP m_vc/.
2default:defaulth p
x
? 
h
%s
*synth2P
<DSP Report: Generating DSP m_vc/, operation Mode is: A2*B2.
2default:defaulth p
x
? 
_
%s
*synth2G
3DSP Report: register B is absorbed into DSP m_vc/.
2default:defaulth p
x
? 
_
%s
*synth2G
3DSP Report: register A is absorbed into DSP m_vc/.
2default:defaulth p
x
? 
c
%s
*synth2K
7DSP Report: operator m_vc/ is absorbed into DSP m_vc/.
2default:defaulth p
x
? 
c
%s
*synth2K
7DSP Report: operator m_vc/ is absorbed into DSP m_vc/.
2default:defaulth p
x
? 
s
%s
*synth2[
GDSP Report: Generating DSP m_vc/, operation Mode is: (PCIN>>17)+A2*B2.
2default:defaulth p
x
? 
_
%s
*synth2G
3DSP Report: register B is absorbed into DSP m_vc/.
2default:defaulth p
x
? 
_
%s
*synth2G
3DSP Report: register A is absorbed into DSP m_vc/.
2default:defaulth p
x
? 
c
%s
*synth2K
7DSP Report: operator m_vc/ is absorbed into DSP m_vc/.
2default:defaulth p
x
? 
c
%s
*synth2K
7DSP Report: operator m_vc/ is absorbed into DSP m_vc/.
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:10 ; elapsed = 00:00:11 . Memory (MB): peak = 785.777 ; gain = 492.547
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?---------------------------------------------------------------------------------
Start ROM, RAM, DSP and Shift Register Reporting
2default:defaulth px? 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px? 
_
%s*synth2G
3
DSP: Preliminary Mapping  Report (see note below)
2default:defaulth px? 
?
%s*synth2?
?+------------+------------------+--------+--------+--------+--------+--------+------+------+------+------+-------+------+------+
2default:defaulth px? 
?
%s*synth2?
?|Module Name | DSP Mapping      | A Size | B Size | C Size | D Size | P Size | AREG | BREG | CREG | DREG | ADREG | MREG | PREG | 
2default:defaulth px? 
?
%s*synth2?
?+------------+------------------+--------+--------+--------+--------+--------+------+------+------+------+-------+------+------+
2default:defaulth px? 
?
%s*synth2?
?|top_vhdl    | A2*B2            | 18     | 15     | -      | -      | 48     | 1    | 1    | -    | -    | -     | 0    | 0    | 
2default:defaulth px? 
?
%s*synth2?
?|top_vhdl    | (PCIN>>17)+A2*B2 | 15     | 9      | -      | -      | 48     | 1    | 1    | -    | -    | -     | 0    | 0    | 
2default:defaulth px? 
?
%s*synth2?
?|top_vhdl    | A2*B2            | 18     | 18     | -      | -      | 48     | 1    | 1    | -    | -    | -     | 0    | 0    | 
2default:defaulth px? 
?
%s*synth2?
?|top_vhdl    | (PCIN>>17)+A2*B2 | 18     | 9      | -      | -      | 48     | 1    | 1    | -    | -    | -     | 0    | 0    | 
2default:defaulth px? 
?
%s*synth2?
?|top_vhdl    | A2*B2            | 18     | 18     | -      | -      | 48     | 1    | 1    | -    | -    | -     | 0    | 0    | 
2default:defaulth px? 
?
%s*synth2?
?|top_vhdl    | (PCIN>>17)+A2*B2 | 18     | 9      | -      | -      | 48     | 1    | 1    | -    | -    | -     | 0    | 0    | 
2default:defaulth px? 
?
%s*synth2?
?|top_vhdl    | A2*B2            | 18     | 15     | -      | -      | 48     | 1    | 1    | -    | -    | -     | 0    | 0    | 
2default:defaulth px? 
?
%s*synth2?
?|top_vhdl    | (PCIN>>17)+A2*B2 | 15     | 9      | -      | -      | 48     | 1    | 1    | -    | -    | -     | 0    | 0    | 
2default:defaulth px? 
?
%s*synth2?
?|top_vhdl    | A2*B2            | 18     | 18     | -      | -      | 48     | 1    | 1    | -    | -    | -     | 0    | 0    | 
2default:defaulth px? 
?
%s*synth2?
?|top_vhdl    | (PCIN>>17)+A2*B2 | 18     | 9      | -      | -      | 48     | 1    | 1    | -    | -    | -     | 0    | 0    | 
2default:defaulth px? 
?
%s*synth2?
?|top_vhdl    | A2*B2            | 18     | 18     | -      | -      | 48     | 1    | 1    | -    | -    | -     | 0    | 0    | 
2default:defaulth px? 
?
%s*synth2?
?|top_vhdl    | (PCIN>>17)+A2*B2 | 18     | 9      | -      | -      | 48     | 1    | 1    | -    | -    | -     | 0    | 0    | 
2default:defaulth px? 
?
%s*synth2?
?+------------+------------------+--------+--------+--------+--------+--------+------+------+------+------+-------+------+------+

2default:defaulth px? 
?
%s*synth2?
?Note: The table above is a preliminary report that shows the DSPs inferred at the current stage of the synthesis flow. Some DSP may be reimplemented as non DSP primitives later in the synthesis flow. Multiple instantiated DSPs are reported only once.
2default:defaulth px? 
?
%s*synth2?
?---------------------------------------------------------------------------------
Finished ROM, RAM, DSP and Shift Register Reporting
2default:defaulth px? 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px? 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
R
%s
*synth2:
&Start Applying XDC Timing Constraints
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
2Moved timing constraint from pin '%s' to pin '%s'
4028*oasys2"
m_clk/axis_clk2default:default2+
m_clk/bbstub_axis_clk/O2default:defaultZ8-5578h px? 
?
SMoved %s constraints on hierarchical pins to their respective driving/loading pins
4235*oasys2
12default:defaultZ8-5819h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:19 ; elapsed = 00:00:21 . Memory (MB): peak = 812.387 ; gain = 519.156
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
F
%s
*synth2.
Start Timing Optimization
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
|Finished Timing Optimization : Time (s): cpu = 00:00:20 ; elapsed = 00:00:22 . Memory (MB): peak = 845.875 ; gain = 552.645
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-
Start Technology Mapping
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
{Finished Technology Mapping : Time (s): cpu = 00:00:20 ; elapsed = 00:00:22 . Memory (MB): peak = 849.910 ; gain = 556.680
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2'
Start IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
Q
%s
*synth29
%Start Flattening Before IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
T
%s
*synth2<
(Finished Flattening Before IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
H
%s
*synth20
Start Final Netlist Cleanup
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Finished Final Netlist Cleanup
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
uFinished IO Insertion : Time (s): cpu = 00:00:21 ; elapsed = 00:00:23 . Memory (MB): peak = 849.910 ; gain = 556.680
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
D
%s
*synth2,

Report Check Netlist: 
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
? 
u
%s
*synth2]
I|      |Item              |Errors |Warnings |Status |Description       |
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
? 
u
%s
*synth2]
I|1     |multi_driven_nets |      0|        0|Passed |Multi driven nets |
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Start Renaming Generated Instances
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Instances : Time (s): cpu = 00:00:21 ; elapsed = 00:00:23 . Memory (MB): peak = 849.910 ; gain = 556.680
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
L
%s
*synth24
 Start Rebuilding User Hierarchy
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:21 ; elapsed = 00:00:23 . Memory (MB): peak = 849.910 ; gain = 556.680
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Start Renaming Generated Ports
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Ports : Time (s): cpu = 00:00:21 ; elapsed = 00:00:23 . Memory (MB): peak = 849.910 ; gain = 556.680
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Handling Custom Attributes : Time (s): cpu = 00:00:21 ; elapsed = 00:00:23 . Memory (MB): peak = 849.910 ; gain = 556.680
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
J
%s
*synth22
Start Renaming Generated Nets
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Nets : Time (s): cpu = 00:00:21 ; elapsed = 00:00:23 . Memory (MB): peak = 849.910 ; gain = 556.680
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Start Writing Synthesis Report
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
A
%s
*synth2)

Report BlackBoxes: 
2default:defaulth p
x
? 
O
%s
*synth27
#+------+--------------+----------+
2default:defaulth p
x
? 
O
%s
*synth27
#|      |BlackBox name |Instances |
2default:defaulth p
x
? 
O
%s
*synth27
#+------+--------------+----------+
2default:defaulth p
x
? 
O
%s
*synth27
#|1     |clk_wiz_0     |         1|
2default:defaulth p
x
? 
O
%s
*synth27
#+------+--------------+----------+
2default:defaulth p
x
? 
A
%s*synth2)

Report Cell Usage: 
2default:defaulth px? 
N
%s*synth26
"+------+-----------------+------+
2default:defaulth px? 
N
%s*synth26
"|      |Cell             |Count |
2default:defaulth px? 
N
%s*synth26
"+------+-----------------+------+
2default:defaulth px? 
N
%s*synth26
"|1     |clk_wiz_0_bbox_0 |     1|
2default:defaulth px? 
N
%s*synth26
"|2     |CARRY4           |    44|
2default:defaulth px? 
N
%s*synth26
"|3     |DSP48E1          |    10|
2default:defaulth px? 
N
%s*synth26
"|4     |LUT1             |    12|
2default:defaulth px? 
N
%s*synth26
"|5     |LUT2             |    78|
2default:defaulth px? 
N
%s*synth26
"|6     |LUT3             |   127|
2default:defaulth px? 
N
%s*synth26
"|7     |LUT4             |    61|
2default:defaulth px? 
N
%s*synth26
"|8     |LUT5             |    37|
2default:defaulth px? 
N
%s*synth26
"|9     |LUT6             |   107|
2default:defaulth px? 
N
%s*synth26
"|10    |FDRE             |   223|
2default:defaulth px? 
N
%s*synth26
"|11    |FDSE             |    48|
2default:defaulth px? 
N
%s*synth26
"|12    |IBUF             |     6|
2default:defaulth px? 
N
%s*synth26
"|13    |OBUF             |     7|
2default:defaulth px? 
N
%s*synth26
"+------+-----------------+------+
2default:defaulth px? 
E
%s
*synth2-

Report Instance Areas: 
2default:defaulth p
x
? 
^
%s
*synth2F
2+------+---------+-----------------------+------+
2default:defaulth p
x
? 
^
%s
*synth2F
2|      |Instance |Module                 |Cells |
2default:defaulth p
x
? 
^
%s
*synth2F
2+------+---------+-----------------------+------+
2default:defaulth p
x
? 
^
%s
*synth2F
2|1     |top      |                       |   761|
2default:defaulth p
x
? 
^
%s
*synth2F
2|2     |  m_i2s2 |axis_i2s2              |   385|
2default:defaulth p
x
? 
^
%s
*synth2F
2|3     |  m_vc   |axis_volume_controller |   361|
2default:defaulth p
x
? 
^
%s
*synth2F
2+------+---------+-----------------------+------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Writing Synthesis Report : Time (s): cpu = 00:00:21 ; elapsed = 00:00:23 . Memory (MB): peak = 849.910 ; gain = 556.680
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
r
%s
*synth2Z
FSynthesis finished with 0 errors, 0 critical warnings and 0 warnings.
2default:defaulth p
x
? 
?
%s
*synth2?
~Synthesis Optimization Runtime : Time (s): cpu = 00:00:16 ; elapsed = 00:00:19 . Memory (MB): peak = 849.910 ; gain = 220.641
2default:defaulth p
x
? 
?
%s
*synth2?
Synthesis Optimization Complete : Time (s): cpu = 00:00:22 ; elapsed = 00:00:23 . Memory (MB): peak = 849.910 ; gain = 556.680
2default:defaulth p
x
? 
B
 Translating synthesized netlist
350*projectZ1-571h px? 
f
-Analyzing %s Unisim elements for replacement
17*netlist2
542default:defaultZ29-17h px? 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px? 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px? 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
849.9102default:default2
0.0002default:defaultZ17-268h px? 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px? 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
272default:default2
102default:default2
02default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
synth_design2default:defaultZ4-42h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
synth_design: 2default:default2
00:00:232default:default2
00:00:252default:default2
849.9102default:default2
568.1842default:defaultZ17-268h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
849.9102default:default2
0.0002default:defaultZ17-268h px? 
K
"No constraints selected for write.1103*constraintsZ18-5210h px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2q
]C:/Users/giaco/Documents/Uni/PoD/MaPD/MAPD_modA/demo_pmod/demo_pmod.runs/synth_1/top_vhdl.dcp2default:defaultZ17-1381h px? 
?
%s4*runtcl2z
fExecuting : report_utilization -file top_vhdl_utilization_synth.rpt -pb top_vhdl_utilization_synth.pb
2default:defaulth px? 
?
Exiting %s at %s...
206*common2
Vivado2default:default2,
Fri Feb 11 12:18:48 20222default:defaultZ17-206h px? 


End Record