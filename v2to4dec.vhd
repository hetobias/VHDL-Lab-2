----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:07:57 11/24/2018 
-- Design Name: 
-- Module Name:    v2to4dec - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity v2to4dec is
Port (    
			I  : in  STD_LOGIC_VECTOR (1 downto 0);  -- 2-bit input
         Y  : out STD_LOGIC_VECTOR (3 downto 0);  -- 4-bit output
			EN : in  STD_LOGIC);    
                             
end v2to4dec;

architecture Behavioral of v2to4dec is

begin

process(I, EN) 
begin
y <= "1111";			--default output value
if (EN = '1') then 	--active high enable bit

	case I is
		when "00" => Y(0) <= '0';
		when "01" => Y(1) <= '0';
		when "10" => Y(2) <= '0';
		when "11" => Y(3) <= '0';
		when others => Y <= "1111";
	end case;
end if;
end process;
end Behavioral;
