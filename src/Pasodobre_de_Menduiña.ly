% Pasodobre de Menduiña
%
% Copyright 2014 by Nito Martinez
%
% This program is free software: you can redistribute it and/or modify
% it under the terms of the GNU General Public License as published by
% the Free Software Foundation, either version 3 of the License, or
% (at your option) any later version.
% Tradicional
\version "2.8.4"
\header {
title = "Pasodoble de Menduiña"
%composer = "tradicional"
instrument = "gaita galega"
}

\include "gaita.ly"

primeiraParte = {
    { 
      g8\segno e g[ e ] g[ e ] c e g4 \pSi g( g ) \pSi g8 a |
      b4( b8 ) c b4( b8 ) a g16 a g f e8 \pSol e a \pSi a( a ) g |
      a16 g f e d4 g8 \pSi g( g ) a\coda |
    }  
}

peza = {
  \relative {
    \clef treble
    \time 2/4
    \partial 4
    c8 e
    \repeat volta 2 { \primeiraParte }
    \alternative
    {
      { g16 f e d c4( c ) \pSolUp c,8 e }
      { g16 f e d c4( c ) \pSolUp e8 g }
    }
    \repeat volta 2
    {
      c4( c8 ) a b4( b8 ) g a[ b ] a g f4 d8 f |
      b4( b8 ) g a4( a8 ) f g[ a ] g f e4 \pSol e8 g |
      c4( c8 ) a b4( b8 ) g a[ b ] a g f4 d8 f |
      b4( b8 ) g a4( a8 ) f g[ a ] g f |
    }
    \alternative
    {
      { e2( e4 ) \pSol e8 g }
      { e2( e4 ) c8 e^\markup { \huge \bold \italic D. \small \musicglyph #"scripts.segno" } }
    }
  }
}


fin = {
    \time 2/4
    \relative {
      g'16\coda f e d c8 g' c r4.^\markup { \bold \italic Fine }
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
    \primeiraParte
    \fin
  }
  \midi { 
%    \tempo 4=72
  }
}
