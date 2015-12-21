\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{jcst}[2015/12/18 Journal of Computer Science And Technology class]

\LoadClass[twocolumn,10pt,a4paper]{article}
\RequirePackage{etoolbox}


% General format
\RequirePackage{microtype} % better font kerning
\RequirePackage{lmodern} % better font

\pagenumbering{gobble} % remove page numbering
\RequirePackage[margin=2.5cm]{geometry}

% Title
% bold and large title
\title{\Large\bfseries\fontsize{18}{18}\selectfont\centering\@testTitle}
\renewcommand*{\title}[1]{\def\@testTitle{#1}}
\date{} % remove date


% affiliations
\RequirePackage{authblk}
\setcounter{Maxaffil}{0}
\renewcommand\Affilfont{\itshape\small}
\newcommand{\affiliation}[2]{ #1 \\ \smallskip #2}
%    #1 {\large\textperiodcentered} #2

% keywords and reception sections
\newcommand{\keywords}[1]{ \medskip \noindent \textbf{Keywords:} #1 }
\newcommand{\reception}[1]{\medskip \noindent #1 \medskip}

\setlength{\columnsep}{1cm}

%Subsection names and formats
\RequirePackage{sectsty}
\newcommand{\acknowledgements}[1]{\section*{Acknowledgements}
#1}
%\sectionfont{\fontsize{10}{12}\selectfont\MakeUppercase}
\setcounter{secnumdepth}{2} % don't put numbers on subsubsections


%bibliography style
\bibliographystyle{ieeetr}

% SPECIFIC TWEAKS
%tables
\RequirePackage{booktabs}
\newcommand {\otoprule }{\midrule [\heavyrulewidth ]} %better tables

%graphics
\RequirePackage{graphicx}

% math
\RequirePackage{amsmath}
\RequirePackage{amsthm}
\RequirePackage{amssymb}
