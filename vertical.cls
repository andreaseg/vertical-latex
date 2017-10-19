\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{vertical}[12/9/2016 Class for managing vertical text in latex]
\LoadClass{article}
\RequirePackage{fontspec}
\RequirePackage{tikz}
\RequirePackage{fancyhdr}
\RequirePackage[top=.8in, bottom=.8in, left=1.2in, right=1.5in]{geometry}
\RequirePackage{ruby}
\RequirePackage{everypage}


% Properly rotates the document
\AddEverypageHook{\special{pdf: put @thispage <</Rotate 90>>}}

% No paragraph indentation
\setlength\parindent{0pt}

% Makes font vertical
\defaultfontfeatures{RawFeature=vertical}

% Uses font with vertical feature
\setmainfont{Meiryo}

% Removes header line from fancyhdr
\renewcommand{\headrulewidth}{0pt}

% Style for numbered pages
\fancypagestyle{Plain}{%
  \fancyhf{}
  \fancyfoot[C]{%
      \begin{tikzpicture}[remember picture,overlay]
          \node[xshift=-1in,font=\bfseries] (number) at (current page.east) {\large\thepage};
      \end{tikzpicture}
  }%
}

% Style for non-numbered pages
\fancypagestyle{nonums}{%
    \fancyhf{}
    \fancyfoot[C]{}
}

% Default pagestyle
\pagestyle{Plain}

% Compact furigana
\linespread{1.6}
\renewcommand{\rubysep}{-6pt} 
\renewcommand{\rubysize}{0.5}