\version "2.24.2"

\include "../include/common.ly"

\header {
  title = "Saeta"
  composer = "Joao Manuel Serrat"
  arranger = "Paco 'El Leri'"
}


\parallelMusic voiceA,voiceB {
  \key e \minor
  \time 4/4

  \partial 16
  s16|
  \xNote {\tuplet 3/2 {<b, e>32 q q}}|

  s1|
  \xNote {q8 q q q q q q q16 \tuplet 3/2 {<b, e>32 q q} }|

  s1|
  \xNote {q8 q q q q q q q16 \tuplet 3/2 {<b, e>32 q q} }|

  s1|
  \xNote {q8 q q q q q q4 }|

  \break
  \repeat segno 2 {
    \repeat volta 2 {
      s1|
      \tuplet 4/4 {<c e g c' e'>32 q q q} \tuplet 4/4 {q q q q} <c e g d' e'> q q q q q q q <c e g c' e'> q q q q q q q <c e g c' g'> q q q q q q q |

      s1|
      <b, dis a b fis'>32 q q q q q q q q q q q q q q q q q q q q q q q q q q q q q q q |
    }

    c'8 b c' d' e' dis' e' fis' |
    <c e g c'>2 \arpeggio 2 \arpeggio |

    dis'4 r2.|
    <b, fis a dis'>4 \arpeggio \tuplet 3/2 {q8 q q <c g bes e'> q q q q q} |

    \break
    \alternative {
      \volta 1 {
        r4 b8 b b4 e'8 fis'|
        <b, fis a dis'>4 r2.|

        g'4 \tuplet 5/4 {b16 g e g b} g'4 \tuplet 5/4 {b16 g e g b} |
        \appoggiatura{e,}2 <e, b, e g b>2 \arpeggio|

        g'4 g'8 fis' \appoggiatura{e' fis'} e'4 d'8 e' |
        <e, b, e g b>2 \arpeggio e,2 |

        fis'4 \tuplet 5/4 {d'16 b fis b d'} fis'4 \tuplet 5/4 {d'16 b fis b d'}  |
        \appoggiatura{b,}2 <b, fis b d>2 \arpeggio|

        fis'4 \tuplet 3/2 {fis'16 g' fis'} e'8 d' d' c' d'  |
        <b, fis b d>2 \arpeggio q  \arpeggio |

        e'4 \tuplet 5/4 {c'16 a e a c'} e'4 \tuplet 5/4 {c'16 a e a c'} |
        \appoggiatura{a,}2 <a, e a c>2 \arpeggio|

        r4 \appoggiatura{a16 d'} \tuplet 3/2 {fis'16 g' fis'} e'8 d' c' b c'|
        d1 |

        \tuplet 6/4 {d'4 g16 d} \tuplet 6/4 {b, d g d' g d} \tuplet 6/4 {d'4 g16 d b, d g d' g d } |
        \appoggiatura{g,}2 <g, b, fis b d>2 \arpeggio|

        dis'4 b8 b b4 e'8 fis'|
        \appoggiatura{fis,}4 r2.|

        g'4 \tuplet 5/4 {b16 g e g b} g'4 \tuplet 5/4 {b16 g e g b} |
        \appoggiatura{e,}2 <e, b, e g b>2 \arpeggio|


        g'4 b'8 b' b' \glissando e''8 8 8 |
        <e, b, e g b>2 \arpeggio \appoggiatura{e,16}e,2 |

        d''4 \tuplet 5/4 {fis'16 d' b d' fis'} d''4 \tuplet 5/4 {fis'16 d' b d' fis'}  |
        \appoggiatura{b,}2 <b, fis b d' fis'>2 \arpeggio|

        d''4 d''8 d'' d'' e'' e'' d''  |
        <b, fis b d' fis'>4 <b, d' fis'> \arpeggio \appoggiatura{b,}b,2|

        \tuplet 6/4 {c''4 e'16 c'} \tuplet 6/4 {a c' e' c'' e' a} c''4 \tuplet 5/4 {e'16 c' a c' e'} |
        \appoggiatura{a,}2 <a, e a c e'>2 \arpeggio|

        c''4 c''8 8 8 \glissando d'' d'' c''|
        <a, e a c e'>2 \arpeggio q|

        \tuplet 6/4 {b'4 fis'16 dis'} \tuplet 6/4 {b dis' fis' b' fis' b} b'4 \tuplet 5/4 {fis'16 dis' b dis' fis'} |
        \appoggiatura{b,}2 <b, fis b dis' fis'>2 \arpeggio|

        \break
        b'4  b8 b b4 e'8 fis'|
        <b, fis b dis' fis'>4 \arpeggio r2.|

        g'16 (fis') e'8~2 g'4  |
        \appoggiatura{e,}4 \tuplet 4/4 {<e, b, e g b e'>32 q q q} \tuplet 4/4 {q q q q} q4 r|

        fis'16 (e') d'8~2 f'4  |
        \appoggiatura{b,}4 \tuplet 4/4 {<b, fis b d'>32 q q q} \tuplet 4/4 {q q q q} q4 <bes, f aes des'>|

        e'4 c'8 d' e' e' e' d' |
        <a, e g c'>2 <c e g c'>2|

        \time 6/4
        c'8-. 8-. r1 b8 c'|
        <c e g c'>8-. q-. r4 \xNote {\tuplet 4/4 {<gis, cis fis b dis' gis'>32 q q q} \tuplet 4/4 {q q q q} q q q q q q q q q4} r|

        \time 4/4
        d'8 c' d' e' fis' e' d' c'|
        <c e g c'>2 \arpeggio <c g c'> \arpeggio |

        \tuplet 6/4 {fis'4 b16 a} \tuplet 6/4 {dis a b fis' b a} \tuplet 6/4 {fis'4 b16 a} \tuplet 6/4 {dis a b fis' b a}|
        \appoggiatura{b,}2 \appoggiatura{fis,16}fis,2 |

        fis'2 r8 \tuplet 3/2 { b16 b b} b8 e'16 fis' |
        <b, dis a b>2 \arpeggio r2 |

        \repeat volta 2 {
          g'8. \tuplet 3/2 {<b, e g b g'>32 q q} q8 q16 q16~16 g' g' fis' \appoggiatura{e'16 fis'} e'8 d'16 e' |
          e,2  2 |

          fis'8. \tuplet 3/2 {<fis b d' fis'>32 q q} q8 q16 q~16 fis' fis' e' \appoggiatura{d'16 e'} d'8 c'16 d'|
          \appoggiatura{b,16}b,2  2 |

          e'8. \tuplet 3/2 {<e g c' e'>32 q q} q8 q16 q r8 <a d' fis'>16 \arpeggio (e') d' c' b c'|
          \appoggiatura{a,16}a,2 d2 |

          \alternative {
            \volta 1 {
              d'8. \tuplet 3/2 {<b, d g d'>32 q q} q8 q16 q dis'8 \tuplet 3/2 { b16 b b} b8 e'16 fis'|
              \appoggiatura{g,16}g,2 fis,2 |
            }
            \volta 2 {
              d'8. \tuplet 3/2 {<b, d g d'>32 q q} q8 q16 q dis'2|
              g,2 fis,2 |
            }
          }
        }

      }
      \volta 2 {
        \break
        \volta #'() { \codaMark 1 }
        r1|
        <b, fis a dis'>1|

        r1|
        <e, b, e g b e'>1|
      }
    }
  }
}


\score {
  \new Staff {
      % \set Score.dalSegnoTextFormatter = #format-dal-segno-text-brief

    <<
      \voiceA \\
      \voiceB
    >>
  }
}