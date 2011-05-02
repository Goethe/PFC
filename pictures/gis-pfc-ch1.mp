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

wi = 12v;
he01 = 9v;	he02 = 6.75v;

ahlength := 2u;	ahangle := 20;
ahinset := 5/100;
linejoin := mitered;
linecap := butt;



% ==================================================================
% esquema que represental los distintos elementos funcionales que
% comprende el subsistema para la interacción con el medio
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
d2 = nullpicture;
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
for i = 0 upto 1 :
	t[0][i] = identity shifted (wi/2, wi/2 - 7y02/4) %
		shifted -z01 shifted (i*z02);
	t[1][i] = identity transformed t[0][i] shifted 2z01;
	z[i + 7] = (0, 0) transformed t[0][i];
	z[i + 9] = (0, 0) transformed t[1][i];
	draw p0 transformed t[0][i];
	draw p0 transformed t[1][i];
endfor
draw p0 shifted z00;

% ··································································
% flechas y rectas auxiliares
drawgisarrow z07--z08 cutbefore p0 transformed t[0][0] %
	cutafter p1 transformed t[0][1] shifted z05;
drawgisarrow z10--z09 cutbefore p0 transformed t[1][1] %
	cutafter p1 transformed t[1][0] shifted -z05;
drawgisarrow z00--z00 shifted -z01--z07 cutbefore p0 shifted z00 %
	cutafter p1 transformed t[0][0] shifted z05;
drawgisarrow z09--z00 shifted z01--z00 cutbefore p0 %
	transformed t[1][0] cutafter p1 shifted z00 shifted -z06;
drawgisarrow z10 shifted (0, 3v)--z10 cutafter p1 %
	transformed t[1][1] shifted -z05 dashed evenly %
	shifted (u/2, 0);
draw z08--z08 shifted (0, 3v) cutbefore p0 transformed t[0][1] %
	dashed evenly;
  
% ··································································
% etiquetas
label(btex Medio etex, z00);
label(btex Sensor etex, z07);
label(btex Acondicionador etex, z08);
label(btex Actuador etex, z09);
label(btex Acondicionador etex, z10);

% ··································································
% figura recortada
addto d2 also currentpicture shifted (0, y00);
currentpicture := nullpicture;
p2 = (0, 0)--(wi, 0)--(wi, he02)--(0, he02)--cycle;
clip d2 to p2;
draw d2;
pickup l2;
draw p2;

endfig;
% ==================================================================



% ==================================================================
% esquema del circuito acondicionador en la sección de emisión
beginfig(2);
numeric a[], i, j, k, x[], y[];
picture d[];
pen l[];
path p[], q[][];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;
d1 = nullpicture;
pickup l1;

% ··································································
% temporizador
% ancho y alto
% a00 = wi/5 = 24u; a02 = 45u; a02/a03 = 15/2; a02/a04 = 15/16;
a00 = wi/5;		a01 = 3u/2;		a02 = 2a00 + 2a01;
% a03 es el patrón de la cuadrícula
a03 = 11u/2;		a04 = 8a03;		a05 = a01 - a02/2;
p0 = -(a02, a04)/2--(a02, -a04)/2--(a02, a04)/2--(-a02, a04)/2-- %
	cycle;
p1 = (a03/2, 0)--(a03/2, a03)--halfcircle scaled a03 %
	shifted (0, a03)--(-a03/2, a03)--(-a03/2, 0);
addto d1 also thelabel.rt(btex 1 \textsc{dis}(1) etex, %
	(a05, a04/2 - a03));
addto d1 also thelabel.rt(btex 2 \textsc{thr}(1) etex, %
	(a05, a04/2 - 2a03));
addto d1 also thelabel.rt(btex 3 \textsc{con}(1) etex, %
	(a05, a04/2 - 3a03));
addto d1 also thelabel.rt(btex 4 \textsc{res}(1) etex, %
	(a05, a04/2 - 4a03));
addto d1 also thelabel.rt(btex 5 \textsc{out}(1) etex, %
	(a05, a04/2 - 5a03));
