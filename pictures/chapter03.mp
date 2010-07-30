verbatimtex
%&latex
\documentclass{minimal}
\begin{document}
\fontsize{12pt}{14.4pt}\selectfont
etex

filenametemplate "%j-%2c.mps";

input boxes

u = 1mm;
v = 10mm;
wi = 12v;
he01 = 9v;	he02 = 6.75v;



% ==================================================================
def transductor(expr blanco, escala, desplazamiento) =
numeric c[];
pen n[];
picture f[];
path r[];
n0 = pencircle scaled 0.15u;
n1 = pencircle scaled 0.25u;
n2 = pencircle scaled 0.35u;
n4 = pencircle scaled 0.5u;
f0 = blanco;
f1 = blanco;
f2 = blanco;
f3 = blanco;
f4 = blanco;
f5 = blanco;


% ------------------------------------------------------------------
% agarre
% aimensiones de las barras
c00 = v;		c01 = v;
z00 = 1/2(-c00, -c01);	z01 = 1/2(c00, -c01);	
z02 = 1/2(c00, c01);	z03 = 1/2(-c00, c01);	
r0 = z00--z02;		r1 = z01--z03;
% dimensiones del agarre y separación entre barras
c02 = 3u;	c03 = v;	c04 = u;
c05 = 0;	% Espacio adicional para el corte
z04 = 1/2(-c02 - c05, -c03);	z05 = 1/2(c02 + c05, -c03);
z06 = 1/2(c02 + c05, c03);	z07 = 1/2(-c02 - c05, c03);
r3 = z04--z05--z06--z07--cycle;
for i = -1 upto c03/c04 + 1:
	addto f0 doublepath r0 shifted (0, i*c04 - c03/2);
	addto f0 doublepath r1 shifted (0, i*c04 - c03/2);
endfor
clip f0 to r3;

% ------------------------------------------------------------------
% contorno del transistor
% dimensiones del transistor
c06 = v;				c07 = 4c02;
z08 = (-c07/2, -7c06/20);		z14 = (x08, -y08);
z09 = (-c07/3, -9c06/20);		z15 = (x09, -y09);
z10 = (c07/6, -c06/2);			z16 = (x10, -y10);
z11 = (x10 + c02, -c06/2);		z17 = (x11, -y11);
z12 = (x11 + c07/12, -9c06/20);		z18 = (x12, -y12);
z13 = (x11 + 2c07/12, -15c06/40);	z19 = (x13, -y13);
r4 = z08{down}..z09..{dir 340}z10--z11--z12{up}.. %
		{up}z18--z17--z16{dir 200}..z15..z14{down}--cycle;
r5 = z12..z13--z19..z18--cycle;

% ------------------------------------------------------------------
% tornillo
% dimensiones e inclinación de las barras
c08 = 8u;	c09 = 75;
r6 = (-c08/2, 0)--(c08/2, 0);	r6 := r6 rotated c09;
% dimensiones del tornillo (alto, ancho, separación entre barras y offset)
c10 = c08/3;	c11 = 2.5u;	c12 = 1.25u;	c13 = c11/5;
for i = 0 upto c11/c12:
	addto f1 doublepath r6 shifted (i*c12 - c11/2, 0);
endfor
z20 = 1/2(-3c13 - c11, c13/5 - c10);	z21 = (-x20, y20);
z22 = -z20;				z23 = (x20, -y20);
r7 = z20.. %
	for i=0 upto c11/c12: %
		{dir 295}(i*c12 + x20 + 3c13/4, -c10/2){dir 25}.. % 
	endfor %
	z21--z22{dir 205}.. %
	for i=c11/c12 - 1 downto -1: %
		{dir 75}(i*c12 + 3c13/4, c10/2){dir 205}.. %
	endfor %
	z23--cycle;
clip f1 to r7;

