----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09.11.2021 17:37:30
-- Design Name: 
-- Module Name: tb_top - Behavioral
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

entity tb_top is
--  Port ( );
end tb_top;

architecture Behavioral of tb_top is

component top is
    Port (btn_in: in std_logic_vector(1 downto 0);
          led_out: out std_logic );
end component;

signal btn0, btn1, led: std_logic;

begin

uut: top port map (btn_in(0) => btn0, btn_in(1) => btn1, led_out => led);

pl: process
    begin
        btn0 <= '0';
        btn1 <= '0';
        wait for 200 ns;
        btn0 <= '0';
        btn1 <= '1';
        wait for 200 ns;
        btn0 <= '1';
        btn1 <= '0';
        wait for 200 ns;
        btn0 <= '1';
        btn1 <= '1';
        wait for 200 ns;
    end process;
end Behavioral;
