filenametemplate "%j-%02c.mps";

newinternal u, v;
u := 1mm;
v := 10mm;

linejoin := mitered;
linecap := butt;

% ==================================================================
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

fill (-1.2v, -1.2v)--(1.2v, -1.2v)--(1.2v, 1.2v)--(-1.2v, 1.2v)--
    cycle withpen l0 withcolor white;

endfig;
% ==================================================================
end
