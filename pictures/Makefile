PRO = gis-pfc-pro-01.mps
CH1 = gis-pfc-ch1-01.mps gis-pfc-ch1-02.mps gis-pfc-ch1-03.mps gis-pfc-ch1-04.mps
CH2 = gis-pfc-ch2-01.mps gis-pfc-ch2-02.mps gis-pfc-ch2-03.mps gis-pfc-ch2-04.mps
CH3 = gis-pfc-ch3-01.mps gis-pfc-ch3-02.mps gis-pfc-ch3-03.mps gis-pfc-ch3-04.mps \
      gis-pfc-ch3-05.mps gis-pfc-ch3-06.mps gis-pfc-ch3-07.mps gis-pfc-ch3-08.mps
CH5 = gis-pfc-ch5-01.mps gis-pfc-ch5-02.mps gis-pfc-ch5-03.mps gis-pfc-ch5-04.mps \
      gis-pfc-ch5-05.mps gis-pfc-ch5-07.mps
OBJ = $(PRO) $(CH1) $(CH2) $(CH3) $(CH5)
LIB = gis-pfc.mp gis-pfc-arr.mp
PROSRC = gis-pfc-pro.mp
CH1SRC = gis-pfc-ch1.mp
CH2SRC = gis-pfc-ch2.mp
CH3SRC = gis-pfc-ch3.mp
CH5SRC = gis-pfc-ch5.mp
PDF = $(TEX:.tex=.pdf)
AUX = *.log *.mpx mpxerr.tex
TEX = pictures.tex
LM = latexmk
MP = mpost
RM = rm
LMOPTS = -pdf
LMSILENT = -silent
LMFORCE = -f -g
RMOPTS = -fv

.PHONY: clean, cleanmost, cleanall, force, pictures, verbose

pictures : $(OBJ)

$(PDF) : $(TEX) $(OBJ)
	$(LM) $(LMOPTS) $(LMSILENT) $(TEX)

force :	$(TEX) $(OBJ)
	$(LM) $(LMOPTS) $(LMFORCE) $(TEX)

verbose : $(TEX) $(OBJ) 
	$(LM) $(LMOPTS) $(TEX)

$(PRO) : $(PROSRC) $(LIB)
	$(MP) $(PROSRC)

$(CH1) : $(CH1SRC) $(LIB)
	$(MP) $(CH1SRC)

$(CH2) : $(CH2SRC) $(LIB)
	$(MP) $(CH2SRC)

$(CH3) : $(CH3SRC) $(LIB)
	$(MP) $(CH3SRC)

$(CH5) : $(CH5SRC) $(LIB)
	$(MP) $(CH5SRC)

clean :
	$(LM) -c
	@ $(RM) $(RMOPTS) $(AUX)

cleanmost :
	$(LM) -c
	@ $(RM) $(RMOPTS) $(AUX) $(OBJ)

# Watch the caps "-c" != "-C"
#
cleanall :
	$(LM) -C
	@ $(RM) $(RMOPTS) $(AUX) $(OBJ)
