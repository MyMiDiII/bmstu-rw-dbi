\NeedsTeXFormat{LaTeX2e}

\ProvidesClass{bmstu-pr}

\LoadClass[aspectratio=169]{beamer}
\RequirePackage[orientation=landscape,size=custom,
                width=25.5,height=14.34,scale=1,debug]{beamerposter}
\beamertemplatenavigationsymbolsempty
\setbeamertemplate{footline}{
  \hfill%
  \usebeamercolor[fg]{page number in head/foot}%
  \usebeamerfont{page number in head/foot}%
  \setbeamertemplate{page number in head/foot}[framenumber]%
  \usebeamertemplate*{page number in head/foot}\kern1em\vskip10pt%
}
\setbeamerfont{page number in head/foot}{size=\footnotesize}
\setbeamersize{
    text margin right=20pt,
    text margin left=20pt
}

\RequirePackage[T1, T2A]{fontenc}
\RequirePackage[utf8]{inputenc}
\RequirePackage[english,main=russian]{babel}
\RequirePackage{pscyr}
\renewcommand{\rmdefault}{ftm}

\newcommand{\titleheader}[0]
{
	\noindent
    \begin{minipage}{\textwidth}
        \begin{minipage}{0.10\textwidth}
            \includegraphics[width=\linewidth]{bmstu-logo}
        \end{minipage}
        \fontsize{13pt}{13pt}\selectfont
        \noindent
        \begin{minipage}{0.90\textwidth}\centering
            \linespread{1.1}\selectfont
            \textbf{Министерство науки и высшего образования Российской
                    Федерации}\\
            \textbf{Федеральное государственное бюджетное образовательное
                    учреждение высшего образования}\\
            \textbf{«Московский государственный технический университет имени
                    Н.Э.~Баумана}\\
            \textbf{(национальный исследовательский университет)»}\\
            \textbf{(МГТУ им. Н.Э.~Баумана)}
        \end{minipage}
    \end{minipage}
}

\newcommand{\centertext}[1]
{
    \begin{minipage}{\textwidth}
        \fontsize{24pt}{24pt}\selectfont
        \centering\textbf{#1}
    \end{minipage}
}

\newcommand{\prtitle}[4]
{
    \begin{frame}
        \titleheader

        \vspace{3cm}

        \centertext{#1}

        \vspace{3cm}

        \fontsize{15pt}{15pt}\selectfont
        Студент: \textbf{#2 #3}

        Руководитель: \textbf{#4}
    \end{frame}
}
