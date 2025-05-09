----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:17:30 05/08/2025 
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
	port (
		A : in STD_LOGIC_VECTOR (3 downto 0); --??? 4 ????
		B : in STD_LOGIC_VECTOR (2 downto 0); --??? 3 ????
		P : out STD_LOGIC_VECTOR (6 downto 0) -- ???? ??? 7 ????
	     );
end main;

architecture Behavioral of main is

begin

	process(A , B)
		variable temp_A : unsigned(3 downto 0);
		variable temp_B : unsigned(2 downto 0);
		variable result : unsigned(6 downto 0);
	begin	
		temp_A := unsigned(A);
		temp_B := unsigned(B);
		result := temp_A * temp_B;
		p <= std_logic_vector(result);
end process;
end Behavioral;

