\version "2.24.2"

\include "../include/common.ly"

\markup {
  Triads exercise in three consecutive strings
}

pattern =
#(define-music-function (chord) (ly:music?)
   #{
    \setChordStrings #'(6 5 4)                  $chord
    \setChordStrings #'(5 4 3) \transpose a d'  $chord
    \setChordStrings #'(4 3 2) \transpose a g'  $chord
    \setChordStrings #'(3 2 1) \transpose a c'' $chord
    \break
   #})


exercise = \chordmode {
  \pattern {a,,4 a,/cis a,/e r}
  \pattern {a,,:m a,:m/c a,:m/e r}
  \pattern {a,,:dim a,:dim/c a,:dim/ees r}
  \pattern {a,,:aug a,:aug/cis a,:aug/eis r}
  \pattern {a,,:7^1/g a,,:7^5 a,:7^5/cis a,:7^1/e r}
}

\layout { \omit Voice.StringNumber }

<<
\new Staff \exercise
\new ChordNames \exercise
\new AlphaTab \exercise
>>

\markup {
  Triads exercise with string skip
}

pattern =
#(define-music-function (chord) (ly:music?)
   #{
    \dropTwo 6                  $chord
    \dropTwo 5 \transpose a d'  $chord
    \dropTwo 4 \transpose a g'  $chord
    \break
   #})


exercise = \chordmode {
  \pattern {a,,4 a,/cis a,/e r}
  \pattern {a,,:m a,:m/c a,:m/e r}
  \pattern {a,,:dim a,:dim/c a,:dim/ees r}
  \pattern {a,,:aug a,:aug/cis a,:aug/eis r}
  \pattern {a,,:7^1/g a,,:7^5 a,:7^5/cis a,:7^1/e}
}

\layout { \omit Voice.StringNumber }

<<
\new Staff \exercise
\new ChordNames \exercise
\new AlphaTab \exercise
>>
