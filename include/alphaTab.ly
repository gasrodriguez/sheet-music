\version "2.24.2"

% https://www.studybass.com/lessons/reading-music/alpha-tab/



#(define festival-note-mapping '((0 "c") (1 "c#") (2 "d") (3 "d#") (4 "e") (5 "f") (6 "f#")
                                         (7 "g") (8 "g#") (9 "a") (10 "a#") (11 "b")))

#(define (conditional-string-capitalize str fret-number)
   (if (< fret-number 12)
       (string-capitalize str)
       str
       )
   )

#(define-public (alphatab-tablature-format
                 context string-number fret-number)
   (let* ((labels (ly:context-property context 'fretLabels))
          (string-tunings (ly:context-property context 'stringTunings))
          (string-count (length string-tunings))
          (string-pitch (list-ref string-tunings (- string-number 1)))
          (string-semitones (ly:pitch-semitones string-pitch))
          (note-semitones (+ string-semitones fret-number))
          (tone (modulo note-semitones 12))
          (festival-note (car (assoc-get tone festival-note-mapping)))
          )
     (make-vcenter-markup
      (format #f "~a" (conditional-string-capitalize festival-note fret-number))))
   )


\layout {
  \context {
    \TabStaff
    stringTunings = #guitar-tuning
    tablatureFormat = #alphatab-tablature-format
    tabStaffLineLayoutFunction = #tablature-position-on-lines
  }
}