\version "2.24.2"

piano = \relative c' {
  <<
    {\improvisationOn r4 c r c \improvisationOff} \\
    {\improvisationOn c,2 c \improvisationOff}
  >>
}

arpegio = \relative c' {
  <<
    {\improvisationOn r8 g c g r8 g c g \improvisationOff} \\
    {\improvisationOn c,2 c \improvisationOff}
  >>
}

bordoneo = \relative c' {
  <<
    {\improvisationOn r8 g c r g c r g  \improvisationOff} \\
    {\improvisationOn c,4. c c4 \improvisationOff}
  >>
}

desmarcado = \relative c' {
  <<
    {\improvisationOn r8 <g c>4. r8 <g c>4.  \improvisationOff} \\
    {\improvisationOn c,4 c c c \improvisationOff}
  >>
}

pesante = \relative c' {
  <<
    {\improvisationOn <g c>4-- q-- q-- q--  \improvisationOff} \\
    {\improvisationOn c,4-- c-- c-- c-- \improvisationOff}
  >>
}

marcado = \relative c' {
  <<
    {\improvisationOn <g c>4-. q-. q-. q-.  \improvisationOff} \\
    {\improvisationOn c,4-> c c-> c \improvisationOff}
  >>
}

marcadoDos = \relative c' {
  <<
    {\improvisationOn <g c>4-. r q-. r \improvisationOff} \\
    {\improvisationOn c,4-> \parenthesize c c-> \parenthesize c \improvisationOff}
  >>
}


bajos = \relative c' {
  <<
    {\improvisationOn c,4 c c c \improvisationOff}
  >>
}

marcadoSincopa = \relative c' {
  <<
    {\improvisationOn <g c>4-. q-. q-. r  \improvisationOff} \\
    {\improvisationOn c,4 c c r \improvisationOff}
  >>
}

final = \relative c' {
  <<
    {\improvisationOn <g c>4-. <g b>4-. <g c>4-. r  \improvisationOff} \\
    {\improvisationOn c,4 g-> c r \improvisationOff}
  >>
}

blancas = \relative c' {
  <<
    {\improvisationOn <g c>2 q \improvisationOff} \\
    {\improvisationOn c,2 c \improvisationOff}
  >>
}

blancaMarcado = \relative c' {
  <<
    {\improvisationOn <g c>2 <g c>4 q  \improvisationOff} \\
    {\improvisationOn c,2 c4 c \improvisationOff}
  >>
}

sincopa = \relative c' {
  <<
    {\improvisationOn \parenthesize <g c>8 <g c>-> r4 <g c>4-> s  \improvisationOff} \\
    {\improvisationOn
      \once \override Glissando.springs-and-rods
      = #ly:spanner::set-spacing-rods
      \once \override Glissando.minimum-length = #4
      \once \hideNotes
      \grace g, \glissando c8 s4 \parenthesize c8 c4 r
     \improvisationOff}
  >>
}

sincopaDoble = \relative c' {
  <<
    {\improvisationOn \parenthesize <g c>8 <g c>-> s4 \parenthesize <g c>8 <g c>-> s4  \improvisationOff} \\
    {\improvisationOn
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
     \improvisationOff}
  >>
}

sincopaTierra = \relative c' {
  <<
    {\improvisationOn <g c>8-> <g c> r4 <g c>4 s  \improvisationOff} \\
    {\improvisationOn
      \once \override Glissando.springs-and-rods
      = #ly:spanner::set-spacing-rods
      \once \override Glissando.minimum-length = #4
      \once \hideNotes
      \grace g, \glissando c8 s4 c8 r2
    }
  >>
 \improvisationOff}

sincopaMarcado = \relative c' {
  <<
    {\improvisationOn r8 <g c>4. <g c>4 q  \improvisationOff} \\
    {\improvisationOn
      \once \override Glissando.springs-and-rods
      = #ly:spanner::set-spacing-rods
      \once \override Glissando.minimum-length = #4
      \once \hideNotes
      \grace g, \glissando c4. \parenthesize c8 c4 c
     \improvisationOff}
  >>
}

sincopaFalsa = \relative c' {
  <<
    {\improvisationOn r8 <g c>4. <g c>4 r  \improvisationOff} \\
    {\improvisationOn c,4. \parenthesize c8 c4 r \improvisationOff}
  >>
}