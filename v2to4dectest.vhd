LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY v2to4dectest IS
END v2to4dectest;
 
ARCHITECTURE behavior OF v2to4dectest IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT v2to4dec
    PORT(
         I : IN  std_logic_vector(1 downto 0);
         Y : OUT  std_logic_vector(3 downto 0);
         EN : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal I : std_logic_vector(1 downto 0) := (others => '0');
   signal EN : std_logic := '0';

 	--Outputs
   signal Y : std_logic_vector(3 downto 0);

BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: v2to4dec PORT MAP (
          I => I,
          Y => Y,
          EN => EN
        );


   stim_proc :process
   begin
		EN <= '0';
		I(1) <= '0'; I(0) <= '0'; wait for 10 ns;
      I(1) <= '0'; I(0) <= '1'; wait for 10 ns;
      I(1) <= '1'; I(0) <= '0'; wait for 10 ns;
      I(1) <= '1'; I(0) <= '1'; wait for 10 ns;
      EN <= '1';
		I(1) <= '0'; I(0) <= '0'; wait for 10 ns;
      I(1) <= '0'; I(0) <= '1'; wait for 10 ns;
      I(1) <= '1'; I(0) <= '0'; wait for 10 ns;
      I(1) <= '1'; I(0) <= '1'; wait for 10 ns;
		wait;
   end process;

END;
