----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:45:14 05/08/2025 
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
	port(
		A : in STD_LOGIC_VECTOR(3 downto 0); -- ????? ??? 4 ????
		B : in STD_LOGIC_VECTOR( 3 downto 0); -- ????? ??? 4 ????
		Sel : in STD_LOGIC;                  -- ?????? ?????
		Y : out STD_LOGIC_VECTOR(3 downto 0) --????? 4 ????
	);
end main;

architecture Behavioral of main is

begin
	Y <= A when Sel = '0' else
			B when Sel = '1';

end Behavioral;

