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
input graph
input gis-pfc

wi = 12v;
he01 = 9v;	he02 = 6.75v;

ahlength := 2u;	ahangle := 20;
ahinset := 5/100;
linejoin := mitered;
linecap := butt;



% ==================================================================
beginfig(1);
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

% ------------------------------------------------------------------
% transductor
a00 = 1.5;	a01 = 17u;
draw (0, he02/2)--(a01, he02/2);
d0 = transductor(a00, (a01, he02/2));

% ------------------------------------------------------------------
% frente de ondas
draw d0;
a02 = a00 * v/8;
z00 = lrcorner d0 shifted (0, a02);
z01 = urcorner d0 shifted (0, -a02);
z02 = whatever[z00, z00 + (2v, -v)] = whatever[z01, z01 + (2v, v)];
p1 = z02 + (he02, he02/2)--z02--z02 + (he02, -he02/2)--(wi, 0) %
		--(wi, he02)--cycle;
for i = 4.5v, 9v, 13.5v, 18v:
	q0.[i] = fullcircle scaled i shifted z02;
	addto d1 doublepath q0.[i];
endfor
clip d1 to p1;
draw d1 withpen l1; % withpen l3 withcolor 0.7white;

% ------------------------------------------------------------------
% curvas auxiliares
a03 = he02 - u;		a04 = 3/4*4.5v;
a05 = he02/8;		a06 = he02 - a05;
a07 = angle(2v, v);	a08 = 5/4*9v;
z05 = z02 + (a03, a03/2);	z06 = z02 + (a03, -a03/2);
z07 = (a03, a03/2) rotated -a07 shifted z00;
z08 = (a03, -a03/2) rotated a07 shifted z01;
% rectas diagonales
p2 = z02--z05;	p3 = z02--z06;
% recta que corta las diagonales
p4 = z00--z01;
% rectas horizontales
% p5 = z00--z31;	p6 = z01--z32;
p5 = z00--(wi - u, y00);	p6 = z01--(wi - u, y01);
% auxiliar que marca el inicio del campo
p7 = z01--z01 shifted (0, a06 - a05/2 - y01);
% frontera entre campo cercano y campo lejano
p8 = (x02 + a04, a06 + a05/2)--(x02 + a04, a05/2);
draw p2 cutbefore p4 dashed evenly scaled 2 shifted (u, 0);
draw p3 cutbefore p4 dashed evenly scaled 2 shifted (u, 0);
draw p5 dashed evenly scaled 2 shifted (u, 0);
draw p6 dashed evenly scaled 2 shifted (u, 0);
draw p7 dashed evenly scaled 2 shifted (u, 0);
draw p8 dashed evenly scaled 2 shifted (u, 0);

% ------------------------------------------------------------------
% etiquetas y marco
p9 = (x01 + u, a06 - a05/2)--(x02 + a04 - u, a06 - a05/2);
p10 = fullcircle scaled a08 shifted z02 %
		cutbefore p6 shifted (0, u) %
		cutafter p2 shifted (3u, 0);
z09 = point 0.5 length p9 of p9;
z10 = point 0.5 length p10 of p10;
z11 = point 0 of p10;
p11 = z11 shifted (u/10, -2u)--z11 shifted (u/10, y00 - y01);
z12 = point 0.5 length p11 of p11;
d3 = thelabel(btex $L_0$ etex, z09);
d4 = thelabel(btex $\gamma_0$ etex, z10);
d5 = thelabel.lft(btex Campo pr\'oximo etex, %
	       (x02 + a04 - 2u, a05));
d6 = thelabel(btex Campo lejano etex, %
	       1/2[(x02 + a04 + 2u, a05), (wi, a05)]);
label.rt(btex $D$ etex, z12);
drawdblgisarrow p9;	drawdblgisarrow p10;	drawdblgisarrow p11;
fill bbox d3 withcolor white;	draw d3;
fill bbox d4 withcolor white;	draw d4;
fill bbox d5 withcolor white;	draw d5;
label(btex Transductor etex, (a01, he02/3));
fill bbox d6 withcolor white;	draw d6;
pickup l2;
draw (0, 0)--(wi, 0)--(wi, he02)--(0, he02)--cycle;

