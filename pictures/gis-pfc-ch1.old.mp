verbatimtex
%&latex
\documentclass{minimal}
\begin{document}
\sffamily
etex
filenametemplate "%j-%2c.mps";

beginfig(1);
path p[];
pen b[];
transform t[];
u = 0.725mm;
b1 = pencircle scaled 0.5u;
b2 = pencircle scaled 2.5u;
z1 = (0, 0)*u; z2 = (10, 0)*u; z3 = (20, 0)*u;
z20 = z3 rotated 40 shifted z2;
z21 = z3 rotated 80 xscaled -1 shifted z2;
z30 = z3 rotated 10;
z31 = whatever[z1, z30] = whatever [z2, z21];
z32 = whatever[z1, z30] = whatever [z2, z20];
t1 = identity rotated 20 xscaled -1 shifted z3;
p1 = z1--z32{down}...{left}z2 shifted (0, 0.25u)...z31;
p10 = p1 transformed t1;
p11 = (35, 0)*u--(20, 0)*u--p10;
p12 = (75, 0)*u--(100, 0)*u--p1 rotated 20 shifted (100u, 0);
p13 = (75, 0)*u--(100, 0)*u--p1 shifted (100u, 0);
p21 = (35, -10/3)*u--(35, 20/3)*u--(50, 20/3)*u--(50, -10/3)*u--cycle;
p22 = (51.5, 38.5)*u--(58.5, 38.5)*u--(55, 32.5)*u--cycle;
p31 = (4, 45 - 20/3)*u--(4, 82.5)*u--(24, 82.5)*u--(24, 45 - 20/3)*u;
p32 = (4, 10)*u--(4, -4)*u--(24, -4)*u--(24, 10)*u;
p33 = (4, 45 - 20/3)*u--(4, 10)*u;
p34 = (24, 45 - 20/3)*u--(24, 10)*u;

% Dibujo la línea correspondiente a los canales 01/09
pickup b2;
drawdot (55, 45)*u; 
pickup b1;
draw z1 shifted (0, 45u)--(12.5, 45)*u;
draw p22;
draw (107.5, 45)*u--(120, 45)*u;
linecap:=butt;
linejoin:=beveled;
draw p11 shifted (0, 45u); draw p13 shifted (0, 45u);
linejoin:=rounded;
draw p21 shifted (0, 45u); 
draw (50, 45)*u--(60, 45)*u;
draw (55, 45)*u--(55, 38.5)*u;
draw p21 shifted (25u, 45u);
linecap:=rounded;

% Dibujo las líneas correspondientes a los canales 00/07
for i = 0, 7:
linecap:=butt;
linejoin:=beveled;
draw p11 shifted (0, 10i*u); draw p12 shifted (0, 10i*u);
linejoin:=rounded;
draw p21 shifted (0, 10i*u);
draw (50, 10i)*u--(75, 10i)*u;
linecap:=rounded;
endfor;

% Termino las líneas correspondientes a los canales 00/07
% y añado las líneas que terminan en los conmutadores
draw (12.5, 70)*u--(0, 70)*u--z1 shifted (0, 0)*u--(12.5, 0)*u;
draw (107.5, 70)*u--(120, 70)*u--(120, 0)*u--(107.5, 0)*u;
draw (120, 70)*u--(138.75, 70)*u;
draw (0, 70)*u--(0, 90)*u--(138.75, 90)*u;
pickup b2;
drawdot (0, 45)*u; drawdot (0, 70)*u;
drawdot (120, 45)*u; drawdot (120, 70)*u;
pickup b1;

% Dibujo los conmutadores
p4 = (0, 0)*u--(12.5, 0)*u--(12.5, 11.5)*u--(0, 11.5)*u--cycle;
pickup b2;
drawdot (126, 70.15)*u;
pickup b1;
draw p4 shifted (133.75u, 80.875u);
draw p4 shifted (133.75u, 60.875u);
draw (138.75, 83.25)*u--(126, 83.25)*u--(126, 70.15)*u;
draw (138.75, 63.25)*u--(126, 63.25)*u--(126, 56.75)*u;
draw p22 shifted (71u, 17.95u);
linecap:=butt;
ahlength:=2.5u;
drawarrow (153.75u, 86.625u)--(143.75u, 86.625u)--(135.25u, 83.5u);
drawarrow (153.75u, 66.625u)--(143.75u, 66.625u)--(135.25u, 63.5u);
linecap:=rounded;
ahlength:=4;

% Dibujo el amplificador de instrumentación
z41 = (153.75, 93.25)*u; z42 = (153.75, 60)*u; z43 = (203.75, 76.625)*u;
z44 = 1/2[z41, z42]; z45 = 1/2[z42, z43];
z46 = z45 - (0, 6.5u) - (55u, 38.5u);
draw z41--z42--z43--cycle;
draw p22 shifted z46;
draw fullcircle scaled 3u shifted (z43 + (5u, 0));
drawarrow z43 shifted (-10u, 7.5u)--z43 shifted (5u, 7.5u);
label.rt (btex Hi etex, z41 shifted (0, -8.625));
label.rt (btex Lo etex, z42 shifted (0, 8.625));
label.rt (btex Amplificador de etex, z44 shifted (0, 1.75u));
label.rt (btex instrumentaci\'on etex, z44 shifted (0, -1.75u));
label (btex (AGND) etex, z45 shifted (0, -16u));
label.bot (btex Tierra analógica etex, z45 shifted (0, -18u));
label.top (btex Al conversor A/D etex, z43 shifted (-5u, 10u));
linecap:=butt;
draw z43--z43 shifted (3.5u, 0);
draw z45 shifted (0, -0.25u)--z45 shifted (0, -6.5u);
linecap:=rounded;

% Envuelvo los multiplexadores
draw p31; draw p31 shifted (92.25u, 0);
draw p32; draw p32 shifted (92.25u, 0);
draw p33 dashed evenly scaled 3;
draw p33 shifted (92.25u, 0) dashed evenly scaled 3;
draw p34 dashed evenly scaled 3;
draw p34 shifted (92.25u, 0) dashed evenly scaled 3;

% Etiquetas
for j = 0, 45, 70:
label.bot (btex Se\~nal etex, (42.5, j + 20/3)*u);
label.urt (btex $+$ etex, (35, j - 10/3)*u);
label.ulft (btex $-$ etex, (50, j - 10/3)*u);
endfor;

z5 = 1/2[(4, -6)*u, (24, -6)*u];
label.bot (btex Multiplexador etex, z5);
label.bot (btex Multiplexador etex, z5 shifted (92.25u, 0));
label.bot (btex Se\~nal etex, (67.5, 45 + 20/3)*u);
label.urt (btex $-$ etex, (60, 45 - 10/3)*u);
label.ulft (btex $+$ etex, (75, 45 - 10/3)*u);
label.top (btex 00 HI etex, (42.5, 77.5)*u);
label.top (btex 01 HI etex, (42.5, 52.5)*u);
label.top (btex 07 HI etex, (42.5, 8.5)*u);
label.top (btex 00 LO\,--\,08 HI etex, (73.5, 77.5)*u);
label.top (btex 01 LO\,--\,09 HI etex, (73.5, 52.5)*u);
label.top (btex 07 LO\,--\,15 HI etex, (73.5, 8.5)*u);

endfig;

end
