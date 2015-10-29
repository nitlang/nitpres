pres-6up.pdf: pres.pdf
	pdfjam-slides6up pres.pdf
pres.pdf: pres.tex
	pdflatex pres.tex
	pdflatex pres.tex
pres.tex: pres.md
	pandoc -s -t beamer pres.md -o pres.tex
