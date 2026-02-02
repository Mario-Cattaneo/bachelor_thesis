TEX=Thesis.tex

.PHONY: all biber clean

all:
	latexmk -pdf -shell-escape -synctex=1 -interaction=nonstopmode $(TEX)

biber:
	latexmk -pdf -use-biber -shell-escape -synctex=1 -interaction=nonstopmode $(TEX)

clean:
	latexmk -c
