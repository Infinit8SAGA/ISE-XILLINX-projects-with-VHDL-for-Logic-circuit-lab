----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:03:16 05/08/2025 
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity main is
	port (
		A, B : in STD_LOGIC_VECTOR(3 downto 0); --?? ??? ????? 4 ????
		Op : STD_LOGIC; --?????? ????? 
		Result : out STD_LOGIC_VECTOR(3 downto 0) -- ?????4 ????
	);
end main;

architecture Behavioral of main is

begin
	process(A, B , Op)
	begin
		if Op = '0' then
		Result <= A + B; -- ??? ???
	else	
		Result <= A - B; -- ??? ?????
	 end if;	
	end process;	
end Behavioral;


