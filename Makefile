FILENAME=main
COMP=pdflatex

pdf:
	$(COMP) -shell-escape ${FILENAME}
	bibtex  ${FILENAME}||true
	$(COMP) -shell-escape ${FILENAME}
	$(COMP) -shell-escape ${FILENAME}

read:
	evince ${FILENAME}.pdf &

clean:
	rm -f ${FILENAME}.{ps,pdf,log,aux,out,dvi,bbl,blg}