addto d1 also thelabel.rt(btex 6 \textsc{tri}(1) etex, %
	(a05, a04/2 - 6a03));
addto d1 also thelabel.rt(btex 7 \textsc{gnd} etex, %
	(a05, a04/2 - 7a03));
addto d1 also thelabel.lft(btex \textsc{Vcc} 14 etex, %
	(-a05, a04/2 - a03));
addto d1 also thelabel.lft(btex \textsc{dis}(2) 13 etex, %
	(-a05, a04/2 - 2a03));
addto d1 also thelabel.lft(btex \textsc{thr}(2) 12 etex, %
	(-a05, a04/2 - 3a03));
addto d1 also thelabel.lft(btex \textsc{con}(2) 11 etex, %
	(-a05, a04/2 - 4a03));
addto d1 also thelabel.lft(btex \textsc{res}(2) 10 etex, %
	(-a05, a04/2 - 5a03));
addto d1 also thelabel.lft(btex \textsc{out}(2) 9 etex, %
	(-a05, a04/2 - 6a03));
addto d1 also thelabel.lft(btex \textsc{tri}(2) 8 etex, %
	(-a05, a04/2 - 7a03));
d0 = thelabel(btex \textsc{ne556} etex, center p0);
addto d1 also d0 rotated 90;
addto d1 doublepath p0 withpen l2;
addto d1 doublepath p1 yscaled -1 shifted (0, a04/2) withpen l1;
% centro del temporizador
z00 = (a02/2 + 6a03, 6a03);
draw d1 shifted z00;

% ··································································
% red temporal del multivibrador astable
p2 = resistencia scaled 2a03 rotated 90;
d2 = condensador scaled (3a03/2) rotated 90;
a06 = 3a03/16;		a07 = 3u/2;
p3 = fullcircle scaled a07;
draw (0, 3a03 - a06)--(0, 0)--(a02 + 22a03, 0)-- %
	(a02 + 22a03, 5a03/2)--(a02 + 45a03/2, 5a03/2);
draw (0, 3a03 + a06)--(0, 6a03);
draw (5a03/2, 0)--(5a03/2, 3a03 - a06);
draw (5a03/2, 3a03 + a06)--(5a03/2, 7a03)--(6a03, 7a03);
draw (0, 8a03)--(0, 9a03)--(6a03, 9a03);
draw (0, 9a03)--(0, 10a03);
draw (0, 12a03)--(0, 13a03)--(a02 + 11a03, 13a03)-- %
	(a02 + 11a03, 12a03);
draw (6a03, 6a03)--(5a03, 6a03)--(5a03, 13a03);
draw (6a03, 4a03)--(4a03, 4a03)--(4a03, 8a03)--(6a03, 8a03);
draw (0, 5a03)--(4a03, 5a03);
draw (6a03, 5a03)--(5a03, 5a03)--(5a03, a03)--(a02 + 7a03, a03)-- %
	(a02 + 7a03, 3a03)--(a02 + 6a03, 3a03);
draw (6a03, 3a03)--(4a03, 3a03)--(4a03, 0);
fill p3 shifted (0, 5a03);	fill p3 shifted (0, 9a03);
fill p3 shifted (5a03/2, 0);	fill p3 shifted (4a03, 0);
fill p3 shifted (4a03, 5a03);	fill p3 shifted (5a03, 13a03);
pickup l2;
draw p2 shifted (0, 7a03);	draw p2 shifted (0, 11a03);
draw d2 shifted (0, 3a03) withpen l2;
draw d2 shifted (5a03/2, 3a03) withpen l2;
pickup l1;

