library ieee ;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


-- Fonctionnement
-- 1. Addition de A(0) + B(0) + C(0) via le 1er full adder, on récupère la retenue C(1) et le résultat S(0)
-- 2. Addition de A(1) + B(1) + C(1) via le 2eme full adder, on récupère la retenue C(2) et le résultat S(1)
-- 3. Addition de A(2) + B(2) + C(2) via le 3eme full adder, on récupère la retenue C(3) et le résultat S(2)
-- 4. Addition de A(3) + B(3) + C(3) via le 4eme full adder, on récupère la retenue C(4) et le résultat S(3)
-- 2. Addition de C1+S1 via le 2ème full adder, on récupère la retenue C2 et le résultat S
-- 3. On retourne S, C<=C(4)

entity full_adder_4b is
	port (
        -- Entrées
        A, B: in std_logic_vector(3 downto 0); -- Première et deuxième opérande (4bits)
        Cin: in std_logic; -- Retenue ) l'entrée

        -- Sorties
        S: out std_logic_vector(3 downto 0); -- Somme de A+B + Cin
        Cout: out std_logic  -- Retenue de la sortie
	);
end full_adder_4b;

architecture behavioral of full_adder_4b is
    signal C: std_logic_vector(4 downto 0);
begin
    C(0) <= Cin;
    Cout <= C(4);

    instance_full_adder_1 : entity work.full_adder port map(
        A => A(0),
        B => B(0),
        Cin => C(0),
        S => S(0),
        Cout => C(1)
    );

    instance_full_adder_2 : entity work.full_adder port map(
        A => A(1),
        B => B(1),
        Cin => C(1),
        S => S(1),
        Cout => C(2)
    );

    instance_full_adder_3 : entity work.full_adder port map(
        A => A(2),
        B => B(2),
        Cin => C(2),
        S => S(2),
        Cout => C(3)
    );

    instance_full_adder_4 : entity work.full_adder port map(
        A => A(3),
        B => B(3),
        Cin => C(3),
        S => S(3),
        Cout => C(4)
    );

end behavioral;
