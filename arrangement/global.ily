\version "2.24.3"
% Shared helpers for both layers. The Basso is entered *as printed* (bass clef, written pitch) in
% basso/ so every bar can be proofread against source/ by eye. Arranging decisions live in vn2/.
%
% Pitch reference: the double bass sounds an octave below written pitch, and the cello plays at
% written pitch. So a Basso note lifted by one octave (\vnLift) lands exactly one octave above the
% cello when the two play the same line, and two octaves above the bass's sounding pitch. The
% violin's lowest note is G3.

% Fold every note into [lo, hi] (semitones from middle C) by whole octaves.
#(define (fold-pitch p lo hi)
   (let loop ((p p))
     (cond ((< (ly:pitch-semitones p) lo) (loop (ly:pitch-transpose p (ly:make-pitch 1 0 0))))
           ((> (ly:pitch-semitones p) hi) (loop (ly:pitch-transpose p (ly:make-pitch -1 0 0))))
           (else p))))

% Violin II comfortable range: G3 (-5) up to A5 (21).
vnFloor = #-5
vnCeiling = #21

vnFold = #(define-music-function (music) (ly:music?)
  (let ((copy (ly:music-deep-copy music)))
    (music-map
     (lambda (m)
       (if (and (eq? 'NoteEvent (ly:music-property m 'name))
                (not (ly:music-property m 'basso-cue #f)))
           (ly:music-set-property! m 'pitch
             (fold-pitch (ly:music-property m 'pitch) vnFloor vnCeiling)))
       m)
     copy)
    copy))

% Shift every non-cue note up `octaves` octaves, then fold into [vnFloor, top] (top defaults to
% vnCeiling; pass a third argument to override it). Cue notes (see \bassoCue) keep the
% pitch the print gives, and a cue's clef-restore event becomes a treble clef (the Vn2 staff).
#(define (vn-shift music octaves . rest)
   (let ((copy (ly:music-deep-copy music))
         (top (if (pair? rest) (car rest) vnCeiling)))
     (music-map
      (lambda (m)
        (cond
         ((and (eq? 'NoteEvent (ly:music-property m 'name))
               (not (ly:music-property m 'basso-cue #f)))
          (ly:music-set-property! m 'pitch
            (fold-pitch (ly:pitch-transpose (ly:music-property m 'pitch)
                                            (ly:make-pitch octaves 0 0))
                        vnFloor top))
          m)
         ((ly:music-property m 'basso-clef-restore #f) (make-clef-set "treble"))
         (else m)))
      copy)))

% Default: one octave above written (octave above the cello), notes below G3 folded up an octave.
vnLift = #(define-music-function (music) (ly:music?) (vn-shift music 1))

% Two octaves above written (still folded under A5): for passages where the lifted line would sit
% inside the cello or viola counterpoint and a higher register is clearer.
vnHigh = #(define-music-function (music) (ly:music?) (vn-shift music 2))

% Like \vnHigh, but the ceiling is raised to A6 (33) so a flourish that already reaches A5 in the
% lift can move up a further octave without folding back down.
vnHighExt = #(define-music-function (music) (ly:music?) (vn-shift music 2 33))

% For Vn2 bars entered by hand at sounding pitch: leaves notes alone, but turns a cue's clef-restore
% event (see \bassoCue) into the treble clef, as \vnLift does. Wrap hand bars that contain a cue.
vnHand = #(define-music-function (music) (ly:music?)
  (let ((copy (ly:music-deep-copy music)))
    (music-map
     (lambda (m)
       (if (ly:music-property m 'basso-clef-restore #f) (make-clef-set "treble") m))
     copy)))

% A cue as the Basso prints it: small notes in the clef the print gives, over the Basso's own
% rests. #clef is the cue's clef; #cue the small notes (entered at the pitch the cued part sounds,
% inside \ottava #1 ... \ottava #0 where the print draws an 8va bracket); #rests the Basso's rests
% for the same time (a full bar is R, one per bar as in `R2 | R2`, so the whole rest is centred; consecutive R bars are
% not compressed. Partial bars use r). After the cue the staff
% returns to the Basso's bass clef; \vnLift and \vnHigh turn that into the Vn2 staff's treble clef
% and leave the cue notes at printed pitch.
bassoCue = #(define-music-function (clef cue rests) (string? ly:music? ly:music?)
  (let ((c (ly:music-deep-copy cue))
        (back (make-clef-set "bass")))
    (music-map
     (lambda (m)
       (if (eq? 'NoteEvent (ly:music-property m 'name))
           (ly:music-set-property! m 'basso-cue #t))
       m)
     c)
    (ly:music-set-property! back 'basso-clef-restore #t)
    #{ << \new CueVoice { \clef #clef #c } \new Voice { \voiceTwo \override Rest.staff-position = #-3 #rests } >> #back #}))

% \bassoCue with the rests left at their normal staff position instead of dropped below the cue
% (the print drops them; the Vn2 part prints cue notes and rests at normal staff height, the notes
% simply passing over the centred rests). Arguments and clef handling as \bassoCue.
bassoCueFlat = #(define-music-function (clef cue rests) (string? ly:music? ly:music?)
  (let ((c (ly:music-deep-copy cue))
        (back (make-clef-set "bass")))
    (music-map
     (lambda (m)
       (if (eq? 'NoteEvent (ly:music-property m 'name))
           (ly:music-set-property! m 'basso-cue #t))
       m)
     c)
    (ly:music-set-property! back 'basso-clef-restore #t)
    #{ << \new CueVoice { \clef #clef #c } \new Voice { \override Rest.staff-position = #0 \override MultiMeasureRest.staff-position = #0 #rests } >> #back #}))

% Text marks used identically in basso/ and vn2/ (attach to a note: c4\pzMark d4\arcoMark).
pzMark = ^\markup \italic "pizz."
arcoMark = ^\markup \italic "arco"

% Cue labels, attached to the first cue note (c''4\pfteMark).
pfteMark = ^\markup \tiny "Pfte."
violMark = ^\markup \tiny "Viol."
vcMark = ^\markup \tiny "Vc."
vaMark = ^\markup \tiny "Va."

% Dynamics the part prints that LilyPond lacks (use as c4\ffz).
ffz = #(make-dynamic-script "ffz")

% Shared layout for the Vn2 part and the diplomatic proof. Like the printed part, bar numbers
% appear only at the start of each system (never on the movement's first bar).
partLayout = \layout {
  \context {
    \Score
    barNumberVisibility = #first-bar-number-invisible-and-no-parenthesized-bar-numbers
    \override BarNumber.break-visibility = #begin-of-line-visible
    \override BarNumber.font-size = -2
    % Block ("church") rests for every multi-measure rest, never the H-bar: the limit is above any
    % rest in the piece (longest is 10 bars).
    \override MultiMeasureRest.expand-limit = 100
    \override Footnote.annotation-line = ##f
  }
  \context {
    \CueVoice
    fontSize = #-3
  }
}

% Force the next bar number visible mid-system. The print numbers the first full bar after a
% variation's pickup eighth (21, 41, ...), which sits on a line the number would not otherwise start.
showBarNumber = \once \override Score.BarNumber.break-visibility = ##(#t #t #t)

% Part footnotes (Stadler's copy). Both are Vorwort-referenced notes the Basso prints at the foot
% of the page; the Vn2 part sits an octave above, so the examples are engraved in treble clef at
% the Vn2 pitch. \footnote prints no mark in front of the text, so the text opens with it.
footnoteExampleLayout = \layout {
  indent = 0
  ragged-right = ##t
  \context {
    \Staff
    \override TimeSignature.stencil = ##f
  }
  \context {
    \Score
    \omit BarNumber
  }
}

% Anchor on the next grob of the given name. The mark floats `offset` above/beside it; the part
% prints it above the staff, so the y offsets are tuned to the pitch of the anchor note and clear
% the top staff line (the leader line to the mark is switched off in partLayout).
partFootnote = #(define-music-function (offset grob text) (number-pair? symbol-list-or-music? markup?)
  #{ \footnote "*)" #offset #text #grob #})

% The y offset is per footnote: it depends on the pitch of the anchor note (see above).
stadlerFootnote = #(define-music-function (offset text) (number-pair? markup?)
  #{ \partFootnote #offset NoteHead #text #})

% II. Andante, bars 43-44 (anchor D5, high in the staff, so the mark needs a smaller offset).
stadlerFootnoteII = \stadlerFootnote #'(0 . 2.8) \markup \small \wordwrap {
  "*) T. 43-44, in Albert Stadlers Abschrift:"
  \concat {
    \score {
      \new Staff \with { fontSize = #-3 \override StaffSymbol.staff-space = #(magstep -3) } {
        \clef treble \key d \major \time 3/4
        d'16.[ d'32 d'8~] d'16.[ d'32 d'8~] d'16.[ d'32 d'8~] \bar "|"
        d'16.[ d'32 d'8] d'8 r d' r \bar "|"
      }
      \footnoteExampleLayout
    }
    ";"
  }
  "entsprechend in den Takten 49-52, 97, 99, 107, 109, 110-113; vgl. Vorwort."
}

% I. Allegro vivace, bar 146 (end of the exposition repeat).
repeatFootnote = \partFootnote #'(0.5 . 2) Rest \markup \small "*) Zum Problem der Wiederholung vgl. Vorwort."

% IV. Andantino, Var. III, bars 72 and 76.
stadlerFootnoteIV = \stadlerFootnote #'(0 . 0.4) \markup \small \wordwrap {
  "*) Takte 72, 76, in Stadlers Abschrift"
  \score {
    \new Staff \with { fontSize = #-3 \override StaffSymbol.staff-space = #(magstep -3) } {
      \clef treble \key d \major \time 2/4
      d'4. d'8 \bar "|"
    }
    \footnoteExampleLayout
  }
}

% Bar-number gate: the Bärenreiter part prints a bar number at the start of every system. Each
% movement file ends sections with \barNumberCheck at those printed numbers; a clean compile has
% zero barNumberCheck warnings.
