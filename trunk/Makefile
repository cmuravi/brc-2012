# I used pdflatex, so the Makefile is quite simple

latexfile = proposal

$(latexfile).pdf: 
		pdflatex $(latexfile)
		bibtex $(latexfile)
		pdflatex $(latexfile)
		pdflatex $(latexfile)

clean: 
		/bin/rm -f *.lof
		/bin/rm -f *~
		/bin/rm -f *.log
		/bin/rm -f *.dvi
		/bin/rm -f *.bbl
		/bin/rm -f *.aux
		/bin/rm -f *.blg
		/bin/rm -f *.toc
		/bin/rm -f $(latexfile).pdf
		/bin/rm -f $(latexfile).ps
