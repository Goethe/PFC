verbatimtex
%&latex
\documentclass{minimal}
\begin{document}
\fontsize{12pt}{14.4pt}\selectfont
etex

filenametemplate "%j-%02c.mps";

newinternal u, v;
u := 1mm;
v := 10mm;

input boxes
input gis-pfc

wi = 12v;
he01 = 9v;	he02 = 6.75v;

ahlength := 2u;	ahangle := 20;
ahinset := 5/100;
linejoin := mitered;
linecap := butt;



% ==================================================================
% ejemplo de modos de terminación de la kpci-3108
beginfig(2);
numeric a[];
picture d[];
pen l[];
path p[], q[][];
transform t[];
ahlength := 4u;	ahangle := 20;
ahinset := 5/100;
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;
pickup l1;

% ------------------------------------------------------------------
% constantes
% alturas
a00 = 15u/4;		a01 = 3v;
a02 = 9v/2 + 5u/2;	a03 = 11v/2;
a04 = 6v + 5u/2;
% switch, diferencias de altura entre terminales en T
z00 = (8u, 0) rotated 20;
% switches
d0 = conmutadorA(u, (0, 0));
d1 = conmutadorC(u, (0, 0));
d2 = conmutadorT(u, (0, 0));
p0 = bbox d2;
begingroup
	interim bboxmargin := 0; p1 = bbox d0 scaled 19/20;
endgroup;
% switch, ancho total (si no me equivoco 27/2 * escala)
a05 = xpart(urcorner d0 - ulcorner d0);
% cajas de señal
d3 = thelabel.top(btex Se\~nal etex, (0, 0));
z01 = llcorner d3;	z02 = lrcorner d3;
addto d3 also thelabel.bot(btex $+$ etex, z01);
addto d3 also thelabel.bot(btex $-$ etex, z02);
p2 = bbox d3;
% caja de señal, ancho total
a06 = xpart(urcorner d3 - ulcorner d3);
% posición etiquetas
z03 = 1/2[ulcorner d3, urcorner d3] + %
	5/8(ulcorner d3 - llcorner d3);
% ajuste para centrar las etiquetas
d4 = thelabel(btex 00 Lo/08 Hi etex, (0, 0));
d5 = thelabel(btex 00 Hi etex, (0, 0));
a07 = 11/20;			x04 = 0;
(whatever, y04) = a07*(llcorner d5 - llcorner d4);
% resto de anchos
a08 = 15u/4;		a09 = a08/2;
a10 = xpart(urcorner p0 - ulcorner p0);
a11 = a06;		a12 = 6a08 + 2a05 + 2a06 + a11;
a13 = 3u/2;		a14 = a13/2;
a15 = a14/3;
% puntos clave
a16 = a05 + a08;	a17 = a05 + a06/2 + 3a08;
a18 = a12 - a17;	a19 = a12 - a16;
a20 = a12 + 2a08;

% ------------------------------------------------------------------
% primera parte conmutada
% dibujo las líneas centrales, los switches y las cajas de señal
p3 = fullcircle scaled (a13);
p4 = (0, 0)--(a09 + a05, 0)--(a09 + a05, a03)--(0, a03)--cycle;
p5 = (a09/2 + a05/2, 3a00)--(a09/2 + a05/2, a01 - 3a00/2);
d6 = thelabel.bot(btex Multiplexador etex, (a09/2 + a05/2, 0));
draw (a20, a04)--(0, a04)--(0, a00)--(a08, a00)-- %
	(a12 - a08, a00)--(a12, a00)--(a12, a02)--(a20, a02);
for i = a00, a01, a02:
	if not(i = a00):
		pickup l3;
		fill p3 shifted (0, i);
		fill p3 shifted (a12, i);
		pickup l1;
		draw (0, i)--(a12, i);
	fi
	if i = a01: fill p3 shifted (a12/2, i); fi
	pickup l0;
	fill p1 shifted (a08, i) withcolor white;
	fill p1 shifted (a19 + a09/2 - a15, i) withcolor white;
	fill p2 shifted (a17, i) withcolor white;
	if i = a01:
		fill p2 shifted (a18, i) %
			withcolor white; fi
	pickup l1;
	draw d0 xscaled -1 shifted (a16 - a13 - a15, i);
	draw d3 shifted (a17, i);
	if i = a01:
		draw d1 shifted (a19 + a09/2 - a15, i);
		draw d3 shifted (a18, i);
		drawgisarrow (a12/2, i)-- %
			(a12/2, i - v);
	else :
		draw d0 shifted (a19 + a09/2 - a15, i);
	fi
	pickup l2;
	draw p2 shifted (a17, i);
	if i = a01: draw p2 shifted (a18, i); fi
