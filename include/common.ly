\version "2.24.2"

#(define Ez_numbers_engraver
   (make-engraver
    (acknowledgers
     ((note-head-interface engraver grob source-engraver)
      (let* ((context (ly:translator-context engraver))
	     (tonic-pitch (ly:context-property context 'tonic))
	     (tonic-name (ly:pitch-notename tonic-pitch))
	     (grob-pitch
	      (ly:event-property (event-cause grob) 'pitch))
	     (grob-name (ly:pitch-notename grob-pitch))
	     (delta (modulo (- grob-name tonic-name) 7))
	     (note-names
	      (make-vector 7 (number->string (1+ delta)))))
	(ly:grob-set-property! grob 'note-names note-names))))))

%#(set-global-staff-size 26)

\layout {
  \context {
    \Voice
    \consists \Ez_numbers_engraver
  }
}

\paper {
  markup-system-spacing.padding = #8
  markup-markup-spacing.padding = #8
  top-system-spacing.basic-distance = #25
  system-system-spacing.basic-distance = #30
  staff-staff-spacing.basic-distance = #25
  StaffGrouper.staffgroup-staff-spacing
              .basic-distance = #20
  system-separator-markup = \slashSeparator
  indent = 0
}

\include "romanChords.ly"
\include "alphaTab.ly"