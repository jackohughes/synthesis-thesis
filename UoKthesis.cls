% UoK Thesis Class File
% Created by M. Lee, 10 February 1995
% Updated by Daniel Knox, September 2013
% Converted to Class by Keith A. Greenhow, 24 September 2013
% Added list of algorithms option James Brookhouse 08 October 2020

% --- Class structure: identification part
% ---
\ProvidesClass{UoKthesis}[08/10/2020 version 0.2 University of Kent PhD and Master Thesis]
\NeedsTeXFormat{LaTeX2e}

\newif\ifdraft
\newif\ifmini
\newif\ifshowcopyright
\newif\iflistfig
\newif\iflisttables
\newif\iflistalgo

\listfigtrue
\listtablestrue
\listalgotrue

\DeclareOption{mini}{\minitrue} % Modifications required for Mini-thesis.
\DeclareOption{copyright}{\showcopyrighttrue} % Use to add copyright
\DeclareOption{draft}{\drafttrue} % Turn document into full draft mode
\DeclareOption{draftmark}{\drafttrue} % Just add the draft watermark (useful for images)
\DeclareOption{nofig}{\listfigfalse} % Hide list of figures page
\DeclareOption{notab}{\listtablesfalse} % Hide list of tables page
\DeclareOption{noalgo}{\listalgofalse} % Hide list of algos page

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{report}} %pass all unknown options to report class

\ProcessOptions % process defined options

\LoadClass{report} % load default Latex report class as basis

% Kent Harvard Referencing Style
\usepackage{natbib}
\setcitestyle{aysep={}} % Needed for correct author year citation style
\bibliographystyle{kentHarvard}

% Add watermark to draft copies
\ifdraft
	\usepackage{draftwatermark}
	\SetWatermarkLightness{0.9}
	\SetWatermarkScale{6.0}
	\SetWatermarkFontSize{1cm}
\else
	\usepackage[final]{draftwatermark}
\fi

\usepackage{lmodern}

%bibliography modifications
\let\originalbibliography\bibliography
\ifmini
	\renewcommand{\bibliography}[1]{\nocite{*}\cleardoublepage\phantomsection\addcontentsline{toc}{chapter}{Bibliography}\originalbibliography{#1}}
\else
	\renewcommand{\bibliography}[1]{\cleardoublepage\phantomsection\addcontentsline{toc}{chapter}{Bibliography}\originalbibliography{#1}}
\fi

\makeatletter 
\usepackage{setspace}
\usepackage{hyperref}
% Increase oddsidemargin from 0.5in to 1.6cm
\oddsidemargin=1.6cm
\evensidemargin 0in 
% Remove marginparwidth from 40pt to 0pt
\marginparwidth=0pt
% Remove marginparsep from 10pt to 0pt
\marginparsep=0pt 
\topmargin 0pt 
\headsep .5in 
% Increase textheight from 8.1in to 9in
\textheight=8.5in
% Decrease textwidth from 6in to 5.75in
\textwidth=5.75in
% Move the entire page up by 0.4cm
\voffset=-0.4cm

\renewcommand{\doublespace}{\spacing{1.5}}
\renewcommand{\onehalfspace}{\spacing{1.25}}
\renewcommand{\singlespace}{\spacing{1}}

\brokenpenalty=10000

\def\cl@chapter{\@elt{section}\@elt{footnote}}

\def\thefigure{\@arabic\c@figure} 

\def\thetable{\@arabic\c@table}

\def\theequation{\arabic{equation}} 

\long\def\@footnotetext#1{\insert\footins{\def\baselinestretch{1}\footnotesize
\interlinepenalty\interfootnotelinepenalty \splittopskip\footnotesep
\splitmaxdepth \dp\strutbox \floatingpenalty \@MM \hsize\columnwidth
\@parboxrestore \edef\@currentlabel{\csname
p@footnote\endcsname\@thefnmark}\@makefntext
{\rule{\z@}{\footnotesep}\ignorespaces #1\strut}}}

\def\degree#1{\gdef\@degree{#1}} \def\subject#1{\gdef\@subject{#1}}

\def\submitdate#1{\gdef\@submitdate{#1}}

\def\copyrightyear#1{\gdef\@copyrightyear{#1}}

\def\@title{}\def\@author{}\def\@subject{computer science}

\def\@principaladviser{}\def\@firstreader{}\def\@secondreader{}

\def\@submitdate{\ifcase\the\month\or January\or February\or March\or April\or
May\or June\or July\or August\or September\or October\or November\or
December\fi \space \number\the\year} \ifnum\month=12 \@tempcnta=\year
\advance\@tempcnta by 1 \edef\@copyrightyear{\number\the\@tempcnta} \else

\def\@copyrightyear{\number\the\year} \fi

\def\titlep{ 
 \thispagestyle{empty}
 \null\vskip1in 
 \begin{center}
   {\Large\uppercase\expandafter{\@title}}
 \end{center}
 \vfill
 \begin{center}
	\sc a \ifmini mini-thesis \else thesis \fi submitted to\\
   The University of Kent\\
   in the subject of \lowercase\expandafter{\@subject}\\
   for the degree\\
   of \lowercase\expandafter{\@degree}.
 \end{center}
 \vfill
 \ifdraft
 \begin{center}
   {\LARGE Draft on \today}
 \end{center}
 \fi
 \vfill
 \begin{center}
   \rm By\\ \@author\\ \@submitdate
 \end{center}
 \vskip.5in\newpage}

\def\copyrightpage{
 \ifshowcopyright
  \null\vfill
  \begin{center}
     \Large\copyright\ Copyright \@copyrightyear\\
     by\\
     \@author\\
  \end{center}
  \vfill\newpage
 \fi}

\def\contentspages{
 \cleardoublepage
 \phantomsection
 \addcontentsline{toc}{chapter}{Contents}
 \tableofcontents
 \newpage
 \iflisttables {\addvspace{10pt} \let\saveaddvspace=\addvspace
  \def\addvspace##1{}
  \phantomsection
  \addcontentsline{toc}{chapter}{List of Tables}
  \listoftables
  \let\addvspace=\saveaddvspace } \newpage 
 \fi
 \iflistfig {\addvspace{10pt} \let\saveaddvspace=\addvspace
  \def\addvspace##1{} 
  \phantomsection
  \addcontentsline{toc}{chapter}{List of Figures}
  \listoffigures
  \let\addvspace=\saveaddvspace } \newpage
 \fi
 
  \iflistalgo {\addvspace{10pt} \let\saveaddvspace=\addvspace
  \def\addvspace##1{} 
  \phantomsection
  \addcontentsline{toc}{chapter}{List of Algorithms}
  \listofalgorithms
  \let\addvspace=\saveaddvspace } \newpage
 \fi
 
}

\newenvironment{preface}{\pagenumbering{roman}\pagestyle{plain}\titlep\relax\copyrightpage}{\contentspages\newpage\pagenumbering{arabic}\pagestyle{headings}}
\let\originalsection\section\relax
\renewcommand{\section}[1]{
  \ifnum \pdfstrcmp{\@currenvir}{preface}=0
    \chapter*{#1}\addcontentsline{toc}{chapter}{#1}
  \else
    \originalsection{#1}
  \fi
}

\pagestyle{headings}
\doublespace

\makeatother 