
u
Command: %s
53*	vivadotcl2D
0synth_design -top top_vhdl -part xc7a35tcsg324-12default:defaultZ4-113h px? 
:
Starting synth_design
149*	vivadotclZ4-321h px? 
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
xStarting RTL Elaboration : Time (s): cpu = 00:00:01 ; elapsed = 00:00:02 . Memory (MB): peak = 393.492 ; gain = 100.180
2default:defaulth px? 
?
synthesizing module '%s'638*oasys2
top_vhdl2default:default2t
^C:/Users/giaco/Documents/Uni/PoD/MaPD/MAPD_modA/audio_fir/audio_fir.srcs/sources_1/new/top.vhd2default:default2
242default:default8@Z8-638h px? 
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
?C:/Users/giaco/Documents/Uni/PoD/MaPD/MAPD_modA/audio_fir/audio_fir.runs/synth_2/.Xil/Vivado-15480-DESKTOP-A6N5RC6/realtime/clk_wiz_0_stub.vhdl2default:default2
52default:default2
m_clk2default:default2
	clk_wiz_02default:default2t
^C:/Users/giaco/Documents/Uni/PoD/MaPD/MAPD_modA/audio_fir/audio_fir.srcs/sources_1/new/top.vhd2default:default2
982default:default8@Z8-3491h px? 
?
synthesizing module '%s'638*oasys2
	clk_wiz_02default:default2?
?C:/Users/giaco/Documents/Uni/PoD/MaPD/MAPD_modA/audio_fir/audio_fir.runs/synth_2/.Xil/Vivado-15480-DESKTOP-A6N5RC6/realtime/clk_wiz_0_stub.vhdl2default:default2
132default:default8@Z8-638h px? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
	axis_i2s22default:default2o
[C:/Users/giaco/Documents/Uni/PoD/MaPD/MAPD_modA/Pmod-I2S2-master/shared/src/hdl/axis_i2s2.v2default:default2
242default:default2
m_i2s22default:default2
	axis_i2s22default:default2t
^C:/Users/giaco/Documents/Uni/PoD/MaPD/MAPD_modA/audio_fir/audio_fir.srcs/sources_1/new/top.vhd2default:default2
1072default:default8@Z8-3491h px? 
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
\
%s
*synth2D
0	Parameter N_TAPS bound to: 11 - type: integer 
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
a
%s
*synth2I
5	Parameter COEFF_WIDTH bound to: 24 - type: integer 
2default:defaulth p
x
? 
]
%s
*synth2E
1	Parameter SCALING bound to: 23 - type: integer 
2default:defaulth p
x
? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2"
fir_controller2default:default2}
iC:/Users/giaco/Documents/Uni/PoD/MaPD/MAPD_modA/audio_fir/audio_fir.srcs/sources_1/new/fir_controller.vhd2default:default2
142default:default2
m_fir2default:default2"
fir_controller2default:default2t
^C:/Users/giaco/Documents/Uni/PoD/MaPD/MAPD_modA/audio_fir/audio_fir.srcs/sources_1/new/top.vhd2default:default2
1292default:default8@Z8-3491h px? 
?
synthesizing module '%s'638*oasys2"
fir_controller2default:default2
iC:/Users/giaco/Documents/Uni/PoD/MaPD/MAPD_modA/audio_fir/audio_fir.srcs/sources_1/new/fir_controller.vhd2default:default2
372default:default8@Z8-638h px? 
\
%s
*synth2D
0	Parameter N_TAPS bound to: 11 - type: integer 
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
a
%s
*synth2I
5	Parameter COEFF_WIDTH bound to: 24 - type: integer 
2default:defaulth p
x
? 
]
%s
*synth2E
1	Parameter SCALING bound to: 23 - type: integer 
2default:defaulth p
x
? 
?
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2!
s_axis_tvalid2default:default2
iC:/Users/giaco/Documents/Uni/PoD/MaPD/MAPD_modA/audio_fir/audio_fir.srcs/sources_1/new/fir_controller.vhd2default:default2
822default:default8@Z8-614h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2"
s_data_reg[10]2default:default2
iC:/Users/giaco/Documents/Uni/PoD/MaPD/MAPD_modA/audio_fir/audio_fir.srcs/sources_1/new/fir_controller.vhd2default:default2
852default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2"
s_mult_reg[10]2default:default2
iC:/Users/giaco/Documents/Uni/PoD/MaPD/MAPD_modA/audio_fir/audio_fir.srcs/sources_1/new/fir_controller.vhd2default:default2
932default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2
tmp_reg2default:default2
iC:/Users/giaco/Documents/Uni/PoD/MaPD/MAPD_modA/audio_fir/audio_fir.srcs/sources_1/new/fir_controller.vhd2default:default2
1102default:default8@Z8-6014h px? 
?
RFound unconnected internal register '%s' and it is trimmed from '%s' to '%s' bits.3455*oasys2%
filtered_data_reg2default:default2
242default:default2
232default:default2
iC:/Users/giaco/Documents/Uni/PoD/MaPD/MAPD_modA/audio_fir/audio_fir.srcs/sources_1/new/fir_controller.vhd2default:default2
1222default:default8@Z8-3936h px? 
?
RFound unconnected internal register '%s' and it is trimmed from '%s' to '%s' bits.3455*oasys2
s_add_1_reg2default:default2
502default:default2
472default:default2
iC:/Users/giaco/Documents/Uni/PoD/MaPD/MAPD_modA/audio_fir/audio_fir.srcs/sources_1/new/fir_controller.vhd2default:default2
1152default:default8@Z8-3936h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2"
fir_controller2default:default2
22default:default2
12default:default2
iC:/Users/giaco/Documents/Uni/PoD/MaPD/MAPD_modA/audio_fir/audio_fir.srcs/sources_1/new/fir_controller.vhd2default:default2
372default:default8@Z8-256h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2
top_vhdl2default:default2
32default:default2
12default:default2t
^C:/Users/giaco/Documents/Uni/PoD/MaPD/MAPD_modA/audio_fir/audio_fir.srcs/sources_1/new/top.vhd2default:default2
242default:default8@Z8-256h px? 
?
%s*synth2?
xFinished RTL Elaboration : Time (s): cpu = 00:00:02 ; elapsed = 00:00:02 . Memory (MB): peak = 449.602 ; gain = 156.289
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
^C:/Users/giaco/Documents/Uni/PoD/MaPD/MAPD_modA/audio_fir/audio_fir.srcs/sources_1/new/top.vhd2default:default2
1072default:default8@Z8-3295h px? 
?
'tying undriven pin %s:%s to constant 0
3295*oasys2
m_i2s22default:default2&
tx_axis_s_data[30]2default:default2t
^C:/Users/giaco/Documents/Uni/PoD/MaPD/MAPD_modA/audio_fir/audio_fir.srcs/sources_1/new/top.vhd2default:default2
1072default:default8@Z8-3295h px? 
?
'tying undriven pin %s:%s to constant 0
3295*oasys2
m_i2s22default:default2&
tx_axis_s_data[29]2default:default2t
^C:/Users/giaco/Documents/Uni/PoD/MaPD/MAPD_modA/audio_fir/audio_fir.srcs/sources_1/new/top.vhd2default:default2
1072default:default8@Z8-3295h px? 
?
'tying undriven pin %s:%s to constant 0
3295*oasys2
m_i2s22default:default2&
tx_axis_s_data[28]2default:default2t
^C:/Users/giaco/Documents/Uni/PoD/MaPD/MAPD_modA/audio_fir/audio_fir.srcs/sources_1/new/top.vhd2default:default2
1072default:default8@Z8-3295h px? 
?
'tying undriven pin %s:%s to constant 0
3295*oasys2
m_i2s22default:default2&
tx_axis_s_data[27]2default:default2t
^C:/Users/giaco/Documents/Uni/PoD/MaPD/MAPD_modA/audio_fir/audio_fir.srcs/sources_1/new/top.vhd2default:default2
1072default:default8@Z8-3295h px? 
?
'tying undriven pin %s:%s to constant 0
3295*oasys2
m_i2s22default:default2&
tx_axis_s_data[26]2default:default2t
^C:/Users/giaco/Documents/Uni/PoD/MaPD/MAPD_modA/audio_fir/audio_fir.srcs/sources_1/new/top.vhd2default:default2
1072default:default8@Z8-3295h px? 
?
'tying undriven pin %s:%s to constant 0
3295*oasys2
m_i2s22default:default2&
tx_axis_s_data[25]2default:default2t
^C:/Users/giaco/Documents/Uni/PoD/MaPD/MAPD_modA/audio_fir/audio_fir.srcs/sources_1/new/top.vhd2default:default2
1072default:default8@Z8-3295h px? 
?
'tying undriven pin %s:%s to constant 0
3295*oasys2
m_i2s22default:default2&
tx_axis_s_data[24]2default:default2t
^C:/Users/giaco/Documents/Uni/PoD/MaPD/MAPD_modA/audio_fir/audio_fir.srcs/sources_1/new/top.vhd2default:default2
1072default:default8@Z8-3295h px? 
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
?Finished Handling Custom Attributes : Time (s): cpu = 00:00:02 ; elapsed = 00:00:02 . Memory (MB): peak = 449.602 ; gain = 156.289
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
?Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:02 ; elapsed = 00:00:02 . Memory (MB): peak = 449.602 ; gain = 156.289
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
bC:/Users/giaco/Documents/Uni/PoD/MaPD/MAPD_modA/audio_fir/audio_fir.srcs/constrs_1/new/mapping.xdc2default:default8Z20-179h px? 
?
Finished Parsing XDC File [%s]
178*designutils2x
bC:/Users/giaco/Documents/Uni/PoD/MaPD/MAPD_modA/audio_fir/audio_fir.srcs/constrs_1/new/mapping.xdc2default:default8Z20-178h px? 
?
?Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2v
bC:/Users/giaco/Documents/Uni/PoD/MaPD/MAPD_modA/audio_fir/audio_fir.srcs/constrs_1/new/mapping.xdc2default:default2.
.Xil/top_vhdl_propImpl.xdc2default:defaultZ1-236h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
788.4142default:default2
0.0002default:defaultZ17-268h px? 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
788.4142default:default2
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
788.4142default:default2
0.0002default:defaultZ17-268h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common24
 Constraint Validation Runtime : 2default:default2
