# This GNUmakefile makes the mps figures
# Created by: José Ramón Gisbert Valls
# On: jue dic  3 18:08:44 CET 2009
# Version: 0.1

MP := mpost
PLX := pdflatex
FILES := termination.mp
.PHONY : clean nocleanatall
%.mps : %.mp
	$(MP) $<
	mv $*.1 $@
%.pdf : %.tex
	$(PLX) $<
	$(PLX) $<
# Create PostScript figure test.mps
test.mps : test.mp
# Create PostScript figure prueba.mps
prueba.mps : prueba.mp
# Create PostScript figure termination.mps
termination.mps : termination.mp
# Create PDF document prueba.pdf
prueba.pdf : prueba.tex
nocleanatall:
	rm -f *.{log,aux,mpx}
clean:
	rm -f *.{log,aux,mpx,mps,pdf}
