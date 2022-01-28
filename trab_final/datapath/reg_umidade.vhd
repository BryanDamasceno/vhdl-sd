library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity reg_umidade is
	generic (N : integer := 16);
	port (
	data_umid: in std_logic_vector (n-1 downto 0);
	reg_umidade_ld,reg_umidade_cl, clk: in std_logic;
	saida_umidade: out std_logic_vector (n-1 downto 0)
);
end reg_umidade;

architecture reg of reg_umidade is
begin
process (clk)
begin
    if (rising_edge(clk) and reg_umidade_ld = '1') then
         saida_umidade <= data_umid;
    end if;
if (reg_umidade_cl = '1') then
	saida_umidade <= std_logic_vector(to_unsigned(0,16));
	end if;
end process;
end reg;