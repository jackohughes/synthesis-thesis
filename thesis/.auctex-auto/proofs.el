(TeX-add-style-hook
 "proofs"
 (lambda ()
   (LaTeX-add-labels
    "sec:linear-proofs"
    "lemma:contextLemma1"
    "lemma:contextLemma2"
    "lemma:context-neg"
    "lemma:contexts-subsub"
    "lemma:fAddSynthSound"
    "soundConLSub1"
    "soundConLSub2")
   (LaTeX-add-environments
    '("GRANULEfundefnblock" LaTeX-env-args ["argument"] 2)
    '("GRANULEdefnblock" LaTeX-env-args ["argument"] 2)))
 :latex)

