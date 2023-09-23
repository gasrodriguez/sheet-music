\version "2.24.2"

\header {
  title = "Nada"
  composer = "José Dames"
}

\include "../../patterns/tango.ly"

melody = {
  r8 e4 e8 e c d e  | f2 g             | r8 g4 g8 g e f g | a2 b |
  r8 c4 c8 c b b e, | a4 a8 a a g g c, | f4 f8 f f e e c  | d2 g |
  r8 e4 e8 e c d e  | f2 g             | r8 g4 g8 g e f g | a2 b |
  r8 c4 c8 c b b e, | a4 a8 a a g g c, | f4 f8 f f e e c  | g'1  |
  g8 f' f f f e4 d8  | e8 d4 c8 e,2      | e'8 d d d d c4 b8  | c b4 a8 c,2 |
  f8 g a4 r8 f' f f   | e8 d c e b a c g  | f8 a e ees d2      | e8 g e d c2 |
  g'8 f' f f f e4 d8  | e8 d4 c8 e,2      | e'8 d d d d c4 b8  | c b4 a8 c,2 |
  f8 g a4 r8 f' f f   | e8 d c e b a c g  | f8 a e ees d4  b'  | c2   r      |
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
\paper {
  % system-separator-markup = \slashSeparator
  % line-width = 120
}
\score {
  <<
    \chords {
      \harmony
    }
    \new Staff = "voice" {
      \relative c''' \melody
    }
    \new Staff = "arrange" {
      \mark \default
      \repeat unfold 4 \marcado \break
      \repeat unfold 4 \piano \break
      \repeat unfold 4 \piano \break
      \repeat unfold 4 \piano \pageBreak
      \mark \default
      \repeat unfold 4 \piano \break
      \repeat unfold 4 \piano \break
      \repeat unfold 4 \piano \break
      \repeat unfold 4 \piano \pageBreak
    }
  >>
  \layout {}
}
