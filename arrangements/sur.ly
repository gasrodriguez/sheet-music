\version "2.24.1"
% automatically converted by musicxml2ly from /Users/gasrodriguez/Desktop/D'alegas/Tango/Cancionero del Tango/D- Cancionero XML/Sur cancionero.xml
\pointAndClickOff

\include "../include/common.ly"
\include "../include/tango.ly"

\header {
  title =  Sur
  composer =  \markup \column {
    \line { "A. Troilo"}
    \line { "H. Manzi"}
  }
}

PartPOneVoiceOne =  \relative fis' {
  \numericTimeSignature\time 4/4 \key d \minor | % 1
  \mark \markup { \box { A } } r4 r8 fis8 fis8 \stemUp
  fis16 fis16 fis8 fis8 | % 2
  fis8 fis4 r8 r8 fis8 g8 gis8
  | % 3
  a8 a4. r4 r8 a8 | % 4
  bes8 a8 g8 f8 e8 d8
  e8 f8 | % 5
  e2 r4 e8 f8 | % 6
  g8 f8 f8 e8 e8
  d8 d8 cis8 | % 7
  e4 d4 r4 e8 e8 | % 8
  e8 e8 e8 e8 e8 e8
  g8 f8 | % 9
  e2 r4 r8 fis8 | \barNumberCheck #10
  a8 fis8 a8 fis8 g8 e8
  g8 e8 | % 11
  a4 fis4 r4. a8 | % 12
  bes8 bes8 bes8 bes8
  d8 c8 c8 b8 | % 13
  c2 r4 cis8 cis8 | % 14
  cis8 a4 gis8 a8 g8 \stemUp
  g8 fis8 | % 15
  g4 f4 r4 d8 e8 | % 16
  f8 d4 d8 e8 cis8 \stemUp
  f8 e8 | % 17
  d4 r4 r2 \bar "||"
  \mark \markup { \box { B } } g1 | % 19
  r4 e8 f8 g4 f8 e8 |
  \barNumberCheck #20
  g2 r2 | % 21
  a1 | % 22
  r4 f8 g8 a4 g8 f8 | % 23
  a2 r4 r8 d8 | % 24
  d8 bes8 bes8 a8 g8
  g8 a8 bes8 | % 25
  c8 a8 a8 g8 f8 f8
  g8 a8 | % 26
  bes8 a8 g8 f8 e4. d8
  | % 27
  cis2 r4 r8 g'8 | % 28
  g8 f8 f8 e8 e8
  d8 d8 cis8 | % 29
  e8 d8 f8 f8 f8 e8
  e8 d8 | \barNumberCheck #30
  d8 cis8 e8 e8 e8 d8
  d8 cis8 | % 31
  e2 d4 r8 g8 | % 32
  g8 f8 f8 e8 e8
  d8 d8 cis8 | % 33
  e8 d8 f8 f8 f8
  e8 e8 d8 | % 34
  d8 cis8 e8 e8 e8 cis8
  f8 e8 | % 35
  d4 r4 r2 \bar "|."
}

