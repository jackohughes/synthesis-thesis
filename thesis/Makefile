OTT = ott
OTT_FLAGS := -tex_wrap false -tex_show_meta false -picky_multiple_parses false
GRANULE_OTT := ../granule.ott
PDF := thesis.pdf

default: quick

quick : quick_aux

FILES := 0_preamble/names.tex \
		 0_preamble/preamble-ottput.tex \
		 1_introduction/intro-ottput.tex \
		 2_background/background-ottput.tex \
		 3_linear-base/linear-base-ottput.tex \
		 3_linear-base/intro-ottput.tex \
		 3_linear-base/calculus-ottput.tex \
		 3_linear-base/resource-management-ottput.tex \
		 3_linear-base/synthesis-ottput.tex \
		 3_linear-base/focusing-ottput.tex \
		 3_linear-base/evaluation-ottput.tex \
		 3_linear-base/conclusion-ottput.tex \
		 4_deriving/deriving-ottput.tex \
		 4_deriving/intro-ottput.tex \
		 4_deriving/calculus-ottput.tex \
		 4_deriving/push-pull-ottput.tex \
		 4_deriving/implementation-ottput.tex \
		 4_deriving/linear-haskell-ottput.tex \
		 4_deriving/consumption-ottput.tex \
		 4_deriving/other-ottput.tex \
		 4_deriving/conclusion-ottput.tex \
		 5_graded-base/graded-base-ottput.tex \
		 5_graded-base/intro-ottput.tex \
		 5_graded-base/calculus-ottput.tex \
		 5_graded-base/extended-ottput.tex \
		 5_graded-base/evaluation-ottput.tex \
		 6_conclusion/conclusion-ottput.tex \
		 7_appendix/appendix-ottput.tex \
		 8_proofs/proofs-ottput.tex \
		 thesis.tex 


thesis-ottput.tex : thesis.tex $(FILES) $(GRANULE_OTT)
	$(OTT) $(OTT_FLAGS) -i $(GRANULE_OTT) -tex_name_prefix GRANULE $(FILTER)
	$(OTT) $(OTT_FLAGS) -i $(GRANULE_OTT) -o granule-ott.tex -tex_name_prefix GRANULE \
		-tex_filter thesis.tex thesis-ottput.tex

0_preamble/preamble-ottput.tex : 0_preamble/preamble.tex $(FILES) $(GRANULE_OTT)
	# $(OTT) $(OTT_FLAGS) -i $(GRANULE_OTT) -tex_name_prefix GRANULE $(FILTER)
	$(OTT) $(OTT_FLAGS) -i $(GRANULE_OTT) -o granule-ott.tex -tex_name_prefix GRANULE \
		-tex_filter 0_preamble/preamble.tex 0_preamble/preamble-ottput.tex

1_introduction/intro-ottput.tex : 1_introduction/intro.tex $(GRANULE_OTT)
	$(OTT) $(OTT_FLAGS) -i $(GRANULE_OTT) -o granule-ott.tex -tex_name_prefix GRANULE \
		-tex_filter 1_introduction/intro.tex 1_introduction/intro-ottput.tex

2_background/background-ottput.tex : 2_background/background.tex $(GRANULE_OTT)
	$(OTT) $(OTT_FLAGS) -i $(GRANULE_OTT) -o granule-ott.tex -tex_name_prefix GRANULE \
		-tex_filter 2_background/background.tex 2_background/background-ottput.tex

3_linear-base/linear-base-ottput.tex : 3_linear-base/linear-base.tex $(GRANULE_OTT)
	$(OTT) $(OTT_FLAGS) -i $(GRANULE_OTT) -o granule-ott.tex -tex_name_prefix GRANULE \
		-tex_filter 3_linear-base/linear-base.tex 3_linear-base/linear-base-ottput.tex

3_linear-base/intro-ottput.tex : 3_linear-base/intro.tex $(GRANULE_OTT)
	$(OTT) $(OTT_FLAGS) -i $(GRANULE_OTT) -o granule-ott.tex -tex_name_prefix GRANULE \
		-tex_filter 3_linear-base/intro.tex 3_linear-base/intro-ottput.tex

