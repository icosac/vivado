library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;

entity accumulatore is
	Port ( 
		input : in signed (31 downto 0);
		output: buffer signed (31 downto 0);
		init, enable : in std_logic
	);
end accumulatore;

architecture Behavioral of accumulatore is
begin
	process (init, enable)
	begin 
		if init='0' then
			output<=(others => '0');
		elsif enable = '1' then
			output<=input;
		end if;
	end process;
end Behavioral;
