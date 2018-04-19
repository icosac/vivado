library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;
entity Accumulatore_test is
--  Port ( );
end Accumulatore_test;

architecture Behavioral of Accumulatore_test is
	component accumulatore is
		Port ( 
			input : in signed (31 downto 0);
			output: buffer signed (31 downto 0);
			init, enable : in std_logic
		);
	end component;
	signal inputs, outputs: signed(31 downto 0) := (others=>'0');
	signal inits, enables : std_logic;

begin
	Acc : accumulatore port map (inputs,outputs,inits,enables);
	process
	begin
		inputs <= (others => '0');
		enables<='0';
		inits<='0';
		wait for 50ns;
		
		inputs<=
	end process;
end Behavioral;
