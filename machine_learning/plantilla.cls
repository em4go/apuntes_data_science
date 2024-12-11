\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{plantilla}[2024/11/21 Clase personalizada con ajustes]

% --- Default Class Options ---
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{book}}
\ProcessOptions\relax

% --- Base Class ---
\LoadClass[12pt,openany]{book}

% --- Required Packages ---
\RequirePackage{fontspec}
\RequirePackage{polyglossia}
\setdefaultlanguage{spanish} % Idioma principal
\setotherlanguage{english} % Idioma adicional (opcional)
\RequirePackage[backend=bibtex,style=ieee]{biblatex}
\RequirePackage{amsmath,amssymb,exscale, cancel}
\RequirePackage{unicode-math}
\RequirePackage{listings}
\RequirePackage{graphicx}
\RequirePackage{fancyhdr}
\RequirePackage{titlesec}
\RequirePackage{hyperref}
\RequirePackage{geometry}
\RequirePackage{enumitem}
\RequirePackage[dvipsnames]{xcolor}
\RequirePackage{tcolorbox}
\RequirePackage{float}
% \RequirePackage[spanish]{babel}
\RequirePackage{csquotes}
\RequirePackage{tikz}
\usetikzlibrary{arrows.meta, calc, positioning, shapes.geometric}
% \AtBeginEnvironment{tikzpicture}{\shorthandoff{:}}


% --- Fonts Configuration ---
\setmainfont{Noto Serif}
\setmathfont{XITS Math}
\setmonofont{Cascadia Code}[
    Contextuals=Alternate,
    Scale=0.9
]

% --- Custom Colors ---
\definecolor{coverblue}{HTML}{00baa7} % Dark blue for background
\definecolor{red}{HTML}{662549} % granate
\definecolor{green}{HTML}{57a5a0} % verde azulado
\definecolor{purple}{HTML}{C2A6D8} % lila pastel
\definecolor{blue}{HTML}{92C7CF} % azul pastel
\definecolor{navy}{HTML}{2E3A59} % azul marino
\definecolor{pink}{HTML}{F0687B} % rosa coral
\definecolor{orange}{HTML}{F3B664} % naranja pastel
\definecolor{yellow}{HTML}{FED976} % amarillo pastel
\definecolor{cream}{HTML}{f2f3f7} % cerca del blanco

% Definición de colores Catppuccin Mocha
\definecolor{catppuccinRosewater}{HTML}{f5e0dc}
\definecolor{catppuccinFlamingo}{HTML}{f2cdcd}
\definecolor{catppuccinPink}{HTML}{f5c2e7}
\definecolor{catppuccinMauve}{HTML}{cba6f7}
\definecolor{catppuccinRed}{HTML}{f38ba8}
\definecolor{catppuccinMaroon}{HTML}{eba0ac}
\definecolor{catppuccinPeach}{HTML}{fab387}
\definecolor{catppuccinYellow}{HTML}{f9e2af}
\definecolor{catppuccinGreen}{HTML}{a6e3a1}
\definecolor{catppuccinTeal}{HTML}{94e2d5}
\definecolor{catppuccinSky}{HTML}{89dceb}
\definecolor{catppuccinSapphire}{HTML}{74c7ec}
\definecolor{catppuccinBlue}{HTML}{89b4fa}
\definecolor{catppuccinLavender}{HTML}{b4befe}
\definecolor{catppuccinText}{HTML}{cdd6f4}
\definecolor{catppuccinSubtext1}{HTML}{bac2de}
\definecolor{catppuccinSubtext0}{HTML}{a6adc8}
\definecolor{catppuccinOverlay2}{HTML}{9399b2}
\definecolor{catppuccinOverlay1}{HTML}{7f849c}
\definecolor{catppuccinOverlay0}{HTML}{6c7086}
\definecolor{catppuccinSurface2}{HTML}{585b70}
\definecolor{catppuccinSurface1}{HTML}{45475a}
\definecolor{catppuccinSurface0}{HTML}{313244}
\definecolor{catppuccinBase}{HTML}{1e1e2e}
\definecolor{catppuccinMantle}{HTML}{181825}
\definecolor{catppuccinCrust}{HTML}{11111b}

