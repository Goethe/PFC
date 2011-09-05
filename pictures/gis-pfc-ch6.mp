verbatimtex
%&latex
\documentclass{minimal}
\usepackage[spanish]{babel}
\usepackage[T1]{fontenc}
\usepackage[altbullet]{lucidabr}
\usepackage{textcomp, amsfonts, amsmath, amssymb}
\begin{document}
\fontsize{11pt}{13.2pt}\selectfont
etex

filenametemplate "%j-%02c.mps";

defaultfont := "hlhr8r";

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


beginfig (7)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (10v, he02);
		setrange (-0.004,whatever , 0.042,whatever);
		gdraw "euc02rx4-1.d";
		gdraw "euc02rx4-2.d";
		gdraw "euc02rx4-3.d";
		gdraw "euc02rx4-4.d";
		glabel.bot(btex $t$ etex, OUT);
		glabel.lft(btex $x(t)$ etex, OUT);
		frame withpen l2;
	endgraph;
endfig;


beginfig (8)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (10v, he02);
		setrange (-0.004,whatever , 0.042,whatever);
		gdraw "euc02tx4-1.d";
		gdraw "euc02tx4-2.d";
		gdraw "euc02tx4-3.d";
		gdraw "euc02tx4-4.d";
		glabel.bot(btex $t$ etex, OUT);
		glabel.lft(btex $x(t)$ etex, OUT);
		frame withpen l2;
	endgraph;
endfig;


beginfig (9)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (10v, he02);
		setrange (-0.004,whatever , 0.042,whatever);
		gdraw "pal04rx2-1.d";
		gdraw "pal04rx2-2.d";
		gdraw "pal04rx2-3.d";
		gdraw "pal04rx2-4.d";
		glabel.bot(btex $t$ etex, OUT);
		glabel.lft(btex $x(t)$ etex, OUT);
		frame withpen l2;
	endgraph;
endfig;


beginfig (10)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (10v, he02);
		setrange (-0.004,whatever , 0.042,whatever);
		gdraw "pal06rx2-1.d";
		gdraw "pal06rx2-2.d";
		gdraw "pal06rx2-3.d";
		gdraw "pal06rx2-4.d";
		glabel.bot(btex $t$ etex, OUT);
		glabel.lft(btex $x(t)$ etex, OUT);
		frame withpen l2;
	endgraph;
endfig;


beginfig (11)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (10v, he02);
		setrange (-0.004,whatever , 0.042,whatever);
		gdraw "pal06tx2-1.d";
		gdraw "pal06tx2-2.d";
		gdraw "pal06tx2-3.d";
		gdraw "pal06tx2-4.d";
		glabel.bot(btex $t$ etex, OUT);
		glabel.lft(btex $x(t)$ etex, OUT);
		frame withpen l2;
	endgraph;
endfig;


beginfig (12)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (10v, he02);
		setrange (-0.004,whatever , 0.042,whatever);
		gdraw "pal20rx5-1.d";
		gdraw "pal20rx5-2.d";
		gdraw "pal20rx5-3.d";
		gdraw "pal20rx5-4.d";
		glabel.bot(btex $t$ etex, OUT);
		glabel.lft(btex $x(t)$ etex, OUT);
		frame withpen l2;
	endgraph;
endfig;


beginfig (13)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (10v, he02);
		setrange (-0.004,whatever , 0.042,whatever);
		gdraw "pal33rx4-1.d";
		gdraw "pal33rx4-2.d";
		gdraw "pal33rx4-3.d";
		gdraw "pal33rx4-4.d";
		glabel.bot(btex $t$ etex, OUT);
		glabel.lft(btex $x(t)$ etex, OUT);
		frame withpen l2;
	endgraph;
endfig;


beginfig (14)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (10v, he02);
		setrange (-0.004,whatever , 0.042,whatever);
		gdraw "pal33rxup1-1.d";
		gdraw "pal33rxup1-2.d";
		gdraw "pal33rxup1-3.d";
		gdraw "pal33rxup1-4.d";
		glabel.bot(btex $t$ etex, OUT);
		glabel.lft(btex $x(t)$ etex, OUT);
		frame withpen l2;
	endgraph;
endfig;


beginfig (15)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (10v, he02);
		setrange (-0.004,whatever , 0.042,whatever);
		gdraw "pin02rx3-1.d";
		gdraw "pin02rx3-2.d";
		gdraw "pin02rx3-3.d";
		gdraw "pin02rx3-4.d";
		glabel.bot(btex $t$ etex, OUT);
		glabel.lft(btex $x(t)$ etex, OUT);
		frame withpen l2;
	endgraph;
endfig;


beginfig (16)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (10v, he02);
		setrange (-0.004,whatever , 0.042,whatever);
		gdraw "pos02rx2-1.d";
		gdraw "pos02rx2-2.d";
		gdraw "pos02rx2-3.d";
		gdraw "pos02rx2-4.d";
		glabel.bot(btex $t$ etex, OUT);
		glabel.lft(btex $x(t)$ etex, OUT);
		frame withpen l2;
	endgraph;
endfig;


beginfig (17)
pen l[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;

pickup l1

	draw begingraph (7v, he02);
		setrange (whatever,whatever , 1500,whatever);
		gdata ("velfrec.d", s,
		    glabel.lrt(s3, s1, s2);
		)
		gdraw "velfrec.d" plot btex \textbullet etex;
		glabel.bot(btex Velocidad de propagaci\'on %
			(ms$^{-1}$) etex, OUT);
		glabel.lft(btex \begin{tabular}{c}Desplazamiento \\%
			en frecuencia (kHz)\end{tabular} etex, OUT);
		frame withpen l2;
	endgraph;
endfig;

end
