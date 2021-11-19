--Version to show the ame thing in the real simulation

architecture Behavioral of tb_cmb_clk is
    Port (clk : in std_logic;
        rst : in std_logic;
        a_in : in std_logic;
        ab_in: in std_logic;
        cmb_out : out std_logic;
        ltch_out : out std_logic;
        ff_out : out std_logic);
end component;

signal clk,rst : std_logic; signal a,ab : std_logic; signal cmb,ltch,ff : std_logic; 

begin 
uut : cmb_clk port map (clk=> clk, rst => rst, a_in => a, ab_in => ab, cmb_out => cmb, ltch_out => ltch, ff_out => ff);

p_clk : process
begin
    clk <= '0'; wait for 5 ns; clk <= '1'; wait for 5 ns;
end process;

p_rst : process
begin
    rst <= '1'; wait for 15 ns; rst <= '0'; wait;
end process;

p_cmb : process
begin
    a <= '0';  
    wait for 50 ns:
    ab <= '1';  
    wait for 100 ns:
    a <= '1';  
    wait for 50 ns:
    ab <= '0';  
    wait for 100 ns:

end process;


end Behavioral ; -- Behatb_cmb_c
