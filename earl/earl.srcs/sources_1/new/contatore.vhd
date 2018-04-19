----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/17/2018 03:20:27 PM
-- Design Name: 
-- Module Name: contatore - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

entity contatore is
    Port ( 
        clk, res : in std_logic;
        init, enable : in std_logic;
        count : out std_logic_vector(31 downto 0);
        tc : out std_logic
    );
end contatore;

architecture Behavioral of contatore is
    signal temp_count : unsigned (31 downto 0);
begin
    process (clk, res) is 
    begin
        if res = '0' then
            temp_count <= (others => '0');
        elsif rising_edge (clk) then
            if init = '1' then
                temp_count <= (others => '0');    
            elsif enable='1' then
                temp_count<=temp_count+1;
            end if;
        end if;
        if temp_count=255 then
        	tc<='1';
        else 
        	tc<='0';
        end if;
--      	tc <= '1' when temp_count=255 else '0';
        count <= std_logic_vector (temp_count);
    end process;
end Behavioral;
