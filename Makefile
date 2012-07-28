FILE = thesis

all: build

build:
	pdflatex $(FILE)
	bibtex $(FILE)
	pdflatex $(FILE).tex
	pdflatex $(FILE).tex

clean:
	@echo -e "\033[1mCleaning up...\033[0m"
	@rm -f *.blg
	@rm -f *.bbl
	@rm -f *.toc
	@rm -f *.out
	@rm -f *.log
	@rm -f *.aux
	@rm -f *.dvi
	@rm -f *.snm
	@rm -f *.nav
	@rm -f *.ps
	@rm -f *.lof
	@rm -f *.lol
	@rm -f *.lot
	@rm -f *.brf
	@rm -f *.synctex.gz
	@rm -f *.stc*
	@rm -f *.mtc*
	@rm -f *.maf
	@rm -f *~

fast:
	pdflatex $(FILE).tex
