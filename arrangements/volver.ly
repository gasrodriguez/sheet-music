\version "2.24.2"

\include "../include/common.ly"
\include "../include/tango.ly"

\header {
  title = "Volver"
  composer = "Gardel / Le Pera"
}

melody = {
  \mark \default
  \key a \major
  r1 |
  r1 |
}

harmony = \chordmode {
  a2 c:7/bes |
  b:m dis:dim7/c |
  fis:m7 d/fis |
  b
}


rhythm = {
  \arpegio
  \arpegio
  \arpegio
  \arpegio

  \sincopaFalsa
  \sincopaFalsa
  \sincopaFalsa
  \sincopaFalsa

  \sincopaFalsa
  \sincopaFalsa
  \sincopaFalsa
  \sincopaFalsa

  \arpegio
  \arpegio
  \arpegio
  \arpegio

  \blancas
  \sincopa
  \sincopa
  \marcado

  \blancas
  \sincopa
  \sincopa
  \marcado

  \blancas
  \blancas
  \blancas
  \blancas
}

\score {
  <<
    \transpose c a
    <<
      \chords {
        \harmony
      }
      \new Staff = "voice" {
        \relative c' {
          \easyHeadsOn
          \melody
        }
      }
    >>
    \new Staff = "rhythm" {
      \rhythm
    }
  >>

  \layout {}
}