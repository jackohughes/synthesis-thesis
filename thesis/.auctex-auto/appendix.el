(TeX-add-style-hook
 "appendix"
 (lambda ()
   (TeX-run-style-hooks
    "proofs-ottput")
   (LaTeX-add-labels
    "app:linear-base"
    "app:subtractive"
    "app:additive"
    "app:focusing"
    "app:focusing-sub"
    "app:focusing-add"
    "app:focusing-add-prune"
    "app:list-of-types")
   (LaTeX-add-environments
    '("GRANULEfundefnblock" LaTeX-env-args ["argument"] 2)
    '("GRANULEdefnblock" LaTeX-env-args ["argument"] 2)))
 :latex)

