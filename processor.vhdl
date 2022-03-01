library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;


-- this processor includes , Control unit, registers,  acumulator register, multipler  

entity processor is
    port (
        Din : in std_logic_vector(15 downto 0);
        Resetn, Clock, Run : in std_logic;
        Done: buffer std_logic;
        BusWires : buffer std_logic_vector(15 downto 0);
    );

end processor;

architecture behaviour of processor is
    --- signal declaration         
    constant High : std_logic := "1";
    -- the bit count might be different 
    signal IR :  std_logic_vector(8 downto 0) := "000000000";
    type commandState is (T0, T1, T2,T3);
    signal Tstep_Q, Tstep_D : commandState;
    signal Xreg, Yreg : std_logic_vector(0 to 7);
    ---component declaration 
    IR_register : entity regn
        generic map (
        n : 9
        ) 
        port map( 
            Clock => Clock
            Rin =>  Din(Rin'range)
            Q => IR
        );
    decX : entity dec3to8 
        port map(
            W => IR(4 to 6)
            En => High
            Y => Xreg
        );
    decY : entity dec3to8 
        port map(
            W => IR(7 to 9)
            En => High
            Y => Yreg
        );
    reg0 : entity regn 
        port map (
            
        )

    
    