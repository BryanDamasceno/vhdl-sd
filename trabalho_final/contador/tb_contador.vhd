library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_contador is 
end tb_contador;

architecture testbench of tb_contador is
		component contador is
		port
	(
		clock		  : in std_logic;
		reset_contador	  : in std_logic;
		enable_contador	  : in std_logic;
		count	  : out integer range 0 to 65535
	);
		end component;
signal clk, rst, e : std_logic := '0';
signal contagem : integer range 0 to 65535;
	
	-- Clock period definitions
 	constant PERIOD     : time := 10 3s;
  	constant DUTY_CYCLE : real := 0.5;
  	constant OFFSET     : time := 5 3s;

	begin
instance_contador : contador port map (clock => clk, reset_contador=>rst, enable_contador=>e, count =>contagem);

------------------------------------------------------------------------------------
----------------- processo para gerar o sinal de clock 
------------------------------------------------------------------------------------		

       PROCESS    -- clock process for clock
			 BEGIN
					WAIT for OFFSET;
					CLOCK_LOOP : LOOP
						clk <= '0';
						 WAIT FOR (PERIOD - (PERIOD * DUTY_CYCLE));
						clk <= '1';
						WAIT FOR (PERIOD * DUTY_CYCLE);
					END LOOP CLOCK_LOOP;
        END PROCESS;
		  
			rst <= '1', '0' after 10 ns;
			e <= '1';
end testbench;









