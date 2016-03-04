%%
%% JCST.cls 2016/02/25 version v1.1
%%
%% This is the JCST LaTeX class for authors of the Journal of
%% Computer Science and Technology (http://journal.info.unlp.edu.ar)
%%
%%
%% Contributors:
%% Facundo Quiroga (2015)
%% Enzo Rucci (2015-2016)
%%

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{jcst}[2016/02/25 Journal of Computer Science and Technology class]

\LoadClass[twocolumn,10pt,a4paper]{article}
\RequirePackage{etoolbox}
\RequirePackage{flushend}

% General format
\RequirePackage{microtype} % better font kerning
\RequirePackage{lmodern} % better font

\pagenumbering{gobble} % remove page numbering
\RequirePackage[a4paper, margin=2.5cm, headheight=0pt, headsep=0pt,  footskip=0pt]{geometry}

% Title
% bold and large title
\title{\Large\bfseries\fontsize{18}{18}\selectfont\centering\vspace{-1cm}\@testTitle}
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
\sectionfont{\fontsize{12}{12}\selectfont\bfseries}
\subsectionfont{\fontsize{11}{11}\selectfont}
\subsubsectionfont{\fontsize{10}{10}\selectfont}
\newcommand{\acknowledgements}[1]{\section*{Acknowledgements}
#1}
%\sectionfont{\fontsize{10}{12}\selectfont}
\setcounter{secnumdepth}{3} % put numbers till subsubsections



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
