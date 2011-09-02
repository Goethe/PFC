verbatimtex
%&latex
\documentclass{minimal}
\usepackage[spanish]{babel}
\usepackage[T1]{fontenc}
\usepackage{lucidabr}
\usepackage{textcomp, amssymb}
\begin{document}
\fontsize{11pt}{13.2pt}\selectfont
etex

filenametemplate "%j-%02c.mps";

newinternal u, v;
u := 1mm;
v := 10mm;

input boxes
input graph
input gis-pfc-arr
input gis-pfc

init_numbers(btex\usefont{T1}{hlh}{m}{n}\fontsize{11pt}{13.2pt}\selectfont$-$etex,
	btex\usefont{T1}{hlh}{m}{n}\fontsize{11pt}{13.2pt}\selectfont$1$etex, 
	btex\usefont{T1}{hlh}{m}{n}\fontsize{11pt}{13.2pt}\selectfont${\cdot}10$etex, 
	btex\usefont{T1}{hlh}{m}{n}\fontsize{11pt}{13.2pt}\selectfont${}^-$etex, 
	btex\usefont{T1}{hlh}{m}{n}\fontsize{11pt}{13.2pt}\selectfont${}^2$etex
	);

wi = 12v;
he01 = 9v;	he02 = 6.75v;

ahlength := 2u;	ahangle := 20;
ahinset := 5/100;
linejoin := mitered;
linecap := butt;


beginfig (1)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "euc01rx1-1.d" withpen l2;
		gdraw "euc01rx1-2.d" withpen l2;
		gdraw "euc01rx1-3.d" withpen l2;
		gdraw "euc01rx1-4.d" withpen l2;
	endgraph;
endfig;


beginfig (2)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "euc01rx2-1.d" withpen l2;
		gdraw "euc01rx2-2.d" withpen l2;
		gdraw "euc01rx2-3.d" withpen l2;
		gdraw "euc01rx2-4.d" withpen l2;
	endgraph;
endfig;


beginfig (3)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "euc01rx3-1.d" withpen l2;
		gdraw "euc01rx3-2.d" withpen l2;
		gdraw "euc01rx3-3.d" withpen l2;
		gdraw "euc01rx3-4.d" withpen l2;
	endgraph;
endfig;


beginfig (4)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "euc01rx4-1.d" withpen l2;
		gdraw "euc01rx4-2.d" withpen l2;
		gdraw "euc01rx4-3.d" withpen l2;
		gdraw "euc01rx4-4.d" withpen l2;
	endgraph;
endfig;


beginfig (5)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "euc01rx5-1.d" withpen l2;
		gdraw "euc01rx5-2.d" withpen l2;
		gdraw "euc01rx5-3.d" withpen l2;
		gdraw "euc01rx5-4.d" withpen l2;
	endgraph;
endfig;


beginfig (6)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "euc01tx1-1.d" withpen l2;
		gdraw "euc01tx1-2.d" withpen l2;
		gdraw "euc01tx1-3.d" withpen l2;
		gdraw "euc01tx1-4.d" withpen l2;
	endgraph;
endfig;


beginfig (7)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "euc01tx2-1.d" withpen l2;
		gdraw "euc01tx2-2.d" withpen l2;
		gdraw "euc01tx2-3.d" withpen l2;
		gdraw "euc01tx2-4.d" withpen l2;
	endgraph;
endfig;


beginfig (8)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "euc01tx3-1.d" withpen l2;
		gdraw "euc01tx3-2.d" withpen l2;
		gdraw "euc01tx3-3.d" withpen l2;
		gdraw "euc01tx3-4.d" withpen l2;
	endgraph;
endfig;


beginfig (9)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "euc01tx4-1.d" withpen l2;
		gdraw "euc01tx4-2.d" withpen l2;
		gdraw "euc01tx4-3.d" withpen l2;
		gdraw "euc01tx4-4.d" withpen l2;
	endgraph;
endfig;


beginfig (10)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "euc01tx5-1.d" withpen l2;
		gdraw "euc01tx5-2.d" withpen l2;
		gdraw "euc01tx5-3.d" withpen l2;
		gdraw "euc01tx5-4.d" withpen l2;
	endgraph;
endfig;


beginfig (11)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "euc02rx1-1.d" withpen l2;
		gdraw "euc02rx1-2.d" withpen l2;
		gdraw "euc02rx1-3.d" withpen l2;
		gdraw "euc02rx1-4.d" withpen l2;
	endgraph;
endfig;


beginfig (12)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "euc02rx2-1.d" withpen l2;
		gdraw "euc02rx2-2.d" withpen l2;
		gdraw "euc02rx2-3.d" withpen l2;
		gdraw "euc02rx2-4.d" withpen l2;
	endgraph;
endfig;


beginfig (13)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "euc02rx3-1.d" withpen l2;
		gdraw "euc02rx3-2.d" withpen l2;
		gdraw "euc02rx3-3.d" withpen l2;
		gdraw "euc02rx3-4.d" withpen l2;
	endgraph;
endfig;


beginfig (14)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "euc02rx4-1.d" withpen l2;
		gdraw "euc02rx4-2.d" withpen l2;
		gdraw "euc02rx4-3.d" withpen l2;
		gdraw "euc02rx4-4.d" withpen l2;
	endgraph;
endfig;


beginfig (15)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "euc02rx5-1.d" withpen l2;
		gdraw "euc02rx5-2.d" withpen l2;
		gdraw "euc02rx5-3.d" withpen l2;
		gdraw "euc02rx5-4.d" withpen l2;
	endgraph;
endfig;


beginfig (16)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "euc02tx1-1.d" withpen l2;
		gdraw "euc02tx1-2.d" withpen l2;
		gdraw "euc02tx1-3.d" withpen l2;
		gdraw "euc02tx1-4.d" withpen l2;
	endgraph;
endfig;


beginfig (17)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "euc02tx2-1.d" withpen l2;
		gdraw "euc02tx2-2.d" withpen l2;
		gdraw "euc02tx2-3.d" withpen l2;
		gdraw "euc02tx2-4.d" withpen l2;
	endgraph;
endfig;


beginfig (18)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "euc02tx3-1.d" withpen l2;
		gdraw "euc02tx3-2.d" withpen l2;
		gdraw "euc02tx3-3.d" withpen l2;
		gdraw "euc02tx3-4.d" withpen l2;
	endgraph;
endfig;


beginfig (19)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "euc02tx4-1.d" withpen l2;
		gdraw "euc02tx4-2.d" withpen l2;
		gdraw "euc02tx4-3.d" withpen l2;
		gdraw "euc02tx4-4.d" withpen l2;
	endgraph;
endfig;


beginfig (20)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "euc02tx5-1.d" withpen l2;
		gdraw "euc02tx5-2.d" withpen l2;
		gdraw "euc02tx5-3.d" withpen l2;
		gdraw "euc02tx5-4.d" withpen l2;
	endgraph;
endfig;


beginfig (21)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal01rx1-1.d" withpen l2;
		gdraw "pal01rx1-2.d" withpen l2;
		gdraw "pal01rx1-3.d" withpen l2;
		gdraw "pal01rx1-4.d" withpen l2;
	endgraph;
endfig;


beginfig (22)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal01rx2-1.d" withpen l2;
		gdraw "pal01rx2-2.d" withpen l2;
		gdraw "pal01rx2-3.d" withpen l2;
		gdraw "pal01rx2-4.d" withpen l2;
	endgraph;
endfig;


beginfig (23)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal01rx3-1.d" withpen l2;
		gdraw "pal01rx3-2.d" withpen l2;
		gdraw "pal01rx3-3.d" withpen l2;
		gdraw "pal01rx3-4.d" withpen l2;
	endgraph;
endfig;


beginfig (24)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal01rx4-1.d" withpen l2;
		gdraw "pal01rx4-2.d" withpen l2;
		gdraw "pal01rx4-3.d" withpen l2;
		gdraw "pal01rx4-4.d" withpen l2;
	endgraph;
endfig;


beginfig (25)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal01rx5-1.d" withpen l2;
		gdraw "pal01rx5-2.d" withpen l2;
		gdraw "pal01rx5-3.d" withpen l2;
		gdraw "pal01rx5-4.d" withpen l2;
	endgraph;
endfig;


beginfig (26)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal01rxsat1-1.d" withpen l2;
		gdraw "pal01rxsat1-2.d" withpen l2;
		gdraw "pal01rxsat1-3.d" withpen l2;
		gdraw "pal01rxsat1-4.d" withpen l2;
	endgraph;
endfig;


beginfig (27)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal01rxsat2-1.d" withpen l2;
		gdraw "pal01rxsat2-2.d" withpen l2;
		gdraw "pal01rxsat2-3.d" withpen l2;
		gdraw "pal01rxsat2-4.d" withpen l2;
	endgraph;
endfig;


beginfig (28)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal01tx1-1.d" withpen l2;
		gdraw "pal01tx1-2.d" withpen l2;
		gdraw "pal01tx1-3.d" withpen l2;
		gdraw "pal01tx1-4.d" withpen l2;
	endgraph;
endfig;


beginfig (29)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal01tx2-1.d" withpen l2;
		gdraw "pal01tx2-2.d" withpen l2;
		gdraw "pal01tx2-3.d" withpen l2;
		gdraw "pal01tx2-4.d" withpen l2;
	endgraph;
endfig;


beginfig (30)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal01tx3-1.d" withpen l2;
		gdraw "pal01tx3-2.d" withpen l2;
		gdraw "pal01tx3-3.d" withpen l2;
		gdraw "pal01tx3-4.d" withpen l2;
	endgraph;
endfig;


beginfig (31)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal01tx4-1.d" withpen l2;
		gdraw "pal01tx4-2.d" withpen l2;
		gdraw "pal01tx4-3.d" withpen l2;
		gdraw "pal01tx4-4.d" withpen l2;
	endgraph;
endfig;


beginfig (32)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal01tx5-1.d" withpen l2;
		gdraw "pal01tx5-2.d" withpen l2;
		gdraw "pal01tx5-3.d" withpen l2;
		gdraw "pal01tx5-4.d" withpen l2;
	endgraph;
endfig;


beginfig (33)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal01txsat1-1.d" withpen l2;
		gdraw "pal01txsat1-2.d" withpen l2;
		gdraw "pal01txsat1-3.d" withpen l2;
		gdraw "pal01txsat1-4.d" withpen l2;
	endgraph;
endfig;


beginfig (34)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal01txsat2-1.d" withpen l2;
		gdraw "pal01txsat2-2.d" withpen l2;
		gdraw "pal01txsat2-3.d" withpen l2;
		gdraw "pal01txsat2-4.d" withpen l2;
	endgraph;
endfig;


beginfig (35)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal02rx1-1.d" withpen l2;
		gdraw "pal02rx1-2.d" withpen l2;
		gdraw "pal02rx1-3.d" withpen l2;
		gdraw "pal02rx1-4.d" withpen l2;
	endgraph;
endfig;


beginfig (36)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal02rx2-1.d" withpen l2;
		gdraw "pal02rx2-2.d" withpen l2;
		gdraw "pal02rx2-3.d" withpen l2;
		gdraw "pal02rx2-4.d" withpen l2;
	endgraph;
endfig;


beginfig (37)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal02rx3-1.d" withpen l2;
		gdraw "pal02rx3-2.d" withpen l2;
		gdraw "pal02rx3-3.d" withpen l2;
		gdraw "pal02rx3-4.d" withpen l2;
	endgraph;
endfig;


beginfig (38)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal02rx4-1.d" withpen l2;
		gdraw "pal02rx4-2.d" withpen l2;
		gdraw "pal02rx4-3.d" withpen l2;
		gdraw "pal02rx4-4.d" withpen l2;
	endgraph;
endfig;


beginfig (39)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal02rx5-1.d" withpen l2;
		gdraw "pal02rx5-2.d" withpen l2;
		gdraw "pal02rx5-3.d" withpen l2;
		gdraw "pal02rx5-4.d" withpen l2;
	endgraph;
endfig;


beginfig (40)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal02rxsat1-1.d" withpen l2;
		gdraw "pal02rxsat1-2.d" withpen l2;
		gdraw "pal02rxsat1-3.d" withpen l2;
		gdraw "pal02rxsat1-4.d" withpen l2;
	endgraph;
endfig;


beginfig (41)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal02tx1-1.d" withpen l2;
		gdraw "pal02tx1-2.d" withpen l2;
		gdraw "pal02tx1-3.d" withpen l2;
		gdraw "pal02tx1-4.d" withpen l2;
	endgraph;
endfig;


beginfig (42)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal02tx2-1.d" withpen l2;
		gdraw "pal02tx2-2.d" withpen l2;
		gdraw "pal02tx2-3.d" withpen l2;
		gdraw "pal02tx2-4.d" withpen l2;
	endgraph;
endfig;


beginfig (43)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal02tx3-1.d" withpen l2;
		gdraw "pal02tx3-2.d" withpen l2;
		gdraw "pal02tx3-3.d" withpen l2;
		gdraw "pal02tx3-4.d" withpen l2;
	endgraph;
endfig;


beginfig (44)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal02tx4-1.d" withpen l2;
		gdraw "pal02tx4-2.d" withpen l2;
		gdraw "pal02tx4-3.d" withpen l2;
		gdraw "pal02tx4-4.d" withpen l2;
	endgraph;
endfig;


beginfig (45)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal02tx5-1.d" withpen l2;
		gdraw "pal02tx5-2.d" withpen l2;
		gdraw "pal02tx5-3.d" withpen l2;
		gdraw "pal02tx5-4.d" withpen l2;
	endgraph;
endfig;


beginfig (46)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal02txsat1-1.d" withpen l2;
		gdraw "pal02txsat1-2.d" withpen l2;
		gdraw "pal02txsat1-3.d" withpen l2;
		gdraw "pal02txsat1-4.d" withpen l2;
	endgraph;
endfig;


beginfig (47)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal03rx1-1.d" withpen l2;
		gdraw "pal03rx1-2.d" withpen l2;
		gdraw "pal03rx1-3.d" withpen l2;
		gdraw "pal03rx1-4.d" withpen l2;
	endgraph;
endfig;


beginfig (48)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal03rx2-1.d" withpen l2;
		gdraw "pal03rx2-2.d" withpen l2;
		gdraw "pal03rx2-3.d" withpen l2;
		gdraw "pal03rx2-4.d" withpen l2;
	endgraph;
