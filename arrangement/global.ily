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
       (if (eq? 'NoteEvent (ly:music-property m 'name))
           (ly:music-set-property! m 'pitch
             (fold-pitch (ly:music-property m 'pitch) vnFloor vnCeiling)))
       m)
     copy)
    copy))

% Default: one octave above written (octave above the cello), notes below G3 folded up an octave.
vnLift = #(define-music-function (music) (ly:music?)
  #{ \vnFold \transpose c c' #music #})

% Two octaves above written (still folded under A5): for passages where the lifted line would sit
% inside the cello or viola counterpoint and a higher register is clearer.
vnHigh = #(define-music-function (music) (ly:music?)
  #{ \vnFold \transpose c c'' #music #})

% Text marks used identically in basso/ and vn2/ (attach to a note: c4\pzMark d4\arcoMark).
pzMark = ^\markup \italic "pizz."
arcoMark = ^\markup \italic "arco"

% Dynamics the part prints that LilyPond lacks (use as c4\ffz).
ffz = #(make-dynamic-script "ffz")

% Shared layout for the Vn2 part and the diplomatic proof.
partLayout = \layout {
  \context {
    \Score
    barNumberVisibility = #(every-nth-bar-number-visible 5)
    \override BarNumber.break-visibility = #end-of-line-invisible
    \override BarNumber.font-size = -2
    \override MultiMeasureRest.expand-limit = 1
  }
}

% Bar-number gate: the Bärenreiter part prints a bar number at the start of every system. Each
% movement file ends sections with \barNumberCheck at those printed numbers; a clean compile has
% zero barNumberCheck warnings.