endfor
for i = (3a09/2 - a14), (a19 + a14 - a09):
	draw p4 shifted (i, 0);
	linejoin := rounded;
	linecap := rounded;
	draw p5 shifted (i, 0) dashed withdots scaled 2;
	linejoin := mitered;
	linecap := butt;
	draw d6 shifted (i, 0);
endfor

% ------------------------------------------------------------------
% etiquetas
label(btex 00 Lo/08 Hi etex, z03 shifted (a18, a02));
label(btex 01 Lo/09 Hi etex, z03 shifted (a18, a01));
label(btex 07 Lo/15 Hi etex, z03 shifted (a18, a00));
label(btex 00 Hi etex, z03 + z04 shifted (a17, a02));
label(btex 01 Hi etex, z03 + z04 shifted (a17, a01));
label(btex 07 Hi etex, z03 + z04 shifted (a17, a00));

% ------------------------------------------------------------------
% segunda parte conmutada
pickup l1;
a21 = a04 - 2y00;		a22 = a02 - 2y00;
a23 = a21 + y00;		a24 = a22 + y00;
a25 = a20 - a08;		a26 = a20 + a05 - a09;
a27 = a26 + a08;
draw (a20, a21)--(a25, a21)--(a25, a02);
drawgisarrow (a20, a22)--(a25, a22)--(a25, a22 - v);
draw (a26, a23)--(a27, a23);	draw (a26, a24)--(a27, a24);
draw d2 shifted (a20, a21);	draw d2 shifted (a20, a22);
pickup l2;
draw p0 shifted (a20, a21);	draw p0 shifted (a20, a22);
pickup l1;

% ------------------------------------------------------------------
% amplificador de instrumentación
% defininciones
z06 = 1/2[(a27, a23), (a27, a24)];
p6 = amplificador;
a28 = a23 - a24 + 3y00/2;
a29 = a28/2 + 3a09;
p7 = p6 scaled a28 shifted z06;
z07 = center p7 shifted (-a09, 0);
p8 = z07--z07 shifted (0, -3v);
z08 = p8 intersectionpoint p7;
d7 = thelabel(btex \textsc{ai} etex, z07);
begingroup
	interim bboxmargin := 3u; p9 = bbox d7;
endgroup;
p10 = z07 shifted (a08, a28/2)--z07 shifted (a29 - a08, a28/2);
z09 = point (length p10)/2 of p10;
% dibujo todos los elementos definidos previamente
drawgisarrow z07--z08 shifted (0, -v);
draw z07--z07 shifted (a29, 0);
pickup l0;
fill p7 withcolor white;
fill fullcircle scaled (3u/2) shifted z07 shifted (a29, 0) %
	withcolor white;
pickup l2; 
draw p7; 			
pickup l1;
draw fullcircle scaled (3u/2) shifted z07 shifted (a29, 0);
draw d7;
begingroup
	interim ahlength := 2u; drawgisarrow p10;
endgroup;

% ------------------------------------------------------------------
% etiquetas
label(btex $+$ etex, ulcorner p9);
label(btex $-$ etex, llcorner p9);
label.top(btex \textsc{a/d} etex, z09);
label.bot(btex \textsc{agnd} etex, z08 shifted (0, -25u/2));

endfig;
% ==================================================================



% ==================================================================
% conector etiquetado como analog
beginfig(3);
numeric a[], b[][];
picture d[], e[][];
pen l[];
path p[], q[][];
transform t[];
bboxmargin := 4u;
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;
d0 = nullpicture;
pickup l1;

% ------------------------------------------------------------------
% constantes
a00 = 7u/3;			a01 = 5a00/2;
a02 = 3a00;			a03 = 2a00 + a02 + 6a00;
a04 = a00;			a05 = 18a01;
a06 = a03 * sind(30)/cosd(30);	a07 = a06/3;
a08 = 40;
z00 = (0, 0);			z01 = (a06, 0) rotated 30;
z02 = (a07, 0) rotated 210;	z03 = (a07, 0) rotated 150;
z04 = (a06, 0) rotated 330;

