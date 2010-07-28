verbatimtex
%&latex
\documentclass{minimal}
\begin{document}
\fontsize{12pt}{14.4pt}\selectfont
etex

filenametemplate "%j-%2c.mps";

u = 1mm;
v = 10mm;
wi = 12v;
he01 = 9v;	he02 = 6.75v;



% ==================================================================
beginfig(1);

path p[];
transform t[];
picture d[];
pen b[];
bboxmargin := u;
b00 = pencircle scaled 0.25u;
b01 = pencircle scaled 0.5;
b02 = pencircle scaled 0.5u;
pickup b00;

z00 = (0, 0);	z01 = v*(12, 0);
z02 = v*(12, 6.75);z03 = v*(0, 6.75);

p00 = z00--z01--z02--z03--cycle;
% draw p00 withcolor blue;

% ------------------------------------------------------------------
% líneas centrales
z04 = (7.5u, 0) rotated 160;
z05 = (7.5u, 0) rotated 20;
p02 = z04--z00--(5.5v, 0)--z05 shifted (5.5v, 0);
for i=7.5u,5.25v: draw p02 shifted (1.25v, i); endfor
p03 = z04--z00--(6.75v, 0);
draw p03 shifted (1.25v, 3.375v);
% ------------------------------------------------------------------

% ------------------------------------------------------------------
% detalles
p10 = (-2.5u, 0)--(2.5u, 0)--(0, -4u)--cycle;
p11 = fullcircle scaled 1.5u;
z10 = (0, 6.6v - 5.25v - 2y04);
draw (4v, 3.375v)--(4v, 3.375v) shifted -z10;
fill p10 shifted (4v, 3.5v) shifted -z10 withcolor white;
draw p10 shifted (4v, 3.5v) shifted -z10;
fill p11 shifted (4v, 3.375v);
fill p11 shifted (8.5v, 5.25v);
for i = 3.375v,5.25v:
	for j = 0,8v:
		fill p11 shifted (j, i);
	endfor
endfor
p12 = (5u + x05/2, 1.25v)--(5u + x05/2, 2.875v);
for i = z00,(6.25v, 0): draw p12 shifted i withpen b02 dashed withdots scaled 2; endfor
label(btex Multiplexador etex, (5u + x05/2, 0));
label(btex Multiplexador etex, (6.75v + x05/2, 0));
% ------------------------------------------------------------------

% ------------------------------------------------------------------
% líneas externas
draw (5u, 7.5u)--(0, 7.5u)--(0, 6.6v)--(9v, 6.6v);
draw (7.5v, 7.5u)--(8v, 7.5u)--(8v, 5.25v);
for i=5.25v,3.375v: draw (0, i)--(5u, i); endfor
draw (7.5v, 5.25v)--(9v, 5.25v);
% ------------------------------------------------------------------

% ------------------------------------------------------------------
% switches previos al AI
p06 = z00--z10--z10 shifted (0.5v, 0);
p07 = z00--z05--z05 shifted (0.5v, 0);
p08 = z00--(x05 + 0.5v, 0)--(x05 + 0.5v, 2y05 + 0.5v)--(0, 2y05 + 0.5v)--cycle;
for i = 5.25v,3.9v:
	draw p06 shifted (8.5v, i);
	draw p07 shifted (9v, i + y10);
	draw p08 shifted (8.75v, i + y10 - 0.25v);
	fill p11 shifted (9v + x05, i + 1.35v - y05) withcolor white;
	draw p11 shifted (9v + x05, i + 1.35v - y05);
	for j = 2y05,0:
		fill p11 shifted (9v, i + 1.35v - j) withcolor white;
		draw p11 shifted (9v, i + 1.35v - j);
	endfor
endfor
fill p10 shifted (8.5v, 5.25v + 1.25u - 2y05 - y10) withcolor white;
draw p10 shifted (8.5v, 5.25v + 1.25u - 2y05 - y10);
% ------------------------------------------------------------------

