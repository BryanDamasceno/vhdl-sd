library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity reg_tempo is
	generic (N : integer := 16);
	port (
	data_tempo: in std_logic_vector (n-1 downto 0);
	reg_tempo_ld,reg_tempo_cl, clk: in std_logic;
	saida_tempo: out std_logic_vector (n-1 downto 0)
);
end reg_tempo;

architecture reg of reg_tempo is
begin
process (clk)
begin
    if (rising_edge(clk) and reg_tempo_ld = '1') then
         saida_tempo <= data_tempo;
    end if;
if (reg_tempo_cl = '1') then
	saida_tempo <= std_logic_vector(to_unsigned(0,16));
	end if;
end process;
end reg;