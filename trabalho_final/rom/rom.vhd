library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity rom is

  port ( 
			enable_rom  : in std_logic;
			address : in std_logic_vector(3 downto 0);
         data    : out std_logic_vector(15 downto 0) );
			
end entity rom;

architecture behavioral of rom is
  type mem is array ( 0 to 2**4 - 1) of std_logic_vector(15 downto 0);
  
  constant my_Rom : mem := (
	 0  => std_logic_vector(to_unsigned (0,16)),
	 1  => std_logic_vector(to_unsigned (0,16)),
    2  => std_logic_vector(to_unsigned (0, 16)),
	 3  => std_logic_vector(to_unsigned (10, 16)),
	 4  => std_logic_vector(to_unsigned (20, 16)),
	 5  => std_logic_vector(to_unsigned (30, 16)),
	 6  => std_logic_vector(to_unsigned (40, 16)),
	 7  => std_logic_vector(to_unsigned (50, 16)),
	 8  => std_logic_vector(to_unsigned (7200, 16)),
	 9  => std_logic_vector(to_unsigned (14400, 16)),
	 10  => std_logic_vector(to_unsigned (21600, 16)),
	 11  => std_logic_vector(to_unsigned (43200, 16)),
	 12  => std_logic_vector(to_unsigned (28800, 16)),
    others => std_logic_vector(to_unsigned (0, 16))
	 );
begin
	--data <= my_rom(to_integer(unsigned(address)));
   process (address)
   begin
     case address is
       when "0000" => data <= my_rom(0);
       when "0001" => data <= my_rom(1);
       when "0010" => data <= my_rom(2);
       when "0011" => data <= my_rom(3);
       when "0100" => data <= my_rom(4);
       when "0101" => data <= my_rom(5);
       when "0110" => data <= my_rom(6);
       when "0111" => data <= my_rom(7);
       when "1000" => data <= my_rom(8);
       when "1001" => data <= my_rom(9);
       when "1010" => data <= my_rom(10);
       when "1011" => data <= my_rom(11);
       when others => data <= std_logic_vector(to_unsigned (0,16));
	 end case;
  end process;
end architecture behavioral;