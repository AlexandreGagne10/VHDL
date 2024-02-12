library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity TOP is
    Port ( 
        mode: in std_logic_vector ( 2 downto 0 );
        sw0: in std_logic;
        sw1: in std_logic;
        ld0: out std_logic        
    );
end TOP;

architecture Behavioral of TOP is

begin

proc: process (mode)
begin

case mode is
    when "000" => ld0 <= not sw0;
    when "001" => ld0 <= sw0 and sw1;
    when "010" => ld0 <= sw0 nand sw1;
    when "011" => ld0 <= sw0 or sw1;
    when "100" => ld0 <= sw0 nor sw1;
    when "101" => ld0 <= sw0 xor sw1;
    when others => ld0 <= sw0 xnor sw1;
end case;
end process;

end Behavioral;
