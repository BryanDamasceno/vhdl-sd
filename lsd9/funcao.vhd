library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

entity funcao is
	generic (constant W: integer := 3;
				constant M: integer := 7;
				constant D: integer := 9);
	port( A: in std_logic_vector(W downto 0);
	      Q: out std_logic_vector(D downto 0)
	    );
end funcao;

architecture arch of funcao is
	
	function produto (num_original : std_logic_vector (W downto 0))
	return std_logic_vector is
		variable num_invertido : std_logic_vector (W downto 0);
		variable num_multiplicado : std_logic_vector (D downto 0);
		variable r : unsigned(1 downto 0) := "10";
		begin
			num_invertido := 	std_logic_vector(not(num_original));
			num_multiplicado := std_logic_vector (unsigned(num_original)*unsigned(num_invertido)*r);
			return num_multiplicado;
		end produto;
		
	begin 
		process (A)
			begin
				Q <= produto(A);
		end process;
	end arch;