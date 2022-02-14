-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Mon Feb 14 11:37:24 2022
-- Host        : DESKTOP-A6N5RC6 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               C:/Users/giaco/Documents/Uni/PoD/MaPD/MAPD_modA/mute/mute.sim/sim_1/synth/func/xsim/mute_tb_func_synth.vhd
-- Design      : top_vhdl
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axis_i2s2 is
  port (
    axis_tx_ready : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    tx_axis_s_ready_reg_0 : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    tx_data_OBUF : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 23 downto 0 );
    rx_axis_m_last_reg_0 : out STD_LOGIC;
    axis_clk : in STD_LOGIC;
    axis_tx_valid : in STD_LOGIC;
    enable_mute_IBUF : in STD_LOGIC;
    reset_IBUF : in STD_LOGIC;
    axis_tx_last : in STD_LOGIC;
    \din_sync_shift_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \tx_data_l_reg[23]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \tx_data_l_reg[23]_1\ : in STD_LOGIC_VECTOR ( 23 downto 0 );
    \tx_data_r_reg[23]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end axis_i2s2;

architecture STRUCTURE of axis_i2s2 is
  signal \^q\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axis_rx_last : STD_LOGIC;
  signal axis_rx_valid : STD_LOGIC;
  signal \^axis_tx_ready\ : STD_LOGIC;
  signal \count[7]_i_2_n_0\ : STD_LOGIC;
  signal \count[8]_i_2_n_0\ : STD_LOGIC;
  signal \count_reg__0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \din_sync_shift_reg_n_0_[0]\ : STD_LOGIC;
  signal \din_sync_shift_reg_n_0_[1]\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal p_0_in0 : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 23 downto 1 );
  signal p_1_in_0 : STD_LOGIC;
  signal rx_axis_m_last_i_1_n_0 : STD_LOGIC;
  signal rx_axis_m_valid_i_1_n_0 : STD_LOGIC;
  signal rx_data_l0 : STD_LOGIC;
  signal \rx_data_l[23]_i_1_n_0\ : STD_LOGIC;
  signal \rx_data_l[23]_i_3_n_0\ : STD_LOGIC;
  signal \rx_data_l_reg_n_0_[0]\ : STD_LOGIC;
  signal \rx_data_l_reg_n_0_[10]\ : STD_LOGIC;
  signal \rx_data_l_reg_n_0_[11]\ : STD_LOGIC;
  signal \rx_data_l_reg_n_0_[12]\ : STD_LOGIC;
  signal \rx_data_l_reg_n_0_[13]\ : STD_LOGIC;
  signal \rx_data_l_reg_n_0_[14]\ : STD_LOGIC;
  signal \rx_data_l_reg_n_0_[15]\ : STD_LOGIC;
  signal \rx_data_l_reg_n_0_[16]\ : STD_LOGIC;
  signal \rx_data_l_reg_n_0_[17]\ : STD_LOGIC;
  signal \rx_data_l_reg_n_0_[18]\ : STD_LOGIC;
  signal \rx_data_l_reg_n_0_[19]\ : STD_LOGIC;
  signal \rx_data_l_reg_n_0_[1]\ : STD_LOGIC;
  signal \rx_data_l_reg_n_0_[20]\ : STD_LOGIC;
  signal \rx_data_l_reg_n_0_[21]\ : STD_LOGIC;
  signal \rx_data_l_reg_n_0_[22]\ : STD_LOGIC;
  signal \rx_data_l_reg_n_0_[23]\ : STD_LOGIC;
  signal \rx_data_l_reg_n_0_[2]\ : STD_LOGIC;
  signal \rx_data_l_reg_n_0_[3]\ : STD_LOGIC;
  signal \rx_data_l_reg_n_0_[4]\ : STD_LOGIC;
  signal \rx_data_l_reg_n_0_[5]\ : STD_LOGIC;
  signal \rx_data_l_reg_n_0_[6]\ : STD_LOGIC;
  signal \rx_data_l_reg_n_0_[7]\ : STD_LOGIC;
  signal \rx_data_l_reg_n_0_[8]\ : STD_LOGIC;
  signal \rx_data_l_reg_n_0_[9]\ : STD_LOGIC;
  signal rx_data_l_shift : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal rx_data_l_shift_2 : STD_LOGIC;
  signal rx_data_r : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal rx_data_r_shift : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal rx_data_r_shift_1 : STD_LOGIC;
  signal tx_axis_s_ready_i_1_n_0 : STD_LOGIC;
  signal tx_axis_s_ready_i_2_n_0 : STD_LOGIC;
  signal tx_axis_s_ready_i_3_n_0 : STD_LOGIC;
  signal tx_data_OBUF_inst_i_2_n_0 : STD_LOGIC;
  signal \tx_data_l_reg_n_0_[0]\ : STD_LOGIC;
  signal \tx_data_l_reg_n_0_[10]\ : STD_LOGIC;
  signal \tx_data_l_reg_n_0_[11]\ : STD_LOGIC;
  signal \tx_data_l_reg_n_0_[12]\ : STD_LOGIC;
  signal \tx_data_l_reg_n_0_[13]\ : STD_LOGIC;
  signal \tx_data_l_reg_n_0_[14]\ : STD_LOGIC;
  signal \tx_data_l_reg_n_0_[15]\ : STD_LOGIC;
  signal \tx_data_l_reg_n_0_[16]\ : STD_LOGIC;
  signal \tx_data_l_reg_n_0_[17]\ : STD_LOGIC;
  signal \tx_data_l_reg_n_0_[18]\ : STD_LOGIC;
  signal \tx_data_l_reg_n_0_[19]\ : STD_LOGIC;
  signal \tx_data_l_reg_n_0_[1]\ : STD_LOGIC;
  signal \tx_data_l_reg_n_0_[20]\ : STD_LOGIC;
  signal \tx_data_l_reg_n_0_[21]\ : STD_LOGIC;
  signal \tx_data_l_reg_n_0_[22]\ : STD_LOGIC;
  signal \tx_data_l_reg_n_0_[23]\ : STD_LOGIC;
  signal \tx_data_l_reg_n_0_[2]\ : STD_LOGIC;
  signal \tx_data_l_reg_n_0_[3]\ : STD_LOGIC;
  signal \tx_data_l_reg_n_0_[4]\ : STD_LOGIC;
  signal \tx_data_l_reg_n_0_[5]\ : STD_LOGIC;
  signal \tx_data_l_reg_n_0_[6]\ : STD_LOGIC;
  signal \tx_data_l_reg_n_0_[7]\ : STD_LOGIC;
  signal \tx_data_l_reg_n_0_[8]\ : STD_LOGIC;
  signal \tx_data_l_reg_n_0_[9]\ : STD_LOGIC;
  signal tx_data_l_shift : STD_LOGIC_VECTOR ( 22 downto 0 );
  signal tx_data_l_shift0_in : STD_LOGIC_VECTOR ( 23 to 23 );
  signal \tx_data_l_shift1__2\ : STD_LOGIC;
  signal \tx_data_l_shift[0]_i_1_n_0\ : STD_LOGIC;
  signal \tx_data_l_shift[23]_i_4_n_0\ : STD_LOGIC;
  signal \tx_data_l_shift_reg_n_0_[23]\ : STD_LOGIC;
  signal \tx_data_r_reg_n_0_[0]\ : STD_LOGIC;
  signal \tx_data_r_reg_n_0_[10]\ : STD_LOGIC;
  signal \tx_data_r_reg_n_0_[11]\ : STD_LOGIC;
  signal \tx_data_r_reg_n_0_[12]\ : STD_LOGIC;
  signal \tx_data_r_reg_n_0_[13]\ : STD_LOGIC;
  signal \tx_data_r_reg_n_0_[14]\ : STD_LOGIC;
  signal \tx_data_r_reg_n_0_[15]\ : STD_LOGIC;
  signal \tx_data_r_reg_n_0_[16]\ : STD_LOGIC;
  signal \tx_data_r_reg_n_0_[17]\ : STD_LOGIC;
  signal \tx_data_r_reg_n_0_[18]\ : STD_LOGIC;
  signal \tx_data_r_reg_n_0_[19]\ : STD_LOGIC;
  signal \tx_data_r_reg_n_0_[1]\ : STD_LOGIC;
  signal \tx_data_r_reg_n_0_[20]\ : STD_LOGIC;
  signal \tx_data_r_reg_n_0_[21]\ : STD_LOGIC;
  signal \tx_data_r_reg_n_0_[22]\ : STD_LOGIC;
  signal \tx_data_r_reg_n_0_[23]\ : STD_LOGIC;
  signal \tx_data_r_reg_n_0_[2]\ : STD_LOGIC;
  signal \tx_data_r_reg_n_0_[3]\ : STD_LOGIC;
  signal \tx_data_r_reg_n_0_[4]\ : STD_LOGIC;
  signal \tx_data_r_reg_n_0_[5]\ : STD_LOGIC;
  signal \tx_data_r_reg_n_0_[6]\ : STD_LOGIC;
  signal \tx_data_r_reg_n_0_[7]\ : STD_LOGIC;
  signal \tx_data_r_reg_n_0_[8]\ : STD_LOGIC;
  signal \tx_data_r_reg_n_0_[9]\ : STD_LOGIC;
  signal tx_data_r_shift : STD_LOGIC_VECTOR ( 23 to 23 );
  signal \tx_data_r_shift[0]_i_1_n_0\ : STD_LOGIC;
  signal \tx_data_r_shift[10]_i_1_n_0\ : STD_LOGIC;
  signal \tx_data_r_shift[11]_i_1_n_0\ : STD_LOGIC;
  signal \tx_data_r_shift[12]_i_1_n_0\ : STD_LOGIC;
  signal \tx_data_r_shift[13]_i_1_n_0\ : STD_LOGIC;
  signal \tx_data_r_shift[14]_i_1_n_0\ : STD_LOGIC;
  signal \tx_data_r_shift[15]_i_1_n_0\ : STD_LOGIC;
  signal \tx_data_r_shift[16]_i_1_n_0\ : STD_LOGIC;
  signal \tx_data_r_shift[17]_i_1_n_0\ : STD_LOGIC;
  signal \tx_data_r_shift[18]_i_1_n_0\ : STD_LOGIC;
  signal \tx_data_r_shift[19]_i_1_n_0\ : STD_LOGIC;
  signal \tx_data_r_shift[1]_i_1_n_0\ : STD_LOGIC;
  signal \tx_data_r_shift[20]_i_1_n_0\ : STD_LOGIC;
  signal \tx_data_r_shift[21]_i_1_n_0\ : STD_LOGIC;
  signal \tx_data_r_shift[22]_i_1_n_0\ : STD_LOGIC;
  signal \tx_data_r_shift[23]_i_2_n_0\ : STD_LOGIC;
  signal \tx_data_r_shift[2]_i_1_n_0\ : STD_LOGIC;
  signal \tx_data_r_shift[3]_i_1_n_0\ : STD_LOGIC;
  signal \tx_data_r_shift[4]_i_1_n_0\ : STD_LOGIC;
  signal \tx_data_r_shift[5]_i_1_n_0\ : STD_LOGIC;
  signal \tx_data_r_shift[6]_i_1_n_0\ : STD_LOGIC;
  signal \tx_data_r_shift[7]_i_1_n_0\ : STD_LOGIC;
  signal \tx_data_r_shift[8]_i_1_n_0\ : STD_LOGIC;
  signal \tx_data_r_shift[9]_i_1_n_0\ : STD_LOGIC;
  signal \tx_data_r_shift_reg_n_0_[0]\ : STD_LOGIC;
  signal \tx_data_r_shift_reg_n_0_[10]\ : STD_LOGIC;
  signal \tx_data_r_shift_reg_n_0_[11]\ : STD_LOGIC;
  signal \tx_data_r_shift_reg_n_0_[12]\ : STD_LOGIC;
  signal \tx_data_r_shift_reg_n_0_[13]\ : STD_LOGIC;
  signal \tx_data_r_shift_reg_n_0_[14]\ : STD_LOGIC;
  signal \tx_data_r_shift_reg_n_0_[15]\ : STD_LOGIC;
  signal \tx_data_r_shift_reg_n_0_[16]\ : STD_LOGIC;
  signal \tx_data_r_shift_reg_n_0_[17]\ : STD_LOGIC;
  signal \tx_data_r_shift_reg_n_0_[18]\ : STD_LOGIC;
  signal \tx_data_r_shift_reg_n_0_[19]\ : STD_LOGIC;
  signal \tx_data_r_shift_reg_n_0_[1]\ : STD_LOGIC;
  signal \tx_data_r_shift_reg_n_0_[20]\ : STD_LOGIC;
  signal \tx_data_r_shift_reg_n_0_[21]\ : STD_LOGIC;
  signal \tx_data_r_shift_reg_n_0_[22]\ : STD_LOGIC;
  signal \tx_data_r_shift_reg_n_0_[23]\ : STD_LOGIC;
  signal \tx_data_r_shift_reg_n_0_[2]\ : STD_LOGIC;
  signal \tx_data_r_shift_reg_n_0_[3]\ : STD_LOGIC;
  signal \tx_data_r_shift_reg_n_0_[4]\ : STD_LOGIC;
  signal \tx_data_r_shift_reg_n_0_[5]\ : STD_LOGIC;
  signal \tx_data_r_shift_reg_n_0_[6]\ : STD_LOGIC;
  signal \tx_data_r_shift_reg_n_0_[7]\ : STD_LOGIC;
  signal \tx_data_r_shift_reg_n_0_[8]\ : STD_LOGIC;
  signal \tx_data_r_shift_reg_n_0_[9]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count[0]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \count[1]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \count[2]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \count[3]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \count[4]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \count[7]_i_2\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \m_axis_tdata[0]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \m_axis_tdata[10]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \m_axis_tdata[11]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \m_axis_tdata[12]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \m_axis_tdata[13]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \m_axis_tdata[14]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \m_axis_tdata[15]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \m_axis_tdata[16]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \m_axis_tdata[17]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \m_axis_tdata[18]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \m_axis_tdata[19]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \m_axis_tdata[1]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \m_axis_tdata[20]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \m_axis_tdata[21]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \m_axis_tdata[22]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \m_axis_tdata[23]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \m_axis_tdata[23]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \m_axis_tdata[23]_i_3\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \m_axis_tdata[2]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \m_axis_tdata[3]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \m_axis_tdata[4]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \m_axis_tdata[5]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \m_axis_tdata[6]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \m_axis_tdata[7]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \m_axis_tdata[8]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \m_axis_tdata[9]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of m_axis_tlast_i_1 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of m_axis_tvalid_int_i_1 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of tx_axis_s_ready_i_3 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \tx_data_l_shift[0]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \tx_data_l_shift[10]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \tx_data_l_shift[12]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \tx_data_l_shift[13]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \tx_data_l_shift[14]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \tx_data_l_shift[15]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \tx_data_l_shift[16]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \tx_data_l_shift[17]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \tx_data_l_shift[18]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \tx_data_l_shift[19]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \tx_data_l_shift[1]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \tx_data_l_shift[20]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \tx_data_l_shift[21]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \tx_data_l_shift[22]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \tx_data_l_shift[23]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \tx_data_l_shift[2]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \tx_data_l_shift[3]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \tx_data_l_shift[4]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \tx_data_l_shift[5]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \tx_data_l_shift[6]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \tx_data_l_shift[7]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \tx_data_l_shift[8]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \tx_data_l_shift[9]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \tx_data_r_shift[10]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \tx_data_r_shift[11]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \tx_data_r_shift[12]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \tx_data_r_shift[13]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \tx_data_r_shift[14]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \tx_data_r_shift[15]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \tx_data_r_shift[16]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \tx_data_r_shift[17]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \tx_data_r_shift[18]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \tx_data_r_shift[19]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \tx_data_r_shift[20]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \tx_data_r_shift[21]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \tx_data_r_shift[22]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \tx_data_r_shift[23]_i_2\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \tx_data_r_shift[2]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \tx_data_r_shift[3]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \tx_data_r_shift[4]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \tx_data_r_shift[5]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \tx_data_r_shift[6]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \tx_data_r_shift[7]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \tx_data_r_shift[8]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \tx_data_r_shift[9]_i_1\ : label is "soft_lutpair21";
