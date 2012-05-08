# I used pdflatex, so the Makefile is quite simple

latexfile = proposal

$(latexfile).pdf: $(latexfile).dvi
		dvips $(latexfile)
		ps2pdf13 $(latexfile).ps


$(latexfile).dvi: $(latexfile).tex approach.tex timeline.tex intro.tex # $(latexfile).bib  stealcycles.tex dns.tex webcloud.tex
		latex $(latexfile)
		latex $(latexfile)
#		bibtex $(latexfile)
		latex $(latexfile)
		latex $(latexfile)

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
