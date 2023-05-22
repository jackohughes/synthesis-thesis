(TeX-add-style-hook
 "background"
 (lambda ()
   (LaTeX-add-labels
    "sec:linear-base"
    "def:contextAdd"
    "fig:typing"
    "def:scalar"
    "lemma:substitution"
    "sec:graded-base")
   (LaTeX-add-environments
    '("GRANULEfundefnblock" LaTeX-env-args ["argument"] 2)
    '("GRANULEdefnblock" LaTeX-env-args ["argument"] 2)))
 :latex)