begin
  Q(1 downto 0) <= \^q\(1 downto 0);
  axis_tx_ready <= \^axis_tx_ready\;
\count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \count_reg__0\(0),
      O => p_0_in(0)
    );
\count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \count_reg__0\(0),
      I1 => \count_reg__0\(1),
      O => p_0_in(1)
    );
\count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \count_reg__0\(0),
      I1 => \count_reg__0\(1),
      I2 => \^q\(0),
      O => p_0_in(2)
    );
\count[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \count_reg__0\(1),
      I1 => \count_reg__0\(0),
      I2 => \^q\(0),
      I3 => \count_reg__0\(3),
      O => p_0_in(3)
    );
\count[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(0),
      I1 => \count_reg__0\(0),
      I2 => \count_reg__0\(1),
      I3 => \count_reg__0\(3),
      I4 => \count_reg__0\(4),
      O => p_0_in(4)
    );
\count[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \count_reg__0\(3),
      I1 => \count_reg__0\(1),
      I2 => \count_reg__0\(0),
      I3 => \^q\(0),
      I4 => \count_reg__0\(4),
      I5 => \count_reg__0\(5),
      O => p_0_in(5)
    );
\count[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \count_reg__0\(4),
      I1 => \count[7]_i_2_n_0\,
      I2 => \count_reg__0\(3),
      I3 => \count_reg__0\(5),
      I4 => \count_reg__0\(6),
      O => p_0_in(6)
    );
\count[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \count_reg__0\(5),
      I1 => \count_reg__0\(3),
      I2 => \count[7]_i_2_n_0\,
      I3 => \count_reg__0\(4),
      I4 => \count_reg__0\(6),
      I5 => \count_reg__0\(7),
      O => p_0_in(7)
    );
\count[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^q\(0),
      I1 => \count_reg__0\(0),
      I2 => \count_reg__0\(1),
      O => \count[7]_i_2_n_0\
    );
\count[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \count_reg__0\(6),
      I1 => \count[8]_i_2_n_0\,
      I2 => \count_reg__0\(7),
      I3 => \^q\(1),
      O => p_0_in(8)
    );
\count[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \count_reg__0\(5),
      I1 => \count_reg__0\(3),
      I2 => \count_reg__0\(1),
      I3 => \count_reg__0\(0),
      I4 => \^q\(0),
      I5 => \count_reg__0\(4),
      O => \count[8]_i_2_n_0\
    );
\count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => '1',
      D => p_0_in(0),
      Q => \count_reg__0\(0),
      R => '0'
    );
\count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => '1',
      D => p_0_in(1),
      Q => \count_reg__0\(1),
      R => '0'
    );
\count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => '1',
      D => p_0_in(2),
      Q => \^q\(0),
      R => '0'
    );
\count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => '1',
      D => p_0_in(3),
      Q => \count_reg__0\(3),
      R => '0'
    );
\count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => '1',
      D => p_0_in(4),
      Q => \count_reg__0\(4),
      R => '0'
    );
\count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => '1',
      D => p_0_in(5),
      Q => \count_reg__0\(5),
      R => '0'
    );
\count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => '1',
      D => p_0_in(6),
      Q => \count_reg__0\(6),
      R => '0'
    );
\count_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => '1',
      D => p_0_in(7),
      Q => \count_reg__0\(7),
      R => '0'
    );
\count_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => '1',
      D => p_0_in(8),
      Q => \^q\(1),
      R => '0'
    );
\din_sync_shift_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => '1',
      D => \din_sync_shift_reg[0]_0\(0),
      Q => \din_sync_shift_reg_n_0_[0]\,
      R => '0'
    );
\din_sync_shift_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => '1',
      D => \din_sync_shift_reg_n_0_[0]\,
      Q => \din_sync_shift_reg_n_0_[1]\,
      R => '0'
    );
\din_sync_shift_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => '1',
      D => \din_sync_shift_reg_n_0_[1]\,
      Q => p_0_in0,
      R => '0'
    );
\m_axis_tdata[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rx_data_r(0),
      I1 => axis_rx_last,
      I2 => \rx_data_l_reg_n_0_[0]\,
      O => D(0)
    );
\m_axis_tdata[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rx_data_r(10),
      I1 => axis_rx_last,
      I2 => \rx_data_l_reg_n_0_[10]\,
      O => D(10)
    );
\m_axis_tdata[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rx_data_r(11),
      I1 => axis_rx_last,
      I2 => \rx_data_l_reg_n_0_[11]\,
      O => D(11)
    );
\m_axis_tdata[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rx_data_r(12),
      I1 => axis_rx_last,
      I2 => \rx_data_l_reg_n_0_[12]\,
      O => D(12)
    );
\m_axis_tdata[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rx_data_r(13),
      I1 => axis_rx_last,
      I2 => \rx_data_l_reg_n_0_[13]\,
      O => D(13)
    );
\m_axis_tdata[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rx_data_r(14),
      I1 => axis_rx_last,
      I2 => \rx_data_l_reg_n_0_[14]\,
      O => D(14)
    );
\m_axis_tdata[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rx_data_r(15),
      I1 => axis_rx_last,
      I2 => \rx_data_l_reg_n_0_[15]\,
      O => D(15)
    );
\m_axis_tdata[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rx_data_r(16),
      I1 => axis_rx_last,
      I2 => \rx_data_l_reg_n_0_[16]\,
      O => D(16)
    );
\m_axis_tdata[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rx_data_r(17),
      I1 => axis_rx_last,
      I2 => \rx_data_l_reg_n_0_[17]\,
      O => D(17)
    );
\m_axis_tdata[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rx_data_r(18),
      I1 => axis_rx_last,
      I2 => \rx_data_l_reg_n_0_[18]\,
      O => D(18)
    );
\m_axis_tdata[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rx_data_r(19),
      I1 => axis_rx_last,
      I2 => \rx_data_l_reg_n_0_[19]\,
      O => D(19)
    );
\m_axis_tdata[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rx_data_r(1),
      I1 => axis_rx_last,
      I2 => \rx_data_l_reg_n_0_[1]\,
      O => D(1)
    );
\m_axis_tdata[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rx_data_r(20),
      I1 => axis_rx_last,
      I2 => \rx_data_l_reg_n_0_[20]\,
      O => D(20)
    );
\m_axis_tdata[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rx_data_r(21),
      I1 => axis_rx_last,
      I2 => \rx_data_l_reg_n_0_[21]\,
      O => D(21)
    );
\m_axis_tdata[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rx_data_r(22),
      I1 => axis_rx_last,
      I2 => \rx_data_l_reg_n_0_[22]\,
      O => D(22)
    );
\m_axis_tdata[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8A00"
    )
        port map (
      I0 => axis_rx_valid,
      I1 => \^axis_tx_ready\,
      I2 => axis_tx_valid,
      I3 => enable_mute_IBUF,
      O => SR(0)
    );
\m_axis_tdata[23]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D0"
    )
        port map (
      I0 => axis_tx_valid,
      I1 => \^axis_tx_ready\,
      I2 => axis_rx_valid,
      O => E(0)
    );
\m_axis_tdata[23]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rx_data_r(23),
      I1 => axis_rx_last,
      I2 => \rx_data_l_reg_n_0_[23]\,
      O => D(23)
    );
\m_axis_tdata[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rx_data_r(2),
      I1 => axis_rx_last,
      I2 => \rx_data_l_reg_n_0_[2]\,
      O => D(2)
    );
\m_axis_tdata[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rx_data_r(3),
      I1 => axis_rx_last,
      I2 => \rx_data_l_reg_n_0_[3]\,
      O => D(3)
    );
\m_axis_tdata[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rx_data_r(4),
      I1 => axis_rx_last,
      I2 => \rx_data_l_reg_n_0_[4]\,
      O => D(4)
    );
\m_axis_tdata[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rx_data_r(5),
      I1 => axis_rx_last,
      I2 => \rx_data_l_reg_n_0_[5]\,
      O => D(5)
    );
\m_axis_tdata[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rx_data_r(6),
      I1 => axis_rx_last,
      I2 => \rx_data_l_reg_n_0_[6]\,
      O => D(6)
    );
\m_axis_tdata[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rx_data_r(7),
      I1 => axis_rx_last,
      I2 => \rx_data_l_reg_n_0_[7]\,
      O => D(7)
    );
\m_axis_tdata[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rx_data_r(8),
      I1 => axis_rx_last,
      I2 => \rx_data_l_reg_n_0_[8]\,
      O => D(8)
    );
