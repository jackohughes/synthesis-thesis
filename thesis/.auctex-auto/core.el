(TeX-add-style-hook
 "core"
 (lambda ()
   (TeX-add-symbols
    '("highlight" 1)
    '("stderr" 1)
    "fail"
    "success")
   (LaTeX-add-labels
    "fig:typing-prod-sum-unit"
    "def:context-lub"
    "def:lub"
    "exm:or3"
    "exm:security"
    "sec:resource-management"
    "sec:core-synth-calculi"
    "def:contextSub"
    "def:context-glb"
    "lemma:subSynthSound"
    "lemma:addSynthSound"
    "lemma:addPruningSynthSound"
    "tab:results")
   (LaTeX-add-environments
    '("GRANULEfundefnblock" LaTeX-env-args ["argument"] 2)
    '("GRANULEdefnblock" LaTeX-env-args ["argument"] 2)))
 :latex)

