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

entity tb_dff is
--  Port ( );
end tb_dff;

architecture Behavioral of tb_dff is

component dff is
    port (
        clk : in std_logic;
        rst : in std_logic;
        d : in std_logic;
        q : out std_logic);
end component;

signal clk, rst, d, q: std_logic;

begin
    uut: dff port map(clk=>clk, rst=>rst, d=>d, q=>q);
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
        d <= '0'; wait for 52 ns;
        d <= '1'; wait for 52 ns;
    end process;

end Behavioral;
