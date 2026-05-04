library ieee;
use ieee.std_logic_1164.all;

-- Bascule flipflop FK sur front montant

-- Table de vérité
-- J K Q(t) | Q(t+1) Qn | Comportement
-- 0 0 0    | 0      1  | Pas de changement (verrou)
-- 0 0 1    | 1      0  | Pas de changement (verrou)
-- 0 1 0    | 0      1  | Réinitialiser (Q devient 0)
-- 0 1 1    | 0      1  | Réinitialiser (Q devient 0)
-- 1 0 0    | 1      0  | Set (Q devient 1)
-- 1 0 1    | 1      0  | Set (Q devient 1)
-- 1 1 0    | 1      0  | Bascule (Q devient 1 si était 0, inversement)
-- 1 1 1    | 0      1  | Bascule (Q devient 1 si était 0, inversement)

entity flipflop_JK is
    port (
        -- Entrées
        J : in std_logic; -- Entrée J
        K : in std_logic; -- Entrée K
        CLK : in std_logic; -- Horloge (sensibilité au front montant)

        -- Sorties
        Q : out std_logic; -- Sortie de la bascule
        Qn : out std_logic -- Sortie complémentée de la bascule
    );
end flipflop_JK;

architecture behavioral of flipflop_JK is
    signal Qint : std_logic := '0'; -- état interne
begin
    process(CLK)
    begin
        if rising_edge(CLK) then 
            Qint <= Qint        when (J='0' and K='0') else -- Pas de changement (verrou)
                    not Qint    when (J='1' and K='1') else -- Bascule (Q devient 1 si était 0, inversement)
                    '0'         when (J='0' and K='1') else -- Réinitialiser (Q devient 0)
                    '1'         ;                           -- Set (Q devient 1)
        end if;

        Q <= Qint;
        Qn <= not Qint;
    end process;
end behavioral;