\m_axis_tdata[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rx_data_r(9),
      I1 => axis_rx_last,
      I2 => \rx_data_l_reg_n_0_[9]\,
      O => D(9)
    );
m_axis_tlast_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AEFFA200"
    )
        port map (
      I0 => axis_rx_last,
      I1 => axis_tx_valid,
      I2 => \^axis_tx_ready\,
      I3 => axis_rx_valid,
      I4 => axis_tx_last,
      O => rx_axis_m_last_reg_0
    );
m_axis_tvalid_int_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => \^axis_tx_ready\,
      I1 => axis_tx_valid,
      I2 => axis_rx_valid,
      O => tx_axis_s_ready_reg_0
    );
rx_axis_m_last_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000002A228088"
    )
        port map (
      I0 => reset_IBUF,
      I1 => axis_rx_valid,
      I2 => \^axis_tx_ready\,
      I3 => axis_tx_valid,
      I4 => axis_rx_last,
      I5 => rx_data_l0,
      O => rx_axis_m_last_i_1_n_0
    );
rx_axis_m_last_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => '1',
      D => rx_axis_m_last_i_1_n_0,
      Q => axis_rx_last,
      R => '0'
    );
rx_axis_m_valid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AEAAEEEE00000000"
    )
        port map (
      I0 => rx_data_l0,
      I1 => axis_rx_valid,
      I2 => \^axis_tx_ready\,
      I3 => axis_tx_valid,
      I4 => axis_rx_last,
      I5 => reset_IBUF,
      O => rx_axis_m_valid_i_1_n_0
    );
rx_axis_m_valid_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => '1',
      D => rx_axis_m_valid_i_1_n_0,
      Q => axis_rx_valid,
      R => '0'
    );
\rx_data_l[23]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => reset_IBUF,
      O => \rx_data_l[23]_i_1_n_0\
    );
\rx_data_l[23]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000100"
    )
        port map (
      I0 => \count_reg__0\(3),
      I1 => \count_reg__0\(5),
      I2 => \count_reg__0\(4),
      I3 => \rx_data_l[23]_i_3_n_0\,
      I4 => axis_rx_valid,
      O => rx_data_l0
    );
\rx_data_l[23]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \^q\(0),
      I1 => \count_reg__0\(6),
      I2 => \count_reg__0\(0),
      I3 => \count_reg__0\(1),
      I4 => \^q\(1),
      I5 => \count_reg__0\(7),
      O => \rx_data_l[23]_i_3_n_0\
    );
\rx_data_l_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => rx_data_l0,
      D => rx_data_l_shift(0),
      Q => \rx_data_l_reg_n_0_[0]\,
      R => \rx_data_l[23]_i_1_n_0\
    );
\rx_data_l_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => rx_data_l0,
      D => rx_data_l_shift(10),
      Q => \rx_data_l_reg_n_0_[10]\,
      R => \rx_data_l[23]_i_1_n_0\
    );
\rx_data_l_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => rx_data_l0,
      D => rx_data_l_shift(11),
      Q => \rx_data_l_reg_n_0_[11]\,
      R => \rx_data_l[23]_i_1_n_0\
    );
\rx_data_l_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => rx_data_l0,
      D => rx_data_l_shift(12),
      Q => \rx_data_l_reg_n_0_[12]\,
      R => \rx_data_l[23]_i_1_n_0\
    );
\rx_data_l_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => rx_data_l0,
      D => rx_data_l_shift(13),
      Q => \rx_data_l_reg_n_0_[13]\,
      R => \rx_data_l[23]_i_1_n_0\
    );
\rx_data_l_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => rx_data_l0,
      D => rx_data_l_shift(14),
      Q => \rx_data_l_reg_n_0_[14]\,
      R => \rx_data_l[23]_i_1_n_0\
    );
\rx_data_l_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => rx_data_l0,
      D => rx_data_l_shift(15),
      Q => \rx_data_l_reg_n_0_[15]\,
      R => \rx_data_l[23]_i_1_n_0\
    );
\rx_data_l_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => rx_data_l0,
      D => rx_data_l_shift(16),
      Q => \rx_data_l_reg_n_0_[16]\,
      R => \rx_data_l[23]_i_1_n_0\
    );
\rx_data_l_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => rx_data_l0,
      D => rx_data_l_shift(17),
      Q => \rx_data_l_reg_n_0_[17]\,
      R => \rx_data_l[23]_i_1_n_0\
    );
\rx_data_l_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => rx_data_l0,
      D => rx_data_l_shift(18),
      Q => \rx_data_l_reg_n_0_[18]\,
      R => \rx_data_l[23]_i_1_n_0\
    );
\rx_data_l_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => rx_data_l0,
      D => rx_data_l_shift(19),
      Q => \rx_data_l_reg_n_0_[19]\,
      R => \rx_data_l[23]_i_1_n_0\
    );
\rx_data_l_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => rx_data_l0,
      D => rx_data_l_shift(1),
      Q => \rx_data_l_reg_n_0_[1]\,
      R => \rx_data_l[23]_i_1_n_0\
    );
\rx_data_l_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => rx_data_l0,
      D => rx_data_l_shift(20),
      Q => \rx_data_l_reg_n_0_[20]\,
      R => \rx_data_l[23]_i_1_n_0\
    );
\rx_data_l_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => rx_data_l0,
      D => rx_data_l_shift(21),
      Q => \rx_data_l_reg_n_0_[21]\,
      R => \rx_data_l[23]_i_1_n_0\
    );
\rx_data_l_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => rx_data_l0,
      D => rx_data_l_shift(22),
      Q => \rx_data_l_reg_n_0_[22]\,
      R => \rx_data_l[23]_i_1_n_0\
    );
\rx_data_l_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => rx_data_l0,
      D => rx_data_l_shift(23),
      Q => \rx_data_l_reg_n_0_[23]\,
      R => \rx_data_l[23]_i_1_n_0\
    );
\rx_data_l_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => rx_data_l0,
      D => rx_data_l_shift(2),
      Q => \rx_data_l_reg_n_0_[2]\,
      R => \rx_data_l[23]_i_1_n_0\
    );
\rx_data_l_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => rx_data_l0,
      D => rx_data_l_shift(3),
      Q => \rx_data_l_reg_n_0_[3]\,
      R => \rx_data_l[23]_i_1_n_0\
    );
\rx_data_l_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => rx_data_l0,
      D => rx_data_l_shift(4),
      Q => \rx_data_l_reg_n_0_[4]\,
      R => \rx_data_l[23]_i_1_n_0\
    );
\rx_data_l_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => rx_data_l0,
      D => rx_data_l_shift(5),
      Q => \rx_data_l_reg_n_0_[5]\,
      R => \rx_data_l[23]_i_1_n_0\
    );
\rx_data_l_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => rx_data_l0,
      D => rx_data_l_shift(6),
      Q => \rx_data_l_reg_n_0_[6]\,
      R => \rx_data_l[23]_i_1_n_0\
    );
\rx_data_l_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => rx_data_l0,
      D => rx_data_l_shift(7),
      Q => \rx_data_l_reg_n_0_[7]\,
      R => \rx_data_l[23]_i_1_n_0\
    );
\rx_data_l_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => rx_data_l0,
      D => rx_data_l_shift(8),
      Q => \rx_data_l_reg_n_0_[8]\,
      R => \rx_data_l[23]_i_1_n_0\
    );
\rx_data_l_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => rx_data_l0,
      D => rx_data_l_shift(9),
      Q => \rx_data_l_reg_n_0_[9]\,
      R => \rx_data_l[23]_i_1_n_0\
    );
\rx_data_l_shift[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
        port map (
      I0 => tx_data_OBUF_inst_i_2_n_0,
      I1 => \count_reg__0\(0),
      I2 => \count_reg__0\(1),
      I3 => \^q\(0),
      I4 => \^q\(1),
      O => rx_data_l_shift_2
    );
\rx_data_l_shift_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => rx_data_l_shift_2,
      D => p_0_in0,
      Q => rx_data_l_shift(0),
      R => '0'
    );
\rx_data_l_shift_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => rx_data_l_shift_2,
      D => rx_data_l_shift(9),
      Q => rx_data_l_shift(10),
      R => '0'
    );
\rx_data_l_shift_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => rx_data_l_shift_2,
      D => rx_data_l_shift(10),
      Q => rx_data_l_shift(11),
      R => '0'
    );
\rx_data_l_shift_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => rx_data_l_shift_2,
      D => rx_data_l_shift(11),
      Q => rx_data_l_shift(12),
      R => '0'
    );
\rx_data_l_shift_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => rx_data_l_shift_2,
      D => rx_data_l_shift(12),
      Q => rx_data_l_shift(13),
      R => '0'
    );
\rx_data_l_shift_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => rx_data_l_shift_2,
      D => rx_data_l_shift(13),
      Q => rx_data_l_shift(14),
      R => '0'
    );
\rx_data_l_shift_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => rx_data_l_shift_2,
      D => rx_data_l_shift(14),
      Q => rx_data_l_shift(15),
      R => '0'
    );
\rx_data_l_shift_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => rx_data_l_shift_2,
      D => rx_data_l_shift(15),
      Q => rx_data_l_shift(16),
      R => '0'
    );
\rx_data_l_shift_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => rx_data_l_shift_2,
      D => rx_data_l_shift(16),
      Q => rx_data_l_shift(17),
      R => '0'
    );
\rx_data_l_shift_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => rx_data_l_shift_2,
      D => rx_data_l_shift(17),
      Q => rx_data_l_shift(18),
      R => '0'
    );
\rx_data_l_shift_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => rx_data_l_shift_2,
      D => rx_data_l_shift(18),
      Q => rx_data_l_shift(19),
      R => '0'
    );
\rx_data_l_shift_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => rx_data_l_shift_2,
      D => rx_data_l_shift(0),
      Q => rx_data_l_shift(1),
      R => '0'
    );
\rx_data_l_shift_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => rx_data_l_shift_2,
      D => rx_data_l_shift(19),
      Q => rx_data_l_shift(20),
      R => '0'
    );
\rx_data_l_shift_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => rx_data_l_shift_2,
      D => rx_data_l_shift(20),
      Q => rx_data_l_shift(21),
      R => '0'
    );
\rx_data_l_shift_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => rx_data_l_shift_2,
      D => rx_data_l_shift(21),
      Q => rx_data_l_shift(22),
      R => '0'
    );
\rx_data_l_shift_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => rx_data_l_shift_2,
      D => rx_data_l_shift(22),
      Q => rx_data_l_shift(23),
      R => '0'
    );
\rx_data_l_shift_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => rx_data_l_shift_2,
      D => rx_data_l_shift(1),
      Q => rx_data_l_shift(2),
      R => '0'
    );
\rx_data_l_shift_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => rx_data_l_shift_2,
      D => rx_data_l_shift(2),
      Q => rx_data_l_shift(3),
      R => '0'
    );
\rx_data_l_shift_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => rx_data_l_shift_2,
      D => rx_data_l_shift(3),
      Q => rx_data_l_shift(4),
      R => '0'
    );
\rx_data_l_shift_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => rx_data_l_shift_2,
      D => rx_data_l_shift(4),
      Q => rx_data_l_shift(5),
      R => '0'
    );
\rx_data_l_shift_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => rx_data_l_shift_2,
      D => rx_data_l_shift(5),
      Q => rx_data_l_shift(6),
      R => '0'
    );
\rx_data_l_shift_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => rx_data_l_shift_2,
      D => rx_data_l_shift(6),
      Q => rx_data_l_shift(7),
      R => '0'
    );
\rx_data_l_shift_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => rx_data_l_shift_2,
      D => rx_data_l_shift(7),
      Q => rx_data_l_shift(8),
      R => '0'
    );
\rx_data_l_shift_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => rx_data_l_shift_2,
      D => rx_data_l_shift(8),
      Q => rx_data_l_shift(9),
      R => '0'
    );
\rx_data_r_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => rx_data_l0,
      D => rx_data_r_shift(0),
      Q => rx_data_r(0),
      R => \rx_data_l[23]_i_1_n_0\
    );
\rx_data_r_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => rx_data_l0,
      D => rx_data_r_shift(10),
      Q => rx_data_r(10),
      R => \rx_data_l[23]_i_1_n_0\
    );
