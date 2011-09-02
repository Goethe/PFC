PT1MPS = gis-pfc-part1-01.mps
CH1MPS = gis-pfc-ch1-01.mps gis-pfc-ch1-02.mps gis-pfc-ch1-03.mps gis-pfc-ch1-04.mps \
      gis-pfc-ch1-05.mps gis-pfc-ch1-06.mps
CH2MPS = gis-pfc-ch2-01.mps gis-pfc-ch2-02.mps gis-pfc-ch2-03.mps gis-pfc-ch2-04.mps
CH3MPS = gis-pfc-ch3-01.mps gis-pfc-ch3-02.mps gis-pfc-ch3-03.mps gis-pfc-ch3-04.mps \
      gis-pfc-ch3-05.mps gis-pfc-ch3-06.mps gis-pfc-ch3-07.mps gis-pfc-ch3-08.mps
CH5MPS = gis-pfc-ch5-01.mps gis-pfc-ch5-02.mps gis-pfc-ch5-03.mps gis-pfc-ch5-04.mps \
      gis-pfc-ch5-05.mps gis-pfc-ch5-07.mps
PT1PDF = $(PT1MPS:.mps=.pdf)
CH1PDF = $(CH1MPS:.mps=.pdf)
CH2PDF = $(CH2MPS:.mps=.pdf)
CH3PDF = $(CH3MPS:.mps=.pdf)
CH5PDF = $(CH5MPS:.mps=.pdf)
# CH6 = gis-pfc-ch6-01.mps
JPG = gis-pfc-ch2-05.jpg gis-pfc-ch2-06.jpg gis-pfc-ch5-06.jpg
PNG = gis-pfc-ch4-01.png gis-pfc-ch4-02.png gis-pfc-ch4-03.png gis-pfc-ch4-04.png \
      gis-pfc-ch4-05.png gis-pfc-appa-01.png
# OBJMPS = $(PT1) $(CH1) $(CH2) $(CH3) $(CH5) $(CH6)
OBJMPS = $(PT1MPS) $(CH1MPS) $(CH2MPS) $(CH3MPS) $(CH5MPS)
OBJPDF = $(PT1PDF) $(CH1PDF) $(CH2PDF) $(CH3PDF) $(CH5PDF)
MOBJ = $(JPG) $(PNG)
LIB = gis-pfc.mp gis-pfc-arr.mp
PT1SRC = gis-pfc-part1.mp
CH1SRC = gis-pfc-ch1.mp
CH2SRC = gis-pfc-ch2.mp
CH3SRC = gis-pfc-ch3.mp
CH5SRC = gis-pfc-ch5.mp
# CH6SRC = gis-pfc-ch6.mp
PDF = $(TEX:.tex=.pdf)
AUX = *.log *.mpx mpxerr.tex
TEX = pictures.tex
LM = latexmk
MP = mpost
MPDF = mptopdf
RENAME = rename -v 's/-mps//' *-mps.pdf
RM = rm
LMOPTS = -pdf
LMSILENT = -silent
LMFORCE = -f -g
RMOPTS = -fv

.PHONY: clean, cleanmost, cleanall, force, pictures, verbose

pictures : $(OBJPDF)

$(PDF) : $(TEX) $(OBJPDF) $(MOBJ)
	$(LM) $(LMOPTS) $(LMSILENT) $(TEX)

force :	$(TEX) $(OBJPDF) $(MOBJ)
	$(LM) $(LMOPTS) $(LMFORCE) $(TEX)

verbose : $(TEX) $(OBJPDF) $(MOBJ)
	$(LM) $(LMOPTS) $(TEX)

$(PT1PDF) : $(PT1MPS)
	$(MPDF) $(PT1MPS)
	$(RENAME)

$(CH1PDF) : $(CH1MPS)
	$(MPDF) $(CH1MPS)
	$(RENAME)

$(CH2PDF) : $(CH2MPS)
	$(MPDF) $(CH2MPS)
	$(RENAME)

$(CH3PDF) : $(CH3MPS)
	$(MPDF) $(CH3MPS)
	$(RENAME)

$(CH5PDF) : $(CH5MPS)
	$(MPDF) $(CH5MPS)
	$(RENAME)

$(PT1MPS) : $(PT1SRC) $(LIB)
	$(MP) $(PT1SRC)

$(CH1MPS) : $(CH1SRC) $(LIB)
	$(MP) $(CH1SRC)

$(CH2MPS) : $(CH2SRC) $(LIB)
	$(MP) $(CH2SRC)

$(CH3MPS) : $(CH3SRC) $(LIB)
	$(MP) $(CH3SRC)

$(CH5MPS) : $(CH5SRC) $(LIB)
	$(MP) $(CH5SRC)

# $(CH6) : $(CH6SRC) $(LIB)
# 	$(MP) $(CH6SRC)

clean :
	$(LM) -c
	@ $(RM) $(RMOPTS) $(AUX)

cleanmost :
	$(LM) -c
	@ $(RM) $(RMOPTS) $(AUX) $(OBJMPS)

# Watch the caps "-c" != "-C"
#
cleanall :
	$(LM) -C
	@ $(RM) $(RMOPTS) $(AUX) $(OBJPDF) $(OBJMPS)
