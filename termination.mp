% Metapost TeX macro
% Title: /home/jose/termination.dia
% Creator: Dia v0.96.1
% CreationDate: Wed Nov 25 12:45:03 2009
% For: jose


beginfig(1);
verbatimtex
%&latex
\documentclass{minimal}
\begin{document}
etex
% Define macro for horizontal centering.
vardef hcentered primary P =
  P shifted -(xpart center P, 0)
enddef;
% Define macro for right justification.
vardef rjust primary P =
  P shifted -(xpart (lrcorner P - llcorner P), 0)
enddef;
  % picture(0.332500,-7.420000)(14.916382,-0.507500)
  x = 0.350000cm; y = -0.350000cm;

  t = 0.350000;

% set_line_color 0.000000, 0.000000, 0.000000
% set_line_color 1.000000, 1.000000, 1.000000
% set_linewidth 0.100000
  path p;
  p = (7.500000x,6.000000y)--(7.500000x,8.500000y)--(12.500000x,8.500000y)--(12.500000x,6.000000y)--cycle;
  fill p withcolor (1.000000,1.000000,1.000000);
% set_line_color 0.000000, 0.000000, 0.000000
  draw (7.500000x,6.000000y)--(7.500000x,8.500000y)--(12.500000x,8.500000y)--(12.500000x,6.000000y)--cycle
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
  draw hcentered btex {\usefont{OT1}{phv}{m}{n} Señal} etex scaled 2.05t shifted (10.000000x,7.250000y);
% set_line_color 0.000000, 0.000000, 0.000000
  draw btex {\usefont{OT1}{phv}{m}{n}  +} etex scaled 2.05t shifted (7.500000x,8.005000y);
% set_line_color 0.000000, 0.000000, 0.000000
  draw rjust btex {\usefont{OT1}{phv}{m}{n} -  } etex scaled 2.05t shifted (12.500000x,8.005000y);
% set_linewidth 0.100000
  path p;
  p = (7.500000x,18.500000y)--(7.500000x,21.000000y)--(12.500000x,21.000000y)--(12.500000x,18.500000y)--cycle;
  fill p withcolor (1.000000,1.000000,1.000000);
% set_line_color 0.000000, 0.000000, 0.000000
  draw (7.500000x,18.500000y)--(7.500000x,21.000000y)--(12.500000x,21.000000y)--(12.500000x,18.500000y)--cycle
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
  draw hcentered btex {\usefont{OT1}{phv}{m}{n} Señal} etex scaled 2.05t shifted (10.000000x,19.750000y);
% set_line_color 0.000000, 0.000000, 0.000000
  draw btex {\usefont{OT1}{phv}{m}{n}  +} etex scaled 2.05t shifted (7.500000x,20.505000y);
% set_line_color 0.000000, 0.000000, 0.000000
  draw rjust btex {\usefont{OT1}{phv}{m}{n} -  } etex scaled 2.05t shifted (12.500000x,20.505000y);
% set_linewidth 0.100000
  path p;
  p = (7.500000x,11.000000y)--(7.500000x,13.500000y)--(12.500000x,13.500000y)--(12.500000x,11.000000y)--cycle;
  fill p withcolor (1.000000,1.000000,1.000000);
% set_line_color 0.000000, 0.000000, 0.000000
  draw (7.500000x,11.000000y)--(7.500000x,13.500000y)--(12.500000x,13.500000y)--(12.500000x,11.000000y)--cycle
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
  draw hcentered btex {\usefont{OT1}{phv}{m}{n} Señal} etex scaled 2.05t shifted (10.000000x,12.250000y);
% set_line_color 0.000000, 0.000000, 0.000000
  draw btex {\usefont{OT1}{phv}{m}{n}  +} etex scaled 2.05t shifted (7.500000x,13.005000y);
% set_line_color 0.000000, 0.000000, 0.000000
  draw rjust btex {\usefont{OT1}{phv}{m}{n} -  } etex scaled 2.05t shifted (12.500000x,13.005000y);
% set_linewidth 0.100000
% set_line_color 0.000000, 0.000000, 0.000000
  draw (12.500000x,12.250000y)--(15.000000x,12.250000y)
    withpen pencircle scaled 0.1000x;
