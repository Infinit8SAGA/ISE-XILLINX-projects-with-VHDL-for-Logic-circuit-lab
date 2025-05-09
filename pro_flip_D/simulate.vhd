--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   12:38:56 05/09/2025
-- Design Name:   
-- Module Name:   C:/ISE_Projects/pro_flip_D/simulate.vhd
-- Project Name:  pro_flip_D
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: main
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 

 
ENTITY simulate IS
END simulate;
 
ARCHITECTURE behavior OF simulate IS 
 
    
 
    COMPONENT main
    PORT(
         D : IN  std_logic;
         CLK : IN  std_logic;
         Q : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal D : std_logic := '0';
   signal CLK : std_logic := '0';

 	--Outputs
   signal Q : std_logic;

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: main PORT MAP (
          D => D,
          CLK => CLK,
          Q => Q
        );

   -- Clock process definitions
   CLK_process :process
   begin
		CLK <= '0';
		wait for CLK_period/2;
		CLK <= '1';
		wait for CLK_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      
		-- hold reset state for 100 ns.
		D <= '0';
      wait for 5 ns;
		D <= '0';
		wait for 20 ns;
		D <= '1';	
		wait for 20 ns;
		
		D <= '0';
		wait for 15 ns;
		D <= '1';
		wait for 5 ns;
		
		
		D <= '0';
		wait for 5 ns;
		D <= '1';
		wait for 5 ns;
		D <= '0';
		wait for 10 ns;
		
      wait for CLK_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