endfig;


beginfig (49)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal03rx3-1.d" withpen l2;
		gdraw "pal03rx3-2.d" withpen l2;
		gdraw "pal03rx3-3.d" withpen l2;
		gdraw "pal03rx3-4.d" withpen l2;
	endgraph;
endfig;


beginfig (50)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal03rx4-1.d" withpen l2;
		gdraw "pal03rx4-2.d" withpen l2;
		gdraw "pal03rx4-3.d" withpen l2;
		gdraw "pal03rx4-4.d" withpen l2;
	endgraph;
endfig;


beginfig (51)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal03rx5-1.d" withpen l2;
		gdraw "pal03rx5-2.d" withpen l2;
		gdraw "pal03rx5-3.d" withpen l2;
		gdraw "pal03rx5-4.d" withpen l2;
	endgraph;
endfig;


beginfig (52)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal03rxsat1-1.d" withpen l2;
		gdraw "pal03rxsat1-2.d" withpen l2;
		gdraw "pal03rxsat1-3.d" withpen l2;
		gdraw "pal03rxsat1-4.d" withpen l2;
	endgraph;
endfig;


beginfig (53)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal03tx1-1.d" withpen l2;
		gdraw "pal03tx1-2.d" withpen l2;
		gdraw "pal03tx1-3.d" withpen l2;
		gdraw "pal03tx1-4.d" withpen l2;
	endgraph;
endfig;


beginfig (54)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal03tx2-1.d" withpen l2;
		gdraw "pal03tx2-2.d" withpen l2;
		gdraw "pal03tx2-3.d" withpen l2;
		gdraw "pal03tx2-4.d" withpen l2;
	endgraph;
endfig;


beginfig (55)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal03tx3-1.d" withpen l2;
		gdraw "pal03tx3-2.d" withpen l2;
		gdraw "pal03tx3-3.d" withpen l2;
		gdraw "pal03tx3-4.d" withpen l2;
	endgraph;
endfig;


beginfig (56)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal03tx4-1.d" withpen l2;
		gdraw "pal03tx4-2.d" withpen l2;
		gdraw "pal03tx4-3.d" withpen l2;
		gdraw "pal03tx4-4.d" withpen l2;
	endgraph;
endfig;


beginfig (57)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal03tx5-1.d" withpen l2;
		gdraw "pal03tx5-2.d" withpen l2;
		gdraw "pal03tx5-3.d" withpen l2;
		gdraw "pal03tx5-4.d" withpen l2;
	endgraph;
endfig;


beginfig (58)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal03txsat1-1.d" withpen l2;
		gdraw "pal03txsat1-2.d" withpen l2;
		gdraw "pal03txsat1-3.d" withpen l2;
		gdraw "pal03txsat1-4.d" withpen l2;
	endgraph;
endfig;


beginfig (59)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal04rx1-1.d" withpen l2;
		gdraw "pal04rx1-2.d" withpen l2;
		gdraw "pal04rx1-3.d" withpen l2;
		gdraw "pal04rx1-4.d" withpen l2;
	endgraph;
endfig;


beginfig (60)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal04rx2-1.d" withpen l2;
		gdraw "pal04rx2-2.d" withpen l2;
		gdraw "pal04rx2-3.d" withpen l2;
		gdraw "pal04rx2-4.d" withpen l2;
	endgraph;
endfig;


beginfig (61)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal04rx3-1.d" withpen l2;
		gdraw "pal04rx3-2.d" withpen l2;
		gdraw "pal04rx3-3.d" withpen l2;
		gdraw "pal04rx3-4.d" withpen l2;
	endgraph;
endfig;


beginfig (62)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal04rx4-1.d" withpen l2;
		gdraw "pal04rx4-2.d" withpen l2;
		gdraw "pal04rx4-3.d" withpen l2;
		gdraw "pal04rx4-4.d" withpen l2;
	endgraph;
endfig;


beginfig (63)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal04rx5-1.d" withpen l2;
		gdraw "pal04rx5-2.d" withpen l2;
		gdraw "pal04rx5-3.d" withpen l2;
		gdraw "pal04rx5-4.d" withpen l2;
	endgraph;
endfig;


beginfig (64)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal04rxsat1-1.d" withpen l2;
		gdraw "pal04rxsat1-2.d" withpen l2;
		gdraw "pal04rxsat1-3.d" withpen l2;
		gdraw "pal04rxsat1-4.d" withpen l2;
	endgraph;
endfig;


beginfig (65)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal04tx1-1.d" withpen l2;
		gdraw "pal04tx1-2.d" withpen l2;
		gdraw "pal04tx1-3.d" withpen l2;
		gdraw "pal04tx1-4.d" withpen l2;
	endgraph;
endfig;


beginfig (66)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal04tx2-1.d" withpen l2;
		gdraw "pal04tx2-2.d" withpen l2;
		gdraw "pal04tx2-3.d" withpen l2;
		gdraw "pal04tx2-4.d" withpen l2;
	endgraph;
endfig;


beginfig (67)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal04tx3-1.d" withpen l2;
		gdraw "pal04tx3-2.d" withpen l2;
		gdraw "pal04tx3-3.d" withpen l2;
		gdraw "pal04tx3-4.d" withpen l2;
	endgraph;
endfig;


beginfig (68)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal04tx4-1.d" withpen l2;
		gdraw "pal04tx4-2.d" withpen l2;
		gdraw "pal04tx4-3.d" withpen l2;
		gdraw "pal04tx4-4.d" withpen l2;
	endgraph;
endfig;


beginfig (69)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal04tx5-1.d" withpen l2;
		gdraw "pal04tx5-2.d" withpen l2;
		gdraw "pal04tx5-3.d" withpen l2;
		gdraw "pal04tx5-4.d" withpen l2;
	endgraph;
endfig;


beginfig (70)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal04txsat1-1.d" withpen l2;
		gdraw "pal04txsat1-2.d" withpen l2;
		gdraw "pal04txsat1-3.d" withpen l2;
		gdraw "pal04txsat1-4.d" withpen l2;
	endgraph;
endfig;


beginfig (71)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal05rx1-1.d" withpen l2;
		gdraw "pal05rx1-2.d" withpen l2;
		gdraw "pal05rx1-3.d" withpen l2;
		gdraw "pal05rx1-4.d" withpen l2;
	endgraph;
endfig;


beginfig (72)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal05rx2-1.d" withpen l2;
		gdraw "pal05rx2-2.d" withpen l2;
		gdraw "pal05rx2-3.d" withpen l2;
		gdraw "pal05rx2-4.d" withpen l2;
	endgraph;
endfig;


beginfig (73)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal05rx3-1.d" withpen l2;
		gdraw "pal05rx3-2.d" withpen l2;
		gdraw "pal05rx3-3.d" withpen l2;
		gdraw "pal05rx3-4.d" withpen l2;
	endgraph;
endfig;


beginfig (74)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal05rx4-1.d" withpen l2;
		gdraw "pal05rx4-2.d" withpen l2;
		gdraw "pal05rx4-3.d" withpen l2;
		gdraw "pal05rx4-4.d" withpen l2;
	endgraph;
endfig;


beginfig (75)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal05rx5-1.d" withpen l2;
		gdraw "pal05rx5-2.d" withpen l2;
		gdraw "pal05rx5-3.d" withpen l2;
		gdraw "pal05rx5-4.d" withpen l2;
	endgraph;
endfig;


beginfig (76)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal05rxsat1-1.d" withpen l2;
		gdraw "pal05rxsat1-2.d" withpen l2;
		gdraw "pal05rxsat1-3.d" withpen l2;
		gdraw "pal05rxsat1-4.d" withpen l2;
	endgraph;
endfig;


beginfig (77)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal05tx1-1.d" withpen l2;
		gdraw "pal05tx1-2.d" withpen l2;
		gdraw "pal05tx1-3.d" withpen l2;
		gdraw "pal05tx1-4.d" withpen l2;
	endgraph;
endfig;


beginfig (78)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal05tx2-1.d" withpen l2;
		gdraw "pal05tx2-2.d" withpen l2;
		gdraw "pal05tx2-3.d" withpen l2;
		gdraw "pal05tx2-4.d" withpen l2;
	endgraph;
endfig;


beginfig (79)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal05tx3-1.d" withpen l2;
		gdraw "pal05tx3-2.d" withpen l2;
		gdraw "pal05tx3-3.d" withpen l2;
		gdraw "pal05tx3-4.d" withpen l2;
	endgraph;
endfig;


beginfig (80)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal05tx4-1.d" withpen l2;
		gdraw "pal05tx4-2.d" withpen l2;
		gdraw "pal05tx4-3.d" withpen l2;
		gdraw "pal05tx4-4.d" withpen l2;
	endgraph;
endfig;


beginfig (81)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal05tx5-1.d" withpen l2;
		gdraw "pal05tx5-2.d" withpen l2;
		gdraw "pal05tx5-3.d" withpen l2;
		gdraw "pal05tx5-4.d" withpen l2;
	endgraph;
endfig;


beginfig (82)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal05txsat1-1.d" withpen l2;
		gdraw "pal05txsat1-2.d" withpen l2;
		gdraw "pal05txsat1-3.d" withpen l2;
		gdraw "pal05txsat1-4.d" withpen l2;
	endgraph;
endfig;


beginfig (83)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal06rx1-1.d" withpen l2;
		gdraw "pal06rx1-2.d" withpen l2;
		gdraw "pal06rx1-3.d" withpen l2;
		gdraw "pal06rx1-4.d" withpen l2;
	endgraph;
endfig;


beginfig (84)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal06rx2-1.d" withpen l2;
		gdraw "pal06rx2-2.d" withpen l2;
		gdraw "pal06rx2-3.d" withpen l2;
		gdraw "pal06rx2-4.d" withpen l2;
	endgraph;
endfig;


beginfig (85)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal06rx3-1.d" withpen l2;
		gdraw "pal06rx3-2.d" withpen l2;
		gdraw "pal06rx3-3.d" withpen l2;
		gdraw "pal06rx3-4.d" withpen l2;
	endgraph;
endfig;


beginfig (86)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal06rx4-1.d" withpen l2;
		gdraw "pal06rx4-2.d" withpen l2;
		gdraw "pal06rx4-3.d" withpen l2;
		gdraw "pal06rx4-4.d" withpen l2;
	endgraph;
endfig;


beginfig (87)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal06rx5-1.d" withpen l2;
		gdraw "pal06rx5-2.d" withpen l2;
		gdraw "pal06rx5-3.d" withpen l2;
		gdraw "pal06rx5-4.d" withpen l2;
	endgraph;
endfig;


beginfig (88)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal06tx1-1.d" withpen l2;
		gdraw "pal06tx1-2.d" withpen l2;
		gdraw "pal06tx1-3.d" withpen l2;
		gdraw "pal06tx1-4.d" withpen l2;
	endgraph;
endfig;


beginfig (89)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal06tx2-1.d" withpen l2;
		gdraw "pal06tx2-2.d" withpen l2;
		gdraw "pal06tx2-3.d" withpen l2;
		gdraw "pal06tx2-4.d" withpen l2;
	endgraph;
endfig;


beginfig (90)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal06tx3-1.d" withpen l2;
		gdraw "pal06tx3-2.d" withpen l2;
		gdraw "pal06tx3-3.d" withpen l2;
		gdraw "pal06tx3-4.d" withpen l2;
	endgraph;
endfig;


beginfig (91)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal06tx4-1.d" withpen l2;
		gdraw "pal06tx4-2.d" withpen l2;
		gdraw "pal06tx4-3.d" withpen l2;
		gdraw "pal06tx4-4.d" withpen l2;
	endgraph;
endfig;


beginfig (92)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal06tx5-1.d" withpen l2;
		gdraw "pal06tx5-2.d" withpen l2;
		gdraw "pal06tx5-3.d" withpen l2;
		gdraw "pal06tx5-4.d" withpen l2;
	endgraph;
endfig;


beginfig (93)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal07rx1-1.d" withpen l2;
		gdraw "pal07rx1-2.d" withpen l2;
		gdraw "pal07rx1-3.d" withpen l2;
		gdraw "pal07rx1-4.d" withpen l2;
	endgraph;
endfig;


beginfig (94)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal07rx2-1.d" withpen l2;
		gdraw "pal07rx2-2.d" withpen l2;
		gdraw "pal07rx2-3.d" withpen l2;
		gdraw "pal07rx2-4.d" withpen l2;
	endgraph;
endfig;


beginfig (95)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal07rx3-1.d" withpen l2;
		gdraw "pal07rx3-2.d" withpen l2;
		gdraw "pal07rx3-3.d" withpen l2;
		gdraw "pal07rx3-4.d" withpen l2;
	endgraph;
endfig;


beginfig (96)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal07rx4-1.d" withpen l2;
		gdraw "pal07rx4-2.d" withpen l2;
		gdraw "pal07rx4-3.d" withpen l2;
		gdraw "pal07rx4-4.d" withpen l2;
	endgraph;
endfig;


beginfig (97)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal07rx5-1.d" withpen l2;
		gdraw "pal07rx5-2.d" withpen l2;
		gdraw "pal07rx5-3.d" withpen l2;
		gdraw "pal07rx5-4.d" withpen l2;
	endgraph;
endfig;


beginfig (98)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal07tx1-1.d" withpen l2;
		gdraw "pal07tx1-2.d" withpen l2;
		gdraw "pal07tx1-3.d" withpen l2;
		gdraw "pal07tx1-4.d" withpen l2;
	endgraph;
endfig;


beginfig (99)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal07tx2-1.d" withpen l2;
		gdraw "pal07tx2-2.d" withpen l2;
		gdraw "pal07tx2-3.d" withpen l2;
		gdraw "pal07tx2-4.d" withpen l2;
	endgraph;
endfig;


beginfig (100)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal07tx3-1.d" withpen l2;
		gdraw "pal07tx3-2.d" withpen l2;
		gdraw "pal07tx3-3.d" withpen l2;
		gdraw "pal07tx3-4.d" withpen l2;
	endgraph;
endfig;


beginfig (101)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal07tx4-1.d" withpen l2;
		gdraw "pal07tx4-2.d" withpen l2;
		gdraw "pal07tx4-3.d" withpen l2;
		gdraw "pal07tx4-4.d" withpen l2;
	endgraph;
