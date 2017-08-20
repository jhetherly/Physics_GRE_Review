output_file = GRE_physics_review.pdf
main_source = GRE_physics_review.tex
tex_source = $(wildcard *.tex)
image_source = $(wildcard images/*.pdf) $(wildcard images/*.jpg) $(wildcard images/*.png)

GRE_physics_review.pdf : $(main_source) $(tex_source) $(image_source)
	pdflatex $(main_source)
	pdflatex $(main_source)
	pdflatex $(main_source)
	pdflatex $(main_source)
	mv -f $(basename $(main_source)).pdf $(output_file)

clean :
	\rm -f *.aux *.bbl *.blg *.dvi *.idx *.lof *.log *.lot *.toc *.pdf *.glg *.gls *.glo *.xdy *.nav *.out *.snm *.vrb *.mp *.1 *.t1
