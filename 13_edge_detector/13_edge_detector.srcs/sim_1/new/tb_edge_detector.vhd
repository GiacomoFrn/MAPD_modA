----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 30.11.2021 17:18:55
-- Design Name: 
-- Module Name: tb_edge_detector - Behavioral
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

entity tb_edge_detector is
--  Port ( );
end tb_edge_detector;

architecture Behavioral of tb_edge_detector is

component edge_detector is
    Port (
        i    : in std_logic;
        clk  : in std_logic;
        rst  : in std_logic;
        o    : out std_logic
     );
end component;

signal clk_s, rst_s, i_s, o_s: std_logic;

begin
    uut: edge_detector port map(clk=>clk_s, rst=>rst_s, i=>i_s, o=>o_s);
    p_clk: process
    begin
        clk_s <= '0'; wait for 5 ns;
        clk_s <= '1'; wait for 5 ns;
    end process;
    p_input: process
    begin
        i_s <= '0'; wait for 52 ns;
        i_s <= '1'; wait for 52 ns;
        i_s <= '0'; wait;
    end process;

end Behavioral;