3_linear-base/calculus-ottput.tex : 3_linear-base/calculus.tex $(GRANULE_OTT)
	$(OTT) $(OTT_FLAGS) -i $(GRANULE_OTT) -o granule-ott.tex -tex_name_prefix GRANULE \
		-tex_filter 3_linear-base/calculus.tex 3_linear-base/calculus-ottput.tex

3_linear-base/resource-management-ottput.tex : 3_linear-base/resource-management.tex $(GRANULE_OTT)
	$(OTT) $(OTT_FLAGS) -i $(GRANULE_OTT) -o granule-ott.tex -tex_name_prefix GRANULE \
		-tex_filter 3_linear-base/resource-management.tex 3_linear-base/resource-management-ottput.tex

3_linear-base/synthesis-ottput.tex : 3_linear-base/synthesis.tex $(GRANULE_OTT)
	$(OTT) $(OTT_FLAGS) -i $(GRANULE_OTT) -o granule-ott.tex -tex_name_prefix GRANULE \
		-tex_filter 3_linear-base/synthesis.tex 3_linear-base/synthesis-ottput.tex

3_linear-base/focusing-ottput.tex : 3_linear-base/focusing.tex $(GRANULE_OTT)
	$(OTT) $(OTT_FLAGS) -i $(GRANULE_OTT) -o granule-ott.tex -tex_name_prefix GRANULE \
		-tex_filter 3_linear-base/focusing.tex 3_linear-base/focusing-ottput.tex

3_linear-base/evaluation-ottput.tex : 3_linear-base/evaluation.tex $(GRANULE_OTT)
	$(OTT) $(OTT_FLAGS) -i $(GRANULE_OTT) -o granule-ott.tex -tex_name_prefix GRANULE \
		-tex_filter 3_linear-base/evaluation.tex 3_linear-base/evaluation-ottput.tex

3_linear-base/conclusion-ottput.tex : 3_linear-base/conclusion.tex $(GRANULE_OTT)
	$(OTT) $(OTT_FLAGS) -i $(GRANULE_OTT) -o granule-ott.tex -tex_name_prefix GRANULE \
		-tex_filter 3_linear-base/conclusion.tex 3_linear-base/conclusion-ottput.tex

4_deriving/deriving-ottput.tex : 4_deriving/deriving.tex $(GRANULE_OTT)
	$(OTT) $(OTT_FLAGS) -i $(GRANULE_OTT) -o granule-ott.tex -tex_name_prefix GRANULE \
		-tex_filter 4_deriving/deriving.tex 4_deriving/deriving-ottput.tex

4_deriving/intro-ottput.tex : 4_deriving/intro.tex $(GRANULE_OTT)
	$(OTT) $(OTT_FLAGS) -i $(GRANULE_OTT) -o granule-ott.tex -tex_name_prefix GRANULE \
		-tex_filter 4_deriving/intro.tex 4_deriving/intro-ottput.tex

4_deriving/calculus-ottput.tex : 4_deriving/calculus.tex $(GRANULE_OTT)
	$(OTT) $(OTT_FLAGS) -i $(GRANULE_OTT) -o granule-ott.tex -tex_name_prefix GRANULE \
		-tex_filter 4_deriving/calculus.tex 4_deriving/calculus-ottput.tex

4_deriving/push-pull-ottput.tex : 4_deriving/push-pull.tex $(GRANULE_OTT)
	$(OTT) $(OTT_FLAGS) -i $(GRANULE_OTT) -o granule-ott.tex -tex_name_prefix GRANULE \
		-tex_filter 4_deriving/push-pull.tex 4_deriving/push-pull-ottput.tex

4_deriving/implementation-ottput.tex : 4_deriving/implementation.tex $(GRANULE_OTT)
	$(OTT) $(OTT_FLAGS) -i $(GRANULE_OTT) -o granule-ott.tex -tex_name_prefix GRANULE \
		-tex_filter 4_deriving/implementation.tex 4_deriving/implementation-ottput.tex

