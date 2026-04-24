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
-- 0 0 0 0 | 0   | 0 1 1 1 1 1 1
-- 0 0 0 1 | 1   | 0 0 0 0 1 1 0
-- 0 0 1 0 | 2   | 1 0 1 1 0 1 1
-- 0 0 1 1 | 3   | 1 0 0 1 1 1 1
-- 0 1 0 0 | 4   | 1 1 0 0 1 1 0
-- 0 1 0 1 | 5   | 1 1 0 1 1 0 1
-- 0 1 1 0 | 6   | 1 1 1 1 1 0 1
-- 0 1 1 1 | 7   | 0 0 0 0 1 1 1
-- 1 0 0 0 | 8   | 1 1 1 1 1 1 1
-- 1 0 0 1 | 9   | 1 1 0 1 1 1 1
-- 1 0 1 0 | a   | 1 1 1 0 1 1 1
-- 1 0 1 1 | b   | 1 1 1 1 1 0 0
-- 1 1 0 0 | c   | 0 1 1 1 0 0 1
-- 1 1 0 1 | d   | 1 0 1 1 1 1 0
-- 1 1 1 0 | e   | 1 1 1 1 0 0 1
-- 1 1 1 1 | f   | 1 1 1 0 0 0 1

-- Equations
-- Sourcé de https://www.paturage.be/electro/inforauto/codage/decodeur7seg.html
-- a = B3.B2.B1.B0 + B3.B2.B1.B0 + B3.B2.B1.B0 + B3.B2.B1.B0
-- b = B3.B2.B1.B0 + B3.B2.B1.B0 + B3.B1.B0 + B2.B1.B0
-- c = B3.B2.B1.B0 + B3.B2.B1.B0 + B3.B2.B1
-- d = B2.B1.B0 + B3.B2.B1.B0 + B2.B1.B0 + B3.B2.B1.B0
-- e = B3.B0 + B3.B2.B1 + B3.B2.B1.B0
-- f = B3.B2.B0 + B3.B2.B1 + B3.B1.B0 + B3.B2.B1.B0
-- g = B3.B2.B1 + B3.B2.B1.B0 + B3.B2.B1.B0

-- DESCRIPTION DES ENTREES/SORTIES DE L'ENTITY
entity transcodeur_7seg is
	port (
        -- Entrées
        BIN : in std_logic_vector (3 downto 0)
        -- Sorties
        SEG : out std_logic_vector (6 downto 0)
	);
end transcodeur_7seg;

-- DESCRIPTION COMPORTEMENTALE DE L'ENTITY
architecture behavioral of transcodeur_7seg is
begin

    -- Ecrire ici les instructions cocurrentes décrivant le comportement de l'entity
    /a = /A3./A2./A1.A0 + /A3.A2./A1./A0 + A3.A2./A1.A0 + A3./A2.A1.A0
	-- ex. X <= not(A);
	-- ex. S <= not(X);
end behavioral;
