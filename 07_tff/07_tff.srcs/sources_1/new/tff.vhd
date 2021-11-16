library ieee;
use ieee.std_logic_1164.all;
entity tff is
port (
    clk : in std_logic;
    rst : in std_logic;
    a : in std_logic;
    t : in std_logic;
    q : out std_logic);    
end entity tff;
architecture rtl of tff is
begin -- architecture rtl
    flipflop : process (clk) is
begin -- process flipflop
    if rising_edge(clk) then -- rising clock edge
        if rst = '1' then
            q <= '0';
        else
            q <= t xor q;
        end if;
    end if;
end process flipflop;
end architecture rtl;
