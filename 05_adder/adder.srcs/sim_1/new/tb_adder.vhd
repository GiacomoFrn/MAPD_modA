----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10.11.2021 13:56:14
-- Design Name: 
-- Module Name: tb_adder - Behavioral
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

entity tb_adder is
--  Port ( );
end tb_adder;

architecture Behavioral of tb_adder is

component adder is
    Port(a_in   : in std_logic;
         b_in   : in std_logic;
         c_in   : in std_logic;
         y_out  : out std_logic;
         c_out  : out std_logic
         );
end component;

signal a, b, c, y_o, c_o : std_logic;

begin

    uut: adder port map(a_in => a, b_in => b, c_in => c, y_out => y_o, c_out => c_o);
    p_sum: process
    begin
        a <= '0'; b <= '0'; c <= '0'; wait for 25 ns;
        a <= '0'; b <= '0'; c <= '1'; wait for 25 ns;
        a <= '0'; b <= '1'; c <= '0'; wait for 25 ns;
        a <= '0'; b <= '1'; c <= '1'; wait for 25 ns;
        a <= '1'; b <= '0'; c <= '0'; wait for 25 ns;
        a <= '1'; b <= '0'; c <= '1'; wait for 25 ns;
        a <= '1'; b <= '1'; c <= '0'; wait for 25 ns;
        a <= '1'; b <= '1'; c <= '1'; wait for 25 ns;
     end process;

end Behavioral;
