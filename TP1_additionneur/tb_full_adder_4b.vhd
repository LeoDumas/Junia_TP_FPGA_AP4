library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- DECLARATION D'UNE ENTITE
entity tb_full_adder_4b is
end tb_full_adder_4b;

architecture tb of tb_full_adder_4b is
    -- Déclaration des signaux de test
	-- ex. signal A, S: std_logic;

begin
    -- Instanciation de l'entité testée, récupérée dans la librairie work
    -- On appelle cette instance UUT (Unit Under Test)
	UUT : entity work.entity_name port map (
        -- ex. A => A,
        -- ex. S => S
	);

	-- Description des stimuli
	-- A placer dans des *process*, car ce sont des instructions séquentielles
	-- (Plusieurs process concurrents peuvent être décrits)
	stimuli1 : process
		begin
		-- ex. A <= '0';
		-- ex. wait for 10ns; -- Délai avant le prochain stimulus
		-- ex. A <= '1';
		-- ex. wait for 10ns; -- Délai avant le prochain stimulus

		wait; -- Wait indefinitely

	end process;
end tb ;