pres-6up.pdf: pres.pdf
	pdfjam-slides6up pres.pdf
pres.pdf: pres.tex pres-main.tex
	pdflatex pres.tex
	pdflatex pres.tex
pres-main.tex: pres.md
	pandoc -t beamer pres.md -o pres-main.tex
