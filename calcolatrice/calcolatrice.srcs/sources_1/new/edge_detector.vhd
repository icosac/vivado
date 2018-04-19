library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity edge_detector is
	Port ( 
		input , res, clk : in std_logic ;
		output : out std_logic
	);
end edge_detector;

architecture Behavioral of edge_detector is
type stato is (a, b, c);
signal present_state, next_state : stato;
begin
	seq: process (res, clk) is 
	begin
		if res = '0' then 
			present_state <= a; 
		elsif rising_edge(clk) then 
			present_state <= next_state;
		end if;
	end process seq;
	
	futuro: process (present_state, input) is 
	begin
		case present_state is
			when a => 
				if input = '0' then 
					next_state <= a;
				else 
					next_state <= b; 
				end if;
			when b => 
				if input ='0' then	
					next_state<=a;
				else
					next_state <= c;
				end if;
			when c => 
				if input = '0' then 
					next_state <= a; 
				else 
					next_state <= c;
				end if;
	end case;
end process futuro;

uscite: process (present_state) is 
begin 
	output <= '0'; 
	if present_state = b then 
		output <= '1'; 
	end if; 
end process uscite;
end Behavioral;
