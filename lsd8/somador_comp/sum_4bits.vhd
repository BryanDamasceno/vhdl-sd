LIBRARY ieee;
USE ieee.std_logic_1164.all;

entity sum_4bits is
    port ( cin : in std_logic;
           x   : in std_logic;
           y   : in std_logic;
           s   : out std_logic;
           cout : out std_logic
        );
end sum_4bits;

architecture RTL OF sum_4bits is
begin
	somador : process (x, y,cin) is
		begin
    		s <= x XOR y XOR cin;
    		cout <= (x AND y) OR (cin AND x) OR (cin AND y);
	end process;
end RTL ;