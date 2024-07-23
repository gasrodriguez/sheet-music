\version "2.24.2"

\include "../include/common.ly"

\header {
  title = "Carito"
  composer = "Tarrago Ros"
  arranger = "León Gieco"
}


\parallelMusic voiceA,voiceB {
  \key e \minor
  \time 3/4
  \mark \default

  r8 gis gis a16 (gis) fis8 e |
  e,2.|

  fis8 8 8 cis'8 8 b~|
  fis,4 4 4|

  8 8 8 cis'16 (b)  a8 gis8~ |
  b,4 4 4|

  8 e e b b b~|
  e,4 4 4|

  8 a gis a16 (gis) fis8 e |
  cis4 4 4|

  fis4 gis8 a gis gis~|
  fis,4 4 4|

  8 fis4 e fis8|
  b,4 4 4|

  e4 e fis |
  e,4 4 4|

  % \break
  gis8 gis gis a16 (gis) fis8 e |
  e,4 4 4|

  e8 e e cis'8 cis' fis'8~|
  a,4 4 4 |

  4 cis'8 b4 a8|
  b,4 4 4 |

  gis8 8 e b e' e'8~ |
  e,4 4 4|

  8 cis' b cis'16 (b)  a8 gis8|
  cis4 4 4|

  fis4 gis8 a gis gis~|
  fis,4 4 4|

  8 fis4 e fis8|
  b,4 4 4|

  e2.|
  e,2.|

}

  \score {
    \new Staff {
      <<
        \voiceA \\
        \voiceB
      >>
    }
  }