library ieee;
use ieee.std_logic_1164.all;

-- Registre
-- Table de caractéristique
-- RSTn SETn SEL Pi       SSL Qint     SSR | SOL Qo       SOR | Comportement
-- 0    1    XXX XXXXXXXX X   XXXXXXXX X   | 0   00000000 0   | Reset
-- 1    0    XXX XXXXXXXX X   XXXXXXXX X   | 0   11111111 0   | Set
-- 1    1    X00 XXXXXXXX X   11111111 X   | 0   11111111 0   | Hold
-- 1    1    X11 11111111 X   XXXXXXXX X   | 0   11111111 0   | Load
-- 1    1    001 XXXXXXXX 1   00000001 X   | 0   10000000 1   | Shift right
-- 1    1    010 XXXXXXXX X   10000000 1   | 1   00000001 0   | Shift left
-- 1    1    101 XXXXXXXX X   00000111 X   | 0   10000011 0   | Rotate right
-- 1    1    110 XXXXXXXX X   11100000 X   | 0   11000001 0   | Rotate left


entity shift_register_universal8 is
    port (
        -- Entrées
        SSR : in std_logic; -- Shift right serial input
        SSL : in std_logic; -- Shift left serial input
        Pi : in std_logic_vector(7 downto 0); -- 8 bits Parallel input
        SEL : in std_logic_vector(2 downto 0); -- Mode selection :
        -- - X00 : Hold (Memorize)
        -- - X11 : Parallel load
        -- - 001 : Shift right
        -- - 010 : Shift left
        -- - 101 : Rotate right
        -- - 110 : Rotate left
        CLK : in std_logic; -- Horloge (sensibilité au front montant)
        SETn : in std_logic; -- Preset* (asynchrone, active à l’état bas)
        RSTn : in std_logic; -- Reset* (asynchrone, active à l’état bas)
        
        -- Sorties
        SOR : out std_logic; -- Shift output right
        SOL : out std_logic; -- Shift output left
        Qo : out std_logic_vector(7 downto 0) -- Parallel outputs
    );
end shift_register_universal8;

architecture behavioral of shift_register_universal8 is
    signal Qint : std_logic_vector(7 downto 0) := "00000000"; -- état interne
begin
    process(CLK, RSTn, SETn)
    begin
        if (RSTn = '0') then
            -- Reset asynchrone
            Qint <= "00000000";
            
        elsif (SETn = '0') then
            -- Preset asynchrone
            Qint <= "11111111";
            
        elsif rising_edge(CLK) then 
            -- Fonctionnement synchrone classique de la bascule JK
            if (SEL(1 downto 0) = "00") then -- Hold (Memorize)
                Qint <= Qint;       
            elsif (SEL(1 downto 0) = "11") then -- Parallel load
                Qint <= Pi;   
            elsif (SEL = "001") then -- Shift right
                SOR  <= Qint(0);
                Qint <= SSR & Qint(7 downto 1);
            elsif (SEL = "010") then -- Shift left
                SOL  <= Qint(7);
                Qint <= Qint(6 downto 0) & SSL;
            elsif (SEL = "101") then -- Rotate right
                Qint <= Qint(0) & Qint(7 downto 1);
            elsif (SEL = "110") then -- Rotate left
                Qint <= Qint(6 downto 0) & Qint(7);
            end if;
        end if;
    end process;

    Qo <= Qint;
end behavioral;