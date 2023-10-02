setChordStrings =
#(define-music-function (strings music) (list? ly:music?)
   (music-map
    (lambda (music)
      (if (music-is-of-type? music 'event-chord)
          (let* ((notes (extract-typed-music music 'note-event))
                 (len-notes (length notes))
                 (len-strings (length strings)))
      (if (= len-notes len-strings)
          (let loop ((index 0))
            (if (< index len-notes)
                (begin
                  (let* ((note (list-ref notes index))
                        (string (list-ref strings index)))
                    (set! (ly:music-property note 'articulations)
                          (list (make-music 'StringNumberEvent 'string-number string))))
                  (loop (+ index 1)))
                '()))
            (ly:error "String numbers list length do not match notes: \n~a" notes)
          )))
      music)
    music))