endfig;
% ==================================================================



% ==================================================================
beginfig(2);
numeric a[], i, j, k;
picture d[];
pen l[];
path p[], q[][];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;
d1 = nullpicture;
pickup l1;

% ------------------------------------------------------------------
% transductor izquierdo
a00 = 1.5;	a01 = 17u;	a02 = he02/2;
draw (0, a02)--(a01, a02);
d0 = transductor(a00, (a01, a02));
draw d0;

% ------------------------------------------------------------------
% transductor derecho
a03 = wi - a01;
draw (wi, a02)--(a03, a02);
draw d0 xscaled -1 shifted (a03 + a01, 0);

% ------------------------------------------------------------------
% medio y acoplamiento
a04 = a00 * v/8;
z00 = lrcorner d0 shifted (0, a04);
z01 = urcorner d0 shifted (0, -a04);
z02 = (wi - x00, y00);		z03 = (wi - x01, y01);
z04 = 1/2[z01, z00];		z05 = 1/2[z03, z02];
z06 = 1/2[z05, z04];		z07 = 5/8[z05, z04];
% espesor de la capa de acoplamiento y margen vertical
a05 = 5u;			a06 = 5u;
p1 = (x00 + a05, a06)--(x00, a06)--(x00, 2a02 - a06)-- %
		(x00 + a05, 2a02 - a06);
p2 = (x02 - a05, a06)--(x02, a06)--(x02, 2a02 - a06)-- %
		(x02 - a05, 2a02 - a06);
p3 = (x00 + a05, a06)--(x02 - a05, a06)--(x02 - a05, 2a02 - a06)-- %
		(x00 + a05, 2a02 - a06)--cycle;
pickup l0;
draw p1 dashed evenly;		draw p2 dashed evenly;
draw p3;

% ------------------------------------------------------------------
% defecto
% dimensiones del rectángulo en el que el defecto se encierra
a07 = 5u;		a08 = 8u;
p4 = (-3a07/10, -a08/2)--(-2a07/5, 0)--(0, 2a08/5){dir 340}.. %
		(2a07/5, a08/2);
p5 = (-3a07/10, -a08/2)--(a07/10, -2a08/5)--(a07/2, -a08/10)-- % 
		(2a07/5, a08/2);
addto d1 doublepath p4;
addto d1 doublepath (-3a07/10, -a08/2)--(a07/5, 0)--(2a07/5, a08/2);
addto d1 doublepath p5;
draw d1 shifted z07 shifted (a07/2, 0) withpen l1;
d2 = d1 shifted (19a07/40, 0) shifted z07;
p6 = p4 scaled 1.3 shifted (19a07/40, 0) shifted z07;
p7 = p5 scaled 1.3 shifted (19a07/40, 0) shifted z07;

% ------------------------------------------------------------------
% flechas
a09 = 2u;		a10 = ahlength;
p8 = z04 shifted (u, 0)--z05 shifted (-u, 0);
drawgisarrow p8 cutafter p6;	
drawgisarrow p8 cutbefore p7;

% ------------------------------------------------------------------
% etiquetas
d3 = thelabel.top(btex defecto etex, 1/4[z04, z05] %
		shifted (0, 2a09));
d4 = thelabel.top(btex forward scattering etex, 23/32[z04, z05] %
		shifted (0, a09));
d5 = thelabel.llft(btex \begin{tabular}{r@{ }l}--- & medio\\ %
	- - & acoplamiento\end{tabular} etex, (wi - 2u, he02 - 2u));
drawgisarrow 1/2[urcorner d3, lrcorner d3] shifted (u/2, 0){right}.. %
		1/2[ulcorner d2, urcorner d2] dashed evenly;
fill bbox d4 withcolor white;		draw d4;
fill bbox d5 withcolor white;		draw d5;
draw bbox d5;				draw d3;

