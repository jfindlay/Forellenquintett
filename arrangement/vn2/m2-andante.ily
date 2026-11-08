\version "2.24.3"
% Violin II for II. Andante, derived from basso/m2-andante.ily. All eight sections are a plain
% \vnLift (rule 2); the reasons per section are in notes/m2-decisions.md. The bar-number checks in
% the Basso sections carry through the lift, so the compile gate also covers this part.
%
% Fold artifacts to know about (notes below G3 jump up an octave):
%   bar 10: written F2 sounds F4, so the descent Bb3 A3 F3 becomes Bb3 A3 F4.
%   bars 41-52 and 106-113: the low note of each A/F#/D/G/F/E/C octave figure folds onto the
%   high note, so the printed octave jump becomes a repeated note with the same rhythm.
%   bars 114-121: the F2 pulse sounds F4.

% Bars 1-23: lift (viola/cello tune above or with the bass; Vn1 enters at bar 10 well above).
vnTwoIIsecA = \vnLift \bassoIIsecA

% Bars 24-35: lift (pulses on the beat against Vn1's off-beat pairs; cello/viola tune in the middle).
vnTwoIIsecB = \vnLift \bassoIIsecB

% Bars 36-52: lift (the low half of each octave figure folds onto the high half; see above).
vnTwoIIsecC = \vnLift \bassoIIsecC

% Bars 53-60: lift (G pulse on the open G string, like the rest of the ppp murmur).
vnTwoIIsecD = \vnLift \bassoIIsecD

% Bars 61-83: lift.
vnTwoIIsecE = \vnLift \bassoIIsecE

% Bars 84-95: lift.
vnTwoIIsecF = \vnLift \bassoIIsecF

% Bars 96-113: lift (the low half of each octave figure folds onto the high half; see above).
vnTwoIIsecG = \vnLift \bassoIIsecG

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
