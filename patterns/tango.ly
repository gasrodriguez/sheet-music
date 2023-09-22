\version "2.24.2"

piano = \relative c'' {
  <<
    {\improvisationOn r4 c r c} \\
    {\improvisationOn c,2 c}
  >>
  \improvisationOff
}

arpegio = \relative c'' {
  <<
    {\improvisationOn r8 g c g r8 g c g } \\
    {\improvisationOn c,2 c}
  >>
  \improvisationOff
}

desmarcado = \relative c'' {
  <<
    {\improvisationOn r8 <g c>4. r8 <g c>4. } \\
    {\improvisationOn c,4 c c c}
  >>
  \improvisationOff
}

marcado = \relative c'' {
  <<
    {\improvisationOn <g c>4-. q-. q-. q-. } \\
    {\improvisationOn c,4 c c c}
  >>
  \improvisationOff
}

blancas = \relative c'' {
  <<
    {\improvisationOn <g c>2 q} \\
    {\improvisationOn c,2 c}
  >>
  \improvisationOff
}

marcadoDos = \relative c'' {
  <<
    {\improvisationOn <g c>4-. q-. q-. q-. } \\
    {\improvisationOn c,4-> c c-> c}
  >>
  \improvisationOff
}

sincopa = \relative c'' {
  <<
    {\improvisationOn r8 <g c>4. <g c>4 r } \\
    {\improvisationOn
        \once \override Glissando.springs-and-rods
      = #ly:spanner::set-spacing-rods
    \once \override Glissando.minimum-length = #4
    \once \hideNotes
    \grace g, \glissando c4. c8 r2}
  >>
  \improvisationOff
}

falsaSincopa = \relative c'' {
  <<
    {\improvisationOn r8 <g c>4. <g c>4 r } \\
    {\improvisationOn c,4. c8 r2}
  >>
  \improvisationOff
}