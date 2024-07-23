\version "2.24.2"

\include "../include/common.ly"

\header {
  title = "Piedra y camino"
  composer = "Atahualpa Yupanqui"
  arranger = "Colacho Brizuela"
}


\parallelMusic voiceA,voiceB {
  \key g \minor
  \time 6/8
  \mark \default
  \partial 8
  bes8|
  s8|

  bes16 g, g'8 <d fis c'> d'16 bes, g' bes g'8|
  s2.|


  fis16 d, d fis' g8 \glissando a ~ <fis, c' ees a>4|
  s2.|

  a16 fis, d' a' bes8 c16 a, fis' c' ees8|
  s2.|

  d8 <bes, g'> <a fis' c'> <bes g' d'>4.|
  s2.|

  bes'16 g, g'8 <d fis c'> d'16 bes, g' bes g'8|
  s2.|


  fis16 d, d fis' g8 \glissando a ~ <fis, c' ees a>4|
  s2 r8 bes16 (b)  \glissando |

  r8 <c' ees> r8 <bes d>8 r16 fis c' fis,|
  c4 bes a |

  r8. g16 bes d r8 <fis c>4|
  g4. a4~ 16 16|

  r8. <g, bes d g>16 r8 \xNotesOn <bes d g>8 \xNotesOff <g bes d g>4|
  g4 g g8. g16|

  \break
  \mark \default
  r8 fis c' r f,16 b d8|
  aes4. g|

  r8. g,16 bes ees f8 ees4|
  c4. ~4 bes8|

  r8. f,16 c' f r8 <c ees a>4|
  a4. f'4.|

  r8. bes16 d bes' r8 <a, c fis>4|
  d4. d4.|

  \break
  \repeat volta 2 {
    r8 <bes d g> <a c f >4 <g bes ees>|
    g,4 a bes8. g16|

    r8. <g c ees>16 r8 \xNotesOn <g c ees>8 \xNotesOff <dis a' c>4|
    a4 a fis|

    r8 <c' ees> r8 <bes d>8 r8 <fis c'>|
    c'4 bes a |

    \alternative {
      \volta 1{
        r8. <g bes d g>16 r8 \xNotesOn <bes d g>8 \xNotesOff <g bes d g>4|
        g4 g g|
      }
      \volta 2{
        r8. <g bes d g>16 r8 \xNotesOn <bes d g>8 \xNotesOff <g bes d g>4|
        g4 g g8 bes16 a|
      }
    }
  }
}

  \score {
    \new Staff {
      <<
        \relative c' \voiceA \\
        \relative c  \voiceB
      >>
    }
  }