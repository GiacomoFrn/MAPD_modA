----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 16.11.2021 17:01:15
-- Design Name: 
-- Module Name: dff - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library ieee;
use ieee.std_logic_1164.all;
entity dff is
    port (
        clk : in std_logic;
        rst : in std_logic;
        d : in std_logic;
        q : out std_logic);
end entity dff;
architecture rtl of dff is
begin -- architecture rtl
    flipflop : process (clk) is
    begin -- process flipflop
        if rising_edge(clk) then -- rising clock edge
            if rst = '1' then
                q <= '0';
            else
                q <= d;
            end if;
        end if;
    end process flipflop;
end architecture rtl;

