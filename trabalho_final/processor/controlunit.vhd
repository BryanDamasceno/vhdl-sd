-- Código principal
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity controlunit is

	generic
	(
		data_width16 : integer := 15
	);
	
    port (    
		
		-- Entradas externas para a controladora
	 
        CLOCK   : in    std_logic;
		 
			E : in std_logic;
		 
		 DT_TEMPO, DT_TEMP, DT_UMID, DT_INTER : in std_logic_vector (data_width16 downto 0);
		 -- Entradas do datapath para a controladora
		 
		 GT_TEMPORAL, LT_TEMPORAL, EQ_TEMPORAL, GT_SENSORES, LT_SENSORES, EQ_SENSORES : in std_logic;

		  -- Saídas da controladora para o datapath
		  
		 LD_TEMPERATURA, CL_TEMPERATURA, LD_UMIDADE, CL_UMIDADE, LD_TEMPO, CL_TEMPO, LD_INTERVALO, CL_INTERVALO : out std_logic;
		
		 SW1, SW2 : out std_logic;
			
		 EN_CONTADOR, RST_CONTADOR, EN_ROM : out std_logic;
			
		
		 ADD : out std_logic_vector (3 downto 0);
		 
		 -- Saídas da controladora para os elementos externos
		 
		 DISP_TEMPO : out std_logic_vector (data_width16 downto 0):= std_logic_vector(to_unsigned(0,16));	
		 DISP_TEMP	:out std_logic_vector (data_width16 downto 0):= std_logic_vector(to_unsigned(0,16));
		 DISP_UMID : out std_logic_vector (data_width16 downto 0):= std_logic_vector(to_unsigned(0,16));
		 DISP_INTER : out std_logic_vector (data_width16 downto 0) := std_logic_vector(to_unsigned(0,16));
		 ALARME, IRRIGA, ERROR : out std_logic;
		 
		 ESTADO : out std_logic_vector (4 downto 0)
		  
    );
end controlunit;


architecture behaviour of controlunit is

    type state is (S0, S1, S2, S3, S4, S5, S6, S7, S8, S9, S10, S11, S12,S13,S14,S15,S16,S17,S18, S19, S20);
	 type vetor is array (6 downto 0) of std_logic;
	 signal this_state, next_state: state;
	 		signal gt, eq, lt : vetor;

