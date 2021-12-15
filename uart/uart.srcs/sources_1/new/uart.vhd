library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity uart is
    port (
        input: in std_logic;
        clk: in std_logic;
        output: out std_logic );
end uart;

architecture Behavioral of uart is

component receiver is
    port (
        clk_rx: in std_logic;
        uart_rx: in std_logic;
        out_rx: out std_logic_vector(7 downto 0);
        valid: out std_logic
         );
end component;

component transmitter is
    port(
        clk  : in std_logic;
        data_in: in std_logic_vector(7 downto 0);
        valid: in std_logic;
        uart_tx: out std_logic);
end component;

signal receiver_out: std_logic_vector(7 downto 0);
signal valid_s, out_s: std_logic;

begin

r: receiver    port map(clk_rx=>clk, uart_rx=>input, out_rx=>receiver_out, valid=>valid_s);
t: transmitter port map(clk=>clk, data_in=>receiver_out, valid=>valid_s, uart_tx=>out_s);

main: process(clk)
begin
    output<=out_s;
end process;

end Behavioral;
