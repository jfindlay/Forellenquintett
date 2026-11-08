\version "2.24.3"
% Movement III: Scherzo, Trio, Scherzo da capo (Violin II from the Basso). Every section is
% \vnLift (nothing in the Basso falls below written G2, so no fold is needed) except
% vnTwoIIIsecG. The \barNumberChecks of the Basso sections ride along, so the compile gate
% still guards the numbering. The Trio's Viol. cues (pickup and bars 1-4, bars 62-65, both
% endings) flow through \vnLift unchanged: the cue notes keep the printed pitch and the staff
% returns to the treble clef after each cue.

% Bars 0-10: opening A theme.
vnTwoIIIsecA = \vnLift \bassoIIIsecA

% Bars 11-26: B-E echo, ff A returns.
vnTwoIIIsecB = \vnLift \bassoIIIsecB

% Bars 27-42: chromatic descent in F natural / C natural.
vnTwoIIIsecC = \vnLift \bassoIIIsecC

% Bars 42-58: long tied C and D, then repeated staccato figures.
vnTwoIIIsecD = \vnLift \bassoIIIsecD

% Bars 59-79: rests and sf bursts, chromatic G, closing ff.
vnTwoIIIsecE = \vnLift \bassoIIIsecE

% Bars 80-88: return of the A theme, then four bars of rest.
vnTwoIIIsecF = \vnLift \bassoIIIsecF

% Bars 89-92: hand (octave): a lift puts D5/C#5 above Vn1 (B4-E5) and Va; the Basso at written
% pitch (D4/C#4) is a unison with the cello and stays under the violin.
vnTwoIIIsecG = \bassoIIIsecG

% Bars 93-103: sf descent, closing ostinato.
vnTwoIIIsecH = \vnLift \bassoIIIsecH

% First and second endings (bar 104).
vnTwoIIIsecI = \vnLift \bassoIIIsecI
vnTwoIIIsecJ = \vnLift \bassoIIIsecJ

% Trio pickup and bars 1-16 (first half).
vnTwoIIIsecK = \vnLift \bassoIIIsecK

% Trio bars 16 (r4) - 24.
vnTwoIIIsecL = \vnLift \bassoIIIsecL

% Trio bars 25-35: pedal G counted 1-7, then Bb/F slurred figures.
vnTwoIIIsecM = \vnLift \bassoIIIsecM

% Trio bars 36-49: same figure again, ff Bb and A repeated, G.P.
vnTwoIIIsecN = \vnLift \bassoIIIsecN

% Trio bars 50-65: D-G slurred phrase, A staccato, rests.
vnTwoIIIsecO = \vnLift \bassoIIIsecO

% Trio first and second endings (bar 66, with the da capo direction).
vnTwoIIIsecP = \vnLift \bassoIIIsecP
vnTwoIIIsecQ = \vnLift \bassoIIIsecQ

% Movement and section labels as in the print: "Scherzo" over the Presto, and "Trio" starting a
% new system, left-aligned above the staff like the variation labels of movement IV.
vnTwoIII = {
  \override Score.RehearsalMark.self-alignment-X = #LEFT
  \override Score.RehearsalMark.font-size = #1
  \override Score.RehearsalMark.padding = #3
  \mark \markup "Scherzo"
  \vnTwoIIIsecA
  \vnTwoIIIsecB
  \vnTwoIIIsecC
  \repeat volta 2 {
    \vnTwoIIIsecD
    \vnTwoIIIsecE
    \vnTwoIIIsecF
    \vnTwoIIIsecG
    \vnTwoIIIsecH
  }
  \alternative {
    { \vnTwoIIIsecI }
    { \vnTwoIIIsecJ }
  }
  \break \mark \markup "Trio"
  \repeat volta 2 { \vnTwoIIIsecK }
  \repeat volta 2 {
    \vnTwoIIIsecL
    \vnTwoIIIsecM
    \vnTwoIIIsecN
    \vnTwoIIIsecO
  }
  \alternative {
    { \vnTwoIIIsecP }
    { \vnTwoIIIsecQ }
  }
}
