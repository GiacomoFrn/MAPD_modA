library ieee;
use ieee.std_logic_1164.all;

entity patterndetect is
    port (
    a : in std_logic_vector(1 downto 0);
    clk : in std_logic;
    rst : in std_logic;
    y : out std_logic);
end entity patterndetect;
    
architecture rtl of patterndetect is

type state_t is (S0, S1, S2, S3, Detect);

signal state : state_t := S0;
signal a0_d: std_logic:= '0';
signal a1_d: std_logic:= '0';
signal a0_re: std_logic;
signal a1_re: std_logic;
begin -- architecture rtl
    main : process (clk) is
    begin -- process main
    if rising_edge(clk) then -- rising clock edge
        a0_d <= a(0);
        a0_re <= not a0_d and a(0); 
        a1_d <= a(1);
        a1_re <= not a1_d and a(1); 
        if rst = '1' then -- synchronous reset (active low)
            state <= S0;
            y <= '0';
        else
            case state is
                when S0 =>
                y <= '0';
                if a0_re = '1' then
                    state <= S1;
                end if;
                when S1 =>
                y <= '0';
                if a0_re = '1' then
                    state <= S1;
                elsif a1_re = '1' then
                    state <= S2;
                else
                    null;
                end if;
                when S2 =>
                y <= '0';
                if a0_re = '1' then
                    state <= S3;
                elsif a1_re = '1' then
                    state <= S0;
                else
                    null;
                end if;
                when S3 =>
                y <= '0';
                if a0_re = '1' then
                    state <= S1;
                elsif a1_re = '1' then
                    state <= Detect;
                else
                    null;
                end if;
                when Detect =>
                y <= '1';
                when others => null;
            end case;
        end if;
    end if;
end process main;
end architecture rtl;