library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;

entity ALU is
	Port (
		switch, b : in signed(31 downto 0 );
--		sum : in edge_detector; sub: in edge_detector; mul: in edge_detector; div: in edge_detector;
		sum : in std_logic; sub: in std_logic; mul: in std_logic; div: in std_logic;
		output : out signed(31 downto 0);
		overflow : out std_logic
	);
end ALU;

architecture Behavioral of ALU is
begin
	process  (sum, sub, mul, div)
	begin
		overflow<='0';
		if sum='1' then 
			output<=switch+b;
		elsif sub='1' then 
			output<=switch-b;
		elsif mul='1' then 
			output<=switch*b;
		elsif div='1' then 
			if not switch=0 then
				output<=b/switch;
			end if;						
		end if;
		if switch > 0 and b > 0 then	
			overflow<='1';
		end if;
	end process;
end Behavioral;
