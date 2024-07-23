\version "2.24.2"

\include "../include/common.ly"

\header {
  title = "Deixa"
  composer = "Baden Powell"
  % arranger = "Toquinho"
}


\parallelMusic voiceA,voiceB {
  \key e \minor
  \time 2/4
  \mark \default
  \partial 8
  g8|
  r8|

  e8 c a c~|
  f2|

  8 a c e |
  fis2|

  c8 a c e |
  g2|

  c8 a c e|
  fis2|

  g4 <e, g b e>|
  e2 |

  <c' e a>4 <a dis fis>|
  fis'4 b,|

  b'4 <e,, g b e>|
  e,2 |

  c''4 <gis, d' f>|
  e2 |

}

  \score {
    \new Staff {
      <<
        \relative c'' \voiceA \\
        \relative c,  \voiceB
      >>
    }
  }