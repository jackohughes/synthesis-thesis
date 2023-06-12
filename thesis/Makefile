OTT = ott
OTT_FLAGS := -tex_wrap false -tex_show_meta false -picky_multiple_parses false
GRANULE_OTT := ../granule.ott
PDF := thesis.pdf

default: quick

quick : quick_aux

FILES := preamble-ottput.tex \
		 thesis.tex \
		 intro-ottput.tex \
		 background-ottput.tex \
		 core-ottput.tex \
		 deriving-ottput.tex \
		 extended-ottput.tex \
		 conclusion-ottput.tex \
		 appendix-ottput.tex \
		 proofs-ottput.tex


thesis-ottput.tex : thesis.tex $(FILES) $(GRANULE_OTT)
	$(OTT) $(OTT_FLAGS) -i $(GRANULE_OTT) -tex_name_prefix GRANULE $(FILTER)
	$(OTT) $(OTT_FLAGS) -i $(GRANULE_OTT) -o granule-ott.tex -tex_name_prefix GRANULE \
		-tex_filter thesis.tex thesis-ottput.tex

preamble-ottput.tex : preamble.tex $(FILES) $(GRANULE_OTT)
	$(OTT) $(OTT_FLAGS) -i $(GRANULE_OTT) -tex_name_prefix GRANULE $(FILTER)
	$(OTT) $(OTT_FLAGS) -i $(GRANULE_OTT) -o granule-ott.tex -tex_name_prefix GRANULE \
		-tex_filter preamble.tex preamble-ottput.tex

intro-ottput.tex : intro.tex $(GRANULE_OTT)
	$(OTT) $(OTT_FLAGS) -i $(GRANULE_OTT) -o granule-ott.tex -tex_name_prefix GRANULE \
		-tex_filter intro.tex intro-ottput.tex

background-ottput.tex : background.tex $(GRANULE_OTT)
	$(OTT) $(OTT_FLAGS) -i $(GRANULE_OTT) -o granule-ott.tex -tex_name_prefix GRANULE \
		-tex_filter background.tex background-ottput.tex

core-ottput.tex : core.tex $(GRANULE_OTT)
	$(OTT) $(OTT_FLAGS) -i $(GRANULE_OTT) -o granule-ott.tex -tex_name_prefix GRANULE \
		-tex_filter core.tex core-ottput.tex

deriving-ottput.tex : deriving.tex $(GRANULE_OTT)
	$(OTT) $(OTT_FLAGS) -i $(GRANULE_OTT) -o granule-ott.tex -tex_name_prefix GRANULE \
		-tex_filter deriving.tex deriving-ottput.tex

extended-ottput.tex : extended.tex $(GRANULE_OTT)
	$(OTT) $(OTT_FLAGS) -i $(GRANULE_OTT) -o granule-ott.tex -tex_name_prefix GRANULE \
		-tex_filter extended.tex extended-ottput.tex

conclusion-ottput.tex : conclusion.tex $(GRANULE_OTT)
	$(OTT) $(OTT_FLAGS) -i $(GRANULE_OTT) -o granule-ott.tex -tex_name_prefix GRANULE \
		-tex_filter conclusion.tex conclusion-ottput.tex

appendix-ottput.tex : appendix.tex $(GRANULE_OTT)
	$(OTT) $(OTT_FLAGS) -i $(GRANULE_OTT) -o granule-ott.tex -tex_name_prefix GRANULE \
		-tex_filter appendix.tex appendix-ottput.tex

proofs-ottput.tex : proofs.tex $(GRANULE_OTT)
	$(OTT) $(OTT_FLAGS) -i $(GRANULE_OTT) -o granule-ott.tex -tex_name_prefix GRANULE \
		-tex_filter proofs.tex proofs-ottput.tex

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
	rm -f *.aux *.dvi *.ps *.log *-ott.tex *-ottput.tex *.bbl *.blg *.rel *~ *.vtc *.out *.spl *-
