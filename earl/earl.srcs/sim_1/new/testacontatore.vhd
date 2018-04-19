----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/17/2018 03:27:30 PM
-- Design Name: 
-- Module Name: testacontatore - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity testacontatore is
--  Port ( );
end testacontatore;

architecture Behavioral of testacontatore is
component contatore is
    Port ( 
        clk, res : in std_logic;
        init, enable : in std_logic;
        count : out std_logic_vector(7 downto 0);
        tc : out std_logic
    );
end component;
	signal clk, res, init, enable, tc: std_logic;
	signal count : std_logic_vector(7 downto 0);
begin
	
	ilcontatore : contatore port map (clk, res, init, enable, count, tc);
	
	process is --processo per il clock 
	begin 
		clk <='0';
		wait for 10 ns;
		clk <= '1';
		wait for 10 ns;
	end process;
	
	process is --processo per il reset
	begin
		res <='1';
		wait for 10 ns;
		res <= '0';
		wait for 40 ns;
		res <='1';
		wait;
	end process;
	
	process is --processo per enable e init
	begin
		init <='0';
		enable <='0';
		wait for 100 ns;
		enable <= '1';
		wait for 1000 ns;
		enable <='0';
		wait for 40 ns;
		init <= '1';
		wait for 40 ns;
		enable <= '1';
		wait for 6000 ns;
		init <= '0';
		wait for 40 ns;
		enable <='0';
		wait;		
	end process;
		
end Behavioral;
