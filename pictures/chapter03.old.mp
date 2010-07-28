verbatimtex
%&latex
\documentclass{minimal}
\begin{document}
\sffamily
etex
filenametemplate "%j-%2c.mps";

input boxes
beginfig(4);
path p[];
pen b[];
transform t[];
b1 = pencircle scaled 1;
b2 = pencircle scaled 0.5;

z10 = (15, 10);

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
difc.c = atb.c + 2(z11) - 6(z12);	atc.c = difc.c + 2(z11);
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

endfig;

end
