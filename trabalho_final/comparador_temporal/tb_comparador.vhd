library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_comparador is
end tb_comparador;

architecture testbench of tb_comparador is

	component comparador_temporal is 

	 port (
      		escolha1, count   : in std_logic_vector(15 downto 0);
      		maior_temporal, igual_temporal, menor_temporal  : out std_logic
   	      );
	end component;

signal e1, c: std_logic_vector(15 downto 0);
signal ma, me, ig: std_logic;

begin
	instance_comparador: comparador_temporal port map (escolha1 => e1, count=>c, maior_temporal=>ma, menor_temporal=>me,igual_temporal=>ig);
	e1 <= std_logic_vector(to_unsigned(3600, 16)), 
			std_logic_vector(to_unsigned(5000, 16)) after 5 ns, 
			std_logic_vector(to_unsigned(6000, 16)) after 10 ns;
	c <= std_logic_vector(to_unsigned(2000, 16)), 
			std_logic_vector(to_unsigned(5000, 16)) after 5 ns, 
			std_logic_vector(to_unsigned(7000, 16)) after 10 ns;

end testbench;