library ieee;
use ieee.std_logic_1164.all;

--- Multiplexador ---

entity mux_sensores is
	port (
			selecao2 : in std_logic;
			saida_temperatura, saida_umidade: in std_logic_vector (15 downto 0);
			escolha2 : out std_logic_vector (15 downto 0)
			);	
end mux_sensores;

architecture comportamento of mux_sensores is
	begin
		with selecao2 select
			escolha2 <= saida_umidade when '0',
						saida_temperatura when others;
						
end comportamento;

