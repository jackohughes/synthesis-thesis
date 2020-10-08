# CS Thesis Style

Latex templates to generate a thesis that follows the University's guidelines.

## Documentation

 The UoK class file extends the standard report style to follow the Registry
 guidelines for laying out a thesis. It sets the margins, interline spacing,
 the page, figure and table numbering style, and disallows page breaks at
 hyphens. The class file consists of setting one and an half line spacing text
 with a 4cm left margin, at least a 2.5cm right margin, approximately 2cm top
 and bottom margin, on A4 paper.
 
 The class the following options, in addition to those of the standard report
 class:

* __mini__ - Toggles the thesis in to mini-thesis mode. This adds "mini" to the
title and appends a nocite(*) at the end for an automatic output of
your complete bibliography.
    
* __draftmark__ - Puts a DRAFT' watermark on every page of the document along
with the draft statement on the title page. Additionaly, it
is used as a switch for the UoKExtentions package.
    
* __draft__ - Puts the entire document into draft mode. Applies all the effect
of draftmark above, but also propergates to other packages used.

* __copyright__ - Adds a copyright page between the title page and the preface.
    
* __nofig__ - Disables output of the list of figures in the preface.
    
* __notab__ - Disables output of the list of tables in the preface.
    
* __noalgo__ - Disables output of the list of algorithms in the preface.
 
 All options passed to UoKthesis will be passed along to included packages:
natbib, draftwatermark, setspace, hyperref, lmodern

 The cover page and optional copyright page are implicitly added before the
 start of the preface section. Use the following commands to populate the 
 cover page/copyright page information:

     \title{thesis title}
     \author{author's name} 
     \degree{Master of Science, Doctor of Philosophy, etc.} 
     \subject{author's department} % Computer Science if omitted 
     \submitdate{month year in which submitted} % Dated by LaTeX if omitted 
     \copyrightyear{year degree conferred (next year if submitted in Dec.)} % Assumes current year (or next year, in December) if omitted 
 
 The preface environment allows for the use of sections that precede the main
 document; such as Abstract and  Acknowlegements. These sections should be
 defined using \section{Preface Section Title}. The contents page (and list of
 figures and tables if in use) will be automatically inserted at the end of the
 preface environment.

 The thesis style invokes the setspace package to set the commands:   

    \doublespace   
    \onehalfspace   
    \singlespace  
 for spacing. By default one and an half spacing is used which resembles the
 UKC Typewriter requirement. Singlespace can be used for letterpress
 appearance. If you want to use true double space, for some reason, place the
 \doublespace command where you want to start using double spacing. Just call
 the appropriate spacing command at where you want to use them.
 
 In the figure and table environments, single spacing is used. If you want to
 use any other size rather than one and an half spacing, then do:

 	\renewcommand{\baselinestretch}{1.6} (or whatever you want instead of 1.6)
 This command won't take effect unless it comes before the \begin{document} or
 is triggered by a font change (after something like \small \normalsize).

 ## Contributors
 M. Lee   
 Dan Knox   
 Keith Greenhow    
 James Brookhouse    