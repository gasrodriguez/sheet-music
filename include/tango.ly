\version "2.24.2"

piano = \relative c'' {
  <<
    \improvisationOn
    {r4 c r c} \\
    \improvisationOn
    {c,2 c}
  >>
}

arpegio = \relative c'' {
  <<
    \improvisationOn
    {r8 g c g r8 g c g } \\
    \improvisationOn
    {c,2 c}
  >>
}

bordoneo = \relative c'' {
  <<
    \improvisationOn
    {r8 g c r g c r g } \\
    \improvisationOn
    {c,4. c c4}
  >>
}

desmarcado = \relative c'' {
  <<
    \improvisationOn
    {r8 <g c>4. r8 <g c>4. } \\
    \improvisationOn
    {c,4 c c c}
  >>
}

marcado = \relative c'' {
  <<
    \improvisationOn
    {<g c>4-. q-. q-. q-. } \\
    \improvisationOn
    {c,4-> c c-> c}
  >>
}

marcadoDos = \relative c'' {
  <<
    \improvisationOn
    {<g c>4-. r q-. r} \\
    \improvisationOn
    {c,4-> \parenthesize c c-> \parenthesize c}
  >>
}


bajos = \relative c'' {
  <<
    \improvisationOn
    {c,4 c c c}
  >>
}

marcadoSincopa = \relative c'' {
  <<
    \improvisationOn
    {<g c>4-. q-. q-. r } \\
    \improvisationOn
    {c,4 c c r}
  >>
}

final = \relative c'' {
  <<
    \improvisationOn
    {<g c>4-. <g b>4-. <g c>4-. r } \\
    \improvisationOn
    {c,4 g-> c r}
  >>
}

blancas = \relative c'' {
  <<
    \improvisationOn
    {<g c>2 q} \\
    \improvisationOn
    {c,2 c}
  >>
}

blancaMarcado = \relative c'' {
  <<
    \improvisationOn
    {<g c>2 <g c>4 q } \\
    \improvisationOn
    {c,2 c4 c}
  >>
}

sincopa = \relative c'' {
  <<
    \improvisationOn
    {\parenthesize <g c>8 <g c>-> r4 <g c>4-> s } \\
    \improvisationOn
    {
      \once \override Glissando.springs-and-rods
      = #ly:spanner::set-spacing-rods
      \once \override Glissando.minimum-length = #4
      \once \hideNotes
      \grace g, \glissando c8 s4 \parenthesize c8 c4 r
    }
  >>
}

sincopaDoble = \relative c'' {
  <<
    \improvisationOn
    {\parenthesize <g c>8 <g c>-> s4 \parenthesize <g c>8 <g c>-> s4 } \\
    \improvisationOn
    {
      \once \override Glissando.springs-and-rods
      = #ly:spanner::set-spacing-rods
      \once \override Glissando.minimum-length = #4
      \once \hideNotes
      \grace g, \glissando c8 s8 r4
      \once \override Glissando.springs-and-rods
      = #ly:spanner::set-spacing-rods
      \once \override Glissando.minimum-length = #4
      \once \hideNotes
      \grace g \glissando c8 r4
    }
  >>
}

sincopaTierra = \relative c'' {
  <<
    \improvisationOn
    {<g c>8-> <g c> r4 <g c>4 s } \\
    \improvisationOn
    {
      \once \override Glissando.springs-and-rods
      = #ly:spanner::set-spacing-rods
      \once \override Glissando.minimum-length = #4
      \once \hideNotes
      \grace g, \glissando c8 s4 c8 r2
    }
  >>
}

sincopaMarcado = \relative c'' {
  <<
    \improvisationOn
    {r8 <g c>4. <g c>4 q } \\
    \improvisationOn
    {
      \once \override Glissando.springs-and-rods
      = #ly:spanner::set-spacing-rods
      \once \override Glissando.minimum-length = #4
      \once \hideNotes
      \grace g, \glissando c4. \parenthesize c8 c4 c
    }
  >>
}

sincopaFalsa = \relative c'' {
  <<
    \improvisationOn
    {r8 <g c>4. <g c>4 r } \\
    \improvisationOn
    {c,4. \parenthesize c8 c4 r}
  >>
}