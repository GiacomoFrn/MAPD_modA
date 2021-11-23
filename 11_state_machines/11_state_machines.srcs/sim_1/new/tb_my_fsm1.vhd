----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 23.11.2021 17:39:31
-- Design Name: 
-- Module Name: tb_my_fsm1 - Behavioral
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

entity tb_my_fsm1 is
--  Port ( );
end tb_my_fsm1;

architecture Behavioral of tb_my_fsm1 is
component my_fsm1 is
    port (
    TOG_EN, CLK, CLR : in std_logic;
    Z1 : out std_logic);
end component;

signal TOG_EN, CLK, CLR, Z1 : std_logic;

begin

    uut: my_fsm1 port map(TOG_EN => TOG_EN, CLK => CLK, CLR => CLR, Z1 => Z1 );
    
    p_clk: process
    begin
        CLK <= '0'; wait for 50 ns;
        CLK <= '1'; wait for 50 ns;
    end process;
    
    p_clr: process
    begin
        CLR <= '1'; wait for 75 ns;
        CLR <= '0'; wait;
    end process;
    
    p_TOG_EN: process
    begin
        TOG_EN <= '0'; wait for 130 ns;
        TOG_EN <= '1'; wait for 125 ns;
    end process;
    
end Behavioral;
