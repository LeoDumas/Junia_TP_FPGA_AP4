library ieee ;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Table de vérité de l'entité
-- A B Cin  | S Cout
-- 0 0 0    | 0 0
-- 0 0 1    | 1 0
-- 0 1 0    | 1 0
-- 0 1 1    | 0 1
-- 1 0 0    | 1 0
-- 1 0 1    | 0 1
-- 1 1 0    | 0 1
-- 1 1 1    | 1 1

-- DESCRIPTION DES ENTREES/SORTIES DE L'ENTITY
entity full_adder is
	port (
        -- Entrées        
        A : in std_logic; -- Premier opérande
        B : in std_logic; -- Deuxième opérance
        Cin : in std_logic; -- Retenue à l'entrée
        -- Sorties
        S : out std_logic; -- Somme A + B + Cin
        Cout : out std_logic; -- Retenue à la sortie
	);
end full_adder;

-- DESCRIPTION COMPORTEMENTALE DE L'ENTITY
architecture behavioral of full_adder is
signal C1 : std_logic;
signal S1 : std_logic;
signal C2 : std_logic;
signal S2 : std_logic;
begin
    instance_half_adder_1 : entity work.half_adder port map (
        A => A, 
        B => B,
        C => C1,
        S => S1,
    );

    instance_half_adder_2 : entity work.half_adder port map (
        A => S1, 
        B => Cin,
        S => S2,
        C => C2
    );
    
    Cout <= C1 OR C2;
    S <= S2;
end behavioral;