% ------------------------------------------------------------------
% transductor completo
f0 := f0 shifted (x10 + (x11 - x10)/2, 0);
f1 := f1 shifted (-c07/2 - c11/20, 0);
r7 := r7 shifted (-c07/2 - c11/20, 0);
r5 := r5 shifted (-u/2, 0);
addto f5 contour r7 withcolor white;
addto f2 also f1;
addto f2 doublepath r7;
addto f3 contour r5 withcolor 0.6white;
addto f3 contour r4 withcolor white;
addto f4 doublepath r4;
draw f5 scaled escala shifted desplazamiento withpen n0;
draw f2 scaled escala shifted desplazamiento withpen n1;
draw f3 scaled escala shifted desplazamiento withpen n0;
draw f0 scaled escala shifted desplazamiento withpen n0;
draw f4 scaled escala shifted desplazamiento withpen n1
enddef;
% ==================================================================



% ==================================================================
beginfig(1);
numeric a[], i, j, k;
picture d[];
pen l[];
path p[], q[][];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l4 = pencircle scaled 0.5u;
d0 = currentpicture;
d1 = currentpicture;
pickup l1;

% ------------------------------------------------------------------
% transductor
a00 = 1.5;	a01 = 17u;
draw (0, he02/2)--(a01, he02/2);
transductor(d0, a00, (a01, he02/2));
% ------------------------------------------------------------------
% frente de ondas
z25 = whatever[z13, z13 + (2v, -v)] = whatever[z19, z19 + (2v, v)];
z26 = z25 shifted (a01, he02/2) shifted (-u/2, 0);
p1 = z26 + (he02, he02/2)--z26--z26 + (he02, -he02/2)--(wi, 0) %
		--(wi, he02)--cycle;
for i = 4.5v, 9v, 13.5v, 18v:
	q0.[i] = fullcircle scaled i shifted z26;
	addto d1 doublepath q0.[i];
endfor
clip d1 to p1;
% ------------------------------------------------------------------
% curvas auxiliares
a02 = he02 - u;		a03 = 3/4*4.5v;
a04 = he02/8;		a05 = he02 - a04;
a06 = angle(2v, v);	a07 = 5/4*9v;
z27 = z13 shifted (-u/2, 0) scaled 1.5 shifted (a01, he02/2);
z28 = z19 shifted (-u/2, 0) scaled 1.5 shifted (a01, he02/2);
z29 = z26 + (a02, a02/2);	z30 = z26 + (a02, -a02/2);
z31 = (a02, a02/2) rotated -a06 shifted z27;
z32 = (a02, -a02/2) rotated a06 shifted z28;
% rectas diagonales
p2 = z26--z29;	p3 = z26--z30;
% recta que corta las diagonales
p4 = z27--z28;
% rectas horizontales
% p5 = z27--z31;	p6 = z28--z32;
p5 = z27--(wi - u, y27);	p6 = z28--(wi - u, y28);
% auxiliar que marca el inicio del campo
p7 = z28--z28 shifted (0, a05 - a04/2 - y28);
% frontera entre campo cercano y campo lejano
p8 = (x26 + a03, a05 + a04/2)--(x26 + a03, a04/2);
draw p2 cutbefore p4 dashed evenly scaled 2 shifted (u, 0);
draw p3 cutbefore p4 dashed evenly scaled 2 shifted (u, 0);
draw p5 dashed evenly scaled 2 shifted (u, 0);
draw p6 dashed evenly scaled 2 shifted (u, 0);
draw p7 dashed evenly scaled 2 shifted (u, 0);
draw p8 dashed evenly scaled 2 shifted (u, 0);
% ------------------------------------------------------------------
% etiquetas y marco
p9 = (x28 + u, a05 - a04/2)--(x26 + a03 - u, a05 - a04/2);
p10 = fullcircle scaled a07 shifted z26 %
		cutbefore p6 shifted (0, u/2) %
		cutafter p2 shifted (u, 0);
z33 = point 0.5 length p9 of p9;
z34 = point 0.5 length p10 of p10;
z35 = point 0 of p10;
p11 = z35 shifted (0, -u)--z35 shifted (0, y27 - y28);
z36 = point 0.5 length p11 of p11;
d3 = thelabel(btex $L_0$ etex, z33);
d4 = thelabel(btex $\gamma_0$ etex, z34);
d5 = thelabel.lft(btex Campo pr\'oximo etex, %
	       (x26 + a03 - 2u, a04));