begin 

	 process (CLOCK) is
	
	 begin
	 
		if(rising_edge(CLOCK)) then
		
				this_state <= next_state;
				
		end if;
		end process;
			
		process (this_state, E, GT_TEMPORAL, LT_TEMPORAL, EQ_TEMPORAL, GT_SENSORES, LT_SENSORES, EQ_SENSORES, DT_TEMPO, DT_UMID, DT_TEMP) is
		
		variable cont : integer:= 0;
				
			begin

		case this_state is
		
			when S0 =>
			
			ESTADO <= "00000";
			LD_TEMPERATURA <= '0';
			LD_UMIDADE <= '0';
			LD_TEMPO <= '0';
			LD_INTERVALO <= '0';
			CL_TEMPERATURA <= '1';
			CL_UMIDADE <= '1';
			CL_TEMPO <= '1';
			CL_INTERVALO <= '1';
			SW1 <= '0';
			SW2 <= '0';
			EN_CONTADOR <= '0';
			EN_ROM <= '0';
			RST_CONTADOR <= '0';
			ALARME <= '0';
			IRRIGA <= '0';
			ERROR <= '0';
			ADD <= std_logic_vector (to_unsigned(0,4));
			
			if (E = '1') then	
			
				next_state <= S1;
				
			else
			
				next_state <= S0;
				
			end if;
			
			when S1 =>
			
			ESTADO <= "00001";
			LD_TEMPERATURA <= '0';
			LD_UMIDADE <= '0';
			LD_TEMPO <= '1';
			LD_INTERVALO <= '0';
			CL_TEMPERATURA <= '0';
			CL_UMIDADE <= '0';
			CL_TEMPO <= '0';
			CL_INTERVALO <= '0';
			SW1 <= '0';
			SW2 <= '0';
			EN_CONTADOR <= '0';
			EN_ROM <= '0';
			RST_CONTADOR <= '0';
			ALARME <= '0';
			IRRIGA <= '0';
			ERROR <= '0';
			ADD <= std_logic_vector (to_unsigned(0,4));
			next_state <= S2;
			
			when S2 =>			--Pode Dar Problema!!!!
				
				ESTADO <= "00010";
				LD_TEMPERATURA <= '1';
				LD_UMIDADE <= '1';
				LD_TEMPO <= '0';
				LD_INTERVALO <= '0';
				CL_TEMPERATURA <= '0';
				CL_UMIDADE <= '0';
				CL_TEMPO <= '0';
				CL_INTERVALO <= '0';
				SW1 <= '0';
				SW2 <= '0';
				EN_CONTADOR <= '0';
				EN_ROM <= '1';
				RST_CONTADOR <= '0';
				ALARME <= '0';
				IRRIGA <= '0';
				ERROR <= '0';				
			
				next_state <= S20;
			when S20 =>
				next_state <= S12;
				
			when S3 =>
			ESTADO <= "00011";	
			LD_TEMPERATURA <= '0';
			LD_UMIDADE <= '0';
			LD_TEMPO <= '0';
			LD_INTERVALO <= '0';
			CL_TEMPERATURA <= '0';
			CL_UMIDADE <= '0';
			CL_TEMPO <= '0';
			CL_INTERVALO <= '0';
			SW1 <= '0';
			SW2 <= '0';
			EN_CONTADOR <= '0';
			EN_ROM <= '0';
			RST_CONTADOR <= '0';
			ALARME <= '0';
			IRRIGA <= '0';
			ERROR <= '1';
			ADD <= std_logic_vector (to_unsigned(0,4));
			next_state <= S2;

			when S4 =>
			ESTADO <= "00100";
			LD_TEMPERATURA <= '0';
			LD_UMIDADE <= '0';
			LD_TEMPO <= '0';
			LD_INTERVALO <= '0';
			CL_TEMPERATURA <= '0';
			CL_UMIDADE <= '0';
			CL_TEMPO <= '0';
			CL_INTERVALO <= '0';
			SW1 <= '0';
			SW2 <= '0';
			EN_CONTADOR <= '0';
			EN_ROM <= '1';
			RST_CONTADOR <= '0';
			ALARME <= '1';
			IRRIGA <= '0';
			ERROR <= '0';
			
			ADD <= std_logic_vector (to_unsigned(8,4));
			LD_INTERVALO <= '1';
			next_state <= S9;
	
			
			when S5 =>
			ESTADO <= "00101";
			LD_TEMPERATURA <= '0';
			LD_UMIDADE <= '0';
			LD_TEMPO <= '0';
			LD_INTERVALO <= '0';
			CL_TEMPERATURA <= '0';
			CL_UMIDADE <= '0';
			CL_TEMPO <= '0';
			CL_INTERVALO <= '0';
			SW1 <= '0';
			SW2 <= '0';
			EN_CONTADOR <= '0';
			EN_ROM <= '1';
			RST_CONTADOR <= '0';
			ALARME <= '0';
			IRRIGA <= '0';
			ERROR <= '0';
			ADD <= std_logic_vector (to_unsigned(9,4));
			LD_INTERVALO <= '1';
			
			next_state <= S9;
				
			when S6 =>
			ESTADO <= "00110";
			LD_TEMPERATURA <= '0';
			LD_UMIDADE <= '0';
			LD_TEMPO <= '0';
			LD_INTERVALO <= '0';
			CL_TEMPERATURA <= '0';
			CL_UMIDADE <= '0';
			CL_TEMPO <= '0';
			CL_INTERVALO <= '0';
			SW1 <= '0';
			SW2 <= '0';
			EN_CONTADOR <= '0';
			EN_ROM <= '1';
			RST_CONTADOR <= '0';
			ALARME <= '0';
			IRRIGA <= '0';
			ERROR <= '0';
			ADD <= std_logic_vector (to_unsigned(10,4));
			LD_INTERVALO <= '1';
			
			next_state <= S9;

			when S7 =>
			ESTADO <= "00111";
			LD_TEMPERATURA <= '0';
			LD_UMIDADE <= '0';
			LD_TEMPO <= '0';
			LD_INTERVALO <= '0';
			CL_TEMPERATURA <= '0';
			CL_UMIDADE <= '0';
			CL_TEMPO <= '0';
			CL_INTERVALO <= '0';
			SW1 <= '0';
			SW2 <= '0';
			EN_CONTADOR <= '0';
			EN_ROM <= '1';
			RST_CONTADOR <= '0';
			ALARME <= '0';
			IRRIGA <= '0';
			ERROR <= '0';
			ADD <= std_logic_vector (to_unsigned(11,4));
			LD_INTERVALO <= '1';
			
			next_state <= S9;

			when S8 =>
			ESTADO <= "01000";
			LD_TEMPERATURA <= '0';
			LD_UMIDADE <= '0';
			LD_TEMPO <= '0';
			LD_INTERVALO <= '0';
			CL_TEMPERATURA <= '0';
			CL_UMIDADE <= '0';
			CL_TEMPO <= '0';
			CL_INTERVALO <= '0';
			SW1 <= '0';
			SW2 <= '0';
			EN_CONTADOR <= '0';
			EN_ROM <= '1';
			RST_CONTADOR <= '0';
			ALARME <= '1';
			IRRIGA <= '0';
			ERROR <= '0';
			ADD <= std_logic_vector (to_unsigned(12,4));
			LD_INTERVALO <= '1';
			
			next_state <= S9;

			when S9 =>
			ESTADO <= "01001";
			LD_TEMPERATURA <= '0';
			LD_UMIDADE <= '0';
			LD_TEMPO <= '0';
			LD_INTERVALO <= '0';
			CL_TEMPERATURA <= '0';
			CL_UMIDADE <= '0';
			CL_TEMPO <= '0';
			CL_INTERVALO <= '0';
			SW1 <= '0';
			SW2 <= '0';
			EN_CONTADOR <= '0';
			EN_ROM <= '0';
			RST_CONTADOR <= '1';
			ALARME <= '0';
			IRRIGA <= '0';
			ERROR <= '0';
			DISP_TEMPO <= DT_TEMPO;
			DISP_UMID <= DT_UMID;
			DISP_TEMP <= DT_TEMP;
			DISP_INTER <= DT_INTER;
			ADD <= std_logic_vector (to_unsigned(0,4));
			
			next_state <= S10;

			when S10 =>
			ESTADO <= "01010";
			LD_TEMPERATURA <= '0';
			LD_UMIDADE <= '0';
			LD_TEMPO <= '0';
			LD_INTERVALO <= '0';
			CL_TEMPERATURA <= '0';
			CL_UMIDADE <= '0';
			CL_TEMPO <= '0';
			CL_INTERVALO <= '0';
			SW1 <= '0';
			SW2 <= '0';
			EN_CONTADOR <= '1';
			EN_ROM <= '0';
			RST_CONTADOR <= '0';
			ALARME <= '0';
			IRRIGA <= '1';
			ERROR <= '0';
			ADD <= std_logic_vector (to_unsigned(0,4));
			
			if (LT_TEMPORAL = '1') then 
				next_state <= S10;
		
			elsif (GT_TEMPORAL = '1') then 
				next_state <= S11;
			
			else 
				next_state <= S10;
			end if;
			
			when S11 =>
			ESTADO <= "01011";
			LD_TEMPERATURA <= '0';
			LD_UMIDADE <= '0';
			LD_TEMPO <= '0';
			LD_INTERVALO <= '0';
			CL_TEMPERATURA <= '0';
			CL_UMIDADE <= '0';
			CL_TEMPO <= '0';
			CL_INTERVALO <= '0';
			SW1 <= '1';
			SW2 <= '0';
			EN_CONTADOR <= '1';
			EN_ROM <= '0';
			RST_CONTADOR <= '0';
			ALARME <= '0';
			IRRIGA <= '1';
			ERROR <= '0';
			ADD <= std_logic_vector (to_unsigned(0,4));
			
			if (LT_TEMPORAL = '1') then 
				next_state <= S11;
				
			elsif (GT_TEMPORAL = '1') then 
				next_state <= S1;
			
			else 
				next_state <= S11;
			end if;
			
			when S12 =>
			ESTADO <= "01100";
				SW2 <= '0';
				ADD <= std_logic_vector (to_unsigned(0,4)); --0
				cont := 1;
				eq(0) <= EQ_SENSORES;
				gt(0) <= GT_SENSORES;
				lt(0) <= LT_SENSORES;
				next_state <= S13;
			
			when S13 =>
			ESTADO <= "01101";
				SW2 <= '1';
				cont := 2;
				ADD <= std_logic_vector (to_unsigned(3,4)); --10 UMID
				eq(1) <= EQ_SENSORES;
				gt(1) <= GT_SENSORES;
				lt(1) <= LT_SENSORES;
				next_state <= S14;
				
			when S14 =>
			ESTADO <= "01110";
				SW2 <= '0';
				cont := 3;
				ADD <= std_logic_vector (to_unsigned(4,4)); --20
				eq(2) <= EQ_SENSORES;
				gt(2) <= GT_SENSORES;
				lt(2) <= LT_SENSORES;
				next_state <= S15;
			
			when S15 =>
				ESTADO <= "01111";
				SW2 <= '0';
				cont := 4;
				ADD <= std_logic_vector (to_unsigned(5,4)); --30
				eq(3) <= EQ_SENSORES;
				gt(3) <= GT_SENSORES;
				lt(3) <= LT_SENSORES;
				next_state <= S16;
				
			when S16 =>
			ESTADO <= "10000";
				ADD <= std_logic_vector (to_unsigned(6,4)); --40
				SW2 <= '0';
				cont := 5;
				eq(4) <= EQ_SENSORES;
				gt(4) <= GT_SENSORES;
				lt(4) <= LT_SENSORES;
				next_state <= S17;
				
			when S17 =>
			ESTADO <= "10001";
				SW2 <= '1';
				cont := 6;
				ADD <= std_logic_vector (to_unsigned(7,4)); --50 UMID
				eq(5) <= EQ_SENSORES;
				gt(5) <= GT_SENSORES;
				lt(5) <= LT_SENSORES;
				next_state <= S18;
				
			when S18 =>
			ESTADO <= "10010";
				SW2 <= '0';
				ADD <= std_logic_vector (to_unsigned(7,4)); --50 TEMP
				cont := 7;
				eq(6) <= EQ_SENSORES;
				gt(6) <= GT_SENSORES;
				lt(6) <= LT_SENSORES;	
				next_state <= S19;
			when S19 =>
				ESTADO <= "10011";
				if (gt(6) = '1' or lt(0)= '1' or lt(1)= '1') then
				next_state <= S3;
			elsif (lt(4)= '1' and gt(3)= '1' and lt(5)= '1') then 
				next_state <= S4;
			elsif (lt(4)= '1' and gt(3)= '1' and gt(5)= '1') then 
				next_state <= S5;
			elsif (lt(3)= '1' and gt(2)= '1' and gt(5)= '1') then 
				next_state <= S6;
			elsif (lt(2)= '1' and gt(5)= '1' and gt(0) = '1') then 
				next_state <= S7;
			elsif (lt(2)= '1'and lt(5)= '1' and gt(0) = '1') then 
				next_state <=  S8;
			else
				next_state <= S2;
			end if;
		end case;
		
	end process;
	
end behaviour;
