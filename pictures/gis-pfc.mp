string base_name, base_version;	base_name="gis-pfc"; base_version="0.1";
message "Preloading the gis-pfc file, version "&base_version;



% ==================================================================
def transductor(expr escala, desplazamiento) =
begingroup
save c,n,f,r,x,y;
numeric c[],x[],y[]; pen n[]; picture f[]; path r[];
interim bboxmargin := 0;
n0 = pencircle scaled 0.15u;
n1 = pencircle scaled 0.25u;
n2 = pencircle scaled 0.35u;
n3 = pencircle scaled 0.5u;
f0 = nullpicture;
f1 = nullpicture;
f2 = nullpicture;
f3 = nullpicture;
f4 = nullpicture;
f5 = nullpicture;
f6 = nullpicture;

% ------------------------------------------------------------------
% agarre
% dimensiones de las barras
c00 = v;		c01 = v;
z00 = 1/2(-c00, -c01);	z01 = 1/2(c00, -c01);	
z02 = 1/2(c00, c01);	z03 = 1/2(-c00, c01);	
r0 = z00--z02;		r1 = z01--z03;
% dimensiones del agarre y separación entre barras
c02 = 3u;	c03 = v;	c04 = u;
c05 = u/50;	% Espacio adicional para el corte
z04 = 1/2(-c02, -c03);	z05 = 1/2(c02 - c05, -c03);
z06 = 1/2(c02 - c05, c03);	z07 = 1/2(-c02, c03);
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
% pista No 1: c07/6 = 2c07/12, -3c06/8 = -15c06/40
z13 = (x11 + c07/6, -3c06/8);	z19 = (x13, -y13);
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
addto f3 contour r5; % withcolor 0.6white;
addto f3 contour r4 withcolor white;
addto f4 doublepath r4;
addto f6 also f5 scaled escala shifted desplazamiento withpen n0;
addto f6 also f2 scaled escala shifted desplazamiento withpen n1;
addto f6 also f3 scaled escala shifted desplazamiento withpen n0;
addto f6 also f0 scaled escala shifted desplazamiento withpen n0;
addto f6 also f4 scaled escala shifted desplazamiento withpen n1;
(f6)
endgroup

enddef;
% ==================================================================



% ==================================================================
def conmutadorC (expr escala, desplazamiento)=
begingroup
save c,n,f,r,x,y;
numeric c[],x[],y[]; pen n[]; picture f[]; path r[];
interim bboxmargin := 0;
n0 = pencircle scaled 0.15u;
n1 = pencircle scaled 0.25u;
n2 = pencircle scaled 0.35u;
n3 = pencircle scaled 0.5u;
f0 = nullpicture;

% ------------------------------------------------------------------
% constantes: radio conectores, distancia entre estos y longitud de
% la patilla
c00 = 3/2;		c01 = 5;		c02 = c01 + 2c00;
c03 = c02 + c00/2;
r0 = fullcircle scaled c00;
z00 = (0, 0);		z01 = (c02, 0);
z02 = halfcircle scaled 2c02 intersectionpoint r0 shifted z01;
c04 = angle z02;
r1 = z00--(c03, 0);
addto f0 doublepath r1 rotated c04 scaled escala %
	shifted desplazamiento withpen n2;
addto f0 contour r0 scaled escala shifted desplazamiento %
	withcolor white withpen n0;
addto f0 doublepath r0 scaled escala shifted desplazamiento %
	withpen n1;
addto f0 contour r0 shifted z01 scaled escala %
	shifted desplazamiento withcolor white withpen n0;
addto f0 doublepath r0 shifted z01 scaled escala %
	shifted desplazamiento withpen n1;

% ------------------------------------------------------------------
% cierro la definición
(f0)
endgroup

enddef;
% ==================================================================



% ==================================================================
def conmutadorA (expr escala, desplazamiento)=
begingroup
save c,n,f,r,x,y;
numeric c[],x[],y[]; pen n[]; picture f[]; path r[];
interim bboxmargin := 0;
n0 = pencircle scaled 0.15u;
n1 = pencircle scaled 0.25u;
n2 = pencircle scaled 0.35u;
n3 = pencircle scaled 0.5u;
f0 = nullpicture;