endfig;


beginfig (102)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal07tx5-1.d" withpen l2;
		gdraw "pal07tx5-2.d" withpen l2;
		gdraw "pal07tx5-3.d" withpen l2;
		gdraw "pal07tx5-4.d" withpen l2;
	endgraph;
endfig;


beginfig (103)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal08rx1-1.d" withpen l2;
		gdraw "pal08rx1-2.d" withpen l2;
		gdraw "pal08rx1-3.d" withpen l2;
		gdraw "pal08rx1-4.d" withpen l2;
	endgraph;
endfig;


beginfig (104)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal08rx2-1.d" withpen l2;
		gdraw "pal08rx2-2.d" withpen l2;
		gdraw "pal08rx2-3.d" withpen l2;
		gdraw "pal08rx2-4.d" withpen l2;
	endgraph;
endfig;


beginfig (105)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal08rx3-1.d" withpen l2;
		gdraw "pal08rx3-2.d" withpen l2;
		gdraw "pal08rx3-3.d" withpen l2;
		gdraw "pal08rx3-4.d" withpen l2;
	endgraph;
endfig;


beginfig (106)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal08rx4-1.d" withpen l2;
		gdraw "pal08rx4-2.d" withpen l2;
		gdraw "pal08rx4-3.d" withpen l2;
		gdraw "pal08rx4-4.d" withpen l2;
	endgraph;
endfig;


beginfig (107)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal08rx5-1.d" withpen l2;
		gdraw "pal08rx5-2.d" withpen l2;
		gdraw "pal08rx5-3.d" withpen l2;
		gdraw "pal08rx5-4.d" withpen l2;
	endgraph;
endfig;


beginfig (108)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal08tx1-1.d" withpen l2;
		gdraw "pal08tx1-2.d" withpen l2;
		gdraw "pal08tx1-3.d" withpen l2;
		gdraw "pal08tx1-4.d" withpen l2;
	endgraph;
endfig;


beginfig (109)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal08tx2-1.d" withpen l2;
		gdraw "pal08tx2-2.d" withpen l2;
		gdraw "pal08tx2-3.d" withpen l2;
		gdraw "pal08tx2-4.d" withpen l2;
	endgraph;
endfig;


beginfig (110)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal08tx3-1.d" withpen l2;
		gdraw "pal08tx3-2.d" withpen l2;
		gdraw "pal08tx3-3.d" withpen l2;
		gdraw "pal08tx3-4.d" withpen l2;
	endgraph;
endfig;


beginfig (111)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal08tx4-1.d" withpen l2;
		gdraw "pal08tx4-2.d" withpen l2;
		gdraw "pal08tx4-3.d" withpen l2;
		gdraw "pal08tx4-4.d" withpen l2;
	endgraph;
endfig;


beginfig (112)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal08tx5-1.d" withpen l2;
		gdraw "pal08tx5-2.d" withpen l2;
		gdraw "pal08tx5-3.d" withpen l2;
		gdraw "pal08tx5-4.d" withpen l2;
	endgraph;
endfig;


beginfig (113)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal09rx1-1.d" withpen l2;
		gdraw "pal09rx1-2.d" withpen l2;
		gdraw "pal09rx1-3.d" withpen l2;
		gdraw "pal09rx1-4.d" withpen l2;
	endgraph;
endfig;


beginfig (114)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal09rx2-1.d" withpen l2;
		gdraw "pal09rx2-2.d" withpen l2;
		gdraw "pal09rx2-3.d" withpen l2;
		gdraw "pal09rx2-4.d" withpen l2;
	endgraph;
endfig;


beginfig (115)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal09rx3-1.d" withpen l2;
		gdraw "pal09rx3-2.d" withpen l2;
		gdraw "pal09rx3-3.d" withpen l2;
		gdraw "pal09rx3-4.d" withpen l2;
	endgraph;
endfig;


beginfig (116)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal09rx4-1.d" withpen l2;
		gdraw "pal09rx4-2.d" withpen l2;
		gdraw "pal09rx4-3.d" withpen l2;
		gdraw "pal09rx4-4.d" withpen l2;
	endgraph;
endfig;


beginfig (117)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal09rx5-1.d" withpen l2;
		gdraw "pal09rx5-2.d" withpen l2;
		gdraw "pal09rx5-3.d" withpen l2;
		gdraw "pal09rx5-4.d" withpen l2;
	endgraph;
endfig;


beginfig (118)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal09tx1-1.d" withpen l2;
		gdraw "pal09tx1-2.d" withpen l2;
		gdraw "pal09tx1-3.d" withpen l2;
		gdraw "pal09tx1-4.d" withpen l2;
	endgraph;
endfig;


beginfig (119)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal09tx2-1.d" withpen l2;
		gdraw "pal09tx2-2.d" withpen l2;
		gdraw "pal09tx2-3.d" withpen l2;
		gdraw "pal09tx2-4.d" withpen l2;
	endgraph;
endfig;


beginfig (120)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal09tx3-1.d" withpen l2;
		gdraw "pal09tx3-2.d" withpen l2;
		gdraw "pal09tx3-3.d" withpen l2;
		gdraw "pal09tx3-4.d" withpen l2;
	endgraph;
endfig;


beginfig (121)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal09tx4-1.d" withpen l2;
		gdraw "pal09tx4-2.d" withpen l2;
		gdraw "pal09tx4-3.d" withpen l2;
		gdraw "pal09tx4-4.d" withpen l2;
	endgraph;
endfig;


beginfig (122)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal09tx5-1.d" withpen l2;
		gdraw "pal09tx5-2.d" withpen l2;
		gdraw "pal09tx5-3.d" withpen l2;
		gdraw "pal09tx5-4.d" withpen l2;
	endgraph;
endfig;


beginfig (123)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal10rx1-1.d" withpen l2;
		gdraw "pal10rx1-2.d" withpen l2;
		gdraw "pal10rx1-3.d" withpen l2;
		gdraw "pal10rx1-4.d" withpen l2;
	endgraph;
endfig;


beginfig (124)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal10rx2-1.d" withpen l2;
		gdraw "pal10rx2-2.d" withpen l2;
		gdraw "pal10rx2-3.d" withpen l2;
		gdraw "pal10rx2-4.d" withpen l2;
	endgraph;
endfig;


beginfig (125)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal10rx3-1.d" withpen l2;
		gdraw "pal10rx3-2.d" withpen l2;
		gdraw "pal10rx3-3.d" withpen l2;
		gdraw "pal10rx3-4.d" withpen l2;
	endgraph;
endfig;


beginfig (126)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal10rx4-1.d" withpen l2;
		gdraw "pal10rx4-2.d" withpen l2;
		gdraw "pal10rx4-3.d" withpen l2;
		gdraw "pal10rx4-4.d" withpen l2;
	endgraph;
endfig;


beginfig (127)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal10rx5-1.d" withpen l2;
		gdraw "pal10rx5-2.d" withpen l2;
		gdraw "pal10rx5-3.d" withpen l2;
		gdraw "pal10rx5-4.d" withpen l2;
	endgraph;
endfig;


beginfig (128)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal10tx1-1.d" withpen l2;
		gdraw "pal10tx1-2.d" withpen l2;
		gdraw "pal10tx1-3.d" withpen l2;
		gdraw "pal10tx1-4.d" withpen l2;
	endgraph;
endfig;


beginfig (129)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal10tx2-1.d" withpen l2;
		gdraw "pal10tx2-2.d" withpen l2;
		gdraw "pal10tx2-3.d" withpen l2;
		gdraw "pal10tx2-4.d" withpen l2;
	endgraph;
endfig;


beginfig (130)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal10tx3-1.d" withpen l2;
		gdraw "pal10tx3-2.d" withpen l2;
		gdraw "pal10tx3-3.d" withpen l2;
		gdraw "pal10tx3-4.d" withpen l2;
	endgraph;
endfig;


beginfig (131)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal10tx4-1.d" withpen l2;
		gdraw "pal10tx4-2.d" withpen l2;
		gdraw "pal10tx4-3.d" withpen l2;
		gdraw "pal10tx4-4.d" withpen l2;
	endgraph;
endfig;


beginfig (132)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal10tx5-1.d" withpen l2;
		gdraw "pal10tx5-2.d" withpen l2;
		gdraw "pal10tx5-3.d" withpen l2;
		gdraw "pal10tx5-4.d" withpen l2;
	endgraph;
endfig;


beginfig (133)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal11rx1-1.d" withpen l2;
		gdraw "pal11rx1-2.d" withpen l2;
		gdraw "pal11rx1-3.d" withpen l2;
		gdraw "pal11rx1-4.d" withpen l2;
	endgraph;
endfig;


beginfig (134)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal11rx2-1.d" withpen l2;
		gdraw "pal11rx2-2.d" withpen l2;
		gdraw "pal11rx2-3.d" withpen l2;
		gdraw "pal11rx2-4.d" withpen l2;
	endgraph;
endfig;


beginfig (135)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal11rx3-1.d" withpen l2;
		gdraw "pal11rx3-2.d" withpen l2;
		gdraw "pal11rx3-3.d" withpen l2;
		gdraw "pal11rx3-4.d" withpen l2;
	endgraph;
endfig;


beginfig (136)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal11rx4-1.d" withpen l2;
		gdraw "pal11rx4-2.d" withpen l2;
		gdraw "pal11rx4-3.d" withpen l2;
		gdraw "pal11rx4-4.d" withpen l2;
	endgraph;
endfig;


beginfig (137)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal11rx5-1.d" withpen l2;
		gdraw "pal11rx5-2.d" withpen l2;
		gdraw "pal11rx5-3.d" withpen l2;
		gdraw "pal11rx5-4.d" withpen l2;
	endgraph;
endfig;


beginfig (138)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal11tx1-1.d" withpen l2;
		gdraw "pal11tx1-2.d" withpen l2;
		gdraw "pal11tx1-3.d" withpen l2;
		gdraw "pal11tx1-4.d" withpen l2;
	endgraph;
endfig;


beginfig (139)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal11tx2-1.d" withpen l2;
		gdraw "pal11tx2-2.d" withpen l2;
		gdraw "pal11tx2-3.d" withpen l2;
		gdraw "pal11tx2-4.d" withpen l2;
	endgraph;
endfig;


beginfig (140)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal11tx3-1.d" withpen l2;
		gdraw "pal11tx3-2.d" withpen l2;
		gdraw "pal11tx3-3.d" withpen l2;
		gdraw "pal11tx3-4.d" withpen l2;
	endgraph;
endfig;


beginfig (141)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal11tx4-1.d" withpen l2;
		gdraw "pal11tx4-2.d" withpen l2;
		gdraw "pal11tx4-3.d" withpen l2;
		gdraw "pal11tx4-4.d" withpen l2;
	endgraph;
endfig;


beginfig (142)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal11tx5-1.d" withpen l2;
		gdraw "pal11tx5-2.d" withpen l2;
		gdraw "pal11tx5-3.d" withpen l2;
		gdraw "pal11tx5-4.d" withpen l2;
	endgraph;
endfig;


beginfig (143)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal12rx1-1.d" withpen l2;
		gdraw "pal12rx1-2.d" withpen l2;
		gdraw "pal12rx1-3.d" withpen l2;
		gdraw "pal12rx1-4.d" withpen l2;
	endgraph;
endfig;


beginfig (144)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal12rx2-1.d" withpen l2;
		gdraw "pal12rx2-2.d" withpen l2;
		gdraw "pal12rx2-3.d" withpen l2;
		gdraw "pal12rx2-4.d" withpen l2;
	endgraph;
endfig;


beginfig (145)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal12rx3-1.d" withpen l2;
		gdraw "pal12rx3-2.d" withpen l2;
		gdraw "pal12rx3-3.d" withpen l2;
		gdraw "pal12rx3-4.d" withpen l2;
	endgraph;
endfig;


beginfig (146)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal12rx4-1.d" withpen l2;
		gdraw "pal12rx4-2.d" withpen l2;
		gdraw "pal12rx4-3.d" withpen l2;
		gdraw "pal12rx4-4.d" withpen l2;
	endgraph;
endfig;


beginfig (147)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal12rx5-1.d" withpen l2;
		gdraw "pal12rx5-2.d" withpen l2;
		gdraw "pal12rx5-3.d" withpen l2;
		gdraw "pal12rx5-4.d" withpen l2;
	endgraph;
endfig;


beginfig (148)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal12tx1-1.d" withpen l2;
		gdraw "pal12tx1-2.d" withpen l2;
		gdraw "pal12tx1-3.d" withpen l2;
		gdraw "pal12tx1-4.d" withpen l2;
	endgraph;
endfig;


beginfig (149)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal12tx2-1.d" withpen l2;
		gdraw "pal12tx2-2.d" withpen l2;
		gdraw "pal12tx2-3.d" withpen l2;
		gdraw "pal12tx2-4.d" withpen l2;
	endgraph;
endfig;


beginfig (150)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal12tx3-1.d" withpen l2;
		gdraw "pal12tx3-2.d" withpen l2;
		gdraw "pal12tx3-3.d" withpen l2;
		gdraw "pal12tx3-4.d" withpen l2;
	endgraph;
endfig;


beginfig (151)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal12tx4-1.d" withpen l2;
		gdraw "pal12tx4-2.d" withpen l2;
		gdraw "pal12tx4-3.d" withpen l2;
		gdraw "pal12tx4-4.d" withpen l2;
	endgraph;
endfig;


beginfig (152)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal12tx5-1.d" withpen l2;
		gdraw "pal12tx5-2.d" withpen l2;
		gdraw "pal12tx5-3.d" withpen l2;
		gdraw "pal12tx5-4.d" withpen l2;
	endgraph;
endfig;


beginfig (153)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal13rx1-1.d" withpen l2;
		gdraw "pal13rx1-2.d" withpen l2;
		gdraw "pal13rx1-3.d" withpen l2;
		gdraw "pal13rx1-4.d" withpen l2;
	endgraph;
endfig;


beginfig (154)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal13rx2-1.d" withpen l2;
		gdraw "pal13rx2-2.d" withpen l2;
		gdraw "pal13rx2-3.d" withpen l2;
		gdraw "pal13rx2-4.d" withpen l2;
	endgraph;
