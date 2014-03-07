% Pasodobre de Negreira
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
title = "Pasodoble de Negreira"
%composer = "tradicional"
instrument = "gaita galega"
}

\include "gaita.ly"

primeiraParte = {
    \repeat volta 2
    { 
      c4~\segno c8 b a[ g ] e g c4( c8 ) b a[ g ] e f |
      g4( g8 ) a g[ f ] e d
    }
    \alternative
    {
      { f8 e16 d e4( e4 ) \pSol e8 g }
      { f8 e16 d e4( e4 ) g8 f }
    }
}

segundaParte = {
     e4 \pSol e8 f g[ a ] \pSi a g b2( b4 ) f8 e |
     d4 \pSol d8 e f[ g ] \pSi g f a g16 f e4( e ) g8 f |
     e4 \pSol e8 f g[ a ] \pSi a g b2( b8 ) \bFa b \bFa b a g[ a ] \pSi a g |
     f g \pSi g f\coda
}
peza = {
  \relative {
    \clef treble
    \time 2/4
    \partial 4
    e8 g
    \primeiraParte
    \repeat volta 2
    {
      \segundaParte
    }
    \alternative
    {
      { e2( e4 ) g8 f }
      { e2( e4 ) \pSi e8 g^\markup { \huge \bold \italic D. \small \musicglyph #"scripts.segno" } }
    }
  }
}


fin = {
    \time 3/4
    \relative {
      e8\coda r8 g4 c8 r4.^\markup { \bold \italic Fine }
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
    \segundaParte
    \fin
  }
  \midi { 
%    \tempo 4=72
  }
}
