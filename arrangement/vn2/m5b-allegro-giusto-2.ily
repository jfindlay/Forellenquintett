\version "2.24.3"
% V. Allegro giusto bars 237-end: Violin II derived from basso/m5b-allegro-giusto-2.ily.
% Default \vnLift. Hand-entered: BA, BB, BC (the B-octave leap would put the upper B above Vn1's
% G4-A4 melody; the upper B drops to B3).
% Pitches below are absolute (c = C3, c' = C4), so the hand bars read as sounding Vn2 pitch.
% The cues in the hand bars (261-262, 263-264) are copied from the Basso inside \vnHand; the cues
% in the lifted sections (287-288, 439-440) flow through \vnLift unchanged.

% --- 237-246 hand: B3 B3 / E4 B3 staccato pulses; the octave leap is flattened (see above).
vnTwoVsecBA = {
  \set Score.currentBarNumber = #237
  \barNumberCheck #237
  R2*2                          % 237-238
  \barNumberCheck #239
  b4-.\pp b-.                   % 239
  e'-. b-.
  b-. b-.
  e'-. b-.                      % 242
  \barNumberCheck #243
  R2*4                          % 243-246
}

% --- 247-262 hand (repeat body): lift, except the upper B of each B-B leap stays on B3.
vnTwoVsecBB = {
  \barNumberCheck #247
  e'4-. b-.                     % 247
  e'-. e'-.                     % 248: E3/E2 both fold to E4
  a8->[( cis') cis'-. cis'-.]   % 249
  \barNumberCheck #250
  cis'4( e'8) r                 % 250
  b4-. b-.                      % 251
  b-. b-.                       % 252
  gis8->[( b) b-. b-.]          % 253
  b4( e'8) r                    % 254
  \barNumberCheck #255
  R2*6                          % 255-260
  % 261-262: Pfte. cue, copied from the Basso (printed pitch; \vnHand restores the treble clef).
  \vnHand {
    \bassoCue "treble"
      {
        \stemUp \slurUp
        <b' gis''>8^>[(\pfteMark <a' fis''>) <a' fis''>^. <a' fis''>^.] |  % 261
        <a' fis''>4( <gis' e''>8) r8                                      % 262
      }
      { R2 | R2 }
  }
}

% --- 263-272 hand: as 237-246 (Vc cue 263-264).
vnTwoVsecBC = {
  \barNumberCheck #263
  % 263-264: Vc. cue, copied from the Basso (bass clef, printed pitch; \vnHand restores treble).
  \vnHand {
    \bassoCue "bass"
      { b2^>^\vcMark~ | b2 }
      { R2 | R2 }
  }
  \barNumberCheck #265
  b4-.\pp b-.                   % 265
  e'-. b-.
  b-. b-.
  e'-. b-.                      % 268
  \barNumberCheck #269
  R2*4                          % 269-272
  \bar "||"
}

vnTwoVsecBD = \vnLift \bassoVsecBD
vnTwoVsecBE = \vnLift \bassoVsecBE
vnTwoVsecBF = \vnLift \bassoVsecBF
vnTwoVsecBG = \vnLift \bassoVsecBG
vnTwoVsecBH = \vnLift \bassoVsecBH
vnTwoVsecBI = \vnLift \bassoVsecBI

% --- 371-390 lift (A3): the 16-bar tie is kept as printed.
vnTwoVsecBJ = \vnLift \bassoVsecBJ

vnTwoVsecBK = \vnLift \bassoVsecBK
vnTwoVsecBL = \vnLift \bassoVsecBL
vnTwoVsecBM = \vnLift \bassoVsecBM
vnTwoVsecBN = \vnLift \bassoVsecBN
vnTwoVsecBO = \vnLift \bassoVsecBO
vnTwoVsecBP = \vnLift \bassoVsecBP

vnTwoVsecond = {
  \vnTwoVsecBA
  \repeat volta 2 { \vnTwoVsecBB }
  \vnTwoVsecBC
  \vnTwoVsecBD
  \vnTwoVsecBE
  \vnTwoVsecBF
  \vnTwoVsecBG
  \vnTwoVsecBH
  \vnTwoVsecBI
  \vnTwoVsecBJ
  \vnTwoVsecBK
  \vnTwoVsecBL
  \vnTwoVsecBM
  \vnTwoVsecBN
  \vnTwoVsecBO
  \vnTwoVsecBP
}
