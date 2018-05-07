example.pdf: example.tex biblografia.bib
	pdflatex -shell-escape example.tex
	pdflatex -shell-escape example.tex
	bibtex example
	pdflatex -shell-escape example.tex
	pdflatex -shell-escape example.tex

clean:
	rm *.log *.aux *.lof *.lot *.toc *.out *.bbl *.dvi *.blg example.pdf
