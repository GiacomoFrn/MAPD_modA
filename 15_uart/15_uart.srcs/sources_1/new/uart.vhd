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

entity uart is
    port(
       -- baudrate_out: in std_logic;
        clk  : in std_logic;
        data_in: in std_logic_vector(7 downto 0);
        valid: in std_logic;
        uart_tx: out std_logic_vector(7 downto 0));
end uart;

architecture rtl of uart is
    component baudrate is
        Port ( 
            clk_b: in std_logic;
            o_b  : out std_logic);
    end component;
    signal word: std_logic_vector(7 downto 0);
    type state_type is (DATA_IS_VALID, START, B0, B1, B2, B3, B4, B5, B6, B7, STOP, IDLE);
    signal state : state_type;
    signal baudrate_out: std_logic;
begin
    state <= IDLE;
    b: baudrate port map(clk_b=>clk, o_b=>baudrate_out);
    main: process(clk)
    begin 
    case state is
        when IDLE => 
        if valid = '1' then
            state <= DATA_IS_VALID;
            word <= data_in;
        end if;
        when DATA_IS_VALID =>
        if baudrate_out = '1' then
            state <= START;
        end if;
        when START =>
        if baudrate_out = '1' then
            state <= B0;
            uart_tx(7)<= word(7);
        end if; 
        when B0 =>
        if baudrate_out = '1' then
            state <= B1;
            uart_tx(6)<= word(6);
        end if;
        when B1 =>
        if baudrate_out = '1' then
            state <= B2;
            uart_tx(5)<= word(5);
        end if;
        when B2 =>
        if baudrate_out = '1' then
            state <= B3;
            uart_tx(4)<= word(4);
        end if;
        when B3 =>
        if baudrate_out = '1' then
            state <= B4;
            uart_tx(3)<= word(3);
        end if; 
        when B4 =>
        if baudrate_out = '1' then
            state <= B5;
            uart_tx(2)<= word(2);
        end if; 
        when B5 =>
        if baudrate_out = '1' then
            state <= B6;
            uart_tx(1)<= word(1);
        end if; 
        when B6 =>
        if baudrate_out = '1' then
            state <= B7;
            uart_tx(0)<= word(0);
        end if; 
        when B7 =>
        if baudrate_out = '1' then
            state <= STOP;
        end if;  
        when STOP =>
        if baudrate_out = '1' then
            state <= IDLE;
        end if; 
    end case;
    end process;

end rtl;
