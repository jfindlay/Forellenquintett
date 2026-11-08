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

% Shared layout for the Vn2 part and the diplomatic proof. Like the printed part, bar numbers
% appear only at the start of each system (never on the movement's first bar).
partLayout = \layout {
  \context {
    \Score
    barNumberVisibility = #first-bar-number-invisible-and-no-parenthesized-bar-numbers
    \override BarNumber.break-visibility = #begin-of-line-visible
    \override BarNumber.font-size = -2
    \override MultiMeasureRest.expand-limit = 1
    \override Footnote.annotation-line = ##f
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

stadlerFootnote = #(define-music-function (text) (markup?)
  #{ \partFootnote #'(0 . 5.5) NoteHead #text #})

% II. Andante, bars 43-44.
stadlerFootnoteII = \stadlerFootnote \markup \small \wordwrap {
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
repeatFootnote = \partFootnote #'(0.5 . 4) Rest \markup \small "*) Zum Problem der Wiederholung vgl. Vorwort."

% IV. Andantino, Var. III, bars 72 and 76.
stadlerFootnoteIV = \stadlerFootnote \markup \small \wordwrap {
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
