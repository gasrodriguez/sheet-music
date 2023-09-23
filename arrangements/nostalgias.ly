\version "2.24.2"

\include "../include/common.ly"
\include "../include/tango.ly"

\header {
  title = "Nostalgias"
  composer = "Cobian / Cadícamo"
}

melody = {
  \mark \default

  \clef "treble" \time 4/4 \key a \minor | % 1
  e8 a,8 b8 c8 e8 a,8 b8 c8 | % 2
  e8 a,8 b8 c8 e8 a8 e8 es8 | % 3
  d8 a8 b8 c8 b8 a8 gis8 f'8 | % 4
  e2. r4 | % 5
  \break

  r8 e4 e8 a8 e8 d8 c8 | % 6
  c8 b8 f'8 e8 e8 d8 d8 c8 | % 7
  c8 b8 e8 d8 d8 c8 c8 gis8 | % 8
  b4 a2 r4 | % 9
  \break

  r4 e'8 e8 a8 e8 d8 c8 | \barNumberCheck #10
  c8 b8 d8 e8 f8 a8 b8 a8 | % 11
  a8 g8 b8 a8 g8 a8 f8 g8 | % 12
  e1 | % 13
  \break

  e8 a,8 b8 c8 e8 a,8 b8 c8 | % 14
  e8 a,8 b8 c8 e8 a8 e8 es8 | % 15
  d8 a8 b8 c8 b8 a8 gis8 b8 | % 16
  a4 r4 r4 r8 e8 \bar "||"
  \break

  \mark \default

  e'2 e2 | % 18
  r4 a,8 b8 c8 b8 c8 d8 | % 19
  e8 e8 a,8 b8 c8 b8 c8 d8 | \barNumberCheck #20
  e8 a8 gis8 a8 e8 c8 a8 f'8 | % 21
  e8 dis8 d2. ~ | % 22
  d2. r8 e,8 | % 23
  \break

  d'2 d2 | % 24
  r8 b4 c8 d8 cis8 d8 e8 | % 25
  f8 f8 d8 e8 f8 e8 f8 a8 | % 26
  gis8 b8 gis8 f8 e8 d8 b8 e8 | % 27
  d8 cis8 c2. ~ | % 28
  c2. r8 e,8 | % 29
  \break

  bes'2 bes2 | \barNumberCheck #30
  r8 a'4 g8 bes8 a8 a8 g8 | % 31
  bes8 a8 a8 g8 bes8 a8 a8 g8 | % 32
  bes8 a8 a8 gis8 a8 g8 f8 e8 | % 33
  a2 r8 gis8 g8 fis8 | % 34
  \break

  f2 r8 f8 d8 dis8 | % 35
  e8 a8 dis,8 e8 a8 b,8 c8 e8 | % 36
  gis,8 a8 c8 dis,8 e8 g8 a8 b8 | % 37
  c2 b2 |
  a4 r4 r2 |
}

harmony = \chordmode  {
  | % 1
  a2:m a2:m/+gis | % 2
  a2:m/+g a2:m/+fis | % 3
  d2:m/+f e2:7 | % 4
  a2.:m e4:7 | % 5
  a1:m | % 6
  d1:m | % 7
  e1:7 | % 2
  a4:m e2:7 s4 | % 9
  a1:m | \barNumberCheck #10
  d1:m | % 11
  g1:7 | % 12
  c2 e:7 | % 13
  a2:m a2:m/+gis | % 14
  a2:m/+g a2:m/+fis | % 15
  d2:m/+f e2:7 | % 16
  a2:m f4:7 e4:7 \bar "||"
  a2:m e2:7 | % 12
  a2:m e2:7 | % 19
  a2:m e2:7 | \barNumberCheck #20
  a1:m | % 21
  d2:m d2:m/+cis | % 22
  d2:m/+c d2:m6 | % 23
  d1:m | % 24
  e1:7 | % 25
  d1:m | % 26
  e1:7 | % 27
  a1:m | % 22
  a1:m | % 29
  g1:m | \barNumberCheck #30
  a1:7 | % 31
  g2:m g2:m7 | % 32
  a2:dim7 a2:7 | % 33
  d2:m a2:7 | % 34
  d1:m | % 35
  a2:m a2:m/+gis | % 36
  a2:m/+g a2:m/+fis | % 37
  d2:m/+f e2:7 |
  a4:m e4:7 a2:m |
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
  \marcado
  \blancas

  \blancas
  \sincopa
  \sincopa
  \marcado
  \marcado
  \blancas

  \blancas
  \sincopa
  \sincopa
  \marcado
  \marcado
  \blancas
  \blancas
  \blancas
  \blancas
  \blancas
}

\score {
  <<
    \transpose cis a
    <<
      \chords {
        \harmony
      }
      \new Staff = "voice" {
        \relative c'' {
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