% ··································································
% red temporal del multivibrador monoestable
a08 = a02 + 6a03;
draw (a08, 5a03)--(a08 + a03, 5a03)--(a08 + a03, 13a03);
draw (a08, 9a03)--(a08 + a03, 9a03);
draw (a08, 6a03)--(a08 + 5a03/2, 6a03)--(a08 + 5a03/2, 3a03 + a06);
draw (a08 + 5a03/2, 0)--(a08 + 5a03/2, 3a03 - a06);
draw (a08, 8a03)--(a08 + 5a03, 8a03);
draw (a08, 7a03)--(a08 + 4a03, 7a03)--(a08 + 4a03, 8a03);
draw (a08 + 5a03, 0)--(a08 + 5a03, 3a03 - a06);
draw (a08 + 5a03, 3a03 + a06)--(a08 + 5a03, 10a03);
draw (a08, 4a03)--(a08 + 10a03, 4a03);
fill p3 shifted (a08 + a03, 13a03);
fill p3 shifted (a08 + a03, 9a03);
fill p3 shifted (a08 + 5a03/2, 0);
fill p3 shifted (a08 + 4a03, 8a03);
fill p3 shifted (a08 + 5a03, 8a03);
fill p3 shifted (a08 + 5a03, 0);
pickup l2;
draw p2 shifted (a08 + 5a03, 11a03);
draw d2 shifted (a08 + 5a03/2, 3a03) withpen l2;
draw d2 shifted (a08 + 5a03, 3a03) withpen l2;
pickup l1;

% ··································································
% red amplificadora
p4 = amplificador scaled 5a03;
d3 = trtrsimplificado scaled 2a03;
z01 = center p4 shifted (a09 + 2a03, 49a03/8);
a09 = a08 + 8a03;
(whatever, a10) = 1/2[(0, 4a03), (0, 33a03/4)];
draw (a09, 0)--(a09, a10 - a03);
draw (a09, a03 + a10)--(a09, 33a03/4)--(a09 + 2a03, 33a03/4);
draw (a09 + a03, 33a03/4)--(a09 + a03, 10a03)-- %
	(a09 + 4a03, 10a03);
draw (a09 + 6a03, 10a03)--(a09 + 8a03, 10a03)-- %
	(a09 + 8a03, 7a03/2)--(a09 + 17a03/2, 7a03/2);;
draw z01--(a09 + 8a03, y01);
fill p3 shifted (a09, 0);	fill p3 shifted (a09 + 8a03, y01);
fill p3 shifted (a09 + a03, 33a03/4);
draw z01 shifted (0, -2a03)--z01 shifted (0, 2a03);
pickup l0;
fill p4 shifted (a09 + 2a03, 49a03/8) withcolor white;
pickup l2;
draw p2 shifted (a09, a10);
draw p2 rotated -90 shifted (a09 + 5a03, 10a03);
draw p4 shifted (a09 + 2a03, 49a03/8);
draw d3 shifted (a09 + 19a03/2, 3a03) withpen l2;
pickup l1;
d4 = thelabel(btex \textsc{ne5534} etex, z01 shifted (-a03/2, 0));
z02 = ulcorner d4;		z03 = llcorner d4;
label.top(btex $-$ etex, z02 shifted (-a03/4, a03));
label.bot(btex $+$ etex, z03 shifted (-a03/4, -a03));
draw d4;

% ··································································
% referencias de tensión
d5 = tierra scaled a03;
draw (a02/2 + 6a03, 13a03)--(a02/2 + 6a03, 14a03);
draw (a02/2 + 6a03, 0)--(a02/2 + 6a03, -a03);
fill p3 shifted (a02/2 + 6a03, 13a03);
fill p3 shifted (a02/2 + 6a03, 0);
pickup l0;
fill p3 shifted (a02/2 + 6a03, 14a03) withcolor white;
fill p3 shifted (x01, y01 - 2a03) withcolor white;
fill p3 shifted (x01, y01 + 2a03) withcolor white;
pickup l1;
draw p3 shifted (a02/2 + 6a03, 14a03);
draw p3 shifted (x01, y01 - 2a03);
draw p3 shifted (x01, y01 + 2a03);
draw d5 shifted (a02/2 + 6a03, -a03) withpen l2;

