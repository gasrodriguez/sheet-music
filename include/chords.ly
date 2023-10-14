#(define (add-value-to-list lst value)
  (map (lambda (x) (- value x)) lst))

setChordStrings =
#(define-music-function (strings music) (list? ly:music?)
   (music-map
    (lambda (music)
      (if (music-is-of-type? music 'event-chord)
      (let* ((notes (extract-typed-music music 'note-event))
                 (len-notes (length notes))
                 (len-strings (length strings)))
      (if (<= len-notes len-strings)
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

dropTwo =
#(define-music-function (bottom-string chord) (integer? ly:music?)
  (music-map (move-chord-note 1 UP) chord)
  (setChordStrings (add-value-to-list '(0 3 1 2) bottom-string) chord)
 )

dropThree =
#(define-music-function (bottom-string chord) (integer? ly:music?)
  (music-map (move-chord-note 1 UP) chord)
  (music-map (move-chord-note 1 UP) chord)
  (setChordStrings (add-value-to-list '(0 3 4 2) bottom-string) chord)
 )

dropTwoThree =
#(define-music-function (bottom-string chord) (integer? ly:music?)
  (music-map (move-chord-note 2 UP) chord)
  (setChordStrings (add-value-to-list '(0 1 4 2) bottom-string) chord)
 )
