\version "2.24.2"

\include "../include/common.ly"

\header {
  title = "Saeta"
  composer = "Joao Manuel Serrat"
}


\parallelMusic voiceA,voiceB {
  \key a \minor
  \time 4/4
  \mark \default

  \partial 16
  s16|
  \xNote {<b, e>32 q}|

    s1|
    \xNote {q8 q q q q q q q16 q32 q }|

  \repeat volta 3 {
    <a c' f'>4 \arpeggio ~ \tuplet 3/2 {8 q q q q q q q q}|
    f,4 f c f|

    <gis b e'>2 q \arpeggio |
    e,4 b, e b,|
  }

  \repeat volta 2 {
    <a c' e'>4 \arpeggio ~ \tuplet 3/2 {8 q q q q q q q q}|
    a,4 e a, e|

    <f gis d'>2 <gis d' f'>4 \arpeggio <gis~ d'~ e'>8 \arpeggio <gis d' d'>|
    e,4 b, f b,|
  }

  <a c' e'>4 ~ \tuplet 3/2 {8 q q q q q q q <a c' f'>}|
  a,4 e a, e|

  <g b g'>4 ~ \tuplet 3/2 {8 q q q q q q q <g b e'>}|
  g,4 d b, d|

  <a c' f'>4 ~ \tuplet 3/2 {8 q q q q q q q <a c' g'>}|
  f,4 f c f|

  <gis b e'>4 <f gis d'> <f gis c'> <f gis b >4 |
  e,4 b, f b,|

  <a c'>4 \tuplet 3/2 {q4 q8} q2 ~|
  a,4 e a, e,|

  4 \tuplet 3/2 {q4 q8} q2|
  a,4 e a, e,|

  <e a c'>4-. \arpeggio e8 e e e a b|
  a,4-. r2. |

  \break
  \mark \default
  c'4 \tuplet 3/2 {<e a>8 q q} q2 |
  a,2. e,4|

  <e a>4 \arpeggio <a c'>8 \arpeggio c'8 b32 (c' b16) a8 g a |
  a,4 e a,2|

  <g b>4 \tuplet 3/2 {<d g>8 q q} q2~|
  g,2. b,4|

  4 <g b>8 \arpeggio b a g f g |
  g,4 d g,2 |

  a4 \tuplet 3/2 {<c f>8 q q} q2~|
  f,2. c4|

  4 <f a>8 q g f e f |
  f,2 f,8 c4. |

  g4 \tuplet 3/2 {<c e g>8 q q} q4 q|
  g,1|

  <e gis>4 q8 q q q a b|
  gis,4 e,8 b, e, b,4.|

  \break
  c'4 \tuplet 3/2 {<e a>8 q q} q2 ~|
  a,2. e,4|

  4 <a c'>8 q q q <c' e'>8 q |
  a,2 a, |

  <g d'>4 g8 e'16 d'32 (c') d'4 \tuplet 3/2 {<d g>8 q q}|
  g,4 d g,2|

  d4 <g b>8 <g c'> <g d'> <g c'> <c ' e'> <g d'>|
  g,2 4 4|

  c'4 <f a>8 \tuplet 3/2 {d'16 (c' b)} c'4 \tuplet 3/2 {<f a>8 q q}|
  f,2 f,|

  <c f a>4 a8 b <a c'> <a b> <a d'> <a c'>|
  f,2 4 4|

  <b e'>4 \tuplet 3/2 {<gis b>8 q q~q q q~q q q}|
  e,2 b,4 e |

  \tuplet 3/2 {<b e'>8 q q <gis d'> q q <gis c'> q q <gis b> q q}|
  e,2 c4 e, |

    \break
   \mark \default
   <c' e'>4 <a c'>8 \glissando <b d'> <c' e'>4 \tuplet 3/2 {<a c'>8 q q}|
    a,2 a,4 e|

    <e a c'>4 \arpeggio <a c'>8 \glissando <b d'> <c' e'> <a c'> <c' f'> <c' e'>|
    a,2 a,4 e, |

    <g d'>4 g8 e'16 d'32 (c') d'4 \tuplet 3/2 {<d g>8 q q}|
    g,4 d g,2|

    d4 <g b>8 <g c'> <g d'> <g c'> <c ' e'> <g d'>|
    g,2 4 4|

    c'4 <f a>8 \tuplet 3/2 {d'16 (c' b)} c'4 \tuplet 3/2 {<f a>8 q q}|
    f,2 f,|

        <c f a>4 a8 b <a c'> <a b> <a d'> <a c'>|
        f,2 4 4|

        <b e'>4 \tuplet 3/2 {<gis b>8 q q~q q q~q q q}|
        e,2 b,4 e |

        \tuplet 3/2 {<b e'>8 q q <gis d'> q q <gis c'> q q <gis b> q q}|
        e,2 c4 e, |

    \break
    <c' e'>4 <a c'>8 \glissando <b d'> <c' e'>4 \tuplet 3/2 {<a c'>8 q q}|
    a,2 a,4 e|

    <e a c'>4 \arpeggio <a c'>8 \glissando <b d'> <c' e'> <e' g'> <d' f'> <c' e'>|
    a,2 a,  |

    <g d'>4 g8 e'16 d'32 (c') d'4 \tuplet 3/2 {<d g>8 q q}|
    g,4 d g,2|

    d4 <g b>8 <g c'> <g d'> <g c'> <c ' e'> <g d'>|
    g,2 4 4|

    c'4 <f a>8 \tuplet 3/2 {d'16 (c' b)} c'4 \tuplet 3/2 {<f a>8 q q}|
    f,2 f,|

        <c f a>4 <c' f'>8 q q q <c' g'> <c' f'>|
        f,2 4 4|

        <b e'>4 \tuplet 3/2 {<gis b>8 q q~} q4 q|
        e,2 b,|

        <e gis b>1|
        e,1|

  \break
  \appoggiatura {c'16} e'4 e'8 e' e' e' a' b' ~|
  r1|

  4 b'8:32 b'8:32 b'8:32 b'8:32 b'8:32 b'8:32 |
  r4 a,8 a b c' b c'|

  r1|
  \harmonicsOn <e a>1 \harmonicsOff|

  \appoggiatura {a16} c'4 c'8 c' b a g16 a b8 ~|
  r1|

  4 \tuplet 3/2 {d16 g b e' b d a g b a g e' a g b <d g a b e'>8. \arpeggio}|
  g,1 |

  b'16 b' b' b'~8 \glissando a' g' g'  \glissando f'16 g' g' \glissando a'~|
  r1 |

  4 \tuplet 6/4 {g'16 (f') e' d' e' f'} g'16 \glissando a'8.~ 4|
  s1|

  \tuplet 6/4 {g'16 (f') e' d' e' d'} c'32 (b) a b a gis a f  \appoggiatura{e64} \tuplet 6/4 {d16 c b, a, gis, f,} e,4 |
  s1|

  \tuplet 3/2 {<e, b f' gis' b e'>8 q q q q q q q q ~} q4|
  s1|

  <a c' e'>4 ~ \tuplet 3/2 {8 q q q q q q q <a c' f'>}|
  a,4 e a, e|

  <g b g'>4 ~ \tuplet 3/2 {8 q q q q q q q q}|
  g,4 d b, d|

  <a c' a'>4 ~ \tuplet 3/2 {8 q q} <gis b gis'>4 <d' e' b'>|
  f,4 f e,2|

  <c' e' a'>1|
  a,1 |
}


\score {
  \new Staff {
    <<
      \voiceA \\
      \voiceB
    >>
  }
}