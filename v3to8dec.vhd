library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity v3to8dec is
    Port ( A : in  STD_LOGIC_VECTOR (2 downto 0);
           EN : in  STD_LOGIC;
           O : out  STD_LOGIC_VECTOR (7 downto 0));
end v3to8dec;

architecture Behavioral of v3to8dec is

component v2to4dec is
    Port ( EN : in  STD_LOGIC;
           I  : in  STD_LOGIC_VECTOR (1 downto 0);
           Y  : out  STD_LOGIC_VECTOR(3 downto 0));
end component;

signal m : std_logic_vector(1 downto 0);

begin
    m(0) <= NOT A(2) AND EN;
    m(1) <= A(2) AND EN;
    
    U1: v2to4dec Port map(m(1),A(1 downto 0),O(7 downto 4));
    U2: v2to4dec Port map(m(0),A(1 downto 0),O(3 downto 0));
End Behavioral;

