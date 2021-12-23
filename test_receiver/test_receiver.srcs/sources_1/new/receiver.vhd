----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 15.12.2021 14:22:47
-- Design Name: 
-- Module Name: receiver - Behavioral
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

entity receiver is
    Port (
        clk_rx: in std_logic;
        uart_rx: in std_logic;
        --valid_rx: in std_logic;
        --received_data: out std_logic_vector(7 downto 0);
        --delayed_baud: out std_logic;
         out_rx: out std_logic_vector(7 downto 0);
         valid: out std_logic
         );
end receiver;

architecture Behavioral of receiver is

component baudrate is
        Port ( 
            clk_b: in std_logic;
            o_b  : out std_logic);
end component;

signal baud_d: std_logic:= '0';
signal baud_re, baud_rx: std_logic;
signal delayed_baud: std_logic;
type state_type is (COUNTING, STOP,IDLE);
signal state : state_type := IDLE;
signal out_rx_s: std_logic_vector(7 downto 0);

begin

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
        if count = 434 then
            flag := '0';
            count := 0;
            delayed_baud <= '1';
        end if;
    end if;
end process;

read: process(clk_rx)
variable count_read: integer range 0 to 9;
begin
    if rising_edge(clk_rx) then
        
        case state is
            when IDLE =>
            out_rx_s<= (others => '0');
            valid <= '0';
            if uart_rx = '0' then
                state <= COUNTING;
            end if;
            when COUNTING =>
            if delayed_baud = '1' then
                if count_read = 0 then
                    count_read := count_read+1;
                elsif count_read < 8 then
                    out_rx_s(count_read-1) <= uart_rx;
                    count_read := count_read+1;
                else
                    out_rx_s(count_read-1) <= uart_rx;
                    state <= STOP;
                    count_read := 0;
                end if;
            end if;
            when STOP =>
            if delayed_baud = '1' then
                state <= IDLE;
                valid <= '1';
                out_rx <= out_rx_s; 
            end if;
        end case;
    end if;
end process;

end Behavioral;
