----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 16.11.2021 17:07:50
-- Design Name: 
-- Module Name: tb_dff - Behavioral
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


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity tb_tff is
--  Port ( );
end tb_tff;

architecture Behavioral of tb_tff is

component tff is
    port (
        clk : in std_logic;
        rst : in std_logic;
        t : in std_logic;
        q : out std_logic);
end component;

signal clk, rst, t, q: std_logic;

begin
    uut: tff port map(clk=>clk, rst=>rst, t=>t, q=>q);
    p_clk: process
    begin
        clk <= '0'; wait for 5 ns;
        clk <= '1'; wait for 5 ns;
    end process;
    p_rst: process
    begin
        rst <= '1'; wait for 70 ns;
        rst <= '0'; wait;
    end process;
    p_d: process
    begin
        t <= '0'; wait for 52 ns;
        t <= '1'; wait for 52 ns;
    end process;

end Behavioral;
