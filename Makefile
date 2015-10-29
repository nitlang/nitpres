pres.pdf: pres.tex
	pdflatex pres.tex
	pdflatex pres.tex
pres.tex: pres.md
	pandoc -s -t beamer pres.md -o pres.tex