% set_linewidth 0.100000
% set_line_color 0.000000, 0.000000, 0.000000
  draw (13.750000x,12.250000y)--(13.750000x,13.388197y)
    withpen pencircle scaled 0.1000x;
% set_line_color 1.000000, 1.000000, 1.000000
% fill_polygon
  path p;
  p = (13.250000x,13.388197y)--(13.750000x,14.388197y)--(14.250000x,13.388197y)--cycle;
  fill p 
    withpen pencircle scaled 0.1000x
    withcolor (1.0000, 1.0000, 1.0000);
% set_linewidth 0.100000
% set_line_color 0.000000, 0.000000, 0.000000
  draw (13.250000x,13.388197y)--(13.750000x,14.388197y)--(14.250000x,13.388197y)--cycle
    withpen pencircle scaled 0.1000x;
% set_linewidth 0.100000
  path p;
  p = (15.000000x,11.000000y)--(15.000000x,13.500000y)--(20.000000x,13.500000y)--(20.000000x,11.000000y)--cycle;
  fill p withcolor (1.000000,1.000000,1.000000);
% set_line_color 0.000000, 0.000000, 0.000000
  draw (15.000000x,11.000000y)--(15.000000x,13.500000y)--(20.000000x,13.500000y)--(20.000000x,11.000000y)--cycle
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
  draw hcentered btex {\usefont{OT1}{phv}{m}{n} Señal} etex scaled 2.05t shifted (17.500000x,12.250000y);
% set_line_color 0.000000, 0.000000, 0.000000
  draw btex {\usefont{OT1}{phv}{m}{n}   -} etex scaled 2.05t shifted (15.000000x,13.005000y);
% set_line_color 0.000000, 0.000000, 0.000000
  draw rjust btex {\usefont{OT1}{phv}{m}{n} + } etex scaled 2.05t shifted (20.000000x,13.005000y);
% set_linewidth 0.100000
% set_linewidth 0.100000
% set_line_color 0.000000, 0.000000, 0.000000
  draw (2.500000x,12.250000y)--(3.250000x,12.250000y)
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
  draw (5.000000x,12.250000y)--(4.250000x,12.250000y)--(3.250000x,11.750000y)
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
  draw (4.000000x,12.125000y)--(3.625000x,11.625000y)--(3.500000x,11.875000y)
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
  draw hcentered btex {\usefont{OT1}{phv}{m}{n} } etex scaled 1.64t shifted (3.750000x,12.900000y);
% set_linewidth 0.100000
% set_linewidth 0.100000
% set_line_color 0.000000, 0.000000, 0.000000
  draw (2.500000x,7.250000y)--(3.250000x,7.250000y)
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
  draw (5.000000x,7.250000y)--(4.250000x,7.250000y)--(3.250000x,6.750000y)
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
  draw (4.000000x,7.125000y)--(3.625000x,6.625000y)--(3.500000x,6.875000y)
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
  draw hcentered btex {\usefont{OT1}{phv}{m}{n} } etex scaled 1.64t shifted (3.750000x,7.900000y);
% set_linewidth 0.100000
% set_linewidth 0.100000
% set_line_color 0.000000, 0.000000, 0.000000
  draw (2.500000x,19.750000y)--(3.250000x,19.750000y)
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
  draw (5.000000x,19.750000y)--(4.250000x,19.750000y)--(3.250000x,19.250000y)
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
  draw (4.000000x,19.625000y)--(3.625000x,19.125000y)--(3.500000x,19.375000y)
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
  draw hcentered btex {\usefont{OT1}{phv}{m}{n} } etex scaled 1.64t shifted (3.750000x,20.400000y);
% set_linewidth 0.100000
% set_linewidth 0.100000
% set_line_color 0.000000, 0.000000, 0.000000
  draw (22.500000x,7.250000y)--(23.250000x,7.250000y)
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
  draw (25.000000x,7.250000y)--(24.250000x,7.250000y)--(23.250000x,6.750000y)
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
  draw (24.000000x,7.125000y)--(23.625000x,6.625000y)--(23.500000x,6.875000y)
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
  draw hcentered btex {\usefont{OT1}{phv}{m}{n} } etex scaled 1.64t shifted (23.750000x,7.900000y);
