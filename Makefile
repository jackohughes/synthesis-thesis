.PHONY: ott-preview
theory:
	ott granule.ott -o granule-ott.tex -tex_show_meta false \
  && { pdflatex -interaction=nonstopmode granule-ott.tex > /dev/null \
    && open granule-ott.pdf \
    || tail granule-ott.log; } \
  && rm granule-ott.tex granule-ott.aux

clean :
	rm -f *.aux *.dvi *.ps *.log *-ott.tex *-ottput.tex *.bbl *.blg *.rel *~ *.vtc *.out *.spl *-inc.tex
