\version "2.24.2"

\include "../include/common.ly"
\include "../include/tango.ly"

\header {
  title = "Vidala de la copla"
  composer = "Chango Rodríguez"
  arranger = "Osvaldo Burucuá"
}

melody = {
  \mark \default
  \key c \major
  \break
}



\parallelMusic voiceA,voiceB {
  \key d \major
  \time 6/8
  % Bar 1
  s2. |
  <d, a' d fis>16\arpeggio g' fis d a8 d fis4~|

  % Bar 2
  s2. |
  fis2. |

  s2. |
  \tuplet 3/2 {<d, a' d fis>16\arpeggio (g' fis)} d a c8 d d d,~|

  s2. |
  d2. |

  a'8 d d d a d|
  s2. |

  d4. d|
  s2. |

  a'8 fis a a fis d|
  s2. |

  d2. |
  s2. |

  s2. |
  \harmonicsOn <d' a' d>2. \harmonicsOff|

  s2. |
  \tuplet 3/2 {fis16 (g  fis)} d a c8 d d d~|

  s2. |
  d2. |

  a'8. a16 a8 a fis a|
  s2. |

  a8 fis~ 2|
  s2. |

  d8 d d a'4.~ |
  s2. |

  4. \tuplet 2/3 {fis8 d}|
  s2. |

  d2. |
  s2. |

  s2. |
  \harmonicsOn <d a' d>2. \harmonicsOff|

  s2. |
  <d, d' fis>16\arpeggio g' fis d a8 d d c|

  s2. |
  b16 c b c b8 d8 4~|

  s2. |
  d2. |

  b8. e16 e8 e b e|
  <e, b' e>2.~ |

  e4.  e|
  2. |

  e8. e16 e8 e fis g|
  <g d' g>2 r4 |

  fis8 r r2 |
  r8 \harmonicsOn b <cis a'>2 \fermata \harmonicsOff |

  a8. a16 a8 b8. a16 g8 |
  s2. |

  fis8 b, a' b8. a16 g8 |
  s2. |

  fis8 b,16 fis' fis8 e b16 e e8|
  s2. |

  d8 r4 r4. |
  s2. |

  a'8. a16 a8 b8. a16 g8 |
  d,8 a' d r a d |

  fis8 b, a' b8. a16 g8 |
  r8 a d r a d |

  fis8 b,16 fis' fis8 e b16 e e8|
  r8 a d r a d |

  d16 fis, g (fis) d a c d fis d d fis|
  s2. |

  r16 fis g (fis) d a c d fis fis, d' fis|
  d,2. |

  r16 fis g (fis) d a c d fis d d fis|
  d2. |

  r16 fis g (fis) d a fis d' fis, d' fis, d' |
  d2. |

  r16 fis g (fis) d a c d fis d d fis|
  d2. |

  r16 fis g (fis) d a c d fis f, d' e,|
  d2. |

  r16 fis' g (fis) d a c d fis d d fis|
  d2. |

  r16 fis g (fis) d a c d fis d d fis|
  d2. |

  a8. d8 d16 d8. a8 d16 |
  d8 a' d r a d |

  d4. d |
  r16 fis8 fis fis  fis  fis  fis16  |

  a'8. fis16 a8 a8 fis8 d8 |
  r8 a, d r a d |

  d16 fis,  g (fis) d a c d fis d d fis|
  d,2. |

  a'8. fis16 a8 a8. fis16 a8 |
  r8 a' d r a d |

  a4. fis |
  r16 fis8 fis fis  fis  fis  fis16  |

  a8. fis16 a8 a8 fis8 e 8 |
  r8 a, d r a d |

  d16 fis,  g (fis) d a c d fis d d fis|
  d,2. |

  b8. e8 e16 e8. b8 e16 |
  r8 <e b' e>8 8 r <e b' e>8 8 |

  e4. e |
  r8 <e b' e>8 8 r <e b' e>8 8 |

  e8. e8 e16 e8. fis8 g16 |
  r8 <g d' g>8 8 r <g d' g>8 8 |

  fis4.  r |
  r8 <g d' g>16  <a d a'> a a'  a, a'  a, a'  a, a'|

  a8. a16 a8 b8. a16 g8 |
  d,,8 a' d r a d |

  fis8 b, a' b8. a16 g8 |
  r8 a d r a d |

  fis8 b,16 fis' fis8 e b16 e e8|
  r8 a d r a d |

  d16 fis,  g (fis) d a c d fis d d fis|
  d,2. |

  a'8. a16 a8 b8. a16 g8 |
  d8 a' d r a d |

  fis8 b, a' b8. a16 g8 |
  r8 a d r a d |

  fis8 b,16 fis' fis8 e b16 e e8|
  r8 a d r a d |

  d16 fis,  g (fis) d a c d fis d d fis|
  d,2. |

  r16 fis  g (fis) d a c d fis d d fis|
  d2. |

  r16 a  bes (a) f c ees f a d, f a|
  f2. |

  r16 gis a (gis) e b d e gis cis, e gis|
  e2. |

  r16 g aes (g) ees bes des ees g c, ees g|
  ees2. |

  \harmonicsOn d8. g8 g16 g8. d8 g16 |
  r8 d8 8 r d8 8 |

  g4. g |
  r8 d8 8 r d8 8 |

  a8. b a8. b8 g16 |
  r8 d8 8 r d8 8 |

  g8 \harmonicsOff g16 (fis) d a c d fis d d fis|
  r2. |

  r16 fis  g (fis) d a c d fis d d fis|
  d2. |

  r16 a  bes (a) f c ees f a d, f a|
  f2. |

  r16 gis a (gis) e b d e gis cis, e gis|
  e2. |

  \time 9/8

  b8 c16 (b) g8 a bes16 (a) f8 gis a16 (gis) e8  |
  <g d' g>4. <f c' f>  <e b' e> |

  \time 3/4
  aes16 (g) ees bes aes'16 (g) ees bes a'16 (gis) e b |
  <ees bes' ees>4 <ees bes' ees> <e b' e>|

  aes'16 (g) ees bes aes'16 (g) ees ees ees8 ees  |
  <ees bes' ees>4 <ees bes' ees> r|

  \time 6/8
  d8 d' d d a d |
  r4. <d' fis>|

  d4. <a d> |
  r8 <d, a' d >8 8 r <d a' d>8 8 |

  a'8 fis a  a fis e |
  r8 <d a' d >8 8 r <a' e' a>8  <g d' g>8 |

  d4. \xNote {d8} fis8 8 |
  r8 <d a' d >16 16 16 16 r8 <a' e' a>8 8 |

  \xNote {fis4. d8} fis8 8 |
  r8 <d, a' d >16 16 16 16 r8 <a' e' a>8 8 |

  \xNote {fis4. d8} g8 a8 |
  r8 <d, a' d >16 16 16 16 r8 <g d' g>8 <a e' a>8 |

  \xNote {fis4. d }  |
  r8 <d, a' d >16 16 16 16 r8 <a' e' a>8  <g d' g>8 |

  a'8 a16 a a a a8 fis a    |
  r8 <d a' d >16 16 16 16 r8 <a'  e' a>8  8 |

  a4.  fis    |
  r8 <d, a' d >16 16 16 16 r8 <a'  e' a>8  8 |

  a8 fis16 a a a a8 fis e    |
  r8 <d, a' d >16 16 16 16 r8 <a' e' a>8  <g d' g>8 |

  d4. \xNote {d8} b4 |
  r8 <d a' d >16 16 16 16 r8 <e b' e>4 |

  b8. b16 e8 e8. b16 e8  |
  r8. <e b' e>16 8 r8. 16 8  |

  b8. b16 e8 e8. b16 e8  |
  r8. <e b' e>16 8 r8. 16 8  |

  b8. b16 e8 e8. fis16 g8  |
  r8. <g d' g >16 8 r8. <a  e' a>16 8  |

  fis8 \xNote {fis16 16} \harmonicsOn fis2 \fermata \harmonicsOff |
  r4                     \harmonicsOn <a, e' a>2 \harmonicsOff |

  a8 a16 a a a b8 a g    |
  r8 <d a' d >16 16 16 16 r8 <a'  e' a>8  8 |

  fis8 b,16 b a' a b8 a g    |
  r8 <d, a' d >16 16 16 16 r8 <a'  e' a>8  8 |

  fis8 b,16 b fis'8  e8 b e8    |
  r8 <d, a' d >16 16 16 16 r8 <g  d' g>8  8 |

  d4. \xNote {d8} d d |
  r8 <d a' d >16 16 16 16 r8 <f c' f>8 8 |

  a'8 a16 a a a b8 a g    |
  r8 <d a' d >16 16 16 16 r8 <a'  e' a>8  8 |

  fis8 b,16 b a' a b8 a g    |
  r8 <d, a' d >16 16 16 16 r8 <a'  e' a>8  8 |

  fis8 b,16 b fis'8  e8 b e8    |
  r8 <d, a' d >16 16 16 16 r8 <g  d' g>8  8 |

  d4. \xNote {d8} e e |
  r8 <d a' d >16 16 16 16 r8 <g d' g>8 8 |

  a8 a16 a a a a8 fis a    |
  r8 <d a' d >16 16 16 16 r8 <a'  e' a>8  8 |

  a4.  fis    |
  r8 <d, a' d >16 16 16 16 r8 <a'  e' a>8  8 |

  a8 a16 a a a a8 fis a    |
  r8 <d a' d >16 16 16 16 r8 <a  e' a>8  8 |

  g4.   g    |
  r8 <g d' g >16 16 16 16 r8 4 |

  fis16 fis fis fis fis fis fis8 fis16 fis8.     |
  r8 <fis cis' fis >16 16 16 16 r8 16  8. |

  b16 b b b b b b8 a16 a8.     |
  r8 <b fis' b >16 16 16 16 r8 <a  e' a>16  8. |

  d,16 d d d d d d8 d16 d8.     |
  r8 <e b' e >16 16 16 16 r8 16  8. |

  a'16 a a a a a a8 g16 g8.     |
  r8 <a  e' a>16 16 16 16 r8 <g  d' g>16  8. |

  a8 a16 a a8   g8. g16 g g     |
  r8 <a  e' a>16 16 8  <g  d' g>8. 16 16 16|

  fis16 fis fis f f f e e e ees ees ees |
  <fis cis' fis >16 16 16 <f c' f >16 16 16 <e b' e >16 16 16 <ees bes' ees >16 16 16|

  a 8 a16 a a a a8 fis a    |
  r8 <d a' d >16 16 16 16 r8 <a'  e' a>8  8 |

  a4.  fis    |
  r8 <d, a' d >16 16 16 16 r8 <a'  e' a>8  8 |

  a8 fis16 a a a a8 fis e    |
  r8 <d, a' d >16 16 16 16 r8 <a' e' a>8  <g d' g>8 |

  d4. \xNote {d8} b4 |
  r8 <d a' d >16 16 16 16 r8 <e b' e>4 |

  b8. b16 e8 e8. b16 e8  |
  r8. <e b' e>16 8 r8. 16 8  |

  b8. b16 e8 e8. b16 e8  |
  r8. <e b' e>16 8 r8. 16 8  |

  b8. b16 e8 e8. fis16 g8  |
  r8. <g d' g >16 8 r8. <a  e' a>16 8  |

  fis8 \xNote {fis16 16} \harmonicsOn fis2 \fermata \harmonicsOff |
  r4                     \harmonicsOn <a, e' a>2 \harmonicsOff |

  a8 a16 a a a b8 a g    |
  r8 <d a' d >16 16 16 16 r8 <a'  e' a>8  8 |

  fis8 b,16 b a' a b8 a g    |
  r8 <d, a' d >16 16 16 16 r8 <a'  e' a>8  8 |

  fis8 b,16 b fis'8  e8 b e8    |
  r8 <d, a' d >16 16 16 16 r8 <g  d' g>8  8 |

  d4. \xNote {d8} fis fis |
  r8 <d a' d >16 16 16 16 r8 <a' e' a>8 8 |

  a8 a16 a a a b8 a g    |
  r8 <d, a' d >16 16 16 16 r8 <a'  e' a>8  8 |

  fis8 b,16 b a' a b8 a g    |
  r8 <d, a' d >16 16 16 16 r8 <a'  e' a>8  8 |

  fis8 b,16 b fis'8  e8 b e8    |
  r8 <d, a' d >16 16 16 16 r8 <g  d' g>8  8 |

  d8 d16 d fis8  e8 b e8    |
  r8 <d a' d >16 16 16 16 r8 <g  d' g>8  8 |

  d4. \xNote {d8} fis fis |
  r8 <d a' d >16 16 16 16 r8 <a' e' a>8 8 |

}

  \score {
    \new Staff {
      <<
        \relative c \voiceA \\
        \relative c \voiceB
      >>
    }
  }