% ------------------------------------------------------------------
% marco
pickup l2;
draw (0, 0)--(wi, 0)--(wi, he02)--(0, he02)--cycle;

endfig;
% ==================================================================



% ==================================================================
beginfig(3);
numeric a[], i, j, k;
picture d[];
pen l[];
path p[], q[][];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;
d1 = nullpicture;
pickup l1;

% ------------------------------------------------------------------
% transductor
a00 = 1.5;	a01 = 17u;	a02 = he02/2;
draw (0, a02)--(a01, a02);
d0 = transductor(a00, (a01, a02));
draw d0;

% ------------------------------------------------------------------
% medio y acoplamiento
a03 = a00 * v/8;
z00 = lrcorner d0 shifted (0, a04);
z01 = urcorner d0 shifted (0, -a04);
z02 = (wi - x00, y00);		z03 = (wi - x01, y01);
z04 = 1/2[z01, z00];		z05 = 1/2[z03, z02];
z06 = 1/2[z05, z04];		z07 = 5/8[z05, z04];
% espesor de la capa de acoplamiento y margen vertical
a04 = 5u;			a05 = 5u;
p1 = (x00 + a04, a05)--(x00, a05)--(x00, 2a02 - a05)-- %
		(x00 + a04, 2a02 - a05);
p2 = (x02 - a04, a05)--(x02, a05)--(x02, 2a02 - a05)-- %
		(x02 - a04, 2a02 - a05);
p3 = (x00 + a04, a05)--(x02 - a04, a05)--(x02 - a04, 2a02 - a05)-- %
		(x00 + a04, 2a02 - a05)--cycle;
pickup l0;
draw p1 dashed evenly;		draw p2 dashed evenly;
draw p3;

% ------------------------------------------------------------------
% defecto
% dimensiones del rectángulo en el que el defecto se encierra
a06 = 5u;		a07 = 8u;
p4 = (-3a06/10, -a07/2)--(-2a06/5, 0)--(0, 2a07/5){dir 340}.. %
		(2a06/5, a07/2);
addto d1 doublepath p4;
addto d1 doublepath (-3a06/10, -a07/2)--(a06/5, 0)--(2a06/5, a07/2);
addto d1 doublepath (-3a06/10, -a07/2)--(a06/10, -2a07/5)-- %
	(a06/2, -a07/10)--(2a06/5, a07/2);
draw d1 shifted z07 shifted (a06/2, 0) withpen l1;
p5 = p4 scaled 1.3 shifted (19a06/40, 0) shifted z07;

% ------------------------------------------------------------------
% flechas
a08 = 2u;		a09 = ahlength;
p6 = z04 shifted (u, a08)--z05 shifted (-u, a08);
p7 = p6 shifted (0, -2a08);
drawgisarrow p6 cutafter p5;	
drawgisarrow reverse p7 cutbefore p5;

% ------------------------------------------------------------------
% etiquetas
d2 = thelabel.llft(btex \begin{tabular}{r@{ }l}--- & medio\\ %
	- - & acoplamiento\end{tabular} etex, (wi - 2u, he02 - 2u));
label.bot(btex backward scattering etex, 3/8[z04, z05] %
		shifted (0, -2a08));
fill bbox d2 withcolor white;		draw d2;
draw bbox d2;

% ------------------------------------------------------------------
% marco
pickup l2;
draw (0, 0)--(wi, 0)--(wi, he02)--(0, he02)--cycle;

endfig;
% ==================================================================



