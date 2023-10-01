\version "2.24.2"

% https://www.studybass.com/lessons/reading-music/alpha-tab/

#(define (extract-fret-number obj)
  (let ((last-element (car (reverse obj))))
    (if (string? last-element)
        (string->number last-element)
        #f)))

#(define (conditional-string-capitalize str fret-number)
   (if (< fret-number 12)
       (string-capitalize str)
       str))

#(define (alteration->string alteration)
  (cond ((= alteration 1/2) "#")
        ((= alteration -1/2) "b")
        (else "")))

#(define (Note_heads_name_engraver context)
   (let ((note-heads '()))
     (make-engraver
      (acknowledgers
       ((tab-note-head-interface engraver grob Tab_note_heads_engraver)
        (set! note-heads (cons grob note-heads))))
      ((process-acknowledged engraver)
       (for-each
        (lambda (i note-head)
          (let* ((note-event (event-cause note-head))
                 (y-offset (ly:grob-property note-head 'Y-offset))
                 (fret-number (extract-fret-number (ly:grob-property note-head 'text)))
                 (pitch (ly:event-property note-event 'pitch))
                 (pitch-name (note-name->string pitch 'english))
                 (pitch-alter (alteration->string (ly:pitch-alteration pitch)))
                 (pitch-string (string-append pitch-name pitch-alter))
                 (pitch-string-capitalized (conditional-string-capitalize pitch-string fret-number))
                 )
            (ly:grob-set-property! note-head 'Y-offset (- y-offset 0.5))
            (ly:grob-set-property! note-head 'text pitch-string-capitalized)
            )
            )
        (reverse! (iota (length note-heads)))
        note-heads)
      (set! note-heads '())))))


% switch to full notation
alphaTabFullNotation = {
  % time signature
  \revert AlphaTab.TimeSignature.stencil
  % stems (the half note gets a double stem)
  \revert AlphaTab.Stem.length
  \revert AlphaTab.Stem.no-stem-extend
  \revert AlphaTab.Flag.style
  \revert AlphaTab.Stem.details
  \revert AlphaTab.Stem.stencil
  \revert AlphaTab.Flag.stencil
  \override AlphaTab.Stem.stencil = #tabvoice::draw-double-stem-for-half-notes
  \override AlphaTab.Stem.X-extent = #tabvoice::make-double-stem-width-for-half-notes
  \set AlphaTab.autoBeaming = ##t
  \revert AlphaTab.NoteColumn.ignore-collision
  % beams, dots
  \revert AlphaTab.Beam.stencil
  \revert AlphaTab.StemTremolo.stencil
  \revert AlphaTab.Dots.stencil
  \revert AlphaTab.Tie.stencil
  \revert AlphaTab.Tie.after-line-breaking
  \revert AlphaTab.RepeatTie.stencil
  \revert AlphaTab.RepeatTie.after-line-breaking
  \revert AlphaTab.LaissezVibrerTie.stencil
  \revert AlphaTab.Slur.control-points
  \revert AlphaTab.PhrasingSlur.stencil
  % tuplet stuff
  \revert AlphaTab.TupletBracket.stencil
  \revert AlphaTab.TupletNumber.stencil
  % dynamic signs
  \revert AlphaTab.DynamicText.stencil
  \revert AlphaTab.DynamicTextSpanner.stencil
  \revert AlphaTab.DynamicTextSpanner.stencil
  \revert AlphaTab.Hairpin.stencil
  % rests
  \revert AlphaTab.Rest.stencil
  \revert AlphaTab.MultiMeasureRest.stencil
  \revert AlphaTab.MultiMeasureRestNumber.stencil
  \revert AlphaTab.MultiMeasureRestScript.stencil
  \revert AlphaTab.MultiMeasureRestText.stencil
  % markups etc.
  \revert AlphaTab.Glissando.stencil
  \revert AlphaTab.Script.stencil
  \revert AlphaTab.TextScript.stencil
  \revert AlphaTab.TextSpanner.stencil
  \revert AlphaTab.Arpeggio.stencil
  \revert AlphaTab.NoteColumn.ignore-collision
}

\layout {
  \context {
    \TabStaff
    \name AlphaTab
    \consists \Note_heads_name_engraver
    \alphaTabFullNotation
  }
  \inherit-acceptability AlphaTab TabStaff
}