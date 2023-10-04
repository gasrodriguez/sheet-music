% customExceptionMusic = {
%   <c e gis>-\markup { "augmented" }
%   <c es ges>-\markup { \whiteCircleMarkup }
%   <c es ges bes>-\markup {
%     %%  f8 is o with slash.
%     \super #(ly:wide-char->utf-8 #x00f8)
%   }
%   <c es ges beses>-\markup \concat { \whiteCircleMarkup \super  "7" }
%   <c e g b fis'>-\markup { \super "lyd" } % Lydian
%   <c e g bes des' ees' fis' aes'>-\markup { \super "alt" } % altered chord (super-Locrian)
%   %% Power chords should be printed by default:
%   % <c g>-\markup { \super "5" }
%   % <c g c'>-\markup { \super "5" }
%   <e, a, e a cis' e'>-\markup {"ye"}
% }

% customExceptions  =
% #(sequential-music-to-chord-exceptions customExceptionMusic #t)



% \layout {
%   \context {
%     \Staff
%     \clef "G_8"

%   }
% }

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

setChordOctavations =
#(define-music-function (octavations music) (list? ly:music?)
   (music-map
    (lambda (music)
      (if (music-is-of-type? music 'event-chord)
          (let* ((notes (extract-typed-music music 'note-event))
                 (len-notes (length notes))
                 (len-octavations (length octavations)))
      (if (= len-notes len-octavations)
          (let loop ((index 0))
            (if (< index len-notes)
                (begin
                  (let* ((note (list-ref notes index))
                        (octavation (list-ref octavations index)))
                    ;;(if (< octavation 0) (set! (ly:music-property note 'inversion) #t))
                    (set! (ly:music-property note 'octavation) octavation))
                  (loop (+ index 1)))
                '()))
            (ly:error "Octavations list length do not match notes: \n~a" notes)
          )))
      music)
    music))

setChordBass =
#(define-music-function (music) (ly:music?)
   (music-map
    (lambda (music)
      (if (music-is-of-type? music 'event-chord)
          (let* ((notes (extract-typed-music music 'note-event))
                 (bass-note (car notes)))
      (set! (ly:music-property bass-note 'bass) #t)
      ;;(set! (ly:music-property bass-note 'inversion) #f)
      ))
      music)
    music))


#(define caged-shape-table (make-hash-table 29))
#(define chords-dictionary (make-hash-table 101))


addCagedShape =
#(define-void-function (key-symbol tuning shape-definition)
   (symbol? pair? ly:music?)
   (hash-set! caged-shape-table
               (cons key-symbol tuning)
               shape-definition))

#(define (caged-shape shape-code tuning)
  (let ((hash-handle (hash-get-handle caged-shape-table
                                      (cons shape-code tuning))))
    (if hash-handle
        (cdr hash-handle)
        '())))
