\version "2.24.3"
% V. Allegro giusto, bars 1-236: Violin II derived from basso/m5a-allegro-giusto-1.ily.
% Treatments are recorded in notes/m5a-decisions.md. Default is \vnLift; departures are commented.

% Bars 1-10: `high` (the Vc. cue in bars 1-2 stays at the printed pitch). E-A pizzicato figure alternates across the fold boundary (E2 would fold to
% E4 and flatten the octave leap); high keeps the low-high alternation E4-E5 / A4-E5, clear of
% the Vn1/Va tune around D4.
vnTwoVsecAA = \vnHigh \bassoVsecAA

% Bars 11-26: lift. Only the E2 bars (15-16) fold, to E4. Bars 25-26 carry the Pfte. cue as printed.
vnTwoVsecAB = \vnLift \bassoVsecAB

% Bars 27-36: as bars 1-10.
vnTwoVsecAC = \vnHigh \bassoVsecAC

% Bars 37-52: lift. Tutti ff theme, doubled by Vn1/Va; cello plays the same line an octave below.
% The Vc. cue in bars 51-52 stays at the printed pitch.
vnTwoVsecAD = \vnLift \bassoVsecAD

% Bars 53-65: lift, as bars 37-52.
vnTwoVsecAE = \vnLift \bassoVsecAE

% Bars 66-77: lift. Offbeat fp figure played in parallel by all four strings; lowest note G3.
vnTwoVsecAF = \vnLift \bassoVsecAF

% Bars 78-83: `high`. Lift would fold the rising E-F-G to E4-F4-G3 (a leaping line); high keeps
% the semitone ascent intact (G4 E4 F4 G4 / F4 G4 A4 A4), in contrary motion to Vn1's descent.
vnTwoVsecAG = \vnHigh \bassoVsecAG

% Bars 84-107: lift. D-F#-A / A-C#-E oom-pa staccato under the Vn1/Va/Vc canon.
vnTwoVsecAH = \vnLift \bassoVsecAH

% Bars 108-134: lift. F# then G pedal and chromatic climb, a rhythmic pulse inside the chord.
vnTwoVsecAI = \vnLift \bassoVsecAI

% Bars 135-154: lift (D3 -> D4). The 16-bar tie (135-150) is kept as printed, counts 1-16 included.
vnTwoVsecAJ = \vnLift \bassoVsecAJ

% Bars 155-164: lift. B-flat/E-flat/C offbeat figures; E-flat 4 and C5 are the highest notes.
vnTwoVsecAK = \vnLift \bassoVsecAK

% Bars 165-170: lift. Rising line to E5, answering fz figure.
vnTwoVsecAL = \vnLift \bassoVsecAL

% Bars 171-194: lift. Triplet drive D4 / B3 (lowest), E-F#-G, A, D5-A4.
vnTwoVsecAM = \vnLift \bassoVsecAM

% Bars 195-204: lift of eight rests plus the Va. cue (bars 203-204): the cue notes stay at the
% printed pitch, over Vn2's rests, and the staff returns to the treble clef after them.
vnTwoVsecAN = \vnLift \bassoVsecAN

% Bars 205-212: lift. Slurred half notes, lowest G3 (bar 209).
vnTwoVsecAO = \vnLift \bassoVsecAO

% Bars 213-228: lift. Syncopated D/E/A figures, G.P., B-flat line.
vnTwoVsecAP = \vnLift \bassoVsecAP

% Bars 229-236: lift. D4 / D5 dotted figure, closing G.P. with the da capo bar.
vnTwoVsecAQ = \vnLift \bassoVsecAQ

vnTwoVfirst = {
  \vnTwoVsecAA
  \vnTwoVsecAB
  \vnTwoVsecAC
  \vnTwoVsecAD
  \vnTwoVsecAE
  \vnTwoVsecAF
  \vnTwoVsecAG
  \vnTwoVsecAH
  \vnTwoVsecAI
  \vnTwoVsecAJ
  \vnTwoVsecAK
  \vnTwoVsecAL
  \vnTwoVsecAM
  \vnTwoVsecAN
  \vnTwoVsecAO
  \vnTwoVsecAP
  \vnTwoVsecAQ
}
