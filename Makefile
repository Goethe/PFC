SRC = gis-pfc-pro.tex gis-pfc-ch1.tex gis-pfc-ch2.tex gis-pfc-ch3-1.tex \
	gis-pfc-ch3-2.tex gis-pfc-appa.tex gis-pfc-appb.tex
BIB = gis-pfc.bib
MAIN = gis-pfc.pdf
MAINSRC = gis-pfc.tex
PICS = pictures/gis-pfc-ch?-?.mps pictures/gis-pfc-appa-1.png \
	pictures/gis-pfc-ch?-??.mps pictures/gis-pfc-ch3-06.jpg
LM = latexmk
LMOPTS = -pdf
LMFORCE = -f -g
LMSILENT = -silent

$(MAIN) : $(MAINSRC) $(SRC) $(BIB) $(PICS)
	$(LM) $(LMOPTS) $(LMSILENT) $(MAINSRC)

.PHONY: clean, cleanall, force, verbose
force :
	$(LM) $(LMOPTS) $(LMFORCE) $(MAINSRC)

verbose :
	$(LM) $(LMOPTS) $(MAINSRC)

clean :
	$(LM) -c

cleanall :
	$(LM) -C
