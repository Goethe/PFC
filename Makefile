PDF = $(TEXMAIN:.tex=.pdf)
AUX = $(TEXMAIN:.tex=.cb) $(TEXMAIN:.tex=.cb2)
BBL = $(TEXMAIN:.tex=.bbl)
TEXMAIN = gis-pfc.tex
TEX = gis-pfc-tit.tex gis-pfc-pro.tex gis-pfc-part1.tex gis-pfc-ch1.tex \
	gis-pfc-ch2.tex gis-pfc-ch3.tex gis-pfc-ch4.tex gis-pfc-part2.tex \
	gis-pfc-ch5.tex gis-pfc-ch6.tex gis-pfc-appa.tex
BIB = $(TEXMAIN:.tex=.bib)
PICSPT1 = gis-pfc-part1-01.mps
PICSCH1 = gis-pfc-ch1-01.mps gis-pfc-ch1-02.mps gis-pfc-ch1-03.mps gis-pfc-ch1-04.mps \
	  gis-pfc-ch1-05.mps gis-pfc-ch1-06.mps
PICSCH2 = gis-pfc-ch2-01.mps gis-pfc-ch2-02.mps gis-pfc-ch2-03.mps gis-pfc-ch2-04.mps
PICSCH3 = gis-pfc-ch3-01.mps gis-pfc-ch3-02.mps gis-pfc-ch3-03.mps gis-pfc-ch3-04.mps \
      gis-pfc-ch3-05.mps gis-pfc-ch3-06.mps gis-pfc-ch3-07.mps gis-pfc-ch3-08.mps
PICSCH5 = gis-pfc-ch5-01.mps gis-pfc-ch5-02.mps gis-pfc-ch5-03.mps gis-pfc-ch5-04.mps \
      gis-pfc-ch5-05.mps gis-pfc-ch5-07.mps
PICSDIR = pictures
PICS = $(addprefix $(PICSDIR)/, $(PICSPT1) $(PICSCH1) $(PICSCH2) $(PICSCH3) $(PICSCH5))
OTHPICS = $(addprefix $(PICSDIR)/, gis-pfc-appa-01.png gis-pfc-ch5-06.jpg)
LM = latexmk
RM = rm
LMOPTS = -pdf
LMSILENT = -silent
LMFORCE = -f -g
RMOPTS = -fv

.PHONY: clean, cleanmost, cleanall, force, verbose

$(PDF) : $(TEXMAIN) $(TEX) $(BIB) $(PICS) $(OTHPICS)
	$(LM) $(LMOPTS) $(LMSILENT) $(TEXMAIN)

force : $(TEXMAIN) $(TEX) $(BIB) $(PICS)
	$(LM) $(LMOPTS) $(LMFORCE) $(TEXMAIN)

verbose : $(TEXMAIN) $(TEX) $(BIB) $(PICS)
	$(LM) $(LMOPTS) $(TEXMAIN)

$(PICS) :
	$(MAKE) -C $(PICSDIR)

clean :
	$(LM) -c
	@ $(RM) $(RMOPTS) $(AUX)

cleanmost :
	$(LM) -c
	@ $(RM) $(RMOPTS) $(AUX) $(BBL)

# Watch the caps "-c" != "-C"

cleanall :
	$(LM) -C
	@ $(RM) $(RMOPTS) $(AUX) $(BBL)
