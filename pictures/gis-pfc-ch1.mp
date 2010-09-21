verbatimtex
%&latex
\documentclass{minimal}
\begin{document}
\fontsize{12pt}{14.4pt}\selectfont
etex

filenametemplate "%j-%c.mps";

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
beginfig(1);
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
	draw p5 shifted (i, 0) dashed withdots scaled 2;
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



end
