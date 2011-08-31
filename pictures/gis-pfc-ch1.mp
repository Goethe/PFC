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
% representación de planos acotados de los transductores de
% ultrasonidos
beginfig(2);
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



% ==================================================================
% pulso acústico generado por el transductor
beginfig(3);
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
d1 = transductor(a24) shifted (a23, a19);
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
draw d0;    draw d1;	draw d2;    draw p7;
drawgisarrow center p6--center p7 cutbefore p6 cutafter p9;
drawgisarrow center p7--center p8 cutbefore p9 cutafter p8;
label.top(btex $u(t)$ etex, 1/2[center p6, center p7]);
label.top(btex $v(t)$ etex, 9/16[center p7, center p8]);
label.bot(btex Transductor etex, 1/2[llcorner p7, lrcorner p7] %
	shifted (0, -u));

endfig;
% ==================================================================



% ==================================================================
% Circuito de acondicionamiento del sensor de ultrasonidos
beginfig(4);
numeric a[], i, j, k, w, x[], y[];
picture d[], amp, arh, cap, pzt, r, blackdot, whitedot;
pen l[];
path p[], q[][];
transform t[][];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;
pickup l1;

% ··································································
% constantes
w = 3u;		% factor de escala
p0 = amplifier scaled 8w;
amp := image(
    fill p0 withpen l0 withcolor white;
    draw p0 withpen l2;
    label.top(btex $-$ etex, (w, -3w));
    label.bot(btex $+$ etex, (w, 3w));
    label(btex \textsc{ina155} etex, (3w, 0));
);
p1 = (-w/3, 0)--(w/3, 0)--(0, 2w/3)--cycle;	% arrowhead path
arh := image( fill p1; );
cap := image( draw capacitor scaled 2w withpen l2; );
p2 = fullcircle scaled (3u/4);
blackdot := image( fill p2 withpen l1; );
p3 = fullcircle scaled (3u/2);
whitedot := image(
    fill p3 withpen l0 withcolor white;
    draw p3 withpen l1;
);
pzt := image( draw loudspeaker scaled 2w withpen l2; );
r := image( draw resistor scaled 2w rotated 90 withpen l2; );
% ··································································
% divisor de tensión (empiezo por abajo)
draw (4.5w, 2w)--(4.5w, 4w);
draw (3w, 6w)--(3w, 4w)--(6w, 4w)--(6w, 7w - 0.2w);
draw (3w, 8w)--(3w, 12w);
draw (3w, 14w)--(3w, 16w);
draw (6w, 7w + 0.2w)--(6w, 10w);
draw (3w, 10w)--(13w, 10w);
draw arh yscaled -1 shifted (4.5w, 2w);
draw blackdot shifted (4.5w, 4w);
draw r shifted (3w, 7w);
draw cap shifted (6w, 7w);
draw blackdot shifted (3w, 10w);
draw blackdot shifted (6w, 10w);
draw r shifted (3w, 13w);
draw arh shifted (3w, 16w);
% ··································································
% etapa amplificadora (empiezo a la izquierda, arriba, termino con
% la red de realimentación y el amplificador)
draw (16w, 17w)--(12w, 17w)--(12w, 14w + 2w/3)--(11.5w, 14w + 2w/3);
draw (16w, 11w)--(12w, 11w)--(12w, 14w - 2w/3)--(11.5w, 14w - 2w/3);
draw pzt xscaled -1 shifted (9.5w, 14w);
draw (16w, 16w)--(15w, 16w)--(15w, 15w);
draw (16w, 12w)--(15w, 12w)--(15w, 13w);
draw r shifted (15w, 14w);
draw (18w, 19w)--(18w, 9w);
draw arh shifted (18w, 19w);
draw arh yscaled -1 shifted (18w, 9w);
draw (20w, 14w)--(32w, 14w);
draw whitedot shifted (32w, 14w);
draw (13w, 11w)--(13w, 4.5w)--(14w, 4.5w);
draw (16w, 6w)--(14w, 6w)--(14w, 3w)--(17w - 0.2w, 3w);
draw (18w, 6w)--(20w, 6w)--(20w, 3w)--(17w + 0.2w, 3w);
draw (20w, 4.5w)--(21w, 4.5w)--(21w, 14w);
draw r rotated 90 shifted (17w, 6w);
draw cap rotated 90 shifted (17w, 3w);
draw blackdot shifted (13w, 11w);
draw blackdot shifted (13w, 10w);
draw blackdot shifted (14w, 4.5w);
draw blackdot shifted (20w, 4.5w);
draw amp shifted (16w, 14w);
% ··································································
% impedancia de entrada de la tarjeta de adquisición y final
draw (26.5w, 14w)--(26.5w, 12w);
draw (25w, 10w)--(25w, 12w)--(28w, 12w)--(28w, 9w + 0.2w);
draw (25w, 8w)--(25w, 6w)--(28w, 6w)--(28w, 9w - 0.2w);
draw (26.5w, 6w)--(26.5w, 4w);
draw r shifted (25w, 9w);
draw cap shifted (28w, 9w);
draw blackdot shifted (26.5w, 12w);
draw blackdot shifted (26.5w, 6w);
draw (32w, 10w)--(32w, 8w);
drawgisarrow (33w, 10w)--(33w, 14w);
draw whitedot shifted (32w, 10w);
draw arh yscaled -1 shifted (26.5w, 4w);
draw arh yscaled -1 shifted (32w, 8w);
% ··································································
% etiquetas
label.lft (btex $R = 100$ k$\Omega$ etex, (2.5w, 13w));
label.lft (btex $R$ etex, (2.5w, 7w));
label.rt (btex $C$ etex, (6.75w, 7w));
label.top (btex $V^+_{CC}$ etex, (3w, 17.5w));
label.lft (btex $R_G$ etex, (14.75w, 14w));
label.lrt (btex $R$ etex, (18w, 5.5w));
label.lrt (btex $C = 100$ pF etex, (17.25w + 0.2w, 2.5w));
label.rt (btex $V^-_{CC} \simeq 0$ V etex, (5w, 2.5w));
label.lft (btex $V^-_{CC}$ etex, (17.75w, 8.5w));
label.rt (btex $V^+_{CC} \simeq 9$ V etex, (19w, 19.5w));
label.lrt (btex $V_{REF}$ etex, (21.25w, 12.75w));
% label.llft (btex $1$ M$\Omega$ etex, (24.75w, 7.75w));
% label.urt (btex $150$ pF etex, (28.25w, 9.25w + 0.2w));
label.rt (btex $V_{OUT}$ etex, (33.25w, 12w));
z0 = (26.5w, 4w);   z1 = (33w, 10w);	z10 = 2/3[z1, z0];
label.lrt (btex $V^-_{CC}$ etex, z10);

