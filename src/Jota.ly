% Jota
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
title = "Jota"
%composer = "tradicional"
instrument = "gaita galega"
}

\include "gaita.ly"

repeticionInicial = {
        e4\segno \pSol e8 f e d c4 \pSolUp c, \bSi c f \pSi f8 g f e d2 \pSol d4  
	g \pSi g8 a g f e4 f8 g f e d4 e8 f e d\coda 
}
peza = 
{
  \relative 
  {
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
        { c2. }
      }

    \repeat volta 2 
      { 
        \pSolUp c,4 d e f e d c2 e4 d2.
        b4 c d e d c b2 d4
      }
    \alternative 
      {
        { c2. }
        { c2 \pSolUp c,4_\markup { \huge \bold \italic D. \small \musicglyph #"scripts.segno" } } 
      }
  }
}

fin = {
    \time 3/4
    \relative {
    c4 e g c8 r8 r2
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
