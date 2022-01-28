library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_mux is 
end tb_mux;

architecture testbench of tb_mux is
		component mux_temporal is
		port (
			selecao1 : in std_logic;
			saida_tempo, saida_intervalo: in std_logic_vector (15 downto 0);
			escolha1 : out std_logic_vector (15 downto 0)
			);
		end component;
		
		
signal selection : std_logic := '0';
signal tempo, intervalo, resultado : std_logic_vector (15 downto 0);

begin
instance_mux : mux_temporal port map (selecao1 => selection, saida_tempo => tempo, saida_intervalo=>intervalo, escolha1 => resultado);

tempo <= std_logic_vector(to_unsigned(3600, 16));
intervalo <= std_logic_vector(to_unsigned(7200, 16));


selection <= '0', '1' after 20 ns, '0' after 40 ns, '1' after 60 ns , '0' after 80 ns, '1' after 100 ns, '1' after 120 ns;

end testbench;








------------------------------------------------------------------------------------
----------------- processo para gerar o sinal de clock 
------------------------------------------------------------------------------------		
 --      PROCESS    -- clock process for clock
  --      BEGIN
   --         WAIT for OFFSET;
    --        CLOCK_LOOP : LOOP
     --           clk <= '0';
      --          WAIT FOR (PERIOD - (PERIOD * DUTY_CYCLE));
       --         clk <= '1';
        --        WAIT FOR (PERIOD * DUTY_CYCLE);
            --END LOOP CLOCK_LOOP;
        --END PROCESS;