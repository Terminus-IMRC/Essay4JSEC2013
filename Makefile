OBJS=jw.dvi
SRCS=jw.tex 2.aim.tex 3.howto.tex 4.result.tex 5.think.tex 6.todo.tex 7.cf.tex 8.thanks.tex 9.pic.tex j1.structure.eps
TEX=platex
XDVI=xdvi-ja
all:	$(OBJS)
%.dvi:	%.tex $(SRCS) $(MAKEFILE_LIST)
	$(TEX) $<
%.pdf:	%.dvi
	dvipdfmx $<
view:	$(OBJS)
	$(XDVI) $<
vipdf:	$(shell basename $(OBJS) .dvi).pdf
	xpdf $<
clean:
	$(RM) *.log *.aux *.dvi *.pdf *.toc *.lof
