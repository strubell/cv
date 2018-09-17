%%
%% Daniel Cousineau's Resume LaTeX Class
%% (c) 2009 Daniel Cousineau
%% Licensed under the MIT license
%%
\NeedsTeXFormat{LaTeX2e}[1994/12/01]
\ProvidesClass{resume}

\LoadClass[letterpaper, oneside, final, 11pt]{scrartcl}

\usepackage[letterpaper,left=0.85in,top=0.90in,right=0.85in,bottom=1.15in]{geometry}
\usepackage{setspace}

\RequirePackage{scrpage2,titlesec,marvosym,soul,tabularx,lastpage}

%%
%% Page Setup
%%

\pagestyle{scrheadings}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% HEADING COMMANDS %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%
%% NAME
%%
\newcommand{\name}[1]{
	\title{#1's Resum$\acute{e}$}
	\author{#1}
	\begin{center}
    	\textsc{ \Large{ \so{#1} } }
    \end{center}
}

\newcommand{\email}[1]{
    \author{#1}
    \begin{center}
        \textsc{ \small{ \so{#1} } }
    \end{center}
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% FOOTER COMMANDS %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%
%% EMAIL
%%
\newcommand{\footeremail}[1]{{\large\Letter} \href{mailto:#1}{\so{#1}}}

%%
%% PHONE
%%
\newcommand{\footerphone}[1]{{\large\Telefon} \small{\so{#1}}}

%%
%% BLOG/LINK
%%
\newcommand{\footerlink}[1]{{\large\ComputerMouse} \href{#1}{\small{\so{#1}}}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% SECTION COMMANDS %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\titleformat{\section}{\large\scshape\raggedright}{}{0em}{}[\titlerule]

%%
%%
%%
\newcommand{\stdtable}[1]{\begin{tabularx}{1.00\linewidth}{>{\raggedleft\scshape}p{0.5cm}X}
#1
\end{tabularx}}

\newcommand{\stdtabletwo}[1]{\begin{tabularx}{1.00\linewidth}{>{\raggedleft\scshape}p{2.0cm}X}
#1
\end{tabularx}}

%%
%% \employer{NAME}{WEBSITE}{DATE}{TITLE}{DESCRIPTION}
%%
\newcommand{\employer}[4]{\begin{tabularx}{1.00\linewidth}{>{\raggedleft\scshape}p{0.5cm}X}
          & #1 \hfill #2\\ 

       & #3 \\
\end{tabularx}}

\newcommand{\oldemployer}[2]{\begin{tabularx}{1.00\linewidth}{>{\raggedleft\scshape}p{0.5cm}X}
          & #1 \hfill #2 

\end{tabularx}}


%%
%% \project{NAME}{WEBSITE}{ROLE}{DETAILS}
\newcommand{\project}[4]{\begin{tabularx}{1.00\linewidth}{>{\raggedleft\scshape}p{2cm}X}
    Project    & #1 \hfill \href{#2}{#2}\\
    Role       & #3\\
    Details    & #4\\
\end{tabularx}}