\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{gmcmthesis}
              [2020/09/09 v2.2 update  https://github.com/zhanwen/MathModel]
%% Inital Code 
\newif\if@gmcm@bwprint\@gmcm@bwprintfalse
\newif\if@gmcm@preface\@gmcm@prefacetrue
% tokens definition
%%%% 承诺书
\newcommand\gmcm@tokens@keywords{}
\newcommand*\gmcm@tokens@tihao{}
\newcommand*\gmcm@tokens@baominghao{}
\newcommand*\gmcm@tokens@schoolname{}
\newcommand*\gmcm@tokens@membera{}
\newcommand*\gmcm@tokens@memberb{}
\newcommand*\gmcm@tokens@memberc{}
\newcommand*\gmcm@tokens@supervisor{}
\newcommand*\gmcm@tokens@yearinput{}
\newcommand*\gmcm@tokens@monthinput{}
\newcommand*\gmcm@tokens@dayinput{}
%%%% 编号专用页
% 没有
%% Declaration of Options 
\DeclareOption{colorprint}{\@gmcm@bwprintfalse}
\DeclareOption{bwprint}{\@gmcm@bwprinttrue}
\DeclareOption{withoutpreface}{\@gmcm@prefacefalse}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{ctexart}}
%% Executing of Options
\ExecuteOptions{colorprint}
\ProcessOptions\relax
\LoadClass[a4paper,zihao=-4]{ctexart}
%% Loading Package
\RequirePackage{ifxetex}
\RequireXeTeX
\ifxetex\else
\ClassError{mcmthesis}{You must use the `xelatex' driver\MessageBreak Please choose `xelatex'}{%
Just choose `xelatex', no `pdflatex' or `latex' and so on.}
\fi
% 页面布局
\RequirePackage{geometry}
% 数学宏包
\RequirePackage{amsmath}
\RequirePackage{amsfonts}
\RequirePackage{amssymb}
\RequirePackage{bm}
% 设置颜色
\RequirePackage{xcolor}
% 插入图片
\RequirePackage{graphicx} 
% 表格
\RequirePackage{tabularx,array}
%% 长表格
\RequirePackage{longtable}
%% booktabs 提供了\toprule 等命令.
\RequirePackage{booktabs}
%% multirow 支持在表格中跨行
\RequirePackage{multirow}
%% 调整间隔, 让表格更好看些
\RequirePackage{bigstrut}
%% 在跨行表格中输入定界符
\RequirePackage{bigdelim}
% 保护脆弱命令
\RequirePackage{cprotect}
% 设置代码环境
\RequirePackage{listings}

\definecolor{dkgreen}{rgb}{0,0.6,0}
\definecolor{gray}{rgb}{0.5,0.5,0.5}
\definecolor{mauve}{rgb}{0.58,0,0.82}

