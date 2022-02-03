--- Package Declaration Section

package componentes_datapath is
	component contador is
	port
	(
		clock		  : in std_logic;
		reset	  : in std_logic;
		enable	  : in std_logic;
		count	  : out integer range 0 to 65535
	);
	

	component rom is 
		
  port ( 
			enable  : in std_logic;
			address : in std_logic_vector(3 downto 0);
         data    : out std_logic_vector(15 downto 0) );

	component comparador_sensores is
  port (
      escolha1,count   : in std_logic_vector(15 downto 0);
      maior, igual, menor  : out std_logic
   );
	component comparador_temporal is
  port (
      escolha1,count   : in std_logic_vector(15 downto 0);
      maior, igual, menor  : out std_logic
   );
	component mux_sensores is
port (
			selecao1 : in std_logic;
			reg_temperatura, reg_umidade: in std_logic_vector (15 downto 0);
			escolha1 : out std_logic_vector (15 downto 0)
			);	
	component mux_temporal is
	port (
			selecao1 : in std_logic;
			reg_tempo, reg_intervalo: in std_logic_vector (15 downto 0);
			escolha1 : out std_logic_vector (15 downto 0)
			);
	component reg_intervalo is
	generic (N : integer := 16);
	port (
	data_intervalo: in std_logic_vector (n-1 downto 0);
	reg_intervalo_ld,reg_intervalo_cl, clk: in std_logic;
	saida_intervalo: out std_logic_vector (n-1 downto 0)
);
	component reg_temperatura is
	generic (N : integer := 16);
	port (
	data_temp: in std_logic_vector (n-1 downto 0);
	reg_temperatura_ld,reg_temperatura_cl, clk: in std_logic;
	saida_temp: out std_logic_vector (n-1 downto 0)
);
	component reg_tempo is 
	port (
	data_tempo: in std_logic_vector (n-1 downto 0);
	reg_tempo_ld,reg_tempo_cl, clk: in std_logic;
	saida_tempo: out std_logic_vector (n-1 downto 0)
);
	component reg_umidade is
	generic (N : integer := 16);
	port (
	data_umid: in std_logic_vector (n-1 downto 0);
	reg_umid_ld,reg_umid_cl, clk: in std_logic;
	saida_umid: out std_logic_vector (n-1 downto 0)
);

end package componentes_datapath;