library ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

entity tb_funcao is
end tb_funcao;

architecture teste of tb_funcao is


        component funcao is 
        	generic (constant W: integer := 3;
						constant M: integer := 7;
						constant D: integer := 9);
						port( A: in std_logic_vector(W downto 0);
						Q: out std_logic_vector(D downto 0)
	    );
        end component;

        signal a : std_logic_vector(3 downto 0) := "0000";
        signal q :  std_logic_vector(9 downto 0) := "0000000000"; 



    begin
    instance_funcao: funcao port map (A => a, Q => q);

    a <= "0010", "0101" after 10 ns, "0111" after 20 ns; --2 5 15

    end teste;