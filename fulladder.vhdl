LIBRARY ieee;
USE ieee.std_logic_1164.all;
ENTITY fulladder IS
	PORT (	 Cin, X, Y : IN  STD_LOGIC;
				   s, Cout : OUT STD_LOGIC);
END fulladder;

ARCHITECTURE dataflow OF fulladder IS

BEGIN
	S <= ( X AND NOT Y AND NOT Cin) OR (X AND Y AND Cin) OR (NOT X AND Y AND NOT Cin)OR(NOT X AND NOT Y AND Cin);
	Cout <= (X AND Cin) OR (Y AND Cin) OR (X AND Y);
END dataflow