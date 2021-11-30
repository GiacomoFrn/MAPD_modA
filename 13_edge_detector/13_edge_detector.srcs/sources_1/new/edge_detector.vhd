----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 30.11.2021 17:02:06
-- Design Name: 
-- Module Name: edge_detector - Behavioral
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

entity edge_detector is
    Port (
        i    : in std_logic;
        clk  : in std_logic;
        rst  : in std_logic;
        o    : out std_logic);
end edge_detector;

architecture rtl of edge_detector is
component sync is
    port (
        clk : in std_logic;
        rst : in std_logic;
        input : in std_logic;
        internal : out std_logic;
        sync_input : out std_logic);
end component;

signal internal_s : std_logic;
signal sync_input_s : std_logic;


begin
    s1: sync port map(clk => clk, rst => rst, input => i, internal => internal_s, sync_input => sync_input_s);
    o <=  internal_s xor sync_input_s;
end architecture rtl;
