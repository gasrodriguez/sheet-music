\version "2.24.2"

\include "../include/common.ly"


music = {
  \setChordBass
  \setChordOctavations #'(-1 0 0 0 1 1) <g,\6 c\5 e\4 g\3 c'\2 e'\1>1 %C
  \setChordBass
  \setChordOctavations #'(-1 0 0 0)     <g,\6 c\5 e\4 g\3> %C63
  \setChordOctavations #'(0 0 0 1)      <c\5 e\4 g\3 c'\2> %C52
  \setChordBass
  \setChordOctavations #'(0 0 1 1)      <e\4 g\3 c'\2 e'\1> %C41
  \break

  \setChordBass
  \setChordOctavations #'(-1 0 0 1 1 1) <e,\6 a,\5 e\4 a\3 cis'\2 e'\1> %A
  \setChordBass
  \setChordOctavations #'(-1 0 0 1)     <e,\6 cis\5 e\4 a\3 > %A63
  \setChordOctavations #'(0 0 1 1)      <a,\5 e\4 a\3 cis'\2> %A52
  \setChordBass
  \setChordOctavations #'(0 1 1 1)      <e\4 a\3 cis'\2 e'\1> %A41
  \break

  \setChordOctavations #'(0 0 0 1 1 2)  <g,\6 b,\5 d\4 g\3 b\2 g'\1> %G
  \setChordOctavations #'(0 0 0 1)      <g,\6 b,\5 d\4 g\3> %G63
  \setChordBass
  \setChordOctavations #'(0 0 1 1)      <b,\5 d\4 g\3 d'\2> %G52
  \setChordBass
  \setChordOctavations #'(0 1 1 2)      <d\4 g\3 b\2 g'\1> %G41
  \break

  \setChordOctavations #'(0 0 1 1 1 2)  <e,\6 b,\5 e\4 gis\3 b\2 e'\1> %E
  \setChordOctavations #'(0 0 1 1)      <e,\6 b,\5 e\4 gis\3> %E63
  \setChordBass
  \setChordOctavations #'(0 1 1 1)      <b,\5 e\4 gis\3 b\2> %E52
  \setChordOctavations #'(1 1 1 2)      <e\4 gis\3 b\2 e'\1> %E41
  \break

  \setChordBass
  \setChordOctavations #'(-1 -1 0 0 1 1) <fis,\6 a,\5 d\4 a\3 d'\2 fis'\1> %D
  \setChordBass
  \setChordOctavations #'(-1 -1 0 0)     <fis,\6 a,\5 d\4 a\3> %D63
  \setChordBass
  \setChordOctavations #'(-1 0 0 1)      <a,\5 d\4 a\3 d'\2> %D52
  \setChordOctavations #'(0 0 1 1)       <d\4 a\3 d'\2 fis'\1> %D41
  \break
}

\layout { \omit Voice.StringNumber }

<<
  \new Staff \music
  \new ChordNames \music
  \new FretBoards  \music
  \new AlphaTab \music
>>