%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{homework}

\LoadClass{article}

\RequirePackage[margin=1in]{geometry} 
\RequirePackage{amsmath,amsthm,amssymb,amsfonts}
\RequirePackage{color}
\RequirePackage{comment}
\RequirePackage{fancyhdr}
\RequirePackage{graphicx}
\RequirePackage{environ}
\RequirePackage{dsfont}
\RequirePackage{centernot}
\RequirePackage{esint}
\RequirePackage{xcolor}
\RequirePackage{mathrsfs}
\RequirePackage{mdframed}
\RequirePackage[shortlabels]{enumitem}
\RequirePackage{indentfirst}
\RequirePackage{hyperref}
\RequirePackage{bookmark}
\RequirePackage{mathtools}
\RequirePackage{scalerel}
\RequirePackage{import}
\RequirePackage{pdfpages}
\RequirePackage{transparent}
\RequirePackage{xcolor}

\RequirePackage{caption}
\captionsetup{labelformat=empty}%% for better captioning

\RequirePackage{booktabs} %% for top/bottomrule


\newcommand{\incfig}[2][1]{%
        \def\svgwidth{#1\columnwidth}
            \import{./figures/}{#2.pdf_tex}
        }

        \pdfsuppresswarningpagegroup=1
\hypersetup{
    colorlinks=true,
    linkcolor=blue,
    filecolor=magenta,      
    urlcolor=blue,
}

%\setlist[enumerate]{topsep=0pt}
\setlist[1]{labelindent=\parindent} % < Usually a good idea


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


\newtheorem{theorem}{Theorem}
\newtheorem{corollary}[theorem]{Corollary}
\newtheorem{lemma}[theorem]{Lemma}
\newtheorem{proposition}[theorem]{Proposition}

\theoremstyle{definition}
\newtheorem{remark}[theorem]{Remark}
\newtheorem{example}[theorem]{Example}
\newtheorem{definition}[theorem]{Definition}


\pagestyle{fancy}


\newenvironment{problem}[2][Problem]
    { \begin{mdframed}[backgroundcolor=gray!20] \textbf{#1 #2}}
    {  \end{mdframed}}

% Define solution environment
\newenvironment{prf}[1]
    {\textit{#1}}
    {\hfill\qedsymbol}
\newenvironment{solution}
    {\textit{Solution:}}
    {}
\renewcommand{\qed}{\quad\qedsymbol}

% prevent line break in inline mode
%\binoppenalty=\maxdimen
%\relpenalty=\maxdimen

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% math operators and optional shortcuts

\DeclareMathOperator{\lcm}{lcm}
\DeclareMathOperator{\Mat}{Mat}
\DeclareMathOperator{\End}{End}
\DeclareMathOperator{\Hom}{Hom}
\DeclareMathOperator{\id}{id}
\DeclareMathOperator{\image}{im}
\DeclareMathOperator{\Imag}{Imag}
\DeclareMathOperator{\rank}{rank}
\DeclareMathOperator{\nullity}{nullity}
\DeclareMathOperator{\trace}{tr}
\DeclareMathOperator{\Spec}{Spec}
\DeclareMathOperator{\Sym}{Sym}
\DeclareMathOperator{\pf}{pf}
\DeclareMathOperator{\Ortho}{O}
\DeclareMathOperator{\Dom}{Dom}
\DeclareMathOperator{\arcsinh}{arcsinh}
\DeclareMathOperator{\arccosh}{arccosh}
\DeclareMathOperator{\arctanh}{arctanh}
\DeclareMathOperator{\arccsch}{arccsch}
\DeclareMathOperator{\arcsech}{arcsech}
\DeclareMathOperator{\arccoth}{arccoth}
\DeclareMathOperator{\sla}{\mathfrak{sl}}

\DeclareMathOperator{\GL}{GL}
\DeclareMathOperator{\SL}{SL}

\DeclarePairedDelimiter{\floor}{\lfloor}{\rfloor}
\DeclarePairedDelimiter{\ceil}{\lceil}{\rceil}
\DeclarePairedDelimiter{\abs}{\lvert}{\rvert}
\DeclareMathOperator*{\iter}{\scalerel*{|}{\sum}}

\newcommand{\norm}[1]{\left\lVert#1\right\rVert}
\newcommand{\transpose}{\intercal}


\newcommand{\sol}[1]{\begin{proof}[Solution]#1\end{proof}}
\newcommand{\prff}[1]{\begin{proof}#1\end{proof}}

% better looking font for mathbb

\let\mathbb\mathds
\let\mc\mathcal
\newcommand{\Z}{\mathds{Z}}
\newcommand{\N}{\mathds{N}}
\newcommand{\R}{\mathds{R}}
\newcommand{\Q}{\mathds{Q}}
\newcommand{\C}{\mathds{C}}
\newcommand{\cS}{\mathcal{S}}
\newcommand{\D}{\mathcal{D}}



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\def\course#1{\def\@course{#1}}
\def\homework#1{\def\@homework{#1}}

% Change this as necessary
\@ifundefined{@course}{\def\@course{MATH1530}}
%\@ifundefined{@homework}{\def\@homework{i}}

\rhead{\@course} 
\chead{\textbf{Problem Set \@homework}}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