endfig;
% ==================================================================



% ==================================================================
% Circuito de acondicionamiento del actuador de ultrasonidos
beginfig(5);
numeric a[], i, j, k, w, x[], y[];
picture d[], arh, cap, neg, pzt, piswitch, r, timer, inverter,
    blackdot, whitedot;
pen l[];
path p[], q[][];
transform t[][];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;
pickup l1;

% ··································································
% constantes
w = 3u;					% factor de escala
p1 = (-w/3, 0)--(w/3, 0)--(0, 2w/3)--cycle;	% arrowhead path
arh := image( fill p1; );
cap := image( draw capacitor scaled 2w withpen l2; );
p2 = fullcircle scaled (3u/4);
blackdot := image( fill p2 withpen l1; );
p3 = fullcircle scaled (3u/2);
whitedot := image(
    fill p3 withpen l0 withcolor white;
    draw p3 withpen l1;
);
pzt := image( draw loudspeaker scaled 2w withpen l2; );
r := image( draw resistor scaled 2w rotated 90 withpen l2; );
timer = tlc( w );
piswitch = switchPI( 2w );
inverter = cdub( w );

% ··································································
% cableado (empiezo por la izquierda, arriba)
draw (7w, 20w)--(7w, 18w);
draw (5w, 16w)--(5w, 18w)--(9w, 18w)--(9w, 16w);
draw (5w, 14w)--(5w, 10w);
draw (5w, 8w)--(5w, 6w);
draw (9w, 14w)--(9w, 12w);
draw (5w, 12w)--(7w - 0.2w, 12w);
draw (7w + 0.2w, 12w)--(15w, 12w);
% primer temporizador
draw (15w, 8w)--(12w, 8w)--(12w, 19w)--(24w, 19w)--(24w, 14w)--
    (23w, 14w);
