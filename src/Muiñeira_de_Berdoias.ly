% Muiñeira de Berdoias
%
% Copyright 2014 by Nito Martinez
%
% This program is free software: you can redistribute it and/or modify
% it under the terms of the GNU General Public License as published by
% the Free Software Foundation, either version 3 of the License, or
% (at your option) any later version.
% Tradicional
\version "2.16.0"
\header {
title = "Muiñeira de Berdoias"
%composer = "popular"
instrument = "gaita galega"
}

\include "gaita.ly"


peza = {
  \relative {
    \clef treble
    \time 6/8
    \partial 8
    g'8
    \repeat volta 2
    {
      \pSi g4\segno f8 \pSi f4 e8 \pSol e4 d8 \pSol d e f g a g f e d e d c( c4 ) e8 |
      \pSol e4 d8 \pSol d4 c8 \pSolUp c,4 b8 \pSolUp b,8 c d e f e d c b |
    }
    \alternative
    {
      { c4.( c4 ) g'8 }
      { c,4.( c4 ) b8 }
    }
    \repeat volta 2
    {
      c4 b8 c4 d8 e4 d8 \pSol d e f g a g f e d e d c( c4 ) b8 |
      c4 b8 c4 d8 e4 d8 \pSol d e f g a g f e d |
    }
    \alternative
    {
      { c4.( c4 ) b8 }
      { c4.( c4 ) g'8^\markup { \huge \bold \italic D. \small \musicglyph #"scripts.segno" } }
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
