library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity AND_P is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           c : out STD_LOGIC);
end AND_P;

architecture Behavioral of AND_P is

begin

c <= a and b;

end Behavioral;
