\version "2.24.2"

\include "../include/common.ly"
\include "../include/tango.ly"

\header {
  title = "La yumba"
  composer = ""
}


\parallelMusic voiceA,voiceB {
    \mark \default
    \key a \minor
    % Bar 1
    r8  <c' e a>4. r2 |
    a4.        e8 a b \tuplet 3/2 { c  e f }  |

    % Bar 2
    r8  <c e a>4 a'8 a      a      a   a |
    fis4.         r8 <fis c' e>4  <b, a' dis> |

    % Bar 3
    a8 b, d g b e, b4 |
    e2        r4. b8 |

    %
    r8  <c e a>4 a'16 fis fis e e dis  fis4     |
    fis'4.       r8       <b, a' dis>4 r4    |

    %
    r8  fis,  g  e'  r e,  cis'  e    |
    e,2           bes'            |

    %
    r8 f d' e, c' r8   <d, b'>4|
    d2          r8 e,4       e8|

    %
    <c a'>8 b c d <c e> <b d>4 b8 |
    a8  r8 r4     a            e  |

    %
    <e, a c>8 b' c d <c e> <b d>4 b8 |
    a8  r8     e4     a            e  |

    %
    b'8 gis, f' d  e f d e |
    e1 |

    %
    r8 <f, b d gis>4 gis'16 f <d, gis b f'>8 d' <b f gis d> b |
    e1 |

    %
    r8        gis a b   c      b c dis |
    <a e' a>2           <a e' a>4.  <a e' a>8|

    %
    e8 dis   e gis a gis a b        |
    r8 <a e' a> r2. |

    %
    r8 <cis, g' bes e >4. r2|
    a2                   \tuplet 3/2 {a8 cis e} \tuplet 3/2 {ais cis e}|

    %
    r8 <ais e' g cis>4 cis'16 ais <g, cis e ais>8 g' <e, ais cis g'> e' |
    a,,1 |

    %
    <d, a' d>4 r2. |
    f8 a4 d16 e f8 a d16 e f8 |

    %
    f'4. d16 e  f8 g \tuplet 3/2 {b cis d8}|
    d,8 a'4. r2  |

    %
    r4 f,8 d <d b'>4 f    |
    d,4 r2           r8 a |

    %
    r4 <d f c'>8 b' <d, f c'>8 b' c16 b b8 |
    d1 |

    %
    r8 <a, c e a> <aes c e b'> a' <g, c e b'> a' b16 a b8|
    a2 r|

    r8 <a, c e a>4 b'16 a b8 a gis16 a b8 |
    f'2 r |

    %
    r8 gis, f' d  e f d e |
    e,1 |

    %
    r8 <f, b d gis>4 gis'16 f <d, gis b f'>8 d' <b f gis d> b |
    e1 |

    %
    r8        gis a b   c      b c dis |
    <a e' a>2           <a e' a>4.  <a e' a>8|

    %
    e8 dis   e gis a gis a b        |
    r8 <a e' a> r2. |
    \break

    %
    r16 a8. \tuplet 3/2 {c8 a g} f4 \tuplet 3/2 {a8 f e} |
    a16 r8. r2. |

    d4 \tuplet 3/2 {f8 d c} b4. a8 |
    r1 |
    \break

    %
    r8 <c e b'>4 a'16 f e8 f e d |
    a1 |

    r8 f4 e16 d c8 b4 a8 |
    a2. e4 |

    r4              d4. d8 f4 |
    <d' gis>8 <b f>4    e,8 <b' f' gis>4 r8 e, |

    r8 f8 gis4. gis8 b4 |
    <d' gis b>4 r8 e,8 <b' f' gis>4 r8 e, |

    <c, a' >4 <d,  gis b>2.|
    a4 e2. |

     \break
   <c' e a >1|
    a1|

}

\score {
    % <<
    % \chords {
    %   \harmony
    % }
    \new Staff = "voice" {
       <<
        \relative c \voiceA \\
        \relative c \voiceB
       >>
    }
    % >>
    % \new Staff = "rhythm" {
    %     \rhythm
    % }

  \layout {}
}