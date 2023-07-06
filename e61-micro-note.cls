\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{e61note}
          [2023/05/22 v1 e61 Micro Note]

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{book}}
\ProcessOptions\relax

\LoadClass[10pt,twoside]{book}

\RequirePackage[paperwidth=215.9mm,paperheight=279.4mm,
top=9mm,bottom=18mm,left=15mm,right=15mm,
footskip=3mm,
marginparwidth=0in]{geometry}
\setlength{\columnsep}{19mm}

\RequirePackage[T1]{fontenc}
\RequirePackage[no-math]{fontspec}
%
\setmainfont{PTSans-Regular.ttf}[Path=./fonts/,
BoldItalicFont=PTSans-BoldItalic.ttf,
BoldFont      =PTSans-Bold.ttf,
ItalicFont    =PTSans-Italic.ttf]

\RequirePackage[italic]{mathastext}%math font

\newfontfamily{\Bebas}{BebasNeue Bold.ttf}[Path=./fonts/]
\newfontfamily{\Author}{PTSans-Bold.ttf}[Path=./fonts/,LetterSpace=15]
\newfontfamily{\Caption}{Arial}

\RequirePackage[english]{babel}
%
\RequirePackage[all]{nowidow}
\RequirePackage{rotating}
\RequirePackage{float}
\RequirePackage{ifthen}
\RequirePackage{booktabs}
\RequirePackage[table]{xcolor}
\RequirePackage{wrapfig}
\RequirePackage{siunitx}
\sisetup{group-digits=integer,
            table-align-text-pre=false,
            table-align-text-post=false,
input-symbols		= ( ) [ ] - + *,
        }
\def\sym#1{\ifmmode^{#1}\else\(^{#1}\)\fi}
\RequirePackage{microtype}
\RequirePackage{placeins}
\RequirePackage{amsmath}
\RequirePackage{setspace}

\RequirePackage[backend=biber,natbib=true,style=apa,]{biblatex}
\setlength\bibitemsep{0.33\baselineskip}
\RequirePackage{csquotes}

