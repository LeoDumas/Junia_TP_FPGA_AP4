library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_flipflop_JKrs is
end tb_flipflop_JKrs;

architecture tb of tb_flipflop_JKrs is
    -- Ajout du signal SETn. Tout est initialisé à '0'
    signal J, K, CLK : std_logic := '0';
    signal RSTn, SETn : std_logic := '1'; -- Initialisés à 1 pour qu'ils soient inactifs au lancement
    signal Q, Qn : std_logic;
    
    -- Définition de la période d'horloge
    constant clk_period : time := 20 ns;

begin
    -- Instanciation de la BONNE entité : flipflop_JKrs
    UUT : entity work.flipflop_JKrs port map(
        J => J,
        K => K,
        CLK => CLK,
        SETn => SETn,
        RSTn => RSTn,
        Q => Q,
        Qn => Qn
    );

    -- Processus de génération de l'horloge
    clk_process : process
    begin
        CLK <= not(CLK);
        wait for clk_period/2;
    end process;

    test: process begin
        
        -- ### 1. Reset asynchrone (RSTn = 0)
        -- Indépendant de l'horloge, Q est forcé à 0 et Qn à 1
        RSTn <= '0';
        SETn <= '1';
        J <= '0';
        K <= '0';
        wait for 15 ns; 
        
        -- Relâchement du reset
        RSTn <= '1';
        wait for 15 ns; 

        -- ### 2. Preset asynchrone (SETn = 0)
        -- Indépendant de l'horloge, Q est forcé à 1 et Qn à 0
        SETn <= '0';
        wait for 15 ns;
        
        -- Relâchement du preset
        SETn <= '1';
        wait for 15 ns;

        -- ### 3. Set synchrone (J=1, K=0) 
        -- Au prochain front montant, Q doit passer à 1 (ou rester à 1)
        J <= '1';
        K <= '0';
        wait for clk_period;

        -- ### 4. Pas de changement / Verrou (J=0, K=0)
        -- Q doit rester à 1
        J <= '0';
        K <= '0';
        wait for clk_period;

        -- ### 5. Réinitialiser / Reset synchrone (J=0, K=1)
        -- Au prochain front montant, Q doit passer à 0
        J <= '0';
        K <= '1';
        wait for clk_period;

        -- ### 6. Pas de changement / Verrou (J=0, K=0)
        -- Q doit rester à 0
        J <= '0';
        K <= '0';
        wait for clk_period;

        -- ### 7. Bascule / Toggle (J=1, K=1)
        -- Q s'inverse à chaque front montant d'horloge
        J <= '1';
        K <= '1';
        wait for clk_period * 3; 

        -- Arrêt de la simulation
        wait;
    end process;

end tb;