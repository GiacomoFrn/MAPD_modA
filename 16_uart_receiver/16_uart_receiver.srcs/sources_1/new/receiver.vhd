library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity receiver is
    Port (
        clk_rx: in std_logic;
        --uart_rx: in std_logic;
        --received_data: out std_logic_vector(7 downto 0)
        delayed_baud: out std_logic
         );
end receiver;

architecture Behavioral of receiver is
component uart is
    port(
        clk  : in std_logic;
        data_in: in std_logic_vector(7 downto 0);
        valid: in std_logic;
        uart_tx: out std_logic;
        out_baud: out std_logic);
end component;
component baudrate is
        Port ( 
            clk_b: in std_logic;
            o_b  : out std_logic);
end component;

signal data_in_s: std_logic_vector(7 downto 0);
signal valid_s, baud_tx, baud_rx, uart_s: std_logic;
signal baud_d: std_logic:= '0';
signal baud_re: std_logic;

--signal delayed_baud: std_logic;

begin

--u: uart port map(clk=>clk_rx, data_in=>data_in_s , valid=>valid_s, uart_tx=>uart_s, out_baud=>baud_tx);
b: baudrate port map(clk_b=>clk_rx, o_b=>baud_rx);

delay: process(clk_rx)
variable flag: std_logic:= '0';
variable count: integer range 0 to 434;
begin 
    if rising_edge(clk_rx) then -- rising clock edge
        delayed_baud <= '0';
        baud_d <= baud_rx;
        baud_re <= not baud_d and baud_rx; 
        if baud_re = '1' then
            flag := '1';
        end if;
        if flag = '1' then
           count := count +1;
        end if;
        if count = 3 then
            flag := '0';
            count := 0;
            delayed_baud <= '1';
        end if;
    end if;
end process;

end Behavioral;