d6 = thelabel(btex Campo lejano etex, %
	       1/2[(x26 + a03 + 2u, a04), (wi, a04)]);
label.rt(btex $D$ etex, z36);
drawdblarrow p9;	drawdblarrow p10;	drawdblarrow p11;
fill bbox d3 withcolor white;	draw d3;
fill bbox d4 withcolor white;	draw d4;
fill bbox d5 withcolor white;	draw d5;
label(btex Transductor etex, (a01, he02/3));
draw d1 withpen l2 withcolor 0.7white;
fill bbox d6 withcolor white;	draw d6;
pickup l2;
draw (0, 0)--(wi, 0)--(wi, he02)--(0, he02)--cycle;
endfig;
% ==================================================================



% ==================================================================
beginfig(4);
pen l[];
path p[];
transform t[];
l0 = pencircle scaled 0.15u;
l1 = pencircle scaled 0.25u;
l2 = pencircle scaled 0.35u;
l3 = pencircle scaled 0.5u;
pickup l1;

z10 = (1.5v, v);

boxit.ata(btex $a(z, t)$ etex);		boxit.atb(btex $a(z, t)$ etex);
boxit.atc(btex $a(z^\prime, t)$ etex);	boxit.difa(btex $h_d(z, t)$ etex);
boxit.difb(btex $h_d(z, t)$ etex);	boxit.difc(btex $h_d(z^\prime, t)$ etex);
boxit.ema(btex $h_{te}(t)$ etex);	boxit.reb(btex $h_{tr}(t)$ etex);
boxit.rec(btex $h_{tr}(t)$ etex);	boxit.disp(btex $h_r(t)$ etex);
boxit.hma();				boxit.hmb();
boxit.hmc();
reb.c = z10;
z11 = (reb.ne - reb.nw);		z12 = (reb.ne - reb.se);
atb.c = reb.c + 3(z11);			difb.c = atb.c + 2(z11);
ema.c = reb.c + 6(z12);			ata.c = difb.c + 6(z12);
difa.c = atb.c + 6(z12);		disp.c = difb.c + 2(z11) + 3(z12);
% difc.c = disp.c + 2(z11);		atc.c = difc.c + 2(z11);
% difc.c = atb.c + 2(z11) - 6(z12);	atc.c = difc.c + 2(z11);
difc.c = atb.c - 6(z12);		atc.c = difc.c + 2(z11);
rec.c = atc.c + 3(z11);
hma.sw = difa.c - 9/10(z11) - 9/10(z12);hma.ne = ata.c + 9/10(z11) + 29/10(z12);
hmb.sw = atb.c - 9/10(z11) - 9/10(z12);	hmb.ne = difb.c + 9/10(z11) + 29/10(z12);
hmc.sw = difc.c - 9/10(z11) - 9/10(z12);hmc.ne = atc.c + 9/10(z11) + 29/10(z12);
drawboxed(reb);				drawboxed(atb);
drawboxed(difb);			drawboxed(ema);
drawboxed(ata);				drawboxed(difa);
drawboxed(disp);			drawboxed(difc);
drawboxed(atc);				drawboxed(rec);
draw bpath hma dashed evenly;
draw bpath hmb dashed evenly;
draw bpath hmc dashed evenly;
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
z21 = p10 intersectionpoint bpath hmb;	z22 = p10 intersectionpoint bpath reb;
z23 = p11 intersectionpoint bpath hma;	z24 = p11 intersectionpoint bpath ema;
z25 = p12 intersectionpoint bpath ema;	z26 = p13 intersectionpoint bpath reb;
z27 = p14 intersectionpoint bpath rec;
label.bot(btex $p_R(z, t)$ etex, 1/2[z21, z22]);
label.top(btex $v(t)$ etex, 1/2[z23, z24]);
label.llft(btex $u(t)$ etex, z25);	label.llft(btex $y(t)$ etex, z26);
label.lrt(btex $y^\prime(t)$ etex, z27);
drawarrow ema.c - z11--ema.c cutafter bpath ema;
drawarrow reb.c--reb.c - z11 cutbefore bpath reb;
drawarrow rec.c--rec.c + z11 cutbefore bpath rec;
drawarrow ema.c--difa.c cutbefore bpath ema cutafter bpath difa;
drawarrow difa.c--ata.c cutbefore bpath difa cutafter bpath ata;
drawarrow difb.c--atb.c cutbefore bpath difb cutafter bpath atb;
drawarrow atb.c--reb.c cutbefore bpath atb cutafter bpath reb;
drawarrow ata.c--ata.c + z11--disp.c - z11--disp.c cutbefore bpath ata cutafter bpath disp;
drawarrow disp.c - z11--difb.c + z11--difb.c cutbefore bpath disp cutafter bpath difb;
% drawarrow disp.c--difc.c cutbefore bpath disp cutafter bpath difc;
% ------------------------------------------------------------------
% draw disp.c--disp.c + z11 cutbefore bpath disp;
% draw disp.c + z11--disp.c + 2(z11) dashed withdots;
% draw difc.c - 2(z11)--difc.c - z11 dashed withdots;
% draw difc.c - z11--difc.c cutafter bpath difc;
% ------------------------------------------------------------------
draw disp.c--disp.c + z11--disp.c + z11 - 4(z12)--difc.c - 2(z11) + 4(z12)--difc.c - 2(z11)--difc.c cutbefore bpath disp cutafter bpath difc;
% ------------------------------------------------------------------
drawarrow difc.c--atc.c cutbefore bpath difc cutafter bpath atc;
drawarrow atc.c--rec.c cutbefore bpath atc cutafter bpath rec;
% ------------------------------------------------------------------

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
l4 = pencircle scaled 0.5u;
d0 = currentpicture;
d1 = currentpicture;
d2 = currentpicture;
pickup l1;