% set_linewidth 0.100000
% set_linewidth 0.100000
% set_line_color 0.000000, 0.000000, 0.000000
  draw (22.500000x,19.750000y)--(23.250000x,19.750000y)
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
  draw (25.000000x,19.750000y)--(24.250000x,19.750000y)--(23.250000x,19.250000y)
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
  draw (24.000000x,19.625000y)--(23.625000x,19.125000y)--(23.500000x,19.375000y)
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
  draw hcentered btex {\usefont{OT1}{phv}{m}{n} } etex scaled 1.64t shifted (23.750000x,20.400000y);
% set_linewidth 0.100000
% set_linewidth 0.100000
% set_line_color 0.000000, 0.000000, 0.000000
  draw (22.500000x,12.250000y)--(23.250000x,12.250000y)
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
  draw (22.500000x,12.250000y)--(23.250000x,12.250000y)--(23.250000x,11.750000y)
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
  draw (25.000000x,12.250000y)--(24.250000x,12.250000y)--(23.125000x,11.687500y)
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
  draw (24.000000x,12.125000y)--(23.375000x,12.125000y)--(23.500000x,11.875000y)
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
  draw hcentered btex {\usefont{OT1}{phv}{m}{n} } etex scaled 1.64t shifted (23.750000x,11.500000y);
% set_linewidth 0.100000
% set_line_color 0.000000, 0.000000, 0.000000
  draw (5.000000x,12.250000y)--(7.500000x,12.250000y)
    withpen pencircle scaled 0.1000x;
% set_linewidth 0.100000
% set_line_color 0.000000, 0.000000, 0.000000
  draw (5.000000x,19.750000y)--(7.500000x,19.750000y)
    withpen pencircle scaled 0.1000x;
% set_linewidth 0.100000
% set_line_color 0.000000, 0.000000, 0.000000
  draw (12.500000x,19.750000y)--(22.500000x,19.750000y)
    withpen pencircle scaled 0.1000x;
% set_linewidth 0.100000
% set_line_color 0.000000, 0.000000, 0.000000
  draw (20.000000x,12.250000y)--(22.500000x,12.250000y)
    withpen pencircle scaled 0.1000x;
% set_linewidth 0.100000
% set_line_color 0.000000, 0.000000, 0.000000
  draw (5.000000x,7.250000y)--(7.500000x,7.250000y)
    withpen pencircle scaled 0.1000x;
% set_linewidth 0.100000
% set_line_color 0.000000, 0.000000, 0.000000
  draw (12.500000x,7.250000y)--(22.500000x,7.250000y)
    withpen pencircle scaled 0.1000x;
% set_linewidth 0.100000
% set_line_color 0.000000, 0.000000, 0.000000
  draw (25.000000x,19.750000y)--(26.000000x,19.750000y)--(26.000000x,7.049042y)
    withpen pencircle scaled 0.1000x;
% set_linewidth 0.100000
  path p;
  p = (26.000000x,7.049042y)..controls (26.100000x,7.049042y) and (26.200000x,7.149042y)
    ..(26.200000x,7.249042y)..controls (26.200000x,7.349042y) and (26.100000x,7.449042y)
    ..(26.000000x,7.449042y)..controls (25.900000x,7.449042y) and (25.800000x,7.349042y)
    ..(25.800000x,7.249042y)..controls (25.800000x,7.149042y) and (25.900000x,7.049042y)
    ..(26.000000x,7.049042y)
    ..cycle;
  fill p withcolor (0.000000,0.000000,0.000000);
% set_linewidth 0.100000
% set_line_color 0.000000, 0.000000, 0.000000
  draw (25.000000x,12.250000y)--(26.000000x,12.250000y)--(26.000000x,7.250000y)--(25.000000x,7.250000y)
    withpen pencircle scaled 0.1000x;
% set_linewidth 0.100000
% set_line_color 1.000000, 1.000000, 1.000000
% fill_polygon
  path p;
  p = (35.000000x,9.500000y)--(35.000000x,2.500000y)--(42.500000x,6.000000y)--cycle;
  fill p 
    withpen pencircle scaled 0.1000x
    withcolor (1.0000, 1.0000, 1.0000);
