library ieee;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

package fir_pkg is
       -- type coeff_array is array(natural range <>) of signed; --not supported in simulation
       type coeff_array is array(0 to 1) of signed(2 downto 0);
       type t_data_pipe is array (0 to 1) of signed(3 downto 0);
end package;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.fir_pkg.ALL;


entity fir_tb is
--  Port ( );
end fir_tb;

architecture Behavioral of fir_tb is

component fir_filter is
generic(
        N_TAPS     : integer:=2; -- number of data to store in memory to perform filter operation
        DATA_WIDTH : integer:=4; -- bit width of data
        COEFF_WIDTH: integer:=3; -- bit width of coeff
        SCALING    : integer:=1  -- scaling factor for coefficients -> should be coeff_width -1 if coeff in (-1,1)
    );
    port (
        i_clk   : in  std_logic;
        i_valid : in  std_logic;
        --i_coeff : in  coeff_array(0 to N_TAPS-1)(COEFF_WIDTH -1 downto 0);
        i_coeff : in  coeff_array;
        s_data    : inout t_data_pipe:= (others => (others => '0'));
        i_data  : in  std_logic_vector(DATA_WIDTH -1 downto 0);
        o_data  : out std_logic_vector(DATA_WIDTH -1 downto 0);
        s_add_1   : inout signed(COEFF_WIDTH+DATA_WIDTH+1 downto 0):= (others => '0');
        flag: out std_logic
    );
end component;

signal i_clk, i_valid: std_logic;

signal coeff_0: integer:=1;
signal coeff_1: integer:=1;

signal coeff_s: coeff_array:=( to_signed(coeff_0,3),
                               to_signed(coeff_1,3));
                               
signal o_data: std_logic_vector(3 downto 0):=(others=> '0');
signal i_data: std_logic_vector(3 downto 0):="0001";

signal s_data    : t_data_pipe;
signal flag :std_logic;
signal s_add_1   : signed(8 downto 0):= (others => '0');

signal n: integer:=-8;
signal signed_r: signed(4 downto 0);
signal signed_n: signed(4 downto 0):=to_signed(-10,5);
signal signed_f: signed(2 downto 0):=to_signed(2,3);
signal vector_n: std_logic_vector(4 downto 0):=std_logic_vector(to_signed(-10,5));
signal abs_vector_n: std_logic_vector(4 downto 0):=std_logic_vector(abs(to_signed(-8,5)));
signal test:std_logic;  
signal sum_vector: signed(5 downto 0);                              
begin

uut: fir_filter port map(
                          i_clk => i_clk,
                          i_valid => i_valid,
                          i_coeff => coeff_s,
                          i_data => i_data,
                          o_data => o_data,
                          s_data => s_data,
                          flag => flag,
                          s_add_1 => s_add_1
                         );
p_test: process
variable signed_t: signed(7 downto 0);
variable signed_div: signed(5 downto 0);
begin
    signed_t:= abs(signed_n*signed_f);
    signed_div:= (5 downto 4 => signed_n(4))&signed_n(4 downto 1);
    sum_vector <= signed_div;
    --test <= signed_t(4);
    if(signed_t(4)='1' and (signed_n(4)='1' or signed_f(2)='1')) then
        signed_r<=(4 downto 0 => '1');
    elsif(signed_t(4)='1') then
       signed_r<="01111";
     else
        signed_r<=resize(signed_n*signed_f,5);
    end if;
    wait for 25 ns;
end process;    
 
p_clk :  process
begin
    i_clk <= '0'; wait for 5 ns; 
    i_clk <= '1'; wait for 5 ns;
end process;

p_valid :  process
begin
    i_valid <= '0'; wait for 15 ns; 
    i_valid <= '1'; wait;
end process;

end Behavioral;
