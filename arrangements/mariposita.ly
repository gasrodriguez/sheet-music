\version "2.24.2"

\include "../include/common.ly"
\include "../include/tango.ly"

\header {
  title = "Mariposita"
  composer = "José Dames"
}

melody = {
  \mark \default
  d2 fis4. e8 |
  e2 r |
  r8 d e d fis e4 fis8 |
  e2 r8 d e d |
  \break

  g4. a8 b4 a8 b |
  a8 g4 a8 b2 |
  a4. b8 a e g fis |
  a2 r |
  \break
}

harmony = \chordmode {
  \key g \major |
  g2:/b bes:dim |
  a2:m7 d:7 |
  g2:/b bes:dim |
  a2:m7 d:7 |

  g2 g:7 |
  c2:maj7 c:/e |
  a1:7 |
  d2:7 d:9-13- |
}


rhythm = {
  \blancas
  \blancas
  \sincopa
  \blancas
  \blancas
  \sincopa
  \blancas
  \blancas
  \blancas
}

\score {
  <<
    % \transpose c a
    <<
      \new ChordNames {
        \harmony
      }
      \new Staff = "voice" {
        \relative c'' {
          \easyHeadsOn
          \melody
        }
      }
    \new ChordNames \with {
      \consists "Key_engraver"
      \consists #roman-chord-engraver
    } {\harmony}
    >>
    \new Staff = "rhythm" {
      \rhythm
    }
  >>

  \layout {}
}
