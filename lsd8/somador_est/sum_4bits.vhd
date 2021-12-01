LIBRARY ieee;
USE ieee.std_logic_1164.all;

entity adder is

port (cin, x, y : in std_logic; 
      s, cout : out std_logic
     );

end adder;

architecture somador of adder is
	begin
	comportamento : process (x, y,cin) is
	begin
    s <= x XOR y XOR cin;
    cout <= (x AND y) OR (cin AND x) OR (cin AND y);
	end process;

end architecture somador;

LIBRARY ieee;
USE ieee.std_logic_1164.all;

entity sum_4bits is -- Declaração da entidade

port(
	cin : in std_logic;
	 x  : in std_logic_vector  (3 downto 0); --Entrada do somador;
	 y  : in std_logic_vector  (3 downto 0); --Entrada do somador;
	 s  : out std_logic_vector (3 downto 0); --Soma das entradas;
	 cout : out std_logic
);

end sum_4bits;

architecture RTL OF sum_4bits is 

signal v : std_logic_vector (3 downto 1);

begin

x0: entity work.adder(somador) port map (x(0), y(0), cin, s(0), v(1));
x1: entity work.adder(somador) port map (x(1), y(1), v(1), s(1), v(2));
x2: entity work.adder(somador) port map (x(2), y(2), v(2), s(2), v(3));
x3: entity work.adder(somador) port map (x(3), y(3), v(3), s(3), cout);

end RTL;