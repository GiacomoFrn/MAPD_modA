----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 14.12.2021 17:42:10
-- Design Name: 
-- Module Name: tb_receiver - Behavioral
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

entity tb_receiver is
--  Port ( );
end tb_receiver;

architecture Behavioral of tb_receiver is
component receiver is
    Port (
        clk_rx: in std_logic;
        --uart_rx: in std_logic;
        --received_data: out std_logic_vector(7 downto 0)
        delayed_baud: out std_logic
         );
end component;

signal clk_s, out_s: std_logic;
begin

uut: receiver port map(clk_rx=>clk_s, delayed_baud=>out_s);

p_clk :  process
    begin
        clk_s <= '0'; wait for 0.5 ns; 
        clk_s <= '1'; wait for 0.5 ns;
end process;
end Behavioral;
