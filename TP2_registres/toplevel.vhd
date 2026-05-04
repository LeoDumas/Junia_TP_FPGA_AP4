library ieee ;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity toplevel is
	port (
		-- Entrées
		SW : in std_logic_vector(9 downto 0);
		KEY : in std_logic_vector(3 downto 0);
		
		-- Sorties
		LEDG : out std_logic_vector(7 downto 0)
	);
end toplevel;

architecture behavioral of toplevel is
	signal S, Cout : std_logic_vector(3 downto 0);
begin
    instance_shift_register_universal8 : entity work.shift_register_universal8 port map (
        -- Entrées
        SSR => SW(9),
        SSL => SW(8),
        Pi => "00000000",
        SEL => SW(2 downto 0),
        CLK => not KEY(0),
        SETn => KEY(2),
        RSTn => KEY(3),

        -- Sorties
        Qo => LEDG
    );
end behavioral;