% ------------------------------------------------------------------
% amplificador de instrumentación
p09 = z00--(0, y10 + 2y05 + 5u)--(2.5v - x05, y10/2 + y05 + 2.5u)--cycle;
d03 = thelabel.rt(btex $+$ etex, (0, 4.5u));
addto d03 also thelabel.rt(btex $-$ etex, (0, y10 + 2y05 + 0.5u));
addto d03 also thelabel(btex {\scshape ai} etex, (6u, y10/2 + y05 + 2.5u));
z11 = center p09 shifted (9.5v + x05, 5v - y05);
draw z11--z11 - z10;
draw z11--z11 shifted (1.15v, 0);
fill p11 shifted z11 shifted (1.15v, 0) withcolor white;
draw p11 shifted z11 shifted (1.15v, 0);
drawarrow z11 shifted (0, v)--z11 shifted (1.15v, v);
label.top(btex {\scshape a/d} etex, z11 shifted (1.15v/2, v));
label.bot(btex {\scshape agnd} etex, z11 - z10 - (0, 0.5v));
fill p10 shifted (z11 - z10 + (0, 0.5u)) withcolor white;
draw p10 shifted (z11 - z10 + (0, 0.5u));
fill p09 shifted (9.5v + x05, 5v - y05) withcolor white;
draw p09 shifted (9.5v + x05, 5v - y05);
draw d03 shifted (9.5v + x05, 5v - y05);
% ------------------------------------------------------------------

% ------------------------------------------------------------------
% switch de 8 puertas
p04 = (2.5u, 3.5u)--(1.5v, 3.5u)--(1.5v, 5.75v)--(2.5u, 5.75v)--cycle;
draw p04;	draw p04 shifted (6.25v, 0);
% ------------------------------------------------------------------

% ------------------------------------------------------------------
% puntos switches
for i=5.25v,3.375v,7.5u:
	for j=5u,1.25v,6.75v,7.5v:
		fill p11 shifted (j, i) withcolor white;
		draw p11 shifted (j, i);
	endfor
endfor
% ------------------------------------------------------------------

% ------------------------------------------------------------------
% cajas de señal
d00 = thelabel.top(btex Se\~nal etex, (0, 0));
z06 = llcorner d00;	z07 = lrcorner d00;
addto d00 also thelabel.bot(btex $+$ etex, z06);
addto d00 also thelabel.bot(btex $-$ etex, z07);
p05 = bbox d00;
for i=5.25v,3.375v,7.5u:
	fill p05 shifted (2.85v, i) withcolor white;
	draw p05 shifted (2.85v, i);
	draw d00 shifted (2.85v, i);
endfor
fill p05 shifted (5.15v, 3.375v) withcolor white;
draw p05 shifted (5.15v, 3.375v);
draw d00 shifted (5.15v, 3.375v);
% ------------------------------------------------------------------

% ------------------------------------------------------------------
% etiquetas
z08 = 1/2[ulcorner d00, urcorner d00] + 1/1.6(ulcorner d00 - llcorner d00);
d01 = thelabel(btex 00 Lo/08 Hi etex, z00);
d02 = thelabel(btex 00 Hi etex, z00);
(whatever, y09) = 0.55(llcorner d02 - llcorner d01);
z09 = (0,  y09);
label(btex 00 Lo/08 Hi etex, z08 shifted (5.15v, 5.25v));
label(btex 01 Lo/09 Hi etex, z08 shifted (5.15v, 3.375v));
label(btex 07 Lo/15 Hi etex, z08 shifted (5.15v, 7.5u));
label(btex 00 Hi etex, z08 + z09 shifted (2.85v, 5.25v));
label(btex 01 Hi etex, z08 + z09 shifted (2.85v, 3.375v));
label(btex 07 Hi etex, z08 + z09 shifted (2.85v, 7.5u));
% ------------------------------------------------------------------

endfig;
% ==================================================================



end