% ------------------------------------------------------------------
% constantes: radio conectores, distancia entre estos y longitud de
% la patilla
c00 = 3/2;		c01 = 5;		c02 = c01 + 2c00;
c03 = c02 + c00/2;
r0 = fullcircle scaled c00;
z00 = (0, 0);		z01 = (c02, 0);
c04 = 30;
r1 = z00--(c03, 0);
addto f0 doublepath r1 rotated c04 scaled escala %
	shifted desplazamiento withpen n2;
addto f0 contour r0 scaled escala shifted desplazamiento %
	withcolor white withpen n0;
addto f0 doublepath r0 scaled escala shifted desplazamiento %
	withpen n1;
addto f0 contour r0 shifted z01 scaled escala %
	shifted desplazamiento withcolor white withpen n0;
addto f0 doublepath r0 shifted z01 scaled escala %
	shifted desplazamiento withpen n1;

% ------------------------------------------------------------------
% cierro la definición
(f0)
endgroup

enddef;
% ==================================================================



% ==================================================================
def conmutadorT (expr escala, desplazamiento)=
begingroup
save c,n,f,r,x,y;
numeric c[],x[],y[]; pen n[]; picture f[]; path r[];
interim bboxmargin := 0;
n0 = pencircle scaled 0.15u;
n1 = pencircle scaled 0.25u;
n2 = pencircle scaled 0.35u;
n3 = pencircle scaled 0.5u;
f0 = nullpicture;

% ------------------------------------------------------------------
% constantes: radio conectores, distancia entre estos y longitud de
% la patilla
c00 = 3/2;			c01 = 5;
c02 = c01 + 2c00;		c03 = c02 + c00/2;
r0 = fullcircle scaled c00;
z00 = (0, 0);			c04 = 20;
z01 = (c02, 0) rotated c04;	z02 = (0, 2c02*sind c04);
z03 = fullcircle scaled 2c02 intersectionpoint %
	halfcircle scaled -c00 shifted z01;
c05 = angle z03;
r1 = z00--(c03, 0);
addto f0 doublepath r1 rotated c05 scaled -1 shifted z01 %
	scaled escala shifted desplazamiento withpen n2;
addto f0 contour r0 scaled escala shifted desplazamiento %
	withcolor white withpen n0;
addto f0 doublepath r0 scaled escala shifted desplazamiento %
	withpen n1;
addto f0 contour r0 shifted z01 scaled escala %
	shifted desplazamiento withcolor white withpen n0;
addto f0 doublepath r0 shifted z01 scaled escala %
	shifted desplazamiento withpen n1;
addto f0 contour r0 shifted z02 scaled escala %
	shifted desplazamiento withcolor white withpen n0;
addto f0 doublepath r0 shifted z02 scaled escala %
	shifted desplazamiento withpen n1;

% ------------------------------------------------------------------
% cierro la definición
(f0)
endgroup

enddef;
% ==================================================================



% ==================================================================
def amplificador =
begingroup
save r;
path r[];

r0 = (0, -1/2)--(1, 0)--(0, 1/2)--cycle;

(r0)
endgroup

enddef;
% ==================================================================



% ==================================================================
def resistencia =
begingroup
save c,r;
numeric c[]; path r[];

c0 = sqrt(3)/8;
c1 = 1/50;
r0 = (-1/2 - c1, 0)--(-1/2, 0)--(-3/8, c0)--(-1/8, -c0)-- %
	(1/8, c0)--(3/8, -c0)--(1/2, 0)--(1/2 + c1, 0);

(r0)
endgroup

enddef;
% ==================================================================



% ==================================================================
def condensador =
begingroup
save f;
picture f[];

f0 = nullpicture;
addto f0 doublepath (-1/8, -1/2)--(-1/8, 1/2);
addto f0 doublepath (1/8, -1/2)--(1/8, 1/2);

