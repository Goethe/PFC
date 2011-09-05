verbatimtex
%&latex
\documentclass{minimal}
\usepackage[spanish]{babel}
\usepackage[T1]{fontenc}
\usepackage{lucidabr}
\usepackage{textcomp, amsfonts, amsmath, amssymb}
\begin{document}
\fontsize{11pt}{13.2pt}\selectfont
etex

filenametemplate "%j-%02c.mps";

defaultfont := "hlhr8r";

newinternal u, v;
u := 1mm;
v := 10mm;

input boxes
input graph
input gis-pfc-arr
input gis-pfc

init_numbers(btex\usefont{T1}{hlh}{m}{n}\fontsize{11pt}{13.2pt}\selectfont$-$etex,
	btex\usefont{T1}{hlh}{m}{n}\fontsize{11pt}{13.2pt}\selectfont$1$etex, 
	btex\usefont{T1}{hlh}{m}{n}\fontsize{11pt}{13.2pt}\selectfont${\cdot}10$etex, 
	btex\usefont{T1}{hlh}{m}{n}\fontsize{11pt}{13.2pt}\selectfont${}^-$etex, 
	btex\usefont{T1}{hlh}{m}{n}\fontsize{11pt}{13.2pt}\selectfont${}^2$etex
	);

wi = 12v;
he01 = 9v;	he02 = 6.75v;

ahlength := 2u;	ahangle := 20;
ahinset := 5/100;
linejoin := mitered;
linecap := butt;


end
