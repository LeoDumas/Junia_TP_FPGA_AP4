library ieee ;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

--    a
--  +---+
-- f|   |b          gfedcba
--  +-g-+  HEXn <= "0100100" -- Représentation de « 2 »
-- e|   |c
--  +---+
--    d

-- Table de vérité de l'entité
-- BIN (B  |     | SEG
-- 3 2 1 0 | hex | g f e d c b a
-- -----------------------------
-- 0 0 0 0 | 0   | 1 0 0 0 0 0 0
-- 0 0 0 1 | 1   | 1 1 1 1 0 0 1
-- 0 0 1 0 | 2   | 0 1 0 0 1 0 0
-- 0 0 1 1 | 3   | 0 1 1 0 0 0 0
-- 0 1 0 0 | 4   | 0 0 1 1 0 0 1
-- 0 1 0 1 | 5   | 0 0 1 0 0 1 0
-- 0 1 1 0 | 6   | 0 0 0 0 0 1 0
-- 0 1 1 1 | 7   | 1 1 1 1 0 0 0
-- 1 0 0 0 | 8   | 0 0 0 0 0 0 0
-- 1 0 0 1 | 9   | 0 0 1 0 0 0 0
-- 1 0 1 0 | a   | 0 0 0 1 0 0 0
-- 1 0 1 1 | b   | 0 0 0 0 0 1 1
-- 1 1 0 0 | c   | 1 0 0 0 1 1 0
-- 1 1 0 1 | d   | 0 1 0 0 0 0 1
-- 1 1 1 0 | e   | 0 0 0 0 1 1 0
-- 1 1 1 1 | f   | 0 0 0 1 1 1 0

-- Une fois la table de vérité dressé, nos réflexes nous indiquent de chercher les équations
-- (que l'on peut trouver sur https://www.paturage.be/electro/inforauto/codage/decodeur7seg.html)
-- a = B3.B2.B1.B0 + B3.B2.B1.B0 + B3.B2.B1.B0 + B3.B2.B1.B0
-- b = B3.B2.B1.B0 + B3.B2.B1.B0 + B3.B1.B0 + B2.B1.B0
-- c = B3.B2.B1.B0 + B3.B2.B1.B0 + B3.B2.B1
-- d = B2.B1.B0 + B3.B2.B1.B0 + B2.B1.B0 + B3.B2.B1.B0
-- e = B3.B0 + B3.B2.B1 + B3.B2.B1.B0
-- f = B3.B2.B0 + B3.B2.B1 + B3.B1.B0 + B3.B2.B1.B0
-- g = B3.B2.B1 + B3.B2.B1.B0 + B3.B2.B1.B0
-- Mais en fpga nous pouvons aussi faire un switch case, il n'y a pas tant de cas.

-- DESCRIPTION DES ENTREES/SORTIES DE L'ENTITY
entity transcodeur_7seg is
	port (
        -- Entrées
        BIN : in std_logic_vector (3 downto 0);
        -- Sorties
        SEG : out std_logic_vector (6 downto 0)
	);
end transcodeur_7seg;

-- DESCRIPTION COMPORTEMENTALE DE L'ENTITY
architecture behavioral of transcodeur_7seg is
begin
    with BIN select
        SEG <= "1000000" when "0000", -- 0
        "1111001" when "0001", -- 1
        "0100100" when "0010", -- 2
        "0110000" when "0011", -- 3
        "0011001" when "0100", -- 4
        "0010010" when "0101", -- 5
        "0000010" when "0110", -- 6
        "1111000" when "0111", -- 7
        "0000000" when "1000", -- 8
        "0010000" when "1001", -- 9
        "0001000" when "1010", -- a
        "0000011" when "1011", -- b
        "1000110" when "1100", -- c
        "0100001" when "1101", -- d
        "0000110" when "1110", -- e
        "0001110" when "1111", -- f
        "1111111" when others; -- rien
end behavioral;
