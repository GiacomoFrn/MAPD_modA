----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01.12.2021 13:25:26
-- Design Name: 
-- Module Name: uart - Behavioral
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

entity transmitter is
    port(
       -- baudrate_out: in std_logic;
        clk  : in std_logic;
        data_in: in std_logic_vector(7 downto 0);
        valid: in std_logic;
        uart_tx: out std_logic);
end transmitter;

architecture rtl of transmitter is
    component baudrate is
        Port ( 
            clk_b: in std_logic;
            o_b  : out std_logic);
    end component;
    
    component sync is
        port (
            clk : in std_logic;
            rst : in std_logic;
            input : in std_logic;
            internal : out std_logic;
            sync_input : out std_logic);
    end component;
    
    signal word: std_logic_vector(7 downto 0);
    type state_type is (DATA_IS_VALID, START, B0, B1, B2, B3, B4, B5, B6, B7, STOP, IDLE);
    signal state : state_type := IDLE;
    
    signal baudrate_out: std_logic;
    signal valid_sync, rst, internal: std_logic;
begin
    --state <= IDLE;
    b: baudrate port map(clk_b=>clk, o_b=>baudrate_out);
    s: sync port map(clk=>baudrate_out, input=>valid, sync_input=>valid_sync, rst=>rst, internal=>internal);
    main: process(clk)
    begin 
    if(rising_edge(clk)) then
    case state is
        when IDLE => 
        uart_tx<= '1';
        if valid_sync = '1' then
            state <= DATA_IS_VALID;
            word <= data_in;
        end if;
        when DATA_IS_VALID =>
        if baudrate_out = '1' then
            state <= START;
            uart_tx<= '0';
        end if;
        when START =>
        if baudrate_out = '1' then
            state <= B0;
            uart_tx<= word(7);
        end if; 
        when B0 =>
        if baudrate_out = '1' then
            state <= B1;
            uart_tx<= word(6);
        end if;
        when B1 =>
        if baudrate_out = '1' then
            state <= B2;
            uart_tx<= word(5);
        end if;
        when B2 =>
        if baudrate_out = '1' then
            state <= B3;
            uart_tx<= word(4);
        end if;
        when B3 =>
        if baudrate_out = '1' then
            state <= B4;
            uart_tx<= word(3);
        end if; 
        when B4 =>
        if baudrate_out = '1' then
            state <= B5;
            uart_tx<= word(2);
        end if; 
        when B5 =>
        if baudrate_out = '1' then
            state <= B6;
            uart_tx<= word(1);
        end if; 
        when B6 =>
        if baudrate_out = '1' then
            state <= B7;
            uart_tx<= word(0);
        end if; 
        when B7 =>
        if baudrate_out = '1' then
            state <= STOP;
            uart_tx<= '1';
        end if;  
        when STOP =>
        if baudrate_out = '1' then
            state <= IDLE;
        end if; 
    end case;
    end if;
    end process;

end rtl;