% ------------------------------------------------------------------
% transductor
a00 = 1.5;	a01 = 17u;
draw (0, he02/2)--(7.5u, he02/2);
transductor(d0, a00, (a01, he02/2));

% ------------------------------------------------------------------
% frente de ondas
z25 = whatever[z13, z13 + (2v, -v)] = whatever[z19, z19 + (2v, v)];
z26 = z25 shifted (a01, he02/2) shifted (-u/2, 0);
% p1 = z26 + (he02, he02/2)--z26--z26 + (he02, -he02/2){right}.. %
% 		{left}cycle;
p1 = z26 + (he02, he02/2)--z26--z26 + (he02, -he02/2)--(wi, 0) %
		--(wi, he02)--cycle;
for i = 4.5v, 9v, 13.5v, 18v:
	q0.[i] = fullcircle scaled i shifted z26;
	addto d1 doublepath q0.[i];
endfor
clip d1 to p1;
draw d1 withpen l2 withcolor 0.7white;

% ------------------------------------------------------------------
% matriz de reflectores
% separación entre reflectores de 1/4he02 longitud de la barra
% 1/6he02, luego (1/4 - 1/6)he02 = 2he02/24, un espacio de he02/24 a
% cada lado de la barra; (1/6 + 1/24)he02 = 5/24he02
a02 = he02/24;		a03 = he02/12;
a04 = 2a02 + 2a03;	a05 = wi/4;	a06 = 2;
p2 = fullcircle scaled 2u;
p3 = (0, -a03)--(0, a03);
p4 = (-a03, 0)--(a03, 0);
for i = 0 upto he02/a04:
	for j = 0 upto 2:
		q[i][j] = p3 shifted (j*a04, i*a04);
		addto d2 doublepath q[i][j];
		if (i*a04 + a04/2) < he02:
			q[i][j + a06 + 1] = %
			  p4 shifted (j*a04 + a04/2, i*a04 + a04/2);
			addto d2 doublepath q[i][j + a06 + 1];
			q[i][j + 2a06 + 2] = %
			  p2 shifted (j*a04, i*a04 + a04/2);
			addto d2 contour q[i][j + 2a06 + 2] %
			  withcolor white;
			addto d2 doublepath q[i][j + 2a06 + 2];
 		fi
 	endfor