% set_line_color 0.000000, 0.000000, 0.000000
  draw (35.000000x,9.500000y)--(35.000000x,2.500000y)--(42.500000x,6.000000y)--cycle
    withpen pencircle scaled 0.1000x;
% set_linewidth 0.100000
  path p;
  p = (28.500000x,6.500000y)--(28.500000x,10.500000y)--(32.500000x,10.500000y)--(32.500000x,6.500000y)--cycle;
  fill p withcolor (1.000000,1.000000,1.000000);
% set_line_color 0.000000, 0.000000, 0.000000
  draw (28.500000x,6.500000y)--(28.500000x,10.500000y)--(32.500000x,10.500000y)--(32.500000x,6.500000y)--cycle
    withpen pencircle scaled 0.1000x;
% set_linewidth 0.100000
% set_line_color 0.000000, 0.000000, 0.000000
  draw (25.000000x,7.250000y)--(30.000000x,7.250000y)
    withpen pencircle scaled 0.1000x;
% set_linewidth 0.100000
% set_line_color 0.000000, 0.000000, 0.000000
  draw (30.000000x,9.750000y)--(27.500000x,9.750000y)--(27.500000x,11.138197y)
    withpen pencircle scaled 0.1000x;
% set_line_color 1.000000, 1.000000, 1.000000
% fill_polygon
  path p;
  p = (27.000000x,11.138197y)--(27.500000x,12.138197y)--(28.000000x,11.138197y)--cycle;
  fill p 
    withpen pencircle scaled 0.1000x
    withcolor (1.0000, 1.0000, 1.0000);
% set_linewidth 0.100000
% set_line_color 0.000000, 0.000000, 0.000000
  draw (27.000000x,11.138197y)--(27.500000x,12.138197y)--(28.000000x,11.138197y)--cycle
    withpen pencircle scaled 0.1000x;
% set_linewidth 0.100000
% set_line_color 0.000000, 0.000000, 0.000000
  draw (35.000000x,8.500000y)--(30.250000x,8.500000y)
    withpen pencircle scaled 0.1000x;
% set_linewidth 0.100000
% set_line_color 0.000000, 0.000000, 0.000000
  draw (30.250000x,8.500000y)--(29.432610x,9.317390y)
    withpen pencircle scaled 0.1000x;
% set_line_color 1.000000, 1.000000, 1.000000
% fill_polygon
  path p;
  p = (29.255834x,9.140613y)--(29.079057x,9.670943y)--(29.609387x,9.494166y)--cycle;
  fill p 
    withpen pencircle scaled 0.1000x
    withcolor (1.0000, 1.0000, 1.0000);
% set_linewidth 0.100000
% set_line_color 0.000000, 0.000000, 0.000000
  draw (29.255834x,9.140613y)--(29.079057x,9.670943y)--(29.609387x,9.494166y)--cycle
    withpen pencircle scaled 0.1000x;
% set_linewidth 0.100000
  path p;
  p = (28.500000x,1.500000y)--(28.500000x,5.500000y)--(32.500000x,5.500000y)--(32.500000x,1.500000y)--cycle;
  fill p withcolor (1.000000,1.000000,1.000000);
% set_line_color 0.000000, 0.000000, 0.000000
  draw (28.500000x,1.500000y)--(28.500000x,5.500000y)--(32.500000x,5.500000y)--(32.500000x,1.500000y)--cycle
    withpen pencircle scaled 0.1000x;
% set_linewidth 0.100000
% set_line_color 0.000000, 0.000000, 0.000000
  draw (25.000000x,2.250000y)--(30.000000x,2.250000y)
    withpen pencircle scaled 0.1000x;
% set_linewidth 0.100000
% set_line_color 0.000000, 0.000000, 0.000000
  draw (30.000000x,4.750000y)--(27.500000x,4.750000y)--(27.500000x,7.450134y)
    withpen pencircle scaled 0.1000x;
% set_linewidth 0.100000
  path p;
  p = (27.500000x,7.450134y)..controls (27.400000x,7.450134y) and (27.300000x,7.350134y)
    ..(27.300000x,7.250134y)..controls (27.300000x,7.150134y) and (27.400000x,7.050134y)
    ..(27.500000x,7.050134y)..controls (27.600000x,7.050134y) and (27.700000x,7.150134y)
    ..(27.700000x,7.250134y)..controls (27.700000x,7.350134y) and (27.600000x,7.450134y)
    ..(27.500000x,7.450134y)
    ..cycle;
  fill p withcolor (0.000000,0.000000,0.000000);
