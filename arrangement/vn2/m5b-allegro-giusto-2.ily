\version "2.24.3"
% V. Allegro giusto bars 237-end: Violin II derived from basso/m5b-allegro-giusto-2.ily.
% Default \vnLift. Hand-entered: BA, BB, BC (the B-octave leap would put the upper B above Vn1's
% G4-A4 melody; the upper B drops to B3) and BJ (the 16-bar tied A is re-bowed after bar 378).
% Pitches below are absolute (c = C3, c' = C4), so the hand bars read as sounding Vn2 pitch.

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
  R2                            % 261: Pfte. cue
  R2                            % 262: Pfte. cue
}

% --- 263-272 hand: as 237-246 (Vc cue 263-264).
vnTwoVsecBC = {
  \barNumberCheck #263
  R2*2                          % 263-264: Vc. cue
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

% --- 371-390 lift (A3), hand-entered only to break the 16-bar tie: re-bowed at bar 379 (count 9).
vnTwoVsecBJ = {
  \barNumberCheck #371
  a2\pp^"1"~                    % 371
  a2^"2"~
  a2^"3"~
  a2^"4"~
  a2^"5"~
  a2^"6"~                       % 376
  \barNumberCheck #377
  a2^"7"~                       % 377
  a2^"8"                        % 378: tie ends; new bow at 379
  a2^"9"~                       % 379
  a2^"10"~
  a2^"11"~
  a2^"12"~
  a2^"13"~
  a2^"14"~
  a2^"15"~
  a2^"16"                       % 386
  \barNumberCheck #387
  R2*4                          % 387-390
}

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
