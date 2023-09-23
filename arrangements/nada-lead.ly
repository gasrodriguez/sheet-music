\version "2.24.2"

\include "../include/common.ly"
\include "../include/tango.ly"

\header {
  title = "Nada"
  composer = "José Dames"
}

melody = {
  \key c \major
  r8 e4 e8 e c d e | f2 g |
  r8 g4 g8 g e f g | a2 b |
  \break
  r8 c4 c8 c b b e,| a4 a8 a a g g c, |
  f4 f8 f f e e c  | d2 g |
  \break
  r8 e4 e8 e c d e | f2 g |
  r8 g4 g8 g e f g | a2 b |
  \break
  r8 c4 c8 c b b e,| a4 a8 a a g g c, |
  f4 f8 f f e e c  | g'2 r  |
  \break
  g8 f' f f f e4 d8 | e8 d4 c8 e,2|
  e'8 d d d d c4 b8 | c b4 a8 c,2 |
  \break
  f8 g a4 r8 f' f f | e8 d c e b a c g |
  f8 a e ees d2     | e8 g e d c2 |
  \break
  g'8 f' f f f e4 d8 | e8 d4 c8 e,2 |
  e'8 d d d d c4 b8  | c b4 a8 c,2 |
  \break
  f8 g a4 r8 f' f f  | e8 d c e b a c g |
  f8 a e ees d4  b'  | c2   r      |
  \break
}

harmony = \chordmode {
  c1 | d2:m7 g:7 | c1 | b2:7 e:7 |
  a1:m | f1 | d1:m | g1:7 |
  c1 | d2:m7 g:7 | c1 | b2:7 e:7 |
  a1:m | f1 | d1:m | g1:7 |
  g1:7 | c1 | e1:7 | a1:m |
  f1 | c1 | g1:7 | c1 |
  g1:7 | c1 | e1:7 | a:m |
  f1 | c1 | g1:7 | c1 |
}

\score {
  \new PianoStaff <<
    \chords {
      \harmony
    }
    \new Staff = "voice" {
      \easyHeadsOn \relative c'' \melody
    }
    \new Staff = "arrange" {
      \mark \default
      \repeat unfold 4 \sincopaTierra
      \repeat unfold 4 \sincopa
      \repeat unfold 4 \piano
      \repeat unfold 4 \piano
      \mark \default
      \repeat unfold 4 \piano
      \repeat unfold 4 \piano
      \repeat unfold 4 \piano
      \repeat unfold 4 \piano
    }
  >>
  \layout {}
}
