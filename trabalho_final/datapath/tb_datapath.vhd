library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_datapath is
end tb_datapath;

architecture testbench of tb_datapath is

component datapath is
port (
 clock   : in    std_logic; -- clock input		
		  
		  -- Entradas externas para datapath
		  
		  -- Entradas da Controladora para datapah
			
			LD_TEMPERATURA, CL_TEMPERATURA, LD_UMIDADE, CL_UMIDADE, LD_TEMPO, CL_TEMPO, LD_INTERVALO, CL_INTERVALO : in std_logic;
			
			SW1, SW2 : in std_logic;
			
			EN_CONTADOR, RST_CONTADOR, EN_ROM : in std_logic;
			
			DT_UMID, DT_TEMP, DT_TEMPO : in std_logic_vector (15 downto 0);
			ADD : in std_logic_vector (3 downto 0);
			
		  -- Saídas do datapth para controladora
			
			GT_TEMPORAL, LT_TEMPORAL, EQ_TEMPORAL, GT_SENSORES, LT_SENSORES, EQ_SENSORES : out std_logic
			
		  -- Saídas do datapath para fora		  
		  
);
end component;



signal clk, ld_temp, cl_temp, ld_umid, cl_umid, ld_time,
cl_time, ld_inter, cl_inter, s1, s2, en_cont, rst_cont, en_rm, gt_compt, lt_compt, 
eq_compt, gt_comps, lt_comps, eq_comps: std_logic := '0';
signal dt_u, dt_tp, dt_time: std_logic_vector (15 downto 0) := std_logic_vector(to_unsigned(0, 16));
signal ad: std_logic_vector (3 downto 0) := std_logic_vector(to_unsigned(0, 4));

constant PERIOD: time := 5ns;
constant DUTY_CYCLE: real := 0.5;
constant OFFSET : time := 2.5ns;


begin
instance_datapath: datapath port map (clock => clk, LD_TEMPERATURA => ld_temp, CL_TEMPERATURA => cl_temp, LD_UMIDADE => ld_umid,
CL_UMIDADE => cl_umid,LD_TEMPO => ld_time, CL_TEMPO => cl_time,LD_INTERVALO => ld_inter, CL_INTERVALO => cl_inter,
SW1 => s1, SW2 => s2, EN_CONTADOR => en_cont, RST_CONTADOR => rst_cont, EN_ROM => en_rm, GT_TEMPORAL => gt_compt,
LT_TEMPORAL => lt_compt, EQ_TEMPORAL => eq_compt, GT_SENSORES => gt_comps, LT_SENSORES => lt_comps, EQ_SENSORES => eq_comps,
DT_UMID => dt_u, DT_TEMP => dt_tp, DT_TEMPO => dt_time, ADD => ad);

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
		  
dt_u <= std_logic_vector(to_unsigned(40, 16));
ld_umid <= '0', '1' after 1 ns, '0' after 6 ns;

dt_tp <= std_logic_vector(to_unsigned(10, 16));
ld_temp <= '0', '1' after  1 ns, '0' after 6 ns;


dt_time <= std_logic_vector(to_unsigned(3600, 16));

ld_time <= '0', '1' after  1 ns, '0' after 6 ns;

ld_inter <= '0', '1' after 1 ns, '0' after  6 ns;

ad <= std_logic_vector(to_unsigned(8, 4)), std_logic_vector(to_unsigned(4, 4)) after 5 ns ,std_logic_vector(to_unsigned(6, 4)) after 10 ns, 		
std_logic_vector(to_unsigned(7, 4)) after 14 ns, std_logic_vector(to_unsigned(4, 4)) after 20 ns, std_logic_vector(to_unsigned(0, 4)) after 24 ns;

en_rm <= '1';
en_cont <= '0', '1' after 5 ns, '0' after 25 ns;

s1 <= '0','1' after 15 ns, '0' after 25 ns;
s2 <= '0','1' after 15 ns, '0' after 25 ns;




end testbench;