endfor
a07 = -1.5u;		a08 = a04 * (3/4 + a06);
p5 = (a07, 0)--(a08, 0)--(a08, he02)--(a07, he02)--cycle;
clip d2 to p5;
draw d2 shifted (wi - a08, 0) withpen l1;

% ------------------------------------------------------------------
% etiquetas y marco
% etiqueta del frente de ondas
% radio de la primera circunferencia 2.25, radio de la segunda 4.5
% si sumo 1/8 al primero y resto 1/8 (la misma cantidad) al segundo
% obtengo 2.375 y 4.375
drawdblarrow z26 shifted (2.375v, 0)--z26 shifted (4.375v, 0);
d3 = thelabel(btex $\lambda$ etex, z26 shifted (3.375v, 0));
fill bbox d3 withcolor white;
draw d3;
% etiqueta de la matriz de reflectores
d04 = thelabel.llft(btex Matriz de reflectores etex, (wi - 3u, he02 - 2.5u));
fill bbox d04 withcolor white;
draw d04;
% marco
pickup l2;
draw (0, 0)--(wi, 0)--(wi, he02)--(0, he02)--cycle;
pickup l1;

endfig;
% ==================================================================



% ==================================================================
% beginfig(51);
% picture d[];
% path p[];
% pen b[];
% numeric a[];
% b00 = pencircle scaled 0.25u;
% b01 = pencircle scaled 0.35u;
% b02 = pencircle scaled 0.5u;
% pickup b00;
% 
% z00 = (0, 0);	z01 = (2v, 0);
% z02 = v*(2, 2);	z03 = (0, 2v);
% draw z00--z01--z02--z03--cycle;
% draw z00--z02;	draw z01--z03;
% draw 1/2[z01,z00]--1/2[z03,z02];
% draw 1/2[z03,z00]--1/2[z02,z01];
% draw fullcircle scaled 2v shifted (v, v) withcolor blue;
% z04 = (v, 0) rotated 225;
% draw z00--z04--z04 shifted (0, 2v)--z03--cycle;
% p00 = z04--z03;	p01 = z04 shifted (0, 2v)--z00;
% draw p00;	draw p01;
% draw 1/2[z03,z00]--1/2[z03,z00] shifted z04;
% draw 1/2[z04,z00]--1/2[z04,z00] shifted (z03 - z00);
% z05 = (v, 0) rotated 135;
% p02 = z05 shifted (-x05, v)--z05 shifted (-x05, v) shifted z04;
% p03 = z04 shifted (-x04, v)--z04 shifted (-x04, v) shifted z04;
% draw z05 shifted (v, v)--p02 withcolor red;
% draw z04 shifted (v, v)--p03 withcolor red;
% z06 = p00 intersectiontimes p02;
% z07 = p01 intersectiontimes p03;
% z08 = p00 intersectiontimes p03;
% z09 = p01 intersectiontimes p02;
% z10 = point x06 of p00;	z11 = point x08 of p00;
% z12 = point x07 of p01;	z13 = point x09 of p01;
% p04 = z10--z11;	p05 = z12--z13;
% a00 = abs(z11 - z10);	a01 = abs(z13 - z12);
% z14 = z03 - z04;	a02 = angle z14;
% p06 = fullcircle xscaled a00 yscaled a01 rotated a02;
% draw p06 shifted 1/2[z04,z03] withcolor blue;
% d00 = currentpicture;
% draw d00 reflectedabout(v*(-2, 2.15), v*(2.15, 2.15));
% 
% endfig;
% ==================================================================