draw (19w, 19w)--(19w, 21w);
draw (24w, 15w)--(27w, 15w)--(27w, 14w);
draw (23w, 12w)--(24w, 12w)--(24w, 10w)--(23w, 10w);
draw (24w, 11w)--(27w, 11w);
draw (27w, 12w)--(27w, 4w + 0.2w);
draw (23w, 8w)--(24w, 8w)--(24w, 4w + 0.2w);
draw (24w, 4w - 0.2w)--(24w, 2w);
draw (19w, 2w)--(19w, 0);
draw (27w, 4w - 0.2w)--(27w, 2w)--(14w, 2w)--(14w, 14w)--(15w, 14w);
draw (15w, 10w)--(13w, 10w)--(13w, 17w)--(33w, 17w);
% segundo temporizador
draw (41w, 23w)--(42w, 23w)--(42w, 27w)--(46w, 27w)--(46w, 26w);
draw (44w, 27w)--(44w, 29w);
draw (41w, 21w)--(44w, 21w)--(44w, 23w)--(46w, 23w);
draw (46w, 24w)--(46w, 22w);
draw (41w, 19w)--(46w, 19w);
draw (43w, 19w)--(43w, 12w)--(30w, 12w)--(30w, 21w)--(33w, 21w);
draw (46w, 20w)--(46w, 10w + 0.2w);
draw (41w, 17w)--(42w, 17w)--(42w, 10w + 0.2w);
draw (37w, 8w)--(37w, 6w);
draw (42w, 10w - 0.2w)--(42w, 8w);
draw (46w, 10w - 0.2w)--(46w, 8w)--(32w, 8w)--(32w, 23w)--
    (33w, 23w);
draw (33w, 19w)--(31w, 19w)--(31w, 14w)--(53w, 14w);
% inversor y final
draw (53w, 6w)--(50w, 6w)--(50w, 21w)--(63w, 21w)--(63w, 14w)--
    (61w, 14w);
draw (53w, 18w)--(52w, 18w)--(52w, 22w)--(57w, 22w)--(57w, 24w);
draw (53w, 4w)--(52w, 4w)--(52w, 0);
draw (53w, 16w)--(50w, 16w);
draw (53w, 10w)--(50w, 10w);
draw (53w, 12w)--(51w, 12w)--(51w, w)--(66w - 0.2w, w);
draw (53w, 8w)--(51w, 8w);
draw (61w, 16w)--(62w, 16w)--(62w, 4w)--(61w, 4w);
draw (61w, 8w)--(62w, 8w);
draw (61w, 10w)--(64w, 10w)--(64w, 6w)--(61w, 6w);
draw (64w, 8w)--(66w - 0.2w, 8w);
draw (66w + 0.2w, w)--(68w, w)--(68w, 4.5w - 2w/3)--
    (69w, 4.5w - 2w/3);
draw (66w + 0.2w, 8w)--(68w, 8w)--(68w, 4.5w + 2w/3)--
    (69w, 4.5w + 2w/3);

% ··································································
% referencias de tensión (empiezo por la izquierda, abajo)
draw arh yscaled -1 shifted (5w, 6w);
draw arh shifted (7w, 20w);
draw arh yscaled -1 shifted (19w, 0);
draw arh shifted (19w, 21w);
draw arh yscaled -1 shifted (37w, 6w);
draw arh shifted (44w, 29w);
draw arh yscaled -1 shifted (52w, 0);
draw arh shifted (57w, 24w);

