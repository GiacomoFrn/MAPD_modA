----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07.12.2021 16:42:29
-- Design Name: 
-- Module Name: tb_uart - Behavioral
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

entity tb_uart is
--  Port ( );
end tb_uart;

architecture Behavioral of tb_uart is

component uart is
   port(
       -- baudrate_out: in std_logic;
        clk  : in std_logic;
        data_in: in std_logic_vector(7 downto 0);
        valid: in std_logic;
        uart_tx: out std_logic;
        out_baud: out std_logic);
end component;

signal clk_s, valid_s, uart_tx_s, out_baud_s: std_logic;
signal data_in_s: std_logic_vector(7 downto 0):= "01100010";

begin
    uut: uart port map(clk=>clk_s, data_in=>data_in_s, valid=>valid_s, uart_tx=>uart_tx_s, out_baud=>out_baud_s);
    p_clk :  process
    begin
        clk_s <= '0'; wait for 0.5 ns; 
        clk_s <= '1'; wait for 0.5 ns;
    end process;
    
    p_valid : process
    begin 
        valid_s <= '0'; wait for 8.32 ns;
        valid_s <= '1'; wait for 0.2 ns;
        valid_s <= '0'; wait;
    end process;
    
end Behavioral;
