(TeX-add-style-hook
 "thesis"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("UoKthesis" "11pt")))
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("caption" "tableposition=top") ("algorithm2e" "ruled" "vlined" "linesnumbered" "commentsnumbered" "resetcount")))
   (TeX-run-style-hooks
    "latex2e"
    "granule-ott"
    "intro-ottput"
    "background-ottput"
    "core-ottput"
    "deriving-ottput"
    "extended-ottput"
    "conclusion-ottput"
    "UoKthesis"
    "UoKthesis11"
    "UoKextentions"
    "lipsum"
    "comment"
    "dashrule"
    "color"
    "mathpartir"
    "amsmath"
    "amsfonts"
    "amssymb"
    "amsthm"
    "tikz"
    "tikz-cd"
    "natbib"
    "caption"
    "xypic"
    "enumitem"
    "hyperref"
    "graphicx"
    "float"
    "booktabs"
    "multirow"
    "thmtools"
    "thm-restate"
    "algorithm2e")
   (TeX-add-symbols
    '("includegraphics" 1)
    '("coeff" 1)
    '("jnote" 1)
    "oldincludegraphics")
   (LaTeX-add-labels
    "chapter:intro"
    "chapter:background"
    "chapter:core"
    "chapter:deriving"
    "chapter:extended"
    "chapter:conclusion")
   (LaTeX-add-environments
    '("GRANULEfundefnblock" LaTeX-env-args ["argument"] 2)
    '("GRANULEdefnblock" LaTeX-env-args ["argument"] 2)
    "theorem"
    "lemma"
    "proposition"
    "definition"
    "conjecture"
    "example"
    "remark"
    "question")
   (LaTeX-add-bibliographies
    "biblio"))
 :latex)