% ==================================================================
% beginfig(52);
% picture d[];
% path p[];
% pen b[];
% numeric a[];
% b00 = pencircle scaled 0.25u;
% b01 = pencircle scaled 0.35u;
% b02 = pencircle scaled 0.5u;
% pickup b00;
% 
% z00 = (0, 0);	z01 = (2v, 0);
% z02 = v*(2, 2);	z03 = (0, 2v);
% draw z00--z01--z02--z03--cycle;
% draw z00--z02;	draw z01--z03;
% draw 1/2[z01,z00]--1/2[z03,z02];
% draw 1/2[z03,z00]--1/2[z02,z01];
% draw fullcircle scaled 2v shifted (v, v) withcolor blue;
% z04 = (4/3v, 0) rotated 225;
% draw z00--z04--z04 shifted (0, 2v)--z03--cycle;
% p00 = z04--z03;	p01 = z04 shifted (0, 2v)--z00;
% draw p00;	draw p01;
% draw 1/2[z03,z00]--1/2[z03,z00] shifted z04;
% draw 1/2[z04,z00]--1/2[z04,z00] shifted (z03 - z00);
% z05 = (v, 0) rotated 135;
% z15 = (v, 0) rotated 225;
% p02 = z05 shifted (-x05, v)--z05 shifted (-x05, v) shifted z04;
% p03 = z15 shifted (-x15, v)--z15 shifted (-x15, v) shifted z04;
% draw z05 shifted (v, v)--p02 withcolor red;
% draw z15 shifted (v, v)--p03 withcolor red;
% z06 = p00 intersectiontimes p02;
% z07 = p01 intersectiontimes p03;
% z08 = p00 intersectiontimes p03;
% z09 = p01 intersectiontimes p02;
% z10 = point x06 of p00;	z11 = point x08 of p00;
% z12 = point x07 of p01;	z13 = point x09 of p01;
% p04 = z10--z11;	p05 = z12--z13;
% a00 = abs(z11 - z10);	a01 = abs(z13 - z12);
% z14 = z03 - z04;	a02 = angle z14;
% p06 = fullcircle xscaled a00 yscaled a01 rotated a02;
% draw p06 shifted 1/2[z04,z03] dashed evenly withcolor blue;
% draw 1/2[z00,z04]..z12..1/2[z00,z03]..z10..1/2[z03,z04 shifted (0, 2v)]..z13..1/2[z00,z03] shifted z04..z11..cycle dashed evenly withcolor red;
% draw 1/2[z00,z04]{dir 45}..z12..1/2[z00,z03]{up}..z10..1/2[z03,z04 shifted (0, 2v)]{dir 225}..z13..1/2[z00,z03] shifted z04{down}..z11..cycle withcolor green;
% d00 = currentpicture;
% draw d00 reflectedabout(v*(-2, 2.15), v*(2.15, 2.15));
% draw 1/2[z00,z04]{dir 45}..z12..1/2[z00,z03]{up}..z10..1/2[z03,z04 shifted (0, 2v)]{dir 225}..z13..1/2[z00,z03] shifted z04{down}..z11..cycle shifted -1/2[z00,z03 + z04] shifted (3.15v, 2.15v);
% 
% endfig;
% ==================================================================



