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
% comprende el subsistema de control y presentación
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
a06 = 1 - a05;		a08 = a04*4/3;		a09 = he02 + y00/4;
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
endfor
draw p0 transformed t[0][2] dashed evenly;
draw p0 transformed t[0][3];
draw p0 transformed t[1][3];
z15 = (2u, 0);
z16 = z10 shifted z01 shifted -z15;
z17 = z14 shifted -z01 shifted z15;
draw p0 shifted z04;

% ··································································
% flechas
for i = 1,2 :
	drawgisarrow z[i + 7]--z[i + 8] cutbefore p0 %
		transformed t[0][i] cutafter p1 %
		transformed t[0][i + 1] shifted z05 dashed evenly %
		shifted (u, 0);
endfor
draw z14--z12 cutbefore p0 transformed t[1][3] cutafter p1 %
	transformed t[1][1] shifted -z05 dashed evenly;
drawgisarrow z10--z16--z04 shifted -z15 cutbefore p0 %
	transformed t[0][3] cutafter p1 shifted z04 shifted z05;
drawgisarrow z04 shifted z15--z17--z14 cutbefore p0 %
	shifted z04 cutafter p1 transformed t[1][3] shifted z06;

% ··································································
% etiquetas
label(btex Supervisor etex, z04);
label(btex Adquisici\'on etex, z09);
label(btex Presentaci\'on etex, z10);
label(btex Control etex, z14);

% ··································································
% figura recortada
d2 = nullpicture;
addto d2 also currentpicture;
currentpicture := nullpicture;
p2 = (0, 0)--(wi, 0)--(wi, a09)--(0, a09)--cycle;
clip d2 to p2 shifted (0, y10 - a09/2 + 3y00/8);
draw d2 shifted (0, a09/2 - 3y00/8 - y10);
pickup l2;
draw p2;

endfig;
% ==================================================================



% ==================================================================
% señal que entra al osciloscopio
beginfig(2);
numeric a[], i, j, k, pi;
picture d[];
pen l[];
path p[], q[][];
transform t[];
string s[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;
pickup l1;

% ··································································
% constantes iniciales (relacionadas con la ventana del
% osciloscopio)
a00 = 3u/2;			a01 = 500;
z00 = (0, 0);			z01 = (50a00, 40a00);
z02 = (57a00, 47a00);

% ··································································
% curvas auxiliares para delimitar la imagen de la señal
a02 = 4wi/5;
p0 = (-a02/2, -y01/2)--(a02/2, -y01/2)--(a02/2, y01/2)-- %
	(-a02/2, y01/2)--cycle;

% ··································································
% señal que entra al osciloscopio
a03 = 20a00;			a04 = 34a00;
a05 = 5u;
p1 = sierra xscaled a03 yscaled a04;
p2 = p1 shifted (-5a03/2, -a04/2) -- %
	p1 shifted (-3a03/2, -a04/2) -- %
	p1 shifted (-a03/2, -a04/2) -- %
	p1 shifted (a03/2, -a04/2) -- %
	p1 shifted (3a03/2, -a04/2);
p3 = p2 shifted (a03/2 - a05, 0) cutbefore p0 cutafter p0;
% cortes por cero de la señal
a06 = -(2*mlog(50/99))/(3*mlog(99));
a07 = 2/3 - (mlog(50/99))/(3*mlog(99));
a08 = a03 * a06;		a09 = a03 * a07;

% ··································································
% ejes auxiliares
a10 = 17wi/20;			a11 = he02/2;
a12 = 3y01/8;			a13 = 19y01/20;
a14 = wi/2 + a08 - a05;		a15 = y01/40;
a16 = x01/2;			a17 = a16 * 3/4;
a18 = wi - a10;
p4 = (-a10/2, 0)--(a10/2, 0);
p5 = (0, -a13/2)--(0, a13/2);
p6 = p5 scaled 19/20;
pickup l2;
draw p3 shifted (wi/2, a11);
pickup l1;
drawgisarrow p4 shifted (wi/2, a11 - a12);
drawgisarrow p5 shifted (3a18/4, a11 + a15);
draw p4 shifted (wi/2, a11) dashed evenly;
draw p6 shifted (a14 - a17, a11 + a15) dashed evenly;
draw p6 shifted (a14 + a17, a11 + a15)cutbefore p4 %
	shifted (wi/2, a11 - a12) dashed evenly shifted (u, 0);

% ··································································
% marcas de grafo
a19 = 3u;			a20 = 5u/2;
p7 = (0, 0)--(0, a19);
draw p7 shifted (a18, a11 - a12);
draw p7 shifted (a14 + a17 + a18/4, a11 - a12);
draw p7 shifted (a14 + a17 + a18, a11 - a12);
label(btex $t_0$ etex, (a18, a11 - a12 - a20));
d0 = thelabel(btex $t_0 + T$ etex, %
	(a14 + a17 + 18/4 + 3a19/2, a11 - a12 - a20));
draw d0;
label(btex $t_1$ etex, (a14 + a17 + a18, a11 - a12 - a20));

% ··································································
% etiquetas
a21 = 3u/2;
p8 = (-a17 + a21, 0)--(a17 - a21, 0);
drawdblgisarrow p8 shifted (a14, a11 + 19a13/40 + a15 - a21);
d1 = thelabel(btex Ventana temporal etex, %
	(a14, a11 + 19a13/40 + a15 - a21));
begingroup
	interim bboxmargin := 2u;
	p9 = bbox d1;
endgroup;
fill p9 withcolor white;
draw d1;
a22 = wi/2 + a08 - a03 - a05;
a23 = wi/2 + a09 - a03 - a05;
a24 = wi/2 + a09 - a05;
a25 = wi/2 + a03 + a08 - a05;
z04 = 1/2[(a14, a11 - a12), (a24, a11)];
d2 = thelabel(btex \begin{tabular}{c} Corte\\central %
	\end{tabular} etex, z04);
drawgisarrow z04--(a14, a11) shifted (a21, -a21) cutbefore bbox d2;
draw d2;
label.ulft(btex $p_0$ etex, (a22, a11));
label.llft(btex $p_1$ etex, (a23, a11));
label.ulft(btex $p_2$ etex, (a14, a11));
label.llft(btex $p_3$ etex, (a24, a11));
label.lrt(btex $p_4$ etex, (a25, a11));
pickup pencircle scaled (3u/2);
drawdot (a22, a11);	drawdot (a23, a11);	drawdot (a14, a11);
drawdot (a24, a11);	drawdot (a25, a11);

endfig;
% ==================================================================



% ==================================================================
% ventana del osciloscopio (modo disparado de funcionamiento)
beginfig(3);
numeric a[], i, j, k, pi;
picture d[];
pen l[];
path p[], q[][];
transform t[];
string s[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;
pickup l1;

% ··································································
% ventana del osciloscopio
a00 = 3u/2;			a01 = 500;
z00 = (0, 0);			z01 = (50a00, 40a00);
z02 = (57a00, 47a00);
d0 = osciloscopio(a00, z00);
draw d0 shifted (wi/2, y02/2);
label.ulft(btex $p_2$ etex, (wi/2, y02/2));

% ··································································
% curvas auxiliares para delimitar la imagen de la señal
p0 = (-x01/2, -y01/2)--(x01/2, -y01/2)--(x01/2, y01/2)-- %
	(-x01/2, y01/2)--cycle;

% ··································································
% fragmento de señal representado en el osciloscopio
a02 = 80a00/3;			a03 = 34a00;
% cortes por cero de la señal
a04 = -(2*mlog(50/99))/(3*mlog(99));
a05 = 2/3 - (mlog(50/99))/(3*mlog(99));
a06 = a02 * a04;		a07 = a02 * a05;
p1 = sierra xscaled a02 yscaled a03;
p2 = p1 shifted (-5a02/2, -a03/2) -- %
	p1 shifted (-3a02/2, -a03/2) -- %
	p1 shifted (-a02/2, -a03/2) --  %
	p1 shifted (a02/2, -a03/2) -- %
	p1 shifted (3a02/2, -a03/2);
p3 = p2 shifted (a02/2 - a06, 0) cutbefore p0 %
	cutafter p0;
pickup l2;
draw p3 shifted (wi/2, y02/2);

endfig;
% ==================================================================



% ==================================================================
% señal que entra al osciloscopio II
beginfig(4);
numeric a[], b[][], i, j, k, pi;
picture d[], e[][];
pen l[];
path p[], q[][];
transform t[];
string s[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;
pickup l1;

% ··································································
% constantes iniciales
a00 = 3u/2;			a01 = 500;
z00 = (0, 0);			z01 = (50a00, 40a00);
z02 = (57a00, 47a00);

% ··································································
% curvas auxiliares para delimitar la imagen de la señal
a02 = 4wi/5;
p0 = (-a02/2, -y01/2)--(a02/2, -y01/2)--(a02/2, y01/2)-- %
	(-a02/2, y01/2)--cycle;

% ··································································
% señal que entra al osciloscopio
a03 = 34a00;			a04 = a03/2;
a05 = 5u;
p2 = sierra xscaled a04 yscaled a03;
p3 = p2 shifted (-5a04/2, -a03/2) -- %
	p2 shifted (-3a04/2, -a03/2) -- %
	p2 shifted (-a04/2, -a03/2) -- %
	p2 shifted (a04/2, -a03/2) -- %
	p2 shifted (3a04/2, -a03/2);
p4 = p3 shifted (a04/2 - a05, 0) cutbefore p0 cutafter p0;
% cortes por cero de la señal
a06 = -(2*mlog(50/99))/(3*mlog(99));
a07 = 2/3 - (mlog(50/99))/(3*mlog(99));
a08 = a04 * a06;		a09 = a04 * a07;

% ··································································
% ejes auxiliares
a10 = 17wi/20;			a11 = he02/2;
a12 = 3y01/8;			a13 = 19y01/20;
a14 = wi/2 + a08 - a05;		a15 = y01/40;
pickup l2;
draw p4 shifted (wi/2, a11);
pickup l1;
p5 = (-a10/2, 0)--(a10/2, 0);
p6 = (0, -a13/2)--(0, a13/2);
p7 = p6 scaled 19/20;
drawgisarrow p5 shifted (wi/2, a11 - a12);
drawgisarrow p6 shifted (3*(wi - a10)/4, a11 + a15);
draw p5 shifted (wi/2, a11) dashed evenly;

% ··································································
% etiquetas
a16 = wi/20;			a17 = wi/2 + a16 - a02/2;
a18 = wi/2 + a02/2 - a16;	a19 = 7;
a20 = (a18 - a17)/a19;
j := 0;
for i = a17 step a20 until a18 :
	draw p7 shifted (i, a11 + a15) dashed evenly;
	b[0][j] = i;
	j := j + 1; 
endfor
e[0][0] = thelabel.lrt(btex $t_0$ etex, (b[0][0] + u, a11 - u));
e[0][1] = thelabel.lrt(btex $t_1$ etex, (b[0][1] + u, a11 - u));
e[0][2] = thelabel.lrt(btex $t_2$ etex, (b[0][2] + u, a11 - u));
e[0][3] = thelabel.lrt(btex $t_3$ etex, (b[0][3] + u, a11 - u));
e[0][4] = thelabel.lrt(btex $t_4$ etex, (b[0][4] + u, a11 - u));
e[0][5] = thelabel.lrt(btex $t_5$ etex, (b[0][5] + u, a11 - u));
e[0][6] = thelabel.lrt(btex $t_6$ etex, (b[0][6] + u, a11 - u));
e[0][7] = thelabel.lrt(btex $t_7$ etex, (b[0][7] + u, a11 - u));
for i = 0,1,3,4,5,6 :
	fill bbox e[0][i] withcolor white;
	draw e[0][i];
endfor
for i = 2,7: draw e[0][i]; endfor;

endfig;
% ==================================================================



% ==================================================================
% ventana del osciloscopio (modo continuo de funcionamiento)
beginfig(5);
numeric a[], i, j, k, pi;
picture d[];
pen l[];
path p[], q[][];
transform t[];
string s[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;
pickup l1;

% ··································································
% ventanas del osciloscopio
a00 = 9u/10;			a01 = 500;
z00 = (0, 0);			z01 = (50a00, 40a00);
z02 = (57a00, 47a00);
d0 = osciloscopio(a00, z00);
a02 = 2u;			a03 = 8;
a04 = wi - 2y02 + a02*a03;	a05 = wi/4 + 4u;
a06 = 3wi/4 - a04/8 + 4u;
draw d0 shifted (a05, he02/2);
draw d0 shifted (a06, he02/2);

% ··································································
% marcas de grafo
a07 = 3u;			a08 = he02/2 - y02/2 - a07;
a09 = 5u/2;
p0 = (0, 0)--(0, a09);
draw p0 shifted (a05, a08);
draw p0 shifted (a06, a08);
label(btex $t_1$ etex, (a05, a08 - a07));
label(btex $t_2$ etex, (a06, a08 - a07));

% ··································································
% ejes coordenados y puntos suspensivos
drawgisarrow (-a07, a08)--(wi + a07, a08);
drawgisarrow (0, a08 - a07)--(0, he02/2 + y02/2 + 2a07);
pickup l2;
d1 = dashpattern(on 0.35u off 1.65u);
draw (a05 - x02/2 - 2u, he02/2)--(a05 - x02/2 - 8u, he02/2) %
	dashed d1 shifted (u/50, 0);
draw (a06 + x02/2 + 2u, he02/2)--(a06 + x02/2 + 8u, he02/2) %
	dashed d1 shifted (u/50, 0);

% ··································································
% razón de compresión y razón de escalado
a11 = 3/4;			% (7 * y01)/(5 * (a02' - 2a16'))
a12 = 153u/8;			% a04' * a11

% ··································································
% fragmento de señal representado en las ventanas de osciloscopio
% señal al completo
a13 = 34a00;			a14 = 3*5u/4;
p1 = sierra xscaled a12 yscaled a13;
p2 = p1 shifted (-5a12/2, -a13/2) -- %
	p1 shifted (-3a12/2, -a13/2) -- %
	p1 shifted (-a12/2, -a13/2) -- %
	p1 shifted (a12/2, -a13/2) -- %
	p1 shifted (3a12/2, -a13/2);
p3 = p2 shifted (a12/2 - a14, 0);
% cortes por cero de la señal
a15 = -(2*mlog(50/99))/(3*mlog(99));
a16 = 2/3 - (mlog(50/99))/(3*mlog(99));
a17 = a12 * a15;		a18 = a12 * a16;
% línea delimitadora
a19 = x01/5;
p4 = (-a19/2, -y01/2)--(a19/2, -y01/2)--(a19/2, y01/2)-- %
	(-a19/2, y01/2)--cycle;
% fragmentos de señal
p5 = p3 cutbefore p4 shifted (-3a19, 0) cutafter p4 %
	shifted (-3a19, 0);
p6 = p3 cutbefore p4 scaled 2 shifted (-5a19/2, 0) cutafter p4 %
	scaled 2 shifted (-5a19/2, 0);
draw p5 shifted (5a19, 0) shifted(a05, he02/2);
draw p6 shifted (4a19, 0) shifted(a06, he02/2);

endfig;
% ==================================================================



% ==================================================================
% ventana del osciloscopio (modo continuo de funcionamiento) II
beginfig(6);
numeric a[], i, j, k, pi;
picture d[];
pen l[];
path p[], q[][];
transform t[];
string s[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;
pickup l1;

% ··································································
% ventanas del osciloscopio
a00 = 9u/10;			a01 = 500;
z00 = (0, 0);			z01 = (50a00, 40a00);
z02 = (57a00, 47a00);
d0 = osciloscopio(a00, z00);
a02 = 2u;			a03 = 8;
a04 = wi - 2y02 + a02*a03;	a05 = wi/4 + 4u;
a06 = 3wi/4 - a04/8 + 4u;
draw d0 shifted (a05, he02/2);
draw d0 shifted (a06, he02/2);

% ··································································
% marcas de grafo
a07 = 3u;			a08 = he02/2 - y02/2 - a07;
a09 = 5u/2;
p0 = (0, 0)--(0, a09);
draw p0 shifted (a05, a08);
draw p0 shifted (a06, a08);
label(btex $t_5$ etex, (a05, a08 - a07));
label(btex $t_6$ etex, (a06, a08 - a07));

% ··································································
% ejes coordenados y puntos suspensivos
drawgisarrow (-a07, a08)--(wi + a07, a08);
drawgisarrow (0, a08 - a07)--(0, he02/2 + y02/2 + 2a07);
pickup l2;
d1 = dashpattern(on 0.35u off 1.65u);
draw (a05 - x02/2 - 2u, he02/2)--(a05 - x02/2 - 8u, he02/2) %
	dashed d1 shifted (u/50, 0);
draw (a06 + x02/2 + 2u, he02/2)--(a06 + x02/2 + 8u, he02/2) %
	dashed d1 shifted (u/50, 0);

% ··································································
% razón de compresión y razón de escalado
a11 = 3/4;			% (7 * y01)/(5 * (a02' - 2a16'))
a12 = 153u/8;			% a04' * a11

% ··································································
% fragmento de señal representado en las ventanas de osciloscopio
% señal al completo
a13 = 34a00;			a14 = 3*5u/4;
p1 = sierra xscaled a12 yscaled a13;
p2 = p1 shifted (-5a12/2, -a13/2) -- %
	p1 shifted (-3a12/2, -a13/2) -- %
	p1 shifted (-a12/2, -a13/2) -- %
	p1 shifted (a12/2, -a13/2) -- %
	p1 shifted (3a12/2, -a13/2);
p3 = p2 shifted (a12/2 - a14, 0);
% cortes por cero de la señal
a15 = -(2*mlog(50/99))/(3*mlog(99));
a16 = 2/3 - (mlog(50/99))/(3*mlog(99));
a17 = a12 * a15;		a18 = a12 * a16;
% línea delimitadora
a19 = x01/5;
p4 = (-a19/2, -y01/2)--(a19/2, -y01/2)--(a19/2, y01/2)-- %
	(-a19/2, y01/2)--cycle;
% fragmentos de señal
p5 = p3 cutbefore p4 scaled 5 shifted (-a19, 0) %
	cutafter p4 scaled 5 shifted (-a19, 0);
p6 = p3 cutbefore p4 scaled 5 cutafter p4 scaled 5;
draw p5 shifted (a19, 0) shifted(a05, he02/2);
draw p6 shifted(a06, he02/2);

endfig;
% ==================================================================



% ==================================================================
% funcionamiento de la data acquisition toolbox con matlab
beginfig(7);
numeric a[], i, j, k;
picture d[];
pen l[];
path p[], q[][];
transform t[];
string s[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;
d0 = nullpicture;
d1 = nullpicture;
d2 = nullpicture;
pickup l1;
interim bboxmargin := u;

% ··································································
% caja principal
% dimensiones de la caja
% recuerda que las proporciones de este dibujo están cambiadas, an-
% cho = he01 y altura = wi
a00 = 0.6he01;		a01 = 0.45wi;
% dimensiones de las cajas de texto
a02 = 0.5he01;		a03 = a01/5;
a04 = (a00 - a02)/2;	a05 = a01/(a01/a03 - 1);
p0 = 1/2(-a00, -a01)--1/2(a00, -a01)--1/2(a00, a01)-- %
	1/2(-a00, a01)--cycle;
p10 = bbox p0;
p1 = 1/2(-a02, -a03)--1/2(a02, -a03)--1/2(a02, a03)-- %
	1/2(-a02, a03)--cycle;
p11 = bbox p1;
z00 = center p1;
t0 = identity shifted (a00/2, 0.6wi);
t1 = identity transformed t0 shifted (0, a04 - 2a03 - a05);
draw p0 transformed t0;
for i = 1 upto 3:
	draw p1 transformed t1 shifted (0, i*a05);
endfor

% ··································································
% etiquetas en la caja principal
label( %
	btex \begin{tabular}{c} Adaptadores \\ %
	de hardware \end{tabular} etex, %
	z00 transformed t1 shifted (0, a05));
label( %
	btex \begin{tabular}{c} M\'aquina virtual de \\ %
	adquisici\'on de datos \end{tabular} etex, %
	z00 transformed t1 shifted (0, 2a05));
label(btex Ficheros *.m etex, z00 transformed t1 shifted (0, 3a05));
label(btex \emph{Data Acquisition Toolbox} etex, %
	z00 transformed t1 shifted (0, a03 + 3a05));

% ··································································
% caja matlab
% dimensiones de la caja
a06 = a00/2;		a07 = a03;
p2 = 1/2(-a06, -a07)--1/2(a06, -a07)--1/2(a06, a07)-- %
	1/2(-a06, a07)--cycle;
p12 = bbox p2;
z01 = center p2;
t2 = identity transformed t0 shifted (0, 0.4wi - a07/2);
draw p2 transformed t2;
label(btex \textsc{matlab} etex, z01 transformed t2);
drawdblgisarrow center p0 transformed t0--center p2 transformed t2 %
	cutbefore p10 transformed t0 cutafter p12 transformed t2;
z02 = 1/2[(0, 0.6wi + a01/2), (a00, wi - a07)];
label.rt(btex Comandos y datos interactivos etex, z02);

% ··································································
% caja driver
% dimensiones de la caja
t3 = identity transformed t0 shifted (0, a07/2 - 0.4wi);
draw p2 transformed t3;
label(btex Drivers etex, z01 transformed t3);
drawdblgisarrow center p0 transformed t0--center p2 transformed t3 %
	cutbefore p10 transformed t0 cutafter p12 transformed t3;
z03 = 1/2[(0, 0.6wi - a01/2), (a00, 0.2wi + a07)];
label.rt(btex Propiedades, datos y eventos etex, z03);

% ··································································
% hardware
% dimensiones del hardware
a08 = 4a07/5;		a09 = 6a07/5;
a10 = a09 - a08;	a11 = 2a06/5;
p3 = 1/2(-a06, -a08)--1/2(a06, -a08)--1/2(a06, a08)-- %
	1/2(-a06, a08);
p13 = bbox p3;
p4 = 1/2(-a06, -a09)--1/2(-a06, a09)--1/2(-a06 - 2a10/3, a09);
addto d1 doublepath p3;		addto d1 doublepath p4;
% conector PCI
p5 = 1/2(0, -1.1a10/2)--1/2(0, 1.1a10/2);
p6 = 1/2(-a11, -a10/2)--1/2(a11, -a10/2)--1/2(a11, a10/2)-- %
	1/2(-a11, a10/2)--cycle;
a12 = 11;
for i = 1 upto a12 - 1:
	addto d0 doublepath p5 shifted (i*a11/a12 - a11/2, 0);
endfor
clip d0 to p6;
addto d1 also d0 shifted 1/2(a06 - a11, -a08 - a10/2);
addto d1 doublepath p6 shifted 1/2(a06 - a11, -a08 - a10/2);
% figura completa
t4 = identity transformed t3 shifted (0, a01/2 - 0.4wi);
draw d1 transformed t4 withpen l1;
label(btex Hardware etex, z01 transformed t4);
drawdblgisarrow center p2 transformed t3--center p3 transformed t4 %
	cutbefore p12 transformed t3 cutafter p13 transformed t4;
z04 = 1/2[(a00, 0.2wi), (0, a01/2 + a07/2 + a10 - 0.2wi)];
label.rt(btex Propiedades, datos y eventos etex, z04);

% ··································································
% disco duro
a13 = 2a07;		a14 = a03/2;
p7 = fullcircle xscaled a13 yscaled a14;
p8 = 1/2(-a13, 2a14)--subpath (4, 8) of p7 shifted (0, -a14)-- %
	1/2(a13, 2a14);
p18 = bbox p8;
addto d2 doublepath p8;
addto d2 doublepath p7 shifted (0, a14);
t5 = identity transformed t1 shifted (0, 2a05) %
	shifted (he01/2, 0);
t6 = identity transformed t5 shifted (-he01/2, 0);
z05 = center d2;
drawgisarrow z00 transformed t6--z05 transformed t5 %
	cutbefore p11 transformed t6 cutafter p18 transformed t5;
label(btex \begin{tabular}{c} Archivo \\ %
	en disco \end{tabular} etex, z05 transformed t5 %
	shifted (0, -a14/2));
draw d2 transformed t5 withpen l1; 

% ··································································
% sensores y actuadores
boxit.aa(btex Actuadores etex);
aa.c = (a00/2 + he01/2, a01/2 + a10/6 - wi/5);
z06 = (aa.ne - aa.nw);		z07 = (aa.ne - aa.se);
z08 = aa.c + 3z07/2;		a15 = y07/3;
drawboxed(aa);
p9 = bpath aa;			draw p9 shifted 1.5z07;
p19 = bbox p9;
label(btex Sensores etex, z08);
drawgisarrow reverse (aa.c--aa.c shifted (-he01/4, 0)-- %
	aa.c shifted (-he01/4, a15)--aa.c shifted (-he01/2, a15) %
	cutbefore p19 cutafter p13 transformed t4);
drawgisarrow z08--z08 shifted (-he01/2, 0) cutbefore p19 %
	shifted 1.5z07 cutafter p13 transformed t4;

endfig;
% ==================================================================



% ==================================================================
% objetos dispositivo y su función con respecto al hardware
beginfig(8);
numeric a[], i, j, k;
picture d[];
pen l[];
path p[], q[][];
transform t[];
string s[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;
d0 = nullpicture;
d1 = nullpicture;
d2 = nullpicture;
pickup l1;
interim bboxmargin := u;

% ··································································
% hardware
% dimensiones del hardware
a00 = 7wi/10;		a01 = 3a00/5;
a02 = 2a01/3;		a03 = a01 - a02;
a04 = 2a00/5;		a05 = 11;
p0 = 1/2(-a00, -a02)--1/2(a00, -a02)--1/2(a00, a02)-- %
	1/2(-a00, a02);
p1 = 1/2(-a00, -a01)--1/2(-a00, a01)--1/2(-a00 - 2a03/3, a01);
addto d1 doublepath p0;		addto d1 doublepath p1;
z00 = center p0;
t0 = identity shifted (a00/2 + a03/3, a01/2);
% conector PCI
p2 = 1/2(0, -1.1a03/2)--1/2(0, 1.1a03/2);
p3 = 1/2(-a04, -a03/2)--1/2(a04, -a03/2)--1/2(a04, a03/2)-- %
	1/2(-a04, a03/2)--cycle;
for i = 1 upto a05 - 1:
	addto d0 doublepath p2 shifted (i*a04/a05 - a04/2, 0);
endfor
clip d0 to p3;
addto d1 also d0 shifted 1/2(a00 - a04, -a02 - a03/2);
addto d1 doublepath p3 shifted 1/2(a00 - a04, -a02 - a03/2);
% figura completa
draw d1 transformed t0 withpen l1;

% ··································································
% cajas de texto
a07 = 3;		a08 = a00/(a07 + 1/2);
a09 = (a00 - a07*a08)/(a07 + 1);
a10 = a01/4;
p4 = 1/2(-a08, -a10)--1/2(a08, -a10)--1/2(a08, a10)-- %
		1/2(-a08, a10)--cycle;
z01 = center p4;
t1 = identity shifted (a03/3 + a08/2, a01/2);
t2 = identity transformed t1 shifted (0, 4(a02 - a01/2));
for i = 0 upto a07 - 1:
	q[0][i] = p4 transformed t1 
		shifted ((i + 1) * a09 + i*a08, 0);
	z[1][i] = center q[0][i];
	q[1][i] = p4 transformed t2 
		shifted ((i + 1) * a09 + i*a08, 0);
	z[2][i] = center q[1][i];
	q[2][i] = bbox q[0][i];
	q[3][i] = bbox q[1][i];
	draw q[0][i];	draw q[1][i];
	drawdblgisarrow z[1][i]--z[2][i] cutbefore q[2][i] %
		cutafter q[3][i];
endfor
label(btex \begin{tabular}{c} Subsistema \\ \textsc{ai} %
	\end{tabular} etex, z[1][0]);
label(btex \begin{tabular}{c} Subsistema \\ \textsc{ao} %
	\end{tabular} etex, z[1][1]);
label(btex \begin{tabular}{c} Subsistema \\ \textsc{dio} %
	\end{tabular} etex, z[1][2]);
label(btex \begin{tabular}{c} Objeto \\ \textsc{ai} %
	\end{tabular} etex, z[2][0]);
label(btex \begin{tabular}{c} Objeto \\ \textsc{ao} %
	\end{tabular} etex, z[2][1]);
label(btex \begin{tabular}{c} Objeto \\ \textsc{dio} %
	\end{tabular} etex, z[2][2]);

% ··································································
% etiquetas al lateral
d3 = thelabel(btex \begin{tabular}{c} Subsistemas \\ del hardware %
	\end{tabular} etex, (wi, a01/2));
d4 = thelabel(btex \begin{tabular}{c} Objetos \\ dispositivo %
	\end{tabular} etex, (wi, 4a02 - 3a01/2));
p5 = (a00 + a03/3 + 2u, 0)--(a00 + a03/3 + 2u, he02);
draw d3;		draw d4;
drawgisarrow (wi, a01/2)--(a00/2, a01/2) cutbefore bbox d3 %
		cutafter p5;
drawgisarrow (wi, 4a02 - 3a01/2)--(a00/2, 4a02 - 3a01/2) %
		cutbefore bbox d4 cutafter p5;

endfig;
% ==================================================================



end
