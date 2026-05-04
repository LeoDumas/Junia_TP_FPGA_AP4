library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_shift_register_universal8 is
end tb_shift_register_universal8;

-- RSTn SETn SEL Pi       SSL Qint     SSR | SOL Qo       SOR | Comportement
-- 0    1    XXX XXXXXXXX X   XXXXXXXX X   | 0   00000000 0   | Reset
-- 1    0    XXX XXXXXXXX X   XXXXXXXX X   | 0   11111111 0   | Set
-- 1    1    X00 XXXXXXXX X   11111111 X   | 0   11111111 0   | Hold
-- 1    1    X11 11111111 X   XXXXXXXX X   | 0   11111111 0   | Load
-- 1    1    001 XXXXXXXX 1   00000001 X   | 0   10000000 1   | Shift right
-- 1    1    010 XXXXXXXX X   10000000 1   | 1   00000001 0   | Shift left
-- 1    1    101 XXXXXXXX X   00000111 X   | 0   10000011 0   | Rotate right
-- 1    1    110 XXXXXXXX X   11100000 X   | 0   11000001 0   | Rotate left

architecture tb of tb_shift_register_universal8 is
    -- Entrées
    signal SSR : std_logic := '0'; -- Shift right serial input
    signal SSL : std_logic := '0'; -- Shift left serial input
    signal Pi : std_logic_vector(7 downto 0) := '00000000'; -- 8 bits Parallel input
    signal SEL : std_logic_vector(2 downto 0) := '000'; -- Mode selection :
    -- - X00 : Hold (Memorize)
    -- - X11 : Parallel load
    -- - 001 : Shift right
    -- - 010 : Shift left
    -- - 101 : Rotate right
    -- - 110 : Rotate left
    signal CLK : std_logic := '0'; -- Horloge (sensibilité au front montant)
    signal SETn : std_logic := '1'; -- Preset* (asynchrone, active à l’état bas)
    signal RSTn : std_logic := '1'; -- Reset* (asynchrone, active à l’état bas)
    
    -- Sorties
    signal SOR : std_logic := '0'; -- Shift output right
    signal SOL : std_logic := '0'; -- Shift output left
    signal Qo : std_logic_vector(7 downto 0) := '00000000'; -- Parallel outputs

    -- Définition de la période d'horloge
    constant clk_period : time := 20 ns;

begin
    -- Instanciation de la BONNE entité : shift_register_universal8
    UUT : entity work.shift_register_universal8 port map(
        -- Entrées
        SSR => SSR,
        SSL => SSL,
        Pi => Pi,
        SEL => SEL,
        CLK => CLK,
        SETn => SETn,
        RSTn => RSTn,

        -- Sorties
        SOR => SOR,
        SOL => SOL,
        Qo => Qo,
    );

    -- Processus de génération de l'horloge
    clk_process : process
    begin
        CLK <= not(CLK);
        wait for clk_period/2;
    end process;

    test: process
    begin

        -- =========================
        -- 1. RESET (RSTn = 0)
        -- =========================
        RSTn <= '0'; SETn <= '1';
        wait for 10 ns;

        assert (Qo = "00000000" and SOR = '0' and SOL = '0')
            report "ERREUR RESET"
            severity error;

        RSTn <= '1';
        wait for clk_period;

        -- =========================
        -- 2. SET (SETn = 0)
        -- =========================
        SETn <= '0';
        wait for 10 ns;

        assert (Qo = "11111111" and SOR = '0' and SOL = '0')
            report "ERREUR SET"
            severity error;

        SETn <= '1';
        wait for clk_period;

        -- =========================
        -- 3. HOLD (X00)
        -- =========================
        SEL <= "000";
        wait for clk_period;

        assert (Qo = "11111111")
            report "ERREUR HOLD"
            severity error;

        -- =========================
        -- 4. LOAD (X11)
        -- =========================
        Pi  <= "10101010";
        SEL <= "011";
        wait for clk_period;

        assert (Qo = "10101010")
            report "ERREUR LOAD"
            severity error;

        -- =========================
        -- 5. SHIFT RIGHT (001)
        -- =========================
        Pi  <= "00000001";
        SEL <= "011"; wait for clk_period; -- charger valeur

        SSL <= '1';
        SEL <= "001";
        wait for clk_period;

        assert (Qo = "10000000" and SOR = '1')
            report "ERREUR SHIFT RIGHT"
            severity error;

        -- =========================
        -- 6. SHIFT LEFT (010)
        -- =========================
        Pi  <= "10000000";
        SEL <= "011"; wait for clk_period; -- charger valeur

        SSR <= '1';
        SEL <= "010";
        wait for clk_period;

        assert (Qo = "00000001" and SOL = '1')
            report "ERREUR SHIFT LEFT"
            severity error;

        -- =========================
        -- 7. ROTATE RIGHT (101)
        -- =========================
        Pi  <= "00000111";
        SEL <= "011"; wait for clk_period; -- charger valeur

        SEL <= "101";
        wait for clk_period;

        assert (Qo = "10000011")
            report "ERREUR ROTATE RIGHT"
            severity error;

        -- =========================
        -- 8. ROTATE LEFT (110)
        -- =========================
        Pi  <= "11100000";
        SEL <= "011"; wait for clk_period; -- charger valeur

        SEL <= "110";
        wait for clk_period;

        assert (Qo = "11000001")
            report "ERREUR ROTATE LEFT"
            severity error;

        report "TOUS LES TESTS SONT PASSÉS" severity note;
        wait;

    end process;

end tb;