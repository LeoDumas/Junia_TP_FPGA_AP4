library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_full_adder_4b is
end tb_full_adder_4b;

architecture tb of tb_full_adder_4b is
	signal A, B, S : std_logic_vector(3 downto 0);
	signal Cin, Cout : std_logic;
begin
    -- Instanciation de l'entité testée, récupérée dans la librairie work
    -- On appelle cette instance UUT (Unit Under Test)
	UUT : entity work.full_adder_4b port map (
        A => A,
        B => B,
		Cin => Cin,
		S => S,
		Cout => Cout
	);

	test : process begin
		-- ### add_2_bits_without_Cin_without_Cout
		-- 1+1+0
		A <= "0001";
		B <= "0001";
		Cin <= '0';
		
		wait for 10ns;

		assert S = "0010" report "Sum error in full_adder_4b (1+1+0)" severity error;
		assert Cout = '0' report "Carry error in full_adder_4b (1+1+0)" severity error;
		-- 5+5+0
		A <= "0101";
		B <= "0101";
		Cin <= '0';
		
		wait for 10ns;

		assert S = "1010" report "Sum error in full_adder_4b (5+5+0)" severity error;
		assert Cout = '0' report "Carry error in full_adder_4b (5+5+0)" severity error;

		-- ### add_2_bits_without_Cin_with_Cout
		-- 9+9+0
		A <= "1001";
		B <= "1001";
		Cin <= '0';
		
		wait for 10ns;

		assert S = "0010" report "Sum error in full_adder_4b (9+9+0)" severity error;
		assert Cout = '1' report "Carry error in full_adder_4b (9+9+0)" severity error;

		-- 15+15+0
		A <= "1111";
		B <= "1111";
		Cin <= '0';
		
		wait for 10ns;

		assert S = "1110" report "Sum error in full_adder_4b (15+15+0)" severity error;
		assert Cout = '1' report "Carry error in full_adder_4b (15+15+0)" severity error;

		-- ### add_2_bits_with_Cin_without_Cout
		-- 1+1+1
		A <= "0001";
		B <= "0001";
		Cin <= '1';
		
		wait for 10ns;

		assert S = "0011" report "Sum error in full_adder_4b (1+1+1)" severity error;
		assert Cout = '0' report "Carry error in full_adder_4b (1+1+1)" severity error;

		-- 3+3+1
		A <= "0011";
		B <= "0011";
		Cin <= '1';
		
		wait for 10ns;

		assert S = "0111" report "Sum error in full_adder_4b (3+3+1)" severity error;
		assert Cout = '0' report "Carry error in full_adder_4b (3+3+1)" severity error;

		-- ### add_2_bits_with_Cin_with_Cout
		-- 15+15+1
		A <= "1111";
		B <= "1111";
		Cin <= '1';
		
		wait for 10ns;

		assert S = "1111" report "Sum error in full_adder_4b (15+15+1)" severity error;
		assert Cout = '1' report "Carry error in full_adder_4b (15+15+1)" severity error;

		-- 8+8+1
		A <= "1000";
		B <= "1000";
		Cin <= '1';
		
		wait for 10ns;

		assert S = "0001" report "Sum error in full_adder_4b (8+8+1)" severity error;
		assert Cout = '1' report "Carry error in full_adder_4b (8+8+1)" severity error;
	end process;
end tb ;