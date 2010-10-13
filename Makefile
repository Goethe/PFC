SRC = gis-pfc-pro.tex gis-pfc-ch1.tex gis-pfc-ch2.tex gis-pfc-ch3.tex \
	gis-pfc-ch5.tex gis-pfc-appa.tex gis-pfc-appb.tex
BIB = gis-pfc.bib
MAIN = gis-pfc.pdf
MAINSRC = gis-pfc.tex
PICS = pictures/gis-pfc-ch?-??.mps pictures/gis-pfc-appa-1.png \
	pictures/gis-pfc-ch5-06.jpg
LM = latexmk
LMOPTS = -pdf
LMFORCE = -f -g
LMSILENT = -silent
AUX = gis-pfc.cb gis-pfc.cb2 gis-pfc.bbl
RM = rm
RMOPTS = -fv

$(MAIN) : $(MAINSRC) $(SRC) $(BIB) $(PICS)
	$(LM) $(LMOPTS) $(LMSILENT) $(MAINSRC)

.PHONY: clean, cleanall, force, verbose
force : $(MAINSRC) $(SRC) $(BIB) $(PICS)
	$(LM) $(LMOPTS) $(LMFORCE) $(MAINSRC)

verbose : $(MAINSRC) $(SRC) $(BIB) $(PICS)
	$(LM) $(LMOPTS) $(MAINSRC)

clean :
	$(LM) -c
	@ $(RM) $(RMOPTS) $(AUX)

cleanall :
	$(LM) -C
	@ $(RM) $(RMOPTS) $(AUX)
