Library ieee;
Use ieee.std_logic_1164.all;
    
Entity adder8 is
  port ( Cin		:	In	Std_logic;
		x15,x14,x13,x12	:	In	Std_logic;
		x11,x10,x9,x8	:	In	Std_logic;
		x7,x6,x5,x4	:	In	Std_logic;
		x3,x2,x1,x0	:	In	Std_logic;
		y15,y14,y13,y12	:	In	Std_logic;
		y11,y10,y9,y8	:	In	Std_logic;
		y7,y6,y5,y4	:	In	Std_logic;
		y3,y2,y1,y0	:	In	Std_logic;	
		r15,r14,r13,r12	:	Out	Std_logic;
		r11,r10,r9,r8	:	Out	Std_logic;
		r7,r6,r5,r4	:	Out	Std_logic;
		r3,r2,r1,r0	:	Out	Std_logic;	
		Cout		:	Out	Std_logic
	);	
end adder8;
 
Architecture adder8_structure of adder8 is
	signal c1, c2, c3, c4	:		Std_logic;
	signal c5, c6, c7, c8	:		Std_logic;
	signal c9, c10, c11, c12	:		Std_logic;
	signal c13, c14, c15		:		Std_logic;
	component fulladder
	port (	Cin, x, y	:	In	Std_logic;
		s, Cout		:	Out	Std_logic
	);
	end component;
begin
	stage0: fulladder port map (Cin, x0, y0, r0, c1);
	stage1: fulladder port map (c1, x1, y1, r1, c2);
	stage2: fulladder port map (c2, x2, y2, r2, c3);
	stage3: fulladder port map (c3, x3, y3, r3, c4);
	stage4: fulladder port map (c4, x4, y4, r4, c5);
	stage5: fulladder port map (c5, x5, y5, r5, c6);
	stage6: fulladder port map (c6, x6, y6, r6, c7);
	stage7: fulladder port map (c7, x7, y7, r7, c8);
	stage8: fulladder port map (c8, x8, y8, r8, c9);
	stage9: fulladder port map (c9, x9, y9, r9, c10);
	stage10: fulladder port map (c10, x10, y10, r10, c11);
	stage11: fulladder port map (c11, x11, y11, r11, c12);
	stage12: fulladder port map (c12, x12, y12, r12, c13);
	stage13: fulladder port map (c13, x13, y13, r13, c14);
	stage14: fulladder port map (c14, x14, y14, r14, c15);
	stage15: fulladder port map (c15, x15, y15, r15, Cout);
	
end Architecture;