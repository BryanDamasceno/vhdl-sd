library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_comparador is
end tb_comparador;

architecture testbench of tb_comparador is

	component comparador_sensores is 

	 port (
      		escolha2, data   : in std_logic_vector(15 downto 0);
      		maior_sensores, igual_sensores, menor_sensores  : out std_logic
   	      );
	end component;

signal e2, c: std_logic_vector(15 downto 0);
signal ma, me, ig: std_logic;

begin
	instance_comparador: comparador_sensores port map (escolha2 => e2, data=>c, maior_sensores=>ma, menor_sensores=>me,igual_sensores=>ig);
	e2 <= std_logic_vector(to_unsigned(3600, 16)), 
			std_logic_vector(to_unsigned(5000, 16)) after 5 ns, 
			std_logic_vector(to_unsigned(6000, 16)) after 10 ns;
	c <= std_logic_vector(to_unsigned(2000, 16)), 
			std_logic_vector(to_unsigned(5000, 16)) after 5 ns, 
			std_logic_vector(to_unsigned(7000, 16)) after 10 ns;

end testbench;