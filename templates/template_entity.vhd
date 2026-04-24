library ieee ;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- DESCRIPTION DES ENTREES/SORTIES DE L'ENTITY
entity entity_name is
	port (
		-- ex. A : in std_logic;
		-- ex. S : out std_logic
	);
end entity_name;

-- DESCRIPTION COMPORTEMENTALE DE L'ENTITY
architecture behavioral of entity_name is
-- (Optionnel) Ecrire ici la déclaration de signaux
-- ex. signal X : std_logic;
begin
    -- Ecrire ici les instructions cocurrentes décrivant le comportement de l'entity
	-- ex. X <= not(A);
	-- ex. S <= not(X);
end behavioral;