4_deriving/linear-haskell-ottput.tex : 4_deriving/linear-haskell.tex $(GRANULE_OTT)
	$(OTT) $(OTT_FLAGS) -i $(GRANULE_OTT) -o granule-ott.tex -tex_name_prefix GRANULE \
		-tex_filter 4_deriving/linear-haskell.tex 4_deriving/linear-haskell-ottput.tex

4_deriving/consumption-ottput.tex : 4_deriving/consumption.tex $(GRANULE_OTT)
	$(OTT) $(OTT_FLAGS) -i $(GRANULE_OTT) -o granule-ott.tex -tex_name_prefix GRANULE \
		-tex_filter 4_deriving/consumption.tex 4_deriving/consumption-ottput.tex

4_deriving/other-ottput.tex : 4_deriving/other.tex $(GRANULE_OTT)
	$(OTT) $(OTT_FLAGS) -i $(GRANULE_OTT) -o granule-ott.tex -tex_name_prefix GRANULE \
		-tex_filter 4_deriving/other.tex 4_deriving/other-ottput.tex

4_deriving/conclusion-ottput.tex : 4_deriving/conclusion.tex $(GRANULE_OTT)
	$(OTT) $(OTT_FLAGS) -i $(GRANULE_OTT) -o granule-ott.tex -tex_name_prefix GRANULE \
		-tex_filter 4_deriving/conclusion.tex 4_deriving/conclusion-ottput.tex

5_graded-base/graded-base-ottput.tex : 5_graded-base/graded-base.tex $(GRANULE_OTT)
	$(OTT) $(OTT_FLAGS) -i $(GRANULE_OTT) -o granule-ott.tex -tex_name_prefix GRANULE \
		-tex_filter 5_graded-base/graded-base.tex 5_graded-base/graded-base-ottput.tex

5_graded-base/intro-ottput.tex : 5_graded-base/intro.tex $(GRANULE_OTT)
	$(OTT) $(OTT_FLAGS) -i $(GRANULE_OTT) -o granule-ott.tex -tex_name_prefix GRANULE \
		-tex_filter 5_graded-base/intro.tex 5_graded-base/intro-ottput.tex

5_graded-base/calculus-ottput.tex : 5_graded-base/calculus.tex $(GRANULE_OTT)
	$(OTT) $(OTT_FLAGS) -i $(GRANULE_OTT) -o granule-ott.tex -tex_name_prefix GRANULE \
		-tex_filter 5_graded-base/calculus.tex 5_graded-base/calculus-ottput.tex

5_graded-base/extended-ottput.tex : 5_graded-base/extended.tex $(GRANULE_OTT)
	$(OTT) $(OTT_FLAGS) -i $(GRANULE_OTT) -o granule-ott.tex -tex_name_prefix GRANULE \
		-tex_filter 5_graded-base/extended.tex 5_graded-base/extended-ottput.tex

5_graded-base/evaluation-ottput.tex : 5_graded-base/evaluation.tex $(GRANULE_OTT)
	$(OTT) $(OTT_FLAGS) -i $(GRANULE_OTT) -o granule-ott.tex -tex_name_prefix GRANULE \
		-tex_filter 5_graded-base/evaluation.tex 5_graded-base/evaluation-ottput.tex

6_conclusion/conclusion-ottput.tex : 6_conclusion/conclusion.tex $(GRANULE_OTT)
	$(OTT) $(OTT_FLAGS) -i $(GRANULE_OTT) -o granule-ott.tex -tex_name_prefix GRANULE \
		-tex_filter 6_conclusion/conclusion.tex 6_conclusion/conclusion-ottput.tex

7_appendix/appendix-ottput.tex : 7_appendix/appendix.tex $(GRANULE_OTT)
	$(OTT) $(OTT_FLAGS) -i $(GRANULE_OTT) -o granule-ott.tex -tex_name_prefix GRANULE \
		-tex_filter 7_appendix/appendix.tex 7_appendix/appendix-ottput.tex

8_proofs/proofs-ottput.tex : 8_proofs/proofs.tex $(GRANULE_OTT)
	$(OTT) $(OTT_FLAGS) -i $(GRANULE_OTT) -o granule-ott.tex -tex_name_prefix GRANULE \
		-tex_filter 8_proofs/proofs.tex 8_proofs/proofs-ottput.tex

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
