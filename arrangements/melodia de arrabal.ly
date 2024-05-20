\version "2.24.1"
% automatically converted by musicxml2ly from /Users/gasrodriguez/Downloads/D- Cancionero XML/Melodía de arrabal cancionero.xml
\pointAndClickOff

\include "../include/common.ly"
\include "../include/tango.ly"

\header {
  title =  "Melodía de arrabal"
  composer =  \markup \column {
    \line { "C. Gardel"}
    \line { "A. Le Pera y M. Bates"}
  }

  encodingsoftware =  "Sibelius 18.7"
  encodingdate =  "2021-03-05"
}

PartPOneVoiceOne =  \relative e' {
  \numericTimeSignature\time 4/4 \key a \minor | % 1
  \mark \markup { \box { A } } e8 e4 e8
  e8 e8 g8 f8 | % 2
  f8 e4 e8 e8 e8 g8
  f8 | % 3
  f8 e4 b8 b8 b8 e8
  d8 | % 4
  d4 c2 r4 | % 5
  r8 g'8 g8 g8 g8 g8 a8
  g8 | % 6
  a4 g2 r4 | % 7
  r8 e8 e8 e8 e8 e8 f8
  e8 | % 8
  f4 e2 r4 | % 9
  a4 f4 ~ f8 c'8 b8 a8
  | \barNumberCheck #10
  a4 e2 r4 | % 11
  e4 b4 ~ b8 f'8 e8
  dis8 | % 12
  e2 r2 | % 13
  d2 ~ d8 gis8 a8 b8 | % 14
  c4 a4 r8 a8 gis8 a8 | % 15
  c8 b8 b4 ~ b8 b8
  a8 gis8 | % 16
  a4 r4 r2 \bar "||"
  \key a \major \mark \markup { \box { B } } fis2 e2 | % 18
  gis2 fis2 | % 19
  r8 cis'4 b8 d8 cis8
  b8 cis8 | \barNumberCheck #20
  b8 a8 gis8 a8 gis8
  fis8 a8 e8 | % 21
  d2 r4 r4 | % 22
  gis2 fis2 | % 23
  cis'2 b2 | % 24
  r8 b4 cis8 d8 b8
  cis8 a8 | % 25
  b8 gis8 a8 fis8 gis8
  e8 gis8 e8 | % 26
  cis2 r2 | % 27
  fis2 e2 | % 28
  b'2 a2 | % 29
  r8 cis4 d8 e8 cis8
  d8 b8 | \barNumberCheck #30
  cis8 ais8 r8 ais16 b16
  cis8 ais8 b8 cis8 | % 31
  d2 r2 | % 32
  r8 d4 b8 fis8 d'8 cis8
  bis8 | % 33
  cis4 cis8 a8 e8 cis'8
  b8 ais8 | % 34
  b4 b8 e,8 d8 b'8 a8
  gis8 | % 35
  a4 r4 r2 \bar "|."
}

PartPOneVoiceOneChords =  \chordmode {
  \key a \minor |
  | % 1
  a8:m s4 s8 e8:7 s8 s8 s8 | % 2
  a8:m s4 s8 e8:7 s8 s8 s8 | % 3
  a8:m s4 s8 e8:7 s8 s8 s8 | % 4
  a4:m s2 s4 | % 5
  s8 g8:7 s8 s8 s8 s8 s8 s8 | % 6
  c4 s2 s4 | % 7
  e8:7 s8 s8 s8 s8 s8 s8 s8 | % 8
  a4:m s2 s4 | % 9
  d4:m s4 s8 s8 s8 s8 | \barNumberCheck #10
  a4:m s2 s4 | % 11
  e4:7 s4 s8 s8 s8 s8 | % 12
  a2:m a2:7 | % 13
  d2:m s8 e8:7 s8 s8 | % 14
  a4:m s4 s8 s8 s8 s8 | % 15
  b8:7 s8 s4 e8:7 s8 s8 s8 | % 16
  a4:m s4 e2:7 \bar "||"
  \key a \major |
  a2 s2 | % 18
  s2 s2 | % 19
  s8 s4 s8 s8 s8 s8 s8 | \barNumberCheck #20
  a8/+cis s8 s8 s8 c8:dim s8 s8 s8 | % 21
  b2:m7 s4 s4 | % 22
  b2:m s2 | % 23
  e2:7 s2 | % 24
  e8:7 s4 s8 s8 s8 s8 s8 | % 25
  b8:m s8 s8 s8 e8:7 s8 s8 s8 | % 26
  a2 s2 | % 27
  a2 s2 | % 28
  a2 s2 | % 29
  a8 s4 s8 s8 g8:7 s8 s8 | \barNumberCheck #30
  fis8:7 s8 s8 s16 s16 s8 s8 s8 s8 | % 31
  b2:m fis2:7 | % 32
  b8:m s4 s8 e8:7 s8 s8 s8 | % 33
  a4 s8 s8 s8 fis8:7 s8 s8 | % 34
  b4:m s8 s8 e8:7 s8 s8 s8 | % 35
  a4 s4 s2 \bar "|."
}

