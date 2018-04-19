library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;

entity ALU_test is
--  Port ( );
end ALU_test;

architecture Behavioral of ALU_test is
	component ALU is
		Port (
			switch, b : in signed(31 downto 0 );
			sum : in std_logic; sub: in std_logic; mul: in std_logic; div: in std_logic;
			output : out signed(31 downto 0);
			overflow : out std_logic
		);
	end component;
	signal a, bs, outputs : signed (31 downto 0) := (others => '0'); 
	signal sums, subs, muls, divs,  overflows: std_logic :='0';
	
begin
	ALUs : ALU port map (a, bs, sums,subs,muls,divs,outputs,overflows);
	process 
	begin
		a<=(others => '0');
		bs<=(others => '0');
		sums<='0';
		subs<='0';
		muls<='0';
		divs<='0';
		wait for 25 ns;
	(others => '0')
		bs<=(others => '0');
		sums<='0';
		subs<='0';
		muls<='0';
		divs<='0';
				
	end process;
end Behavioral;
