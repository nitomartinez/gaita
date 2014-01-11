% Muiñeira de Molete
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
title = "Muiñeira de Molete"
%composer = "popular"
instrument = "gaita galega"
}

\include "gaita.ly"


peza = {
  \relative {
    \clef treble
    \time 6/8
    \partial 4.
      c8 e g     
    \repeat volta 2
    {
      c8 b a g f e c4. \pSolUp c,8 e g c b a g f e d4.( d8 ) e f g4 e8 f4 d8 e4 c8 g'4 c8  b8 a g f e d
    }
    \alternative
    {
      { c4. c8 e g }
      { c,4.(c8) e8 d }
    }
    \repeat volta 2
    {
      c4 \pSolUp c,8 \pSolUp c, e8 d c4 \pSolUp c,8 \pSolUp c, d c b4 \pSolUp b,8 \pSolUp b,8 c d 
      e4. c4. \pSolUp c,4. \pSolUp c,8 d e f4.(f8) g f e c d e b d
    }
    \alternative
    {
      { c4.( c8 ) e d }
      { c2. }
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