% ··································································
% etiquetas
label.lft(btex $R_1$ etex, (-a03/2, 11a03));
label.lft(btex $R_2$ etex, (-a03/2, 7a03));
label.rt(btex $R_3$ etex, (a08 + 11a03/2, 11a03));
label.ulft(btex $C_1$ etex, (-a03/2, 3a03 + 2a06));
label.ulft(btex $C$ etex, (2a03, 3a03 + 2a06));
label.lrt(btex $C$ etex, (a08 + 3a03, 3a03 - 2a06));
label.lrt(btex $C_2$ etex, (a08 + 11a03/2, 3a03 - 2a06));
label.lft(btex $R_b$ etex, (a09 - a03/2, a10));
label.top(btex $R_a$ etex, (a09 + 5a03, 21a3/2));
label.rt(btex $V\!cc_-$ etex, z01 shifted (a03/2, -2a03));
label.rt(btex $V\!cc_+$ etex, z01 shifted (a03/2, 2a03));
label.rt(btex $u(t)$ etex, (a09 + 33a03/4, y01));
label.urt(btex $R_l$ etex, (a09 + 8a03, a03));
label.rt(btex $V\!cc$ etex, (a02/2 + 13a03/2, 14a03));

endfig;
% ==================================================================



% ==================================================================
% señal generada por el circuito acondicionador de la sección de
% emisión
beginfig(3);
numeric a[], b[], i, j, k;
picture d[];
pen l[];
path p[], q[][];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;
l4 = pensquare scaled 0.15u;
l5 = pensquare scaled 0.25u;
l6 = pensquare scaled 0.35u;
l7 = pensquare scaled 0.5u;
pickup l1;
verbatimtex
\newlength\taltura
\settoheight{\taltura}{$T_H$}
etex

% ··································································
% ejes coordenados
a00 = 3he02/4;			a01 = u/10;
drawgisarrow (0, -a01)--(wi, -a01);
drawgisarrow (wi/2, 0)--(wi/2, a00);
label.lrt(btex $u(t)$ etex, (wi/2 + u, a00));

% ··································································
% marcas de grafo
a02 = 2.5u;		a03 = 3u;
draw (wi/3, 0)--(wi/3, a02);
draw (2wi/3, 0)--(2wi/3, a02);
label.lft(btex \vbox to \taltura {\hbox{$t$}\vss} etex, %
	(wi - 2u, -a03));
label(btex \vbox to \taltura {\hbox{$-T$}\vss} etex, (wi/6, -a03));
label(btex \vbox to \taltura {\hbox{$0$}\vss} etex, (wi/2, -a03));
label(btex \vbox to \taltura {\hbox{$T$}\vss} etex, (5wi/6, -a03));

% ··································································
% tren de pulsos
a04 = wi/20;		a05 = he02/2;
p0 = (0, 0)--(0, a05)--(a04, a05)--(a04, 0);
p2 = for i = 0 upto 2:
	p0 shifted (wi/6 + i*wi/3, 0)--
	endfor (11wi/12, 0);
pickup l2;
draw (wi/12, 0)--(wi/6, 0)--p2;
label.ulft(btex $P$ etex, (wi/2 - u, a05));
label.rt(btex \vbox to \taltura {\hbox{$T_H$}\vss} etex, %
	(wi/2 + a04, -a03));

% ··································································
% puntos suspensivos
d0 = dashpattern(on 0.35u off 2.65u);
% el ancho del patrón se corresponde con el ancho de línea l2 (.35u)
pickup l2;
draw (wi/8, a05/2)--(wi/8 - 3wi/40, a05/2) dashed d0;
draw (a04 + 21wi/24, a05/2)--(wi, a05/2) dashed d0;

endfig;
% ==================================================================



% ==================================================================
% pulso acústico generado por el transductor
beginfig(4);
numeric a[], b[][], i, j, k;
picture d[];
pen l[];
path p[], q[][];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;
l4 = pensquare scaled 0.15u;
l5 = pensquare scaled 0.25u;
l6 = pensquare scaled 0.35u;
l7 = pensquare scaled 0.5u;
pickup l1;

% ··································································
% ejes para la representación de los pulsos
% ancho y alto del gráfico
a00 = 2wi/5;			a01 = he01/2;
% desplazamiento del gráfico
a02 = wi/20;			a03 = wi/2;
a04 = u/10;
% ejes coordenados
p0 = (0, 0)--(0, 7a01/10);
p1 = (0, 0)--(a00 + a02, 0);
p2 = (0, 0)--(5a02/4, 0)--(3a02/2, sqrt(a02))-- %
	(2a02, -sqrt(a02))--(9a02/4, 0)--(a00 + a02, 0);
