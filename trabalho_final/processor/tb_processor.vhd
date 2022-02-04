 library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity tb_processor is
end tb_processor;

architecture behaviour of tb_processor is

component processor is 
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
	 
end component;

signal e, alarme, irriga, error, clock, gt, eq, lt : std_logic;
signal estado : std_logic_vector (4 downto 0);
signal umid, temp, tempo, disp_tempo, disp_temp, disp_umid, disp_inter : std_logic_vector (15 downto 0);
constant PERIOD: time := 5 ns;
constant DUTY_CYCLE: real := 0.5;
constant OFFSET : time := 2.5 ns;

begin 
instance_processor : processor port map (CLOCK_P => clock, E_P=> e, DT_UMID_P=>umid, DT_TEMP_P=>temp, DT_TEMPO_P=>tempo, DISP_TEMPO_P=>disp_tempo,
														DISP_TEMP_P=>disp_temp, DISP_UMID_P=>disp_umid, DISP_INTER_P=>disp_inter, ALARME_P=>alarme, IRRIGA_P=>irriga,
														ERROR_P=>error, ESTADO_P=>estado, GT_SENSORES_P1=>gt, LT_SENSORES_P1=> lt, EQ_SENSORES_P1=>eq);

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

e <= '1';
temp <= std_logic_vector(to_unsigned(55,16)), std_logic_vector(to_unsigned(35,16)) after 65 ns,	
			std_logic_vector(to_unsigned(35,16)) after 145 ns, std_logic_vector(to_unsigned(25,16)) after 225 ns, std_logic_vector(to_unsigned(15,16)) after 305 ns,
			std_logic_vector(to_unsigned(15,16)) after 385 ns;

tempo <= std_logic_vector(to_unsigned(100,16));

umid <= std_logic_vector(to_unsigned(25,16)), std_logic_vector(to_unsigned(25,16)) after 65 ns, std_logic_vector(to_unsigned(55,16)) after 145 ns,
			std_logic_vector(to_unsigned(55,16)) after 225 ns, std_logic_vector(to_unsigned(55,16)) after 305 ns, std_logic_vector(to_unsigned(25,16)) after 385 ns;

end behaviour;