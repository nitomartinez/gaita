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
title = "Danza de tenorio"
composer = "tradicional"
instrument = "gaita galega"
}

\include "gaita.ly"

peza = 
{
  \relative 
  {
    \clef treble
    \time 2/4
    \repeat volta 2 
      {
        g'8. a16 g8 f e4 c f8. g16 f8 e f4 d |
        g8. a16 g8 f g4 d8 e f d b d c2
      }

    \repeat volta 2 
      { 
        \pSolUp  \times 2/3 {  c,8( d e ) } c e |
        \pSol e4 d |
        \pSol \times 2/3 { d8( e f ) } d f |
        \pSi f4 e g8. \pSi g16 a8 g e4 d8 e f d b d c2^\markup { D.C.}

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