\rx_data_r_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => rx_data_l0,
      D => rx_data_r_shift(11),
      Q => rx_data_r(11),
      R => \rx_data_l[23]_i_1_n_0\
    );
\rx_data_r_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => rx_data_l0,
      D => rx_data_r_shift(12),
      Q => rx_data_r(12),
      R => \rx_data_l[23]_i_1_n_0\
    );
\rx_data_r_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => rx_data_l0,
      D => rx_data_r_shift(13),
      Q => rx_data_r(13),
      R => \rx_data_l[23]_i_1_n_0\
    );
\rx_data_r_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => rx_data_l0,
      D => rx_data_r_shift(14),
      Q => rx_data_r(14),
      R => \rx_data_l[23]_i_1_n_0\
    );
\rx_data_r_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => rx_data_l0,
      D => rx_data_r_shift(15),
      Q => rx_data_r(15),
      R => \rx_data_l[23]_i_1_n_0\
    );
\rx_data_r_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => rx_data_l0,
      D => rx_data_r_shift(16),
      Q => rx_data_r(16),
      R => \rx_data_l[23]_i_1_n_0\
    );
\rx_data_r_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => rx_data_l0,
      D => rx_data_r_shift(17),
      Q => rx_data_r(17),
      R => \rx_data_l[23]_i_1_n_0\
    );
\rx_data_r_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => rx_data_l0,
      D => rx_data_r_shift(18),
      Q => rx_data_r(18),
      R => \rx_data_l[23]_i_1_n_0\
    );
\rx_data_r_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => rx_data_l0,
      D => rx_data_r_shift(19),
      Q => rx_data_r(19),
      R => \rx_data_l[23]_i_1_n_0\
    );
\rx_data_r_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => rx_data_l0,
      D => rx_data_r_shift(1),
      Q => rx_data_r(1),
      R => \rx_data_l[23]_i_1_n_0\
    );
\rx_data_r_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => rx_data_l0,
      D => rx_data_r_shift(20),
      Q => rx_data_r(20),
      R => \rx_data_l[23]_i_1_n_0\
    );
\rx_data_r_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => rx_data_l0,
      D => rx_data_r_shift(21),
      Q => rx_data_r(21),
      R => \rx_data_l[23]_i_1_n_0\
    );
\rx_data_r_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => rx_data_l0,
      D => rx_data_r_shift(22),
      Q => rx_data_r(22),
      R => \rx_data_l[23]_i_1_n_0\
    );
\rx_data_r_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => rx_data_l0,
      D => rx_data_r_shift(23),
      Q => rx_data_r(23),
      R => \rx_data_l[23]_i_1_n_0\
    );
\rx_data_r_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => rx_data_l0,
      D => rx_data_r_shift(2),
      Q => rx_data_r(2),
      R => \rx_data_l[23]_i_1_n_0\
    );
\rx_data_r_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => rx_data_l0,
      D => rx_data_r_shift(3),
      Q => rx_data_r(3),
      R => \rx_data_l[23]_i_1_n_0\
    );
\rx_data_r_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => rx_data_l0,
      D => rx_data_r_shift(4),
      Q => rx_data_r(4),
      R => \rx_data_l[23]_i_1_n_0\
    );
\rx_data_r_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => rx_data_l0,
      D => rx_data_r_shift(5),
      Q => rx_data_r(5),
      R => \rx_data_l[23]_i_1_n_0\
    );
\rx_data_r_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => rx_data_l0,
      D => rx_data_r_shift(6),
      Q => rx_data_r(6),
      R => \rx_data_l[23]_i_1_n_0\
    );
\rx_data_r_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => rx_data_l0,
      D => rx_data_r_shift(7),
      Q => rx_data_r(7),
      R => \rx_data_l[23]_i_1_n_0\
    );
\rx_data_r_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => rx_data_l0,
      D => rx_data_r_shift(8),
      Q => rx_data_r(8),
      R => \rx_data_l[23]_i_1_n_0\
    );
\rx_data_r_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => rx_data_l0,
      D => rx_data_r_shift(9),
      Q => rx_data_r(9),
      R => \rx_data_l[23]_i_1_n_0\
    );
\rx_data_r_shift[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00800000"
    )
        port map (
      I0 => tx_data_OBUF_inst_i_2_n_0,
      I1 => \count_reg__0\(0),
      I2 => \count_reg__0\(1),
      I3 => \^q\(0),
      I4 => \^q\(1),
      O => rx_data_r_shift_1
    );
\rx_data_r_shift_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => rx_data_r_shift_1,
      D => p_0_in0,
      Q => rx_data_r_shift(0),
      R => '0'
    );
\rx_data_r_shift_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => rx_data_r_shift_1,
      D => rx_data_r_shift(9),
      Q => rx_data_r_shift(10),
      R => '0'
    );
\rx_data_r_shift_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => rx_data_r_shift_1,
      D => rx_data_r_shift(10),
      Q => rx_data_r_shift(11),
      R => '0'
    );
\rx_data_r_shift_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => rx_data_r_shift_1,
      D => rx_data_r_shift(11),
      Q => rx_data_r_shift(12),
      R => '0'
    );
\rx_data_r_shift_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => rx_data_r_shift_1,
      D => rx_data_r_shift(12),
      Q => rx_data_r_shift(13),
      R => '0'
    );
\rx_data_r_shift_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => rx_data_r_shift_1,
      D => rx_data_r_shift(13),
      Q => rx_data_r_shift(14),
      R => '0'
    );
\rx_data_r_shift_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => rx_data_r_shift_1,
      D => rx_data_r_shift(14),
      Q => rx_data_r_shift(15),
      R => '0'
    );
\rx_data_r_shift_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => rx_data_r_shift_1,
      D => rx_data_r_shift(15),
      Q => rx_data_r_shift(16),
      R => '0'
    );
\rx_data_r_shift_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => rx_data_r_shift_1,
      D => rx_data_r_shift(16),
      Q => rx_data_r_shift(17),
      R => '0'
    );
\rx_data_r_shift_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => rx_data_r_shift_1,
      D => rx_data_r_shift(17),
      Q => rx_data_r_shift(18),
      R => '0'
    );
\rx_data_r_shift_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => rx_data_r_shift_1,
      D => rx_data_r_shift(18),
      Q => rx_data_r_shift(19),
      R => '0'
    );
\rx_data_r_shift_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => rx_data_r_shift_1,
      D => rx_data_r_shift(0),
      Q => rx_data_r_shift(1),
      R => '0'
    );
\rx_data_r_shift_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => rx_data_r_shift_1,
      D => rx_data_r_shift(19),
      Q => rx_data_r_shift(20),
      R => '0'
    );
\rx_data_r_shift_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => rx_data_r_shift_1,
      D => rx_data_r_shift(20),
      Q => rx_data_r_shift(21),
      R => '0'
    );
\rx_data_r_shift_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => rx_data_r_shift_1,
      D => rx_data_r_shift(21),
      Q => rx_data_r_shift(22),
      R => '0'
    );
\rx_data_r_shift_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => rx_data_r_shift_1,
      D => rx_data_r_shift(22),
      Q => rx_data_r_shift(23),
      R => '0'
    );
\rx_data_r_shift_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => rx_data_r_shift_1,
      D => rx_data_r_shift(1),
      Q => rx_data_r_shift(2),
      R => '0'
    );
\rx_data_r_shift_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => rx_data_r_shift_1,
      D => rx_data_r_shift(2),
      Q => rx_data_r_shift(3),
      R => '0'
    );
\rx_data_r_shift_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => rx_data_r_shift_1,
      D => rx_data_r_shift(3),
      Q => rx_data_r_shift(4),
      R => '0'
    );
\rx_data_r_shift_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => rx_data_r_shift_1,
      D => rx_data_r_shift(4),
      Q => rx_data_r_shift(5),
      R => '0'
    );
\rx_data_r_shift_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => rx_data_r_shift_1,
      D => rx_data_r_shift(5),
      Q => rx_data_r_shift(6),
      R => '0'
    );
\rx_data_r_shift_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => rx_data_r_shift_1,
      D => rx_data_r_shift(6),
      Q => rx_data_r_shift(7),
      R => '0'
    );
\rx_data_r_shift_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => rx_data_r_shift_1,
      D => rx_data_r_shift(7),
      Q => rx_data_r_shift(8),
      R => '0'
    );
\rx_data_r_shift_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => rx_data_r_shift_1,
      D => rx_data_r_shift(8),
      Q => rx_data_r_shift(9),
      R => '0'
    );
tx_axis_s_ready_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0322332200000000"
    )
        port map (
      I0 => tx_axis_s_ready_i_2_n_0,
      I1 => tx_axis_s_ready_i_3_n_0,
      I2 => axis_tx_valid,
      I3 => \^axis_tx_ready\,
      I4 => axis_tx_last,
      I5 => reset_IBUF,
      O => tx_axis_s_ready_i_1_n_0
    );
tx_axis_s_ready_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => \rx_data_l[23]_i_3_n_0\,
      I1 => \count_reg__0\(4),
      I2 => \count_reg__0\(5),
      I3 => \count_reg__0\(3),
      O => tx_axis_s_ready_i_2_n_0
    );
tx_axis_s_ready_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => \count_reg__0\(0),
      I1 => \count_reg__0\(1),
      I2 => \^q\(0),
      I3 => \tx_data_l_shift[23]_i_4_n_0\,
      O => tx_axis_s_ready_i_3_n_0
    );
tx_axis_s_ready_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => '1',
      D => tx_axis_s_ready_i_1_n_0,
      Q => \^axis_tx_ready\,
      R => '0'
    );
tx_data_OBUF_inst_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88C0"
    )
        port map (
      I0 => \tx_data_r_shift_reg_n_0_[23]\,
      I1 => tx_data_OBUF_inst_i_2_n_0,
      I2 => \tx_data_l_shift_reg_n_0_[23]\,
      I3 => \^q\(1),
      O => tx_data_OBUF
    );
tx_data_OBUF_inst_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01FFFFFE"
    )
        port map (
      I0 => \count_reg__0\(3),
      I1 => \count_reg__0\(5),
      I2 => \count_reg__0\(4),
      I3 => \count_reg__0\(7),
      I4 => \count_reg__0\(6),
      O => tx_data_OBUF_inst_i_2_n_0
    );
\tx_data_l_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => \tx_data_l_reg[23]_0\(0),
      D => \tx_data_l_reg[23]_1\(0),
      Q => \tx_data_l_reg_n_0_[0]\,
      R => \rx_data_l[23]_i_1_n_0\
    );
\tx_data_l_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => \tx_data_l_reg[23]_0\(0),
      D => \tx_data_l_reg[23]_1\(10),
      Q => \tx_data_l_reg_n_0_[10]\,
      R => \rx_data_l[23]_i_1_n_0\
    );
\tx_data_l_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => \tx_data_l_reg[23]_0\(0),
      D => \tx_data_l_reg[23]_1\(11),
      Q => \tx_data_l_reg_n_0_[11]\,
      R => \rx_data_l[23]_i_1_n_0\
    );
\tx_data_l_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => \tx_data_l_reg[23]_0\(0),
      D => \tx_data_l_reg[23]_1\(12),
      Q => \tx_data_l_reg_n_0_[12]\,
      R => \rx_data_l[23]_i_1_n_0\
    );
\tx_data_l_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => \tx_data_l_reg[23]_0\(0),
      D => \tx_data_l_reg[23]_1\(13),
      Q => \tx_data_l_reg_n_0_[13]\,
      R => \rx_data_l[23]_i_1_n_0\
    );
\tx_data_l_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => \tx_data_l_reg[23]_0\(0),
      D => \tx_data_l_reg[23]_1\(14),
      Q => \tx_data_l_reg_n_0_[14]\,
      R => \rx_data_l[23]_i_1_n_0\
    );
\tx_data_l_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => \tx_data_l_reg[23]_0\(0),
      D => \tx_data_l_reg[23]_1\(15),
      Q => \tx_data_l_reg_n_0_[15]\,
      R => \rx_data_l[23]_i_1_n_0\
    );
\tx_data_l_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => \tx_data_l_reg[23]_0\(0),
      D => \tx_data_l_reg[23]_1\(16),
      Q => \tx_data_l_reg_n_0_[16]\,
      R => \rx_data_l[23]_i_1_n_0\
    );
