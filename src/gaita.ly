%
% Master file for Galician Bagpipe
%

% Copyright 2013 by Nito Martinez
%
% This program is free software: you can redistribute it and/or modify
% it under the terms of the GNU General Public License as published by
% the Free Software Foundation, either version 3 of the License, or
% (at your option) any later version.

\version "2.16.0"
#(set-default-paper-size "a4")
pSi = { \grace { b32 } }
pSiUp = { \grace { b'32 } }
pSol = { \grace { g32 } }
pLa = { \grace { a32 } }
pSolUp = { \grace { g'32 } }
bSi = { \grace { b32 } }
bSiDown = { \grace { b,32 } }
bFa = { \grace { f32 } }
bDo = { \grace { c32 } }
bDoDown = { \grace { c,32 } }

tagline = \markup {
  %\with-url

  %% todo: lilypond.org/music-engraving
  \line {
    "Recopilado por Nito Martinez"
  }
}

