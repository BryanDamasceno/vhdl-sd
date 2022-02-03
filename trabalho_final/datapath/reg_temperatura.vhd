library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

entity reg_temperatura is
	generic (N : integer := 16);
	port (
	data_temp: in std_logic_vector (n-1 downto 0);
	reg_temperatura_ld,reg_temperatura_cl, clk: in std_logic;
	saida_temperatura: out std_logic_vector (n-1 downto 0)
);
end reg_temperatura;

architecture reg of reg_temperatura is
begin
process (clk)
begin
    if (rising_edge(clk) and reg_temperatura_ld = '1') then
         saida_temperatura <= data_temp;
    end if;
	if (reg_temperatura_cl = '1') then
	saida_temperatura <= std_logic_vector(to_unsigned(0,16));
	end if;
end process;
end reg;