----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 23.11.2021 16:54:24
-- Design Name: 
-- Module Name: synchronizer - Behavioral
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
entity sync is
    port (
        clk : in std_logic;
        rst : in std_logic;
        input : in std_logic;
        internal : out std_logic;
        sync_input : out std_logic);
end sync;

architecture rtl of sync is
component dff is
    port (
        clk : in std_logic;
        rst : in std_logic;
        d : in std_logic;
        q : out std_logic);
end component;

signal y_d1_d2 : std_logic;

begin -- architecture rtl
d1: dff port map(clk => clk, d => input, q => y_d1_d2, rst => rst );
d2: dff port map(clk => clk, d => y_d1_d2, q => sync_input, rst => rst);
internal <= y_d1_d2;
end architecture rtl;

