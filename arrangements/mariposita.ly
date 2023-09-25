\version "2.24.2"

\include "../include/common.ly"
\include "../include/tango.ly"

\header {
  title = "Mariposita"
  composer = "José Dames"
}

melody = {
  d2 fis4. e8 |
  e2 r |
  r8 d e d fis e4 fis8 |
  e2 r8 d e d |

  g4. a8 b4 a8 b |
  a8 g4 a8 b2 |
  a4. b8 a e g fis |
  a2 r |

  d,2 fis4. e8 |
  e2 r |
  r8 d e d fis e4 fis8 |
  e2 r8 d e d |

  g4. a8 b4 a8 b |
  a8 g4 a8 bes2 |
  b8 d b g b4 a |
  g4 r2. |
}

harmony = \chordmode {
  \mark \default
  \key g \major |
  g2:/b bes:dim |
  a2:m7 d:7 |
  g2:/b bes:dim |
  a2:m7 d:7 |
  \break

  g2 g:7 |
  c2:maj7 c:/e |
  a1:7 |
  d2:7 d:9-13- |
  \break

  g2:/b bes:dim |
  a2:m7 d:7 |
  g2 fis:7 |
  a2:m7 d:7 |
  \break

  g2 g:7 |
  c2:maj7 ees:7 |
  g2:/d a4:7 d:7 |
  g4 d:7 g r |
  \break
}


rhythm = {
  \blancas
  \blancas
  \blancas
  \piano

  \piano
  \piano
  \marcadoDos
  \blancas

  \desmarcado
  \desmarcado
  \sincopa
  \blancas

  \marcadoDos
  \marcadoDos
  \marcadoDos
  \final
}
\layout {
  \context {
    \Staff
    \override VerticalAxisGroup.default-staff-staff-spacing =
      #'((basic-distance . 20)
         (minimum-distance . 10)
         (padding . 1))
  }
}


\score {
  <<
    % \transpose c a
    \new Staff = "voice" {
      \relative c'' {
        \easyHeadsOn
        \melody
      }
    }
    \new ChordNames \harmony
    \new Staff \rhythm
    \new ChordNames \with {
      \consists "Key_engraver"
      \consists #roman-chord-engraver
    } \harmony
  >>

  \layout {}
}
