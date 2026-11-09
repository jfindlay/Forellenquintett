\version "2.24.3"
% Violin II for IV. Andantino, derived from basso/m4-andantino.ily. Sections are a plain lift
% except Var. III and the opening bars of Var. IV (noted below): the Basso lies at or above written
% G2 almost everywhere, so one octave up lands on or above G3, and the few notes that fold (F2 and
% G-flat2 in Var. IV/V, F#2 in bar 126) become the same pitch as their lifted neighbour.
% See notes/m4-decisions.md.

% Thema, bars 1-20: lift (D tune skeleton; doubles the cello's top line at the repeated Ds).
vnTwoIVsecA = \vnLift \bassoIVsecA

% Var. I, bars 21-40: lift (pizzicato arpeggio under the cello/viola triplets and sextuplets).
vnTwoIVsecB = \vnLift \bassoIVsecB

% Var. II, bars 41-60: lift (sparse arco skeleton under the cello's tune).
vnTwoIVsecC = \vnLift \bassoIVsecC

% Var. III, bars 61-80: one octave above the lift (two above written; on-beat unison with the cello
% against the offbeat Vn/Va figures). Up here the D2 of bars 72/76 no longer folds onto the D above
% it, so the printed octave drop d4( d,8) d stays an octave.
vnTwoIVsecD = {
  \vnHigh \bassoIVsecDa
  \stadlerFootnoteIV
  \vnHigh \bassoIVsecDb
}

% Var. IV, bars 81-100: lift (unison with the cello), except the pickup and bars 81-84 (the rising
% flourish), which go one octave higher (two above written, ceiling raised to A6 so the top of the
% flourish does not fold back down). The beams are entered in the Basso layer and are the print's
% (triplets and sextuplets in threes). The repeat and bracket setup of \bassoIVsecE is rebuilt here
% around the separately shifted pieces.
vnTwoIVsecE = {
  \key f \major
  \override TupletBracket.bracket-visibility = ##f
  \repeat volta 2 {
    \vnHighExt \bassoIVsecEa
    \vnLift \bassoIVsecEb
  }
  \vnLift \bassoIVsecEc
  \revert TupletBracket.bracket-visibility
}

% Var. V, bars 101-127: lift (ostinato under the cello solo; octave leaps flatten where F2 and
% G-flat2 fold).
vnTwoIVsecF = \vnLift \bassoIVsecF

% Allegretto, bars 128-156: lift (D-A-E-G eighth pulse; the Viol. cues of bars 133-135 and 154-155
% come through \vnLift at the printed treble-clef pitch, and the Vn2 staff returns to treble clef).
% The cue of bars 129-135 is rebuilt with \bassoCueFlat: the whole rest of bar 133 stays at normal
% staff height (the pickup d'' sits beside it), while the rests of bars 134-135 drop under the cue
% as in the print (\voiceTwo from bar 134 on).
vnTwoIVsecG = {
  \vnLift \bassoIVsecGa
  \vnLift \bassoCueFlat "treble" \bassoIVcueG {
    \bassoIVrestGa
    \voiceTwo
    \override Rest.staff-position = #-3
    \revert MultiMeasureRest.staff-position
    \bassoIVrestGb
  }
  \vnLift \bassoIVsecGc
}

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
