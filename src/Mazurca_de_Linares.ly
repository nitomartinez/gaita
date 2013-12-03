% Mazurca de Linares
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
title = "Mazurca de Liñares"
%composer = "tradicional"
instrument = "gaita galega"
}

\include "gaita.ly"

repeticionInicial = {
  c,4\segno e8[ g ] e g d4 \pSol d8[ e ] f g |
  d4 \pSol d8[ e ] f g c,4 e8[ g ] e g |
  c,4 e8[ g ] e g d4 \pSol d8[ e ] f[ g ] |
  b[ a ] g[ f ] e d\coda |
}

peza = {
  \relative {
    \clef treble
    \time 3/4
    \partial 2
    e8[ g ] e g
    \repeat volta 2
    { 
      \repeticionInicial
    }
    \alternative
    {
      { c4 e8[ g ] e g }
      { c,2 e8 g }
    }
    \repeat volta 2
    {
      c4( c8 ) a\noBeam \pSi a[ g ] b4( b8 ) a\noBeam \pSi a[ g ] |
      b4( b8 ) a\noBeam \pSi a[ g ] c2 e,8 g |
      c4( c8 ) a\noBeam \pSi a[ g ] b4( b8 ) a\noBeam \pSi a[ g ] |
      b[ a ] g[ f ] e[ d ]
    }
    \alternative
    {
      { c2 e8 g }
      { c,4 e8 g e g^\markup { \huge \bold \italic D. \small \musicglyph #"scripts.segno" } }
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
