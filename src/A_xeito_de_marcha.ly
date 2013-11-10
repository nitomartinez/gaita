% A Xeito de Marcha
%
% Copyright 2013 by Nito Martinez
%
% This program is free software: you can redistribute it and/or modify
% it under the terms of the GNU General Public License as published by
% the Free Software Foundation, either version 3 of the License, or
% (at your option) any later version.
% Tradicional
\version "2.8.4"
\header {
title = "A xeito de marcha"
composer = "tradicional"
instrument = "gaita galega"
}

\include "gaita.ly"

peza = {
  \relative {
    \clef treble
    \time 2/4
    \repeat volta 2 { 
      g'8 f e d c d e f g f e d e4 c
      g'8 f e d c d e f g f e d c2
    }
    \repeat volta 2 { 
      \pSi c8 d e f e d c4 g'8 f e d e4 c8 d 
       e f e d c4 g'8 f e4 d c2
    }
  }
}

\score {
  \peza
  \layout {}
}


\score {
  
  \unfoldRepeats {
    \peza
  }
  \midi { 
%    \tempo 4=72
  }
}