\tx_data_l_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => \tx_data_l_reg[23]_0\(0),
      D => \tx_data_l_reg[23]_1\(17),
      Q => \tx_data_l_reg_n_0_[17]\,
      R => \rx_data_l[23]_i_1_n_0\
    );
\tx_data_l_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => \tx_data_l_reg[23]_0\(0),
      D => \tx_data_l_reg[23]_1\(18),
      Q => \tx_data_l_reg_n_0_[18]\,
      R => \rx_data_l[23]_i_1_n_0\
    );
\tx_data_l_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => \tx_data_l_reg[23]_0\(0),
      D => \tx_data_l_reg[23]_1\(19),
      Q => \tx_data_l_reg_n_0_[19]\,
      R => \rx_data_l[23]_i_1_n_0\
    );
\tx_data_l_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => \tx_data_l_reg[23]_0\(0),
      D => \tx_data_l_reg[23]_1\(1),
      Q => \tx_data_l_reg_n_0_[1]\,
      R => \rx_data_l[23]_i_1_n_0\
    );
\tx_data_l_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => \tx_data_l_reg[23]_0\(0),
      D => \tx_data_l_reg[23]_1\(20),
      Q => \tx_data_l_reg_n_0_[20]\,
      R => \rx_data_l[23]_i_1_n_0\
    );
\tx_data_l_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => \tx_data_l_reg[23]_0\(0),
      D => \tx_data_l_reg[23]_1\(21),
      Q => \tx_data_l_reg_n_0_[21]\,
      R => \rx_data_l[23]_i_1_n_0\
    );
\tx_data_l_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => \tx_data_l_reg[23]_0\(0),
      D => \tx_data_l_reg[23]_1\(22),
      Q => \tx_data_l_reg_n_0_[22]\,
      R => \rx_data_l[23]_i_1_n_0\
    );
\tx_data_l_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => \tx_data_l_reg[23]_0\(0),
      D => \tx_data_l_reg[23]_1\(23),
      Q => \tx_data_l_reg_n_0_[23]\,
      R => \rx_data_l[23]_i_1_n_0\
    );
\tx_data_l_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => \tx_data_l_reg[23]_0\(0),
      D => \tx_data_l_reg[23]_1\(2),
      Q => \tx_data_l_reg_n_0_[2]\,
      R => \rx_data_l[23]_i_1_n_0\
    );
\tx_data_l_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => \tx_data_l_reg[23]_0\(0),
      D => \tx_data_l_reg[23]_1\(3),
      Q => \tx_data_l_reg_n_0_[3]\,
      R => \rx_data_l[23]_i_1_n_0\
    );
\tx_data_l_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => \tx_data_l_reg[23]_0\(0),
      D => \tx_data_l_reg[23]_1\(4),
      Q => \tx_data_l_reg_n_0_[4]\,
      R => \rx_data_l[23]_i_1_n_0\
    );
\tx_data_l_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => \tx_data_l_reg[23]_0\(0),
      D => \tx_data_l_reg[23]_1\(5),
      Q => \tx_data_l_reg_n_0_[5]\,
      R => \rx_data_l[23]_i_1_n_0\
    );
\tx_data_l_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => \tx_data_l_reg[23]_0\(0),
      D => \tx_data_l_reg[23]_1\(6),
      Q => \tx_data_l_reg_n_0_[6]\,
      R => \rx_data_l[23]_i_1_n_0\
    );
\tx_data_l_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => \tx_data_l_reg[23]_0\(0),
      D => \tx_data_l_reg[23]_1\(7),
      Q => \tx_data_l_reg_n_0_[7]\,
      R => \rx_data_l[23]_i_1_n_0\
    );
\tx_data_l_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => \tx_data_l_reg[23]_0\(0),
      D => \tx_data_l_reg[23]_1\(8),
      Q => \tx_data_l_reg_n_0_[8]\,
      R => \rx_data_l[23]_i_1_n_0\
    );
\tx_data_l_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => \tx_data_l_reg[23]_0\(0),
      D => \tx_data_l_reg[23]_1\(9),
      Q => \tx_data_l_reg_n_0_[9]\,
      R => \rx_data_l[23]_i_1_n_0\
    );
\tx_data_l_shift[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCAACC0A"
    )
        port map (
      I0 => tx_data_l_shift(0),
      I1 => \tx_data_l_reg_n_0_[0]\,
      I2 => \tx_data_l_shift1__2\,
      I3 => p_1_in_0,
      I4 => \^q\(1),
      O => \tx_data_l_shift[0]_i_1_n_0\
    );
\tx_data_l_shift[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \count_reg__0\(0),
      I1 => \count_reg__0\(1),
      I2 => \^q\(0),
      I3 => tx_data_OBUF_inst_i_2_n_0,
      O => \tx_data_l_shift1__2\
    );
\tx_data_l_shift[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tx_data_l_reg_n_0_[10]\,
      I1 => p_1_in_0,
      I2 => tx_data_l_shift(9),
      O => p_1_in(10)
    );
\tx_data_l_shift[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tx_data_l_reg_n_0_[11]\,
      I1 => p_1_in_0,
      I2 => tx_data_l_shift(10),
      O => p_1_in(11)
    );
\tx_data_l_shift[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tx_data_l_reg_n_0_[12]\,
      I1 => p_1_in_0,
      I2 => tx_data_l_shift(11),
      O => p_1_in(12)
    );
\tx_data_l_shift[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tx_data_l_reg_n_0_[13]\,
      I1 => p_1_in_0,
      I2 => tx_data_l_shift(12),
      O => p_1_in(13)
    );
\tx_data_l_shift[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tx_data_l_reg_n_0_[14]\,
      I1 => p_1_in_0,
      I2 => tx_data_l_shift(13),
      O => p_1_in(14)
    );
\tx_data_l_shift[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tx_data_l_reg_n_0_[15]\,
      I1 => p_1_in_0,
      I2 => tx_data_l_shift(14),
      O => p_1_in(15)
    );
\tx_data_l_shift[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tx_data_l_reg_n_0_[16]\,
      I1 => p_1_in_0,
      I2 => tx_data_l_shift(15),
      O => p_1_in(16)
    );
\tx_data_l_shift[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tx_data_l_reg_n_0_[17]\,
      I1 => p_1_in_0,
      I2 => tx_data_l_shift(16),
      O => p_1_in(17)
    );
\tx_data_l_shift[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tx_data_l_reg_n_0_[18]\,
      I1 => p_1_in_0,
      I2 => tx_data_l_shift(17),
      O => p_1_in(18)
    );
\tx_data_l_shift[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tx_data_l_reg_n_0_[19]\,
      I1 => p_1_in_0,
      I2 => tx_data_l_shift(18),
      O => p_1_in(19)
    );
\tx_data_l_shift[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tx_data_l_reg_n_0_[1]\,
      I1 => p_1_in_0,
      I2 => tx_data_l_shift(0),
      O => p_1_in(1)
    );
\tx_data_l_shift[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tx_data_l_reg_n_0_[20]\,
      I1 => p_1_in_0,
      I2 => tx_data_l_shift(19),
      O => p_1_in(20)
    );
\tx_data_l_shift[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tx_data_l_reg_n_0_[21]\,
      I1 => p_1_in_0,
      I2 => tx_data_l_shift(20),
      O => p_1_in(21)
    );
\tx_data_l_shift[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tx_data_l_reg_n_0_[22]\,
      I1 => p_1_in_0,
      I2 => tx_data_l_shift(21),
      O => p_1_in(22)
    );
\tx_data_l_shift[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF40000000"
    )
        port map (
      I0 => \^q\(1),
      I1 => \count_reg__0\(0),
      I2 => \count_reg__0\(1),
      I3 => \^q\(0),
      I4 => tx_data_OBUF_inst_i_2_n_0,
      I5 => p_1_in_0,
      O => tx_data_l_shift0_in(23)
    );
\tx_data_l_shift[23]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tx_data_l_reg_n_0_[23]\,
      I1 => p_1_in_0,
      I2 => tx_data_l_shift(22),
      O => p_1_in(23)
    );
\tx_data_l_shift[23]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \count_reg__0\(1),
      I1 => \count_reg__0\(0),
      I2 => \^q\(0),
      I3 => \tx_data_l_shift[23]_i_4_n_0\,
      O => p_1_in_0
    );
\tx_data_l_shift[23]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \count_reg__0\(6),
      I1 => \count_reg__0\(7),
      I2 => \^q\(1),
      I3 => \count_reg__0\(4),
      I4 => \count_reg__0\(5),
      I5 => \count_reg__0\(3),
      O => \tx_data_l_shift[23]_i_4_n_0\
    );
\tx_data_l_shift[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tx_data_l_reg_n_0_[2]\,
      I1 => p_1_in_0,
      I2 => tx_data_l_shift(1),
      O => p_1_in(2)
    );
\tx_data_l_shift[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tx_data_l_reg_n_0_[3]\,
      I1 => p_1_in_0,
      I2 => tx_data_l_shift(2),
      O => p_1_in(3)
    );
\tx_data_l_shift[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tx_data_l_reg_n_0_[4]\,
      I1 => p_1_in_0,
      I2 => tx_data_l_shift(3),
      O => p_1_in(4)
    );
\tx_data_l_shift[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tx_data_l_reg_n_0_[5]\,
      I1 => p_1_in_0,
      I2 => tx_data_l_shift(4),
      O => p_1_in(5)
    );
\tx_data_l_shift[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tx_data_l_reg_n_0_[6]\,
      I1 => p_1_in_0,
      I2 => tx_data_l_shift(5),
      O => p_1_in(6)
    );
\tx_data_l_shift[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tx_data_l_reg_n_0_[7]\,
      I1 => p_1_in_0,
      I2 => tx_data_l_shift(6),
      O => p_1_in(7)
    );
\tx_data_l_shift[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tx_data_l_reg_n_0_[8]\,
      I1 => p_1_in_0,
      I2 => tx_data_l_shift(7),
      O => p_1_in(8)
    );
\tx_data_l_shift[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tx_data_l_reg_n_0_[9]\,
      I1 => p_1_in_0,
      I2 => tx_data_l_shift(8),
      O => p_1_in(9)
    );
\tx_data_l_shift_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => '1',
      D => \tx_data_l_shift[0]_i_1_n_0\,
      Q => tx_data_l_shift(0),
      R => '0'
    );
\tx_data_l_shift_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => tx_data_l_shift0_in(23),
      D => p_1_in(10),
      Q => tx_data_l_shift(10),
      R => '0'
    );
\tx_data_l_shift_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => tx_data_l_shift0_in(23),
      D => p_1_in(11),
      Q => tx_data_l_shift(11),
      R => '0'
    );
\tx_data_l_shift_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => tx_data_l_shift0_in(23),
      D => p_1_in(12),
      Q => tx_data_l_shift(12),
      R => '0'
    );
\tx_data_l_shift_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => tx_data_l_shift0_in(23),
      D => p_1_in(13),
      Q => tx_data_l_shift(13),
      R => '0'
    );
\tx_data_l_shift_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => tx_data_l_shift0_in(23),
      D => p_1_in(14),
      Q => tx_data_l_shift(14),
      R => '0'
    );
\tx_data_l_shift_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => tx_data_l_shift0_in(23),
      D => p_1_in(15),
      Q => tx_data_l_shift(15),
      R => '0'
    );
\tx_data_l_shift_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => tx_data_l_shift0_in(23),
      D => p_1_in(16),
      Q => tx_data_l_shift(16),
      R => '0'
    );
\tx_data_l_shift_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => tx_data_l_shift0_in(23),
      D => p_1_in(17),
      Q => tx_data_l_shift(17),
      R => '0'
    );
\tx_data_l_shift_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => tx_data_l_shift0_in(23),
      D => p_1_in(18),
      Q => tx_data_l_shift(18),
      R => '0'
    );
\tx_data_l_shift_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => tx_data_l_shift0_in(23),
      D => p_1_in(19),
      Q => tx_data_l_shift(19),
      R => '0'
    );
\tx_data_l_shift_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => tx_data_l_shift0_in(23),
      D => p_1_in(1),
      Q => tx_data_l_shift(1),
      R => '0'
    );
\tx_data_l_shift_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => tx_data_l_shift0_in(23),
      D => p_1_in(20),
      Q => tx_data_l_shift(20),
      R => '0'
    );
