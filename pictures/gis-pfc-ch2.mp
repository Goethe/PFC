verbatimtex
%&latex
\documentclass{minimal}
\usepackage[T1]{fontenc}
\usepackage{lucidabr}
\begin{document}
\fontsize{11pt}{13.2pt}\selectfont
etex

filenametemplate "%j-%02c.mps";

newinternal u, v;
u := 1mm;
v := 10mm;

input boxes
input gis-pfc-arr
input gis-pfc

wi = 12v;
he01 = 9v;	he02 = 6.75v;

ahlength := 2u;	ahangle := 20;
ahinset := 5/100;
linejoin := mitered;
linecap := butt;



% ==================================================================
% esquema que represental los distintos elementos funcionales que
% comprende el subsistema de adquisición
beginfig(1);
numeric a[], i, j, k, x[], y[];
picture d[];
pen l[];
path p[], q[][];
transform t[][];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;
d1 = nullpicture;
pickup l1;

% ··································································
% constantes
a00 = 2u;		a01 = a00;		a02 = 4a00;
a03 = 3/2;		a04 = (3/2)**2;		a05 = 12/10;
a06 = 1 - a05;		a08 = a04*4/3;
d0 = thelabel(btex \begin{tabular}{c}Acondicionador\\ %
	Acondicionador \end{tabular} etex, (0, 0));
begingroup
	interim bboxmargin := a01;
	p0 = bbox d0;
	interim bboxmargin := a01*a05;
	p1 = bbox d0;
endgroup;

(whatever, 2a07) = urcorner p0 - lrcorner p0;
z00 = (wi/2, a07);			% centro bajo
z01 = a03*(urcorner d0 - ulcorner d0);	% desplazamiento horizontal
z02 = a04*(ulcorner d0 - llcorner d0);	% desplazamiento vertical
z03 = a08*z02/a04;			% desplazamiento vertical II
z04 = z00 shifted (0, wi - 2a07);
z05 = (0, a01*a06);			z06 = (y05, 0);

% ··································································
% cajas y variables auxiliares
for i = 0 upto 3 :
	t[0][i] = identity shifted (wi/2, wi/2 - 7y02/4) %
		shifted -z01 shifted (i*z02);
	t[1][i] = identity transformed t[0][i] shifted 2z01;
	z[i + 7] = (0, 0) transformed t[0][i];
	z[i + 11] = (0, 0) transformed t[1][i];
	if (i = 1) or (i = 3) : 
		draw p0 transformed t[0][i] dashed evenly;
		draw p0 transformed t[1][i] dashed evenly;
	fi
endfor
draw p0 transformed t[0][2];
z15 = (2u, 0);
z16 = z10 shifted z01 shifted -z15;
z17 = z14 shifted -z01 shifted z15;

% ··································································
% flechas
drawgisarrow z07--z08 cutbefore p0 transformed t[0][0] cutafter p1 %
	transformed t[0][1] shifted z5 dashed evenly shifted (u, 0);
for i = 1,2 :
	drawgisarrow z[i + 7]--z[i + 8] cutbefore p0 %
		transformed t[0][i] cutafter p1 %
		transformed t[0][i + 1] shifted z05;
endfor
drawgisarrow z10--z16--z04 shifted -z15 cutbefore p0 %
	transformed t[0][3] cutafter p1 shifted z04 shifted z05 %
	dashed evenly;
drawgisarrow z04 shifted z15--z17--z14 cutbefore p0 %
	shifted z04 cutafter p1 transformed t[1][3] shifted z06 %
	dashed evenly;

