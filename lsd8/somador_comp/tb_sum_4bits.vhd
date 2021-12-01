library IEEE;
use IEEE.STD_LOGIC_1164.all;
use ieee.numeric_std.all;

entity tb_sum_4bits is
end tb_sum_4bits;

architecture teste of tb_sum_4bits is


component sum_4bits is
      port ( cin : in std_logic;
           x   : in std_logic;
           y   : in std_logic;
           s   : out std_logic;
           cout : out std_logic
        );
end component;

signal x1, y1, s1 : std_logic := '0';
signal cin1 : std_logic := '0';
signal cout1 : std_logic := '0';

begin
instancia_sum_4bits: sum_4bits port map(x => x1, y => y1, s => s1, cin => cin1, cout => cout1);

cin1 <= '0';
x1 <= '0' ,'1' after 20 ns, '1' after 30 ns;
y1 <= '0' ,'1' after 30 ns;

end teste;