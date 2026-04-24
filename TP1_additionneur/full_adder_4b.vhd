library ieee ;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- DESCRIPTION DES ENTREES/SORTIES DU HALF ADDER

entity full_adder_4b is
	port (

        A: in std_logic_vector(3 downto 0); -- Première opérande (4bits)
        B: in std_logic_vector(3 downto 0); -- Deuxième opérande (4bits)
        Cin: in std_logic; -- Retenue ) l'entrée

        S: out std_logic; -- Somme de A+B + Cin
        Cout: out std_logic  -- Retenue de la sortie
	);
end full_adder_4b;

-- DESCRIPTION COMPORTEMENTALE DU HALF ADDER
architecture behavioral of full_adder_4b is
    signal A1: std_logic;
    signal A2: std_logic;
    signal A3: std_logic;
    signal A4: std_logic;

    signal B1: std_logic;
    signal B2: std_logic;
    signal B3: std_logic;
    signal B4: std_logic;
begin
    -- Ecrire ici les instructions cocurrentes décrivant le comportement de l'entity
	-- ex. X <= not(A);
	-- ex. S <= not(X);
    S <= A xor B; 
    C <= A and B;
end behavioral;
