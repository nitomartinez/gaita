% Muiñeira de Boimorto
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
title = "Muiñeira de Boimorto"
%composer = "popular"
instrument = "gaita galega"
}

\include "gaita.ly"


peza = {
  \relative {
    \clef treble
    \time 6/8
    \partial 4.
    e8 c e
    \repeat volta 2
    {
      g8\segno f e \pSol e c e | g f e \pSol e c e | g f e g a g
      f e d \pSol d b d f e d \pSol d b d f e d \pSol d b d |
      c' b a c b a | 
    }
    \alternative
    {
      { g4. e8 c e\coda }
      { g4. e4 g8 }
    }
    \repeat volta 2
    {
      \pSi g e g \pSi g e g a4 g8 e f g |
      \pSi g4 f8 d e f  \pSi f4 e8 \pSol e4 g8 |
      \pSi g e g \pSi g e g a4 g8 e f g  \pSi g f e d f d |
    }
    \alternative
    {
      { e4. \pSol e4 g8 }
      { e4. \pSol e8 c e^\markup { \huge \bold \italic D. \small \musicglyph #"scripts.segno" } }
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
