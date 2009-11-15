<Qucs Schematic 0.0.9>
<Properties>
  <View=30,-469,1243,437,0.631399,9,13>
  <Grid=10,10,1>
  <DataSet=Prueba.dat>
  <DataDisplay=Prueba.dpl>
  <OpenDisplay=1>
</Properties>
<Symbol>
</Symbol>
<Components>
  <MLIN MS1 1 110 140 -26 15 0 0 "Subst1" 1 "1.497 mm" 1 "13.83 mm" 1 "Hammerstad" 0 "Kirschning" 0 "26.85" 0>
  <MTEE MS2 1 250 140 15 -26 0 3 "Subst1" 1 "0.7733 mm" 1 "1.497 mm" 1 "0.7733 mm" 1 "Hammerstad" 0 "Kirschning" 0 "26.85" 0>
  <MLIN MS3 1 330 50 -26 -119 1 0 "Subst1" 1 "0.7733 mm" 1 "4.891 mm" 1 "Hammerstad" 0 "Kirschning" 0 "26.85" 0>
  <MLIN MS8 1 550 50 -26 -119 1 0 "Subst1" 1 "0.7733 mm" 1 "4.891 mm" 1 "Hammerstad" 0 "Kirschning" 0 "26.85" 0>
  <MLIN MS13 1 770 50 -26 -119 0 2 "Subst1" 1 "0.7733 mm" 1 "4.891 mm" 1 "Hammerstad" 0 "Kirschning" 0 "26.85" 0>
  <MLIN MS16 1 550 280 -26 15 1 2 "Subst1" 1 "0.7733 mm" 1 "17.67 mm" 1 "Hammerstad" 0 "Kirschning" 0 "26.85" 0>
  <MLIN MS5 1 450 -170 -115 -26 1 1 "Subst1" 1 "1.497 mm" 1 "10.84 mm" 1 "Hammerstad" 0 "Kirschning" 0 "26.85" 0>
  <MLIN MS15 1 990 140 -26 15 0 0 "Subst1" 1 "1.497 mm" 1 "13.83 mm" 1 "Hammerstad" 0 "Kirschning" 0 "26.85" 0>
  <MTEE MS9 1 650 50 -26 15 0 2 "Subst1" 1 "0.7733 mm" 1 "1.497 mm" 1 "0.7733 mm" 1 "Hammerstad" 0 "Kirschning" 0 "26.85" 0>
  <MTEE MS14 1 890 140 -115 -26 0 1 "Subst1" 1 "0.7733 mm" 1 "1.497 mm" 1 "0.7733 mm" 1 "Hammerstad" 0 "Kirschning" 0 "26.85" 0>
  <MTEE MS4 1 450 50 -26 15 0 2 "Subst1" 1 "0.7733 mm" 1 "1.497 mm" 1 "0.7733 mm" 1 "Hammerstad" 0 "Kirschning" 0 "26.85" 0>
  <MLIN MS7 1 390 -300 -26 -119 1 0 "Subst1" 1 "1.497 mm" 1 "2.593 mm" 1 "Hammerstad" 0 "Kirschning" 0 "26.85" 0>
  <MLIN MS12 1 790 -300 -26 15 1 2 "Subst1" 1 "1.497 mm" 1 "2.593 mm" 1 "Hammerstad" 0 "Kirschning" 0 "26.85" 0>
  <Pac P1 1 130 30 18 -26 0 1 "1" 1 "50 Ohm" 1 "0 dBm" 0 "1 GHz" 0 "26.85" 0>
  <GND * 1 130 60 0 0 0 0>
  <Pac P4 1 1110 170 18 -26 0 1 "4" 1 "50 Ohm" 1 "0 dBm" 0 "1 GHz" 0 "26.85" 0>
  <GND * 1 1110 200 0 0 0 0>
  <GND * 1 900 -240 0 0 0 0>
  <Pac P3 1 900 -270 18 -26 0 1 "3" 1 "50 Ohm" 1 "0 dBm" 0 "1 GHz" 0 "26.85" 0>
  <Pac P2 1 250 -270 18 -26 0 1 "2" 1 "50 Ohm" 1 "0 dBm" 0 "1 GHz" 0 "26.85" 0>
  <GND * 1 250 -240 0 0 0 0>
  <MLIN MS10 1 650 -170 15 -26 0 1 "Subst1" 1 "1.497 mm" 1 "10.84 mm" 1 "Hammerstad" 0 "Kirschning" 0 "26.85" 0>
  <MCORN MS6 1 450 -300 15 -7 0 0 "Subst1" 1 "1.497 mm" 1>
  <MCORN MS11 1 650 -300 -7 -93 0 1 "Subst1" 1 "1.497 mm" 1>
  <SUBST Subst1 1 990 -100 -30 24 0 0 "4.392" 1 "800 um" 1 "30 um" 1 "1e-4" 0 "2.439e-8" 0 "0.15e-7" 0>
  <.SP SP1 1 80 -420 0 79 0 0 "lin" 1 "100 MHz" 1 "12 GHz" 1 "200" 1 "no" 0 "1" 0 "2" 0 "no" 0 "no" 0>
  <Eqn Eqn1 1 1060 -410 -33 19 0 0 "S11Mod=dB(S[1,1])" 1 "S21Mod=dB(S[2,1])" 1 "S41Mod=dB(S[4,1])" 1 "S21Phas=angle(S[2,1])" 1 "S41Phas=angle(S[4,1])" 1 "yes" 0>
</Components>
<Wires>
  <140 140 220 140 "" 0 0 0 "">
  <360 50 420 50 "" 0 0 0 "">
  <480 50 520 50 "" 0 0 0 "">
  <580 50 620 50 "" 0 0 0 "">
  <680 50 740 50 "" 0 0 0 "">
  <250 50 300 50 "" 0 0 0 "">
  <250 50 250 110 "" 0 0 0 "">
  <250 280 520 280 "" 0 0 0 "">
  <250 170 250 280 "" 0 0 0 "">
  <450 -140 450 20 "" 0 0 0 "">
  <890 170 890 280 "" 0 0 0 "">
  <580 280 890 280 "" 0 0 0 "">
  <890 50 890 110 "" 0 0 0 "">
  <800 50 890 50 "" 0 0 0 "">
  <920 140 960 140 "" 0 0 0 "">
  <80 0 130 0 "" 0 0 0 "">
  <80 0 80 140 "" 0 0 0 "">
  <1020 140 1110 140 "" 0 0 0 "">
  <820 -300 900 -300 "" 0 0 0 "">
  <250 -300 360 -300 "" 0 0 0 "">
  <650 -140 650 20 "" 0 0 0 "">
  <450 -270 450 -200 "" 0 0 0 "">
  <680 -300 760 -300 "" 0 0 0 "">
  <650 -270 650 -200 "" 0 0 0 "">
</Wires>
<Diagrams>
</Diagrams>
<Paintings>
</Paintings>
