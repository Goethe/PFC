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



% ==================================================================
beginfig(1);
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

% ------------------------------------------------------------------
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
p1 = 1/2(-a02, -a03)--1/2(a02, -a03)--1/2(a02, a03)-- %
	1/2(-a02, a03)--cycle;
z00 = center p1;
t0 = identity shifted (a00/2, 0.6wi);
t1 = identity transformed t0 shifted (0, a04 - 2a03 - a05);
draw p0 transformed t0;
for i = 1 upto 3:
	draw p1 transformed t1 shifted (0, i*a05);
endfor

% ------------------------------------------------------------------
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

% ------------------------------------------------------------------
% caja matlab
% dimensiones de la caja
a06 = a00/2;		a07 = a03;
p2 = 1/2(-a06, -a07)--1/2(a06, -a07)--1/2(a06, a07)-- %
	1/2(-a06, a07)--cycle;
z01 = center p2;
t2 = identity transformed t0 shifted (0, 0.4wi - a07/2);
draw p2 transformed t2;
label(btex \textsc{matlab} etex, z01 transformed t2);
drawdblgisarrow center p0 transformed t0--center p2 transformed t2 %
	cutbefore p0 transformed t0 cutafter p2 transformed t2;
z02 = 1/2[(0, 0.6wi + a01/2), (a00, wi - a07)];
label.rt(btex Comandos y datos interactivos etex, z02);

% ------------------------------------------------------------------
% caja driver
% dimensiones de la caja
t3 = identity transformed t0 shifted (0, a07/2 - 0.4wi);
draw p2 transformed t3;
label(btex Drivers etex, z01 transformed t3);
drawdblgisarrow center p0 transformed t0--center p2 transformed t3 %
	cutbefore p0 transformed t0 cutafter p2 transformed t3;
z03 = 1/2[(0, 0.6wi - a01/2), (a00, 0.2wi + a07)];
label.rt(btex Propiedades, datos y eventos etex, z03);

% ------------------------------------------------------------------
% hardware
% dimensiones del hardware
a08 = 4a07/5;		a09 = 6a07/5;
a10 = a09 - a08;	a11 = 2a06/5;
p3 = 1/2(-a06, -a08)--1/2(a06, -a08)--1/2(a06, a08)-- %
	1/2(-a06, a08);
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
	cutbefore p2 transformed t3 cutafter p3 transformed t4;
z04 = 1/2[(a00, 0.2wi), (0, a01/2 + a07/2 + a10 - 0.2wi)];
label.rt(btex Propiedades, datos y eventos etex, z04);

% ------------------------------------------------------------------
% disco duro
a13 = 2a07;		a14 = a03/2;
p7 = fullcircle xscaled a13 yscaled a14;
p8 = 1/2(-a13, 2a14)--subpath (4, 8) of p7 shifted (0, -a14)-- %
	1/2(a13, 2a14);
addto d2 doublepath p8;
addto d2 doublepath p7 shifted (0, a14);
t5 = identity transformed t1 shifted (0, 2a05) %
	shifted (he01/2, 0);
t6 = identity transformed t5 shifted (-he01/2, 0);
z05 = center d2;
drawgisarrow z00 transformed t6--z05 transformed t5 %
	cutbefore p1 transformed t6 cutafter p8 transformed t5;
label(btex \begin{tabular}{c} Archivo \\ %
	en disco \end{tabular} etex, z05 transformed t5 %
	shifted (0, -a14/2));
draw d2 transformed t5 withpen l1; 

% ------------------------------------------------------------------
% sensores y actuadores
boxit.aa(btex Actuadores etex);
aa.c = (a00/2 + he01/2, a01/2 + a10/6 - wi/5);
z06 = (aa.ne - aa.nw);		z07 = (aa.ne - aa.se);
z08 = aa.c + 3z07/2;		a15 = y07/3;
drawboxed(aa);
p9 = bpath aa;			draw p9 shifted 1.5z07;
label(btex Sensores etex, z08);
drawgisarrow aa.c--aa.c shifted (-he01/4, 0)-- %
	aa.c shifted (-he01/4, a15)--aa.c shifted (-he01/2, a15) %
	cutbefore bpath aa cutafter p3 transformed t4;
drawgisarrow z08--z08 shifted (-he01/2, 0) cutbefore bpath aa %
	shifted 1.5z07 cutafter p3 transformed t4;

endfig;
% ==================================================================



% ==================================================================
beginfig(2);
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

% ------------------------------------------------------------------
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

% ------------------------------------------------------------------
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
	draw q[0][i];	draw q[1][i];
	drawdblgisarrow z[1][i]--z[2][i] cutbefore q[0][i] %
		cutafter q[1][i];
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

% ------------------------------------------------------------------
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
