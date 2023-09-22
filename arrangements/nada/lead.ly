\version "2.24.2"

\header {
  title = "Nada"
  composer = "José Dames"
}

\include "../../patterns/tango.ly"

melody = {
  r8 e4 e8 e c d e | f2 g |
  r8 g4 g8 g e f g | a2 b |
}

\score {
  <<
    \new Staff = "voice" {
      \relative c'' \melody
      \relative c'' \melody
    }
    \new Staff = "arrange" {
      \piano \arpegio \desmarcado \marcado
      \marcadoDos \sincopa \falsaSincopa \blancas
    }
  >>
  \layout {}
}
