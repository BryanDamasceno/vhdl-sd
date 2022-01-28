library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
 
entity comparador_temporal is
  port (
      escolha1, count   : in std_logic_vector(15 downto 0);
      maior_temporal, igual_temporal, menor_temporal  : out std_logic
   );
end comparador_temporal ;
 
architecture comportamento of comparador_temporal is
begin

	maior_temporal <= '1' when (escolha1 > count)
	else '0';
	igual_temporal <= '1' when (escolha1 = count)
	else '0';
	menor_temporal <= '1' when (escolha1 < count)
	else '0';

end comportamento;
