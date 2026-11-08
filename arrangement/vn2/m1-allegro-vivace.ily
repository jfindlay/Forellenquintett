\version "2.24.3"
% Violin II for I. Allegro vivace, derived from basso/m1-allegro-vivace.ily. Decisions are recorded in
% ../../notes/m1-decisions.md. Default is \vnLift (one octave above written, folded under G3);
% departures are named in the comments below. Section variables mirror the Basso sections.

% Bars 1-22: A4 pedal (high), then the F pedal and F figure through the lift's own fold (F2/F3 both
% land on F4, so the pedal stays one pitch). Plain \vnLift would put the A pedal on A3, in the cello's
% melodic range, and \vnHigh on the F figure would end on F5.
vnTwoIsecA = {
  \vnHigh \bassoIsecAa
  \vnLift \bassoIsecAb
}

% Bars 23-51: lift, except bar 43: the rising arpeggio E2-G#2-B2 would fold to E4-G#3-B3, so that
% one bar is taken two octaves up (E4-G#4-B4).
vnTwoIsecB = {
  \vnLift \bassoIsecBa
  \vnHigh \bassoIsecBb
  \vnLift \bassoIsecBc
}

vnTwoIsecC = \vnLift \bassoIsecC
vnTwoIsecD = \vnLift \bassoIsecD
vnTwoIsecE = \vnLift \bassoIsecE
vnTwoIsecF = \vnLift \bassoIsecF
vnTwoIsecG = {
  \vnLift \bassoIsecGa
  \repeatFootnote
  \vnLift \bassoIsecGb
}
vnTwoIsecH = \vnLift \bassoIsecH
vnTwoIsecI = \vnLift \bassoIsecI
vnTwoIsecJ = \vnLift \bassoIsecJ
vnTwoIsecK = \vnLift \bassoIsecK
vnTwoIsecL = \vnLift \bassoIsecL
vnTwoIsecM = \vnLift \bassoIsecM

% Bars 237-248: lift, except the triplet bar 237, whose first note (F2) would fold to F4 above the
% G#3 it slurs into; that bar is taken two octaves up (F4 ... F5) so the arpeggio keeps rising.
vnTwoIsecN = {
  \vnHigh \bassoIsecNa
  \vnLift \bassoIsecNb
}

vnTwoIsecO = \vnLift \bassoIsecO
vnTwoIsecP = \vnLift \bassoIsecP
vnTwoIsecQ = \vnLift \bassoIsecQ

% Whole movement, same repeat structure as the Basso (exposition repeat after bar 146).
vnTwoI = {
  \repeat volta 2 {
    \vnTwoIsecA
    \vnTwoIsecB
    \vnTwoIsecC
    \vnTwoIsecD
    \vnTwoIsecE
    \vnTwoIsecF
    \vnTwoIsecG
  }
  \vnTwoIsecH
  \vnTwoIsecI
  \vnTwoIsecJ
  \vnTwoIsecK
  \vnTwoIsecL
  \vnTwoIsecM
  \vnTwoIsecN
  \vnTwoIsecO
  \vnTwoIsecP
  \vnTwoIsecQ
}
