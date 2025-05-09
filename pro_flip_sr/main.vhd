----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:12:03 05/09/2025 
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
use IEEE.NUMERIC_STD.ALL;

entity main is
	port(
		S : in STD_LOGIC;
		R : in STD_LOGIC;
		Q : out STD_LOGIC;
		Qn : out STD_LOGIC
	);
end main;

architecture Behavioral of main is	
		signal q_temp : STD_LOGIC := '0';
		signal qn_temp : STD_LOGIC := '1';	
begin
	process(S, R)
	begin
		if(S = '0' and R = '1') then
			q_temp <= '1';
			qn_temp <= '0';
		elsif(S = '1' and R = '0') then
			q_temp <= '0';
			qn_temp <= '1';
		elsif(S = '0' and R = '0')	then
			q_temp <= '0';
			qn_temp <= '1';
		end if;
	end process;
		Q <= q_temp;
		Qn <= qn_temp;
end Behavioral;

