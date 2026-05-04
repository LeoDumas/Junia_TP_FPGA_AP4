library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all

entity clock_divider is
    port(
        -- Entrées
        CLKin: in std_logic;
        RST: in std_logic;
        N : in std_logic_vector(4 downto 0);

        -- Sortie
        CLKout : out std_logic;


    );
end clock_divider;

architecture behavioral of clock_divider is
    signal counter: std_logic_unsigned(23 downto 0):= (others => '0');
begin
    process(CLKin, RST)
    begin
        -- Remise à 0 de l'async
        if RST = '1' then
            counter <= (others => '0');

        -- Sur le front montant de l'Horloge
        elsif rising_edge(CLKin) then
            counter <= counter + 1;
        end if;
    end process;

    CLKout <= counter;

end behavioral;