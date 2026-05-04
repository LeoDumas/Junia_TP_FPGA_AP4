library ieee;
use ieee.std_logic_1164.all;

-- Bascule JK asynchrone sur front montant

-- Table de vérité
-- RSTn J K Q(t) | Q(t+1) Qn | Comportement
-- 0    X X X    | 0      1  | Reset asynchrone (Q forcé à 0)
-- 1    0 0 0    | 0      1  | Pas de changement (verrou)
-- 1    0 0 1    | 1      0  | Pas de changement (verrou)
-- 1    0 1 0    | 0      1  | Réinitialiser (Q devient 0)
-- 1    0 1 1    | 0      1  | Réinitialiser (Q devient 0)
-- 1    1 0 0    | 1      0  | Set (Q devient 1)
-- 1    1 0 1    | 1      0  | Set (Q devient 1)
-- 1    1 1 0    | 1      0  | Bascule (Q devient 1 si était 0, inversement)
-- 1    1 1 1    | 0      1  | Bascule (Q devient 1 si était 0, inversement)

entity flipflop_JK is
    port (
        -- Entrées
        J    : in std_logic;  -- Entrée J
        K    : in std_logic;  -- Entrée K
        CLK  : in std_logic;  -- Horloge (sensibilité au front montant)
        RSTn : in std_logic;  -- Reset* (asynchronous)
        -- Sorties
        Q    : out std_logic; -- Sortie de la bascule
        Qn   : out std_logic  -- Sortie complémentée de la bascule
    );
end flipflop_JK;

architecture behavioral of flipflop_JK is
begin
    process(CLK, RSTn)
        -- Variable pour stocker l'état et permettre le basculement
        variable TMP: std_logic;
    begin
        if (RSTn = '0') then
            -- Reset asynchrone : agit immédiatement, indépendamment de l'horloge
            TMP := '0'; -- Réinitialiser la mémoire interne
            Q   <= '0';
            Qn  <= '1';
            
        elsif rising_edge(CLK) then 
            -- Front montant de l'horloge
            -- Pas de changement (verrou)
            if (J='0' and K='0') then
                TMP := TMP;
            -- Bascule (Q s'inverse)
            elsif (J='1' and K='1') then 
                TMP := not TMP;
            -- Réinitialiser (Q devient 0)
            elsif (J='0' and K='1') then
                TMP := '0';
            -- Set (Q devient 1)
            else
                TMP := '1';
            end if;
            
            -- Mise à jour des sorties de manière synchrone
            Q  <= TMP;
            Qn <= not TMP;
        end if;
    end process;
end behavioral;