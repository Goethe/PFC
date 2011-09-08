PDF = $(TEXMAIN:.tex=.pdf)
AUX = $(TEXMAIN:.tex=.cb) $(TEXMAIN:.tex=.cb2)
BBL = $(TEXMAIN:.tex=.bbl)
TEXMAIN = gis-pfc.tex
TEX = gis-pfc-tit.tex   gis-pfc-thanks.tex gis-pfc-pro.tex gis-pfc-part1.tex \
      gis-pfc-ch1.tex   gis-pfc-ch2.tex    gis-pfc-ch3.tex gis-pfc-ch4.tex   \
      gis-pfc-part2.tex gis-pfc-ch5.tex    gis-pfc-ch6.tex gis-pfc-appa.tex
BIB = $(TEXMAIN:.tex=.bib)
PICSANE = gis-pfc-anexoIV-01.pdf logo.pdf
PICSPT1 = gis-pfc-part1-01.pdf
PICSCH1 = gis-pfc-ch1-01.pdf gis-pfc-ch1-02.pdf gis-pfc-ch1-03.pdf gis-pfc-ch1-04.pdf \
	  gis-pfc-ch1-05.pdf gis-pfc-ch1-06.pdf
PICSCH2 = gis-pfc-ch2-01.pdf gis-pfc-ch2-02.pdf gis-pfc-ch2-03.pdf gis-pfc-ch2-04.pdf
PICSCH3 = gis-pfc-ch3-01.pdf gis-pfc-ch3-02.pdf gis-pfc-ch3-03.pdf gis-pfc-ch3-04.pdf \
	  gis-pfc-ch3-05.pdf gis-pfc-ch3-06.pdf gis-pfc-ch3-07.pdf gis-pfc-ch3-08.pdf
PICSCH5 = gis-pfc-ch5-01.pdf gis-pfc-ch5-02.pdf gis-pfc-ch5-03.pdf gis-pfc-ch5-04.pdf \
	  gis-pfc-ch5-05.pdf gis-pfc-ch5-07.pdf
PICSCH6 = gis-pfc-ch6-07.pdf gis-pfc-ch6-08.pdf gis-pfc-ch6-09.pdf gis-pfc-ch6-10.pdf \
      	  gis-pfc-ch6-11.pdf gis-pfc-ch6-12.mps gis-pfc-ch6-13.mps gis-pfc-ch6-14.mps \
      	  gis-pfc-ch6-15.pdf gis-pfc-ch6-16.mps gis-pfc-ch6-17.mps gis-pfc-ch6-18.mps \
	  gis-pfc-ch6-19.mps
PICSDIR = pictures
JPGPNGS = gis-pfc-ch2-05.jpg gis-pfc-ch2-06.jpg gis-pfc-ch4-01.png gis-pfc-ch4-02.png \
	  gis-pfc-ch4-03.png gis-pfc-ch4-04.png gis-pfc-ch5-06.jpg gis-pfc-ch6-01.jpg \
	  gis-pfc-ch6-02.jpg gis-pfc-ch6-03.jpg gis-pfc-ch6-04.jpg gis-pfc-ch6-05.jpg \
	  gis-pfc-ch6-06.jpg gis-pfc-appa-01.png
PICS = $(addprefix $(PICSDIR)/, $(PICSPT1) $(PICSCH1) $(PICSCH2) $(PICSCH3) $(PICSCH5)\
       $(PICSCH6))
OTHPICS = $(addprefix $(PICSDIR)/, $(PICSANE) $(JPGPNGS))
MOREPICS = anexoIV.pdf
LM = latexmk
RM = rm
LMOPTS = -pdf
LMSILENT = -silent
LMFORCE = -f -g
RMOPTS = -fv

.PHONY: clean, cleanmost, cleanall, force, verbose

$(PDF) : $(TEXMAIN) $(TEX) $(BIB) $(PICS) $(OTHPICS) $(MOREPICS)
	$(LM) $(LMOPTS) $(LMSILENT) $(TEXMAIN)

force : $(TEXMAIN) $(TEX) $(BIB) $(PICS) $(OTHPICS) $(MOREPICS)
	$(LM) $(LMOPTS) $(LMFORCE) $(TEXMAIN)

verbose : $(TEXMAIN) $(TEX) $(BIB) $(PICS) $(OTHPICS) $(MOREPICS)
	$(LM) $(LMOPTS) $(TEXMAIN)

$(PICS) $(OTHPICS) :
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
