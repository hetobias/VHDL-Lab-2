LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY v3to8dectest IS
END v3to8dectest;
 
ARCHITECTURE behavior OF v3to8dectest IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT v3to8dec
    PORT(
         A : IN  std_logic_vector(2 downto 0);
         EN : IN  std_logic;
         O : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(2 downto 0) := (others => '0');
   signal EN : std_logic := '0';

 	--Outputs
   signal O : std_logic_vector(7 downto 0); 
  
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: v3to8dec PORT MAP (
          A => A,
          EN => EN,
          O => O
        );

 

   -- Stimulus process
   stim_proc: process
   begin		
		EN<='0'; A<="000"; wait for 10ns;
		EN<='0'; A<="001"; wait for 10ns;
		EN<='0'; A<="010"; wait for 10ns;
		EN<='0'; A<="011"; wait for 10ns;
		EN<='0'; A<="100"; wait for 10ns;
		EN<='0'; A<="101"; wait for 10ns;
		EN<='0'; A<="110"; wait for 10ns;
		EN<='0'; A<="111"; wait for 10ns;
		
		EN<='1'; A<="000"; wait for 10ns;
		EN<='1'; A<="001"; wait for 10ns;
		EN<='1'; A<="010"; wait for 10ns;
		EN<='1'; A<="011"; wait for 10ns;
		EN<='1'; A<="100"; wait for 10ns;
		EN<='1'; A<="101"; wait for 10ns;
		EN<='1'; A<="110"; wait for 10ns;
		EN<='1'; A<="111"; wait for 10ns;
      wait;
   end process;

END;
