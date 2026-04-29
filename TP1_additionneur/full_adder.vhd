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

-- Fonctionnement
-- 1. Addition de A+B via le 1er half_adder, on récupère la retenue C1 et le résultat S1
-- 2. Addition de C1+S1 via le 2ème half_adder, on récupère la retenue C2 et le résultat S
-- 3. On retourne S, C<=C1 OR C2

entity full_adder is
	port (
        -- Entrées        
        A : in std_logic; -- Premier opérande
        B : in std_logic; -- Deuxième opérance
        Cin : in std_logic; -- Retenue à l'entrée
        -- Sorties
        S : out std_logic; -- Somme A + B + Cin
        Cout : out std_logic -- Retenue à la sortie
	);
end full_adder;

architecture behavioral of full_adder is
signal C1 : std_logic;
signal S1 : std_logic;
signal C2 : std_logic;
begin
    instance_half_adder_1 : entity work.half_adder port map (
        A => A, 
        B => B,
        C => C1,
        S => S1
    );

    instance_half_adder_2 : entity work.half_adder port map (
        A => S1, 
        B => Cin,
        S => S,
        C => C2
    );
    
    Cout <= C1 OR C2;
end behavioral;
