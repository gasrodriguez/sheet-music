\version "2.24.2"

\include "../include/common.ly"
\include "../include/tango.ly"

\header {
  title = "Como dos extraños"
  composer = ""
}

melody = {
  \mark \default
  \key c \major
  \break
}

harmony = \chordmode {
  d2:m7 d:m/cis |
  c:maj7 a:7/cis |
  d:m7 b4:m7.5- g:9 |
  g2:m6/bes a:9-|

  \break
  d:m7 f:m |
  c4:maj7 b:7 a:7 a:7/g |
  d2:m/f g:7 |
  c1 |

  \break
  d4:m7 d:m7/a g g/b |
  c:maj7 c:maj7/g a:7 a:7/cis |
  d2:m7 e4:m/g b:m7.5- |
  g2:m6 c:7 |

  \break
  f2:9 d:m7.5- |
  e:m a:7 |
  d2:m/f g4:7 g:6/b |
  c4 g:7 c r |

  \break
  d2:sus4 g:7 |
  e2:m a:7/cis |
  d4:m a:7 g g/b |
  c2 c |
  \break

  g1:7 |
  c4 bes:7 a:7 a:7/cis |
  d4:m a:7 g g/b |
  c2 g:m6/bes |
  \break

  a a:7/g |
  d/fis d:7 |
  g g:7/f |
  c/e c |
  \break

  g1:7 |
  c4 bes:7 a:7 a:7/cis |
  d2:m7 g4:7 b:m7.5- |
  c g:7 g2:aug |
  \break

}


rhythm = {
  \arpegio
  \arpegio
  \arpegio
  \arpegio

  \blancas
  \marcado
  \blancaMarcado
  \arpegio

  \desmarcado
  \desmarcado
  \blancaMarcado
  \arpegio

  \blancas
  \blancas
  \blancaMarcado
  \final

  \arpegio
  \arpegio
  \marcado
  \blancas

  \marcado
  \marcado
  \marcado
  \blancas

  \arpegio
  \arpegio
  \arpegio
  \blancas

  \marcado
  \marcado
  \sincopaMarcado
  \final

  \arpegio
  \arpegio
  \arpegio
  \blancas

}

\score {
  <<
    \transpose c c,
    <<
      \chords {
        \harmony
      }
      % \new Staff = "voice" {
      %   \relative c' {
      %     \easyHeadsOn
      %     \melody
      %   }
      % }
    >>
    \new Staff = "rhythm" {
      % \clef "G"
      \rhythm
    }
  >>

  \layout {}
}