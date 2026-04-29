library ieee ;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity toplevel is
	port (
		-- Entrées
		SW : in std_logic_vector(9 downto 0);
		-- Sorties
		HEX3 : out std_logic_vector(6 downto 0);
		HEX2 : out std_logic_vector(6 downto 0);
		HEX1 : out std_logic_vector(6 downto 0);
		HEX0 : out std_logic_vector(6 downto 0)
	);
end toplevel;

architecture behavioral of toplevel is
	signal S, Cout : std_logic_vector(3 downto 0);
begin
	-- A+B
    instance_full_adder_4b_1 : entity work.full_adder_4b port map (
        A => SW(3 downto 0),
        B => SW(7 downto 4),
        Cin => SW(9),
        S => S,
		Cout => Cout(0)
    );

	-- Affichage de A
	instance_transcodeur_7seg_1 : entity work.transcodeur_7seg port map (
        BIN => SW(3 downto 0),
        SEG => HEX3
    );

	-- Affichage de B
	instance_transcodeur_7seg_2 : entity work.transcodeur_7seg port map (
        BIN => SW(7 downto 4),
        SEG => HEX2
    );

	-- Affichage de C
	instance_transcodeur_7seg_3 : entity work.transcodeur_7seg port map (
        BIN => Cout,
        SEG => HEX1
    );

	-- Affichage de A+B
	instance_transcodeur_7seg_4 : entity work.transcodeur_7seg port map (
        BIN => S,
        SEG => HEX0
    );
end behavioral;
