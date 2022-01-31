library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

entity reg_intervalo is
	generic (N : integer := 16);
	port (
	data_intervalo: in std_logic_vector (n-1 downto 0);
	reg_intervalo_ld,reg_intervalo_cl, clk: in std_logic;
	saida_intervalo: out std_logic_vector (n-1 downto 0)
);
end reg_intervalo;

architecture reg of reg_intervalo is
begin
process (clk)
begin
    if (rising_edge(clk) and reg_intervalo_ld = '1') then
         saida_intervalo <= data_intervalo;
    end if;
    if (reg_intervalo_cl = '1') then
	saida_intervalo <= std_logic_vector(to_unsigned(0,16));
	end if;
end process;
end reg;