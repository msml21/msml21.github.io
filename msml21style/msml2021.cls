\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{msml2021}[2019/07/25 v0.1 MSML 2021 Proceedings]

\@ifundefined{ifanonsubmission}{
  \newif\ifanonsubmission
  \anonsubmissionfalse
}{}

\@ifundefined{iffinalsubmission}{
  \newif\iffinalsubmission
  \finalsubmissionfalse
}{}

\DeclareOption{anon}{\anonsubmissiontrue}
\DeclareOption{final}{\finalsubmissiontrue}
\ProcessOptions\relax

\LoadClass[pmlr]{jmlr}

\jmlrvolume{vol 145}
\jmlryear{2021}
\jmlrproceedings{PMLR}{Proceedings of Machine Learning Research}

\ifanonsubmission
 \newcommand{\msmlauthor}[1]{}
 \author{author names withheld}
 \editor{Under Review for MSML 2021}
 \jmlrworkshop{2nd Annual Conference on Mathematical and Scientific Machine Learning}
 \renewcommand{\acks}[1]{}
\else
 \newcommand{\msmlauthor}[1]{\author{#1}}
 \iffinalsubmission
  \editors{Joan Bruna, Jan S Hesthaven, Lenka Zdeborova}
  \jmlrworkshop{2nd Annual Conference on Mathematical and Scientific Machine Learning}
 \fi
\fi



