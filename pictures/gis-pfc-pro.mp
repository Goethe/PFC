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
% esquema con las distintas unidades funcionales del sistema de
% medida digital
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
for i = 0 upto 3 :
	t[0][i] = identity shifted (wi/2, wi/2 - 7y02/4) %
		shifted -z01 shifted (i*z02);
	t[1][i] = identity transformed t[0][i] shifted 2z01;
	z[i + 7] = (0, 0) transformed t[0][i];
	z[i + 11] = (0, 0) transformed t[1][i];
	draw p0 transformed t[0][i];
	if not (i = 2) : draw p0 transformed t[1][i]; fi
endfor
z15 = (2u, 0);
z16 = z10 shifted z01 shifted -z15;
z17 = z14 shifted -z01 shifted z15;
draw p0 shifted z00;
draw p0 shifted z04;

% ··································································
% flechas
for i = 0 upto 2 :
	drawgisarrow z[i + 7]--z[i + 8] cutbefore p0 %
		transformed t[0][i] cutafter p1 %
		transformed t[0][i + 1] shifted z05;
endfor
drawgisarrow z14--z12 cutbefore p0 transformed t[1][3] %
	cutafter p1 transformed t[1][1] shifted -z05;
drawgisarrow z12--z11 cutbefore p0 transformed t[1][1] %
	cutafter p1 transformed t[1][0] shifted -z05;
drawgisarrow z00--z00 shifted -z01--z07 cutbefore p0 shifted z00 %
	cutafter p1 transformed t[0][0] shifted z05;
drawgisarrow z11--z00 shifted z01--z00 cutbefore p0 %
	transformed t[1][0] cutafter p1 shifted z00 shifted -z06;
drawgisarrow z10--z16--z04 shifted -z15 cutbefore p0 %
	transformed t[0][3] cutafter p1 shifted z04 shifted z05;
drawgisarrow z04 shifted z15--z17--z14 cutbefore p0 %
	shifted z04 cutafter p1 transformed t[1][3] shifted z06;

% ··································································
% etiquetas
label(btex Medio etex, z00);
label(btex Supervisor etex, z04);
label(btex Sensor etex, z07);
label(btex Acondicionador etex, z08);
label(btex Adquisici\'on etex, z09);
label(btex Presentaci\'on etex, z10);
label(btex Actuador etex, z11);
label(btex Acondicionador etex, z12);
label(btex Control etex, z14);

endfig;
% ==================================================================



end
