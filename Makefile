OBJ = gis-pfc.tex gis-pfc-pro.tex gis-pfc-ch1.tex gis-pfc-ch2.tex \
      gis-pfc-ch3-1.tex gis-pfc-ch3-2.tex gis-pfc-appa.tex gis-pfc-appb.tex
AUX = gis-pfc.aux
BBL = gis-pfc.bbl
BIB = gis-pfc.bib
MAIN = gis-pfc.pdf
PICS = pictures/gis-pfc-ch?-?.mps
PRMAIN = gis-pfc.tex
BT = bibtex
PL = pdflatex
TCH = touch
DAT = $(shell date +%Y%m%d%k%M)
TCHO = -amt

$(MAIN) : $(OBJ) $(BIB) $(BBL) $(PICS)
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