drawgisarrow p0 shifted (5a02/4, 2a01/5);
drawgisarrow p1 shifted (a02/2, a01/2 - a04);
drawgisarrow p0 shifted (5a02/4, 2a01/5) shifted (a03, 0);
drawgisarrow p2 shifted (a02/2, a01/2 - a04) shifted (a03, 0);

% ··································································
% pulso rectangular
% altura y duración del estado alto (Th)
a05 = wi/10;			a06 = 4a01/10;
% Th figurado, ancho del pulso rectangular
p3 = (a02/4, 0)--(a05/2, 0)--(a05/2, a06)--(5a05/2, a06)--%
	(5a05/2, 0)--(4a05, 0);
z00 = (3a02/4, a01/2);		a07 = -a06/20;
z01 = (a05/4, a06);		z02 = (3a05/8, a01/2);
z03 = (a03 - 3a02/2, a07);
pickup l2;
draw p3 shifted z00;
label.bot(btex $t_0$ etex, z00 shifted (9a05/16, a07));
label.bot(btex $t_0 + T_H$ etex, z00 shifted (21a05/8, a07));
label.lft(btex $P$ etex, z00 shifted z01);
label.urt(btex $u(t)$ etex, z00 shifted z02);
label.bot(btex $t$ etex, z00 shifted z03);

% ··································································
% pulso gausiano y portadora
a08 = 100;			a09 = v/a08;
a10 = 450;			a11 = 360/a10;
a12 = 19;
for i = 0 upto a10 :
	b[0][i] = (i - a10/2)*a09;
	b[1][i] = b[0][i]**2;
	b[2][i] = -b[1][i]/2;
	b[3][i] = mexp(b[2][i]);
	b[4][i] = b[3][i]*sind(a11*a12*i);
endfor
p4 = (b[0][0]/16, b[3][0]) for i = 1 upto a10 :
	..(b[0][i]/16, b[3][i]) endfor;
p5 = (b[0][0]/16, b[4][0]) for i = 1 upto a10 :
	..(b[0][i]/16, b[4][i]) endfor;
z04 = (3a02/4 + a03, a01/2);
begingroup
	interim linejoin := rounded;
	draw p5 xscaled (9a05/v) yscaled (28*a06/v) shifted z04 %
		shifted (13a05/5, 0);
	pickup l1;
	draw p4 xscaled (9a05/v) yscaled (28*a06/v) shifted z04 %
		shifted (13a05/5, 0) dashed evenly;
endgroup;
label.lft(btex $P^\prime$ etex, z04 shifted z01);
label.urt(btex $v(t)$ etex, z04 shifted z02);
label.bot(btex $t$ etex, z04 shifted z03);
a13 = -3a06/5;				a14 = 6a05/5;
a15 = 4a05;				a16 = a05/10;
a17 = a05/8;				a18 = -2u;
label.bot(btex $t_0 < t_1$ etex, z04 shifted (a14, a13));
label.bot(btex $t_1 + T_H$ etex, z04 shifted (a15 + a17, a13));
begingroup
	interim ahlength := 3u/2;
	drawgisarrow z04 shifted (a14, a13)-- %
		z04 shifted (a14 + a16, a18);
	drawgisarrow z04 shifted (a15, a13)-- %
		z04 shifted (a15 - a16, a18);
endgroup;

