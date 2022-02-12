library ieee;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

package fir_pkg is
        type coeff_array is array(natural range <>) of signed;
end package;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.fir_pkg.ALL;

entity axis_fir is
    port(
        i_clk: in std_logic;

        -- AXIS SLAVE INTERFACE 
        s_valid: in std_logic;
        s_data: in std_logic_vector(23 downto 0);
        s_ready: out std_logic :='1';
        s_last: in std_logic;

        -- AXIS MASTER INTERFACE
        m_valid: out std_logic :='0';
        m_data: out std_logic_vector(23 downto 0);
        m_ready: in std_logic;
        m_last: out std_logic :='0'
    );
end axis_fir;

architecture rtl of axis_fir is

constant N_TAPS     : integer:= 11;
constant DATA_WIDTH : integer:= 24;
constant COEFF_WIDTH: integer:= 24;
constant SCALING    : integer:= 23;

component fir_filter is
    generic(
        N_TAPS     : natural; -- number of data to store in memory to perform filter operation
        DATA_WIDTH : natural; -- bit width of data
        COEFF_WIDTH: natural; -- bit width of coeff
        SCALING    : natural  -- scaling factor for coefficients -> should be coeff_width -1 if coeff in (-1,1)
    );
    port (
        i_clk   : in  std_logic;
        i_valid : in  std_logic;
        i_coeff : in  coeff_array(0 to N_TAPS-1)(COEFF_WIDTH -1 downto 0);
        i_data  : in  std_logic_vector(DATA_WIDTH -1 downto 0);
        o_data  : out std_logic_vector(DATA_WIDTH -1 downto 0)
    );
end component;

signal valid_s : std_logic:='0';

signal o_data, i_data: std_logic_vector(DATA_WIDTH-1 downto 0);

signal coeff_0: integer:=160648;
signal coeff_1: integer:=424785;
signal coeff_2: integer:=-515097;
signal coeff_3: integer:=-2002118;
signal coeff_4: integer:=407843;
signal coeff_5: integer:=6150430;
signal coeff_6: integer:=3075215;
signal coeff_7: integer:=-2002118;
signal coeff_8: integer:=-515097;
signal coeff_9: integer:=424785;
signal coeff_10: integer:=160648;



--type t_coeff is array (0 to N_TAPS-1) of signed(COEFF_WIDTH -1 downto 0); 
signal coeff_s: coeff_array:=( to_signed(coeff_0,24),
                               to_signed(coeff_1,24),
                               to_signed(coeff_2,24),
                               to_signed(coeff_3,24),
                               to_signed(coeff_4,24),
                               to_signed(coeff_5,24),
                               to_signed(coeff_6,24),
                               to_signed(coeff_7,24),
                               to_signed(coeff_8,24),
                               to_signed(coeff_9,24),
                               to_signed(coeff_10,24));

signal m_select, m_new_word, m_new_packet: std_logic;
signal s_select, s_new_word, s_new_packet, s_new_packet_r: std_logic;

signal data_l: std_logic_vector(DATA_WIDTH -1 downto 0):= (others => '0');
signal data_r: std_logic_vector(DATA_WIDTH -1 downto 0):= (others => '0');


begin
    fir: fir_filter 
        generic map(
            N_TAPS => N_TAPS,
            DATA_WIDTH => DATA_WIDTH,
            COEFF_WIDTH => COEFF_WIDTH,
            SCALING => SCALING
        )
        port map(
            i_clk => i_clk,
            i_valid => valid_s,
            i_coeff => coeff_s,
            i_data => i_data,
            o_data => o_data
        );
    
    m_select <= m_last;
    m_new_word <= '1' when (m_valid='1' and m_ready='1') else '0';
    m_new_packet <= '1' when (m_new_word='1' and m_last='1') else '0';
    
    s_select <= s_last;
    s_new_word <= '1' when (s_valid='1' and s_ready='1') else '0';
    s_new_packet <= '1' when (s_new_word='1' and s_last='1') else '0';
    s_new_packet_r <= '0';
    
    p_axis0: process(i_clk)
    begin
        if(rising_edge(i_clk)) then
            valid_s <= s_valid;
            i_data  <= s_data;
            s_new_packet_r <= s_new_packet;
        end if;
    end process p_axis0;

    p_axis1: process(i_clk)
    variable index: std_logic_vector(1 downto 0);
    begin
        if(rising_edge(i_clk)) then
            if(s_new_word='1' and s_select='0') then
                data_l <= o_data;
            elsif(s_new_word='1' and s_select='1') then
                data_r <= o_data;
            end if;
        end if;
    end process p_axis1;
    
    p_axis2: process(i_clk)
    begin
        if(rising_edge(i_clk)) then
            if(s_new_packet='1') then
                m_valid <= '1';
            elsif(m_new_packet='1') then
                m_valid <= '0';
            end if;
        end if;
    end process ;

    p_axis3: process(i_clk)
    begin
        if(rising_edge(i_clk)) then
            if(m_new_packet='1') then
                m_last <= '0';
            elsif(m_new_word='1') then
                m_last <= '1';
            end if;
        end if;
    end process p_axis3;

    p_axis4: process(m_valid, s_new_packet_r, m_select)
    variable index: std_logic_vector(1 downto 0);
    begin
            if(m_valid='1') then
                if(m_new_packet='1' and m_select='0') then
                    m_data <= data_l;
                elsif(m_new_packet='1' and m_select='1') then
                    m_data <= data_r;
                else
                    m_data <= (others => '0');
                end if;
            end if;
    end process p_axis4;

    p_axis5: process(i_clk)
    begin
        if(rising_edge(i_clk)) then
            if(s_new_packet='1') then
                s_ready <= '0';
            elsif(m_new_packet='1') then
                s_ready <= '1';
            end if;
        end if;
    end process p_axis5;

end rtl;