\RequirePackage{subcaption}
\DeclareCaptionFont{ninept}{\fontsize{10pt}{11}\selectfont \Caption}
\DeclareCaptionLabelFormat{r-parens}{#2}
\captionsetup[figure]{labelfont={bf,ninept},labelsep=colon,
belowskip=0pt,aboveskip=0pt,
justification=centering,singlelinecheck=false,font={bf,ninept}}
\captionsetup[table]{skip=8pt,labelfont={bf,ninept},labelsep=colon,
justification=centering,singlelinecheck=false,font={bf,ninept}} %%
\captionsetup[subfigure]{labelformat=r-parens, labelsep=colon,
labelfont=bf,
font={bf,footnotesize},justification=centering,belowskip=0pt,aboveskip=6pt}
\renewcommand{\thesubfigure}{\Alph{subfigure}}

\definecolor{green0}{RGB}{37,74,83}
\definecolor{green1}{RGB}{0,128,128}
\definecolor{green3}{RGB}{0,48,57}
\definecolor{gray1}{RGB}{227,230,230}

\definecolor{boxback}{RGB}{236,249,250}

\parindent=0pt
\parskip=6pt plus 2pt minus 2pt

\AtBeginDocument{%
  % Adjust equation spacing
  \addtolength\abovedisplayskip{-1\baselineskip}
  \addtolength\belowdisplayskip{-1\baselineskip}
}

\RequirePackage{mdframed}
\mdfdefinestyle{box1}{%
    linecolor=black,
    outerlinewidth=1pt,
    %roundcorner=20pt,
    innertopmargin=1\baselineskip,
    innerbottommargin=2\baselineskip,
    innerrightmargin=20pt,
    innerleftmargin=20pt,
    align=center,
    backgroundcolor=white}

\RequirePackage{graphicx}
\graphicspath{{./figures/}}
\RequirePackage{soulutf8}
\RequirePackage{xurl}
\urlstyle{same}

\newcommand*\circled[1]{\tikz[baseline=(char.base)]{%
            \node[shape=circle,fill=green0,inner sep=2.5pt] (char) {\color{white}#1};}}

\RequirePackage{enumitem}
\setlist[enumerate]{nosep,label=\arabic*.,itemsep=4pt,labelindent=!, leftmargin=*,
labelsep=3pt, before={\vspace{0\baselineskip}},align=left,after={\vspace{0.5\baselineskip}}}
\setlist[itemize,1]{nosep,itemsep=2pt,labelindent=!, leftmargin=*,%10mm,
before={\vspace{0.25\baselineskip}},after={\vspace{0.1\baselineskip}}}

\newlist{Cenumerate}{enumerate}{1} %
\setlist[Cenumerate]{nosep,label=\protect\circled{\arabic*.},itemsep=4pt,labelindent=!,
leftmargin=*, labelsep=3pt,
before={\vspace{0\baselineskip}},align=left,after={\vspace{0.5\baselineskip}}}

\newlist{Citemize}{itemize}{1} %
\setlist[Citemize]{nosep,itemsep=2pt,labelindent=!, leftmargin=*,%10mm,
before={\vspace{0.25\baselineskip}},after={\vspace{0.1\baselineskip}},
label=\raisebox{-0.4\height}{\scalebox{2.2}{\color{green1}\textbullet}}}

\RequirePackage{tikzpagenodes}
\RequirePackage{tikz}
\usetikzlibrary{tikzmark,positioning,fit,calc}
\usetikzlibrary{external}

\RequirePackage{calc}
\RequirePackage{array}
\def\mylengtht{\textwidth-2\tabcolsep-1.25\arrayrulewidth}
\def\mylengthc{\columnwidth-2\tabcolsep-1.25\arrayrulewidth}
\RequirePackage[explicit]{titlesec}%
\setcounter{secnumdepth}{3}
\setcounter{tocdepth}{2}

\titleformat{\chapter}[display]{\thispagestyle{e61note}\raggedright\color{green1}}{}{0pt}%
{\fontsize{25}{32}\selectfont#1~\thechapter}[]
\renewcommand\thechapter{}

\titlespacing*{\chapter}{0pt}{-52pt plus 6pt}{10pt plus 6pt minus 6pt}

\RequirePackage{multicol}



\addto\captionsgerman{% Replace "english" with the language you use
  \renewcommand{\contentsname}%
    {Contents}%
}

\titleformat{\section}
  {\color{green3}\fontsize{18pt}{22pt}\selectfont\normalfont}
  {\thesection.}%
  {0.5em}
  {#1}
  []
  %

\titleformat{name=\section,numberless}
  {\color{green3}\fontsize{18pt}{22pt}\selectfont\normalfont}
  {}%
  {0em}
  {#1}
  []
\renewcommand{\thesection}{\arabic{section}}

\titlespacing*{\section}
{0mm}{12pt plus 2pt minus 3pt}{1pt plus 1pt minus 1pt}[0pc]


\titleformat{\subsection}
  {\color{black}\fontsize{13pt}{15pt}\selectfont\bfseries}
  {\thesubsection}%
  {0.5em}
  {#1}
  []

\titleformat{name=\subsection,numberless}
  {\color{black}\fontsize{13pt}{15pt}\selectfont\bfseries}
  {}%
  {0em}
  {#1}
  []
\renewcommand{\thesubsection}{\thesection.\arabic{subsection}}


\titlespacing*{\subsection}
{0mm}{12pt plus 2pt minus 3pt}{0pt plus 0pt minus 0pt}[0pc]


\titleformat{\subsubsection}
  {\color{black}\fontsize{12pt}{14pt}\selectfont\itshape}
  {\thesubsubsection}%
  {0.5em}
  {#1}
  []
\renewcommand{\thesubsubsection}{\thesubsection.\arabic{subsubsection}}

\titlespacing*{\subsubsection}
{0mm}{12pt plus 2pt minus 3pt}{0pt plus 0pt minus 0pt}[0pc]

\titleformat{name=\subsubsection,numberless}
  {\color{black}\fontsize{12pt}{14pt}\selectfont\itshape}
  {}%
  {0em}
  {#1}
  []

\titleformat{\paragraph}
  {\color{black!70}\fontsize{10pt}{11pt}\selectfont\bfseries}
  {\theparagraph}%
  {0em}
  {#1}
  []

\titlespacing*{\paragraph}
{0mm}{12pt plus 2pt minus 3pt}{1pt plus 1pt minus 1pt}[0pc]


%----------------------------------------------------------------------------------------
%	TITLE
%----------------------------------------------------------------------------------------

\newcommand{\SubTitle}[1]{\def\@SubTitle{#1}}
\newcommand{\imagesource}[1]{{\parskip=0pt\baselineskip=13pt\fontsize{7pt}{9}\selectfont\par #1}}
% ---------------------------------------------------------------------
\renewcommand{\maketitle}{%
		\thispagestyle{empty}
\begin{tikzpicture}[remember picture,overlay]
%%%

\node[anchor=north west,rectangle,
minimum width=\textwidth,minimum height=40mm,
fill=green0]
(GB)at (current page text area.north west){};
%logo
\node[anchor=north east,inner sep=0]
(LOG)at ([xshift=-5mm,yshift=-3.5mm]GB.north east){\includegraphics[scale=1.0]{e61_logo1}};
%%%%%%SUBTITLE
\node[text width=115mm,inner sep=0pt,align=left,
text width=155mm,
anchor=west,font={\bfseries\color{white}\fontsize{9pt}{9}\selectfont},
](STIT)at ([xshift=5mm,yshift=-4mm]GB.north west)
{\@SubTitle};
%%%%%%AUTHOR
\node[text width=115mm,inner sep=0pt,align=left,
text width=155mm,
anchor=west,font={\bfseries\color{white}\fontsize{11pt}{11}\selectfont},
](AUT)at ([xshift=5mm,yshift=5mm]GB.south west)
{\@author};
%%%%%%TITLE
\node[inner sep=0pt,align=flush left,
text width=155mm,
anchor=west,font={\color{white}\fontsize{20pt}{24}\selectfont\Bebas}](TIT)
at($(STIT.south west)!0.5!(AUT.north west)$)
{\MakeUppercase{\@title}};
\end{tikzpicture}
\vspace{35mm}
}

\RequirePackage{fancyhdr}
\pagestyle{fancy}
\fancypagestyle{e61note}{%
\renewcommand{\headrulewidth}{0pt}
  \fancyhf{}%
%
\fancyfoot{%
\begin{tikzpicture}[remember picture,overlay]
\node[anchor=north west,rectangle,
minimum width=\textwidth,minimum height=9mm,
fill=gray1]
(FB)at (current page footer area.south west){};
\node[anchor=west,inner xsep=0pt]
at([xshift=1mm]FB.west) {\includegraphics[scale=1.0]{e61_logo2}};
\node[anchor=east,black,font={\fontsize{10pt}{10}\selectfont\Bebas},inner xsep=0pt]
at([xshift=-1mm]FB.east) {\@title};
\end{tikzpicture}}
}

\fancypagestyle{first}{%
\renewcommand{\headrulewidth}{0pt}
  \fancyhf{}%
\fancyfoot{%
\begin{tikzpicture}[remember picture,overlay]
\node[anchor=north,inner xsep=0pt]
at([yshift=0mm]current page footer area.south) {\thepage};
\end{tikzpicture}}
}

\RequirePackage[colorlinks,allcolors=blue]{hyperref} %

\renewcommand{\thefigure}{\arabic{figure}}
\renewcommand{\thetable}{\arabic{table}}
\renewcommand{\theequation}{\arabic{equation}}

\RequirePackage[many]{tcolorbox}

\newtcolorbox{Boxx}[1][]{%
enhanced, breakable,
detach title, before upper={\fontsize{10pt}{14}\selectfont\baselineskip=16pt},
colupper=black,colback=gray1,
boxrule=0pt,frame hidden,
left=3mm,right=3mm,
top=0mm,bottom=0mm,boxsep=2mm,arc=0mm,
#1}

\RequirePackage{footmisc}%[perpage]
\enlargethispage{\baselineskip}
\interfootnotelinepenalty=100000
%\interfootnotelinepenalty=\@M
%\widowpenalty-10000

%\setlength{\footnotesep}{4mm}
\setlength{\skip\footins}{5mm} %<------------ add this
\renewcommand{\footnoterule}{%
  \kern -3pt
  \hrule width 0.2\textwidth height 0.5pt
  \kern 5pt}

%\@addtoreset{footnote}{page}
\long\def\@makefntext#1{\parindent 1em\noindent
    \normalfont\@thefnmark~#1}% 

\renewcommand{\thefootnote}{\arabic{footnote}}

\RequirePackage{chngcntr}
\counterwithout{figure}{chapter}
\counterwithout{table}{chapter}
\counterwithout{footnote}{chapter}
%\counterwithout{section}{chapter}



%%%%
%APPENDIX
%%%%%

\let\oldappendix\appendix
\renewcommand{\appendix}{%\pagestyle{plain}%
\setcounter{page}{0}
\setcounter{figure}{0}\setcounter{table}{0}%
\counterwithin{figure}{chapter}%
\counterwithin{table}{chapter}%
  \oldappendix
\renewcommand\thechapter{\Alph{chapter}}%
\renewcommand\thesection{\thechapter.\arabic{section}}%
\def\@chapter[##1]##2{\thispagestyle{first}\refstepcounter{chapter}%
                      \if@twocolumn
                      %\@topnewpage[\@makechapterhead{##2}]%
                       \@makechapterhead{##2}%
                      %\@afterheading
                    \else
                      \@makechapterhead{##2}%
                      \@afterheading
                    \fi}
\newcommand{\section@cntformat}{\thesection\quad}%\appendixname~
\renewcommand\thefigure{\thechapter.\arabic{figure}}%
\def\@makechapterhead##1{\pagestyle{first}%
  \vspace*{0\p@}%
  {\begin{tikzpicture}[remember picture,overlay]
%%%
\node[anchor=north west,rectangle, minimum width=\textwidth,minimum
height=20mm, fill=green0] (AB)at (current page text area.north west){};
%logo
\node[anchor=east,inner sep=0] (LOG)at
([xshift=-5mm,yshift=1.0mm]AB.east){\includegraphics[scale=1.0]{e61_logo1}};
\node[inner sep=0pt,align=flush left,
text width=150mm,xshift=4mm,
anchor=west,font={\color{white}\Bebas\fontsize{19pt}{22}\selectfont}](TIT)
at($(AB.south west)!0.5!(AB.north west)$){APPENDIX:~\MakeUppercase{##1}};
\end{tikzpicture}
    \par\nobreak
    \vskip 40\p@
  }}
}

%%


\endinput