endfig;


beginfig (155)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal13rx3-1.d" withpen l2;
		gdraw "pal13rx3-2.d" withpen l2;
		gdraw "pal13rx3-3.d" withpen l2;
		gdraw "pal13rx3-4.d" withpen l2;
	endgraph;
endfig;


beginfig (156)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal13rx4-1.d" withpen l2;
		gdraw "pal13rx4-2.d" withpen l2;
		gdraw "pal13rx4-3.d" withpen l2;
		gdraw "pal13rx4-4.d" withpen l2;
	endgraph;
endfig;


beginfig (157)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal13rx5-1.d" withpen l2;
		gdraw "pal13rx5-2.d" withpen l2;
		gdraw "pal13rx5-3.d" withpen l2;
		gdraw "pal13rx5-4.d" withpen l2;
	endgraph;
endfig;


beginfig (158)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal13tx1-1.d" withpen l2;
		gdraw "pal13tx1-2.d" withpen l2;
		gdraw "pal13tx1-3.d" withpen l2;
		gdraw "pal13tx1-4.d" withpen l2;
	endgraph;
endfig;


beginfig (159)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal13tx2-1.d" withpen l2;
		gdraw "pal13tx2-2.d" withpen l2;
		gdraw "pal13tx2-3.d" withpen l2;
		gdraw "pal13tx2-4.d" withpen l2;
	endgraph;
endfig;


beginfig (160)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal13tx3-1.d" withpen l2;
		gdraw "pal13tx3-2.d" withpen l2;
		gdraw "pal13tx3-3.d" withpen l2;
		gdraw "pal13tx3-4.d" withpen l2;
	endgraph;
endfig;


beginfig (161)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal13tx4-1.d" withpen l2;
		gdraw "pal13tx4-2.d" withpen l2;
		gdraw "pal13tx4-3.d" withpen l2;
		gdraw "pal13tx4-4.d" withpen l2;
	endgraph;
endfig;


beginfig (162)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal13tx5-1.d" withpen l2;
		gdraw "pal13tx5-2.d" withpen l2;
		gdraw "pal13tx5-3.d" withpen l2;
		gdraw "pal13tx5-4.d" withpen l2;
	endgraph;
endfig;


beginfig (163)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal14rx1-1.d" withpen l2;
		gdraw "pal14rx1-2.d" withpen l2;
		gdraw "pal14rx1-3.d" withpen l2;
		gdraw "pal14rx1-4.d" withpen l2;
	endgraph;
endfig;


beginfig (164)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal14rx2-1.d" withpen l2;
		gdraw "pal14rx2-2.d" withpen l2;
		gdraw "pal14rx2-3.d" withpen l2;
		gdraw "pal14rx2-4.d" withpen l2;
	endgraph;
endfig;


beginfig (165)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal14rx3-1.d" withpen l2;
		gdraw "pal14rx3-2.d" withpen l2;
		gdraw "pal14rx3-3.d" withpen l2;
		gdraw "pal14rx3-4.d" withpen l2;
	endgraph;
endfig;


beginfig (166)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal14rx4-1.d" withpen l2;
		gdraw "pal14rx4-2.d" withpen l2;
		gdraw "pal14rx4-3.d" withpen l2;
		gdraw "pal14rx4-4.d" withpen l2;
	endgraph;
endfig;


beginfig (167)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal14rx5-1.d" withpen l2;
		gdraw "pal14rx5-2.d" withpen l2;
		gdraw "pal14rx5-3.d" withpen l2;
		gdraw "pal14rx5-4.d" withpen l2;
	endgraph;
endfig;


beginfig (168)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal14tx1-1.d" withpen l2;
		gdraw "pal14tx1-2.d" withpen l2;
		gdraw "pal14tx1-3.d" withpen l2;
		gdraw "pal14tx1-4.d" withpen l2;
	endgraph;
endfig;


beginfig (169)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal14tx2-1.d" withpen l2;
		gdraw "pal14tx2-2.d" withpen l2;
		gdraw "pal14tx2-3.d" withpen l2;
		gdraw "pal14tx2-4.d" withpen l2;
	endgraph;
endfig;


beginfig (170)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal14tx3-1.d" withpen l2;
		gdraw "pal14tx3-2.d" withpen l2;
		gdraw "pal14tx3-3.d" withpen l2;
		gdraw "pal14tx3-4.d" withpen l2;
	endgraph;
endfig;


beginfig (171)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal14tx4-1.d" withpen l2;
		gdraw "pal14tx4-2.d" withpen l2;
		gdraw "pal14tx4-3.d" withpen l2;
		gdraw "pal14tx4-4.d" withpen l2;
	endgraph;
endfig;


beginfig (172)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal14tx5-1.d" withpen l2;
		gdraw "pal14tx5-2.d" withpen l2;
		gdraw "pal14tx5-3.d" withpen l2;
		gdraw "pal14tx5-4.d" withpen l2;
	endgraph;
endfig;


beginfig (173)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal15rx1-1.d" withpen l2;
		gdraw "pal15rx1-2.d" withpen l2;
		gdraw "pal15rx1-3.d" withpen l2;
		gdraw "pal15rx1-4.d" withpen l2;
	endgraph;
endfig;


beginfig (174)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal15rx2-1.d" withpen l2;
		gdraw "pal15rx2-2.d" withpen l2;
		gdraw "pal15rx2-3.d" withpen l2;
		gdraw "pal15rx2-4.d" withpen l2;
	endgraph;
endfig;


beginfig (175)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal15rx3-1.d" withpen l2;
		gdraw "pal15rx3-2.d" withpen l2;
		gdraw "pal15rx3-3.d" withpen l2;
		gdraw "pal15rx3-4.d" withpen l2;
	endgraph;
endfig;


beginfig (176)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal15rx4-1.d" withpen l2;
		gdraw "pal15rx4-2.d" withpen l2;
		gdraw "pal15rx4-3.d" withpen l2;
		gdraw "pal15rx4-4.d" withpen l2;
	endgraph;
endfig;


beginfig (177)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal15rx5-1.d" withpen l2;
		gdraw "pal15rx5-2.d" withpen l2;
		gdraw "pal15rx5-3.d" withpen l2;
		gdraw "pal15rx5-4.d" withpen l2;
	endgraph;
endfig;


beginfig (178)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal15tx1-1.d" withpen l2;
		gdraw "pal15tx1-2.d" withpen l2;
		gdraw "pal15tx1-3.d" withpen l2;
		gdraw "pal15tx1-4.d" withpen l2;
	endgraph;
endfig;


beginfig (179)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal15tx2-1.d" withpen l2;
		gdraw "pal15tx2-2.d" withpen l2;
		gdraw "pal15tx2-3.d" withpen l2;
		gdraw "pal15tx2-4.d" withpen l2;
	endgraph;
endfig;


beginfig (180)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal15tx3-1.d" withpen l2;
		gdraw "pal15tx3-2.d" withpen l2;
		gdraw "pal15tx3-3.d" withpen l2;
		gdraw "pal15tx3-4.d" withpen l2;
	endgraph;
endfig;


beginfig (181)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal15tx4-1.d" withpen l2;
		gdraw "pal15tx4-2.d" withpen l2;
		gdraw "pal15tx4-3.d" withpen l2;
		gdraw "pal15tx4-4.d" withpen l2;
	endgraph;
endfig;


beginfig (182)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal15tx5-1.d" withpen l2;
		gdraw "pal15tx5-2.d" withpen l2;
		gdraw "pal15tx5-3.d" withpen l2;
		gdraw "pal15tx5-4.d" withpen l2;
	endgraph;
endfig;


beginfig (183)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal16rx1-1.d" withpen l2;
		gdraw "pal16rx1-2.d" withpen l2;
		gdraw "pal16rx1-3.d" withpen l2;
		gdraw "pal16rx1-4.d" withpen l2;
	endgraph;
endfig;


beginfig (184)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal16rx2-1.d" withpen l2;
		gdraw "pal16rx2-2.d" withpen l2;
		gdraw "pal16rx2-3.d" withpen l2;
		gdraw "pal16rx2-4.d" withpen l2;
	endgraph;
endfig;


beginfig (185)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal16rx3-1.d" withpen l2;
		gdraw "pal16rx3-2.d" withpen l2;
		gdraw "pal16rx3-3.d" withpen l2;
		gdraw "pal16rx3-4.d" withpen l2;
	endgraph;
endfig;


beginfig (186)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal16rx4-1.d" withpen l2;
		gdraw "pal16rx4-2.d" withpen l2;
		gdraw "pal16rx4-3.d" withpen l2;
		gdraw "pal16rx4-4.d" withpen l2;
	endgraph;
endfig;


beginfig (187)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal16rx5-1.d" withpen l2;
		gdraw "pal16rx5-2.d" withpen l2;
		gdraw "pal16rx5-3.d" withpen l2;
		gdraw "pal16rx5-4.d" withpen l2;
	endgraph;
endfig;


beginfig (188)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal16tx1-1.d" withpen l2;
		gdraw "pal16tx1-2.d" withpen l2;
		gdraw "pal16tx1-3.d" withpen l2;
		gdraw "pal16tx1-4.d" withpen l2;
	endgraph;
endfig;


beginfig (189)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal16tx2-1.d" withpen l2;
		gdraw "pal16tx2-2.d" withpen l2;
		gdraw "pal16tx2-3.d" withpen l2;
		gdraw "pal16tx2-4.d" withpen l2;
	endgraph;
endfig;


beginfig (190)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal16tx3-1.d" withpen l2;
		gdraw "pal16tx3-2.d" withpen l2;
		gdraw "pal16tx3-3.d" withpen l2;
		gdraw "pal16tx3-4.d" withpen l2;
	endgraph;
endfig;


beginfig (191)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal16tx4-1.d" withpen l2;
		gdraw "pal16tx4-2.d" withpen l2;
		gdraw "pal16tx4-3.d" withpen l2;
		gdraw "pal16tx4-4.d" withpen l2;
	endgraph;
endfig;


beginfig (192)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal16tx5-1.d" withpen l2;
		gdraw "pal16tx5-2.d" withpen l2;
		gdraw "pal16tx5-3.d" withpen l2;
		gdraw "pal16tx5-4.d" withpen l2;
	endgraph;
endfig;


beginfig (193)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal17rx1-1.d" withpen l2;
		gdraw "pal17rx1-2.d" withpen l2;
		gdraw "pal17rx1-3.d" withpen l2;
		gdraw "pal17rx1-4.d" withpen l2;
	endgraph;
endfig;


beginfig (194)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal17rx2-1.d" withpen l2;
		gdraw "pal17rx2-2.d" withpen l2;
		gdraw "pal17rx2-3.d" withpen l2;
		gdraw "pal17rx2-4.d" withpen l2;
	endgraph;
endfig;


beginfig (195)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal17rx3-1.d" withpen l2;
		gdraw "pal17rx3-2.d" withpen l2;
		gdraw "pal17rx3-3.d" withpen l2;
		gdraw "pal17rx3-4.d" withpen l2;
	endgraph;
endfig;


beginfig (196)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal17rx4-1.d" withpen l2;
		gdraw "pal17rx4-2.d" withpen l2;
		gdraw "pal17rx4-3.d" withpen l2;
		gdraw "pal17rx4-4.d" withpen l2;
	endgraph;
endfig;


beginfig (197)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal17rx5-1.d" withpen l2;
		gdraw "pal17rx5-2.d" withpen l2;
		gdraw "pal17rx5-3.d" withpen l2;
		gdraw "pal17rx5-4.d" withpen l2;
	endgraph;
endfig;


beginfig (198)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal17tx1-1.d" withpen l2;
		gdraw "pal17tx1-2.d" withpen l2;
		gdraw "pal17tx1-3.d" withpen l2;
		gdraw "pal17tx1-4.d" withpen l2;
	endgraph;
endfig;


beginfig (199)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal17tx2-1.d" withpen l2;
		gdraw "pal17tx2-2.d" withpen l2;
		gdraw "pal17tx2-3.d" withpen l2;
		gdraw "pal17tx2-4.d" withpen l2;
	endgraph;
endfig;


beginfig (200)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal17tx3-1.d" withpen l2;
		gdraw "pal17tx3-2.d" withpen l2;
		gdraw "pal17tx3-3.d" withpen l2;
		gdraw "pal17tx3-4.d" withpen l2;
	endgraph;
endfig;


beginfig (201)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal17tx4-1.d" withpen l2;
		gdraw "pal17tx4-2.d" withpen l2;
		gdraw "pal17tx4-3.d" withpen l2;
		gdraw "pal17tx4-4.d" withpen l2;
	endgraph;
endfig;


beginfig (202)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal17tx5-1.d" withpen l2;
		gdraw "pal17tx5-2.d" withpen l2;
		gdraw "pal17tx5-3.d" withpen l2;
		gdraw "pal17tx5-4.d" withpen l2;
	endgraph;
endfig;


beginfig (203)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal18rx1-1.d" withpen l2;
		gdraw "pal18rx1-2.d" withpen l2;
		gdraw "pal18rx1-3.d" withpen l2;
		gdraw "pal18rx1-4.d" withpen l2;
	endgraph;
endfig;


beginfig (204)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal18rx2-1.d" withpen l2;
		gdraw "pal18rx2-2.d" withpen l2;
		gdraw "pal18rx2-3.d" withpen l2;
		gdraw "pal18rx2-4.d" withpen l2;
	endgraph;
endfig;


beginfig (205)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal18rx3-1.d" withpen l2;
		gdraw "pal18rx3-2.d" withpen l2;
		gdraw "pal18rx3-3.d" withpen l2;
		gdraw "pal18rx3-4.d" withpen l2;
	endgraph;
endfig;


beginfig (206)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal18rx4-1.d" withpen l2;
		gdraw "pal18rx4-2.d" withpen l2;
		gdraw "pal18rx4-3.d" withpen l2;
		gdraw "pal18rx4-4.d" withpen l2;
	endgraph;
endfig;


beginfig (207)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal18rx5-1.d" withpen l2;
		gdraw "pal18rx5-2.d" withpen l2;
		gdraw "pal18rx5-3.d" withpen l2;
		gdraw "pal18rx5-4.d" withpen l2;
	endgraph;
endfig;


