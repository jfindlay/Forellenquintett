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
vnTwoIVsecD = \vnLift \bassoIVsecD

% Var. IV, bars 81-100: lift (unison with the cello; rising flourish passes above Vn1's dyads).
vnTwoIVsecE = \vnLift \bassoIVsecE

% Var. V, bars 101-127: lift (ostinato under the cello solo; octave leaps flatten where F2 and
% G-flat2 fold).
vnTwoIVsecF = \vnLift \bassoIVsecF

% Allegretto, bars 128-156: lift (D-A-E-G eighth pulse, rests for the cue bars).
vnTwoIVsecG = \vnLift \bassoIVsecG

% Allegretto close, bars 157-172: lift.
vnTwoIVsecH = \vnLift \bassoIVsecH

vnTwoIV = {
  \vnTwoIVsecA
  \vnTwoIVsecB
  \vnTwoIVsecC
  \vnTwoIVsecD
  \vnTwoIVsecE
  \vnTwoIVsecF
  \vnTwoIVsecG
  \vnTwoIVsecH
}