% --- Listings Configuration ---
\lstset{
    backgroundcolor=\color{catppuccinBase},
    basicstyle=\ttfamily\color{catppuccinText},
    keywordstyle=\color{catppuccinMauve}\bfseries,
    commentstyle=\color{catppuccinGreen},
    stringstyle=\color{catppuccinPeach},
    numberstyle=\color{catppuccinOverlay1},
    numbers=left,
    numbersep=15pt,
    frame=none,
    xleftmargin=35pt,
    framexleftmargin=35pt,
    breaklines=true,
    showstringspaces=false,
    keepspaces=true,
    columns=fullflexible
}
    
% --- Page Margins ---
\geometry{margin=1in}

% --- No Paragraph Indentation ---
\setlength{\parindent}{0pt}
\setlength{\parskip}{1\baselineskip}

% --- List Formatting ---
\setlist[itemize]{topsep=0pt, partopsep=0pt, parsep=0pt, itemsep=0.5\baselineskip}
\setlist[enumerate]{topsep=0pt, partopsep=0pt, parsep=0pt, itemsep=0.5\baselineskip}

% --- Headers and Footers ---
\pagestyle{fancy}
\fancyhf{}
\fancyhead[L]{\textcolor{navy}{\leftmark}}
\fancyhead[R]{\textcolor{navy}{\studentName}}
\fancyfoot[C]{\textcolor{navy}{\thepage}}
\AtBeginDocument{
    \color{navy}
}

% --- Section Formatting ---
\titleformat{\chapter}{\LARGE\bfseries\color{navy}}{\thechapter}{1em}{}
\titleformat{\section}{\Large\bfseries\color{navy}}{\thesection}{1em}{}
\titleformat{\subsection}{\normalsize\bfseries\color{navy}}{\thesubsection}{1em}{}

\titlespacing*{\chapter}{0pt}{20pt}{10pt}
\titlespacing*{\section}{0pt}{12pt}{6pt}
\titlespacing*{\subsection}{0pt}{10pt}{5pt}

% --- Cover Page Command ---
\newcommand{\coverpage}[2]{
    \newgeometry{top=1cm, left=1cm, right=1cm, bottom=1in}
    \begin{titlepage}
        \centering
        \vspace*{3.5cm}
        \begin{tcolorbox}[
            colback=coverblue,
            colframe=coverblue,
            width=1\textwidth,
            boxrule=0mm,
            arc=3mm,
            boxsep=5mm,
            left=5mm
        ]
            \raggedright
            \fontsize{64}{78}\selectfont
            \bfseries\textcolor{white}{#1}
        \end{tcolorbox}
        \vspace{-1.5cm}
        \includegraphics[width=0.9\textwidth]{#2}
        \vfill
        \hfill \Large\bfseries\sffamily \studentName
    \end{titlepage}
    \restoregeometry
}

% --- Custom Environments ---
\newtcolorbox{definitionbox}[2][]{%
    colback=cream,
    colframe=blue,
    coltitle=black,
    fonttitle=\bfseries,
    title=\textbf{#2},
    boxrule=0.5mm,
    #1
}

\newtcolorbox{examplebox}[2][]{%
    colback=cream,
    colframe=green,
    coltitle=cream,
    fonttitle=\bfseries,
    title=\textbf{#2},
    boxrule=0.5mm,
    #1
}

\newtcolorbox{theorembox}[2][]{%
    colback=cream,
    colframe=purple,
    coltitle=black,
    fonttitle=\bfseries,
    title=\textbf{#2},
    boxrule=0.5mm,
    #1
}

\newtcolorbox{exercisebox}[2][]{%
    colback=cream,
    colframe=orange,
    coltitle=black,
    fonttitle=\bfseries,
    title=\textbf{#2},
    boxrule=0.5mm,
    #1
}
\endinput
