----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:25:17 05/09/2025 
-- Design Name: 
-- Module Name:    main - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
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



entity main is
	port (
		D : in STD_LOGIC;
		CLK : in STD_LOGIC;
		Q : out STD_LOGIC
	);
end main;

architecture Behavioral of main is

begin
	process(CLK)
	begin
		if rising_edge(CLK) then
			Q <= D;
		end if;	
	end process;
end Behavioral;

