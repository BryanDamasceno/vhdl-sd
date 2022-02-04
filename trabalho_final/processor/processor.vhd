library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity processor is

	generic
	(
		data_width16 : integer := 15
	);
	
    port (     
	 
			CLOCK_P							: in std_logic;
	 
		-- Entradas do dataPath
		
		DT_UMID_P, DT_TEMP_P, DT_TEMPO_P: in std_logic_vector (data_width16 downto 0);
		
		-- Entradas externar para o controlunit
			
			E_P : in std_logic;
		 
		
		-- Saídas do dataPath
		
		-- Saídas do controlunit
		
		  DISP_TEMPO_P, DISP_TEMP_P, DISP_UMID_P, DISP_INTER_P : out std_logic_vector (data_width16 downto 0):= std_logic_vector(to_unsigned(0,16));
		 
		 ALARME_P, IRRIGA_P, ERROR_P : out std_logic;
		 GT_TEMPORAL_P1, LT_TEMPORAL_P1, EQ_TEMPORAL_P1, GT_SENSORES_P1, LT_SENSORES_P1, EQ_SENSORES_P1 :  out std_logic;
		 ESTADO_P : out std_logic_vector (4 downto 0)
    );
	 
end processor;
architecture behaviour of processor is

	 --- Saidas do controlunit para o DataPath
		signal LD_TEMPERATURA_P, CL_TEMPERATURA_P, LD_UMIDADE_P, CL_UMIDADE_P, LD_TEMPO_P, CL_TEMPO_P, LD_INTERVALO_P, CL_INTERVALO_P : std_logic;
		
		signal SW1_P, SW2_P : std_logic;
			
		signal EN_CONTADOR_P, RST_CONTADOR_P, EN_ROM_P : std_logic;
			
		signal ADD_P: std_logic_vector (3 downto 0);

--- Saidas do datapath para o controlunit

		signal GT_TEMPORAL_P, LT_TEMPORAL_P, EQ_TEMPORAL_P, GT_SENSORES_P, LT_SENSORES_P, EQ_SENSORES_P :  std_logic;
		signal DT_INTER_S : std_logic_vector (15 downto 0);

--- Sinais restantes	da controladora


--- Sinais restantes	do Data_Path

--- Sinal de Clock
component datapath is

		generic
	(
		data_width16 : integer := 15
	);
	
    port (     
	 
        clock   : in    std_logic; -- clock input		
		  
		  -- Entradas externas para datapath
		  DT_UMID, DT_TEMP, DT_TEMPO : in std_logic_vector (data_width16 downto 0);
		  -- Entradas da Controladora para datapah
			
			LD_TEMPERATURA, CL_TEMPERATURA, LD_UMIDADE, CL_UMIDADE, LD_TEMPO, CL_TEMPO, LD_INTERVALO, CL_INTERVALO : in std_logic;
			
			SW1, SW2 : in std_logic;
			
			EN_CONTADOR, RST_CONTADOR, EN_ROM : in std_logic;
			
			
			ADD : in std_logic_vector (3 downto 0);
			
		  -- Saídas do datapth para controladora
			DT_INTER : out std_logic_vector (data_width16 downto 0);
			GT_TEMPORAL, LT_TEMPORAL, EQ_TEMPORAL, GT_SENSORES, LT_SENSORES, EQ_SENSORES: out std_logic
			
		  -- Saídas do datapath para fora		  
		  
    );

	 
end component;

component controlunit is

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
	 
end component;


begin

GT_SENSORES_P1 <= GT_SENSORES_P;
LT_SENSORES_P1 <= LT_SENSORES_P;
EQ_SENSORES_P1 <= EQ_SENSORES_P;

CONTROL: controlunit 	port map (CLOCK=>CLOCK_P, E=>E_P, DT_TEMPO=>DT_TEMPO_P, DT_TEMP=>DT_TEMP_P, DT_UMID=>DT_UMID_P, DT_INTER=>DT_INTER_S, GT_TEMPORAL=>GT_TEMPORAL_P, 
											LT_TEMPORAL=>LT_TEMPORAL_P, EQ_TEMPORAL=>EQ_TEMPORAL_P, GT_SENSORES=>GT_SENSORES_P, 
											LT_SENSORES=>LT_SENSORES_P, EQ_SENSORES=> EQ_SENSORES_P, LD_TEMPERATURA=>LD_TEMPERATURA_P, 
											CL_TEMPERATURA=>CL_TEMPERATURA_P, LD_TEMPO=>LD_TEMPO_P, 
											CL_TEMPO=> CL_TEMPO_P, LD_INTERVALO=> LD_INTERVALO_P, CL_INTERVALO=>CL_INTERVALO_P,
											LD_UMIDADE=>LD_UMIDADE_P, CL_UMIDADE=>CL_UMIDADE_P, SW1=>SW1_P, SW2=>SW2_P, 
											EN_CONTADOR => EN_CONTADOR_P, RST_CONTADOR=> RST_CONTADOR_P, EN_ROM=> EN_ROM_P, 
											ADD=> ADD_P, DISP_TEMPO=>DISP_TEMPO_P, DISP_TEMP => DISP_TEMP_P, DISP_UMID=> DISP_UMID_P, DISP_INTER=>DISP_INTER_P,
											ALARME=> ALARME_P, IRRIGA=> IRRIGA_P, ERROR=> ERROR_P, ESTADO=>ESTADO_P);

DATA: datapath     	port map  (CLOCK=> CLOCK_P, LD_TEMPERATURA=>LD_TEMPERATURA_P,
											CL_TEMPERATURA=>CL_TEMPERATURA_P, LD_TEMPO=>LD_TEMPO_P, 
											CL_TEMPO=> CL_TEMPO_P, LD_INTERVALO=> LD_INTERVALO_P, CL_INTERVALO=>CL_INTERVALO_P,
											LD_UMIDADE=>LD_UMIDADE_P, CL_UMIDADE=>CL_UMIDADE_P, SW1=>SW1_P, SW2=>SW2_P,
											EN_CONTADOR=> EN_CONTADOR_P, RST_CONTADOR=>RST_CONTADOR_P, EN_ROM => EN_ROM_P, DT_TEMPO=> DT_TEMPO_P,
											DT_TEMP => DT_TEMP_P, DT_UMID => DT_UMID_P,DT_INTER => DT_INTER_S, ADD=> ADD_P, GT_TEMPORAL=>GT_TEMPORAL_P,
											LT_TEMPORAL=>LT_TEMPORAL_P, EQ_TEMPORAL=>EQ_TEMPORAL_P, GT_SENSORES=>GT_SENSORES_P, 
											LT_SENSORES=>LT_SENSORES_P, EQ_SENSORES=> EQ_SENSORES_P);
													

end behaviour;