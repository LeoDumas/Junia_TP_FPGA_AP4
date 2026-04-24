library ieee ;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- DESCRIPTION DES ENTREES/SORTIES DU HALF ADDER

entity full_adder_4b is
	port (

        A: in std_logic_vector(3 downto 0); -- Première opérande (4bits)
        B: in std_logic_vector(3 downto 0); -- Deuxième opérande (4bits)

        S: out std_logic; -- Somme de A+B
        C: out std_logic  -- Retenue de A+B 
	);
end full_adder_4b;

-- DESCRIPTION COMPORTEMENTALE DU HALF ADDER
architecture behavioral of full_adder_4b is
begin
    -- Ecrire ici les instructions cocurrentes décrivant le comportement de l'entity
	-- ex. X <= not(A);
	-- ex. S <= not(X);
    S <= A xor B; 
    C <= A and B;
end behavioral;