\tx_data_l_shift_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => tx_data_l_shift0_in(23),
      D => p_1_in(21),
      Q => tx_data_l_shift(21),
      R => '0'
    );
\tx_data_l_shift_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => tx_data_l_shift0_in(23),
      D => p_1_in(22),
      Q => tx_data_l_shift(22),
      R => '0'
    );
\tx_data_l_shift_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => tx_data_l_shift0_in(23),
      D => p_1_in(23),
      Q => \tx_data_l_shift_reg_n_0_[23]\,
      R => '0'
    );
\tx_data_l_shift_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => tx_data_l_shift0_in(23),
      D => p_1_in(2),
      Q => tx_data_l_shift(2),
      R => '0'
    );
\tx_data_l_shift_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => tx_data_l_shift0_in(23),
      D => p_1_in(3),
      Q => tx_data_l_shift(3),
      R => '0'
    );
\tx_data_l_shift_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => tx_data_l_shift0_in(23),
      D => p_1_in(4),
      Q => tx_data_l_shift(4),
      R => '0'
    );
\tx_data_l_shift_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => tx_data_l_shift0_in(23),
      D => p_1_in(5),
      Q => tx_data_l_shift(5),
      R => '0'
    );
\tx_data_l_shift_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => tx_data_l_shift0_in(23),
      D => p_1_in(6),
      Q => tx_data_l_shift(6),
      R => '0'
    );
\tx_data_l_shift_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => tx_data_l_shift0_in(23),
      D => p_1_in(7),
      Q => tx_data_l_shift(7),
      R => '0'
    );
\tx_data_l_shift_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => tx_data_l_shift0_in(23),
      D => p_1_in(8),
      Q => tx_data_l_shift(8),
      R => '0'
    );
\tx_data_l_shift_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => tx_data_l_shift0_in(23),
      D => p_1_in(9),
      Q => tx_data_l_shift(9),
      R => '0'
    );
\tx_data_r_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => \tx_data_r_reg[23]_0\(0),
      D => \tx_data_l_reg[23]_1\(0),
      Q => \tx_data_r_reg_n_0_[0]\,
      R => \rx_data_l[23]_i_1_n_0\
    );
\tx_data_r_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => \tx_data_r_reg[23]_0\(0),
      D => \tx_data_l_reg[23]_1\(10),
      Q => \tx_data_r_reg_n_0_[10]\,
      R => \rx_data_l[23]_i_1_n_0\
    );
\tx_data_r_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => \tx_data_r_reg[23]_0\(0),
      D => \tx_data_l_reg[23]_1\(11),
      Q => \tx_data_r_reg_n_0_[11]\,
      R => \rx_data_l[23]_i_1_n_0\
    );
\tx_data_r_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => \tx_data_r_reg[23]_0\(0),
      D => \tx_data_l_reg[23]_1\(12),
      Q => \tx_data_r_reg_n_0_[12]\,
      R => \rx_data_l[23]_i_1_n_0\
    );
\tx_data_r_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => \tx_data_r_reg[23]_0\(0),
      D => \tx_data_l_reg[23]_1\(13),
      Q => \tx_data_r_reg_n_0_[13]\,
      R => \rx_data_l[23]_i_1_n_0\
    );
\tx_data_r_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => \tx_data_r_reg[23]_0\(0),
      D => \tx_data_l_reg[23]_1\(14),
      Q => \tx_data_r_reg_n_0_[14]\,
      R => \rx_data_l[23]_i_1_n_0\
    );
\tx_data_r_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => \tx_data_r_reg[23]_0\(0),
      D => \tx_data_l_reg[23]_1\(15),
      Q => \tx_data_r_reg_n_0_[15]\,
      R => \rx_data_l[23]_i_1_n_0\
    );
\tx_data_r_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => \tx_data_r_reg[23]_0\(0),
      D => \tx_data_l_reg[23]_1\(16),
      Q => \tx_data_r_reg_n_0_[16]\,
      R => \rx_data_l[23]_i_1_n_0\
    );
\tx_data_r_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => \tx_data_r_reg[23]_0\(0),
      D => \tx_data_l_reg[23]_1\(17),
      Q => \tx_data_r_reg_n_0_[17]\,
      R => \rx_data_l[23]_i_1_n_0\
    );
\tx_data_r_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => \tx_data_r_reg[23]_0\(0),
      D => \tx_data_l_reg[23]_1\(18),
      Q => \tx_data_r_reg_n_0_[18]\,
      R => \rx_data_l[23]_i_1_n_0\
    );
\tx_data_r_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => \tx_data_r_reg[23]_0\(0),
      D => \tx_data_l_reg[23]_1\(19),
      Q => \tx_data_r_reg_n_0_[19]\,
      R => \rx_data_l[23]_i_1_n_0\
    );
\tx_data_r_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => \tx_data_r_reg[23]_0\(0),
      D => \tx_data_l_reg[23]_1\(1),
      Q => \tx_data_r_reg_n_0_[1]\,
      R => \rx_data_l[23]_i_1_n_0\
    );
\tx_data_r_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => \tx_data_r_reg[23]_0\(0),
      D => \tx_data_l_reg[23]_1\(20),
      Q => \tx_data_r_reg_n_0_[20]\,
      R => \rx_data_l[23]_i_1_n_0\
    );
\tx_data_r_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => \tx_data_r_reg[23]_0\(0),
      D => \tx_data_l_reg[23]_1\(21),
      Q => \tx_data_r_reg_n_0_[21]\,
      R => \rx_data_l[23]_i_1_n_0\
    );
\tx_data_r_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => \tx_data_r_reg[23]_0\(0),
      D => \tx_data_l_reg[23]_1\(22),
      Q => \tx_data_r_reg_n_0_[22]\,
      R => \rx_data_l[23]_i_1_n_0\
    );
\tx_data_r_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => \tx_data_r_reg[23]_0\(0),
      D => \tx_data_l_reg[23]_1\(23),
      Q => \tx_data_r_reg_n_0_[23]\,
      R => \rx_data_l[23]_i_1_n_0\
    );
\tx_data_r_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => \tx_data_r_reg[23]_0\(0),
      D => \tx_data_l_reg[23]_1\(2),
      Q => \tx_data_r_reg_n_0_[2]\,
      R => \rx_data_l[23]_i_1_n_0\
    );
\tx_data_r_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => \tx_data_r_reg[23]_0\(0),
      D => \tx_data_l_reg[23]_1\(3),
      Q => \tx_data_r_reg_n_0_[3]\,
      R => \rx_data_l[23]_i_1_n_0\
    );
\tx_data_r_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => \tx_data_r_reg[23]_0\(0),
      D => \tx_data_l_reg[23]_1\(4),
      Q => \tx_data_r_reg_n_0_[4]\,
      R => \rx_data_l[23]_i_1_n_0\
    );
\tx_data_r_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => \tx_data_r_reg[23]_0\(0),
      D => \tx_data_l_reg[23]_1\(5),
      Q => \tx_data_r_reg_n_0_[5]\,
      R => \rx_data_l[23]_i_1_n_0\
    );
\tx_data_r_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => \tx_data_r_reg[23]_0\(0),
      D => \tx_data_l_reg[23]_1\(6),
      Q => \tx_data_r_reg_n_0_[6]\,
      R => \rx_data_l[23]_i_1_n_0\
    );
\tx_data_r_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => \tx_data_r_reg[23]_0\(0),
      D => \tx_data_l_reg[23]_1\(7),
      Q => \tx_data_r_reg_n_0_[7]\,
      R => \rx_data_l[23]_i_1_n_0\
    );
\tx_data_r_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => \tx_data_r_reg[23]_0\(0),
      D => \tx_data_l_reg[23]_1\(8),
      Q => \tx_data_r_reg_n_0_[8]\,
      R => \rx_data_l[23]_i_1_n_0\
    );
\tx_data_r_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => \tx_data_r_reg[23]_0\(0),
      D => \tx_data_l_reg[23]_1\(9),
      Q => \tx_data_r_reg_n_0_[9]\,
      R => \rx_data_l[23]_i_1_n_0\
    );
\tx_data_r_shift[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCC0AAA"
    )
        port map (
      I0 => \tx_data_r_shift_reg_n_0_[0]\,
      I1 => \tx_data_r_reg_n_0_[0]\,
      I2 => \tx_data_l_shift1__2\,
      I3 => \^q\(1),
      I4 => p_1_in_0,
      O => \tx_data_r_shift[0]_i_1_n_0\
    );
\tx_data_r_shift[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tx_data_r_reg_n_0_[10]\,
      I1 => p_1_in_0,
      I2 => \tx_data_r_shift_reg_n_0_[9]\,
      O => \tx_data_r_shift[10]_i_1_n_0\
    );
\tx_data_r_shift[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tx_data_r_reg_n_0_[11]\,
      I1 => p_1_in_0,
      I2 => \tx_data_r_shift_reg_n_0_[10]\,
      O => \tx_data_r_shift[11]_i_1_n_0\
    );
\tx_data_r_shift[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tx_data_r_reg_n_0_[12]\,
      I1 => p_1_in_0,
      I2 => \tx_data_r_shift_reg_n_0_[11]\,
      O => \tx_data_r_shift[12]_i_1_n_0\
    );
\tx_data_r_shift[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tx_data_r_reg_n_0_[13]\,
      I1 => p_1_in_0,
      I2 => \tx_data_r_shift_reg_n_0_[12]\,
      O => \tx_data_r_shift[13]_i_1_n_0\
    );
\tx_data_r_shift[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tx_data_r_reg_n_0_[14]\,
      I1 => p_1_in_0,
      I2 => \tx_data_r_shift_reg_n_0_[13]\,
      O => \tx_data_r_shift[14]_i_1_n_0\
    );
\tx_data_r_shift[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tx_data_r_reg_n_0_[15]\,
      I1 => p_1_in_0,
      I2 => \tx_data_r_shift_reg_n_0_[14]\,
      O => \tx_data_r_shift[15]_i_1_n_0\
    );
\tx_data_r_shift[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tx_data_r_reg_n_0_[16]\,
      I1 => p_1_in_0,
      I2 => \tx_data_r_shift_reg_n_0_[15]\,
      O => \tx_data_r_shift[16]_i_1_n_0\
    );
\tx_data_r_shift[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tx_data_r_reg_n_0_[17]\,
      I1 => p_1_in_0,
      I2 => \tx_data_r_shift_reg_n_0_[16]\,
      O => \tx_data_r_shift[17]_i_1_n_0\
    );
\tx_data_r_shift[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tx_data_r_reg_n_0_[18]\,
      I1 => p_1_in_0,
      I2 => \tx_data_r_shift_reg_n_0_[17]\,
      O => \tx_data_r_shift[18]_i_1_n_0\
    );
\tx_data_r_shift[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tx_data_r_reg_n_0_[19]\,
      I1 => p_1_in_0,
      I2 => \tx_data_r_shift_reg_n_0_[18]\,
      O => \tx_data_r_shift[19]_i_1_n_0\
    );
\tx_data_r_shift[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tx_data_r_reg_n_0_[1]\,
      I1 => p_1_in_0,
      I2 => \tx_data_r_shift_reg_n_0_[0]\,
      O => \tx_data_r_shift[1]_i_1_n_0\
    );
\tx_data_r_shift[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tx_data_r_reg_n_0_[20]\,
      I1 => p_1_in_0,
      I2 => \tx_data_r_shift_reg_n_0_[19]\,
      O => \tx_data_r_shift[20]_i_1_n_0\
    );
\tx_data_r_shift[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tx_data_r_reg_n_0_[21]\,
      I1 => p_1_in_0,
      I2 => \tx_data_r_shift_reg_n_0_[20]\,
      O => \tx_data_r_shift[21]_i_1_n_0\
    );
\tx_data_r_shift[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tx_data_r_reg_n_0_[22]\,
      I1 => p_1_in_0,
      I2 => \tx_data_r_shift_reg_n_0_[21]\,
      O => \tx_data_r_shift[22]_i_1_n_0\
    );
\tx_data_r_shift[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF80000000"
    )
        port map (
      I0 => \^q\(1),
      I1 => \count_reg__0\(0),
      I2 => \count_reg__0\(1),
      I3 => \^q\(0),
      I4 => tx_data_OBUF_inst_i_2_n_0,
      I5 => p_1_in_0,
      O => tx_data_r_shift(23)
    );
