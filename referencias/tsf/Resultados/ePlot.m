function ePlot(s)

clg;
purge_tmp_files;
axis;

plot(s.freq,s.S11dB);
hold on;
plot(s.freq,s.S21dB);
hold on;
plot(s.freq,s.S31dB);
hold on;
plot(s.freq,s.S41dB);
hold on;
plot(s.freq,s.S22dB);
hold on;
plot(s.freq,s.S32dB);
axis([1e9 4e9 -30 0]);
axis('auto x');
title ('Modulo de los parametros S')
ylabel ('S_{ij} (dB)');
xlabel ('f (Hz)');
grid on;
text(3.1e9, -3, '-3.8 dB', 'HorizontalAlignment', 'left')
legend ('S_{11}', 'S_{21}', 'S_{31}', 'S_{41}', 'S_{22}', 'S_{32}', 3)

%plot(s.freq,s.S11rad);
%hold on;
%plot(s.freq,s.S21rad,'r');
%hold on;
%plot(s.freq,s.S31rad);
%hold on;
%plot(s.freq,s.S41rad,'b');
%hold on;
%plot(s.freq,s.S22rad);
%hold on;
%plot(s.freq,s.S32rad);
%title ('Fase de los parametros S')
%ylabel ('Fase_{S_{ij}} (rad)');
%xlabel ('f (Hz)');
%grid on;
%text(s.freq(297), s.S21rad(304)+0.1 , 'pi', 'HorizontalAlignment', 'right')
%text(s.freq(297), s.S41rad(304)-0.3, '0', 'HorizontalAlignment', 'right')
%legend ('S_{21}', 'S_{41}', 1)
