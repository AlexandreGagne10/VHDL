library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity TOP is
    Port ( sw0 : in STD_LOGIC;
           sw1 : in STD_LOGIC;
           sw2 : in STD_LOGIC;
           ld0 : out STD_LOGIC);
end TOP;

architecture Behavioral of TOP is

component AND_P is 
port (
a: in std_logic;
b: in std_logic;
c: out std_logic);
end component;
component OR_P is 
port (
x: in std_logic;
y: in std_logic;
z: out std_logic);
end component;

signal wire_AND_OUT: std_logic;
signal wire_OR_OUT: std_logic;

begin

AND_PORT1: AND_P
port map(
a => sw2,
b => sw1,
c => wire_AND_OUT
);

AND_PORT2: AND_P
port map(
a => wire_AND_OUT,
b => wire_OR_OUT,
c => ld0
);

OR_PORT1: OR_P
port map(
x => sw1,
y => sw0,
z => wire_OR_OUT
);

end Behavioral;