PartPOneVoiceOneChords =  \chordmode {
   \key d \major
  | % 1
  s4 s8 s8 s8 s16 s16 s8 s8 | % 2
  d1| % 3
  a8:7 s4. d4:7 s8 s8 | % 4
  g8:m7 s8 s8 s8 bes8:7 s8 s8 s8 | % 5
  a2:7 s4 s8 s8 | % 6
  g8:m5 s8 s8 s8 s8 s8 s8 s8 | % 7
  d4:m5 s4 s4 s8 s8 | % 8
  e8:7 s8 s8 s8 bes8:7 s8 s8 s8 | % 9
  a2:7 s4 s8 s8 | \barNumberCheck #10
  d8:5 s8 s8 s8 a8:7 s8 s8 s8 | % 11
  d4:5 s4 s4. s8 | % 12
  g8:m7 s8 s8 s8 c8:7 s8 s8 s8 | % 13
  f2:5 s4 s8 s8 | % 14
  a8:7 s4 s8 s8 s8 s8 s8 | % 15
  d4:m5 s4 s4 s8 s8 | % 16
  bes8:7 s4 s8 a8:7 s8 s8 s8 | % 17
  d4:m5 s4 s2 \bar "||"
  a1:7 | % 19
  s4 s8 s8 s4 s8 s8 | \barNumberCheck #20
  s2 s2 | % 21
  d1:m5 | % 22
  d4:m5 s8 s8 s4 s8 s8 | % 23
  a2:dim5m7 d4:7 s8 s8 | % 24
  g8:m5 s8 s8 s8 c8:7 s8 s8 s8 | % 25
  f8:5 s8 s8 s8 f8:7 s8 s8 s8 | % 26
  bes8:5 s8 s8 s8 e4.:7 s8 | % 27
  a2:7 s4 s8 s8 | % 28
  g8:m5 s8 s8 s8 s8 s8 s8 s8 | % 29
  d8:m5 s8 s8 s8 s8 s8 s8 s8 | \barNumberCheck #30
  a8:7 s8 s8 s8 s8 s8 s8 s8 | % 31
  d2:7 s4 s8 s8 | % 32
  g8:m7 s8 s8 s8 s8 s8 s8 s8 | % 33
  d8:m5 s8 s8 s8 s8 s8 s8 s8 | % 34
  a8:7 s8 s8 s8 s8 s8 s8 s8 | % 35
  d4:m5 s4 s2 \bar "|."
}

reHarmony =  \chordmode {
  s1|
  d2:maj7 ees:m7.5-|
  a2:7 d:7/a |
  g2:m7 bes:7 |
  a1:7 |
  g2:m c:dim |
  d2:m7 d:m7/c |
  e2:7/b b:7 |
  a1:7 |

  d4:maj7 ees:m7.5- e:m a:7 |
  d2 d:7/fis |
  g2:m7 c:7 |
  f1 |
  a2:7 a2:7/cis |
  bes2 a:m |
  g2:m a:7 |
  d1:m |
  a1:7 |
  a1:7 |
  a1:7 |
  d2:m e:dim |
  d2:m e:dim |
  a2:m9 d:7.9 |
  g2:m7 c:7 |
  f2 bes |
  e2:7/b bes:7 |
  a1:7 |
  g2:m q |
  d2:m q |
  a2:7 q |
  a:m7.5- d:7 |

  g2:m6 c:dim |
  d2:m7 d:m7/c |
  e2:7/b a:7 |
  d4:m a:7 d2:m|


}

rhythm = {
  s1 \arpegio \arpegio \arpegio |
  << {r8 g16 gis a8 a a'2 } \\ {a,1 }>>
  \arpegio \arpegio \arpegio |
  << {r8 g16 gis a8 a' r8 a' a''4} \\ {a,2 a,}>>
  \pesante
  << {r8 a8 d' cis' c'4 <d a c'> } \\ {d2~8 fis,4.} >>
  \arpegio
  << {<f a c>4 f e d } \\ {f,4 f, g, gis, }>>
  \arpegio \arpegio  \arpegio |
  << {r4 <a f'>8 a'16 f' <g e'>8 a'16 e' <f d'>8 a'16 d'} \\ {d4 r2.}>>
  \break
  <<{<g cis' a'>8-. a'4. <e g cis'>8-. r16 e bes8. e16} \\ {a,4-. e, a, r}>>
  <<{ a8 cis' e' a16 aes g8 cis' g' a'} \\ {}>>
  <<{r8 <e g cis'>-. r4 <cis'~ e'~ bes'>8 <cis' e' a'>} \\ {e,8 a,-. r e,8 a,4 a, \glissando }>>
  <<{<a d' f'>8 a'4 r8 <bes cis' g'>8 e' }\\{d4-. e, e a, \glissando}>>
  \arpegio \arpegio \arpegio \arpegio \arpegio
  << {r8 g16 gis a8 a' r8 <a' a''>4.} \\ {a,2 a,}>>
  \marcado \marcado \marcado \arpegio \arpegio \arpegio \arpegio \final
}


\bookpart {
%   \score {
%     \new Staff {
%       <<
%         \relative c \voiceA \\
%         \relative c \voiceB
%       >>
%     }
%   }

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
      % \new RomanChordNames \PartPOneVoiceOneChords
    >>
  }
}