(f0)
endgroup

enddef;
% ==================================================================



% ==================================================================
def tierra =
begingroup
save c,f;
numeric c[]; picture f[];

c0 = sqrt(3)/4;
f0 = nullpicture;
addto f0 doublepath (-1/2, 0)--(1/2, 0);
addto f0 doublepath (-1/2 + c0/4, -1/4)--(1/2 - c0/4, -1/4);
addto f0 doublepath (-1/2 + c0/2, -1/2)--(1/2 - c0/2, -1/2);

(f0)
endgroup

enddef;
% ==================================================================



% ==================================================================
def trtrsimplificado =
begingroup
save c,f;
numeric c[]; picture f[];

c0 = cosd(30)*sind(30)/2;
f0 = nullpicture;
addto f0 doublepath (-1/2, -1/2)--(0, -1/2)--(0, 1/2)-- %
	(-1/2, 1/2)--cycle;
addto f0 doublepath (0, -1/2)--(1/2, -1/2 - c0)-- %
	(1/2, 1/2 + c0)--(0, 1/2);

(f0)
endgroup

enddef;
% ==================================================================



% ==================================================================
% redefino la forma en que se dibujan las flechas
newinternal ahinset;
ahinset := 0; % The arrowhead's inset must have a value between 0 and 1



vardef arrowhead expr p =
	save q,e,i,qq,pp; path i,q; pair e,qq[];
	numeric pp;
	e = point length p of p;
	q = gobble(p shifted -e %
		cutafter makepath(pencircle scaled 2ahlength))
		cuttings;
	qq0 = point 0 of (q rotated .5ahangle);
	qq1 = point 0 of (q rotated -.5ahangle);
	(pp, whatever) = q intersectiontimes (qq0--qq1);
	i = subpath (pp, length q) of q;
	qq2 = point (arctime (ahinset*arclength i) of i) of i;
	(q rotated .5ahangle & reverse q rotated -.5ahangle -- %
		qq2 -- cycle)  shifted e
enddef;

vardef arpth expr p =
	save q,e; path q[]; pair e;
	e = point length p of p;
	q0 = gobble(p shifted -e cutbefore makepath %
		(pencircle scaled (2ahlength*(1 - ahinset))))
		cuttings;
	q1 = q0 shifted e;
	(q1)
enddef;

vardef darpth expr p =
	save q,e; path q[]; pair e[];
	e0 = point 0 of p;
	q0 = gobble(p shifted -e0 cutafter makepath %
		(pencircle scaled (2ahlength*(1 - ahinset))))
		cuttings;
	q1 = q0 shifted e0;
	e1 = point length q1 of q1;
	q2 = gobble(q1 shifted -e1 cutbefore makepath %
		(pencircle scaled (2ahlength*(1 - ahinset))))
		cuttings;
	q3 = q2 shifted e1;
	(q3)
enddef;

def drawemptyarrow expr p = _apth:=p; _finearr enddef;
def drawdblemptyarrow expr p = _apth:=p; _findearr enddef;
def drawgisarrow expr p = _apth:=p; _fingearr enddef;
def drawdblgisarrow expr p = _apth:=p; _fingdearr enddef;

def _finearr text t =
	draw _apth t;
	unfilldraw arrowhead _apth  t;
	draw arrowhead _apth  t;
enddef;

def _findearr text t =
	draw _apth t;
	unfilldraw arrowhead _apth withpen currentpen  t;
	draw arrowhead _apth withpen currentpen  t;
	unfilldraw arrowhead  reverse _apth  withpen currentpen  t;
	draw arrowhead  reverse _apth  withpen currentpen  t
enddef;

def _fingearr text t =
	draw arpth _apth t;
	filldraw arrowhead _apth withpen currentpen  t
enddef;

def _fingdearr text t =
	draw darpth _apth t;
	filldraw arrowhead _apth withpen currentpen  t;
	filldraw arrowhead  reverse _apth  withpen currentpen  t
enddef;
% ==================================================================
