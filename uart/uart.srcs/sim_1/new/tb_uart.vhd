library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_uart is
--  Port ( );
end tb_uart;

architecture Behavioral of tb_uart is

component uart is
    port (
        input: in std_logic;
        clk: in std_logic;
        output: out std_logic );
end component;

signal clk_s: std_logic;
signal input_s, output_s: std_logic;

begin

uut: uart port map(clk=>clk_s, input=>input_s, output=>output_s);

p_clk :  process
begin
    clk_s <= '0'; wait for 0.5 ns; 
    clk_s <= '1'; wait for 0.5 ns;
end process;

p_input: process
begin
    input_s <= '1'; wait for 13 ns; 
    input_s <= '0'; wait for 7 ns;
    input_s <= '1'; wait for 7 ns;
    input_s <= '1'; wait for 7 ns;
    input_s <= '0'; wait for 7 ns;
    input_s <= '1'; wait for 7 ns;
    input_s <= '0'; wait for 7 ns;
    input_s <= '0'; wait for 7 ns;
    input_s <= '0'; wait for 7 ns;
    input_s <= '1'; wait;
end process;

end Behavioral;
