----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 23.11.2021 17:15:30
-- Design Name: 
-- Module Name: tb_synchronizing - Behavioral
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

entity tb_synchronizing is
--  Port ( );
end tb_synchronizing;

architecture Behavioral of tb_synchronizing is

component sync is
    port (
        clk : in std_logic;
        rst : in std_logic;
        input : in std_logic;
        internal : out std_logic;
        sync_input : out std_logic);
end component;

signal clk, input, internal, sync_input, rst : std_logic;

begin

    uut: sync port map(clk => clk, input => input, internal => internal, sync_input => sync_input, rst => rst);
    
    p_clk :  process
    begin
        clk <= '0'; wait for 12.5 ns; 
        clk <= '1'; wait for 12.5 ns;
    end process;
    
    p_input : process
    begin
        input <= '0'; wait for 43.0 ns;
        input <= '1'; wait for 75.0 ns;
        input <= '0'; wait for 43.0 ns;
        input <= '1'; wait for 50.0 ns;
    end process;
    
end Behavioral;
