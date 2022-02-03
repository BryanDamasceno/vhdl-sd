library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
USE IEEE.numeric_std.all;

entity tb_controlunit is 
end tb_controlunit;

architecture teste of tb_controlunit is

component controlunit is
	generic
	(
		data_width16 : integer := 15
	);
port(
		
		-- Entradas externas para a controladora
	 
        CLOCK   : in    std_logic;
		 
			E : in std_logic;
		 
		 DT_TEMPO, DT_TEMP, DT_UMID : in std_logic_vector (data_width16 downto 0);
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
		 
		 ALARME, IRRIGA, ERROR : out std_logic;
		 
		 ESTADO : out std_logic_vector (4 downto 0)
		  
    );
end component;

signal CLOCK : 	std_logic := '0';
signal E : std_logic;
signal DT_UMID, DT_TEMP, DT_TEMPO : std_logic_vector (15 downto 0);
signal GT_TEMPORAL, LT_TEMPORAL, EQ_TEMPORAL, GT_SENSORES, LT_SENSORES, EQ_SENSORES : std_logic;
signal LD_TEMPERATURA, CL_TEMPERATURA, LD_UMIDADE, CL_UMIDADE, LD_TEMPO, CL_TEMPO, LD_INTERVALO, CL_INTERVALO : std_logic;
signal SW1, SW2 : std_logic;
signal EN_CONTADOR, RST_CONTADOR, EN_ROM : std_logic;
signal ADD_TB : std_logic_vector (3 downto 0);
signal DISP_TEMPO, DISP_TEMP, DISP_UMID : std_logic_vector (15 downto 0):= std_logic_vector(to_unsigned(0,16));
signal ALARME, IRRIGA, ERROR : std_logic; 
signal ESTADO : std_logic_vector (4 downto 0);
begin

instancia_controlunit: controlunit port map ( CLOCK=>CLOCK,E=>E,DT_UMID=>DT_UMID,DT_TEMP=>DT_TEMP,
DT_TEMPO=>DT_TEMPO,GT_TEMPORAL=>GT_TEMPORAL,
LT_TEMPORAL=>LT_TEMPORAL,EQ_TEMPORAL=>EQ_TEMPORAL,GT_SENSORES=>GT_SENSORES,
LT_SENSORES=>LT_SENSORES,EQ_SENSORES=>EQ_SENSORES, LD_TEMPERATURA=>LD_TEMPERATURA,
CL_TEMPERATURA=>CL_TEMPERATURA,LD_UMIDADE=>LD_UMIDADE,CL_UMIDADE=>CL_UMIDADE,
LD_TEMPO=>LD_TEMPO,CL_TEMPO=>CL_TEMPO,LD_INTERVALO=>LD_INTERVALO,CL_INTERVALO=>CL_INTERVALO, 
SW1=>SW1, SW2=>SW2, EN_CONTADOR=> EN_CONTADOR, RST_CONTADOR=>RST_CONTADOR,
EN_ROM=>EN_ROM, ADD => ADD_TB, DISP_TEMPO=>DISP_TEMPO,DISP_TEMP=>DISP_TEMP,
DISP_UMID=>DISP_UMID,ALARME=>ALARME,IRRIGA=>IRRIGA, ERROR=>ERROR, ESTADO=>ESTADO);

			CLOCK <= not CLOCK after 10 ns;  

			E <= '1'; 
	
			
			LT_SENSORES <= '1'; 
			GT_SENSORES <= '1';
			EQ_SENSORES <= '0';	
			
			GT_TEMPORAL <= '0';
			LT_TEMPORAL <= '0';
			EQ_TEMPORAL <= '0';
   
end teste;


