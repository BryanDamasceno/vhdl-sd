LIBRARY ieee;
USE ieee.std_logic_1164.all;

entity full_adder_4_bits is -- Declaração da entidade

port(
	cin : in std_logic;
	 x  : in std_logic_vector  (3 downto 0); --Entrada do somador;
	 y  : in std_logic_vector  (3 downto 0); --Entrada do somador;
	 s  : out std_logic_vector (3 downto 0); --Soma das entradas;
	 cout : out std_logic;
)

end full_adder_4_bits;

architecture RTL OF full_adder_4_bits is 

component adder 

port (
	x,y,cin : in std_logic;
	s,cout  : out std_logic
);

end component

signal v : std_logic_vector (3 downto 1);

begin

x0: adder port map (x(0), y(0), cin, s(0), v(1))
x1: adder port map (x(1), y(1), v(1), s(1), v(2))
x2: adder port map (x(2), y(2), v(2), s(2), v(3))
x3: adder port map (x(3), y(3), v(3), s(3), cout)

end RTL
