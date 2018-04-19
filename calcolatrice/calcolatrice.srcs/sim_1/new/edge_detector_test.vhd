library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity edge_detector_test is
--  Port ( );
end edge_detector_test;

architecture Behavioral of edge_detector_test is
	component edge_detector is
		Port ( 
			input , res, clk : in std_logic ;
			output : out std_logic
		);
	end component;
	signal inputs, ress, clks, outputs : std_logic :='0';

begin
	clks<=(not clks) after 25 ns;

	ed : edge_detector port map (input=>inputs, res=>ress, clk=>clks, output=> outputs);

	process is
	begin
		inputs<='0';
		ress<='1';
		wait for 50 ns;
		inputs<='1';
		wait for 100ns;
		inputs<='0';
		wait for 100ns;
		inputs<='1';
		wait for 100ns;
		inputs<='0';
		wait;
	end process;

end Behavioral;
