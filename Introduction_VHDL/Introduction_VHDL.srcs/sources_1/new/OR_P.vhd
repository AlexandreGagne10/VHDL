library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity OR_P is
    Port ( x : in STD_LOGIC;
           y : in STD_LOGIC;
           z : out STD_LOGIC);
end OR_P;

architecture Behavioral of OR_P is

begin

z <= x or y;

end Behavioral;
