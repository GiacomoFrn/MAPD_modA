library ieee;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

package fir_pkg is
        type coeff_array is array(natural range <>) of signed;
end package;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.fir_pkg.ALL;

entity fir_controller is
    generic(
        N_TAPS     : integer:=12; -- number of data to store in memory to perform filter operation
        DATA_WIDTH : integer:=24; -- bit width of data
        COEFF_WIDTH: integer:=24; -- bit width of coeff
        SCALING    : integer:=22  -- scaling factor for coefficients -> should be coeff_width -2(signed) if coeff in (-1,1)
    );
    Port (
       i_clk    : in std_logic;
       --aresetn : in std_logic;
       
       s_axis_tdata  : in std_logic_vector(DATA_WIDTH-1 downto 0);
       s_axis_tlast  : in std_logic;
       s_axis_tvalid : in std_logic;
       s_axis_tready : out std_logic;
       
       m_axis_tdata  : out std_logic_vector(DATA_WIDTH-1 downto 0);
       m_axis_tlast  : out std_logic;
       m_axis_tvalid : out std_logic;
       m_axis_tready : in std_logic
    );
end fir_controller;

architecture Behavioral of fir_controller is

    signal coeff_0: integer:=1969;
    signal coeff_1: integer:=211533;
    signal coeff_2: integer:= 132611;
    signal coeff_3: integer:=-779667;
    signal coeff_4: integer:=-638799;
    signal coeff_5: integer:=1052907;
    signal coeff_6: integer:=1052907;
    signal coeff_7: integer:=-638799;
    signal coeff_8: integer:=-779667;
    signal coeff_9: integer:= 132611;
    signal coeff_10: integer:=211533;
    signal coeff_11: integer:=1969;

    signal coeff_s: coeff_array:=( to_signed(coeff_0,24),
                                   to_signed(coeff_1,24),
                                   to_signed(coeff_2,24),
                                   to_signed(coeff_3,24),
                                   to_signed(coeff_4,24),
                                   to_signed(coeff_5,24),
                                   to_signed(coeff_6,24),
                                   to_signed(coeff_7,24),
                                   to_signed(coeff_8,24),
                                   to_signed(coeff_9,24),
                                   to_signed(coeff_10,24),
                                   to_signed(coeff_11,24));

    type t_data_pipe is array (0 to N_TAPS-1) of signed(DATA_WIDTH -1 downto 0); 
    type t_coeff is array (0 to N_TAPS-1) of signed(COEFF_WIDTH -1 downto 0); 
    type t_mult is array (0 to N_TAPS-1) of signed(COEFF_WIDTH+DATA_WIDTH-1 downto 0);    -- size[n*m] = size[m]*size[n]
    type t_add_0 is array (0 to N_TAPS/2 -1) of signed(COEFF_WIDTH+DATA_WIDTH downto 0);  -- size[n+m] = size[m]+size[n]+1
                           
    signal s_data    : t_data_pipe:= (others => (others => '0'));                    -- container for data
    signal s_mult    : t_mult:= (others => (others => '0'));                         -- container for coeff*data 
    signal s_add_0   : t_add_0:= (others => (others => '0'));                        -- container for first sum ( sum all pairs ) 
    signal s_add_1   : signed(COEFF_WIDTH+DATA_WIDTH+1 downto 0):= (others => '0');  -- container for second sum

    signal filtered_data: std_logic_vector(DATA_WIDTH-1 downto 0);

    signal m_axis_tvalid_int : std_logic;
    signal s_axis_tready_int : std_logic;

begin

    p_input : process (i_clk)
    begin
        if(rising_edge(i_clk) and s_axis_tvalid = '1') then -- insert new sample at the beginning, shift the others
           s_data <= signed(s_axis_tdata)&s_data(0 to s_data'length-2);
        end if;
   end process p_input;
   
   p_mult : process (i_clk) -- multiply data with the coefficients
   begin
        if(rising_edge(i_clk)) then 
            for k in 0 to N_TAPS-1 loop
                s_mult(k) <= s_data(k) * coeff_s(k); -- size bin casting is automatic
            end loop;
        end if;
   end process p_mult;
   
   p_add_0 : process (i_clk) -- sum - step 1
   begin
        if(rising_edge(i_clk)) then
            for k in 0 to N_TAPS/2-1 loop
                s_add_0(k) <= resize(s_mult(2*k), COEFF_WIDTH+DATA_WIDTH+1) + resize(s_mult(2*k+1), COEFF_WIDTH+DATA_WIDTH+1);
            end loop;
        end if;
   end process p_add_0;
   
   p_add_1 : process (i_clk) -- sum - step 2
   variable tmp: signed(COEFF_WIDTH+DATA_WIDTH+1 downto 0):= (others => '0');
   begin
        tmp := (others => '0');
        if(rising_edge(i_clk)) then 
            for k in 0 to N_TAPS/2-1 loop
                tmp := tmp + resize(s_add_0(k), COEFF_WIDTH+DATA_WIDTH+2);
            end loop;
            s_add_1 <= tmp;
        end if;
   end process p_add_1;
   
   p_output : process (i_clk) -- compute output
   begin
        if(rising_edge(i_clk)) then 
            filtered_data <= std_logic_vector(s_add_1(DATA_WIDTH-1+SCALING downto SCALING)); -- recal sign extension in signed type
        end if;
   end process p_output;

   s_axis_tready_int <= m_axis_tready or not m_axis_tvalid_int;
   m_axis_tvalid <= m_axis_tvalid_int;
   s_axis_tready <= s_axis_tready_int;

   axis_fir: process(i_clk)
   begin
    if rising_edge(i_clk) then
        if s_axis_tvalid = '1' then
           m_axis_tvalid_int <= '1';
        elsif m_axis_tready = '1' then
           m_axis_tvalid_int <= '0';
        end if;
        
        if s_axis_tvalid = '1' and s_axis_tready_int = '1' then
           m_axis_tlast <= s_axis_tlast;
            -- gain of 2
           m_axis_tdata <= filtered_data(DATA_WIDTH-2 downto 0)&'0';   
        end if;
    end if;    
   end process;

end Behavioral;
