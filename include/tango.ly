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
    {c,4 c c c}
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

marcadoDos = \relative c'' {
  <<
    \improvisationOn
    {<g c>4-. q-. q-. q-. } \\
    \improvisationOn
    {c,4-> c c-> c}
  >>
}

sincopa = \relative c'' {
  <<
    \improvisationOn
    {r8 <g c>4. <g c>4 r } \\
    \improvisationOn
    {
      \once \override Glissando.springs-and-rods
      = #ly:spanner::set-spacing-rods
      \once \override Glissando.minimum-length = #4
      \once \hideNotes
      \grace g, \glissando c4. \parenthesize c8 c4 r
    }
  >>
}

sincopaTierra = \relative c'' {
  <<
    \improvisationOn
    {<g c>8 <g c>8 r4 <g c>4 r } \\
    \improvisationOn
    {
      \once \override Glissando.springs-and-rods
      = #ly:spanner::set-spacing-rods
      \once \override Glissando.minimum-length = #4
      \once \hideNotes
      \grace g, \glissando c8 c r \parenthesize c c4 r
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