% set_linewidth 0.100000
% set_line_color 0.000000, 0.000000, 0.000000
  draw (35.000000x,3.500000y)--(30.250000x,3.500000y)
    withpen pencircle scaled 0.1000x;
% set_linewidth 0.100000
% set_line_color 0.000000, 0.000000, 0.000000
  draw (30.250000x,3.500000y)--(29.432610x,4.317390y)
    withpen pencircle scaled 0.1000x;
% set_line_color 1.000000, 1.000000, 1.000000
% fill_polygon
  path p;
  p = (29.255834x,4.140613y)--(29.079057x,4.670943y)--(29.609387x,4.494166y)--cycle;
  fill p 
    withpen pencircle scaled 0.1000x
    withcolor (1.0000, 1.0000, 1.0000);
% set_linewidth 0.100000
% set_line_color 0.000000, 0.000000, 0.000000
  draw (29.255834x,4.140613y)--(29.079057x,4.670943y)--(29.609387x,4.494166y)--cycle
    withpen pencircle scaled 0.1000x;
% set_linewidth 0.100000
% set_line_color 0.000000, 0.000000, 0.000000
  draw (2.500000x,19.750000y)--(1.250000x,19.750000y)--(1.250000x,3.500000y)
    withpen pencircle scaled 0.1000x;
% set_linewidth 0.100000
% set_line_color 0.000000, 0.000000, 0.000000
  draw (27.500000x,2.250000y)--(27.500000x,2.250000y)--(1.250000x,2.250000y)--(1.250000x,3.500000y)
    withpen pencircle scaled 0.1000x;
% set_linewidth 0.100000
% set_line_color 0.000000, 0.000000, 0.000000
  draw (26.000000x,12.000000y)--(26.000000x,19.750000y)--(25.000000x,19.750000y)
    withpen pencircle scaled 0.1000x;
% set_linewidth 0.100000
  path p;
  p = (26.000000x,12.000000y)..controls (26.100000x,12.000000y) and (26.200000x,12.100000y)
    ..(26.200000x,12.200000y)..controls (26.200000x,12.300000y) and (26.100000x,12.400000y)
    ..(26.000000x,12.400000y)..controls (25.900000x,12.400000y) and (25.800000x,12.300000y)
    ..(25.800000x,12.200000y)..controls (25.800000x,12.100000y) and (25.900000x,12.000000y)
    ..(26.000000x,12.000000y)
    ..cycle;
  fill p withcolor (0.000000,0.000000,0.000000);
% set_linewidth 0.100000
% set_line_color 0.000000, 0.000000, 0.000000
  draw (2.500000x,7.250000y)--(1.000000x,7.250000y)
    withpen pencircle scaled 0.1000x;
% set_linewidth 0.100000
  path p;
  p = (1.000000x,7.250000y)..controls (1.000000x,7.150000y) and (1.100000x,7.050000y)
    ..(1.200000x,7.050000y)..controls (1.300000x,7.050000y) and (1.400000x,7.150000y)
    ..(1.400000x,7.250000y)..controls (1.400000x,7.350000y) and (1.300000x,7.450000y)
    ..(1.200000x,7.450000y)..controls (1.100000x,7.450000y) and (1.000000x,7.350000y)
    ..(1.000000x,7.250000y)
    ..cycle;
  fill p withcolor (0.000000,0.000000,0.000000);
% set_linewidth 0.100000
% set_line_color 0.000000, 0.000000, 0.000000
  draw (2.500000x,12.250000y)--(1.000000x,12.250000y)
    withpen pencircle scaled 0.1000x;
% set_linewidth 0.100000
  path p;
  p = (1.000000x,12.250000y)..controls (1.000000x,12.150000y) and (1.100000x,12.050000y)
    ..(1.200000x,12.050000y)..controls (1.300000x,12.050000y) and (1.400000x,12.150000y)
    ..(1.400000x,12.250000y)..controls (1.400000x,12.350000y) and (1.300000x,12.450000y)
    ..(1.200000x,12.450000y)..controls (1.100000x,12.450000y) and (1.000000x,12.350000y)
    ..(1.000000x,12.250000y)
    ..cycle;
  fill p withcolor (0.000000,0.000000,0.000000);
