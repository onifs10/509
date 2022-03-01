library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity regn is 
    generic ( n integer := 16);
    port (
         R : in std_logic_vector(n-1 downto 0);
         Rin, Clock, in std_logic;
         Q : buffer std_logic_vector(n-1 downto 0);
    );
end regn;

architecture behaviour of regn is
begin
    process (Clock)
    begin
        if Clock'Event and Clock = "1" then 
            if Rin = "1" then 
                Q <= R;
            end if
        end if;
    end process
end behaviour