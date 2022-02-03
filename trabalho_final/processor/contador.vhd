library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity contador is

	generic
	(
		MIN_COUNT : natural := 0;
		MAX_COUNT : natural := 65535
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
		variable   cnt		   : integer range MIN_COUNT to MAX_COUNT;
	begin
		if (rising_edge(clock)) then

			if reset_contador = '1' then
				-- Reset the counter to 0
				cnt := 0;

			elsif enable_contador = '1' then
				-- Increment the counter if counting is enabled			   
				cnt := cnt + 1;

			end if;
		end if;

		-- Output the current count
		count <= cnt;
	end process;

end comportamento;
