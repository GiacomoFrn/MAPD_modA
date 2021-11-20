library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity counter is
    Port ( clk:   in  std_logic;
           rst:   in  std_logic;
           sw0:   in  std_logic;
           sw1:   in  std_logic;
           sw2:   in  std_logic;
           sw3:   in  std_logic;
           y_out: out std_logic);
end counter;

architecture rtl of counter is
signal counter: unsigned (27 downto 0);
begin
p_cnt: process(clk, rst, sw0, sw1, sw3) is
    begin 
    
    if rst = '1' then
        counter <= (others => '0');
    elsif sw3 = '0' then    
        elsif rising_edge(clk) then
            if sw0 = '0' then
                counter <= counter +1;
            elsif sw0 = '1' then
                counter <= counter -1;
        elsif sw1 = '1' tehn
            if falling_edge(clk) then
                counter <= counter +1;
            end if;
        end if;
    end if;
end process;

p_hvs: process(sw2) is
    begin
    if sw2 = '0'
        y_out <= counter(26);
    else
        y_out <= counter(27);
    end if;
        

end rtl;
