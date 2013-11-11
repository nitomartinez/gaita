% Pasodobre dos Xigantes
%
% Copyright 2013 by Nito Martinez
%
% This program is free software: you can redistribute it and/or modify
% it under the terms of the GNU General Public License as published by
% the Free Software Foundation, either version 3 of the License, or
% (at your option) any later version.
% Tradicional
\version "2.16.0"
\header {
title = "Pasodobre dos xigantes"
%composer = "tradicional"
instrument = "gaita galega"
}

\include "gaita.ly"

peza = {
  \relative {
    \clef treble
    \time 2/4
    \repeat volta 2 { 
      g'8 e c e g e c e g e c e d2
      f8 d b d f d b d f d b d c2
      g'8 e c e g e c e g e c e d2
      f8 d b d f d b d g16 a g f e8 d c2
    }
    \repeat volta 2 { 
      \pSolUp c,4 d e \pSol e8 c d4 \pSol d8 b c d e 4
      c d e \pSol e8 c d4 \pSol d8 b8 c2
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
