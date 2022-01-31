-- Código principal
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
--use work.componentes_datapath.all;

entity datapath is

	generic
	(
		data_width16 : integer := 15
	);
	
    port (     
	 
        clock   : in    std_logic; -- clock input		
		  
		  -- Entradas externas para datapath
		  
		  -- Entradas da Controladora para datapah
			
			LD_TEMPERATURA, CL_TEMPERATURA, LD_UMIDADE, CL_UMIDADE, LD_TEMPO, CL_TEMPO, LD_INTERVALO, CL_INTERVALO : in std_logic;
			
			SW1, SW2 : in std_logic;
			
			EN_CONTADOR, RST_CONTADOR, EN_ROM : in std_logic;
			
			DT_UMID, DT_TEMP, DT_TEMPO : in std_logic_vector (data_width16 downto 0);
			ADD : in std_logic_vector (3 downto 0);
			
		  -- Saídas do datapth para controladora
			
			GT_TEMPORAL, LT_TEMPORAL, EQ_TEMPORAL, GT_SENSORES, LT_SENSORES, EQ_SENSORES : out std_logic
			
		  -- Saídas do datapath para fora		  
		  
    );
	 
end datapath;

architecture behaviour of datapath is

	component contador is
		port
		(
			clock		  : in std_logic;
			reset_contador	  : in std_logic;
			enable_contador	  : in std_logic;
			count	  : out integer range 0 to 65535
		);
	end component contador;

	component rom is 
	  port ( 
				enable_rom  : in std_logic;
				address : in std_logic_vector(3 downto 0);
				data    : out std_logic_vector(15 downto 0) 
				);
	end component rom;
	
	component comparador_sensores is
	  port (
			escolha2, data  : in std_logic_vector(15 downto 0);
			maior_sensores, igual_sensores, menor_sensores  : out std_logic
			);
	end component comparador_sensores;
	
	component comparador_temporal is
	  port (
			escolha1, count   : in std_logic_vector(15 downto 0);
			maior_temporal, igual_temporal, menor_temporal  : out std_logic
			);
	end component comparador_temporal;
	
	component mux_sensores is
		port (
				selecao2 : in std_logic;
				saida_temperatura, saida_umidade: in std_logic_vector (15 downto 0);
				escolha2 : out std_logic_vector (15 downto 0)
				);	
	end component mux_sensores;
	
	component mux_temporal is
		port (
			selecao1 : in std_logic;
			saida_tempo, saida_intervalo: in std_logic_vector (15 downto 0);
			escolha1 : out std_logic_vector (15 downto 0)
				);
	end component mux_temporal;
	
	component reg_intervalo is
		port (
			data_intervalo: in std_logic_vector (15 downto 0);
			reg_intervalo_ld,reg_intervalo_cl, clk: in std_logic;
			saida_intervalo: out std_logic_vector (15 downto 0)
				);
	end component reg_intervalo;
	
	component reg_temperatura is
		port (
			data_temp: in std_logic_vector (15 downto 0);
			reg_temperatura_ld,reg_temperatura_cl, clk: in std_logic;
			saida_temperatura: out std_logic_vector (15 downto 0)
				);
	end component reg_temperatura;
	
	component reg_tempo is 
		port (
			data_tempo: in std_logic_vector (15 downto 0);
			reg_tempo_ld,reg_tempo_cl, clk: in std_logic;
			saida_tempo: out std_logic_vector (15 downto 0)
				);
	end component reg_tempo;
	
	component reg_umidade is
		port (
			data_umid: in std_logic_vector (15 downto 0);
			reg_umidade_ld,reg_umidade_cl, clk: in std_logic;
			saida_umidade: out std_logic_vector (15 downto 0)
				);
	end component reg_umidade;
	-- Sinais para interconexões	
	
	-- Registradores
	signal OUT_TEMPERATURA, OUT_UMIDADE, OUT_INTERVALO, OUT_TEMPO : std_logic_vector (data_width16 downto 0) := std_logic_vector(to_unsigned (0, 16));
	--signal saida_temperatura, saida_umidade, saida_intervalo, saida_tempo : std_logic_vector (data_width16 downto 0);
	
	signal CNT : integer range 0 to 65535 ;
	--signal count : std_logic_vector (data_width16 downto 0);
	
	signal DT : std_logic_vector (data_width16 downto 0) := std_logic_vector(to_unsigned (0, 16));
	--signal data : std_logic_vector (data_width16 downto 0);
	
	-- Multiplexadores
	
	signal ES1, ES2 : std_logic_vector (data_width16 downto 0) := std_logic_vector(to_unsigned (0, 16));
	--signal escolha1, escolha2									: std_logic_vector (data_width16 downto 0);

--CRIEI ESSE SINAL PRA CONVERTER DE INTEIRO PRA STD_VECTOR	
signal x: std_logic_vector (data_width16 downto 0) := std_logic_vector(to_unsigned (CNT, 16));

begin 

	-- Interligações entre os componentes	
	
	-- Registradores	
	
	 RG_UMIDADE: reg_umidade port map (reg_umidade_ld => LD_UMIDADE, reg_umidade_cl => CL_UMIDADE, data_umid => DT_UMID, saida_umidade => OUT_UMIDADE, clk => CLOCK);
	 RG_TEMPERATURA: reg_temperatura port map (reg_temperatura_ld => LD_TEMPERATURA, reg_temperatura_cl => CL_TEMPERATURA, data_temp => DT_TEMP, saida_temperatura=> OUT_TEMPERATURA, clk => CLOCK);
	 RG_TEMPO: reg_tempo port map (reg_tempo_ld => LD_TEMPO, reg_tempo_cl => CL_TEMPO, data_tempo => DT_TEMPO, saida_tempo=> OUT_TEMPO, clk => CLOCK);
	 RG_INTERVALO: reg_intervalo port map (reg_intervalo_ld => LD_INTERVALO, reg_intervalo_cl => CL_INTERVALO, data_intervalo => DT, saida_intervalo=> OUT_INTERVALO, clk => CLOCK);
	 
	 -- Rom
	 RM: rom port map (enable_rom=> EN_ROM, address => ADD, data => DT);
	 
	-- Multiplexadores
	
	 M_TEMPORAL: mux_temporal port map ( saida_tempo => OUT_TEMPO, saida_intervalo => OUT_INTERVALO, escolha1 => ES1, selecao1 => SW1);
	 M_SENSORES: mux_sensores port map ( saida_temperatura => OUT_TEMPERATURA, saida_umidade => OUT_UMIDADE, escolha2 => ES2, selecao2 => SW2);

	-- Comparadores	
	
	--ADICIONEI AS PORTAS DE SAIDAS 
	COMP_TEMPORAL: comparador_temporal port map (escolha1 => ES1, count => x, maior_temporal => GT_TEMPORAL, igual_temporal => EQ_TEMPORAL, menor_temporal => LT_TEMPORAL);
	COMP_SENSORES : comparador_sensores port map (escolha2 => ES2, data => DT, maior_sensores => GT_SENSORES, igual_sensores => EQ_SENSORES, menor_sensores => LT_SENSORES);

	-- Contador 
	
	 CNT_T: contador port map (enable_contador => EN_CONTADOR, reset_contador => RST_CONTADOR, count => CNT, clock => CLOCK);
	 
end behaviour;


