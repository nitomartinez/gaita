% Mazurca da Bretoña
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
title = "Mazurca da Bretoña"
%composer = "tradicional"
instrument = "gaita galega"
}

\include "gaita.ly"

repeticionInicial = {
  e4\segno c8 e c e g4 d \bSi d g d8 g d g e4 c \bSi c |
  e c8 e c e g4 d \bSi d a' g8 f e d\coda |
}
peza = {
  \relative {
    \clef treble
    \time 3/4
    \partial 4
    c4 
    \repeat volta 2
    { 
      \repeticionInicial
    }
    \alternative
    {
      { c2 \pSolUp c,4 }
      { c2 g'4 }
    }
    \repeat volta 2
    {
      c4 b8 a g f e4 c8 e c e g4 d8 f e d e4 c g' |
      c b8 a g f e4 c8 e c e g4 d8 f e d
    }
    \alternative
    {
      { c2 g'4 }
      { c,2 \pSolUp c,4^\markup { \huge \bold \italic D. \small \musicglyph #"scripts.segno" } }
    }
  }
}


fin = {
    \time 3/4
    \relative {
    c8\coda g' c r4.^\markup { \bold \italic Fine }
    }
}

\score {
  \peza
  \layout {}
}

\score {
  \fin
  \layout {}
}

\score {
  
  \unfoldRepeats {
    \peza
    \repeticionInicial
    \fin
  }
  \midi { 
%    \tempo 4=72
  }
}
