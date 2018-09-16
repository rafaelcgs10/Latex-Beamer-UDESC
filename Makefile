FILENAME=main
COMP=pdflatex
FLAG=-shell-escape

pdf:
	$(COMP) ${FLAG} ${FILENAME}
	bibtex  ${FILENAME}||true
	$(COMP) ${FLAG} ${FILENAME}
	$(COMP) ${FLAG} ${FILENAME}

read:
	evince ${FILENAME}.pdf &

clean:
	rm -f ${FILENAME}.{ps,pdf,log,aux,out,dvi,bbl,blg}

