LIB = gis-pfc.mp
CH1 = gis-pfc-ch1-?.mps
CH2 = gis-pfc-ch2-?.mps
CH3 = gis-pfc-ch3-?.mps
CH5 = gis-pfc-ch5-??.mps
CH1SRC = gis-pfc-ch1.mp
CH2SRC = gis-pfc-ch2.mp
CH3SRC = gis-pfc-ch3.mp
CH5SRC = gis-pfc-ch5.mp
OBJ = $(CH1) $(CH2) $(CH3) $(CH5)
MAIN = pictures.pdf
MAINSRC = pictures.tex
MP = mpost
LM = latexmk
LMOPTS = -pdf
LMFORCE = -f -g
LMSILENT = -silent
AUX = *.log *.mpx mpxerr.tex
AUXALL = *.mps
RM = rm
RMOPTS = -fv

$(MAIN) : $(MAINSRC) $(OBJ)
	$(LM) $(LMOPTS) $(LMSILENT) $(MAINSRC)

$(CH1) : $(CH1SRC) $(LIB)
	$(MP) $(CH1SRC)

$(CH2) : $(CH2SRC) $(LIB)
	$(MP) $(CH2SRC)

$(CH3) : $(CH3SRC) $(LIB)
	$(MP) $(CH3SRC)

$(CH5) : $(CH5SRC) $(LIB)
	$(MP) $(CH5SRC)

.PHONY: clean, cleanall, force, verbose
force :	$(MAINSRC) $(OBJ)
	$(LM) $(LMOPTS) $(LMFORCE) $(MAINSRC)

verbose : $(MAINSRC) $(OBJ) 
	$(LM) $(LMOPTS) $(MAINSRC)

clean :
	$(LM) -c
	@ $(RM) $(RMOPTS) $(AUX)

cleanall :
	$(LM) -C
	@ $(RM) $(RMOPTS) $(AUX) $(AUXALL)
