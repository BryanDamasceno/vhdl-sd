library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_FlipFlopD is 
end tb_FlipFlopD;

architecture testbench of tb_FlipFlopD is

component FlipFlopD is 
    port(
            clock: in std_logic;
				reset: in std_logic;
            D: in std_logic;
            Q: out std_logic
    );
end component;

constant period : time := 20 ns;
constant half_period : time := period/2;
signal clk,d, q : std_logic := '0';
signal rst : std_logic;

begin
instance_FlipFlopD: FlipFlopD port map (clock => clk, reset => rst, D => d, Q => q);

clk <= not clk after half_period;
rst <= '1', '0' after 5 ns;
d <= '0', '1' after 8 ns, '0' after 18 ns ,'1' after 48 ns, '0' after 58 ns, '1' after  88 ns;

end testbench;