% set_linewidth 0.100000
% set_line_color 0.000000, 0.000000, 0.000000
  draw (2.000000x,21.000000y)--(5.500000x,21.000000y)
    withpen pencircle scaled 0.1000x;
% set_linewidth 0.100000
% set_line_color 0.000000, 0.000000, 0.000000
  draw (2.000000x,5.500000y)--(5.500000x,5.500000y)
    withpen pencircle scaled 0.1000x;
% set_linewidth 0.100000
% set_line_color 0.000000, 0.000000, 0.000000
  draw (22.000000x,5.500000y)--(25.500000x,5.500000y)
    withpen pencircle scaled 0.1000x;
% set_linewidth 0.100000
% set_line_color 0.000000, 0.000000, 0.000000
  draw (22.000000x,21.000000y)--(25.500000x,21.000000y)
    withpen pencircle scaled 0.1000x;
% set_linewidth 0.100000
% set_line_color 0.000000, 0.000000, 0.000000
  draw (5.500000x,21.000000y)--(5.500000x,18.500000y)
    withpen pencircle scaled 0.1000x;
% set_linewidth 0.100000
% set_line_color 0.000000, 0.000000, 0.000000
  draw (2.000000x,21.000000y)--(2.000000x,18.500000y)
    withpen pencircle scaled 0.1000x;
% set_linewidth 0.100000
% set_line_color 0.000000, 0.000000, 0.000000
  draw (2.000000x,5.500000y)--(2.000000x,13.500000y)
    withpen pencircle scaled 0.1000x;
% set_linewidth 0.100000
% set_line_color 0.000000, 0.000000, 0.000000
  draw (5.500000x,5.500000y)--(5.500000x,13.500000y)
    withpen pencircle scaled 0.1000x;
% set_linewidth 0.100000
% set_line_color 0.000000, 0.000000, 0.000000
  draw (22.000000x,5.500000y)--(22.000000x,13.500000y)
    withpen pencircle scaled 0.1000x;
% set_linewidth 0.100000
% set_line_color 0.000000, 0.000000, 0.000000
  draw (25.500000x,5.500000y)--(25.500000x,13.500000y)
    withpen pencircle scaled 0.1000x;
% set_linewidth 0.100000
% set_line_color 0.000000, 0.000000, 0.000000
  draw (22.000000x,21.000000y)--(22.000000x,18.500000y)
    withpen pencircle scaled 0.1000x;
% set_linewidth 0.100000
% set_line_color 0.000000, 0.000000, 0.000000
  draw (25.500000x,21.000000y)--(25.500000x,18.500000y)
    withpen pencircle scaled 0.1000x;
% set_linewidth 0.100000
% set_line_color 0.000000, 0.000000, 0.000000
  draw (22.000000x,13.500000y)--(22.000000x,18.500000y)
    withpen pencircle scaled 0.1000x
    dashed dashpattern (on 1.000000x off 0.475000x on 0.050000x off 0.475000x);
% set_linewidth 0.100000
% set_line_color 0.000000, 0.000000, 0.000000
  draw (25.500000x,13.500000y)--(25.500000x,18.500000y)
    withpen pencircle scaled 0.1000x
    dashed dashpattern (on 1.000000x off 0.475000x on 0.050000x off 0.475000x);
% set_linewidth 0.100000
% set_line_color 0.000000, 0.000000, 0.000000
  draw (5.500000x,13.500000y)--(5.500000x,18.500000y)
    withpen pencircle scaled 0.1000x
    dashed dashpattern (on 1.000000x off 0.475000x on 0.050000x off 0.475000x);
% set_linewidth 0.100000
% set_line_color 0.000000, 0.000000, 0.000000
  draw (2.000000x,13.500000y)--(2.000000x,18.500000y)
    withpen pencircle scaled 0.1000x
    dashed dashpattern (on 1.000000x off 0.475000x on 0.050000x off 0.475000x);
endfig;
end;
