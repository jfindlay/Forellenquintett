\version "2.24.3"
% V. Allegro giusto, bars 1-236: Violin II derived from basso/m5a-allegro-giusto-1.ily.
% Treatments are recorded in notes/m5a-decisions.md. Default is \vnLift; departures are commented.

% Bars 1-10: `high`. E-A pizzicato figure alternates across the fold boundary (E2 would fold to
% E4 and flatten the octave leap); high keeps the low-high alternation E4-E5 / A4-E5, clear of
% the Vn1/Va tune around D4.
vnTwoVsecAA = \vnHigh \bassoVsecAA

% Bars 11-26: lift. Only the E2 bars (15-16) fold, to E4.
vnTwoVsecAB = \vnLift \bassoVsecAB

% Bars 27-36: as bars 1-10.
vnTwoVsecAC = \vnHigh \bassoVsecAC

% Bars 37-52: lift. Tutti ff theme, doubled by Vn1/Va; cello plays the same line an octave below.
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

% Bars 135-154: lifted by hand (= \vnLift, D3 -> D4) so the tie can be broken once. The pedal
% runs 16 bars (135-150); per rule 6 it is re-articulated after bar 142 (two 8-bar ties). The
% printed bar counts 1-16 are kept.
vnTwoVsecAJ = {
  \barNumberCheck #135
  d'2\p^\markup \small "1"~ |
  d'2^\markup \small "2"~ |
  d'2^\markup \small "3"~ |
  d'2^\markup \small "4"~ |
  d'2^\markup \small "5"~ |
  d'2^\markup \small "6"~ |
  d'2^\markup \small "7"~ |
  d'2^\markup \small "8" |       % tie broken here (re-articulate at bar 143)
  d'2^\markup \small "9"~ |
  d'2^\markup \small "10"~ |
  \barNumberCheck #145
  d'2^\markup \small "11"~ |
  d'2^\markup \small "12"~ |
  d'2^\markup \small "13"~ |
  d'2^\markup \small "14"~ |
  d'2^\markup \small "15"~ |
  d'2^\markup \small "16" |
  R2*4
}

% Bars 155-164: lift. B-flat/E-flat/C offbeat figures; E-flat 4 and C5 are the highest notes.
vnTwoVsecAK = \vnLift \bassoVsecAK

% Bars 165-170: lift. Rising line to E5, answering fz figure.
vnTwoVsecAL = \vnLift \bassoVsecAL

% Bars 171-194: lift. Triplet drive D4 / B3 (lowest), E-F#-G, A, D5-A4.
vnTwoVsecAM = \vnLift \bassoVsecAM

% Bars 195-204: lift of eight rests plus two cue bars (Va.): Vn2 rests.
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
