\version "2.24.3"
% Violin II for II. Andante, derived from basso/m2-andante.ily. All eight sections are a plain
% \vnLift (rule 2); the reasons per section are in notes/m2-decisions.md. The bar-number checks in
% the Basso sections carry through the lift, so the compile gate also covers this part.
%
% Fold artifacts to know about (notes below G3 jump up an octave):
%   bar 10: written F2 sounds F4, so the descent Bb3 A3 F3 becomes Bb3 A3 F4.
%   bars 114-121: the F2 pulse sounds F4.
% The dotted-16th octave figures in bars 41-52 and 97-113 would fold the same way (the low note
% onto the high one, a repeated note instead of the printed octave jump), so those bars are taken
% two octaves up (\vnHigh) and keep the octave jump, as in the Basso.

% Bars 1-23: lift (viola/cello tune above or with the bass; Vn1 enters at bar 10 well above).
vnTwoIIsecA = \vnLift \bassoIIsecA

% Bars 24-35: lift (pulses on the beat against Vn1's off-beat pairs; cello/viola tune in the middle).
vnTwoIIsecB = \vnLift \bassoIIsecB

% Bars 36-52: lift, except the bars whose low note would fold onto the high one (41, 43-44, 46,
% 48-52): those are taken two octaves up so the printed octave jump stays an octave jump. The
% plain-eighth bars that lead into them (40, 42) go up with them, keeping the Basso's octave
% relation between the eighths and the figure that follows.
vnTwoIIsecC = {
  \vnLift \bassoIIsecCaA
  \vnHigh \bassoIIsecCaB
  \stadlerFootnoteII
  \vnHigh \bassoIIsecCbA
  \vnLift \bassoIIsecCbB
  \vnHigh \bassoIIsecCbC
  \vnLift \bassoIIsecCbD
  \vnHigh \bassoIIsecCbE
}

% Bars 53-60: lift (G pulse on the open G string, like the rest of the ppp murmur).
vnTwoIIsecD = \vnLift \bassoIIsecD

% Bars 61-83: lift.
vnTwoIIsecE = \vnLift \bassoIIsecE

% Bars 84-95: lift.
vnTwoIIsecF = \vnLift \bassoIIsecF

% Bars 96-113: lift, except the bars whose low note would fold onto the high one (97, 99, 103,
% 106-113): those are taken two octaves up so the printed octave jump stays an octave jump. The
% plain-eighth bars that lead into them (96, 98, 102) go up with them; bar 100 leads into the A/A2
% figure of bar 101, which lifts without folding, so it stays lifted.
vnTwoIIsecG = {
  \vnHigh \bassoIIsecGA
  \vnLift \bassoIIsecGB
  \vnHigh \bassoIIsecGC
  \vnLift \bassoIIsecGD
  \vnHigh \bassoIIsecGE
}

% Bars 114-121: lift (F pulse sounds F4, above Vn1's low pulses; see the decision table).
vnTwoIIsecH = \vnLift \bassoIIsecH

vnTwoII = {
  \vnTwoIIsecA
  \vnTwoIIsecB
  \vnTwoIIsecC
  \vnTwoIIsecD
  \vnTwoIIsecE
  \vnTwoIIsecF
  \vnTwoIIsecG
  \vnTwoIIsecH
}
