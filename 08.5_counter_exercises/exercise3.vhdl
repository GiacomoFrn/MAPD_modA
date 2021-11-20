
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
           y_out: out std_logic_vector(3 downto 0));
end counter;

architecture rtl of counter is
signal counter: unsigned (27 downto 0); signal slow_clk, slow_clk_p:std_logic;
signal slow_counter: unsigned(1 downto 0);
begin
p_cnt: process(clk, rst) is
    begin 
    if rst = '1' then
        counter <= (others => '0');
        
     elsif rising_edge(clk) then
        counter <= counter +1;
     end if;
end process;
slow_clk <= counter(26);
p_slow_cnt: process(clk, rst, slow_clk) is
    begin
    if rst = '1' then
        slow_counter <= (others => '0');
    elsif rising_edge(clk) then
        slow_clk_p <= slow_clk;
        if slow_clk = '1' and slow_clk_p = '0' then
            slow_counter <= slow_counter +1;
        end if;
     end if;
end process;  
y_out <= slow_counter(1);

end rtl;