00:00:002default:default2 
00:00:00.0032default:default2
788.4142default:default2
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
~Finished Constraint Validation : Time (s): cpu = 00:00:07 ; elapsed = 00:00:09 . Memory (MB): peak = 788.414 ; gain = 495.102
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
?Finished Loading Part and Timing Information : Time (s): cpu = 00:00:07 ; elapsed = 00:00:09 . Memory (MB): peak = 788.414 ; gain = 495.102
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
?Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:07 ; elapsed = 00:00:09 . Memory (MB): peak = 788.414 ; gain = 495.102
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
cNot enough pipeline registers after wide multiplier. Recommended levels of pipeline registers is %s4267*oasys2
22default:default2
iC:/Users/giaco/Documents/Uni/PoD/MaPD/MAPD_modA/audio_fir/audio_fir.srcs/sources_1/new/fir_controller.vhd2default:default2
932default:default8@Z8-5845h px? 
?
cNot enough pipeline registers after wide multiplier. Recommended levels of pipeline registers is %s4267*oasys2
22default:default2
iC:/Users/giaco/Documents/Uni/PoD/MaPD/MAPD_modA/audio_fir/audio_fir.srcs/sources_1/new/fir_controller.vhd2default:default2
932default:default8@Z8-5845h px? 
?
cNot enough pipeline registers after wide multiplier. Recommended levels of pipeline registers is %s4267*oasys2
22default:default2
iC:/Users/giaco/Documents/Uni/PoD/MaPD/MAPD_modA/audio_fir/audio_fir.srcs/sources_1/new/fir_controller.vhd2default:default2
932default:default8@Z8-5845h px? 
?
cNot enough pipeline registers after wide multiplier. Recommended levels of pipeline registers is %s4267*oasys2
22default:default2
iC:/Users/giaco/Documents/Uni/PoD/MaPD/MAPD_modA/audio_fir/audio_fir.srcs/sources_1/new/fir_controller.vhd2default:default2
932default:default8@Z8-5845h px? 
?
cNot enough pipeline registers after wide multiplier. Recommended levels of pipeline registers is %s4267*oasys2
22default:default2
iC:/Users/giaco/Documents/Uni/PoD/MaPD/MAPD_modA/audio_fir/audio_fir.srcs/sources_1/new/fir_controller.vhd2default:default2
932default:default8@Z8-5845h px? 
?
cNot enough pipeline registers after wide multiplier. Recommended levels of pipeline registers is %s4267*oasys2
22default:default2
iC:/Users/giaco/Documents/Uni/PoD/MaPD/MAPD_modA/audio_fir/audio_fir.srcs/sources_1/new/fir_controller.vhd2default:default2
932default:default8@Z8-5845h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:08 ; elapsed = 00:00:09 . Memory (MB): peak = 788.414 ; gain = 495.102
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
.	   2 Input     49 Bit       Adders := 5     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   5 Input     47 Bit       Adders := 1     
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
.	               49 Bit    Registers := 5     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               48 Bit    Registers := 6     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               47 Bit    Registers := 1     
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
.	               24 Bit    Registers := 26    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               23 Bit    Registers := 2     
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
.	                1 Bit    Registers := 8     
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
C
%s
*synth2+
Module fir_controller 
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
.	   2 Input     49 Bit       Adders := 5     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   5 Input     47 Bit       Adders := 1     
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
.	               49 Bit    Registers := 5     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               48 Bit    Registers := 6     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               47 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               24 Bit    Registers := 22    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               23 Bit    Registers := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 5     
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
merging register '%s' into '%s'3619*oasys2-
m_fir/s_data_reg[2][23:0]2default:default2-
m_fir/s_data_reg[2][23:0]2default:default2
iC:/Users/giaco/Documents/Uni/PoD/MaPD/MAPD_modA/audio_fir/audio_fir.srcs/sources_1/new/fir_controller.vhd2default:default2
852default:default8@Z8-4471h px? 
?
merging register '%s' into '%s'3619*oasys2-
m_fir/s_data_reg[2][23:0]2default:default2-
m_fir/s_data_reg[2][23:0]2default:default2
iC:/Users/giaco/Documents/Uni/PoD/MaPD/MAPD_modA/audio_fir/audio_fir.srcs/sources_1/new/fir_controller.vhd2default:default2
852default:default8@Z8-4471h px? 
?
merging register '%s' into '%s'3619*oasys2-
m_fir/s_data_reg[1][23:0]2default:default2-
m_fir/s_data_reg[1][23:0]2default:default2
iC:/Users/giaco/Documents/Uni/PoD/MaPD/MAPD_modA/audio_fir/audio_fir.srcs/sources_1/new/fir_controller.vhd2default:default2
852default:default8@Z8-4471h px? 
?
merging register '%s' into '%s'3619*oasys2-
m_fir/s_data_reg[3][23:0]2default:default2-
m_fir/s_data_reg[3][23:0]2default:default2
iC:/Users/giaco/Documents/Uni/PoD/MaPD/MAPD_modA/audio_fir/audio_fir.srcs/sources_1/new/fir_controller.vhd2default:default2
852default:default8@Z8-4471h px? 
?
merging register '%s' into '%s'3619*oasys2-
m_fir/s_data_reg[3][23:0]2default:default2-
m_fir/s_data_reg[3][23:0]2default:default2
iC:/Users/giaco/Documents/Uni/PoD/MaPD/MAPD_modA/audio_fir/audio_fir.srcs/sources_1/new/fir_controller.vhd2default:default2
852default:default8@Z8-4471h px? 
?
merging register '%s' into '%s'3619*oasys2-
m_fir/s_data_reg[4][23:0]2default:default2-
m_fir/s_data_reg[4][23:0]2default:default2
iC:/Users/giaco/Documents/Uni/PoD/MaPD/MAPD_modA/audio_fir/audio_fir.srcs/sources_1/new/fir_controller.vhd2default:default2
852default:default8@Z8-4471h px? 
?
merging register '%s' into '%s'3619*oasys2-
m_fir/s_data_reg[6][23:0]2default:default2-
m_fir/s_data_reg[6][23:0]2default:default2
iC:/Users/giaco/Documents/Uni/PoD/MaPD/MAPD_modA/audio_fir/audio_fir.srcs/sources_1/new/fir_controller.vhd2default:default2
852default:default8@Z8-4471h px? 
?
merging register '%s' into '%s'3619*oasys2-
m_fir/s_data_reg[5][23:0]2default:default2-
m_fir/s_data_reg[5][23:0]2default:default2
iC:/Users/giaco/Documents/Uni/PoD/MaPD/MAPD_modA/audio_fir/audio_fir.srcs/sources_1/new/fir_controller.vhd2default:default2
852default:default8@Z8-4471h px? 
?
merging register '%s' into '%s'3619*oasys2-
m_fir/s_data_reg[6][23:0]2default:default2-
m_fir/s_data_reg[6][23:0]2default:default2
iC:/Users/giaco/Documents/Uni/PoD/MaPD/MAPD_modA/audio_fir/audio_fir.srcs/sources_1/new/fir_controller.vhd2default:default2
852default:default8@Z8-4471h px? 
?
merging register '%s' into '%s'3619*oasys2-
m_fir/s_data_reg[0][23:0]2default:default2-
m_fir/s_data_reg[0][23:0]2default:default2
iC:/Users/giaco/Documents/Uni/PoD/MaPD/MAPD_modA/audio_fir/audio_fir.srcs/sources_1/new/fir_controller.vhd2default:default2
852default:default8@Z8-4471h px? 
?
merging register '%s' into '%s'3619*oasys2-
m_fir/s_data_reg[0][23:0]2default:default2-
m_fir/s_data_reg[0][23:0]2default:default2
iC:/Users/giaco/Documents/Uni/PoD/MaPD/MAPD_modA/audio_fir/audio_fir.srcs/sources_1/new/fir_controller.vhd2default:default2
852default:default8@Z8-4471h px? 
?
merging register '%s' into '%s'3619*oasys2-
m_fir/s_data_reg[3][23:0]2default:default2-
m_fir/s_data_reg[3][23:0]2default:default2
iC:/Users/giaco/Documents/Uni/PoD/MaPD/MAPD_modA/audio_fir/audio_fir.srcs/sources_1/new/fir_controller.vhd2default:default2
852default:default8@Z8-4471h px? 
?
merging register '%s' into '%s'3619*oasys2-
m_fir/s_data_reg[3][23:0]2default:default2-
m_fir/s_data_reg[3][23:0]2default:default2
iC:/Users/giaco/Documents/Uni/PoD/MaPD/MAPD_modA/audio_fir/audio_fir.srcs/sources_1/new/fir_controller.vhd2default:default2
852default:default8@Z8-4471h px? 
?
merging register '%s' into '%s'3619*oasys2-
m_fir/s_data_reg[2][23:0]2default:default2-
m_fir/s_data_reg[2][23:0]2default:default2
iC:/Users/giaco/Documents/Uni/PoD/MaPD/MAPD_modA/audio_fir/audio_fir.srcs/sources_1/new/fir_controller.vhd2default:default2
852default:default8@Z8-4471h px? 
?
merging register '%s' into '%s'3619*oasys2-
m_fir/s_data_reg[5][23:0]2default:default2-
m_fir/s_data_reg[5][23:0]2default:default2
iC:/Users/giaco/Documents/Uni/PoD/MaPD/MAPD_modA/audio_fir/audio_fir.srcs/sources_1/new/fir_controller.vhd2default:default2
852default:default8@Z8-4471h px? 
?
merging register '%s' into '%s'3619*oasys2-
m_fir/s_data_reg[4][23:0]2default:default2-
m_fir/s_data_reg[4][23:0]2default:default2
iC:/Users/giaco/Documents/Uni/PoD/MaPD/MAPD_modA/audio_fir/audio_fir.srcs/sources_1/new/fir_controller.vhd2default:default2
852default:default8@Z8-4471h px? 
?
merging register '%s' into '%s'3619*oasys2-
m_fir/s_data_reg[4][23:0]2default:default2-
m_fir/s_data_reg[4][23:0]2default:default2
iC:/Users/giaco/Documents/Uni/PoD/MaPD/MAPD_modA/audio_fir/audio_fir.srcs/sources_1/new/fir_controller.vhd2default:default2
852default:default8@Z8-4471h px? 
?
merging register '%s' into '%s'3619*oasys2-
m_fir/s_data_reg[7][23:0]2default:default2-
m_fir/s_data_reg[7][23:0]2default:default2
iC:/Users/giaco/Documents/Uni/PoD/MaPD/MAPD_modA/audio_fir/audio_fir.srcs/sources_1/new/fir_controller.vhd2default:default2
852default:default8@Z8-4471h px? 
?
merging register '%s' into '%s'3619*oasys2-
m_fir/s_data_reg[7][23:0]2default:default2-
m_fir/s_data_reg[7][23:0]2default:default2
iC:/Users/giaco/Documents/Uni/PoD/MaPD/MAPD_modA/audio_fir/audio_fir.srcs/sources_1/new/fir_controller.vhd2default:default2
852default:default8@Z8-4471h px? 
?
merging register '%s' into '%s'3619*oasys2-
m_fir/s_data_reg[6][23:0]2default:default2-
m_fir/s_data_reg[6][23:0]2default:default2
iC:/Users/giaco/Documents/Uni/PoD/MaPD/MAPD_modA/audio_fir/audio_fir.srcs/sources_1/new/fir_controller.vhd2default:default2
852default:default8@Z8-4471h px? 
?
merging register '%s' into '%s'3619*oasys2-
m_fir/s_data_reg[1][23:0]2default:default2-
m_fir/s_data_reg[1][23:0]2default:default2
iC:/Users/giaco/Documents/Uni/PoD/MaPD/MAPD_modA/audio_fir/audio_fir.srcs/sources_1/new/fir_controller.vhd2default:default2
852default:default8@Z8-4471h px? 
?
RFound unconnected internal register '%s' and it is trimmed from '%s' to '%s' bits.3455*oasys2%
m_fir/s_add_1_reg2default:default2
472default:default2
462default:default2
iC:/Users/giaco/Documents/Uni/PoD/MaPD/MAPD_modA/audio_fir/audio_fir.srcs/sources_1/new/fir_controller.vhd2default:default2
1152default:default8@Z8-3936h px? 
?
RFound unconnected internal register '%s' and it is trimmed from '%s' to '%s' bits.3455*oasys2(
m_fir/s_add_0_reg[0]2default:default2
492default:default2
462default:default2
iC:/Users/giaco/Documents/Uni/PoD/MaPD/MAPD_modA/audio_fir/audio_fir.srcs/sources_1/new/fir_controller.vhd2default:default2
1022default:default8@Z8-3936h px? 
?
RFound unconnected internal register '%s' and it is trimmed from '%s' to '%s' bits.3455*oasys2(
m_fir/s_add_0_reg[1]2default:default2
492default:default2
462default:default2
iC:/Users/giaco/Documents/Uni/PoD/MaPD/MAPD_modA/audio_fir/audio_fir.srcs/sources_1/new/fir_controller.vhd2default:default2
1022default:default8@Z8-3936h px? 
?
RFound unconnected internal register '%s' and it is trimmed from '%s' to '%s' bits.3455*oasys2(
m_fir/s_add_0_reg[3]2default:default2
492default:default2
462default:default2
iC:/Users/giaco/Documents/Uni/PoD/MaPD/MAPD_modA/audio_fir/audio_fir.srcs/sources_1/new/fir_controller.vhd2default:default2
1022default:default8@Z8-3936h px? 
?
RFound unconnected internal register '%s' and it is trimmed from '%s' to '%s' bits.3455*oasys2'
m_fir/s_mult_reg[6]2default:default2
482default:default2
292default:default2
iC:/Users/giaco/Documents/Uni/PoD/MaPD/MAPD_modA/audio_fir/audio_fir.srcs/sources_1/new/fir_controller.vhd2default:default2
932default:default8@Z8-3936h px? 
?
RFound unconnected internal register '%s' and it is trimmed from '%s' to '%s' bits.3455*oasys2(
m_fir/s_add_0_reg[4]2default:default2
492default:default2
462default:default2
iC:/Users/giaco/Documents/Uni/PoD/MaPD/MAPD_modA/audio_fir/audio_fir.srcs/sources_1/new/fir_controller.vhd2default:default2
1022default:default8@Z8-3936h px? 
?
RFound unconnected internal register '%s' and it is trimmed from '%s' to '%s' bits.3455*oasys2'
m_fir/s_mult_reg[8]2default:default2
482default:default2
282default:default2
iC:/Users/giaco/Documents/Uni/PoD/MaPD/MAPD_modA/audio_fir/audio_fir.srcs/sources_1/new/fir_controller.vhd2default:default2
932default:default8@Z8-3936h px? 
?
RFound unconnected internal register '%s' and it is trimmed from '%s' to '%s' bits.3455*oasys2'
m_fir/s_mult_reg[8]2default:default2
482default:default2
172default:default2
iC:/Users/giaco/Documents/Uni/PoD/MaPD/MAPD_modA/audio_fir/audio_fir.srcs/sources_1/new/fir_controller.vhd2default:default2
932default:default8@Z8-3936h px? 
?
RFound unconnected internal register '%s' and it is trimmed from '%s' to '%s' bits.3455*oasys2'
m_fir/s_mult_reg[7]2default:default2
482default:default2
282default:default2
iC:/Users/giaco/Documents/Uni/PoD/MaPD/MAPD_modA/audio_fir/audio_fir.srcs/sources_1/new/fir_controller.vhd2default:default2
932default:default8@Z8-3936h px? 
?
RFound unconnected internal register '%s' and it is trimmed from '%s' to '%s' bits.3455*oasys2'
m_fir/s_mult_reg[7]2default:default2
482default:default2
172default:default2
iC:/Users/giaco/Documents/Uni/PoD/MaPD/MAPD_modA/audio_fir/audio_fir.srcs/sources_1/new/fir_controller.vhd2default:default2
932default:default8@Z8-3936h px? 
?
RFound unconnected internal register '%s' and it is trimmed from '%s' to '%s' bits.3455*oasys2'
m_fir/s_data_reg[9]2default:default2
242default:default2
12default:default2
iC:/Users/giaco/Documents/Uni/PoD/MaPD/MAPD_modA/audio_fir/audio_fir.srcs/sources_1/new/fir_controller.vhd2default:default2
852default:default8@Z8-3936h px? 
?
RFound unconnected internal register '%s' and it is trimmed from '%s' to '%s' bits.3455*oasys2'
m_fir/s_mult_reg[6]2default:default2
482default:default2
172default:default2
iC:/Users/giaco/Documents/Uni/PoD/MaPD/MAPD_modA/audio_fir/audio_fir.srcs/sources_1/new/fir_controller.vhd2default:default2
932default:default8@Z8-3936h px? 
?
RFound unconnected internal register '%s' and it is trimmed from '%s' to '%s' bits.3455*oasys2(
m_fir/s_add_0_reg[2]2default:default2
492default:default2
462default:default2
iC:/Users/giaco/Documents/Uni/PoD/MaPD/MAPD_modA/audio_fir/audio_fir.srcs/sources_1/new/fir_controller.vhd2default:default2
1022default:default8@Z8-3936h px? 
?
RFound unconnected internal register '%s' and it is trimmed from '%s' to '%s' bits.3455*oasys2'
m_fir/s_mult_reg[5]2default:default2
482default:default2
292default:default2
iC:/Users/giaco/Documents/Uni/PoD/MaPD/MAPD_modA/audio_fir/audio_fir.srcs/sources_1/new/fir_controller.vhd2default:default2
932default:default8@Z8-3936h px? 
?
RFound unconnected internal register '%s' and it is trimmed from '%s' to '%s' bits.3455*oasys2'
m_fir/s_mult_reg[5]2default:default2
482default:default2
172default:default2
iC:/Users/giaco/Documents/Uni/PoD/MaPD/MAPD_modA/audio_fir/audio_fir.srcs/sources_1/new/fir_controller.vhd2default:default2
932default:default8@Z8-3936h px? 
?
RFound unconnected internal register '%s' and it is trimmed from '%s' to '%s' bits.3455*oasys2'
m_fir/s_mult_reg[4]2default:default2
482default:default2
282default:default2
iC:/Users/giaco/Documents/Uni/PoD/MaPD/MAPD_modA/audio_fir/audio_fir.srcs/sources_1/new/fir_controller.vhd2default:default2
932default:default8@Z8-3936h px? 
?
RFound unconnected internal register '%s' and it is trimmed from '%s' to '%s' bits.3455*oasys2'
m_fir/s_mult_reg[4]2default:default2
482default:default2
172default:default2
iC:/Users/giaco/Documents/Uni/PoD/MaPD/MAPD_modA/audio_fir/audio_fir.srcs/sources_1/new/fir_controller.vhd2default:default2
932default:default8@Z8-3936h px? 
?
RFound unconnected internal register '%s' and it is trimmed from '%s' to '%s' bits.3455*oasys2'
m_fir/s_mult_reg[3]2default:default2
482default:default2
282default:default2
iC:/Users/giaco/Documents/Uni/PoD/MaPD/MAPD_modA/audio_fir/audio_fir.srcs/sources_1/new/fir_controller.vhd2default:default2
932default:default8@Z8-3936h px? 
?
RFound unconnected internal register '%s' and it is trimmed from '%s' to '%s' bits.3455*oasys2'
m_fir/s_mult_reg[3]2default:default2
482default:default2
172default:default2
iC:/Users/giaco/Documents/Uni/PoD/MaPD/MAPD_modA/audio_fir/audio_fir.srcs/sources_1/new/fir_controller.vhd2default:default2
932default:default8@Z8-3936h px? 
?
merging register '%s' into '%s'3619*oasys2-
m_fir/s_data_reg[4][23:0]2default:default2-
m_fir/s_data_reg[4][23:0]2default:default2
iC:/Users/giaco/Documents/Uni/PoD/MaPD/MAPD_modA/audio_fir/audio_fir.srcs/sources_1/new/fir_controller.vhd2default:default2
852default:default8@Z8-4471h px? 
?
merging register '%s' into '%s'3619*oasys2-
m_fir/s_data_reg[5][23:0]2default:default2-
m_fir/s_data_reg[5][23:0]2default:default2
iC:/Users/giaco/Documents/Uni/PoD/MaPD/MAPD_modA/audio_fir/audio_fir.srcs/sources_1/new/fir_controller.vhd2default:default2
852default:default8@Z8-4471h px? 
?
merging register '%s' into '%s'3619*oasys2-
m_fir/s_data_reg[8][23:0]2default:default2-
m_fir/s_data_reg[8][23:0]2default:default2
iC:/Users/giaco/Documents/Uni/PoD/MaPD/MAPD_modA/audio_fir/audio_fir.srcs/sources_1/new/fir_controller.vhd2default:default2
852default:default8@Z8-4471h px? 
?
merging register '%s' into '%s'3619*oasys2-
m_fir/s_data_reg[7][23:0]2default:default2-
m_fir/s_data_reg[7][23:0]2default:default2
iC:/Users/giaco/Documents/Uni/PoD/MaPD/MAPD_modA/audio_fir/audio_fir.srcs/sources_1/new/fir_controller.vhd2default:default2
852default:default8@Z8-4471h px? 
?
merging register '%s' into '%s'3619*oasys2-
m_fir/s_data_reg[5][23:0]2default:default2-
m_fir/s_data_reg[5][23:0]2default:default2
iC:/Users/giaco/Documents/Uni/PoD/MaPD/MAPD_modA/audio_fir/audio_fir.srcs/sources_1/new/fir_controller.vhd2default:default2
852default:default8@Z8-4471h px? 
?
merging register '%s' into '%s'3619*oasys2-
m_fir/s_data_reg[6][23:0]2default:default2-
m_fir/s_data_reg[6][23:0]2default:default2
iC:/Users/giaco/Documents/Uni/PoD/MaPD/MAPD_modA/audio_fir/audio_fir.srcs/sources_1/new/fir_controller.vhd2default:default2
852default:default8@Z8-4471h px? 
?
merging register '%s' into '%s'3619*oasys2-
m_fir/s_data_reg[8][23:0]2default:default2-
m_fir/s_data_reg[8][23:0]2default:default2
iC:/Users/giaco/Documents/Uni/PoD/MaPD/MAPD_modA/audio_fir/audio_fir.srcs/sources_1/new/fir_controller.vhd2default:default2
852default:default8@Z8-4471h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2'
m_fir/s_mult_reg[1]2default:default2
iC:/Users/giaco/Documents/Uni/PoD/MaPD/MAPD_modA/audio_fir/audio_fir.srcs/sources_1/new/fir_controller.vhd2default:default2
932default:default8@Z8-6014h px? 
?
%s
*synth2i
UDSP Report: Generating DSP m_fir/s_mult_reg[1]0, operation Mode is: A''*(B:0x19d26).
2default:defaulth p
x
? 
?
%s
*synth2h
TDSP Report: register m_fir/s_data_reg[0] is absorbed into DSP m_fir/s_mult_reg[1]0.
2default:defaulth p
x
? 
?
%s
*synth2h
TDSP Report: register m_fir/s_data_reg[1] is absorbed into DSP m_fir/s_mult_reg[1]0.
2default:defaulth p
x
? 
?
%s
*synth2i
UDSP Report: operator m_fir/s_mult_reg[1]0 is absorbed into DSP m_fir/s_mult_reg[1]0.
2default:defaulth p
x
? 
?
%s
*synth2l
XDSP Report: Generating DSP m_fir/s_mult_reg[1]0, operation Mode is: C'+A''*(B:0x19d26).
2default:defaulth p
x
? 
?
%s
*synth2h
TDSP Report: register m_fir/s_data_reg[0] is absorbed into DSP m_fir/s_mult_reg[1]0.
2default:defaulth p
x
? 
?
%s
*synth2h
TDSP Report: register m_fir/s_data_reg[1] is absorbed into DSP m_fir/s_mult_reg[1]0.
2default:defaulth p
x
? 
n
%s
*synth2V
BDSP Report: register C is absorbed into DSP m_fir/s_mult_reg[1]0.
2default:defaulth p
x
? 
?
%s
*synth2i
UDSP Report: operator m_fir/s_mult_reg[1]0 is absorbed into DSP m_fir/s_mult_reg[1]0.
2default:defaulth p
x
? 
?
%s
*synth2i
UDSP Report: operator m_fir/s_mult_reg[1]0 is absorbed into DSP m_fir/s_mult_reg[1]0.
2default:defaulth p
x
? 
?
%s
*synth2o
[DSP Report: Generating DSP m_fir/s_add_0_reg[0], operation Mode is: (C'+(A2*(B:0x7b1))')'.
2default:defaulth p
x
? 
?
%s
*synth2h
TDSP Report: register m_fir/s_data_reg[0] is absorbed into DSP m_fir/s_add_0_reg[0].
2default:defaulth p
x
? 
n
%s
*synth2V
BDSP Report: register C is absorbed into DSP m_fir/s_add_0_reg[0].
2default:defaulth p
x
? 
?
%s
*synth2i
UDSP Report: register m_fir/s_add_0_reg[0] is absorbed into DSP m_fir/s_add_0_reg[0].
2default:defaulth p
x
? 
?
%s
*synth2h
TDSP Report: register m_fir/s_mult_reg[0] is absorbed into DSP m_fir/s_add_0_reg[0].
2default:defaulth p
x
? 
?
%s
*synth2j
VDSP Report: operator m_fir/s_add_0_reg[0]0 is absorbed into DSP m_fir/s_add_0_reg[0].
2default:defaulth p
x
? 
?
%s
*synth2i
UDSP Report: operator m_fir/s_mult_reg[0]0 is absorbed into DSP m_fir/s_add_0_reg[0].
2default:defaulth p
x
? 
?
%s
*synth2i
UDSP Report: Generating DSP m_fir/s_mult_reg[9]0, operation Mode is: A''*(B:0x10301).
2default:defaulth p
x
? 
?
%s
*synth2h
TDSP Report: register m_fir/s_data_reg[8] is absorbed into DSP m_fir/s_mult_reg[9]0.
2default:defaulth p
x
? 
?
%s
*synth2h
TDSP Report: register m_fir/s_data_reg[9] is absorbed into DSP m_fir/s_mult_reg[9]0.
2default:defaulth p
x
? 
?
%s
*synth2i
UDSP Report: operator m_fir/s_mult_reg[9]0 is absorbed into DSP m_fir/s_mult_reg[9]0.
2default:defaulth p
x
? 
?
%s
*synth2l
XDSP Report: Generating DSP m_fir/s_mult_reg[9]0, operation Mode is: C'+A''*(B:0x10301).
2default:defaulth p
x
? 
?
%s
*synth2h
TDSP Report: register m_fir/s_data_reg[8] is absorbed into DSP m_fir/s_mult_reg[9]0.
2default:defaulth p
x
? 
n
%s
*synth2V
BDSP Report: register C is absorbed into DSP m_fir/s_mult_reg[9]0.
2default:defaulth p
x
? 
?
%s
*synth2h
TDSP Report: register m_fir/s_data_reg[9] is absorbed into DSP m_fir/s_mult_reg[9]0.
2default:defaulth p
x
? 
?
%s
*synth2i
UDSP Report: operator m_fir/s_mult_reg[9]0 is absorbed into DSP m_fir/s_mult_reg[9]0.
2default:defaulth p
x
? 
?
%s
*synth2i
UDSP Report: operator m_fir/s_mult_reg[9]0 is absorbed into DSP m_fir/s_mult_reg[9]0.
2default:defaulth p
x
? 
?
%s
*synth2h
TDSP Report: Generating DSP m_fir/s_mult_reg[8]0, operation Mode is: A''*(B:0x1a6d).
2default:defaulth p
x
? 
?
%s
*synth2h
TDSP Report: register m_fir/s_data_reg[7] is absorbed into DSP m_fir/s_mult_reg[8]0.
2default:defaulth p
x
? 
?
%s
*synth2h
TDSP Report: register m_fir/s_data_reg[8] is absorbed into DSP m_fir/s_mult_reg[8]0.
2default:defaulth p
x
? 
?
%s
*synth2i
UDSP Report: operator m_fir/s_mult_reg[8]0 is absorbed into DSP m_fir/s_mult_reg[8]0.
2default:defaulth p
x
? 
?
%s
*synth2i
UDSP Report: operator m_fir/s_mult_reg[8]0 is absorbed into DSP m_fir/s_mult_reg[8]0.
2default:defaulth p
x
? 
?
%s
*synth2h
TDSP Report: Generating DSP m_fir/s_mult_reg[7]0, operation Mode is: A''*(B:0x40b1).
2default:defaulth p
x
? 
?
%s
*synth2h
TDSP Report: register m_fir/s_data_reg[6] is absorbed into DSP m_fir/s_mult_reg[7]0.
2default:defaulth p
x
? 
?
%s
*synth2h
TDSP Report: register m_fir/s_data_reg[7] is absorbed into DSP m_fir/s_mult_reg[7]0.
2default:defaulth p
x
? 
?
%s
*synth2i
UDSP Report: operator m_fir/s_mult_reg[7]0 is absorbed into DSP m_fir/s_mult_reg[7]0.
2default:defaulth p
x
? 
?
%s
*synth2i
UDSP Report: operator m_fir/s_mult_reg[7]0 is absorbed into DSP m_fir/s_mult_reg[7]0.
2default:defaulth p
x
? 
?
%s
*synth2h
TDSP Report: Generating DSP m_fir/s_mult_reg[6]0, operation Mode is: A''*(B:0x10eb).
2default:defaulth p
x
? 
?
%s
*synth2h
TDSP Report: register m_fir/s_data_reg[5] is absorbed into DSP m_fir/s_mult_reg[6]0.
2default:defaulth p
x
? 
?
%s
*synth2h
TDSP Report: register m_fir/s_data_reg[6] is absorbed into DSP m_fir/s_mult_reg[6]0.
2default:defaulth p
x
? 
?
%s
*synth2i
UDSP Report: operator m_fir/s_mult_reg[6]0 is absorbed into DSP m_fir/s_mult_reg[6]0.
2default:defaulth p
x
? 
?
%s
*synth2i
UDSP Report: operator m_fir/s_mult_reg[6]0 is absorbed into DSP m_fir/s_mult_reg[6]0.
2default:defaulth p
x
? 
y
%s
*synth2a
MDSP Report: Generating DSP m_fir/s_add_10, operation Mode is: PCIN+A2:B2+C'.
2default:defaulth p
x
? 
{
%s
*synth2c
ODSP Report: register m_fir/s_add_0_reg[3] is absorbed into DSP m_fir/s_add_10.
2default:defaulth p
x
? 
h
%s
*synth2P
<DSP Report: register A is absorbed into DSP m_fir/s_add_10.
2default:defaulth p
x
? 
{
%s
*synth2c
ODSP Report: register m_fir/s_add_0_reg[4] is absorbed into DSP m_fir/s_add_10.
2default:defaulth p
x
? 
u
%s
*synth2]
IDSP Report: operator m_fir/s_add_10 is absorbed into DSP m_fir/s_add_10.
2default:defaulth p
x
? 
?
%s
*synth2h
TDSP Report: Generating DSP m_fir/s_mult_reg[5]0, operation Mode is: A''*(B:0x10eb).
2default:defaulth p
x
? 
?
%s
*synth2h
TDSP Report: register m_fir/s_data_reg[4] is absorbed into DSP m_fir/s_mult_reg[5]0.
2default:defaulth p
x
? 
?
%s
*synth2h
TDSP Report: register m_fir/s_data_reg[5] is absorbed into DSP m_fir/s_mult_reg[5]0.
2default:defaulth p
x
? 
?
%s
*synth2i
UDSP Report: operator m_fir/s_mult_reg[5]0 is absorbed into DSP m_fir/s_mult_reg[5]0.
2default:defaulth p
x
? 
?
%s
*synth2i
UDSP Report: operator m_fir/s_mult_reg[5]0 is absorbed into DSP m_fir/s_mult_reg[5]0.
2default:defaulth p
x
? 
?
%s
*synth2l
XDSP Report: Generating DSP m_fir/s_mult_reg[2]0, operation Mode is: C'+A''*(B:0x10301).
2default:defaulth p
x
? 
?
%s
*synth2h
TDSP Report: register m_fir/s_data_reg[1] is absorbed into DSP m_fir/s_mult_reg[2]0.
2default:defaulth p
x
? 
?
%s
*synth2h
TDSP Report: register m_fir/s_data_reg[2] is absorbed into DSP m_fir/s_mult_reg[2]0.
2default:defaulth p
x
? 
n
%s
*synth2V
BDSP Report: register C is absorbed into DSP m_fir/s_mult_reg[2]0.
2default:defaulth p
x
? 
?
%s
*synth2i
UDSP Report: operator m_fir/s_mult_reg[2]0 is absorbed into DSP m_fir/s_mult_reg[2]0.
2default:defaulth p
x
? 
?
%s
*synth2i
UDSP Report: operator m_fir/s_mult_reg[2]0 is absorbed into DSP m_fir/s_mult_reg[2]0.
2default:defaulth p
x
? 
?
%s
*synth2k
WDSP Report: Generating DSP m_fir/s_mult_reg[4]0, operation Mode is: ACIN''*(B:0x40b1).
2default:defaulth p
x
? 
?
%s
*synth2h
TDSP Report: register m_fir/s_data_reg[3] is absorbed into DSP m_fir/s_mult_reg[4]0.
2default:defaulth p
x
? 
?
%s
*synth2h
TDSP Report: register m_fir/s_data_reg[4] is absorbed into DSP m_fir/s_mult_reg[4]0.
2default:defaulth p
x
? 
?
%s
*synth2i
UDSP Report: operator m_fir/s_mult_reg[4]0 is absorbed into DSP m_fir/s_mult_reg[4]0.
2default:defaulth p
x
? 
?
%s
*synth2i
UDSP Report: operator m_fir/s_mult_reg[4]0 is absorbed into DSP m_fir/s_mult_reg[4]0.
2default:defaulth p
x
? 
?
%s
*synth2h
TDSP Report: Generating DSP m_fir/s_mult_reg[3]0, operation Mode is: A''*(B:0x1a6d).
2default:defaulth p
x
? 
?
%s
*synth2h
TDSP Report: register m_fir/s_data_reg[2] is absorbed into DSP m_fir/s_mult_reg[3]0.
2default:defaulth p
x
? 
?
%s
*synth2h
TDSP Report: register m_fir/s_data_reg[3] is absorbed into DSP m_fir/s_mult_reg[3]0.
2default:defaulth p
x
? 
?
%s
*synth2i
UDSP Report: operator m_fir/s_mult_reg[3]0 is absorbed into DSP m_fir/s_mult_reg[3]0.
2default:defaulth p
x
? 
?
%s
*synth2i
UDSP Report: operator m_fir/s_mult_reg[3]0 is absorbed into DSP m_fir/s_mult_reg[3]0.
2default:defaulth p
x
? 
?
%s
*synth2i
UDSP Report: Generating DSP m_fir/s_mult_reg[2]0, operation Mode is: A''*(B:0x10301).
2default:defaulth p
x
? 
?
%s
*synth2h
TDSP Report: register m_fir/s_data_reg[1] is absorbed into DSP m_fir/s_mult_reg[2]0.
2default:defaulth p
x
? 
?
%s
*synth2h
TDSP Report: register m_fir/s_data_reg[2] is absorbed into DSP m_fir/s_mult_reg[2]0.
2default:defaulth p
x
? 
?
%s
*synth2i
UDSP Report: operator m_fir/s_mult_reg[2]0 is absorbed into DSP m_fir/s_mult_reg[2]0.
2default:defaulth p
x
? 

%s
*synth2g
SDSP Report: Generating DSP m_fir/s_add_1_reg, operation Mode is: (PCIN+A2:B2+C')'.
2default:defaulth p
x
? 
~
%s
*synth2f
RDSP Report: register m_fir/s_add_0_reg[1] is absorbed into DSP m_fir/s_add_1_reg.
2default:defaulth p
x
? 
k
%s
*synth2S
?DSP Report: register A is absorbed into DSP m_fir/s_add_1_reg.
2default:defaulth p
x
? 
~
%s
*synth2f
RDSP Report: register m_fir/s_add_0_reg[2] is absorbed into DSP m_fir/s_add_1_reg.
2default:defaulth p
x
? 
{
%s
*synth2c
ODSP Report: register m_fir/s_add_1_reg is absorbed into DSP m_fir/s_add_1_reg.
2default:defaulth p
x
? 
x
%s
*synth2`
LDSP Report: operator m_fir/s_add_10 is absorbed into DSP m_fir/s_add_1_reg.
2default:defaulth p
x
? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2/
\m_fir/m_axis_tdata_reg[0] 2default:defaultZ8-3333h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:09 ; elapsed = 00:00:10 . Memory (MB): peak = 788.414 ; gain = 495.102
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
?+---------------+-----------------------+--------+--------+--------+--------+--------+------+------+------+------+-------+------+------+
2default:defaulth px? 
?
%s*synth2?
?|Module Name    | DSP Mapping           | A Size | B Size | C Size | D Size | P Size | AREG | BREG | CREG | DREG | ADREG | MREG | PREG | 
2default:defaulth px? 
?
%s*synth2?
?+---------------+-----------------------+--------+--------+--------+--------+--------+------+------+------+------+-------+------+------+
2default:defaulth px? 
?
%s*synth2?
?|top_vhdl       | A''*(B:0x19d26)       | 24     | 18     | -      | -      | 42     | 2    | 0    | -    | -    | -     | 0    | 0    | 
2default:defaulth px? 
?
%s*synth2?
?|top_vhdl       | C'+A''*(B:0x19d26)    | 24     | 18     | 23     | -      | 42     | 2    | 0    | 1    | -    | -     | 0    | 0    | 
2default:defaulth px? 
?
%s*synth2?
?|top_vhdl       | (C'+(A2*(B:0x7b1))')' | 24     | 12     | 43     | -      | 46     | 1    | 0    | 1    | -    | -     | 1    | 1    | 
2default:defaulth px? 
?
%s*synth2?
?|top_vhdl       | A''*(B:0x10301)       | 24     | 18     | -      | -      | 42     | 2    | 0    | -    | -    | -     | 0    | 0    | 
2default:defaulth px? 
?
%s*synth2?
?|top_vhdl       | C'+A''*(B:0x10301)    | 24     | 18     | 23     | -      | 42     | 2    | 0    | 1    | -    | -     | 0    | 0    | 
2default:defaulth px? 
?
%s*synth2?
?|top_vhdl       | A''*(B:0x1a6d)        | 24     | 14     | -      | -      | 48     | 2    | 0    | -    | -    | -     | 0    | 0    | 
2default:defaulth px? 
?
%s*synth2?
?|fir_controller | A''*(B:0x40b1)        | 24     | 16     | -      | -      | 48     | 2    | 0    | -    | -    | -     | 0    | 0    | 
2default:defaulth px? 
?
%s*synth2?
?|top_vhdl       | A''*(B:0x10eb)        | 24     | 14     | -      | -      | 48     | 2    | 0    | -    | -    | -     | 0    | 0    | 
2default:defaulth px? 
?
%s*synth2?
?|top_vhdl       | PCIN+A2:B2+C'         | 28     | 18     | 46     | -      | -1     | 1    | 1    | 1    | -    | -     | 0    | 0    | 
2default:defaulth px? 
?
%s*synth2?
?|fir_controller | A''*(B:0x10eb)        | 24     | 14     | -      | -      | 48     | 2    | 0    | -    | -    | -     | 0    | 0    | 
2default:defaulth px? 
?
%s*synth2?
?|top_vhdl       | C'+A''*(B:0x10301)    | 24     | 18     | 23     | -      | 42     | 2    | 0    | 1    | -    | -     | 0    | 0    | 
2default:defaulth px? 
?
%s*synth2?
?|top_vhdl       | ACIN''*(B:0x40b1)     | 24     | 16     | -      | -      | 48     | 2    | 0    | -    | -    | -     | 0    | 0    | 
2default:defaulth px? 
?
%s*synth2?
?|top_vhdl       | A''*(B:0x1a6d)        | 24     | 14     | -      | -      | 48     | 2    | 0    | -    | -    | -     | 0    | 0    | 
2default:defaulth px? 
?
%s*synth2?
?|top_vhdl       | A''*(B:0x10301)       | 24     | 18     | -      | -      | 42     | 2    | 0    | -    | -    | -     | 0    | 0    | 
2default:defaulth px? 
?
%s*synth2?
?|top_vhdl       | (PCIN+A2:B2+C')'      | 28     | 18     | 46     | -      | -1     | 1    | 1    | 1    | -    | -     | 0    | 1    | 
2default:defaulth px? 
?
%s*synth2?
?+---------------+-----------------------+--------+--------+--------+--------+--------+------+------+------+------+-------+------+------+

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
?Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:18 ; elapsed = 00:00:20 . Memory (MB): peak = 840.727 ; gain = 547.414
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
|Finished Timing Optimization : Time (s): cpu = 00:00:18 ; elapsed = 00:00:20 . Memory (MB): peak = 845.438 ; gain = 552.125
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
{Finished Technology Mapping : Time (s): cpu = 00:00:19 ; elapsed = 00:00:20 . Memory (MB): peak = 868.000 ; gain = 574.688
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
uFinished IO Insertion : Time (s): cpu = 00:00:20 ; elapsed = 00:00:21 . Memory (MB): peak = 868.000 ; gain = 574.688
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
?Finished Renaming Generated Instances : Time (s): cpu = 00:00:20 ; elapsed = 00:00:21 . Memory (MB): peak = 868.000 ; gain = 574.688
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
?Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:20 ; elapsed = 00:00:21 . Memory (MB): peak = 868.000 ; gain = 574.688
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
?Finished Renaming Generated Ports : Time (s): cpu = 00:00:20 ; elapsed = 00:00:21 . Memory (MB): peak = 868.000 ; gain = 574.688
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
?Finished Handling Custom Attributes : Time (s): cpu = 00:00:20 ; elapsed = 00:00:21 . Memory (MB): peak = 868.000 ; gain = 574.688
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
?Finished Renaming Generated Nets : Time (s): cpu = 00:00:20 ; elapsed = 00:00:21 . Memory (MB): peak = 868.000 ; gain = 574.688
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
"|2     |CARRY4           |   134|
2default:defaulth px? 
N
%s*synth26
"|3     |DSP48E1          |     6|
2default:defaulth px? 
N
%s*synth26
"|4     |DSP48E1_1        |     1|
2default:defaulth px? 
N
%s*synth26
"|5     |DSP48E1_2        |     2|
2default:defaulth px? 
N
%s*synth26
"|6     |DSP48E1_3        |     1|
2default:defaulth px? 
N
%s*synth26
"|7     |DSP48E1_4        |     1|
2default:defaulth px? 
N
%s*synth26
"|8     |DSP48E1_5        |     1|
2default:defaulth px? 
N
%s*synth26
"|9     |LUT1             |    17|
2default:defaulth px? 
N
%s*synth26
"|10    |LUT2             |   491|
2default:defaulth px? 
N
%s*synth26
"|11    |LUT3             |    32|
2default:defaulth px? 
N
%s*synth26
"|12    |LUT4             |    95|
2default:defaulth px? 
N
%s*synth26
"|13    |LUT5             |     8|
2default:defaulth px? 
N
%s*synth26
"|14    |LUT6             |    54|
2default:defaulth px? 
N
%s*synth26
"|15    |FDRE             |   742|
2default:defaulth px? 
N
%s*synth26
"|16    |IBUF             |     2|
2default:defaulth px? 
N
%s*synth26
"|17    |OBUF             |     7|
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
V
%s
*synth2>
*+------+---------+---------------+------+
2default:defaulth p
x
? 
V
%s
*synth2>
*|      |Instance |Module         |Cells |
2default:defaulth p
x
? 
V
%s
*synth2>
*+------+---------+---------------+------+
2default:defaulth p
x
? 
V
%s
*synth2>
*|1     |top      |               |  1595|
2default:defaulth p
x
? 
V
%s
*synth2>
*|2     |  m_fir  |fir_controller |  1284|
2default:defaulth p
x
? 
V
%s
*synth2>
*|3     |  m_i2s2 |axis_i2s2      |   301|
2default:defaulth p
x
? 
V
%s
*synth2>
*+------+---------+---------------+------+
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
?Finished Writing Synthesis Report : Time (s): cpu = 00:00:20 ; elapsed = 00:00:21 . Memory (MB): peak = 868.000 ; gain = 574.688
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
s
%s
*synth2[
GSynthesis finished with 0 errors, 0 critical warnings and 20 warnings.
2default:defaulth p
x
? 
?
%s
*synth2?
~Synthesis Optimization Runtime : Time (s): cpu = 00:00:14 ; elapsed = 00:00:17 . Memory (MB): peak = 868.000 ; gain = 235.875
2default:defaulth p
x
? 
?
%s
*synth2?
Synthesis Optimization Complete : Time (s): cpu = 00:00:20 ; elapsed = 00:00:21 . Memory (MB): peak = 868.000 ; gain = 574.688
2default:defaulth p
x
? 
B
 Translating synthesized netlist
350*projectZ1-571h px? 
g
-Analyzing %s Unisim elements for replacement
17*netlist2
1462default:defaultZ29-17h px? 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px? 
?
?Netlist '%s' is not ideal for floorplanning, since the cellview '%s' contains a large number of primitives.  Please consider enabling hierarchy in synthesis if you want to do floorplanning.
310*netlist2
top_vhdl2default:default2"
fir_controller2default:defaultZ29-101h px? 
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
868.0002default:default2
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
592default:default2
352default:default2
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
00:00:222default:default2
00:00:242default:default2
868.0002default:default2
586.1682default:defaultZ17-268h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
868.0002default:default2
0.0002default:defaultZ17-268h px? 
K
"No constraints selected for write.1103*constraintsZ18-5210h px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2q
]C:/Users/giaco/Documents/Uni/PoD/MaPD/MAPD_modA/audio_fir/audio_fir.runs/synth_2/top_vhdl.dcp2default:defaultZ17-1381h px? 
?
%s4*runtcl2z
fExecuting : report_utilization -file top_vhdl_utilization_synth.rpt -pb top_vhdl_utilization_synth.pb
2default:defaulth px? 
?
Exiting %s at %s...
206*common2
Vivado2default:default2,
Sun Feb 13 16:05:57 20222default:defaultZ17-206h px? 


End Record