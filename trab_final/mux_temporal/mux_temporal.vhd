library ieee;
use ieee.std_logic_1164.all;

--- Multiplexador ---

entity mux_temporal is
	port (
			selecao1 : in std_logic;
			saida_tempo, saida_intervalo: in std_logic_vector (15 downto 0);
			escolha1 : out std_logic_vector (15 downto 0)
			);	
end mux_temporal;

architecture comportamento of mux_temporal is
	begin
		with selecao1 select
			escolha1 <= saida_tempo when '0',
						saida_intervalo when others;
						
end comportamento;