% ··································································
% etiquetas
label(btex Acondicionador etex, z08);
label(btex Adquisici\'on etex, z09);
label(btex Presentaci\'on etex, z10);
label(btex Acondicionador etex, z12);
label(btex Control etex, z14);

% ··································································
% figura recortada
d2 = nullpicture;
addto d2 also currentpicture;
currentpicture := nullpicture;
p2 = (0, 0)--(wi, 0)--(wi, he02)--(0, he02)--cycle;
clip d2 to p2 shifted (-x01/2, y09 - he02/2);
draw d2 shifted (x01/2, he02/2 - y09);
pickup l2;
draw p2;

endfig;
% ==================================================================



% ==================================================================
% ejemplo de modos de terminación de la kpci-3108
beginfig(2);
numeric a[];
picture d[], amp, arh, cswitch, oswitch, tswitch,
    blackdot, whitedot, signalbox, revsignalbox;
pen l[];
path p[], q[][];
transform t[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;
pickup l1;

% ··································································
% constantes
w = 3u;
p0 = amplifier scaled 6w;
amp := image(
    fill p0 withpen l0 withcolor white;
    draw p0 withpen l2;
    label.top(btex $-$ etex, (0.75w, -2.25w));
    label.bot(btex $+$ etex, (0.75w, 2.25w));
    label(btex \textsc{ai} etex, (2w, 0));
);
p1 = (-w/3, 0)--(w/3, 0)--(0, 2w/3)--cycle;	% arrowhead path
arh := image( fill p1 yscaled -1; );
p2 = fullcircle scaled (3u/4);
blackdot := image( fill p2 withpen l1; );
p3 = fullcircle scaled (3u/2);
whitedot := image(
    fill p3 withpen l0 withcolor white;
    draw p3 withpen l1;
);
cswitch = switchC(2w);
oswitch = switchO(2w);
tswitch = switchT(2w);
d0 = thelabel.top(btex Se\~nal etex, (0, 0));
d1 := d0;
z0 = llcorner d0;
z1 = lrcorner d0;
addto d0 also thelabel.bot(btex $+$ etex, z0);
addto d0 also thelabel.bot(btex $-$ etex, z1);
signalbox := image(
    fill bbox d0 withpen l0 withcolor white;
    draw d0;
    draw bbox d0 withpen l2;
);
addto d1 also thelabel.bot(btex $-$ etex, z0);
addto d1 also thelabel.bot(btex $+$ etex, z1);
revsignalbox := image(
    fill bbox d1 withpen l0 withcolor white;
    draw d1;
    draw bbox d1 withpen l2;
);
d2 = dashpattern(on 0.35u off 6w);

% ··································································
% cables (empiezo desde el cableado externo)
draw (31w, 20w + 7w/9)--(29w, 20w + 7w/9)--(29w, 22w)--(0, 22w)--
    (0, w)--(2w, w);
draw (4w, w)--(23w, w);
draw (25w, w)--(27w, w)--(27w, 18w);
draw (0, 18w)--(2w, 18w);
draw (4w, 18w)--(23w, 18w);
draw (25w, 18w)--(29w, 18w);
draw (0, 11w)--(2w, 11w);
draw (4w, 11w)--(23w, 11w);
draw (25w, 11w)--(27w, 11w);
draw (31w, 20w - 7w/9)--(29w, 20w - 7w/9)--(29w, 16w + 7w/9)--
    (31w, 16w + 7w/9);
draw (33w, 20w)--(35w, 20w);
draw (33w, 16w)--(35w, 16w);
draw (39w, 18w)--(42w, 18w);

% ··································································
% referencias de tensión (empiezo desde la izquierda)
draw (13.5w, 11w)--(13.5w, 9w);
draw arh shifted (13.5w, 9w);
draw (31w, 16w - 7w/9)--(29w, 16w - 7w/9)--(29w, 14w - 7w/9);
draw arh shifted (29w, 14w - 7w/9);
draw (38w, 17w)--(38w, 15w);
draw arh shifted (38w, 15w);
draw whitedot shifted (42w, 18w);

% ··································································
% nodos (empiezo desde la izquierda)
draw blackdot shifted (0, 11w);
draw blackdot shifted (0, 18w);
draw blackdot shifted (27w, 11w);
draw blackdot shifted (27w, 18w);
draw blackdot shifted (13.5w, 11w);
draw blackdot shifted (29w, 18w);

% ··································································
% conmutadores (empiezo desde la izquierda)
draw oswitch xscaled -1 shifted (3w, w);
draw oswitch xscaled -1 shifted (3w, 11w);
draw oswitch xscaled -1 shifted (3w, 18w);
draw oswitch shifted (24w, w);
draw oswitch shifted (24w, 18w);
draw cswitch shifted (24w, 11w);
draw tswitch scaled -1 shifted (32w, 20w);
draw tswitch scaled -1 shifted (32w, 16w);
p4 = (-2w, -3w/2)--(2w, -3w/2)--(2w, 3w/2)--(-2w, 3w/2)--cycle;
draw p4 shifted (32w, 20w) withpen l2;
draw p4 shifted (32w, 16w) withpen l2;
p5 = (0, 0)--(4w, 0)--(4w, 20w)--(0, 20w)--cycle;
draw p5 shifted (w, 0) withpen l2;
draw p5 shifted (22w, 0) withpen l2;
draw (3w, 5w)--(3w, 8w) withpen l2 dashed d2;
draw (24w, 5w)--(24w, 8w) withpen l2 dashed d2;

% ··································································
% fuentes de señal, puertos (empiezo desde la izquierda)
for i = w, 11w, 18w :  draw signalbox shifted (9.25w, i);  endfor
draw revsignalbox shifted (17.75w, 11w);

% ··································································
% amplificador y final (empiezo desde la izquierda)
draw amp shifted (35w, 18w);
label.bot(btex \textsc{agnd} etex, (38w, 14w));
drawgisarrow (38w, 20.5w)--(41.5w, 20.5w);
label.top(btex \textsc{a/d} etex, (39.75w, 21w));

% ··································································
% etiquetas
d3 = thelabel(btex 00 Lo/08 Hi etex, (0, 0));
d4 = thelabel(btex 00 Hi etex, (0, 0));
z2 = 11/20 * (llcorner d4 - llcorner d3);
label(btex \textsc{00 lo/08 hi} etex, (17.75w, 19w));
label(btex \textsc{01 lo/09 hi} etex, (17.75w, 13.5w));
label(btex \textsc{07 lo/15 hi} etex, (17.75w, 2w));
label(btex \textsc{00 hi} etex, (9.25w, 20.5w));
label(btex \textsc{01 hi} etex, (9.25w, 13.5w + y2));
label(btex \textsc{07 hi} etex, (9.25w, 3.5w));

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

% ··································································
% constantes
a00 = 7u/3;			a01 = 5a00/2;
a02 = 3a00;			a03 = 2a00 + a02 + 6a00;
a04 = a00;			a05 = 18a01;
a06 = a03 * sind(30)/cosd(30);	a07 = a06/3;
a08 = 40;
z00 = (0, 0);			z01 = (a06, 0) rotated 30;
z02 = (a07, 0) rotated 210;	z03 = (a07, 0) rotated 150;
z04 = (a06, 0) rotated 330;

% ··································································
% conector
d1 = conectorh(a00);
draw d1 shifted z00;

% ··································································
% posiciones
for i = 0 upto 17 :
	b[0][i] =  a01/2 + i*a01 - a05/2;
endfor

% ··································································
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
begingroup
	interim bboxmargin := 0;
	fill bbox d0 withcolor white;
endgroup;
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

% ··································································
% constantes
a00 = 7u/3;			a01 = 5a00/2;
a02 = 3a00;			a03 = 2a00 + a02 + 6a00;
a04 = a00;			a05 = 18a01;
a06 = a03 * sind(30)/cosd(30);	a07 = a06/3;
a08 = 40;
z00 = (0, 0);			z01 = (a06, 0) rotated 30;
z02 = (a07, 0) rotated 210;	z03 = (a07, 0) rotated 150;
z04 = (a06, 0) rotated 330;

% ··································································
% conector
d1 = conectorh(a00);
draw d1 shifted z00;

% ··································································
% posiciones
for i = 0 upto 17 :
	b[0][i] =  a01/2 + i*a01 - a05/2;
endfor

% ··································································
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
begingroup
	interim bboxmargin := 0;
	fill bbox d0 withcolor white;
endgroup;
draw d0;

endfig;
% ==================================================================



end