beginfig (208)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal18tx1-1.d" withpen l2;
		gdraw "pal18tx1-2.d" withpen l2;
		gdraw "pal18tx1-3.d" withpen l2;
		gdraw "pal18tx1-4.d" withpen l2;
	endgraph;
endfig;


beginfig (209)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal18tx2-1.d" withpen l2;
		gdraw "pal18tx2-2.d" withpen l2;
		gdraw "pal18tx2-3.d" withpen l2;
		gdraw "pal18tx2-4.d" withpen l2;
	endgraph;
endfig;


beginfig (210)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal18tx3-1.d" withpen l2;
		gdraw "pal18tx3-2.d" withpen l2;
		gdraw "pal18tx3-3.d" withpen l2;
		gdraw "pal18tx3-4.d" withpen l2;
	endgraph;
endfig;


beginfig (211)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal18tx4-1.d" withpen l2;
		gdraw "pal18tx4-2.d" withpen l2;
		gdraw "pal18tx4-3.d" withpen l2;
		gdraw "pal18tx4-4.d" withpen l2;
	endgraph;
endfig;


beginfig (212)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal18tx5-1.d" withpen l2;
		gdraw "pal18tx5-2.d" withpen l2;
		gdraw "pal18tx5-3.d" withpen l2;
		gdraw "pal18tx5-4.d" withpen l2;
	endgraph;
endfig;


beginfig (213)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal19rx1-1.d" withpen l2;
		gdraw "pal19rx1-2.d" withpen l2;
		gdraw "pal19rx1-3.d" withpen l2;
		gdraw "pal19rx1-4.d" withpen l2;
	endgraph;
endfig;


beginfig (214)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal19rx2-1.d" withpen l2;
		gdraw "pal19rx2-2.d" withpen l2;
		gdraw "pal19rx2-3.d" withpen l2;
		gdraw "pal19rx2-4.d" withpen l2;
	endgraph;
endfig;


beginfig (215)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal19rx3-1.d" withpen l2;
		gdraw "pal19rx3-2.d" withpen l2;
		gdraw "pal19rx3-3.d" withpen l2;
		gdraw "pal19rx3-4.d" withpen l2;
	endgraph;
endfig;


beginfig (216)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal19rx4-1.d" withpen l2;
		gdraw "pal19rx4-2.d" withpen l2;
		gdraw "pal19rx4-3.d" withpen l2;
		gdraw "pal19rx4-4.d" withpen l2;
	endgraph;
endfig;


beginfig (217)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal19rx5-1.d" withpen l2;
		gdraw "pal19rx5-2.d" withpen l2;
		gdraw "pal19rx5-3.d" withpen l2;
		gdraw "pal19rx5-4.d" withpen l2;
	endgraph;
endfig;


beginfig (218)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal19tx1-1.d" withpen l2;
		gdraw "pal19tx1-2.d" withpen l2;
		gdraw "pal19tx1-3.d" withpen l2;
		gdraw "pal19tx1-4.d" withpen l2;
	endgraph;
endfig;


beginfig (219)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal19tx2-1.d" withpen l2;
		gdraw "pal19tx2-2.d" withpen l2;
		gdraw "pal19tx2-3.d" withpen l2;
		gdraw "pal19tx2-4.d" withpen l2;
	endgraph;
endfig;


beginfig (220)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal19tx3-1.d" withpen l2;
		gdraw "pal19tx3-2.d" withpen l2;
		gdraw "pal19tx3-3.d" withpen l2;
		gdraw "pal19tx3-4.d" withpen l2;
	endgraph;
endfig;


beginfig (221)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal19tx4-1.d" withpen l2;
		gdraw "pal19tx4-2.d" withpen l2;
		gdraw "pal19tx4-3.d" withpen l2;
		gdraw "pal19tx4-4.d" withpen l2;
	endgraph;
endfig;


beginfig (222)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal19tx5-1.d" withpen l2;
		gdraw "pal19tx5-2.d" withpen l2;
		gdraw "pal19tx5-3.d" withpen l2;
		gdraw "pal19tx5-4.d" withpen l2;
	endgraph;
endfig;


beginfig (223)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal20rx1-1.d" withpen l2;
		gdraw "pal20rx1-2.d" withpen l2;
		gdraw "pal20rx1-3.d" withpen l2;
		gdraw "pal20rx1-4.d" withpen l2;
	endgraph;
endfig;


beginfig (224)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal20rx2-1.d" withpen l2;
		gdraw "pal20rx2-2.d" withpen l2;
		gdraw "pal20rx2-3.d" withpen l2;
		gdraw "pal20rx2-4.d" withpen l2;
	endgraph;
endfig;


beginfig (225)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal20rx3-1.d" withpen l2;
		gdraw "pal20rx3-2.d" withpen l2;
		gdraw "pal20rx3-3.d" withpen l2;
		gdraw "pal20rx3-4.d" withpen l2;
	endgraph;
endfig;


beginfig (226)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal20rx4-1.d" withpen l2;
		gdraw "pal20rx4-2.d" withpen l2;
		gdraw "pal20rx4-3.d" withpen l2;
		gdraw "pal20rx4-4.d" withpen l2;
	endgraph;
endfig;


beginfig (227)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal20rx5-1.d" withpen l2;
		gdraw "pal20rx5-2.d" withpen l2;
		gdraw "pal20rx5-3.d" withpen l2;
		gdraw "pal20rx5-4.d" withpen l2;
	endgraph;
endfig;


beginfig (228)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal20tx1-1.d" withpen l2;
		gdraw "pal20tx1-2.d" withpen l2;
		gdraw "pal20tx1-3.d" withpen l2;
		gdraw "pal20tx1-4.d" withpen l2;
	endgraph;
endfig;


beginfig (229)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal20tx2-1.d" withpen l2;
		gdraw "pal20tx2-2.d" withpen l2;
		gdraw "pal20tx2-3.d" withpen l2;
		gdraw "pal20tx2-4.d" withpen l2;
	endgraph;
endfig;


beginfig (230)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal20tx3-1.d" withpen l2;
		gdraw "pal20tx3-2.d" withpen l2;
		gdraw "pal20tx3-3.d" withpen l2;
		gdraw "pal20tx3-4.d" withpen l2;
	endgraph;
endfig;


beginfig (231)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal20tx4-1.d" withpen l2;
		gdraw "pal20tx4-2.d" withpen l2;
		gdraw "pal20tx4-3.d" withpen l2;
		gdraw "pal20tx4-4.d" withpen l2;
	endgraph;
endfig;


beginfig (232)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal20tx5-1.d" withpen l2;
		gdraw "pal20tx5-2.d" withpen l2;
		gdraw "pal20tx5-3.d" withpen l2;
		gdraw "pal20tx5-4.d" withpen l2;
	endgraph;
endfig;


beginfig (233)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal21rx1-1.d" withpen l2;
		gdraw "pal21rx1-2.d" withpen l2;
		gdraw "pal21rx1-3.d" withpen l2;
		gdraw "pal21rx1-4.d" withpen l2;
	endgraph;
endfig;


beginfig (234)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal21rx2-1.d" withpen l2;
		gdraw "pal21rx2-2.d" withpen l2;
		gdraw "pal21rx2-3.d" withpen l2;
		gdraw "pal21rx2-4.d" withpen l2;
	endgraph;
endfig;


beginfig (235)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal21rx3-1.d" withpen l2;
		gdraw "pal21rx3-2.d" withpen l2;
		gdraw "pal21rx3-3.d" withpen l2;
		gdraw "pal21rx3-4.d" withpen l2;
	endgraph;
endfig;


beginfig (236)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal21rx4-1.d" withpen l2;
		gdraw "pal21rx4-2.d" withpen l2;
		gdraw "pal21rx4-3.d" withpen l2;
		gdraw "pal21rx4-4.d" withpen l2;
	endgraph;
endfig;


beginfig (237)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal21rx5-1.d" withpen l2;
		gdraw "pal21rx5-2.d" withpen l2;
		gdraw "pal21rx5-3.d" withpen l2;
		gdraw "pal21rx5-4.d" withpen l2;
	endgraph;
endfig;


beginfig (238)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal21tx1-1.d" withpen l2;
		gdraw "pal21tx1-2.d" withpen l2;
		gdraw "pal21tx1-3.d" withpen l2;
		gdraw "pal21tx1-4.d" withpen l2;
	endgraph;
endfig;


beginfig (239)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal21tx2-1.d" withpen l2;
		gdraw "pal21tx2-2.d" withpen l2;
		gdraw "pal21tx2-3.d" withpen l2;
		gdraw "pal21tx2-4.d" withpen l2;
	endgraph;
endfig;


beginfig (240)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal21tx3-1.d" withpen l2;
		gdraw "pal21tx3-2.d" withpen l2;
		gdraw "pal21tx3-3.d" withpen l2;
		gdraw "pal21tx3-4.d" withpen l2;
	endgraph;
endfig;


beginfig (241)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal21tx4-1.d" withpen l2;
		gdraw "pal21tx4-2.d" withpen l2;
		gdraw "pal21tx4-3.d" withpen l2;
		gdraw "pal21tx4-4.d" withpen l2;
	endgraph;
endfig;


beginfig (242)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal21tx5-1.d" withpen l2;
		gdraw "pal21tx5-2.d" withpen l2;
		gdraw "pal21tx5-3.d" withpen l2;
		gdraw "pal21tx5-4.d" withpen l2;
	endgraph;
endfig;


beginfig (243)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal22rx1-1.d" withpen l2;
		gdraw "pal22rx1-2.d" withpen l2;
		gdraw "pal22rx1-3.d" withpen l2;
		gdraw "pal22rx1-4.d" withpen l2;
	endgraph;
endfig;


beginfig (244)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal22rx2-1.d" withpen l2;
		gdraw "pal22rx2-2.d" withpen l2;
		gdraw "pal22rx2-3.d" withpen l2;
		gdraw "pal22rx2-4.d" withpen l2;
	endgraph;
endfig;


beginfig (245)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal22rx3-1.d" withpen l2;
		gdraw "pal22rx3-2.d" withpen l2;
		gdraw "pal22rx3-3.d" withpen l2;
		gdraw "pal22rx3-4.d" withpen l2;
	endgraph;
endfig;


beginfig (246)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal22rx4-1.d" withpen l2;
		gdraw "pal22rx4-2.d" withpen l2;
		gdraw "pal22rx4-3.d" withpen l2;
		gdraw "pal22rx4-4.d" withpen l2;
	endgraph;
endfig;


beginfig (247)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal22rx5-1.d" withpen l2;
		gdraw "pal22rx5-2.d" withpen l2;
		gdraw "pal22rx5-3.d" withpen l2;
		gdraw "pal22rx5-4.d" withpen l2;
	endgraph;
endfig;


beginfig (248)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal22tx1-1.d" withpen l2;
		gdraw "pal22tx1-2.d" withpen l2;
		gdraw "pal22tx1-3.d" withpen l2;
		gdraw "pal22tx1-4.d" withpen l2;
	endgraph;
endfig;


beginfig (249)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal22tx2-1.d" withpen l2;
		gdraw "pal22tx2-2.d" withpen l2;
		gdraw "pal22tx2-3.d" withpen l2;
		gdraw "pal22tx2-4.d" withpen l2;
	endgraph;
endfig;


beginfig (250)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal22tx3-1.d" withpen l2;
		gdraw "pal22tx3-2.d" withpen l2;
		gdraw "pal22tx3-3.d" withpen l2;
		gdraw "pal22tx3-4.d" withpen l2;
	endgraph;
endfig;


beginfig (251)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal22tx4-1.d" withpen l2;
		gdraw "pal22tx4-2.d" withpen l2;
		gdraw "pal22tx4-3.d" withpen l2;
		gdraw "pal22tx4-4.d" withpen l2;
	endgraph;
endfig;


beginfig (252)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal22tx5-1.d" withpen l2;
		gdraw "pal22tx5-2.d" withpen l2;
		gdraw "pal22tx5-3.d" withpen l2;
		gdraw "pal22tx5-4.d" withpen l2;
	endgraph;
endfig;


beginfig (253)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal23rx1-1.d" withpen l2;
		gdraw "pal23rx1-2.d" withpen l2;
		gdraw "pal23rx1-3.d" withpen l2;
		gdraw "pal23rx1-4.d" withpen l2;
	endgraph;
endfig;


beginfig (254)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal23rx2-1.d" withpen l2;
		gdraw "pal23rx2-2.d" withpen l2;
		gdraw "pal23rx2-3.d" withpen l2;
		gdraw "pal23rx2-4.d" withpen l2;
	endgraph;
endfig;


beginfig (255)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal23rx3-1.d" withpen l2;
		gdraw "pal23rx3-2.d" withpen l2;
		gdraw "pal23rx3-3.d" withpen l2;
		gdraw "pal23rx3-4.d" withpen l2;
	endgraph;
endfig;


beginfig (256)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal23rx4-1.d" withpen l2;
		gdraw "pal23rx4-2.d" withpen l2;
		gdraw "pal23rx4-3.d" withpen l2;
		gdraw "pal23rx4-4.d" withpen l2;
	endgraph;
endfig;


beginfig (257)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal23rx5-1.d" withpen l2;
		gdraw "pal23rx5-2.d" withpen l2;
		gdraw "pal23rx5-3.d" withpen l2;
		gdraw "pal23rx5-4.d" withpen l2;
	endgraph;
endfig;


beginfig (258)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal23tx1-1.d" withpen l2;
		gdraw "pal23tx1-2.d" withpen l2;
		gdraw "pal23tx1-3.d" withpen l2;
		gdraw "pal23tx1-4.d" withpen l2;
	endgraph;
endfig;


beginfig (259)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal23tx2-1.d" withpen l2;
		gdraw "pal23tx2-2.d" withpen l2;
		gdraw "pal23tx2-3.d" withpen l2;
		gdraw "pal23tx2-4.d" withpen l2;
	endgraph;
endfig;


beginfig (260)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal23tx3-1.d" withpen l2;
		gdraw "pal23tx3-2.d" withpen l2;
		gdraw "pal23tx3-3.d" withpen l2;
		gdraw "pal23tx3-4.d" withpen l2;
	endgraph;
endfig;


beginfig (261)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal23tx4-1.d" withpen l2;
		gdraw "pal23tx4-2.d" withpen l2;
		gdraw "pal23tx4-3.d" withpen l2;
		gdraw "pal23tx4-4.d" withpen l2;
	endgraph;