\lstset{
  frame=tb,
  aboveskip=3mm,
  belowskip=3mm,
  showstringspaces=false,
  columns=flexible,
  framerule=1pt,
  rulecolor=\color{gray!35},
  backgroundcolor=\color{gray!5},
  basicstyle={\small\ttfamily},
  numbers=none,
  numberstyle=\tiny\color{gray},
  keywordstyle=\color{blue},
  commentstyle=\color{dkgreen},
  stringstyle=\color{mauve},
  breaklines=true,
  breakatwhitespace=true,
  tabsize=3,
}
% 首行缩进
\RequirePackage{indentfirst}
% 设置浮动体的标题
\RequirePackage{caption}
% 定制列表环境
\RequirePackage{enumitem}
% 下划线 
\RequirePackage{ulem}
% 尺寸计算
\RequirePackage{calc}
\RequirePackage{titletoc,url}
%参考文献
%\RequirePackage[numbers]{natbib}
%\setlength{\bibsep}{0pt plus 0.3ex}
\renewenvironment{thebibliography}[1]
     {%\section*{\refname}%
      \@mkboth{\MakeUppercase\refname}{\MakeUppercase\refname}%
      \list{\@biblabel{\@arabic\c@enumiv}}%
           {\settowidth\labelwidth{\@biblabel{#1}}%
            \leftmargin\labelwidth
            \advance\leftmargin\labelsep
            \@openbib@code
            \usecounter{enumiv}%
            \let\p@enumiv\@empty
            \renewcommand\theenumiv{\@arabic\c@enumiv}}%
      \sloppy
      \clubpenalty4000
      \@clubpenalty \clubpenalty
      \widowpenalty4000%
      \sfcode`\.\@m}
     {\def\@noitemerr
       {\@latex@warning{Empty `thebibliography' environment}}%
      \endlist} 


\RequirePackage{etoolbox}
% \AtBeginEnvironment{thebibliography}{%
%     \phantomsection
%     \addcontentsline{toc}{section}{\refname}
%     }
% 超链接 hyperref 的设置
\RequirePackage{hyperref}
%% Document Layout
% 页面布局
\geometry{a4paper,top=30.0mm,bottom=20.0mm,left=22.5mm,right=22.5mm,headsep=8mm,footskip=12mm}
\renewcommand*{\baselinestretch}{1}
% 修改tabular 环境, 设置表格中的行间距为正文行间距.
\let\gmcm@oldtabular\tabular
\let\gmcm@endoldtabular\endtabular
\renewenvironment{tabular}%
  {\bgroup%
  \renewcommand{\arraystretch}{1.38}%
  \gmcm@oldtabular}%
  {\gmcm@endoldtabular\egroup}
% 每行缩进两个汉字
\setlength\parindent{2em}
% 设置字体
\setmainfont{Times New Roman}
\setmonofont{Courier New}
\setsansfont{Arial}
\setCJKmainfont[AutoFakeBold = {2.15},ItalicFont={KaiTi.ttf}]{SimSun.ttf}
\setCJKfamilyfont{xw}{STXinwei.ttf}
\setCJKfamilyfont{zhli}{LiSu.ttf}
\def\lishu{\CJKfamily{zhli}}
\def\xinwei{\CJKfamily{xw}}

% 页脚页码样式：居中五号 Times New Roman
\def\ps@plain{%
  \let\@mkboth\@gobbletwo
  \let\@oddhead\@empty
  \def\@oddfoot{\normalfont\zihao{5}\rmfamily\hfil\thepage\hfil}%
  \let\@evenhead\@empty
  \let\@evenfoot\@oddfoot
}

 
% 数学环境, 定理等设置
\newtheorem{definition}{\gmcm@cap@definition}
\newtheorem{theorem}{\gmcm@cap@theorem}
\newtheorem{lemma}{\gmcm@cap@lemma}
\newtheorem{corollary}{\gmcm@cap@corollary}
\newtheorem{assumption}{\gmcm@cap@assumption}
\newtheorem{conjecture}{\gmcm@cap@conjecture}
\newtheorem{axiom}{\gmcm@cap@axiom}
\newtheorem{principle}{\gmcm@cap@principle}
\newtheorem{problem}{\gmcm@cap@problem}
\newtheorem{example}{\gmcm@cap@example}
\newtheorem{proof}{\gmcm@cap@proof}
\newtheorem{solution}{\gmcm@cap@solution}

% 浮动环境设置
% 默认情况下, \LaTeX{} 要求每页的文字至少占据 20%,否则该页就只单独放置一个浮动环境,
% 而这通常不是我们想要的, 我们将这个要求降低到 5%.
 \renewcommand*{\textfraction}{0.05}
% 有时如果多个浮动环境连续放在一起, \LaTeX{}
% 会将它们分在几个不同页，即使它们可在同一页放
% 得下. 我们可以通过修改 |\topfraction| 和 |\bottomfraction| 分别设置顶端和底端的浮
% 动环境的最大比例.
 \renewcommand*{\topfraction}{0.9}
 \renewcommand*{\bottomfraction}{0.8}
% 有时\LaTeX{}会把一个浮动环境单独放在一页,
% 我们要求这个环境至少要占据 85% 才能单独放在一页.
% 注意:  |\floatpagefraction| 的数值必须小于 |\topfraction|.
 \renewcommand*{\floatpagefraction}{0.85}
% 关于图片 graphicx
 % 如果图片没有指定后缀, 依次按下列顺序搜索
\DeclareGraphicsExtensions{.pdf,.eps,.jpg,.png}
 % 设置图表搜索路径, 可以给图表文件夹取如下名字
\graphicspath{{figures/}{figure/}{pictures/}%
  {picture/}{pic/}{pics/}{image/}{images/}}
% 图表标题
\DeclareCaptionFont{song}{\songti}
\DeclareCaptionFont{minusfour}{\zihao{-4}}
\captionsetup[figure]{%
  format=hang,   % 标题从第二行开始都有缩进, 应该和 justification=raggedright 的效果一样.
  labelsep=quad, % 分隔符是一个空格
  font={song,minusfour,bf}, % 图的字体, 宋体小四
  position=bottom % position=bottom, 不代表标题放在下面, 标题仍放在你放\caption的位置.
}
\captionsetup[table]{%
  format=hang,   % 标题从第二行开始都有缩进, 应该和 justification=raggedright 的效果一样.
  labelsep=quad, % 分隔符是一个空格
  font={song,minusfour,bf}, % 表的字体, 宋体小四
  position=top % position=bottom, 不代表标题放在下面, 标题仍放在你放\caption的位置.
}
% 列表环境设置
\setlist{%
  topsep=0.3em, % 列表顶端的垂直空白
  partopsep=0pt, % 列表环境前面紧接着一个空白行时其顶端的额外垂直空白
  itemsep=0ex plus 0.1ex, % 列表项之间的额外垂直空白
  parsep=0pt, % 列表项内的段落之间的垂直空白
  leftmargin=1.5em, % 环境的左边界和列表之间的水平距离
  rightmargin=0em, % 环境的右边界和列表之间的水平距离
  labelsep=0.5em, % 包含标签的盒子与列表项的第一行文本之间的间隔
  labelwidth=2em % 包含标签的盒子的正常宽度；若实际宽度更宽，则使用实际宽度。
}

% 超链接
% \AtBeginDocument{%
   \hypersetup{%
    % % unicode=false, % hyperref 和 xetex 同时使用时不能开启 Unicode 选项.
     hyperfootnotes=true,
     hyperindex=true,
     colorlinks=true,
     bookmarksnumbered=true,
     bookmarksopen=true,
     bookmarksopenlevel=0,
     allcolors=black,
     breaklinks=true}%
% }
% \if@gmcm@bwprint
% \AtBeginDocument{\hypersetup{hidelinks}}
% \else\relax\fi
\def\UrlAlphabet{%
      \do\a\do\b\do\c\do\d\do\e\do\f\do\g\do\h\do\i\do\j%
      \do\k\do\l\do\m\do\n\do\o\do\p\do\q\do\r\do\s\do\t%
      \do\u\do\v\do\w\do\x\do\y\do\z\do\A\do\B\do\C\do\D%
      \do\E\do\F\do\G\do\H\do\I\do\J\do\K\do\L\do\M\do\N%
      \do\O\do\P\do\Q\do\R\do\S\do\T\do\U\do\V\do\W\do\X%
      \do\Y\do\Z}
\def\UrlDigits{\do\1\do\2\do\3\do\4\do\5\do\6\do\7\do\8\do\9\do\0}
\g@addto@macro{\UrlBreaks}{\UrlOrds}
\g@addto@macro{\UrlBreaks}{\UrlAlphabet}
\g@addto@macro{\UrlBreaks}{\UrlDigits}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Document Markup

% 生成封面, 使用\maketitle
\renewcommand{\maketitle}{\par
  \begingroup
      \newpage
      \global\@topnum\z@ % Prevents figures from going at top of page.
      \ge@maketitle      %
    \endgroup
  \global\let\thanks\relax
  \global\let\maketitle\relax
  \global\let\@maketitle\relax
  \global\let\@thanks\@empty
  \global\let\@author\@empty
  \global\let\@date\@empty
  \global\let\@title\@empty
  \global\let\title\relax
  \global\let\author\relax
  \global\let\date\relax
  \global\let\and\relax
}
\def\ge@maketitle{%
  \newpage
  \if@gmcm@preface
  \setcounter{page}{0}
  \thispagestyle{empty}%
  \begin{center}
  \vskip -0.15cm
  {\includegraphics[width=12.8cm]{logo2026.png}\par}
  
  \vskip 1.7cm
  {\includegraphics[width=12.2cm]{title2026.pdf}\par}
  \end{center}
  
  \vskip 1.8cm
  
  \begin{center}
  \setlength{\arrayrulewidth}{1.0pt}
  \begin{tabular}{@{}p{3.25cm}p{11.5cm}@{}}
   \zihao{-2}\songti\bfseries\makebox[4\ccwd][s]{学\ 校} & \zihao{-2}\songti\bfseries \gmcm@tokens@schoolname\rule[-12pt]{0pt}{32pt} \\
   \specialrule{1.5pt}{0pt}{4pt}
   \zihao{-2}\songti\bfseries 参赛队号 & \zihao{-2}\songti\bfseries \gmcm@tokens@baominghao\rule[-22pt]{0pt}{56pt} \\
   \specialrule{1.5pt}{0pt}{4pt}
   \multirow{3}{=}{\vspace{1.0em}\zihao{-2}\songti\bfseries 队员姓名} & \zihao{-2}\songti\bfseries 1. \gmcm@tokens@membera\rule[-7pt]{0pt}{25pt} \\
   \cline{2-2}
    & \zihao{-2}\songti\bfseries 2. \gmcm@tokens@memberb\rule[-7pt]{0pt}{25pt} \\
   \cline{2-2}
    & \zihao{-2}\songti\bfseries 3. \gmcm@tokens@memberc\rule[-7pt]{0pt}{25pt} \\
   \specialrule{1.5pt}{0pt}{0pt}
  \end{tabular}
  \end{center}
  
  \vfill
  \fi
  \makenametitle
}

\def\gmcm@print@title{%
  \ifx\@title\@empty
    \underline{\hspace{11.5cm}}%
  \else
    \settowidth{\@tempdima}{\zihao{3}\heiti \@title}%
    \ifdim\@tempdima<11.5cm
      \underline{\makebox[11.5cm][c]{\zihao{3}\heiti \@title}}%
    \else
      \underline{\zihao{3}\heiti \@title}%
    \fi
  \fi
}

\def\makenametitle{%
  \newpage
  \setcounter{page}{1}
  \thispagestyle{plain}%
  \begin{center}
  \vskip 0.1cm
  {\includegraphics[width=12.2cm]{title2026.pdf}\par}
  \end{center}
  
  \vskip 0.85cm
  
  \noindent
  {\zihao{-2}\lishu 题\ 目：}\quad \gmcm@print@title
  
  \vskip 0.85cm
}

% 中文标题格式设置
% 目录深度
\setcounter{secnumdepth}{3}
\def\@seccntformat#1{\csname the#1\endcsname\ \ }
% 节标题格式, 居中, 使用\chinese命令修改计数器, \kern 使得数字和内容不至于太远
\renewcommand\thesection{\arabic{section}.}
\renewcommand\thesubsection{\arabic{section}.\arabic{subsection}}
\renewcommand\thesubsubsection{\thesubsection.\arabic{subsubsection}}
\renewcommand\section{\@startsection{section}{1}{\z@}%
  {2.5ex \@plus -1ex \@minus -.2ex}%
  {2.3ex \@plus.2ex}%
  {\bfseries\centering\zihao{4}\heiti}}
\renewcommand\subsection{\@startsection{subsection}{2}{\z@}%
  {1.25ex\@plus -1ex \@minus -.2ex}%
  {1.25ex \@plus .2ex}%
  {\normalfont\normalsize\bfseries}}
\renewcommand\subsubsection{\@startsection{subsubsection}{3}{\z@}%
  {1.25ex\@plus -1ex \@minus -.2ex}%
  {1.2ex \@plus .2ex}%
  {\normalfont\normalsize\bfseries}}
\renewcommand\paragraph{\@startsection{paragraph}{4}{\z@}%
  {3.25ex \@plus1ex \@minus.2ex}%
  {-1em}%
  {\normalfont\normalsize\bfseries}}
\renewcommand\subparagraph{\@startsection{subparagraph}{5}{\parindent}%
   {3.25ex \@plus1ex \@minus .2ex}%
   {-1em}%
   {\normalfont\normalsize\bfseries}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Define new environment and command
%% 摘要小二号隶书居中
\renewenvironment{abstract}{%
  \begin{center}%
  {\zihao{-2}\lishu \gmcm@cap@abstractname\par}%
  \end{center}%
  \vskip 0.35cm
  \begingroup
  \songti\zihao{-4}%
}{%
  \par
  \endgroup
  \newpage
}

\newcommand\keywords[1]{%
  \renewcommand{\gmcm@tokens@keywords}{#1}%
  \par
  \vskip 0.8cm
  {\noindent\zihao{-2}\lishu \gmcm@cap@keywordsname：}\quad {\songti\zihao{-4}\gmcm@tokens@keywords}%
}
% 定义附录  
\renewcommand\appendix{\par
  \setcounter{section}{0}%
   \setcounter{subsection}{0}%
  \gdef\thesection{\appendixname\@Alph\c@section}}    
 
\newcommand*\baominghao[1]{%
  \renewcommand{\gmcm@tokens@baominghao}{#1}}
\newcommand*\schoolname[1]{%
  \renewcommand{\gmcm@tokens@schoolname}{#1}}
\newcommand*\membera[1]{%
  \renewcommand{\gmcm@tokens@membera}{#1}}
\newcommand*\memberb[1]{%
  \renewcommand{\gmcm@tokens@memberb}{#1}}
\newcommand*\memberc[1]{%
  \renewcommand{\gmcm@tokens@memberc}{#1}}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Initialization 
 %%%数学定理相关的常量
\newcommand*{\gmcm@cap@definition}{定义}
\newcommand*{\gmcm@cap@theorem}{定理}
\newcommand*{\gmcm@cap@lemma}{引理}
\newcommand*{\gmcm@cap@corollary}{推论}
\newcommand*{\gmcm@cap@assumption}{假设}
\newcommand*{\gmcm@cap@conjecture}{猜想}
\newcommand*{\gmcm@cap@axiom}{公理}
\newcommand*{\gmcm@cap@principle}{定律}
\newcommand*{\gmcm@cap@problem}{问题}
\newcommand*{\gmcm@cap@example}{例}
\newcommand*{\gmcm@cap@proof}{证明}
\newcommand*{\gmcm@cap@solution}{解}
\newcommand*{\gmcm@cap@abstractname}{摘\ 要：}
 %%%  中文关键字
\newcommand*{\gmcm@cap@keywordsname}{关键词}

 %%%常量

%\newcommand\gmcm@ges@string@contents{“华为杯”第十五届全国研究生\par 数学建模竞赛}
\newcommand\gmcm@ges@string@contents{\includegraphics[width=11cm]{title2026}}


 

%设置目录格式
% 节的目录格式
\titlecontents{section}[0pt]{\vspace{2mm}\bfseries\heiti}
{\thecontentslabel\hskip.5em}{}{\titlerule*[0.5pc]{.}\contentspage}
% 小节的目录格式
\titlecontents{subsection}[30pt]{\songti}
{\thecontentslabel\hskip.5em}{}{\titlerule*[0.5pc]{.}\contentspage}

\titlecontents{subsubsection}[55pt]{\songti}
{\thecontentslabel\hskip.5em}{}{\titlerule*[0.5pc]{.}\contentspage}

\pagestyle{plain}
\endinput




