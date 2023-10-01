#(define (conditional-kern-before markup bool amount)
   "Add AMOUNT of space before MARKUP if BOOL is true."
   (if bool
       (make-line-markup
        (list (make-hspace-markup amount)
              markup))
       markup))

#(define (alteration->text-accidental-markup alteration)
   (make-smaller-markup
    (make-raise-markup
     (if (= alteration FLAT)
         0.3
         0.6)
     (make-musicglyph-markup
      (assoc-get alteration standard-alteration-glyph-name-alist "")))))

#(define (accidental->markup alteration)
   "Return accidental markup for ALTERATION."
   (if (= alteration 0)
       (make-line-markup (list empty-markup))
       (conditional-kern-before
        (alteration->text-accidental-markup alteration)
        #t 0.1)))

#(define (conditional-string-downcase str condition)
   (if condition
       (string-downcase str)
       str))

#(define (note-name->markup pitch lowercase?)
   "Return pitch markup for @var{pitch}."
   (make-concat-markup
    (list
     (make-simple-markup
      (conditional-string-downcase
       (vector-ref #("C" "D" "E" "F" "G" "A" "B") (ly:pitch-notename pitch))
       lowercase?))
     (accidental->markup (ly:pitch-alteration pitch)))))

#(define (roman-chord-engraver context)
   (let ((root (ly:make-pitch 0 0 0))
         (scale '()))

     (define (note-name->international-markup pitch lowercase?)
       (let* ((diff (ly:pitch-diff pitch root))
              (name (ly:pitch-notename diff))
              (alt (ly:pitch-alteration diff))
              (hspace (vector-ref #(0.15 0.15 0.05 0.05 0.15) (+ (* alt 2) 2)))
              (raise (vector-ref #(0.6 0.6 0.65 0.8 0.7) (+ (* alt 2) 2))))

         (make-line-markup
          (list
           (if (= alt 0)
               ;; If it's natural and not b, do nothing
               (make-line-markup (list empty-markup))
               ;; Else add alteration
               (make-line-markup
                (list
                 (make-smaller-markup
                  (make-raise-markup raise
                                     (make-musicglyph-markup
                                      (assoc-get
                                       alt
                                       standard-alteration-glyph-name-alist ""))))
                 (make-hspace-markup hspace))))
           (make-simple-markup
            (vector-ref #("I" "II" "III" "IV" "V" "VI" "VII") name))))))

     (make-engraver
      (acknowledgers
       ((key-signature-interface engraver grob source-engraver)
        (let ((root-name (note-name->markup root #f))
              (minor? (equal? scale minor)))
          (ly:grob-set-property! grob 'stencil
                                 (grob-interpret-markup grob
                                                        (markup #:box #:concat (root-name (if minor? " min" " maj"))))))))
      (listeners
       ((key-change-event engraver event)
        (let* ((pitch-alist (ly:event-property event 'pitch-alist))
               (tonic-pitch (ly:event-property event 'tonic))
               (c0-pitch-list
                (ly:transpose-key-alist pitch-alist
                                        (ly:pitch-diff (ly:make-pitch 0 0 0) tonic-pitch))))
          (set! scale c0-pitch-list)
          (set! root tonic-pitch)
          (set! (ly:context-property context 'chordRootNamer)
                note-name->international-markup)))))))

\layout {
  \context {
    \ChordNames
    \name RomanChordNames
    \consists "Key_engraver"
    \consists #roman-chord-engraver
  }
  \inherit-acceptability RomanChordNames ChordNames
}