reHarmony =  \chordmode {
  | % 1
  a2:m/c a4 e:7 | % 2
  a4:m b a/c f/c | % 3
  e2/b e/gis | % 4
  a4:m b c a | % 5
  \break
  d2:m7 g:7 | % 6
  c4 c g:7/b f:7/a | % 7
  e2:7/gis e2:7/gis | % 8
  e:5-7- a:7 | % 9
  \break
  d4:m e f e, | \barNumberCheck #10
  a4:m s2 s4 | % 11
  e2:m e:m7/d | % 12
  e:5-7- a:7 | % 9
  \break
  d2:m d:m/f | % 14
  a2:m a:m7/g| % 15
  fis2:dim e2:7 | % 16
  a1 \bar "||"
  \break

  a2:6 a2 | % 18
  gis2. e4:7/b | % 19
  a2 a4 e | \barNumberCheck #20
  a2/+cis c:dim | % 21
  b2:m7 b:m7/d | % 22
  \break
  b2:m s2 | % 23
  e2:7 s2 | % 24
  e8:7 s4 s8 s8 s8 s8 s8 | % 25
  b8:m s8 s8 s8 e8:7 s8 s8 s8 | % 26
  cis4:m7 c:m6 b:m7 bes:m6 | % 27
  \break
  a2:maj7 e/gis | % 28
  a2. g4| % 29
  fis2. e4 | \barNumberCheck #30
  fis2:7/cis fis:7/bis | % 31
  b2:m b:m/d | % 32
  \break
  d:maj7 dis:dim| % 33
  a2:maj7 fis:7| % 34
  b2:m e2:7 | % 35
  a4 s4 s2 \bar "|."
  \break
}

\parallelMusic voiceA,voiceB {
  % Bar 1
  <d' fis d'>4 b'8 fis r  <d gis d'>8 cis'16 b cis8 |
  d2                e |

  r16 a, e' fis  cis'8 a16 e dis8 cis' b16 ais b8 |
  cis4.. cis16 c4 r |

  r8 <d a b>4 a8 <a, d gis>8 b'4 a16 gis |
  b8 fis'4. e4 e, |

  <cis, a'>8 r2..|
  a8 d16 dis e8 e, <dis' fis> e, <d' gis> e, |
}

rhythm = {
  \blancaMarcado \marcado \blancas \desmarcado
  \arpegio \marcado \blancas \arpegio
  \desmarcado \marcado \arpegio \arpegio
  \arpegio \arpegio \arpegio \bajos

  \desmarcado \arpegio \blancaMarcado \arpegio \desmarcado
  \desmarcado \blancaMarcado \blancas \blancas \marcado
  \blancas \marcado \blancaMarcado \arpegio \desmarcado
  \arpegio \arpegio \arpegio \bajos
}

\bookpart {
  \score {
    \new Staff {
      <<
        \relative c \voiceA \\
        \relative c \voiceB
      >>
    }
  }

  \score {
    <<

      \new Staff {
        \PartPOneVoiceOne
      }
      \context ChordNames {
        \reHarmony
      }
      \new Staff = "rhythm" {
        \rhythm
      }
      \new RomanChordNames \PartPOneVoiceOneChords
    >>
  }
}
