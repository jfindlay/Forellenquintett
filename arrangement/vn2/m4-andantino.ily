\version "2.24.3"
% Violin II for IV. Andantino, derived from basso/m4-andantino.ily. Every section is a plain
% lift: the Basso lies at or above written G2 almost everywhere, so one octave up lands on or above
% G3, and the few notes that fold (D2 in bars 72/76, F2 and G-flat2 in Var. IV/V, F#2 in bar 126)
% become the same pitch as their lifted neighbour. See notes/m4-decisions.md.

% Thema, bars 1-20: lift (D tune skeleton; doubles the cello's top line at the repeated Ds).
vnTwoIVsecA = \vnLift \bassoIVsecA

% Var. I, bars 21-40: lift (pizzicato arpeggio under the cello/viola triplets and sextuplets).
vnTwoIVsecB = \vnLift \bassoIVsecB

% Var. II, bars 41-60: lift (sparse arco skeleton under the cello's tune).
vnTwoIVsecC = \vnLift \bassoIVsecC

% Var. III, bars 61-80: lift (on-beat unison with the cello against the offbeat Vn/Va figures).
vnTwoIVsecD = {
  \vnLift \bassoIVsecDa
  \stadlerFootnoteIV
  \vnLift \bassoIVsecDb
}

% Var. IV, bars 81-100: lift (unison with the cello; rising flourish passes above Vn1's dyads).
% The beams are entered in the Basso layer and are the print's (triplets and sextuplets in threes).
vnTwoIVsecE = \vnLift \bassoIVsecE

% Var. V, bars 101-127: lift (ostinato under the cello solo; octave leaps flatten where F2 and
% G-flat2 fold).
vnTwoIVsecF = \vnLift \bassoIVsecF

% Allegretto, bars 128-156: lift (D-A-E-G eighth pulse; the Viol. cues of bars 133-135 and 154-155
% come through \vnLift at the printed treble-clef pitch, and the Vn2 staff returns to treble clef).
vnTwoIVsecG = \vnLift \bassoIVsecG

% Allegretto close, bars 157-172: lift.
vnTwoIVsecH = \vnLift \bassoIVsecH

% Variation labels as in the print: each variation starts a new system (at its pickup eighth) and
% carries its name above the staff, left-aligned.
vnTwoIV = {
  \override Score.RehearsalMark.self-alignment-X = #LEFT
  \override Score.RehearsalMark.font-size = #1
  \override Score.RehearsalMark.padding = #3
  \mark \markup "Thema"
  \vnTwoIVsecA
  \break \mark \markup "Var. I"
  \vnTwoIVsecB
  \break \mark \markup "Var. II"
  \vnTwoIVsecC
  \break \mark \markup "Var. III"
  \vnTwoIVsecD
  \break \mark \markup "Var. IV"
  \vnTwoIVsecE
  \break \mark \markup "Var. V"
  \vnTwoIVsecF
  \break
  \vnTwoIVsecG
  \vnTwoIVsecH
}
