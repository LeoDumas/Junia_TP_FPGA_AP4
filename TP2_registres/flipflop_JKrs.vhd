library ieee;
use ieee.std_logic_1164.all;

-- Bascule JK avec Reset et Preset asynchrones sur front montant
-- Table de caractéristique
-- RSTn SETn J K Q(t) | Q(t+1) Qn | Comportement
-- 0    X    X X X    | 0      1  | Reset asynchrone (Q forcé à 0)
-- 1    0    X X X    | 1      0  | Preset asynchrone (Q forcé à 1)
-- 1    1    0 0 0    | 0      1  | Pas de changement (verrou)
-- 1    1    0 0 1    | 1      0  | Pas de changement (verrou)
-- 1    1    0 1 0    | 0      1  | Réinitialiser (Q devient 0)
-- 1    1    0 1 1    | 0      1  | Réinitialiser (Q devient 0)
-- 1    1    1 0 0    | 1      0  | Set (Q devient 1)
-- 1    1    1 0 1    | 1      0  | Set (Q devient 1)
-- 1    1    1 1 0    | 1      0  | Bascule (Q devient 1 si 0, inversement)
-- 1    1    1 1 1    | 0      1  | Bascule (Q devient 1 si 0, inversement)

entity flipflop_JKrs is
    port (
        -- Entrées
        J    : in std_logic;  -- Entrée J
        K    : in std_logic;  -- Entrée K
        CLK  : in std_logic;  -- Horloge (sensibilité au front montant)
        SETn : in std_logic;  -- Preset* (asynchrone, actif à l'état bas)
        RSTn : in std_logic;  -- Reset* (asynchrone, actif à l'état bas)
        -- Sorties
        Q    : out std_logic; -- Sortie de la bascule
        Qn   : out std_logic  -- Sortie complémentée de la bascule
    );
end flipflop_JKrs;

architecture behavioral of flipflop_JKrs is
    signal Qint : std_logic := '0'; -- état interne
begin
    -- On ajoute SETn à la liste de sensibilité du process
    process(CLK, RSTn, SETn)
    begin
        if (RSTn = '0') then
            -- Reset asynchrone prioritaire
            Qint <= '0';
            
        elsif (SETn = '0') then
            -- Preset asynchrone
            Qint <= '1';
            
        elsif rising_edge(CLK) then 
            -- Fonctionnement synchrone classique de la bascule JK
            if (J='0' and K='0') then
                Qint <= Qint;       -- Pas de changement (verrou)
            elsif (J='1' and K='1') then
                Qint <= not Qint;   -- Bascule
            elsif (J='0' and K='1') then
                Qint <= '0';        -- Réinitialiser
            else
                Qint <= '1';        -- Set
            end if;
        end if;
    end process;

    Q <= Qint;
    Qn <= not Qint;

end behavioral;