endfig;


beginfig (262)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal23tx5-1.d" withpen l2;
		gdraw "pal23tx5-2.d" withpen l2;
		gdraw "pal23tx5-3.d" withpen l2;
		gdraw "pal23tx5-4.d" withpen l2;
	endgraph;
endfig;


beginfig (263)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal24rx1-1.d" withpen l2;
		gdraw "pal24rx1-2.d" withpen l2;
		gdraw "pal24rx1-3.d" withpen l2;
		gdraw "pal24rx1-4.d" withpen l2;
	endgraph;
endfig;


beginfig (264)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal24rx2-1.d" withpen l2;
		gdraw "pal24rx2-2.d" withpen l2;
		gdraw "pal24rx2-3.d" withpen l2;
		gdraw "pal24rx2-4.d" withpen l2;
	endgraph;
endfig;


beginfig (265)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal24rx3-1.d" withpen l2;
		gdraw "pal24rx3-2.d" withpen l2;
		gdraw "pal24rx3-3.d" withpen l2;
		gdraw "pal24rx3-4.d" withpen l2;
	endgraph;
endfig;


beginfig (266)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal24rx4-1.d" withpen l2;
		gdraw "pal24rx4-2.d" withpen l2;
		gdraw "pal24rx4-3.d" withpen l2;
		gdraw "pal24rx4-4.d" withpen l2;
	endgraph;
endfig;


beginfig (267)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal24rx5-1.d" withpen l2;
		gdraw "pal24rx5-2.d" withpen l2;
		gdraw "pal24rx5-3.d" withpen l2;
		gdraw "pal24rx5-4.d" withpen l2;
	endgraph;
endfig;


beginfig (268)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal24tx1-1.d" withpen l2;
		gdraw "pal24tx1-2.d" withpen l2;
		gdraw "pal24tx1-3.d" withpen l2;
		gdraw "pal24tx1-4.d" withpen l2;
	endgraph;
endfig;


beginfig (269)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal24tx2-1.d" withpen l2;
		gdraw "pal24tx2-2.d" withpen l2;
		gdraw "pal24tx2-3.d" withpen l2;
		gdraw "pal24tx2-4.d" withpen l2;
	endgraph;
endfig;


beginfig (270)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal24tx3-1.d" withpen l2;
		gdraw "pal24tx3-2.d" withpen l2;
		gdraw "pal24tx3-3.d" withpen l2;
		gdraw "pal24tx3-4.d" withpen l2;
	endgraph;
endfig;


beginfig (271)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal24tx4-1.d" withpen l2;
		gdraw "pal24tx4-2.d" withpen l2;
		gdraw "pal24tx4-3.d" withpen l2;
		gdraw "pal24tx4-4.d" withpen l2;
	endgraph;
endfig;


beginfig (272)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal24tx5-1.d" withpen l2;
		gdraw "pal24tx5-2.d" withpen l2;
		gdraw "pal24tx5-3.d" withpen l2;
		gdraw "pal24tx5-4.d" withpen l2;
	endgraph;
endfig;


beginfig (273)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal25rx1-1.d" withpen l2;
		gdraw "pal25rx1-2.d" withpen l2;
		gdraw "pal25rx1-3.d" withpen l2;
		gdraw "pal25rx1-4.d" withpen l2;
	endgraph;
endfig;


beginfig (274)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal25rx2-1.d" withpen l2;
		gdraw "pal25rx2-2.d" withpen l2;
		gdraw "pal25rx2-3.d" withpen l2;
		gdraw "pal25rx2-4.d" withpen l2;
	endgraph;
endfig;


beginfig (275)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal25rx3-1.d" withpen l2;
		gdraw "pal25rx3-2.d" withpen l2;
		gdraw "pal25rx3-3.d" withpen l2;
		gdraw "pal25rx3-4.d" withpen l2;
	endgraph;
endfig;


beginfig (276)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal25rx4-1.d" withpen l2;
		gdraw "pal25rx4-2.d" withpen l2;
		gdraw "pal25rx4-3.d" withpen l2;
		gdraw "pal25rx4-4.d" withpen l2;
	endgraph;
endfig;


beginfig (277)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal25rx5-1.d" withpen l2;
		gdraw "pal25rx5-2.d" withpen l2;
		gdraw "pal25rx5-3.d" withpen l2;
		gdraw "pal25rx5-4.d" withpen l2;
	endgraph;
endfig;


beginfig (278)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal25tx1-1.d" withpen l2;
		gdraw "pal25tx1-2.d" withpen l2;
		gdraw "pal25tx1-3.d" withpen l2;
		gdraw "pal25tx1-4.d" withpen l2;
	endgraph;
endfig;


beginfig (279)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal25tx2-1.d" withpen l2;
		gdraw "pal25tx2-2.d" withpen l2;
		gdraw "pal25tx2-3.d" withpen l2;
		gdraw "pal25tx2-4.d" withpen l2;
	endgraph;
endfig;


beginfig (280)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal25tx3-1.d" withpen l2;
		gdraw "pal25tx3-2.d" withpen l2;
		gdraw "pal25tx3-3.d" withpen l2;
		gdraw "pal25tx3-4.d" withpen l2;
	endgraph;
endfig;


beginfig (281)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal25tx4-1.d" withpen l2;
		gdraw "pal25tx4-2.d" withpen l2;
		gdraw "pal25tx4-3.d" withpen l2;
		gdraw "pal25tx4-4.d" withpen l2;
	endgraph;
endfig;


beginfig (282)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal25tx5-1.d" withpen l2;
		gdraw "pal25tx5-2.d" withpen l2;
		gdraw "pal25tx5-3.d" withpen l2;
		gdraw "pal25tx5-4.d" withpen l2;
	endgraph;
endfig;


beginfig (283)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal26rx1-1.d" withpen l2;
		gdraw "pal26rx1-2.d" withpen l2;
		gdraw "pal26rx1-3.d" withpen l2;
		gdraw "pal26rx1-4.d" withpen l2;
	endgraph;
endfig;


beginfig (284)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal26rx2-1.d" withpen l2;
		gdraw "pal26rx2-2.d" withpen l2;
		gdraw "pal26rx2-3.d" withpen l2;
		gdraw "pal26rx2-4.d" withpen l2;
	endgraph;
endfig;


beginfig (285)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal26rx3-1.d" withpen l2;
		gdraw "pal26rx3-2.d" withpen l2;
		gdraw "pal26rx3-3.d" withpen l2;
		gdraw "pal26rx3-4.d" withpen l2;
	endgraph;
endfig;


beginfig (286)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal26rx4-1.d" withpen l2;
		gdraw "pal26rx4-2.d" withpen l2;
		gdraw "pal26rx4-3.d" withpen l2;
		gdraw "pal26rx4-4.d" withpen l2;
	endgraph;
endfig;


beginfig (287)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal26rx5-1.d" withpen l2;
		gdraw "pal26rx5-2.d" withpen l2;
		gdraw "pal26rx5-3.d" withpen l2;
		gdraw "pal26rx5-4.d" withpen l2;
	endgraph;
endfig;


beginfig (288)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal26tx1-1.d" withpen l2;
		gdraw "pal26tx1-2.d" withpen l2;
		gdraw "pal26tx1-3.d" withpen l2;
		gdraw "pal26tx1-4.d" withpen l2;
	endgraph;
endfig;


beginfig (289)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal26tx2-1.d" withpen l2;
		gdraw "pal26tx2-2.d" withpen l2;
		gdraw "pal26tx2-3.d" withpen l2;
		gdraw "pal26tx2-4.d" withpen l2;
	endgraph;
endfig;


beginfig (290)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal26tx3-1.d" withpen l2;
		gdraw "pal26tx3-2.d" withpen l2;
		gdraw "pal26tx3-3.d" withpen l2;
		gdraw "pal26tx3-4.d" withpen l2;
	endgraph;
endfig;


beginfig (291)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal26tx4-1.d" withpen l2;
		gdraw "pal26tx4-2.d" withpen l2;
		gdraw "pal26tx4-3.d" withpen l2;
		gdraw "pal26tx4-4.d" withpen l2;
	endgraph;
endfig;


beginfig (292)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal26tx5-1.d" withpen l2;
		gdraw "pal26tx5-2.d" withpen l2;
		gdraw "pal26tx5-3.d" withpen l2;
		gdraw "pal26tx5-4.d" withpen l2;
	endgraph;
endfig;


beginfig (293)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal27rx1-1.d" withpen l2;
		gdraw "pal27rx1-2.d" withpen l2;
		gdraw "pal27rx1-3.d" withpen l2;
		gdraw "pal27rx1-4.d" withpen l2;
	endgraph;
endfig;


beginfig (294)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal27rx2-1.d" withpen l2;
		gdraw "pal27rx2-2.d" withpen l2;
		gdraw "pal27rx2-3.d" withpen l2;
		gdraw "pal27rx2-4.d" withpen l2;
	endgraph;
endfig;


beginfig (295)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal27rx3-1.d" withpen l2;
		gdraw "pal27rx3-2.d" withpen l2;
		gdraw "pal27rx3-3.d" withpen l2;
		gdraw "pal27rx3-4.d" withpen l2;
	endgraph;
endfig;


beginfig (296)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal27rx4-1.d" withpen l2;
		gdraw "pal27rx4-2.d" withpen l2;
		gdraw "pal27rx4-3.d" withpen l2;
		gdraw "pal27rx4-4.d" withpen l2;
	endgraph;
endfig;


beginfig (297)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal27rx5-1.d" withpen l2;
		gdraw "pal27rx5-2.d" withpen l2;
		gdraw "pal27rx5-3.d" withpen l2;
		gdraw "pal27rx5-4.d" withpen l2;
	endgraph;
endfig;


beginfig (298)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal27tx1-1.d" withpen l2;
		gdraw "pal27tx1-2.d" withpen l2;
		gdraw "pal27tx1-3.d" withpen l2;
		gdraw "pal27tx1-4.d" withpen l2;
	endgraph;
endfig;


beginfig (299)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal27tx2-1.d" withpen l2;
		gdraw "pal27tx2-2.d" withpen l2;
		gdraw "pal27tx2-3.d" withpen l2;
		gdraw "pal27tx2-4.d" withpen l2;
	endgraph;
endfig;


beginfig (300)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal27tx3-1.d" withpen l2;
		gdraw "pal27tx3-2.d" withpen l2;
		gdraw "pal27tx3-3.d" withpen l2;
		gdraw "pal27tx3-4.d" withpen l2;
	endgraph;
endfig;


beginfig (301)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal27tx4-1.d" withpen l2;
		gdraw "pal27tx4-2.d" withpen l2;
		gdraw "pal27tx4-3.d" withpen l2;
		gdraw "pal27tx4-4.d" withpen l2;
	endgraph;
endfig;


beginfig (302)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal27tx5-1.d" withpen l2;
		gdraw "pal27tx5-2.d" withpen l2;
		gdraw "pal27tx5-3.d" withpen l2;
		gdraw "pal27tx5-4.d" withpen l2;
	endgraph;
endfig;


beginfig (303)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal28rx1-1.d" withpen l2;
		gdraw "pal28rx1-2.d" withpen l2;
		gdraw "pal28rx1-3.d" withpen l2;
		gdraw "pal28rx1-4.d" withpen l2;
	endgraph;
endfig;


beginfig (304)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal28rx2-1.d" withpen l2;
		gdraw "pal28rx2-2.d" withpen l2;
		gdraw "pal28rx2-3.d" withpen l2;
		gdraw "pal28rx2-4.d" withpen l2;
	endgraph;
endfig;


beginfig (305)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal28rx3-1.d" withpen l2;
		gdraw "pal28rx3-2.d" withpen l2;
		gdraw "pal28rx3-3.d" withpen l2;
		gdraw "pal28rx3-4.d" withpen l2;
	endgraph;
endfig;


beginfig (306)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal28rx4-1.d" withpen l2;
		gdraw "pal28rx4-2.d" withpen l2;
		gdraw "pal28rx4-3.d" withpen l2;
		gdraw "pal28rx4-4.d" withpen l2;
	endgraph;
endfig;


beginfig (307)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal28rx5-1.d" withpen l2;
		gdraw "pal28rx5-2.d" withpen l2;
		gdraw "pal28rx5-3.d" withpen l2;
		gdraw "pal28rx5-4.d" withpen l2;
	endgraph;
endfig;


beginfig (308)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal28tx1-1.d" withpen l2;
		gdraw "pal28tx1-2.d" withpen l2;
		gdraw "pal28tx1-3.d" withpen l2;
		gdraw "pal28tx1-4.d" withpen l2;
	endgraph;
endfig;


beginfig (309)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal28tx2-1.d" withpen l2;
		gdraw "pal28tx2-2.d" withpen l2;
		gdraw "pal28tx2-3.d" withpen l2;
		gdraw "pal28tx2-4.d" withpen l2;
	endgraph;
endfig;


beginfig (310)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal28tx3-1.d" withpen l2;
		gdraw "pal28tx3-2.d" withpen l2;
		gdraw "pal28tx3-3.d" withpen l2;
		gdraw "pal28tx3-4.d" withpen l2;
	endgraph;
endfig;


beginfig (311)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal28tx4-1.d" withpen l2;
		gdraw "pal28tx4-2.d" withpen l2;
		gdraw "pal28tx4-3.d" withpen l2;
		gdraw "pal28tx4-4.d" withpen l2;
	endgraph;
endfig;


beginfig (312)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal28tx5-1.d" withpen l2;
		gdraw "pal28tx5-2.d" withpen l2;
		gdraw "pal28tx5-3.d" withpen l2;
		gdraw "pal28tx5-4.d" withpen l2;
	endgraph;
endfig;


beginfig (313)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal29rx1-1.d" withpen l2;
		gdraw "pal29rx1-2.d" withpen l2;
		gdraw "pal29rx1-3.d" withpen l2;
		gdraw "pal29rx1-4.d" withpen l2;
	endgraph;
endfig;


beginfig (314)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal29rx2-1.d" withpen l2;
		gdraw "pal29rx2-2.d" withpen l2;
		gdraw "pal29rx2-3.d" withpen l2;
		gdraw "pal29rx2-4.d" withpen l2;
	endgraph;
endfig;


