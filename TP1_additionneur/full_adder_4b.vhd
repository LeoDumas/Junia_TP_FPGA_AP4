library ieee ;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- DESCRIPTION DES ENTREES/SORTIES DU FULL ADDER 4B

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

-- DESCRIPTION COMPORTEMENTALE DU FULL ADDER 4B
architecture behavioral of full_adder_4b is
    signal C: std_logic_vector(4 downto 0);
begin
    C(4) <= Cin;
    Cout <= C(0);

    instance_full_adder_1 : entity work.full_adder port map(
        A => A(3),
        B => B(3),
        Cin => C(4),
        S => S(3),
        Cout => C(3)
    );

    instance_full_adder_2 : entity work.full_adder port map(
        A => A(2),
        B => B(2),
        Cin => C(3),
        S => S(2),
        Cout => C(2)
    );

    instance_full_adder_3 : entity work.full_adder port map(
        A => A(1),
        B => B(1),
        Cin => C(2),
        S => S(1),
        Cout => C(1)
    );

    instance_full_adder_4 : entity work.full_adder port map(
        A => A(0),
        B => B(0),
        Cin => C(1),
        S => S(0),
        Cout => C(0)
    );

end behavioral;