% ··································································
% diagrama de cajas
a19 = 16he01/20;			a20 = 3u;
a21 = 3a20/2 + 2u;			a22 = a20 + 7.5u;
d0 = thelabel.rt(btex \begin{tabular}{c} Alimentaci\'on\\ %
	el\'ectrica \end{tabular} etex, (0, a19));
d2 = thelabel.lft(btex \begin{tabular}{c} Se\~nal\\ac\'ustica %
	\end{tabular} etex, (wi, a19));
z05 = 1/2[urcorner d0, lrcorner d0];
z06 = 1/2[ulcorner d2, llcorner d2];
(a23, whatever) = 1/2[z05, z06];
a24 = 1.2;
d1 = transductor(a24, (a23, a19));
begingroup
	interim bboxmargin := a20;
	p6 = bbox d0;
	p8 = bbox d2;
	interim bboxmargin := 3a20/2;
	p7 = bbox d1;
	interim bboxmargin := a21;
	p9 = bbox d1;
endgroup;
z07 = 1/2[ulcorner p7, llcorner p7];
draw z07 shifted (3a20/4, 0)--z07 shifted (a22, 0);
draw d0;	draw d1;	draw d2;
draw p7;
drawgisarrow center p6--center p7 cutbefore p6 cutafter p9;
drawgisarrow center p7--center p8 cutbefore p9 cutafter p8;
label.top(btex $u(t)$ etex, 1/2[center p6, center p7]);
label.top(btex $v(t)$ etex, 9/16[center p7, center p8]);
label.bot(btex Transductor etex, 1/2[llcorner p7, lrcorner p7] %
	shifted (0, -u));

endfig;
% ==================================================================



% ==================================================================
% representación de planos acotados de los transductores de
% ultrasonidos
beginfig(5);
ahlength := 1.25u;
ahangle := 30;
numeric a[], i, j, k, x[], y[];
picture d[];
pen l[];
path p[], q[][];
transform t[][];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;
d0 = nullpicture;
pickup l1;

% ··································································
% constantes
a00 = 2u;		a01 = 9.7 * a00;	a02 = 2 * a00;
a03 = a00/2;		a04 = 5a00/2;		a05 = 6.7 * a00;
a06 = 9.4 * a00;	a07 = 7u/20;		a08 = 8u;
a09 = 2u;
% a00 representa la escala de la representación.
% a01...a06 representan las dimensiones de los transductores.
% a07 sirve para que las puntas de flecha no atraviesen las aristas.
% a06 es lo que sobresale la línea auxiliar de cota de la arista de
% la figura.
% a07 es lo que sobresale la linea auxiliar de cota de la línea de
% cota.

z00 = (2v, he02/2);
z01 = z00 + (7v/2, 0);
z02 = z01 + (7v/2, a05/2);

p0 = fullcircle scaled a01;
p1 = fullcircle scaled (a01 - a02);
p2 = (-a01/2, -a05/2)--(a01/2, -a05/2)--(a01/2, a05/2)-- %
	(-a01/2, a05/2)--cycle;
p3 = (-a03/2, a06/2)--(-a03/2, -a06/2)--(a03/2, -a06/2)-- %
	(a03/2, a06/2);
p4 = fullcircle scaled a03;
addto d0 doublepath (-3a01/5, 0)--(-a01/4, 0) withpen l0;
addto d0 doublepath (-3a01/20, 0)--(3a01/20, 0) withpen l0;
addto d0 doublepath (a01/4, 0)--(3a01/5, 0) withpen l0;
addto d0 contour (makepath pencircle scaled 0.075u) %
	shifted (-a01/5, 0) withpen l0;
addto d0 contour (makepath pencircle scaled 0.075u) %
	shifted (a01/5, 0) withpen l0;

% ··································································
% planos de los transductores
draw p0 shifted z00;	draw p1 shifted z00;
draw p0 shifted z01;	draw p1 shifted z01;
draw p3 shifted z02 shifted (-a04, -a05/2 - a06/2);
draw p3 shifted z02 shifted (a04, -a05/2 - a06/2);
draw p2 shifted z02;
draw p4 shifted z01 shifted (-a04, 0);
draw p4 shifted z01 shifted (a04, 0);

% ··································································
% líneas auxiliares
pickup l0;
% línea punteada auxiliar circunferencias primera y segunda figura
draw d0 shifted z00;	draw d0 rotated 90 shifted z00;
draw d0 shifted z01;	draw d0 rotated 90 shifted z01;
% cota circunferencia primera figura
z03 = ((0, 0)--(a01, a01)) intersectionpoint
	(fullcircle scaled a01);
p5 = (0, 0)--(x03 + a08, y03 + a08)
	cutbefore fullcircle scaled (a01 - a02);
p6 = fullcircle scaled (a01 - a02 - 2a07);
p7 = (-a01/2, -a01/2)--(a01/2, a01/2) %
	cutbefore subpath (4, 6) of p6 %
	cutafter p6;
draw p5 shifted z00;
drawdblgisarrow p7 shifted z00;
% cota separación conectores/bornes segunda figura
p8 = (0, 0)--(0, -3a01/5 - a08);
draw p8 shifted z01 shifted (-a04, 0);
draw p8 shifted z01 shifted (a04, 0);
drawdblgisarrow ((-a04 + a07, 0)--(a04 - a07, 0)) shifted z01 %
	shifted (0, -3a01/5 - a08 + a09);
% cota altura transductor
draw ((0, 0)--(a08, 0)) shifted z02 shifted (a01/2, a05/2);
draw ((0, 0)--(a08, 0)) shifted z02 shifted (a01/2, -a05/2);
drawdblgisarrow ((0, a05/2 - a07)--(0, -a05/2 + a07)) shifted z02 %
	shifted (a01/2 + a08 - a09, 0);
% cota diámetro transductor
draw ((0, 0)--(0, a08)) shifted z02 shifted (-a01/2, a05/2);
draw ((0, 0)--(0, a08)) shifted z02 shifted (a01/2, a05/2);
drawdblgisarrow ((-a01/2 + a07, 0)--(a01/2 - a07, 0)) shifted z02 %
	shifted (0, a05/2 + a08 - a09);
% cota longitud conectores del transductor
draw ((a03/2 + a04, -a05/2 - a06)-- %
	(a01/2 + a08, -a05/2 - a06)) shifted z02;
drawdblgisarrow ((0, -a05/2 - a07)--(0, -a05/2 - a06 + a07)) %
	shifted z02 shifted (a01/2 + a08 - a09, 0);
% cota diámetro conectores del transductor
draw ((0, 0)--(0, -a08)) shifted z02 %
	shifted (-a04 + a03/2, -a05/2 - a06);
drawgisarrow ((-3a08/2, 0)--(-a07, 0)) shifted z02 %
	shifted (-a04 - a03/2, -a05/2 - a06 - a08 + a09);
draw ((0, 0)--(0, -a08)) shifted z02 %
	shifted (-a04 - a03/2, -a05/2 - a06);
drawgisarrow (reverse ((a07, 0)--(a08/3, 0))) shifted z02 %
	shifted (-a04 + a03/2, -a05/2 - a06 - a08 + a09);
draw ((-a03/2, 0)--(a03/2, 0)) shifted z02 %
	shifted (-a04, -a05/2 -a06 - a08 + a09);

% ··································································
% etiquetas
d1 = thelabel.ulft(btex $\varnothing\,\mathtt{7.7}$ etex, (0, 0));
draw d1 rotated 45 shifted z00 shifted (x03 + a08, x03 + a08);
label.top(btex $\mathtt{5.0}$ etex, z01 %
	shifted (0, -3a01/5 - a08 + a09));
d2 = thelabel.top(btex $\mathtt{6.7}$ etex, (0, 0));
d3 = thelabel.top(btex $\mathtt{9.4}$ etex, (0, 0));
draw d2 rotated 90 shifted z02 shifted (a01/2 + a08 - a09, 0);
draw d3 rotated 90 shifted z02 %
	shifted (a01/2 + a08 - a09, -a05/2 - a06/2);
label.top(btex $\varnothing\,\mathtt{9.7}$ etex, z02 %
	shifted (0, a05/2 + a08 - a09));
label.urt(btex $\varnothing\,\mathtt{0.5}$ etex, z02 %
	shifted (-a04 - a03/2 - 3a08/2, -a05/2 - a06 - a08 + a09));
d4 = thelabel.urt(btex \texttt{escala\quad 2:1} etex, (2u, 2u));
fill bbox d4 withcolor white;
draw bbox d4;				draw d4;

% ··································································
% marco
pickup l2;
draw (0, 0)--(wi, 0)--(wi, he02)--(0, he02)--cycle;

endfig;
% ==================================================================



end
