library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity mute_tb is
--  Port ( );
end mute_tb;

architecture Behavioral of mute_tb is

component mute_controller is
    Generic (
           DATA_WIDTH     : integer := 24
           
     );
    Port (
          aclk    : in std_logic;
          --aresetn : in std_logic;
          
          s_axis_tdata  : in std_logic_vector(DATA_WIDTH-1 downto 0);
          s_axis_tlast  : in std_logic;
          s_axis_tvalid : in std_logic;
          s_axis_tready : out std_logic;
          
          m_axis_tdata  : out std_logic_vector(DATA_WIDTH-1 downto 0);
          m_axis_tlast  : out std_logic;
          m_axis_tvalid : out std_logic;
          m_axis_tready : in std_logic;
          
          enable_mute : in std_logic;
          muted       : out std_logic;
          m_axis_tvalid_int : inout std_logic;
          s_axis_tready_int : inout std_logic;
          sending:out std_logic:='0'
     );
end component;

signal s_axis_tdata:std_logic_vector(23 downto 0):="010101010101010101010101";
signal m_axis_tdata: std_logic_vector(23 downto 0);
signal s_axis_tlast, s_axis_tvalid, s_axis_tready, m_axis_tlast, m_axis_tvalid, m_axis_tready,enable_mute, muted, aclk: std_logic;
signal m_axis_tvalid_int, s_axis_tready_int, sending:std_logic;
begin

uut: mute_controller port map(
       aclk => aclk,
       s_axis_tdata => s_axis_tdata,
       s_axis_tvalid => s_axis_tvalid,
       s_axis_tready => s_axis_tready,
       s_axis_tlast => s_axis_tlast,
       m_axis_tdata => m_axis_tdata,
       m_axis_tvalid => m_axis_tvalid,
       m_axis_tready => m_axis_tready,
       m_axis_tlast => m_axis_tlast,
       enable_mute=>enable_mute,
       muted=>muted,
       m_axis_tvalid_int=>m_axis_tvalid_int,
       s_axis_tready_int => s_axis_tready_int,
       sending=> sending
   );
   
p_valid: process
begin
    s_axis_tvalid <='0'; wait for 10 ns;
    s_axis_tvalid <='1'; wait for 80 ns;
end process;

p_ready: process
begin
    m_axis_tready <='0'; wait for 20 ns;
    m_axis_tready <='1'; wait for 50 ns;
end process;

p_last: process
begin
    s_axis_tlast <='0'; wait for 25 ns;
    s_axis_tlast <='1'; wait for 25 ns;
end process;

p_clk :  process
begin
    aclk <= '0'; wait for 5 ns; 
    aclk <= '1'; wait for 5 ns;
end process;

end Behavioral;
