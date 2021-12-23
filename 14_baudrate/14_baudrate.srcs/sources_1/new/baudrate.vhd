----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 30.11.2021 17:52:00
-- Design Name: 
-- Module Name: baudrate - Behavioral
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

entity baudrate is
    Port ( 
        clk_b: in std_logic;
        o_b  : out std_logic
    );
end baudrate;



architecture rtl of baudrate is

signal count: integer range 0 to 868;

begin
    process(clk_b) is         
    begin
        if rising_edge(clk_b) then
            o_b <= '0';
            count <= count +1;
            if count = 868 then 
                o_b <= '1';
                count <= 0;
            end if;
         end if;
    end process;
end rtl;
