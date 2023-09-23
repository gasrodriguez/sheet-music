\version "2.24.2"

\header {
  title = "Nostalgias"
  composer = "Cobian / Cadícamo"
}

\include "../../patterns/tango.ly"

melody = {

  \clef "treble" \time 4/4 \key cis \minor | % 1
  gis8 cis,8 dis8 e8 gis8 cis,8 dis8 e8 | % 2
  gis8 cis,8 dis8 e8 gis8 cis8 gis8 g8 | % 3
  fis8 cis8 dis8 e8 dis8 cis8 bis8 a'8 | % 4
  gis2. r4 | % 5
  r8 gis4 gis8 cis8 gis8 fis8 e8 | % 6
  e8 dis8 a'8 gis8 gis8 fis8 fis8 e8 | % 7
  e8 dis8 gis8 fis8 fis8 e8 e8 bis8 | % 8
  dis4 cis2 r4 | % 9
  r4 gis'8 gis8 cis8 gis8 fis8 e8 | \barNumberCheck #10
  e8 dis8 fis8 gis8 a8 cis8 dis8 cis8 | % 11
  cis8 b8 dis8 cis8 b8 cis8 a8 b8 | % 12
  gis1 | % 13
  gis8 cis,8 dis8 e8 gis8 cis,8 dis8 e8 | % 14
  gis8 cis,8 dis8 e8 gis8 cis8 gis8 g8 | % 15
  fis8 cis8 dis8 e8 dis8 cis8 bis8 dis8 | % 16
  cis4 r4 r4 r8 gis8 \bar "||"
  gis'2 gis2 | % 18
  r4 cis,8 dis8 e8 dis8 e8 fis8 | % 19
  gis8 gis8 cis,8 dis8 e8 dis8 e8 fis8 | \barNumberCheck #20
  gis8 cis8 bis8 cis8 gis8 e8 cis8 a'8 | % 21
  gis8 fisis8 fis2. ~ | % 22
  fis2. r8 gis,8 | % 23
  fis'2 fis2 | % 24
  r8 dis4 e8 fis8 eis8 fis8 gis8 | % 25
  a8 a8 fis8 gis8 a8 gis8 a8 cis8 | % 26
  bis8 dis8 bis8 a8 gis8 fis8 dis8 gis8 | % 27
  fis8 eis8 e2. ~ | % 28
  e2. r8 gis,8 | % 29
  d'2 d2 | \barNumberCheck #30
  r8 cis'4 b8 d8 cis8 cis8 b8 | % 31
  d8 cis8 cis8 b8 d8 cis8 cis8 b8 | % 32
  d8 cis8 cis8 bis8 cis8 b8 a8 gis8 | % 33
  cis2 r8 bis8 b8 ais8 | % 34
  a2 r8 a8 fis8 fisis8 | % 35
  gis8 cis8 fisis,8 gis8 cis8 dis,8 e8 gis8 | % 36
  bis,8 cis8 e8 fisis,8 gis8 b8 cis8 dis8 | % 37
  e2 dis2 | % 38
  cis4 r4 r2
}

harmony = \chordmode {
  cis2:m gis:7 | cis1:m | fis2:m gis:7 | cis2:m a4:7 gis:7 |
  cis1:m | fis1:m | gis:7 | cis2:m a4:7 gis:7 |
  cis1:m | fis1:m | b:7 | e2 gis:7 |
  cis2:m gis:7 | cis1:m | fis2:m gis:7 | cis2:m gis:7 |

  cis2:m gis:7 | cis2.:m gis4:7  | cis2:m gis:7  | cis2:m cis:7 | fis2:m cis:7 | fis1:m |
  dis1:m5-7 | q | gis:7 | fis2:m gis:7 | cis2:m a4:7 gis:7 | cis1:m |
  cis1:7 | cis2:7 d:7 | cis2:7 d:7 | cis1:7 | fis1:m | fis1:m |
  cis1:m | cis2:m/b dis2:7/ais | a:7 gis:7 | cis1:m |

}
\paper {
  % system-separator-markup = \slashSeparator
  % line-width = 120
}
\score {
  \transpose cis a
  \new PianoStaff <<
    \chords {
      \harmony
    }
    \new Staff = "voice" {
      \relative c'' \melody
    }
    \new Staff = "arrange" {
      \mark \default
      \piano \piano \piano \piano \break
      \piano \piano \piano \piano \break
      \piano \piano \piano \piano \break
      \piano \piano \piano \piano \break
      \mark \default
      \piano \piano \piano \piano \piano \piano \break
      \piano \piano \piano \piano \piano \piano \break
      \piano \piano \piano \piano \piano \piano \break
      \piano \piano \piano \piano \break
    }
  >>
  \layout {}
}
