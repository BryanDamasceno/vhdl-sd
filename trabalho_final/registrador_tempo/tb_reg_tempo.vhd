library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

entity tb_reg_tempo is
end tb_reg_tempo;

architecture testbench of tb_reg_tempo is

		component reg_tempo is

	port (
	data_tempo: in std_logic_vector (15 downto 0);
	reg_tempo_ld,reg_tempo_cl, clk: in std_logic;
	saida_tempo: out std_logic_vector (15 downto 0)
		);
		end component;
		
signal ld, cl, clock : std_logic := '0';
signal dt, sd : std_logic_vector (15 downto 0);
constant PERIOD     : time := 10 ns;
constant DUTY_CYCLE : real := 0.5;
constant OFFSET     : time := 5 ns;

begin
instance_reg: reg_tempo port map (data_tempo => dt, saida_tempo=> sd, reg_tempo_ld=>ld, reg_tempo_cl=>cl, clk=>clock);
------------------------------------------------------------------------------------
----------------- processo para gerar o sinal de clock 
------------------------------------------------------------------------------------		

       PROCESS    -- clock process for clock
			 BEGIN
					WAIT for OFFSET;
					CLOCK_LOOP : LOOP
						clock <= '0';
						 WAIT FOR (PERIOD - (PERIOD * DUTY_CYCLE));
						clock <= '1';
						WAIT FOR (PERIOD * DUTY_CYCLE);
					END LOOP CLOCK_LOOP;
        END PROCESS;

ld <= '0', '1' after 20 ns, '0' after 40 ns, '1' after 70 ns;
cl <= '1', '0' after 15 ns, '1' after 80 ns;
dt <= std_logic_vector(to_unsigned(30,16)), std_logic_vector(to_unsigned(42,16)) after 50 ns;

end testbench;