beginfig (315)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal29rx3-1.d" withpen l2;
		gdraw "pal29rx3-2.d" withpen l2;
		gdraw "pal29rx3-3.d" withpen l2;
		gdraw "pal29rx3-4.d" withpen l2;
	endgraph;
endfig;


beginfig (316)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal29rx4-1.d" withpen l2;
		gdraw "pal29rx4-2.d" withpen l2;
		gdraw "pal29rx4-3.d" withpen l2;
		gdraw "pal29rx4-4.d" withpen l2;
	endgraph;
endfig;


beginfig (317)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal29rx5-1.d" withpen l2;
		gdraw "pal29rx5-2.d" withpen l2;
		gdraw "pal29rx5-3.d" withpen l2;
		gdraw "pal29rx5-4.d" withpen l2;
	endgraph;
endfig;


beginfig (318)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal29tx1-1.d" withpen l2;
		gdraw "pal29tx1-2.d" withpen l2;
		gdraw "pal29tx1-3.d" withpen l2;
		gdraw "pal29tx1-4.d" withpen l2;
	endgraph;
endfig;


beginfig (319)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal29tx2-1.d" withpen l2;
		gdraw "pal29tx2-2.d" withpen l2;
		gdraw "pal29tx2-3.d" withpen l2;
		gdraw "pal29tx2-4.d" withpen l2;
	endgraph;
endfig;


beginfig (320)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal29tx3-1.d" withpen l2;
		gdraw "pal29tx3-2.d" withpen l2;
		gdraw "pal29tx3-3.d" withpen l2;
		gdraw "pal29tx3-4.d" withpen l2;
	endgraph;
endfig;


beginfig (321)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal29tx4-1.d" withpen l2;
		gdraw "pal29tx4-2.d" withpen l2;
		gdraw "pal29tx4-3.d" withpen l2;
		gdraw "pal29tx4-4.d" withpen l2;
	endgraph;
endfig;


beginfig (322)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal29tx5-1.d" withpen l2;
		gdraw "pal29tx5-2.d" withpen l2;
		gdraw "pal29tx5-3.d" withpen l2;
		gdraw "pal29tx5-4.d" withpen l2;
	endgraph;
endfig;


beginfig (323)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal30rx1-1.d" withpen l2;
		gdraw "pal30rx1-2.d" withpen l2;
		gdraw "pal30rx1-3.d" withpen l2;
		gdraw "pal30rx1-4.d" withpen l2;
	endgraph;
endfig;


beginfig (324)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal30rx2-1.d" withpen l2;
		gdraw "pal30rx2-2.d" withpen l2;
		gdraw "pal30rx2-3.d" withpen l2;
		gdraw "pal30rx2-4.d" withpen l2;
	endgraph;
endfig;


beginfig (325)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal30rx3-1.d" withpen l2;
		gdraw "pal30rx3-2.d" withpen l2;
		gdraw "pal30rx3-3.d" withpen l2;
		gdraw "pal30rx3-4.d" withpen l2;
	endgraph;
endfig;


beginfig (326)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal30rx4-1.d" withpen l2;
		gdraw "pal30rx4-2.d" withpen l2;
		gdraw "pal30rx4-3.d" withpen l2;
		gdraw "pal30rx4-4.d" withpen l2;
	endgraph;
endfig;


beginfig (327)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal30rx5-1.d" withpen l2;
		gdraw "pal30rx5-2.d" withpen l2;
		gdraw "pal30rx5-3.d" withpen l2;
		gdraw "pal30rx5-4.d" withpen l2;
	endgraph;
endfig;


beginfig (328)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal30tx1-1.d" withpen l2;
		gdraw "pal30tx1-2.d" withpen l2;
		gdraw "pal30tx1-3.d" withpen l2;
		gdraw "pal30tx1-4.d" withpen l2;
	endgraph;
endfig;


beginfig (329)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal30tx2-1.d" withpen l2;
		gdraw "pal30tx2-2.d" withpen l2;
		gdraw "pal30tx2-3.d" withpen l2;
		gdraw "pal30tx2-4.d" withpen l2;
	endgraph;
endfig;


beginfig (330)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal30tx3-1.d" withpen l2;
		gdraw "pal30tx3-2.d" withpen l2;
		gdraw "pal30tx3-3.d" withpen l2;
		gdraw "pal30tx3-4.d" withpen l2;
	endgraph;
endfig;


beginfig (331)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal30tx4-1.d" withpen l2;
		gdraw "pal30tx4-2.d" withpen l2;
		gdraw "pal30tx4-3.d" withpen l2;
		gdraw "pal30tx4-4.d" withpen l2;
	endgraph;
endfig;


beginfig (332)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal30tx5-1.d" withpen l2;
		gdraw "pal30tx5-2.d" withpen l2;
		gdraw "pal30tx5-3.d" withpen l2;
		gdraw "pal30tx5-4.d" withpen l2;
	endgraph;
endfig;


beginfig (333)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal31rx1-1.d" withpen l2;
		gdraw "pal31rx1-2.d" withpen l2;
		gdraw "pal31rx1-3.d" withpen l2;
		gdraw "pal31rx1-4.d" withpen l2;
	endgraph;
endfig;


beginfig (334)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal31rx2-1.d" withpen l2;
		gdraw "pal31rx2-2.d" withpen l2;
		gdraw "pal31rx2-3.d" withpen l2;
		gdraw "pal31rx2-4.d" withpen l2;
	endgraph;
endfig;


beginfig (335)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal31rx3-1.d" withpen l2;
		gdraw "pal31rx3-2.d" withpen l2;
		gdraw "pal31rx3-3.d" withpen l2;
		gdraw "pal31rx3-4.d" withpen l2;
	endgraph;
endfig;


beginfig (336)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal31rx4-1.d" withpen l2;
		gdraw "pal31rx4-2.d" withpen l2;
		gdraw "pal31rx4-3.d" withpen l2;
		gdraw "pal31rx4-4.d" withpen l2;
	endgraph;
endfig;


beginfig (337)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal31rx5-1.d" withpen l2;
		gdraw "pal31rx5-2.d" withpen l2;
		gdraw "pal31rx5-3.d" withpen l2;
		gdraw "pal31rx5-4.d" withpen l2;
	endgraph;
endfig;


beginfig (338)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal31tx1-1.d" withpen l2;
		gdraw "pal31tx1-2.d" withpen l2;
		gdraw "pal31tx1-3.d" withpen l2;
		gdraw "pal31tx1-4.d" withpen l2;
	endgraph;
endfig;


beginfig (339)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal31tx2-1.d" withpen l2;
		gdraw "pal31tx2-2.d" withpen l2;
		gdraw "pal31tx2-3.d" withpen l2;
		gdraw "pal31tx2-4.d" withpen l2;
	endgraph;
endfig;


beginfig (340)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal31tx3-1.d" withpen l2;
		gdraw "pal31tx3-2.d" withpen l2;
		gdraw "pal31tx3-3.d" withpen l2;
		gdraw "pal31tx3-4.d" withpen l2;
	endgraph;
endfig;


beginfig (341)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal31tx4-1.d" withpen l2;
		gdraw "pal31tx4-2.d" withpen l2;
		gdraw "pal31tx4-3.d" withpen l2;
		gdraw "pal31tx4-4.d" withpen l2;
	endgraph;
endfig;


beginfig (342)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal31tx5-1.d" withpen l2;
		gdraw "pal31tx5-2.d" withpen l2;
		gdraw "pal31tx5-3.d" withpen l2;
		gdraw "pal31tx5-4.d" withpen l2;
	endgraph;
endfig;


beginfig (343)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal32rx1-1.d" withpen l2;
		gdraw "pal32rx1-2.d" withpen l2;
		gdraw "pal32rx1-3.d" withpen l2;
		gdraw "pal32rx1-4.d" withpen l2;
	endgraph;
endfig;


beginfig (344)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal32rx2-1.d" withpen l2;
		gdraw "pal32rx2-2.d" withpen l2;
		gdraw "pal32rx2-3.d" withpen l2;
		gdraw "pal32rx2-4.d" withpen l2;
	endgraph;
endfig;


beginfig (345)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal32rx3-1.d" withpen l2;
		gdraw "pal32rx3-2.d" withpen l2;
		gdraw "pal32rx3-3.d" withpen l2;
		gdraw "pal32rx3-4.d" withpen l2;
	endgraph;
endfig;


beginfig (346)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal32rx4-1.d" withpen l2;
		gdraw "pal32rx4-2.d" withpen l2;
		gdraw "pal32rx4-3.d" withpen l2;
		gdraw "pal32rx4-4.d" withpen l2;
	endgraph;
endfig;


beginfig (347)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal32rx5-1.d" withpen l2;
		gdraw "pal32rx5-2.d" withpen l2;
		gdraw "pal32rx5-3.d" withpen l2;
		gdraw "pal32rx5-4.d" withpen l2;
	endgraph;
endfig;


beginfig (348)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal32tx1-1.d" withpen l2;
		gdraw "pal32tx1-2.d" withpen l2;
		gdraw "pal32tx1-3.d" withpen l2;
		gdraw "pal32tx1-4.d" withpen l2;
	endgraph;
endfig;


beginfig (349)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal32tx2-1.d" withpen l2;
		gdraw "pal32tx2-2.d" withpen l2;
		gdraw "pal32tx2-3.d" withpen l2;
		gdraw "pal32tx2-4.d" withpen l2;
	endgraph;
endfig;


beginfig (350)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal32tx3-1.d" withpen l2;
		gdraw "pal32tx3-2.d" withpen l2;
		gdraw "pal32tx3-3.d" withpen l2;
		gdraw "pal32tx3-4.d" withpen l2;
	endgraph;
endfig;


beginfig (351)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal32tx4-1.d" withpen l2;
		gdraw "pal32tx4-2.d" withpen l2;
		gdraw "pal32tx4-3.d" withpen l2;
		gdraw "pal32tx4-4.d" withpen l2;
	endgraph;
endfig;


beginfig (352)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal32tx5-1.d" withpen l2;
		gdraw "pal32tx5-2.d" withpen l2;
		gdraw "pal32tx5-3.d" withpen l2;
		gdraw "pal32tx5-4.d" withpen l2;
	endgraph;
endfig;


beginfig (353)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal33rx1-1.d" withpen l2;
		gdraw "pal33rx1-2.d" withpen l2;
		gdraw "pal33rx1-3.d" withpen l2;
		gdraw "pal33rx1-4.d" withpen l2;
	endgraph;
endfig;


beginfig (354)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal33rx2-1.d" withpen l2;
		gdraw "pal33rx2-2.d" withpen l2;
		gdraw "pal33rx2-3.d" withpen l2;
		gdraw "pal33rx2-4.d" withpen l2;
	endgraph;
endfig;


beginfig (355)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal33rx3-1.d" withpen l2;
		gdraw "pal33rx3-2.d" withpen l2;
		gdraw "pal33rx3-3.d" withpen l2;
		gdraw "pal33rx3-4.d" withpen l2;
	endgraph;
endfig;


beginfig (356)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal33rx4-1.d" withpen l2;
		gdraw "pal33rx4-2.d" withpen l2;
		gdraw "pal33rx4-3.d" withpen l2;
		gdraw "pal33rx4-4.d" withpen l2;
	endgraph;
endfig;


beginfig (357)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal33rx5-1.d" withpen l2;
		gdraw "pal33rx5-2.d" withpen l2;
		gdraw "pal33rx5-3.d" withpen l2;
		gdraw "pal33rx5-4.d" withpen l2;
	endgraph;
endfig;


beginfig (358)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal33rxup1-1.d" withpen l2;
		gdraw "pal33rxup1-2.d" withpen l2;
		gdraw "pal33rxup1-3.d" withpen l2;
		gdraw "pal33rxup1-4.d" withpen l2;
	endgraph;
endfig;


beginfig (359)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal33rxup2-1.d" withpen l2;
		gdraw "pal33rxup2-2.d" withpen l2;
		gdraw "pal33rxup2-3.d" withpen l2;
		gdraw "pal33rxup2-4.d" withpen l2;
	endgraph;
endfig;


beginfig (360)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal33rxup3-1.d" withpen l2;
		gdraw "pal33rxup3-2.d" withpen l2;
		gdraw "pal33rxup3-3.d" withpen l2;
		gdraw "pal33rxup3-4.d" withpen l2;
	endgraph;
endfig;


beginfig (361)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal33rxup4-1.d" withpen l2;
		gdraw "pal33rxup4-2.d" withpen l2;
		gdraw "pal33rxup4-3.d" withpen l2;
		gdraw "pal33rxup4-4.d" withpen l2;
	endgraph;
endfig;


beginfig (362)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal33rxup5-1.d" withpen l2;
		gdraw "pal33rxup5-2.d" withpen l2;
		gdraw "pal33rxup5-3.d" withpen l2;
		gdraw "pal33rxup5-4.d" withpen l2;
	endgraph;
endfig;


beginfig (363)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal33tx1-1.d" withpen l2;
		gdraw "pal33tx1-2.d" withpen l2;
		gdraw "pal33tx1-3.d" withpen l2;
		gdraw "pal33tx1-4.d" withpen l2;
	endgraph;
endfig;


beginfig (364)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal33tx2-1.d" withpen l2;
		gdraw "pal33tx2-2.d" withpen l2;
		gdraw "pal33tx2-3.d" withpen l2;
		gdraw "pal33tx2-4.d" withpen l2;
	endgraph;
endfig;


beginfig (365)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal33tx3-1.d" withpen l2;
		gdraw "pal33tx3-2.d" withpen l2;
		gdraw "pal33tx3-3.d" withpen l2;
		gdraw "pal33tx3-4.d" withpen l2;
	endgraph;
endfig;


beginfig (366)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal33tx4-1.d" withpen l2;
		gdraw "pal33tx4-2.d" withpen l2;
		gdraw "pal33tx4-3.d" withpen l2;
		gdraw "pal33tx4-4.d" withpen l2;
	endgraph;
endfig;


beginfig (367)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal33tx5-1.d" withpen l2;
		gdraw "pal33tx5-2.d" withpen l2;
		gdraw "pal33tx5-3.d" withpen l2;
		gdraw "pal33tx5-4.d" withpen l2;
	endgraph;
endfig;


