OBJ = gis-pfc.tex gis-pfc-pro.tex gis-pfc-ch1.tex gis-pfc-ch2.tex \
      gis-pfc-ch3-1.tex gis-pfc-ch3-2.tex gis-pfc-appa.tex gis-pfc-appb.tex
MAIN = gis-pfc.pdf
PRMAIN = gis-pfc.tex
AUX = gis-pfc.aux
BIB = gis-pfc.bib
BBL = gis-pfc.bbl
PL = pdflatex
BT = bibtex
DAT = $(shell date +%Y%m%d%k%M)
TCH = touch
TCHO = -amt

$(MAIN) : $(OBJ) $(BIB) $(BBL)
	$(PL) $(PRMAIN)
	$(PL) $(PRMAIN) > /dev/null
	$(TCH) $(TCHO) $(DAT) $(AUX)

$(BBL) : $(AUX)
	$(BT) $(AUX)

$(AUX) : $(BIB)
	$(PL) $(PRMAIN)

.PHONY: clean
clean :
	@rm -f *.log *.out *.toc *.lot *.lof *.aux *.cb *.cb2 *.blg *.bbl *.pdf
