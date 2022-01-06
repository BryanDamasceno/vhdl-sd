
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_textio.all;
use std.textio.all;
use ieee.numeric_std.all;
 
ENTITY tb_estimulo IS
END tb_estimulo;
 
ARCHITECTURE behavior OF tb_estimulo IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
component funcao 
	generic (constant W: integer := 3;
				constant M: integer := 7;
				constant D: integer := 9);
	port( A: in std_logic_vector(W downto 0);
	      Q: out std_logic_vector(D downto 0);
			clock : in std_logic;
			reset : in std_logic
	    );
end component;
    	type valores is array (3 downto 0) of integer;
	signal clk              : std_logic;
	signal rst              : std_logic;
	signal data_in          : std_logic_vector (3 downto 0);
	signal data_output      : std_logic_vector (9 downto 0);
	signal expected		: valores;
	constant max_value      : natural := 4;
	constant mim_value		: natural := 1;


   	signal read_data_in    : std_logic:='0';
   	signal flag_write      : std_logic:='0';   

   
   	file   inputs_data_in  : text open read_mode  is "data_in.txt";
   	file   outputs         : text open write_mode is "outputs.txt";
	file   outputs_comp    : text open write_mode is "outputs_comp.txt";


   	-- Clock period definitions
   	constant PERIOD     : time := 20 ns;
   	constant DUTY_CYCLE : real := 0.5;
   	constant OFFSET     : time := 5 ns;
 
BEGIN
        expected (0)  <= 52;
	expected (1) <= 100;
	expected (2) <= 112;
	expected (3) <= 72;
	-- Instantiate the Unit Under Test (UUT) or Design Under Test (DUT)
DUT: funcao
    port map(clock      => clk,
             reset        => rst,
	     A          => data_in,
             Q          => data_output);
		  
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

------------------------------------------------------------------------------------
----------------- processo para gerar o estimulo de reset
------------------------------------------------------------------------------------		
	sreset: process
	begin
		rst <= '1';
		for i in 1 to 4 loop
			wait until rising_edge(clk);
		end loop;
		rst <= '0'; 
		wait;	
	end process sreset;
	
	
------------------------------------------------------------------------------------
----------------- processo para leer os dados do arquivo data_in.txt
------------------------------------------------------------------------------------
read_inputs_data_in:process
		variable linea : line;
		variable input : std_logic_vector (3 downto 0);
	begin
	    wait until falling_edge(clk);
		while not endfile(inputs_data_in) loop
		      if read_data_in = '1' then
			     readline(inputs_data_in,linea);
				 read(linea,input);
				 data_in <= input;
			  end if;
			  wait for PERIOD;
		end loop;
		wait;
	end process read_inputs_data_in;	
	
------------------------------------------------------------------------------------
----------------- processo para gerar os estimulos de entrada
------------------------------------------------------------------------------------
	
   tb_stimulus : PROCESS
   BEGIN
        WAIT FOR (OFFSET + 3*PERIOD);
            read_data_in <= '1';		
			for i in mim_value to max_value loop
		        wait for PERIOD;
		    end loop;
            read_data_in <= '0';		
		WAIT;
   END PROCESS tb_stimulus;	
   
------------------------------------------------------------------------------------
------ processo para gerar os estimulos de escrita do arquivo de saida
------------------------------------------------------------------------------------   
   
    escreve_outputs : PROCESS
    BEGIN
         WAIT FOR (OFFSET + 4*PERIOD);
             flag_write <= '1';
			 for i in mim_value to max_value loop
		         wait for PERIOD;
		     end loop;
             flag_write <= '0';			
		 WAIT;
    END PROCESS escreve_outputs;   
   
-- ------------------------------------------------------------------------------------
-- ------ processo para escriber os dados de saida no arquivo .txt
-- ------------------------------------------------------------------------------------   
   
	 write_outputs:process
		 variable linea  : line;
		 variable output : std_logic_vector (9 downto 0);
	 begin
	     wait until clk ='0';
		 while true loop
			 if (flag_write ='1')then
				 output := data_output;
				 write(linea,output);
				 writeline(outputs,linea);
			end if;
			 wait for PERIOD;
		 end loop; 
	 end process write_outputs;
	write2_outputs:process
		 variable linea2  : line;
		 variable output2 : std_logic_vector (9 downto 0);
		 variable i : integer :=0;
	 begin
	     wait until clk ='0';
		 while true loop
			 if (flag_write ='1')then
				 output2 := data_output;
				 write(linea2,output2);
		                 assert expected(i) = to_integer(unsigned(output2))
					report "saida com problema";
				 writeline(outputs_comp,linea2);
			if (i < 4) then
			i := i+1;
			end if;
			end if;
			 wait for PERIOD;
		 end loop; 
	 end process write2_outputs;

END;
