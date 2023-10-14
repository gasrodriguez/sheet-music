\version "2.24.2"

\include "../include/common.ly"


\markup {
  Drop-2 exercise
}

pattern =
#(define-music-function (chord) (ly:music?)
   #{
    \dropTwo   6                  $chord
    \dropThree 6                  $chord
    \dropTwoThree 6               $chord
    \break
    \dropTwo   5 \transpose g c'  $chord
    \dropThree 5 \transpose g c'  $chord
    \dropTwo   4 \transpose g f'  $chord
    \break
   #})


exercise = \chordmode {
  \textMark Major
  \pattern {g,,4:maj7 g,:maj7/b   g,:maj7/d   g,:maj7/fis }
  \textMark Minor
  \pattern {g,,4:m7   g,:m7/bes   g,:m7/d     g,:m7/f     }
  \textMark "Half diminished"
  \pattern {g,,4:m7.5- g,:m7.5-/bes g,:m7.5-/des g,:m7.5-/f     }
  \textMark Diminished
  \pattern {g,,4:dim7 g,:dim7/bes g,:dim7/des g,:dim7/fes }
  \textMark Augmented
  \pattern {g,,4:aug7 g,:aug7/b   g,:aug7/dis g,:aug7/f   }
  \textMark "Dominant 7th"
  \pattern {g,,4:7    g,:7/b      g,:7/d      g,:7/f      }
  \textMark "Major 6th"
  \pattern {g,,4:6    g,:6/b      g,:6/d      g,:6/e      }
  \textMark "Minor 6th"
  \pattern {g,,4:m6    g,:m6/bes      g,:m6/d      g,:m6/e      }
}

\layout { \omit Voice.StringNumber }

<<
% \new Staff \exercise
\new ChordNames \exercise
\new AlphaTab \exercise
% \new TabStaff \exercise
>>
