----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01.12.2021 13:00:22
-- Design Name: 
-- Module Name: tb_baudrate - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity tb_baudrate is
--  Port ( );
end tb_baudrate;

architecture Behavioral of tb_baudrate is
component baudrate is
    Port ( 
        clk: in std_logic;
        o  : out std_logic
    );
end component;

signal clk_s, o_s:std_logic;

begin
    uut: baudrate port map(clk=>clk_s, o=>o_s);
    p_clk: process
    begin
        clk_s <= '0'; wait for 10 ns;
        clk_s <= '1'; wait for 10 ns;
    end process;
end Behavioral;
