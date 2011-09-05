string base_name, base_version;	base_name="gis-arr"; base_version="0.2";
message "Preloading the gis-arr file, version "&base_version;

% ==================================================================
% redefino la forma en que se dibujan las flechas
newinternal ahinset;
ahinset := 0;	% The arrowhead's inset must have a value between 0
		% and 1



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
% def addgisarrow (expr p, f) = _apth:=p; _fingearra enddef;
% def adddblgisarrow (expr p, f) = _apth:=p; _fingdearra enddef;

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

% def _fingearra text t =
% 	addto f doublepath darpth _apth withpen currentpen  t;
% 	addto f contour arrowhead _apth withpen currentpen  t;
% enddef;
% 
% def _fingdearra text t =
% 	addto f doublepath darpth _apth withpen currentpen  t;
% 	addto f contour arrowhead _apth withpen currentpen  t;
% 	addto f contour arrowhead  reverse _apth %
% 		withpen currentpen  t
% enddef;

% ==================================================================
