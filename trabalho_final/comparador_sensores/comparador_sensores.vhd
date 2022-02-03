library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
 
entity comparador_sensores is
  port (
      escolha2, data   : in std_logic_vector(15 downto 0);
      maior_sensores, igual_sensores, menor_sensores  : out std_logic
   );
end comparador_sensores ;
 
architecture comportamento of comparador_sensores is
begin

	maior_sensores <= '1' when (escolha2 > data)
	else '0';
	igual_sensores <= '1' when (escolha2 = data)
	else '0';
	menor_sensores <= '1' when (escolha2 < data)
	else '0';

end comportamento;