% ==================================================================
% beginfig(5);
% path p[], q[][];
% picture d[];
% pen b[];
% numeric a[];
% b00 = pencircle scaled 0.25u;
% b01 = pencircle scaled 0.35u;
% b02 = pencircle scaled 0.5u;
% b03 = pencircle scaled 0.15u;
% pickup b00;
% 
% ------------------------------------------------------------------
% sensor
% d00 = currentpicture;
% d01 = currentpicture;
% d02 = currentpicture;
% d03 = currentpicture;
% p16 = (0, 0)--(wi, 0)--(wi, he02)--(0, he02)--cycle;
% pickup b01;
% draw p16;
% pickup b00;
% p00 = (0, 0)--(1.5v, 1.5v);
% p01 = (0, 1.5v)--(1.5v, 0);
% for i=0 upto 10:
% 	addto d00 doublepath p00 shifted (0, 1.5i*u) withpen b03;
% 	addto d00 doublepath p01 shifted (0, -1.5i*u) withpen b03;
% endfor
% for i=1 upto 2:
% 	addto d00 doublepath p00 shifted (i*1.5u, 0) withpen b03;
% 	addto d00 doublepath p01 shifted (i*1.5u, 0) withpen b03;
% endfor
% p02 = (0, 0)--(4.5u, 0)--(4.5u, 1.5v)--(0, 1.5v)--cycle;
% clip d00 to p02;
% p03 = (0, 2.25u){down}..(3u, 3u/4)..{dir 340}(12u, 0)--(16.5u, 0)--(18u, 3u/4){up}..{up}(18u, 14.25u)--(16.5u, 15u)--(12u, 15u){dir 200}..(3u, 14.25u)..(0, 12.75u){down}--cycle;
% p04 = (0, 3u/4)..(u, 15u/8)--(u, 13.125u)..(0, 14.25u)--cycle;
% p06 = (0, 0)--(v, 0) rotated 75;
% for i = 0 upto 5:
% 	addto d01 doublepath p06 shifted (0.25u, 0) shifted (2i*u, 0) withpen b00;
% endfor
% p07 = (0, 0.125u)..for i=0 upto 3: {dir 295}(0.25u + 2i*u, 0){dir 25}.. endfor (6.5u, 0.125u)--(6.5u, 3.625u){dir 205}.. for i=2 downto 0: {dir 75}(1.25u + 2i*u, 3.75u){dir 205}.. endfor (0, 3.625u)--cycle;
% clip d01 to p07;
% fill p04 shifted (26u, he02/2 - 7.5u) withcolor 0.6white;
% draw (0, he02/2)--(7.5u, he02/2);
% fill p07 shifted (5u, he02/2 - 1.875u) withcolor white;
% draw d01 shifted (5u, he02/2 - 1.875u);
% draw p07 shifted (5u, he02/2 - 1.875u);
% fill p03 shifted (8u, he02/2 - 7.5u) withcolor white;
% draw p03 shifted (8u, he02/2 - 7.5u);
% draw d00 shifted (20u, he02/2 - 7.5u);
% 
% ------------------------------------------------------------------
% frentes de ondas
% z00 = whatever[(u, 13.125u),(u + 2v, 13.125u + v)] = whatever[(u, 15u/8),(u + 2v, 15u/8 - v)];
% p08 = z00 + (10v, 5v)--z00--z00 + (10v, -5v){right}..{left}cycle;
% p09 = p08 shifted (0, -y00) shifted (26u, he02/2);
% for i = 1 upto 3:
% 	q00.[i] = fullcircle scaled v scaled 4.5i shifted (26.5u + x00, he02/2);
% 	addto d02 doublepath q00.[i] withpen b00;
% endfor
% clip d02 to p09;
% draw d02 withcolor blue;
% z01 = (26.5u + x00, he02/2) + (2.375v, 0);
% drawdblarrow z01--z01 shifted (2v, 0);
% d05 = thelabel(btex $\lambda$ etex, 1/2[z01,z01 + (2v, 0)]);
% fill bbox d05 withcolor white;	draw d05;
% 
% ------------------------------------------------------------------
% matriz de reflectores
% p13 = fullcircle scaled 2u;
% p14 = (0, he02/24)--(0, 5he02/24);
% p15 = (he02/24, 0)--(5he02/24, 0);
% a00 = 6;	a01 = 5;
% for i = 1 upto a00:
% 	for j = 0 upto a01:
% 		q[i][j] = p13 shifted (j*he02/4, (i - 1)*he02/4);
%  		q[i][j + a01 + 1] = p14 shifted (j*he02/4, (i - 1)*he02/4);
% 		q[i][j + 2a01 + 2] = p15 shifted (j*he02/4, (i - 1)*he02/4);
% 		addto d03 doublepath q[i][j] withpen b00;
% 		if i < a00:
% 	 		addto d03 doublepath q[i][j + a01 + 1] withpen b00;
% 		fi
% 		if j < a01:
% 			addto d03 doublepath q[i][j + 2a01 + 2] withpen b00;
% 		fi
% 	endfor
% endfor
% p17 = p16 shifted (11he02/16 - wi, he02/8);
% clip d03 to p17;
% draw d03 shifted (wi - 11he02/16, -he02/8);
% d04 = thelabel.llft(btex Matriz de reflectores etex, (wi - 3u, he02 - 2.5u));
% fill bbox d04 withcolor white;	draw d04;
% clip currentpicture to (-u, -u)--(wi + u, -u)--(wi + u, he02 + u)--(-u, he02 + u)--cycle;
% endfig;
% ==================================================================



end
