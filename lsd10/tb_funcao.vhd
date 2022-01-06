
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_textio.all;
use std.textio.all;
use ieee.numeric_std.all;
 
entity tb_funcao is
end tb_funcao;
 
architecture teste of tb_funcao 
 
    
component funcao
	generic (constant W: integer := 3;
                                constant M: integer := 7;
                                constant D: integer := 9);
        port( A: in std_logic_vector(W downto 0);
              Q: out std_logic_vector(D downto 0)
            );

end component;
    
	
	signal data_in          : std_logic_vector(3 downto 0);
	signal data_output      : std_logic_vector(7 downto 0);
	constant max_value      : natural := 5;
	constant mim_value		: natural := 0;


   	signal read_data_in    : std_logic:='0';
   	signal flag_write      : std_logic:='0';   

   
   	file   inputs_data_in  : text open read_mode  is "arquivo.txt";
   	file   output1         : text open write_mode is "saida1.txt";
    file   output2		   : text open write_mode is "saida2.txt";

	type vetor_int is array (integer range <>) of integer;

	signal vetor  : vetor_int (0 to 5) := (28,48,72,88,52,2);
	constant msg_erro : string:= "ERRADO";
	constant msg_correto : string:= "CORRETO";

   	-- Clock period definitions
   	constant PERIOD     : time := 20 ns;
   	constant HALF_PERIOD: real := 10 ns;
   	constant OFFSET     : time := 25 ns;
 
BEGIN
	-- Instantiate the Unit Under Test (UUT) or Design Under Test (DUT)
DUT: funcao port map(x => data_in, y => data_output)
		  
------------------------------------------------------------------------------------
----------------- processo para ler os dados do arquivo data_in.txt
------------------------------------------------------------------------------------		
read_inputs_data_in: process
		variable linea : line;
		variable input : std_logic_vector(3 downto 0);

        begin
            wait for (PERIOD);
            while not endfile(inputs_data_in) loop
				if read_data_in = '1' then
				   readline(inputs_data_in,linea);
				   read(linea,input);
				   data_in <= input
				end if;
				wait for HALF_PERIOD;
			end loop;
			wait;
		end process read_inputs_data_in;  		    	

------------------------------------------------------------------------------------
----------------- processo para gerar o estimulo de entrada
------------------------------------------------------------------------------------		
	tb_stimulus: PROCESS
	begin
		wait for (PERIOD);
			 read_data_in <= '1';
		 for i in min_value to max_value loop
			  wait for PERIOD;
	    end loop;
		  read_data_in <= '0';
	   wait;	  		  		
	end process tb_stimulus;
	
	
------------------------------------------------------------------------------------
----------------- processo para gerar o estimulo de saida
------------------------------------------------------------------------------------
gera_output1 : PROCESS
begin
		wait for (PERIOD);
			 flag_write <= '1';
		 for i in min_value to max_value loop
			  wait for PERIOD;
	    end loop;
		  read_data_in <= '0';
	   wait;	  		  		
	end process gera_output1;
	
	
------------------------------------------------------------------------------------
----------------- processo para escrever dados de saida no "saida1.txt"
------------------------------------------------------------------------------------
	
  write_output1: PROCESS
     variable linea  : line;
     variable output : std_logic_vector(7 downto 0)
   begin
         wait for(OFFSET);
        while true loop
		   if (flag_write = '1') then
		   	  output := data_output;
		      write(linea, output) 
		      writeline(output1,linea);
		   end if
		   wait for HALF_PERIOD;
		end loop;    
   end process write_output1;	
   
------------------------------------------------------------------------------------
------ processo para escrever dados de saida no "saida2.txt"
------------------------------------------------------------------------------------   
   write_output2: PROCESS
	   variable linea  : line;
       variable output : std_logic_vector(7 downto 0);
	   variable aux_int : integer;

	begin
		wait for (OFFSET);
		  flag_write <= '1';
		    for i in mim_value to max_value loop
			  wait for HALF_PERIOD;
			  output := data_output;
			  aux_int := to_integer(unsigned(output));
			  	 if(vetor(i) /= aux_int) then
				   assert false report msg_erro severity note;
				   write(linea,msg_erro);
				   writeline(output2,linea);
				 else
				   assert false report msg_correto severity note;
				   write(linea,msg_correto);
				   writeline(output2,linea);
				 end if
			   end loop
			   flag_write <= '0';
			  wait;
	    end process write_output2;
	END	;	     
    
   