\tx_data_r_shift[23]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tx_data_r_reg_n_0_[23]\,
      I1 => p_1_in_0,
      I2 => \tx_data_r_shift_reg_n_0_[22]\,
      O => \tx_data_r_shift[23]_i_2_n_0\
    );
\tx_data_r_shift[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tx_data_r_reg_n_0_[2]\,
      I1 => p_1_in_0,
      I2 => \tx_data_r_shift_reg_n_0_[1]\,
      O => \tx_data_r_shift[2]_i_1_n_0\
    );
\tx_data_r_shift[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tx_data_r_reg_n_0_[3]\,
      I1 => p_1_in_0,
      I2 => \tx_data_r_shift_reg_n_0_[2]\,
      O => \tx_data_r_shift[3]_i_1_n_0\
    );
\tx_data_r_shift[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tx_data_r_reg_n_0_[4]\,
      I1 => p_1_in_0,
      I2 => \tx_data_r_shift_reg_n_0_[3]\,
      O => \tx_data_r_shift[4]_i_1_n_0\
    );
\tx_data_r_shift[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tx_data_r_reg_n_0_[5]\,
      I1 => p_1_in_0,
      I2 => \tx_data_r_shift_reg_n_0_[4]\,
      O => \tx_data_r_shift[5]_i_1_n_0\
    );
\tx_data_r_shift[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tx_data_r_reg_n_0_[6]\,
      I1 => p_1_in_0,
      I2 => \tx_data_r_shift_reg_n_0_[5]\,
      O => \tx_data_r_shift[6]_i_1_n_0\
    );
\tx_data_r_shift[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tx_data_r_reg_n_0_[7]\,
      I1 => p_1_in_0,
      I2 => \tx_data_r_shift_reg_n_0_[6]\,
      O => \tx_data_r_shift[7]_i_1_n_0\
    );
\tx_data_r_shift[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tx_data_r_reg_n_0_[8]\,
      I1 => p_1_in_0,
      I2 => \tx_data_r_shift_reg_n_0_[7]\,
      O => \tx_data_r_shift[8]_i_1_n_0\
    );
\tx_data_r_shift[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tx_data_r_reg_n_0_[9]\,
      I1 => p_1_in_0,
      I2 => \tx_data_r_shift_reg_n_0_[8]\,
      O => \tx_data_r_shift[9]_i_1_n_0\
    );
\tx_data_r_shift_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => '1',
      D => \tx_data_r_shift[0]_i_1_n_0\,
      Q => \tx_data_r_shift_reg_n_0_[0]\,
      R => '0'
    );
\tx_data_r_shift_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => tx_data_r_shift(23),
      D => \tx_data_r_shift[10]_i_1_n_0\,
      Q => \tx_data_r_shift_reg_n_0_[10]\,
      R => '0'
    );
\tx_data_r_shift_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => tx_data_r_shift(23),
      D => \tx_data_r_shift[11]_i_1_n_0\,
      Q => \tx_data_r_shift_reg_n_0_[11]\,
      R => '0'
    );
\tx_data_r_shift_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => tx_data_r_shift(23),
      D => \tx_data_r_shift[12]_i_1_n_0\,
      Q => \tx_data_r_shift_reg_n_0_[12]\,
      R => '0'
    );
\tx_data_r_shift_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => tx_data_r_shift(23),
      D => \tx_data_r_shift[13]_i_1_n_0\,
      Q => \tx_data_r_shift_reg_n_0_[13]\,
      R => '0'
    );
\tx_data_r_shift_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => tx_data_r_shift(23),
      D => \tx_data_r_shift[14]_i_1_n_0\,
      Q => \tx_data_r_shift_reg_n_0_[14]\,
      R => '0'
    );
\tx_data_r_shift_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => tx_data_r_shift(23),
      D => \tx_data_r_shift[15]_i_1_n_0\,
      Q => \tx_data_r_shift_reg_n_0_[15]\,
      R => '0'
    );
\tx_data_r_shift_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => tx_data_r_shift(23),
      D => \tx_data_r_shift[16]_i_1_n_0\,
      Q => \tx_data_r_shift_reg_n_0_[16]\,
      R => '0'
    );
\tx_data_r_shift_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => tx_data_r_shift(23),
      D => \tx_data_r_shift[17]_i_1_n_0\,
      Q => \tx_data_r_shift_reg_n_0_[17]\,
      R => '0'
    );
\tx_data_r_shift_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => tx_data_r_shift(23),
      D => \tx_data_r_shift[18]_i_1_n_0\,
      Q => \tx_data_r_shift_reg_n_0_[18]\,
      R => '0'
    );
\tx_data_r_shift_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => tx_data_r_shift(23),
      D => \tx_data_r_shift[19]_i_1_n_0\,
      Q => \tx_data_r_shift_reg_n_0_[19]\,
      R => '0'
    );
\tx_data_r_shift_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => tx_data_r_shift(23),
      D => \tx_data_r_shift[1]_i_1_n_0\,
      Q => \tx_data_r_shift_reg_n_0_[1]\,
      R => '0'
    );
\tx_data_r_shift_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => tx_data_r_shift(23),
      D => \tx_data_r_shift[20]_i_1_n_0\,
      Q => \tx_data_r_shift_reg_n_0_[20]\,
      R => '0'
    );
\tx_data_r_shift_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => tx_data_r_shift(23),
      D => \tx_data_r_shift[21]_i_1_n_0\,
      Q => \tx_data_r_shift_reg_n_0_[21]\,
      R => '0'
    );
\tx_data_r_shift_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => tx_data_r_shift(23),
      D => \tx_data_r_shift[22]_i_1_n_0\,
      Q => \tx_data_r_shift_reg_n_0_[22]\,
      R => '0'
    );
\tx_data_r_shift_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => tx_data_r_shift(23),
      D => \tx_data_r_shift[23]_i_2_n_0\,
      Q => \tx_data_r_shift_reg_n_0_[23]\,
      R => '0'
    );
\tx_data_r_shift_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => tx_data_r_shift(23),
      D => \tx_data_r_shift[2]_i_1_n_0\,
      Q => \tx_data_r_shift_reg_n_0_[2]\,
      R => '0'
    );
\tx_data_r_shift_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => tx_data_r_shift(23),
      D => \tx_data_r_shift[3]_i_1_n_0\,
      Q => \tx_data_r_shift_reg_n_0_[3]\,
      R => '0'
    );
\tx_data_r_shift_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => tx_data_r_shift(23),
      D => \tx_data_r_shift[4]_i_1_n_0\,
      Q => \tx_data_r_shift_reg_n_0_[4]\,
      R => '0'
    );
\tx_data_r_shift_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => tx_data_r_shift(23),
      D => \tx_data_r_shift[5]_i_1_n_0\,
      Q => \tx_data_r_shift_reg_n_0_[5]\,
      R => '0'
    );
\tx_data_r_shift_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => tx_data_r_shift(23),
      D => \tx_data_r_shift[6]_i_1_n_0\,
      Q => \tx_data_r_shift_reg_n_0_[6]\,
      R => '0'
    );
\tx_data_r_shift_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => tx_data_r_shift(23),
      D => \tx_data_r_shift[7]_i_1_n_0\,
      Q => \tx_data_r_shift_reg_n_0_[7]\,
      R => '0'
    );
\tx_data_r_shift_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => tx_data_r_shift(23),
      D => \tx_data_r_shift[8]_i_1_n_0\,
      Q => \tx_data_r_shift_reg_n_0_[8]\,
      R => '0'
    );
\tx_data_r_shift_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => tx_data_r_shift(23),
      D => \tx_data_r_shift[9]_i_1_n_0\,
      Q => \tx_data_r_shift_reg_n_0_[9]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity clk_wiz_0_clk_wiz_0_clk_wiz is
  port (
    axis_clk : out STD_LOGIC;
    clk_in1 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of clk_wiz_0_clk_wiz_0_clk_wiz : entity is "clk_wiz_0_clk_wiz";
end clk_wiz_0_clk_wiz_0_clk_wiz;

architecture STRUCTURE of clk_wiz_0_clk_wiz_0_clk_wiz is
  signal axis_clk_clk_wiz_0 : STD_LOGIC;
  signal clk_in1_clk_wiz_0 : STD_LOGIC;
  signal clkfbout_buf_clk_wiz_0 : STD_LOGIC;
  signal clkfbout_clk_wiz_0 : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKFBOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKFBSTOPPED_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKINSTOPPED_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT0B_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT1_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT1B_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT2_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT2B_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT3_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT3B_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT4_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT5_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT6_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_DRDY_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_LOCKED_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_PSDONE_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_DO_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of clkf_buf : label is "PRIMITIVE";
  attribute BOX_TYPE of clkin1_ibufg : label is "PRIMITIVE";
  attribute CAPACITANCE : string;
  attribute CAPACITANCE of clkin1_ibufg : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE : string;
  attribute IBUF_DELAY_VALUE of clkin1_ibufg : label is "0";
  attribute IFD_DELAY_VALUE : string;
  attribute IFD_DELAY_VALUE of clkin1_ibufg : label is "AUTO";
  attribute BOX_TYPE of clkout1_buf : label is "PRIMITIVE";
  attribute BOX_TYPE of mmcm_adv_inst : label is "PRIMITIVE";
begin
clkf_buf: unisim.vcomponents.BUFG
     port map (
      I => clkfbout_clk_wiz_0,
      O => clkfbout_buf_clk_wiz_0
    );
clkin1_ibufg: unisim.vcomponents.IBUF
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => clk_in1,
      O => clk_in1_clk_wiz_0
    );
clkout1_buf: unisim.vcomponents.BUFG
     port map (
      I => axis_clk_clk_wiz_0,
      O => axis_clk
    );
