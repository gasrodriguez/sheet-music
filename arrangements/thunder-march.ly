\version "2.24.2"

\include "../include/common.ly"

\header {
  title = "Thunder march"
  composer = "Marty Friedman"
  arranger = ""
}


\parallelMusic voiceA,voiceB,voiceC {
  \key c \major

  \time 4/4
  \mark \default
  r8 fis b fis' e \tuplet 3/2 {d16 e d} cis8 b  |
  s1|
  b8. 16 8. 16 8. 16 8. 16 |

  b8 cis d b cis2|
  s1|
  8. 16 8. 16 8. 16 16 16 16 16 |

  r8 a d a' g \tuplet 3/2 {fis16 g fis} e8 d  |
  s1|
  d8. 16 8. 16 8. 16 8. 16 |

  d8 e fis d e2|
  s1|
  8. 16 8. 16 8. 16 16 16 16 16 |

  r8 b e b' a \tuplet 3/2 {gis16 a gis} fis8 e  |
  s1|
  e,8. 16 8. 16 8. 16 8. 16 |

  e8 fis gis e fis2|
  s1|
  8. 16 8. 16 8. 16 16 16 16 16 |

  r8 bes, ees aes des ges b,, e |
  s1|
  bes'8 r2.. |

  \time 3/4
  a8 d g f,, bes4 |
  s2.|
  s2. |

  \time 4/4
  s1|
  s1|
  s1|

  \time 2/4
  s4 c8 d |
  s2|
  r4 a8 b |

  \time 4/4
  \break
  \mark \default
  \repeat volta 2 {
    e4 g d g |
    r8 g'4 g g g8 |
    c2 b |

    c,8 b a2 d8 e |
    r4. e8 a e r4 |
    a4. e8 a4  b8 c8 |

    f4 a e a |
    r8 a4 a a a8 |
    d2 a2 |

    d,2. c8 d |
    s1|
    d8 c b a g f e b' |

    e4 g g4. e8|
    r8 g4 g g g8 |
    c4. g8 c4 b4 |

    a4 b c2|
    r8 e'4 e e e8 |
    a4. e8 a4 g |

    \alternative {
      \volta 1{
        f,4 e8 (f16 e) d4 c |
        s1|
        f4. c'8 f8 e d c |

        g2. c8 d |
        s1|
        b8 g8 8 8 4 a8 b |
      }
      \volta 2 {
        f4 e8 (f16 e) d4. c8 |
        s1|
        f4 f g b|

        c1 |
        s1|
        c1 |

       }
    }
  }

  \break
  \mark \default
  b4 g8 b b4 \tuplet 3/2 {g8 a b} |
  <d, g>4 s <d g> s |
  g2 b |

  c4 d e \tuplet 3/2 {c8 d e} |
  <e g>4 <f g> <g c> <e g>|
  c4 b c2 |

  f4 e d c8. (d32 c) |
  s8 g4 g g g8 |
  d4 c b a |

  b1 |
  s8 g4 g8 s2|
  g4 d' g,2 |

  d4 b8 d d4 \tuplet 3/2 {b8 c d} |
  <d g>4 s <d g> s |
  g2 b |

  e8. 16 f e f fis g4~16 e f g |
  <g c>4 <g b> <g c> s|
  c4 d e c |

  a4 g f8 e f16 e d cis  |
  r8 c4 c c s8|
  f4 e d c |

  d1 |
  s1 |
  g4 8 8 2 |

  \break
  \mark \default
  b4. gis8 e4 \tuplet 3/2 {gis8 a b}|
  <d, gis>4 e  s e4 |
  e2 b' |

  c4. a8 e4 \tuplet 3/2 {a8 b c}|
  <e a>4 e4 s e4 |
  a2 c |

  d2~8 b16 c d f e d |
  <d g>4 d8 g s4 <f g>4 |
  b2 g4 b|

  e2.. e8 |
  <e g c>1 |
  c1 |

  f4 e8. (f32 e) d4 \tuplet 3/2 {d8 e f}|
  s1 |
  f4 e d b |

  e4~16 d16 c b c4. c8|
  s1 |
  e,4 gis a g|

  f4 g8 a g4. e8 |
  <a c>4 s4 <b d> s4|
  f'4 r4 f4 r4 |

  a4 c8 b16 a b4 c,8 d  |
  <c e>4 s4 <d f>4 s4 |
  a4 r4 g r |

  \break
  e4 g d g  |
  s1 |
  c,4 r b r |

  c8:32 b:32 a:32 gis:32 a:32 e:32 c:32 a:32 |
  s1 |
  a4. e8 a2 |

  r8  \tuplet 3/2 {a16 d f a f d} a8  r8  \tuplet 3/2 {a16 c f a f d} a8  |
  s1 |
  d2 cis |

  r8  \tuplet 3/2 {a16 d f a f d} a8  r4 c8 d  |
  s1 |
  c2 b4 a8 b |

  e4 g g4. e8|
  r8 g,4 g g g8 |
  c4. g8 c4 b4 |

  a16 e b' e, d'8. (c32 b) c2|
  s1 |
  a4. e8 a4 g |

  f,4 e8. (f32 e) d4. c8|
  <a c>4 s4 <d, g>2|
  f4 r4 g b |

  c8 a'4 g16 f e d c a c b8. |
  <f a>8 s8 s2. |
  c8 r8 r2. |

  \break
  \mark \default
  r16 c d e g d e d g b a g f g f e |
  s1 |
  c4. c8 b4. b8 |

  e16 a g e b' g e g  a16 e' e a e c a e' |
  s1 |
  a4. e8 a4 b8 c|

  e16 f d e d c b c d8. c32 b b4 |
  s1 |
  d4. d8 cis4. 8 |

  e16 f d e d c b c d8. c32 b b4 |
  s1 |
  d8 c b a g e g4 |

  s1 |
  s1 |
  c4. c8 b4. b8 |

  s1 |
  s1 |
  a4. e8 a4 g|

  s1 |
  s1 |
  f4. 8 g4. 8 |

  s1 |
  s1 |
  e2 a |

  c4 b a8 \tuplet 3/2 {g16 a g} f8 e16 f~|
  s1 |
  f'4 e d8 c b a16 b~ |

  2 d'8 c b d |
  s1 |
  8 a b c d e f g |

  d2 e |
  s1 |
  f,1|

  s1 |
  s1 |
  g2 c4 c~|

  s1 |
  s1 |
  1 |

}

\score {
  \new Staff {
    <<
      \relative c \voiceA \\
      \relative c \voiceC \\
      \relative c \voiceB
    >>
  }
}