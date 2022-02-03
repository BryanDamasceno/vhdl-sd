library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity tb_rom is
end entity tb_rom;

architecture teste of tb_rom is
component rom is
   port ( 
			enable_rom  : in std_logic;
			address : in std_logic_vector(3 downto 0);
         		data    : out std_logic_vector(15 downto 0) );
			
end component;

signal en: std_logic;
signal add : std_logic_vector(3 downto 0);
signal dt: std_logic_vector(15 downto 0);

begin
instance_rom: rom port map (enable_rom=> en, address=> add, data=> dt);
en<= '1';
add <= std_logic_vector(to_unsigned(0,4)),std_logic_vector(to_unsigned(8,4)) after 5 ns, 
		std_logic_vector(to_unsigned(10,4)) after 10 ns, 
		std_logic_vector(to_unsigned(6,4)) after 14 ns;
end teste;