beginfig (368)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal33txup1-1.d" withpen l2;
		gdraw "pal33txup1-2.d" withpen l2;
		gdraw "pal33txup1-3.d" withpen l2;
		gdraw "pal33txup1-4.d" withpen l2;
	endgraph;
endfig;


beginfig (369)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal33txup2-1.d" withpen l2;
		gdraw "pal33txup2-2.d" withpen l2;
		gdraw "pal33txup2-3.d" withpen l2;
		gdraw "pal33txup2-4.d" withpen l2;
	endgraph;
endfig;


beginfig (370)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal33txup3-1.d" withpen l2;
		gdraw "pal33txup3-2.d" withpen l2;
		gdraw "pal33txup3-3.d" withpen l2;
		gdraw "pal33txup3-4.d" withpen l2;
	endgraph;
endfig;


beginfig (371)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal33txup4-1.d" withpen l2;
		gdraw "pal33txup4-2.d" withpen l2;
		gdraw "pal33txup4-3.d" withpen l2;
		gdraw "pal33txup4-4.d" withpen l2;
	endgraph;
endfig;


beginfig (372)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pal33txup5-1.d" withpen l2;
		gdraw "pal33txup5-2.d" withpen l2;
		gdraw "pal33txup5-3.d" withpen l2;
		gdraw "pal33txup5-4.d" withpen l2;
	endgraph;
endfig;


beginfig (373)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pam29rx1-1.d" withpen l2;
		gdraw "pam29rx1-2.d" withpen l2;
		gdraw "pam29rx1-3.d" withpen l2;
		gdraw "pam29rx1-4.d" withpen l2;
	endgraph;
endfig;


beginfig (374)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pam29rx3-1.d" withpen l2;
		gdraw "pam29rx3-2.d" withpen l2;
		gdraw "pam29rx3-3.d" withpen l2;
		gdraw "pam29rx3-4.d" withpen l2;
	endgraph;
endfig;


beginfig (375)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pam29rx4-1.d" withpen l2;
		gdraw "pam29rx4-2.d" withpen l2;
		gdraw "pam29rx4-3.d" withpen l2;
		gdraw "pam29rx4-4.d" withpen l2;
	endgraph;
endfig;


beginfig (376)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pam29rx5-1.d" withpen l2;
		gdraw "pam29rx5-2.d" withpen l2;
		gdraw "pam29rx5-3.d" withpen l2;
		gdraw "pam29rx5-4.d" withpen l2;
	endgraph;
endfig;


beginfig (377)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pam29tx1-1.d" withpen l2;
		gdraw "pam29tx1-2.d" withpen l2;
		gdraw "pam29tx1-3.d" withpen l2;
		gdraw "pam29tx1-4.d" withpen l2;
	endgraph;
endfig;


beginfig (378)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pam29tx3-1.d" withpen l2;
		gdraw "pam29tx3-2.d" withpen l2;
		gdraw "pam29tx3-3.d" withpen l2;
		gdraw "pam29tx3-4.d" withpen l2;
	endgraph;
endfig;


beginfig (379)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pam29tx4-1.d" withpen l2;
		gdraw "pam29tx4-2.d" withpen l2;
		gdraw "pam29tx4-3.d" withpen l2;
		gdraw "pam29tx4-4.d" withpen l2;
	endgraph;
endfig;


beginfig (380)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pam29tx5-1.d" withpen l2;
		gdraw "pam29tx5-2.d" withpen l2;
		gdraw "pam29tx5-3.d" withpen l2;
		gdraw "pam29tx5-4.d" withpen l2;
	endgraph;
endfig;


beginfig (381)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pin01rx1-1.d" withpen l2;
		gdraw "pin01rx1-2.d" withpen l2;
		gdraw "pin01rx1-3.d" withpen l2;
		gdraw "pin01rx1-4.d" withpen l2;
	endgraph;
endfig;


beginfig (382)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pin01rx2-1.d" withpen l2;
		gdraw "pin01rx2-2.d" withpen l2;
		gdraw "pin01rx2-3.d" withpen l2;
		gdraw "pin01rx2-4.d" withpen l2;
	endgraph;
endfig;


beginfig (383)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pin01rx3-1.d" withpen l2;
		gdraw "pin01rx3-2.d" withpen l2;
		gdraw "pin01rx3-3.d" withpen l2;
		gdraw "pin01rx3-4.d" withpen l2;
	endgraph;
endfig;


beginfig (384)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pin01rx4-1.d" withpen l2;
		gdraw "pin01rx4-2.d" withpen l2;
		gdraw "pin01rx4-3.d" withpen l2;
		gdraw "pin01rx4-4.d" withpen l2;
	endgraph;
endfig;


beginfig (385)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pin01rx5-1.d" withpen l2;
		gdraw "pin01rx5-2.d" withpen l2;
		gdraw "pin01rx5-3.d" withpen l2;
		gdraw "pin01rx5-4.d" withpen l2;
	endgraph;
endfig;


beginfig (386)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pin01tx1-1.d" withpen l2;
		gdraw "pin01tx1-2.d" withpen l2;
		gdraw "pin01tx1-3.d" withpen l2;
		gdraw "pin01tx1-4.d" withpen l2;
	endgraph;
endfig;


beginfig (387)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pin01tx2-1.d" withpen l2;
		gdraw "pin01tx2-2.d" withpen l2;
		gdraw "pin01tx2-3.d" withpen l2;
		gdraw "pin01tx2-4.d" withpen l2;
	endgraph;
endfig;


beginfig (388)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pin01tx3-1.d" withpen l2;
		gdraw "pin01tx3-2.d" withpen l2;
		gdraw "pin01tx3-3.d" withpen l2;
		gdraw "pin01tx3-4.d" withpen l2;
	endgraph;
endfig;


beginfig (389)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pin01tx4-1.d" withpen l2;
		gdraw "pin01tx4-2.d" withpen l2;
		gdraw "pin01tx4-3.d" withpen l2;
		gdraw "pin01tx4-4.d" withpen l2;
	endgraph;
endfig;


beginfig (390)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pin01tx5-1.d" withpen l2;
		gdraw "pin01tx5-2.d" withpen l2;
		gdraw "pin01tx5-3.d" withpen l2;
		gdraw "pin01tx5-4.d" withpen l2;
	endgraph;
endfig;


beginfig (391)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pin02rx1-1.d" withpen l2;
		gdraw "pin02rx1-2.d" withpen l2;
		gdraw "pin02rx1-3.d" withpen l2;
		gdraw "pin02rx1-4.d" withpen l2;
	endgraph;
endfig;


beginfig (392)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pin02rx2-1.d" withpen l2;
		gdraw "pin02rx2-2.d" withpen l2;
		gdraw "pin02rx2-3.d" withpen l2;
		gdraw "pin02rx2-4.d" withpen l2;
	endgraph;
endfig;


beginfig (393)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pin02rx3-1.d" withpen l2;
		gdraw "pin02rx3-2.d" withpen l2;
		gdraw "pin02rx3-3.d" withpen l2;
		gdraw "pin02rx3-4.d" withpen l2;
	endgraph;
endfig;


beginfig (394)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pin02rx4-1.d" withpen l2;
		gdraw "pin02rx4-2.d" withpen l2;
		gdraw "pin02rx4-3.d" withpen l2;
		gdraw "pin02rx4-4.d" withpen l2;
	endgraph;
endfig;


beginfig (395)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pin02rx5-1.d" withpen l2;
		gdraw "pin02rx5-2.d" withpen l2;
		gdraw "pin02rx5-3.d" withpen l2;
		gdraw "pin02rx5-4.d" withpen l2;
	endgraph;
endfig;


beginfig (396)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pin02tx1-1.d" withpen l2;
		gdraw "pin02tx1-2.d" withpen l2;
		gdraw "pin02tx1-3.d" withpen l2;
		gdraw "pin02tx1-4.d" withpen l2;
	endgraph;
endfig;


beginfig (397)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pin02tx2-1.d" withpen l2;
		gdraw "pin02tx2-2.d" withpen l2;
		gdraw "pin02tx2-3.d" withpen l2;
		gdraw "pin02tx2-4.d" withpen l2;
	endgraph;
endfig;


beginfig (398)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pin02tx3-1.d" withpen l2;
		gdraw "pin02tx3-2.d" withpen l2;
		gdraw "pin02tx3-3.d" withpen l2;
		gdraw "pin02tx3-4.d" withpen l2;
	endgraph;
endfig;


beginfig (399)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pin02tx4-1.d" withpen l2;
		gdraw "pin02tx4-2.d" withpen l2;
		gdraw "pin02tx4-3.d" withpen l2;
		gdraw "pin02tx4-4.d" withpen l2;
	endgraph;
endfig;


beginfig (400)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pin02tx5-1.d" withpen l2;
		gdraw "pin02tx5-2.d" withpen l2;
		gdraw "pin02tx5-3.d" withpen l2;
		gdraw "pin02tx5-4.d" withpen l2;
	endgraph;
endfig;


beginfig (401)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pos01rx1-1.d" withpen l2;
		gdraw "pos01rx1-2.d" withpen l2;
		gdraw "pos01rx1-3.d" withpen l2;
		gdraw "pos01rx1-4.d" withpen l2;
	endgraph;
endfig;


beginfig (402)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pos01rx2-1.d" withpen l2;
		gdraw "pos01rx2-2.d" withpen l2;
		gdraw "pos01rx2-3.d" withpen l2;
		gdraw "pos01rx2-4.d" withpen l2;
	endgraph;
endfig;


beginfig (403)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pos01rx3-1.d" withpen l2;
		gdraw "pos01rx3-2.d" withpen l2;
		gdraw "pos01rx3-3.d" withpen l2;
		gdraw "pos01rx3-4.d" withpen l2;
	endgraph;
endfig;


beginfig (404)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pos01rx4-1.d" withpen l2;
		gdraw "pos01rx4-2.d" withpen l2;
		gdraw "pos01rx4-3.d" withpen l2;
		gdraw "pos01rx4-4.d" withpen l2;
	endgraph;
endfig;


beginfig (405)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pos01rx5-1.d" withpen l2;
		gdraw "pos01rx5-2.d" withpen l2;
		gdraw "pos01rx5-3.d" withpen l2;
		gdraw "pos01rx5-4.d" withpen l2;
	endgraph;
endfig;


beginfig (406)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pos01tx1-1.d" withpen l2;
		gdraw "pos01tx1-2.d" withpen l2;
		gdraw "pos01tx1-3.d" withpen l2;
		gdraw "pos01tx1-4.d" withpen l2;
	endgraph;
endfig;


beginfig (407)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pos01tx2-1.d" withpen l2;
		gdraw "pos01tx2-2.d" withpen l2;
		gdraw "pos01tx2-3.d" withpen l2;
		gdraw "pos01tx2-4.d" withpen l2;
	endgraph;
endfig;


beginfig (408)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pos01tx3-1.d" withpen l2;
		gdraw "pos01tx3-2.d" withpen l2;
		gdraw "pos01tx3-3.d" withpen l2;
		gdraw "pos01tx3-4.d" withpen l2;
	endgraph;
endfig;


beginfig (409)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pos01tx4-1.d" withpen l2;
		gdraw "pos01tx4-2.d" withpen l2;
		gdraw "pos01tx4-3.d" withpen l2;
		gdraw "pos01tx4-4.d" withpen l2;
	endgraph;
endfig;


beginfig (410)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pos01tx5-1.d" withpen l2;
		gdraw "pos01tx5-2.d" withpen l2;
		gdraw "pos01tx5-3.d" withpen l2;
		gdraw "pos01tx5-4.d" withpen l2;
	endgraph;
endfig;


beginfig (411)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pos02rx1-1.d" withpen l2;
		gdraw "pos02rx1-2.d" withpen l2;
		gdraw "pos02rx1-3.d" withpen l2;
		gdraw "pos02rx1-4.d" withpen l2;
	endgraph;
endfig;


beginfig (412)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pos02rx2-1.d" withpen l2;
		gdraw "pos02rx2-2.d" withpen l2;
		gdraw "pos02rx2-3.d" withpen l2;
		gdraw "pos02rx2-4.d" withpen l2;
	endgraph;
endfig;


beginfig (413)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pos02rx3-1.d" withpen l2;
		gdraw "pos02rx3-2.d" withpen l2;
		gdraw "pos02rx3-3.d" withpen l2;
		gdraw "pos02rx3-4.d" withpen l2;
	endgraph;
endfig;


beginfig (414)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pos02rx4-1.d" withpen l2;
		gdraw "pos02rx4-2.d" withpen l2;
		gdraw "pos02rx4-3.d" withpen l2;
		gdraw "pos02rx4-4.d" withpen l2;
	endgraph;
endfig;


beginfig (415)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pos02rx5-1.d" withpen l2;
		gdraw "pos02rx5-2.d" withpen l2;
		gdraw "pos02rx5-3.d" withpen l2;
		gdraw "pos02rx5-4.d" withpen l2;
	endgraph;
endfig;


beginfig (416)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pos02tx1-1.d" withpen l2;
		gdraw "pos02tx1-2.d" withpen l2;
		gdraw "pos02tx1-3.d" withpen l2;
		gdraw "pos02tx1-4.d" withpen l2;
	endgraph;
endfig;


beginfig (417)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pos02tx2-1.d" withpen l2;
		gdraw "pos02tx2-2.d" withpen l2;
		gdraw "pos02tx2-3.d" withpen l2;
		gdraw "pos02tx2-4.d" withpen l2;
	endgraph;
endfig;


beginfig (418)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pos02tx3-1.d" withpen l2;
		gdraw "pos02tx3-2.d" withpen l2;
		gdraw "pos02tx3-3.d" withpen l2;
		gdraw "pos02tx3-4.d" withpen l2;
	endgraph;
endfig;


beginfig (419)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pos02tx4-1.d" withpen l2;
		gdraw "pos02tx4-2.d" withpen l2;
		gdraw "pos02tx4-3.d" withpen l2;
		gdraw "pos02tx4-4.d" withpen l2;
	endgraph;
endfig;


beginfig (420)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (wi, he02);
		gdraw "pos02tx5-1.d" withpen l2;
		gdraw "pos02tx5-2.d" withpen l2;
		gdraw "pos02tx5-3.d" withpen l2;
		gdraw "pos02tx5-4.d" withpen l2;
	endgraph;
endfig;


end