% ··································································
% nodos (empiezo por la izquierda)
draw blackdot shifted (5w, 12w);
draw blackdot shifted (7w, 18w);
draw blackdot shifted (9w, 12w);
draw blackdot shifted (5w, 12w);
draw blackdot shifted (19w, 19w);
draw blackdot shifted (19w, 2w);
draw blackdot shifted (24w, 2w);
draw blackdot shifted (24w, 11w);
draw blackdot shifted (24w, 15w);
draw blackdot shifted (27w, 11w);
draw blackdot shifted (37w, 8w);
draw blackdot shifted (42w, 8w);
draw blackdot shifted (43w, 19w);
draw blackdot shifted (46w, 19w);
draw blackdot shifted (46w, 23w);
draw blackdot shifted (44w, 27w);
draw blackdot shifted (50w, 16w);
draw blackdot shifted (50w, 10w);
draw blackdot shifted (51w, 8w);
draw blackdot shifted (62w, 8w);
draw blackdot shifted (64w, 8w);

% ··································································
% resistencias, condensadores y conmutadores (empiezo por la
% izquierda, abajo)
draw piswitch rotated 270 shifted (5w, 9w);
draw r shifted (5w, 15w);
draw r shifted (9w, 15w);
draw cap rotated 90 shifted (7w, 12w);
draw cap shifted (24w, 4w);
draw cap shifted (27w, 4w);
draw r shifted (27w, 13w);
draw cap shifted (42w, 10w);
draw cap shifted (46w, 10w);
draw r shifted (46w, 21w);
draw r shifted (46w, 25w);
draw cap rotated 90 shifted (66w, w);
draw cap rotated 90 shifted (66w, 8w);

% ··································································
% integrados y transductor (empiezo por la izquierda)
draw timer shifted (19w, 11w);
draw timer shifted (37w, 20w);
draw inverter shifted (57w, 11w);
draw pzt shifted (71w, 4.5w);

% ··································································
% etiquetas (empiezo por la izquierda)
label.rt( btex $R_1$ etex, (5.25w, 15w) );
label.bot( btex $V^-_{CC}$ etex, (5w, 5w) );
label.top( btex $V^+_{CC}$ etex, (7w, 21w) );
label.rt( btex $R_1$ etex, (9.25w, 15w) );
label.lrt( btex $47$ nF etex, (7.5w, 11.5w) );
label.lft( btex $C = 100$ nF etex, (23w, 4w) );
label.rt( btex $470$ pF etex, (28w, 4w) );
label.lft( btex $R_2$ etex, (26.75w, 13w) );
label.rt( btex $V^-_{CC} \simeq 0$ V etex, (19.5w, -0.5w) );
label.top( btex $V^+_{CC}$ etex, (19w, 22w) );
label.lft( btex $V^+_{CC} \simeq 9$ V etex, (43.5w, 29.25w) );
label.urt( btex $R_2 = 750$ k$\Omega$ etex, (46.25w, 25.25w) );
label.urt( btex $1$ M$\Omega$ etex, (46.25w, 21.25w) );
label.llft( btex $18$ pF etex, (46w, 9.625w) );
label.lft( btex $C$ etex, (41w, 10w) );
label.rt( btex $V^-_{CC}$ etex, (37.5w, 5.5w) );
label.rt( btex $V^+_{CC}$ etex, (57.5w, 24.5w) );
label.rt( btex $V^-_{CC}$ etex, (52.5w, -0.5w) );
label.top( btex $C$ etex, (66w, 9w) );
label.top( btex $C$ etex, (66w, 2w) );

endfig;
% ==================================================================



% ==================================================================
% señal generada por el circuito acondicionador de la sección de
% emisión
beginfig(6);
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
draw (wi/8, a05/2)--(wi/8 - 3wi/40, a05/2) dashed d0 %
	shifted (u/50, 0);
draw (a04 + 21wi/24, a05/2)--(wi, a05/2) dashed d0;

endfig;
% ==================================================================



end
