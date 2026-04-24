library ieee ;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- DESCRIPTION DES ENTREES/SORTIES DU HALF ADDER

-- Table de vérité
-- A B Cin  | S C Cout
-- 0 0      | 0 0
-- 0 1      | 1 0
-- 1 0      | 1 0
-- 1 1      | 0 1

entity half_adder is
	port (

        A: in std_logic; -- Première opérande
        B: in std_logic; -- Deuxième opérande

        S: out std_logic; -- Somme de A+B
        C: out std_logic  -- Retenue de A+B 
	);
end half_adder;

-- DESCRIPTION COMPORTEMENTALE DU HALF ADDER
architecture behavioral of half_adder is
begin
    -- Ecrire ici les instructions cocurrentes décrivant le comportement de l'entity
	-- ex. X <= not(A);
	-- ex. S <= not(X);
    S <= A xor B; 
    C <= A and B;
end behavioral;
