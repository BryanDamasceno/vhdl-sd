library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity contador is

	generic
	(
		MIN_COUNT : natural := 0;
		MAX_COUNT : natural := 65355
	);

	port
	(
		clock		  : in std_logic;
		reset_contador	  : in std_logic;
		enable_contador	  : in std_logic;
		count	  : out integer range MIN_COUNT to MAX_COUNT
	);

end entity;

architecture comportamento of contador is
begin

	process (clock)
		variable   cnt		   : integer;
		variable   seg 		   : integer range MIN_COUNT to MAX_COUNT := 0;
	begin
		if (rising_edge(clock)) then

			if reset_contador = '1' then
				-- Reset the counter to 0
				cnt := 0;

			elsif enable_contador = '1' then
				-- Increment the counter if counting is enabled			   
				cnt := cnt + 1;

			end if;
			
			if (cnt = 400000000) then
				seg := seg +1;
				cnt := 0;
			end if;
			
			
		end if;

		-- Output the current count
		count <= seg;
	end process;

end comportamento;
