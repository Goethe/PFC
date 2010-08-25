CH1 = gis-pfc-ch1-?.mps
CH2 = gis-pfc-ch2-?.mps
CH3 = gis-pfc-ch3-?.mps
CH1SRC = gis-pfc-ch1.mp
CH2SRC = gis-pfc-ch2.mp
CH3SRC = gis-pfc-ch3.mp
OBJ = $(CH1) $(CH2) $(CH3)
SRC = $(CH1SRC) $(CH2SRC) $(CH3SRC)
MAIN = pictures.pdf
PRMAIN = pictures.tex
PL = pdflatex
MP = mpost

$(MAIN) : $(PRMAIN) $(SRC) $(OBJ)
	$(PL) $(PRMAIN)
	$(PL) $(PRMAIN) > /dev/null

$(CH1) : $(CH1SRC)
	$(MP) $(CH1SRC)

$(CH2) : $(CH2SRC)
	$(MP) $(CH2SRC)

$(CH3) : $(CH3SRC)
	$(MP) $(CH3SRC)

.PHONY: clean
clean :
	@rm -f *.log *.out *.toc *.lot *.lof *.aux *.mpx *.mps *.pdf