% ==================================================================
beginfig(4);
numeric a[];
pen l[];
path p[];
transform t[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;
l4 = pensquare scaled 0.5u;
pickup l1;
interim bboxmargin := u;

%-------------------------------------------------------------------
% defino una caja que envuelve en cierto sentido a una flecha
vardef arrowbox expr p =
	save q,e,i,qq,pp; path i[],q; pair e,qq[];
	numeric pp[];
	e = point length p of p;
	q = gobble(p shifted -e %
		cutafter makepath(pencircle scaled 2ahlength))
		cuttings;
	qq0 = point 0 of (q rotated .5ahangle);
	qq1 = point 0 of (q rotated -.5ahangle);
	(pp0, whatever) = q intersectiontimes (qq0--qq1);
	i0 = subpath (pp0, length q) of q;
	qq2 = point 0 of i0;
	i1 = i0 shifted -qq2 shifted qq0;
	i2 = i0 shifted -qq2 shifted qq1;
	qq3 = point length i1 of i1 scaled 11/4;
	qq4 = point length i2 of i2 scaled 11/4;
	i3 = p shifted qq3;
	i4 = p shifted qq4;
	i5 = point length i3 of i3--point length i4 of i4;
	i6 = point 0 of i4--point 0 of i3--cycle;
	% la solución final no es correcta pero da el pego
	(i3--point length i4 of i4--reverse i4--cycle)
enddef;

%-------------------------------------------------------------------
% resto del gráfico
z10 = (1.5v, v);

boxit.ata(btex $a(z, t)$ etex);
boxit.atb(btex $a(z, t)$ etex);
boxit.atc(btex $a(z^\prime, t)$ etex);
boxit.difa(btex $h_d(z, t)$ etex);
boxit.difb(btex $h_d(z, t)$ etex);
boxit.difc(btex $h_d(z^\prime, t)$ etex);
boxit.ema(btex $h_{te}(t)$ etex);
boxit.reb(btex $h_{tr}(t)$ etex);
boxit.rec(btex $h_{tr}(t)$ etex);
boxit.disp(btex $h_r(t)$ etex);
boxit.hma();
boxit.hmb();
boxit.hmc();
reb.c = z10;
z11 = (reb.ne - reb.nw);		z12 = (reb.ne - reb.se);
atb.c = reb.c + 3(z11);			difb.c = atb.c + 2(z11);
ema.c = reb.c + 6(z12);			ata.c = difb.c + 6(z12);
difa.c = atb.c + 6(z12);
disp.c = difb.c + 2(z11) + 3(z12);
difc.c = atb.c - 6(z12);		atc.c = difc.c + 2(z11);
rec.c = atc.c + 3(z11);
hma.sw = difa.c - 9/10(z11) - 9/10(z12);
hma.ne = ata.c + 9/10(z11) + 29/10(z12);
hmb.sw = atb.c - 9/10(z11) - 9/10(z12);
hmb.ne = difb.c + 9/10(z11) + 29/10(z12);
hmc.sw = difc.c - 9/10(z11) - 9/10(z12);
hmc.ne = atc.c + 9/10(z11) + 29/10(z12);
drawboxed(reb);				drawboxed(atb);
drawboxed(difb);			drawboxed(ema);
drawboxed(ata);				drawboxed(difa);
drawboxed(disp);			drawboxed(difc);
drawboxed(atc);				drawboxed(rec);
draw bpath hma dashed evenly scaled 6/5 shifted (1/4, 0);
draw bpath hmb dashed evenly scaled 6/5 shifted (-7/4, 0);
draw bpath hmc dashed evenly scaled 6/5 shifted (1/4, 0);
label.top(btex Atenuaci\'on etex, 1/2[ata.nw, ata.ne]);
label.top(btex Atenuaci\'on etex, 1/2[atb.nw, atb.ne]);
label.top(btex Atenuaci\'on etex, 1/2[atc.nw, atc.ne]);
label.top(btex Difracci\'on etex, 1/2[difa.nw, difa.ne]);
label.top(btex Difracci\'on etex, 1/2[difb.nw, difb.ne]);
label.top(btex Difracci\'on etex, 1/2[difc.nw, difc.ne]);
label.top(btex Emisi\'on etex, 1/2[ema.nw, ema.ne]);
label.top(btex Recepci\'on etex, 1/2[reb.nw, reb.ne]);
label.top(btex Recepci\'on etex, 1/2[rec.nw, rec.ne]);
label.top(btex Dispersi\'on etex, 1/2[disp.nw, disp.ne]);
label(btex $h_m(z, t)$ etex, 1/2[ata.c, difa.c] + 2(z12));
label(btex $h_m(z, t)$ etex, 1/2[difb.c, atb.c] + 2(z12));
label(btex $h_m(z^\prime, t)$ etex, 1/2[atc.c, difc.c] + 2(z12));
label.top(btex $p(z, t)$ etex, disp.nw - z11);
p10 = reb.c--atb.c;			p11 = ema.c--difa.c;
p12 = ema.c - z11--ema.c;		p13 = reb.c - z11--reb.c;
p14 = rec.c--rec.c + z11;
z21 = p10 intersectionpoint bpath hmb;
z22 = p10 intersectionpoint bpath reb;
z23 = p11 intersectionpoint bpath hma;
z24 = p11 intersectionpoint bpath ema;
z25 = p12 intersectionpoint bpath ema;
z26 = p13 intersectionpoint bpath reb;
z27 = p14 intersectionpoint bpath rec;
label.bot(btex $p_R(z, t)$ etex, 1/2[z21, z22]);
label.top(btex $v(t)$ etex, 1/2[z23, z24]);
a0 = u;
label.llft(btex $u(t)$ etex, z25 shifted (-a0, -a0));
label.llft(btex $y(t)$ etex, z26 shifted (-a0, -a0));
label.lrt(btex $y^\prime(t)$ etex, z27 shifted (a0, -a0));
p0 = bbox bpath ema;			p1 = bbox bpath reb;
p2 = bbox bpath rec;			p3 = bbox bpath difa;
p4 = bbox bpath difb;			p5 = bbox bpath ata;
p6 = bbox bpath atb;			p7 = bbox bpath disp;
p8 = bbox bpath difc;			p9 = bbox bpath atc;
p15 = ema.c--difa.c cutbefore p0 cutafter p3;
p16 = atb.c--reb.c cutbefore p6 cutafter p1;
p17 = ata.c--ata.c + z11--disp.c + z12/6 - z11--disp.c + z12/6 %
	cutbefore p5 cutafter p7;
p18 = disp.c - z12/6--disp.c - z11 - z12/6--difb.c + z11--difb.c %
	cutbefore p7 cutafter p4;
p19 = disp.c--disp.c + z11--disp.c + z11 - 4(z12)--difc.c - %
	2(z11) + 4(z12)--difc.c - 2(z11)--difc.c %
	cutbefore p7 cutafter p8;
p20 = atc.c--rec.c cutbefore p9 cutafter p2;
drawgisarrow ema.c - z11--ema.c cutafter p0;
drawgisarrow reb.c--reb.c - z11 cutbefore p1;
drawgisarrow rec.c--rec.c + z11 cutbefore p2;
drawgisarrow difa.c--ata.c cutbefore p3 cutafter p5;
drawgisarrow difb.c--atb.c cutbefore p4 cutafter p6;
drawgisarrow difc.c--atc.c cutbefore p8 cutafter p9;
pickup l4;
fill arrowbox p15 withcolor white;
fill arrowbox p16 withcolor white;
fill arrowbox p17 withcolor white;
fill arrowbox p18 withcolor white;
fill arrowbox p19 withcolor white;
fill arrowbox p20 withcolor white;
pickup l1;
drawgisarrow p15;			drawgisarrow p16;
drawgisarrow p17;			drawgisarrow p18;
drawgisarrow p19;			drawgisarrow p20;

endfig;
% ==================================================================



% ==================================================================
beginfig(5);
numeric a[], i, j, k;
picture d[];
pen l[];
path p[], q[][];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;
d1 = nullpicture;
d2 = nullpicture;
pickup l1;

% ------------------------------------------------------------------
% transductor
a00 = 1.5;	a01 = 17u;
draw (0, he02/2)--(7.5u, he02/2);
d0 = transductor(a00, (a01, he02/2));
draw d0;

% ------------------------------------------------------------------
% frente de ondas
a02 = a00 * v/8;
z00 = lrcorner d0 shifted (0, a02);
z01 = urcorner d0 shifted (0, -a02);
z02 = whatever[z00, z00 + (2v, -v)] = whatever[z01, z01 + (2v, v)];
p1 = z02 + (he02, he02/2)--z02--z02 + (he02, -he02/2)--(wi, 0)-- %
	(wi, he02)--cycle;
for i = 4.5v, 9v, 13.5v, 18v:
	q0.[i] = fullcircle scaled i shifted z02;
	addto d1 doublepath q0.[i];
endfor
clip d1 to p1;
draw d1 withpen l1; % withpen l3 withcolor 0.7white;

% ------------------------------------------------------------------
% matriz de reflectores
% separación entre reflectores de 1/4he02 longitud de la barra
% 1/6he02, luego (1/4 - 1/6)he02 = 2he02/24, un espacio de he02/24 a
% cada lado de la barra; (1/6 + 1/24)he02 = 5/24he02
a03 = he02/24;		a04 = he02/12;
a05 = 2a03 + 2a04;	a06 = wi/4;	a07 = 2;
p2 = fullcircle scaled 2u;
p3 = (0, -a04)--(0, a04);
p4 = (-a04, 0)--(a04, 0);
for i = 0 upto he02/a05:
	for j = 0 upto 2:
		q[i][j] = p3 shifted (j*a05, i*a05);
		addto d2 doublepath q[i][j];
		if (i*a05 + a05/2) < he02:
			q[i][j + a07 + 1] = %
			  p4 shifted (j*a05 + a05/2, i*a05 + a05/2);
			addto d2 doublepath q[i][j + a07 + 1];
			q[i][j + 2a07 + 2] = %
			  p2 shifted (j*a05, i*a05 + a05/2);
			addto d2 contour q[i][j + 2a07 + 2] %
			  withcolor white;
			addto d2 doublepath q[i][j + 2a07 + 2];
 		fi
 	endfor
endfor
a08 = -1.5u;		a09 = a05 * (3/4 + a07);
p5 = (a08, 0)--(a09, 0)--(a09, he02)--(a08, he02)--cycle;
clip d2 to p5;
draw d2 shifted (wi - a09, 0) withpen l1;

% ------------------------------------------------------------------
% etiquetas y marco
% etiqueta del frente de ondas
% radio de la primera circunferencia 2.25, radio de la segunda 4.5
% si sumo 1/8 al primero y resto 1/8 (la misma cantidad) al segundo
% obtengo 2.375 y 4.375
drawdblgisarrow z02 shifted (2.375v, 0)--z02 shifted (4.375v, 0);
d3 = thelabel(btex $\lambda$ etex, z02 shifted (3.375v, 0));
fill bbox d3 withcolor white;
draw d3;
% etiqueta de la matriz de reflectores
d4 = thelabel.llft(btex Matriz de reflectores etex, %
	(wi - 3u, he02 - 2.5u));
fill bbox d4 withcolor white;
draw d4;
% marco
pickup l2;
draw (0, 0)--(wi, 0)--(wi, he02)--(0, he02)--cycle;
pickup l1;

endfig;
% ==================================================================



% ==================================================================
beginfig(7);
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
d0 = nullpicture;
d1 = nullpicture;
pickup l1;

% ------------------------------------------------------------------
% espectro
a00 = 4wi/5;		a01 = 4he01/5;		a02 = 2a00/5;
a03 = infinity;
p0 = (-a00/2, 0){dir 315}..tension a03 and 1.. %
	{dir 15}(-a02/2, a01)--(a02/2, a01){dir 345}.. %
	tension 1 and a03..{dir 45}(a00/2, 0);
draw p0 shifted (wi/2, 0);

% ------------------------------------------------------------------
% banco de filtros
a04 = 7a01/8;
p1 = (-wi/2, a04)--(0, a04);	p2 = (0, a04)--(wi/2, a04);
z00 = p0 intersectionpoint p1;
z01 = p0 intersectionpoint p2;
z02 = z00 shifted (wi/2, 0);	z03 = z01 shifted (wi/2, 0);
% defino Af, b, y la amplitud del filtro
a05 = a00/3;	a06 = a05/3;	a07 = 9a01/20;
% a05 = (x01 - x00)/2;	a06 = a05/3;	a07 = 9a01/20;
a08 = 3a05/5;
p3 = (-a05/2, 0){right}..tension 5..{right}(-a06/2, a07)-- %
	(a06/2, a07){right}..tension 5..{right}(a05/2, 0);
pickup l6;
for i = x02, x02 + a08, x03:
	draw p3 shifted (i, 0);
endfor
pickup l1;

% ------------------------------------------------------------------
% rectas auxiliares
a09 = 4.5u;	a10 = u;
z04 = (x02, a01 + a09);		z05 = (x03, a01 + a09);
z06 = 1/2[z04, z05];
draw z02 shifted (0, a10)--z04;	draw z03 shifted (0, a10)--z05;
drawdblgisarrow z04 shifted (a10, -a10)--z05 shifted -(a10, a10);
d2 = thelabel(btex $B$ etex, z06 shifted (0, -a10));
fill bbox d2 withcolor white;	draw d2;
a11 = a07 + a04 - a01;
% a11 = 7a07/8;
p4 = p1 shifted (0, a11 - a04);	p5 = p2 shifted (0, a11 - a04);
z07 = p3 intersectionpoint p4;	z08 = p3 intersectionpoint p5;
z09 = (x02 + x07 + a08, y07 + 2a10);
z10 = (x02 + x08 + a08, y08 + 2a10);
z11 = (x02 + x07 + a08, a07 + a09);
z12 = (x02 + x08 + a08, a07 + a09);
z13 = 1/2[z11, z12];
draw z09--z11;			draw z10--z12;
drawdblgisarrow z11 shifted (a10, -a10)--z12 shifted -(a10, a10);
d3 = thelabel(btex $b$ etex, z13 shifted (0, -a10));
fill bbox d3 withcolor white;	draw d3;
a12 = a08/5;
z14 = 1/2[(x02 + a08, a07/2), (x03, a07/2)];
pickup l3;
draw z14 shifted (-a12, 0)--z14 shifted (a12, 0) dashed %
	withdots scaled 1.5;
pickup l1;

% ------------------------------------------------------------------
% marcas de grafo
a13 = 2.5u;		a14 = 3u;
draw (x02, 0)--(x02, a13);	draw (x03, 0)--(x03, a13);
draw (x02 + a08, 0)--(x02 + a08, a13);
label(btex $f_1$ etex, (x02, -a14));
label(btex $f_2 = f_1 + \Delta f$ etex, (x02 + a08, -a14));
label(btex $f_n = f_1 + k\Delta f$ etex, (x03, -a14));

% ------------------------------------------------------------------
% marco
pickup l5;
draw (0, -u/10)--(wi, -u/10);

endfig;
% ==================================================================



% ==================================================================
beginfig(8);
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

% ------------------------------------------------------------------
% temporizador
% ancho y alto
% a00 = wi/5 = 24u; a02 = 45u; a02/a03 = 15/2; a02/a04 = 15/16;
a00 = wi/5;		a01 = 3u/2;		a02 = 2a00 + 2a01;
% a03 es el patrón de la cuadrícula
a03 = 11u/2;		a04 = 8a03;		a05 = a01 - a02/2;
p0 = -(a02, a04)/2--(a02, -a04)/2--(a02, a04)/2--(-a02, a04)/2-- %
	cycle;
p1 = (a03/2, 0)--(a03/2, a03)--halfcircle scaled a03 shifted (0, a03)-- %
	(-a03/2, a03)--(-a03/2, 0);
addto d1 also thelabel.rt(btex 1 \textsc{dis}(1) etex, (a05, a04/2 - a03));
addto d1 also thelabel.rt(btex 2 \textsc{thr}(1) etex, (a05, a04/2 - 2a03));
addto d1 also thelabel.rt(btex 3 \textsc{con}(1) etex, (a05, a04/2 - 3a03));
addto d1 also thelabel.rt(btex 4 \textsc{res}(1) etex, (a05, a04/2 - 4a03));
addto d1 also thelabel.rt(btex 5 \textsc{out}(1) etex, (a05, a04/2 - 5a03));
addto d1 also thelabel.rt(btex 6 \textsc{tri}(1) etex, (a05, a04/2 - 6a03));
addto d1 also thelabel.rt(btex 7 \textsc{gnd} etex, (a05, a04/2 - 7a03));
addto d1 also thelabel.lft(btex \textsc{Vcc} 14 etex, (-a05, a04/2 - a03));
addto d1 also thelabel.lft(btex \textsc{dis}(2) 13 etex, (-a05, a04/2 - 2a03));
addto d1 also thelabel.lft(btex \textsc{thr}(2) 12 etex, (-a05, a04/2 - 3a03));
addto d1 also thelabel.lft(btex \textsc{con}(2) 11 etex, (-a05, a04/2 - 4a03));
addto d1 also thelabel.lft(btex \textsc{res}(2) 10 etex, (-a05, a04/2 - 5a03));
addto d1 also thelabel.lft(btex \textsc{out}(2) 9 etex, (-a05, a04/2 - 6a03));
addto d1 also thelabel.lft(btex \textsc{tri}(2) 8 etex, (-a05, a04/2 - 7a03));
d0 = thelabel(btex \textsc{ne556} etex, center p0);
addto d1 also d0 rotated 90;
addto d1 doublepath p0 withpen l2;
addto d1 doublepath p1 yscaled -1 shifted (0, a04/2) withpen l1;
% centro del temporizador
z00 = (a02/2 + 6a03, 6a03);
draw d1 shifted z00;

% ------------------------------------------------------------------
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

% ------------------------------------------------------------------
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

% ------------------------------------------------------------------
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

% ------------------------------------------------------------------
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

% ------------------------------------------------------------------
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
beginfig(9);
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
d0 = nullpicture;
d1 = nullpicture;
pickup l1;

% ------------------------------------------------------------------
% ejes coordenados
a00 = 3he02/4;			a01 = u/10;
pickup l5;
drawgisarrow (0, -a01)--(wi, -a01);
drawgisarrow (wi/2, 0)--(wi/2, a00);
label.lrt(btex $u(t)$ etex, (wi/2 + u, a00));

% ------------------------------------------------------------------
% marcas de grafo
a02 = 2.5u;		a03 = 3u;
for i = 1 upto 5:
	if not(i = 3): draw (i*wi/6, 0)--(i*wi/6, a02); fi
endfor
label(btex $-T$ etex, (wi/6, -a03));
label(btex $0$ etex, (wi/2, -a03));
label(btex $T$ etex, (5wi/6, -a03));

% ------------------------------------------------------------------
% tren de pulsos
a04 = wi/13;		a05 = he02/2;
p0 = (0, 0)--(0, a05)--(a04, a05)--(a04, 0);
p2 = for i = 0 upto 2:
	p0 shifted (wi/6 + i*wi/3, 0)--
	endfor (11wi/12, 0);
pickup l2;
draw (wi/12, 0)--(wi/6, 0)--p2;
label.ulft(btex $P$ etex, (wi/2 - u, a05));
label.rt(btex $T_H$ etex, (15wi/26, -a03));

% ------------------------------------------------------------------
% puntos suspensivos
draw (wi/24, a05/2)--(wi/8, a05/2) dashed withdots scaled 1.5;
draw (a04 + 41wi/48, a05/2)--(95wi/96, a05/2) dashed withdots scaled 1.5;

endfig;
% ==================================================================



% ==================================================================
beginfig(10);
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

% ------------------------------------------------------------------
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

% ------------------------------------------------------------------
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

% ------------------------------------------------------------------
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

% ------------------------------------------------------------------
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



end