% ------------------------------------------------------------------
% conector
draw conectorh(a00, z00);

% ------------------------------------------------------------------
% posiciones
for i = 0 upto 17 :
	b[0][i] =  a01/2 + i*a01 - a05/2;
endfor

% ------------------------------------------------------------------
% etiquetas externas
e[0][0] = thelabel.lft(btex \textsc{ip5} etex, z00);
e[0][1] = thelabel.lft(btex \textsc{ip3} etex, z00);
e[0][2] = thelabel.lft(btex \textsc{ip1} etex, z00);
e[0][3] = thelabel.lft(btex \textsc{op5} etex, z00);
e[0][4] = thelabel.lft(btex \textsc{op3} etex, z00);
e[0][5] = thelabel.lft(btex \textsc{op1} etex, z00);
e[0][6] = thelabel.lft(btex \textsc{dgnd} etex, z00);
e[0][7] = thelabel.lft(btex \textsc{ch 07 lo/ch 15} etex, z00);
e[0][8] = thelabel.lft(btex \textsc{ch 06 lo/ch 14} etex, z00);
e[0][9] = thelabel.lft(btex \textsc{ch 05 lo/ch 13} etex, z00);
e[0][10] = thelabel.lft(btex \textsc{ch 04 lo/ch 12} etex, z00);
e[0][11] = thelabel.lft(btex \textsc{ch 03 lo/ch 11} etex, z00);
e[0][12] = thelabel.lft(btex \textsc{ch 02 lo/ch 10} etex, z00);
e[0][13] = thelabel.lft(btex \textsc{ch 01 lo/ch 09} etex, z00);
e[0][14] = thelabel.lft(btex \textsc{ch 00 lo/ch 08} etex, z00);
e[0][15] = thelabel.lft(btex Sin conexi\'on etex, z00);
e[0][16] = thelabel.lft(btex \textsc{agnd} etex, z00);
e[0][17] = thelabel.lft(btex \textsc{agnd} etex, z00);
e[1][0] = thelabel.rt(btex \textsc{ip4} etex, z00);
e[1][1] = thelabel.rt(btex \textsc{ip2} etex, z00);
e[1][2] = thelabel.rt(btex \textsc{ip0} etex, z00);
e[1][3] = thelabel.rt(btex \textsc{op4} etex, z00);
e[1][4] = thelabel.rt(btex \textsc{op2} etex, z00);
e[1][5] = thelabel.rt(btex \textsc{op0} etex, z00);
e[1][6] = thelabel.rt(btex +5 V etex, z00);
e[1][7] = thelabel.rt(btex \textsc{ch 07 hi} etex, z00);
e[1][8] = thelabel.rt(btex \textsc{ch 06 hi} etex, z00);
e[1][9] = thelabel.rt(btex \textsc{ch 05 hi} etex, z00);
e[1][10] = thelabel.rt(btex \textsc{ch 04 hi} etex, z00);
e[1][11] = thelabel.rt(btex \textsc{ch 03 hi} etex, z00);
e[1][12] = thelabel.rt(btex \textsc{ch 02 hi} etex, z00);
e[1][13] = thelabel.rt(btex \textsc{ch 01 hi} etex, z00);
e[1][14] = thelabel.rt(btex \textsc{ch 00 hi} etex, z00);
e[1][15] = thelabel.rt(btex +10 V etex, z00);
e[1][16] = thelabel.rt(btex \textsc{dac1} etex, z00);
e[1][17] = thelabel.rt(btex \textsc{dac0} etex, z00);
pickup pencircle scaled 0.75u;
for i = 0 upto 17 :
	drawdot (b[0][i], -a03/2 - a04);
	drawdot (b[0][i], a03/2 + a04);
	draw e[0][i] rotated a08 shifted (b[0][i], -a03/2 - a04);
	draw e[1][i] rotated a08 shifted (b[0][i], a03/2 + a04);
endfor
addto d0 also currentpicture;
fill bbox d0 withcolor white;
draw d0;

endfig;
% ==================================================================



% ==================================================================
% conector etiquetado como digital
beginfig(4);
numeric a[], b[][];
picture d[], e[][];
pen l[];
path p[], q[][];
transform t[];
bboxmargin := 4u;
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;
d0 = nullpicture;
pickup l1;

% ------------------------------------------------------------------
% constantes
a00 = 7u/3;			a01 = 5a00/2;
a02 = 3a00;			a03 = 2a00 + a02 + 6a00;
a04 = a00;			a05 = 18a01;
a06 = a03 * sind(30)/cosd(30);	a07 = a06/3;
a08 = 40;
z00 = (0, 0);			z01 = (a06, 0) rotated 30;
z02 = (a07, 0) rotated 210;	z03 = (a07, 0) rotated 150;
z04 = (a06, 0) rotated 330;

% ------------------------------------------------------------------
% conector
draw conectorh(a00, z00);

% ------------------------------------------------------------------
% posiciones
for i = 0 upto 17 :
	b[0][i] =  a01/2 + i*a01 - a05/2;
endfor

% ------------------------------------------------------------------
% etiquetas externas
e[0][0] = thelabel.lft(btex Bit 0 etex, z00);
e[0][1] = thelabel.lft(btex Bit 1 etex, z00);
e[0][2] = thelabel.lft(btex Bit 2 etex, z00);
e[0][3] = thelabel.lft(btex Bit 3 etex, z00);
e[0][4] = thelabel.lft(btex Bit 4 etex, z00);
e[0][5] = thelabel.lft(btex Bit 5 etex, z00);
e[0][6] = thelabel.lft(btex Bit 6 etex, z00);
e[0][7] = thelabel.lft(btex Bit 7 etex, z00);
e[0][8] = thelabel.lft(btex Bit 8 etex, z00);
e[0][9] = thelabel.lft(btex Bit 9 etex, z00);
e[0][10] = thelabel.lft(btex Bit 10 etex, z00);
e[0][11] = thelabel.lft(btex Bit 11 etex, z00);
e[0][12] = thelabel.lft(btex Bit 12 etex, z00);
e[0][13] = thelabel.lft(btex Bit 13 etex, z00);
e[0][14] = thelabel.lft(btex Bit 14 etex, z00);
e[0][15] = thelabel.lft(btex Bit 15 etex, z00);
e[0][16] = thelabel.lft(btex \textsc{dgnd} etex, z00);
e[0][17] = thelabel.lft(btex \textsc{dgnd} etex, z00);
e[1][0] = thelabel.rt(btex Bit 16 etex, z00);
e[1][1] = thelabel.rt(btex Bit 17 etex, z00);
e[1][2] = thelabel.rt(btex Bit 18 etex, z00);
e[1][3] = thelabel.rt(btex Bit 19 etex, z00);
e[1][4] = thelabel.rt(btex Bit 20 etex, z00);
e[1][5] = thelabel.rt(btex Bit 21 etex, z00);
e[1][6] = thelabel.rt(btex Bit 22 etex, z00);
e[1][7] = thelabel.rt(btex Bit 23 etex, z00);
e[1][8] = thelabel.rt(btex Bit 24 etex, z00);
e[1][9] = thelabel.rt(btex Bit 25 etex, z00);
e[1][10] = thelabel.rt(btex Bit 26 etex, z00);
e[1][11] = thelabel.rt(btex Bit 27 etex, z00);
e[1][12] = thelabel.rt(btex Bit 28 etex, z00);
e[1][13] = thelabel.rt(btex Bit 29 etex, z00);
e[1][14] = thelabel.rt(btex Bit 30 etex, z00);
e[1][15] = thelabel.rt(btex Bit 31 etex, z00);
e[1][16] = thelabel.rt(btex +5 V etex, z00);
e[1][17] = thelabel.rt(btex +5 V etex, z00);
pickup pencircle scaled 0.75u;
for i = 0 upto 17 :
	drawdot (b[0][i], -a03/2 - a04);
	drawdot (b[0][i], a03/2 + a04);
	draw e[0][i] rotated a08 shifted (b[0][i], -a03/2 - a04);
	draw e[1][i] rotated a08 shifted (b[0][i], a03/2 + a04);
endfor
addto d0 also currentpicture;
fill bbox d0 withcolor white;
draw d0;

endfig;
% ==================================================================



end
