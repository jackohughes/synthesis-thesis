OTT = ott
OTT_FLAGS := -tex_wrap false -tex_show_meta false -picky_multiple_parses false
GRANULE_OTT := ../granule.ott
PDF := thesis.pdf

default: quick

quick : quick_aux

FILES := Preamble/Names.tex \
		 Preamble/Preamble-ottput.tex \
		 Chapters/Chapter01-ottput.tex \
		 Chapters/Chapter02-ottput.tex \
		 Chapters/Chapter03-ottput.tex \
		 Chapters/Chapter04-ottput.tex \
		 Chapters/Chapter05-ottput.tex \
		 Chapters/Chapter06-ottput.tex \
		 Appendix/Proofs-ottput.tex \
		 thesis.tex 


thesis-ottput.tex : thesis.tex $(FILES) $(GRANULE_OTT)
	$(OTT) $(OTT_FLAGS) -i $(GRANULE_OTT) -tex_name_prefix GRANULE $(FILTER)
	$(OTT) $(OTT_FLAGS) -i $(GRANULE_OTT) -o granule-ott.tex -tex_name_prefix GRANULE \
		-tex_filter thesis.tex thesis-ottput.tex

Preamble/Preamble-ottput.tex : Preamble/Preamble.tex $(FILES) $(GRANULE_OTT)
	$(OTT) $(OTT_FLAGS) -i $(GRANULE_OTT) -o granule-ott.tex -tex_name_prefix GRANULE \
		-tex_filter Preamble/Preamble.tex Preamble/Preamble-ottput.tex

Chapters/Chapter01-ottput.tex : Chapters/Chapter01.tex $(GRANULE_OTT)
	$(OTT) $(OTT_FLAGS) -i $(GRANULE_OTT) -o granule-ott.tex -tex_name_prefix GRANULE \
		-tex_filter Chapters/Chapter01.tex Chapters/Chapter01-ottput.tex

Chapters/Chapter02-ottput.tex : Chapters/Chapter02.tex $(GRANULE_OTT)
	$(OTT) $(OTT_FLAGS) -i $(GRANULE_OTT) -o granule-ott.tex -tex_name_prefix GRANULE \
		-tex_filter Chapters/Chapter02.tex Chapters/Chapter02-ottput.tex

Chapters/Chapter03-ottput.tex : Chapters/Chapter03.tex $(GRANULE_OTT)
	$(OTT) $(OTT_FLAGS) -i $(GRANULE_OTT) -o granule-ott.tex -tex_name_prefix GRANULE \
		-tex_filter Chapters/Chapter03.tex Chapters/Chapter03-ottput.tex

Chapters/Chapter04-ottput.tex : Chapters/Chapter04.tex $(GRANULE_OTT)
	$(OTT) $(OTT_FLAGS) -i $(GRANULE_OTT) -o granule-ott.tex -tex_name_prefix GRANULE \
		-tex_filter Chapters/Chapter04.tex Chapters/Chapter04-ottput.tex

Chapters/Chapter05-ottput.tex : Chapters/Chapter05.tex $(GRANULE_OTT)
	$(OTT) $(OTT_FLAGS) -i $(GRANULE_OTT) -o granule-ott.tex -tex_name_prefix GRANULE \
		-tex_filter Chapters/Chapter05.tex Chapters/Chapter05-ottput.tex

Chapters/Chapter06-ottput.tex : Chapters/Chapter06.tex $(GRANULE_OTT)
	$(OTT) $(OTT_FLAGS) -i $(GRANULE_OTT) -o granule-ott.tex -tex_name_prefix GRANULE \
		-tex_filter Chapters/Chapter06.tex Chapters/Chapter06-ottput.tex

Appendix/Proofs-ottput.tex : Appendix/Proofs.tex $(GRANULE_OTT)
	$(OTT) $(OTT_FLAGS) -i $(GRANULE_OTT) -o granule-ott.tex -tex_name_prefix GRANULE \
		-tex_filter Appendix/Proofs.tex Appendix/Proofs-ottput.tex


quick_aux: $(FILES) Makefile
	pdflatex -shell-escape -synctex=1 -file-line-error -interaction=nonstopmode -halt-on-error thesis.tex

full: full_aux

full_aux: $(FILES) Makefile
	pdflatex -shell-escape -synctex=1 -file-line-error -interaction=nonstopmode -halt-on-error thesis.tex \
	&& bibtex thesis \
	&& pdflatex -shell-escape -synctex=1 -file-line-error -interaction=nonstopmode -halt-on-error thesis.tex \
	&& pdflatex -shell-escape -synctex=1 -file-line-error -interaction=nonstopmode -halt-on-error thesis.tex

aux: $(FILES) Makefile
	pdflatex -shell-escape -synctex=1 -file-line-error -interaction=nonstopmode -halt-on-error "\def\isaux{1}\input{thesis.tex}"

clean :
	rm -f *.aux *.dvi *.ps *.log *-ottput.tex *.bbl *.blg *.rel *~ *.vtc *.out *.spl *-