mmcm_adv_inst: unisim.vcomponents.MMCME2_ADV
    generic map(
      BANDWIDTH => "OPTIMIZED",
      CLKFBOUT_MULT_F => 48.625000,
      CLKFBOUT_PHASE => 0.000000,
      CLKFBOUT_USE_FINE_PS => false,
      CLKIN1_PERIOD => 10.000000,
      CLKIN2_PERIOD => 0.000000,
      CLKOUT0_DIVIDE_F => 35.875000,
      CLKOUT0_DUTY_CYCLE => 0.500000,
      CLKOUT0_PHASE => 0.000000,
      CLKOUT0_USE_FINE_PS => false,
      CLKOUT1_DIVIDE => 1,
      CLKOUT1_DUTY_CYCLE => 0.500000,
      CLKOUT1_PHASE => 0.000000,
      CLKOUT1_USE_FINE_PS => false,
      CLKOUT2_DIVIDE => 1,
      CLKOUT2_DUTY_CYCLE => 0.500000,
      CLKOUT2_PHASE => 0.000000,
      CLKOUT2_USE_FINE_PS => false,
      CLKOUT3_DIVIDE => 1,
      CLKOUT3_DUTY_CYCLE => 0.500000,
      CLKOUT3_PHASE => 0.000000,
      CLKOUT3_USE_FINE_PS => false,
      CLKOUT4_CASCADE => false,
      CLKOUT4_DIVIDE => 1,
      CLKOUT4_DUTY_CYCLE => 0.500000,
      CLKOUT4_PHASE => 0.000000,
      CLKOUT4_USE_FINE_PS => false,
      CLKOUT5_DIVIDE => 1,
      CLKOUT5_DUTY_CYCLE => 0.500000,
      CLKOUT5_PHASE => 0.000000,
      CLKOUT5_USE_FINE_PS => false,
      CLKOUT6_DIVIDE => 1,
      CLKOUT6_DUTY_CYCLE => 0.500000,
      CLKOUT6_PHASE => 0.000000,
      CLKOUT6_USE_FINE_PS => false,
      COMPENSATION => "ZHOLD",
      DIVCLK_DIVIDE => 6,
      IS_CLKINSEL_INVERTED => '0',
      IS_PSEN_INVERTED => '0',
      IS_PSINCDEC_INVERTED => '0',
      IS_PWRDWN_INVERTED => '0',
      IS_RST_INVERTED => '0',
      REF_JITTER1 => 0.010000,
      REF_JITTER2 => 0.010000,
      SS_EN => "FALSE",
      SS_MODE => "CENTER_HIGH",
      SS_MOD_PERIOD => 10000,
      STARTUP_WAIT => false
    )
        port map (
      CLKFBIN => clkfbout_buf_clk_wiz_0,
      CLKFBOUT => clkfbout_clk_wiz_0,
      CLKFBOUTB => NLW_mmcm_adv_inst_CLKFBOUTB_UNCONNECTED,
      CLKFBSTOPPED => NLW_mmcm_adv_inst_CLKFBSTOPPED_UNCONNECTED,
      CLKIN1 => clk_in1_clk_wiz_0,
      CLKIN2 => '0',
      CLKINSEL => '1',
      CLKINSTOPPED => NLW_mmcm_adv_inst_CLKINSTOPPED_UNCONNECTED,
      CLKOUT0 => axis_clk_clk_wiz_0,
      CLKOUT0B => NLW_mmcm_adv_inst_CLKOUT0B_UNCONNECTED,
      CLKOUT1 => NLW_mmcm_adv_inst_CLKOUT1_UNCONNECTED,
      CLKOUT1B => NLW_mmcm_adv_inst_CLKOUT1B_UNCONNECTED,
      CLKOUT2 => NLW_mmcm_adv_inst_CLKOUT2_UNCONNECTED,
      CLKOUT2B => NLW_mmcm_adv_inst_CLKOUT2B_UNCONNECTED,
      CLKOUT3 => NLW_mmcm_adv_inst_CLKOUT3_UNCONNECTED,
      CLKOUT3B => NLW_mmcm_adv_inst_CLKOUT3B_UNCONNECTED,
      CLKOUT4 => NLW_mmcm_adv_inst_CLKOUT4_UNCONNECTED,
      CLKOUT5 => NLW_mmcm_adv_inst_CLKOUT5_UNCONNECTED,
      CLKOUT6 => NLW_mmcm_adv_inst_CLKOUT6_UNCONNECTED,
      DADDR(6 downto 0) => B"0000000",
      DCLK => '0',
      DEN => '0',
      DI(15 downto 0) => B"0000000000000000",
      DO(15 downto 0) => NLW_mmcm_adv_inst_DO_UNCONNECTED(15 downto 0),
      DRDY => NLW_mmcm_adv_inst_DRDY_UNCONNECTED,
      DWE => '0',
      LOCKED => NLW_mmcm_adv_inst_LOCKED_UNCONNECTED,
      PSCLK => '0',
      PSDONE => NLW_mmcm_adv_inst_PSDONE_UNCONNECTED,
      PSEN => '0',
      PSINCDEC => '0',
      PWRDWN => '0',
      RST => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mute_controller is
  port (
    muted_OBUF : out STD_LOGIC;
    axis_tx_valid : out STD_LOGIC;
    axis_tx_last : out STD_LOGIC;
    tx_axis_s_ready_reg : out STD_LOGIC_VECTOR ( 0 to 0 );
    tx_axis_s_ready_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 23 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    enable_mute_IBUF : in STD_LOGIC;
    axis_clk : in STD_LOGIC;
    m_axis_tvalid_int_reg_0 : in STD_LOGIC;
    m_axis_tlast_reg_0 : in STD_LOGIC;
    axis_tx_ready : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 23 downto 0 )
  );
end mute_controller;

architecture STRUCTURE of mute_controller is
  signal \^axis_tx_last\ : STD_LOGIC;
  signal \^axis_tx_valid\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \tx_data_l[23]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \tx_data_r[23]_i_1\ : label is "soft_lutpair40";
begin
  axis_tx_last <= \^axis_tx_last\;
  axis_tx_valid <= \^axis_tx_valid\;
\m_axis_tdata_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => E(0),
      D => D(0),
      Q => Q(0),
      R => SR(0)
    );
\m_axis_tdata_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => E(0),
      D => D(10),
      Q => Q(10),
      R => SR(0)
    );
\m_axis_tdata_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => E(0),
      D => D(11),
      Q => Q(11),
      R => SR(0)
    );
\m_axis_tdata_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => E(0),
      D => D(12),
      Q => Q(12),
      R => SR(0)
    );
\m_axis_tdata_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => E(0),
      D => D(13),
      Q => Q(13),
      R => SR(0)
    );
\m_axis_tdata_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => E(0),
      D => D(14),
      Q => Q(14),
      R => SR(0)
    );
\m_axis_tdata_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => E(0),
      D => D(15),
      Q => Q(15),
      R => SR(0)
    );
\m_axis_tdata_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => E(0),
      D => D(16),
      Q => Q(16),
      R => SR(0)
    );
\m_axis_tdata_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => E(0),
      D => D(17),
      Q => Q(17),
      R => SR(0)
    );
\m_axis_tdata_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => E(0),
      D => D(18),
      Q => Q(18),
      R => SR(0)
    );
\m_axis_tdata_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => E(0),
      D => D(19),
      Q => Q(19),
      R => SR(0)
    );
\m_axis_tdata_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => E(0),
      D => D(1),
      Q => Q(1),
      R => SR(0)
    );
\m_axis_tdata_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => E(0),
      D => D(20),
      Q => Q(20),
      R => SR(0)
    );
\m_axis_tdata_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => E(0),
      D => D(21),
      Q => Q(21),
      R => SR(0)
    );
\m_axis_tdata_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => E(0),
      D => D(22),
      Q => Q(22),
      R => SR(0)
    );
\m_axis_tdata_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => E(0),
      D => D(23),
      Q => Q(23),
      R => SR(0)
    );
\m_axis_tdata_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => E(0),
      D => D(2),
      Q => Q(2),
      R => SR(0)
    );
\m_axis_tdata_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => E(0),
      D => D(3),
      Q => Q(3),
      R => SR(0)
    );
\m_axis_tdata_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => E(0),
      D => D(4),
      Q => Q(4),
      R => SR(0)
    );
\m_axis_tdata_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => E(0),
      D => D(5),
      Q => Q(5),
      R => SR(0)
    );
\m_axis_tdata_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => E(0),
      D => D(6),
      Q => Q(6),
      R => SR(0)
    );
\m_axis_tdata_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => E(0),
      D => D(7),
      Q => Q(7),
      R => SR(0)
    );
\m_axis_tdata_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => E(0),
      D => D(8),
      Q => Q(8),
      R => SR(0)
    );
\m_axis_tdata_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => E(0),
      D => D(9),
      Q => Q(9),
      R => SR(0)
    );
m_axis_tlast_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => '1',
      D => m_axis_tlast_reg_0,
      Q => \^axis_tx_last\,
      R => '0'
    );
m_axis_tvalid_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => '1',
      D => m_axis_tvalid_int_reg_0,
      Q => \^axis_tx_valid\,
      R => '0'
    );
muted_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_clk,
      CE => E(0),
      D => enable_mute_IBUF,
      Q => muted_OBUF,
      R => '0'
    );
\tx_data_l[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => axis_tx_ready,
      I1 => \^axis_tx_valid\,
      I2 => \^axis_tx_last\,
      O => tx_axis_s_ready_reg_0(0)
    );
\tx_data_r[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => axis_tx_ready,
      I1 => \^axis_tx_valid\,
      I2 => \^axis_tx_last\,
      O => tx_axis_s_ready_reg(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity clk_wiz_0 is
  port (
    axis_clk : out STD_LOGIC;
    clk_in1 : in STD_LOGIC
  );
end clk_wiz_0;

architecture STRUCTURE of clk_wiz_0 is
begin
inst: entity work.clk_wiz_0_clk_wiz_0_clk_wiz
     port map (
      axis_clk => axis_clk,
      clk_in1 => clk_in1
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity top_vhdl is
  port (
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    enable_mute : in STD_LOGIC;
    muted : out STD_LOGIC;
    tx_mclk : out STD_LOGIC;
    tx_lrck : out STD_LOGIC;
    tx_sclk : out STD_LOGIC;
    tx_data : out STD_LOGIC;
    rx_mclk : out STD_LOGIC;
    rx_lrck : out STD_LOGIC;
    rx_sclk : out STD_LOGIC;
    rx_data : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of top_vhdl : entity is true;
  attribute RESET_POLARITY : string;
  attribute RESET_POLARITY of top_vhdl : entity is "1'b0";
end top_vhdl;

architecture STRUCTURE of top_vhdl is
  signal axis_tx_last : STD_LOGIC;
  signal axis_tx_ready : STD_LOGIC;
  signal axis_tx_valid : STD_LOGIC;
  signal enable_mute_IBUF : STD_LOGIC;
  signal m_i2s2_n_3 : STD_LOGIC;
  signal m_i2s2_n_31 : STD_LOGIC;
  signal m_i2s2_n_4 : STD_LOGIC;
  signal m_i2s2_n_5 : STD_LOGIC;
  signal muted_OBUF : STD_LOGIC;
  signal reset_IBUF : STD_LOGIC;
  signal rx_data_IBUF : STD_LOGIC;
  signal rx_lrck_OBUF : STD_LOGIC;
  signal rx_mclk_OBUF : STD_LOGIC;
  signal rx_sclk_OBUF : STD_LOGIC;
  signal s_axis_tdata : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal tx_axis_s_data : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal tx_data_OBUF : STD_LOGIC;
  signal tx_data_l : STD_LOGIC;
  signal tx_data_r : STD_LOGIC;
  attribute syn_black_box : string;
  attribute syn_black_box of m_clk : label is "TRUE";
begin
enable_mute_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => enable_mute,
      O => enable_mute_IBUF
    );
m_clk: entity work.clk_wiz_0
     port map (
      axis_clk => rx_mclk_OBUF,
      clk_in1 => clk
    );
m_i2s2: entity work.axis_i2s2
     port map (
      D(23 downto 0) => s_axis_tdata(23 downto 0),
      E(0) => m_i2s2_n_5,
      Q(1) => rx_lrck_OBUF,
      Q(0) => rx_sclk_OBUF,
      SR(0) => m_i2s2_n_4,
      axis_clk => rx_mclk_OBUF,
      axis_tx_last => axis_tx_last,
      axis_tx_ready => axis_tx_ready,
      axis_tx_valid => axis_tx_valid,
      \din_sync_shift_reg[0]_0\(0) => rx_data_IBUF,
      enable_mute_IBUF => enable_mute_IBUF,
      reset_IBUF => reset_IBUF,
      rx_axis_m_last_reg_0 => m_i2s2_n_31,
      tx_axis_s_ready_reg_0 => m_i2s2_n_3,
      tx_data_OBUF => tx_data_OBUF,
      \tx_data_l_reg[23]_0\(0) => tx_data_l,
      \tx_data_l_reg[23]_1\(23 downto 0) => tx_axis_s_data(23 downto 0),
      \tx_data_r_reg[23]_0\(0) => tx_data_r
    );
m_mc: entity work.mute_controller
     port map (
      D(23 downto 0) => s_axis_tdata(23 downto 0),
      E(0) => m_i2s2_n_5,
      Q(23 downto 0) => tx_axis_s_data(23 downto 0),
      SR(0) => m_i2s2_n_4,
      axis_clk => rx_mclk_OBUF,
      axis_tx_last => axis_tx_last,
      axis_tx_ready => axis_tx_ready,
      axis_tx_valid => axis_tx_valid,
      enable_mute_IBUF => enable_mute_IBUF,
      m_axis_tlast_reg_0 => m_i2s2_n_31,
      m_axis_tvalid_int_reg_0 => m_i2s2_n_3,
      muted_OBUF => muted_OBUF,
      tx_axis_s_ready_reg(0) => tx_data_r,
      tx_axis_s_ready_reg_0(0) => tx_data_l
    );
muted_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => muted_OBUF,
      O => muted
    );
reset_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => reset,
      O => reset_IBUF
    );
rx_data_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => rx_data,
      O => rx_data_IBUF
    );
rx_lrck_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => rx_lrck_OBUF,
      O => rx_lrck
    );
rx_mclk_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => rx_mclk_OBUF,
      O => rx_mclk
    );
rx_sclk_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => rx_sclk_OBUF,
      O => rx_sclk
    );
tx_data_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => tx_data_OBUF,
      O => tx_data
    );
tx_lrck_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => rx_lrck_OBUF,
      O => tx_lrck
    );
tx_mclk_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => rx_mclk_OBUF,
      O => tx_mclk
    );
tx_sclk_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => rx_sclk_OBUF,
      O => tx_sclk
    );
end STRUCTURE;
