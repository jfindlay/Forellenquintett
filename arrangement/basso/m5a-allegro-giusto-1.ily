\version "2.24.3"
% V. Allegro giusto, 2/4, A major: bars 1-236 (up to and including the D.C. repeat at 236).
% Layer 1: the Basso as printed (bass clef, written pitch). The printed `1`..`16` counts over the
% long tied D (bars 135-150) are entered as small text above the notes.

% ---------------------------------------------------------------------------------------------
% Bars 1-10: introduction. Vc cue (bars 1-2) rests; pizzicato E/A figure; four bars rest.
bassoVsecAA = {
  \key a \major
  \time 2/4
  \tempo "Allegro giusto"
  \barNumberCheck #1
  R2*2   % Vc. cue (E3 tied half notes)
  \barNumberCheck #3
  e,4-.\pp e4-. |
  a,4-. e4-. |
  e,4-. e4-. |
  a,4-. e4-. |
  \barNumberCheck #7
  R2*4
  \bar ".|:"
}

% Bars 11-26: first theme (repeated). Bars 25-26 rest under Pfte. cue.
bassoVsecAB = {
  \barNumberCheck #11
  a,4-. e4-. |
  a,4-. a4-. |
  d8->( fis8) fis8-. fis8-. |
  fis4( b,8) r8 |
  e,4-. e4-. |
  e,4-. e4-. |
  cis8->( e8) e8-. e8-. |
  \barNumberCheck #18
  e4( a,8) r8 |
  R2*6
  R2*2   % Pfte. cue (bars 25-26)
  \bar ":|."
}

% Bars 27-36: the introduction again (bars 1-10).
bassoVsecAC = {
  \barNumberCheck #27
  R2*2   % Vc. cue
  \barNumberCheck #29
  e,4-.\pp e4-. |
  a,4-. e4-. |
  \barNumberCheck #31
  e,4-. e4-. |
  a,4-. e4-. |
  R2*4
  \bar "||"
}

% Bars 37-52: ff chromatic phrase (A minor colour); bars 45-52 rest (Vc cue in 51-52).
bassoVsecAD = {
  \barNumberCheck #37
  a8.\ff( b32 a g8) f8-. |
  e4 e4 |
  e4 e4 |
  a4 g4->\fz~ |
  \barNumberCheck #41
  g8 c'8-. c'8-. c'8-. |
  c'4 b4 |
  c'4 g4 |
  c'4 r4 |
  R2*6
  R2*2   % Vc. cue (bars 51-52)
}

% Bars 53-65: the ff phrase again, then five bars rest.
bassoVsecAE = {
  \barNumberCheck #53
  a8.\ff( b32 a g8) f8-. |
  e4 e4 |
  e4 e4 |
  a4 g4->\fz~ |
  g8 c'8-. c'8-. c'8-. |
  c'4 b4 |
  c'4 g4 |
  \barNumberCheck #60
  c'4 r4 |
  R2*5
}

% Bars 66-77: fp offbeat figures answered by rests, closing diminuendo.
bassoVsecAF = {
  \barNumberCheck #66
  r4 f4->\fp~ |
  f8 d8-.( e8-. f8-.) |
  e4 r4 |
  R2 |
  r4 d4->\fp~ |
  \barNumberCheck #71
  d8 b,8-.( c8-. d8-.) |
  c4 r4 |
  R2 |
  r4 bes,4->\pp^\markup \italic "diminuendo"~ |
  bes,8 g,8-.( a,8-. bes,8-.) |
  a,4 r4 |
  R2 |
}

% Bars 78-83: ppp rising semitone figure and slurred pedal (F-G-A-A).
bassoVsecAG = {
  \barNumberCheck #78
  r4 g,4->\ppp~ |
  g,8 e,8-.( f,8-. g,8-.) |
  f,2( |
  g,2 |
  a,2~ |
  a,2) |
}

% Bars 84-107: D-F#-A / A-C#-E staccato figure, then the C# approach to F#.
bassoVsecAH = {
  \barNumberCheck #84
  d4-.\mf fis8.-. a16-. |
  d'4 r4 |
  \barNumberCheck #86
  d4-. fis8.-. a16-. |
  d'4 r4 |
  a,4-. cis8.-. e16-. |
  a4 r4 |
  a,4-. cis8.-. e16-. |
  a4 r4 |
  d4 fis8. a16 |
  \barNumberCheck #93
  d'4 r4 |
  d4 fis8. a16 |
  d'4 r4 |
  a,4 cis8. e16 |
  a4 r4 |
  a,4 cis8. e16 |
  a4 r4 |
  \barNumberCheck #100
  d4 fis8. a16 |
  d'4 r4 |
  d4 fis8. a16 |
  d'4 r4_\markup \italic "decresc." |
  cis4 fis8. a16 |
  cis'4 r4 |
  cis4 eis8. gis16 |
  \barNumberCheck #107
  cis'4 r4 |
}

% Bars 108-134: F# then G pedal (repeated 8ths), chromatic climb G# - D with slurred pairs.
bassoVsecAI = {
  \barNumberCheck #108
  fis4\pp fis8 fis |
  fis4-> fis8 fis |
  fis4 fis8 fis |
  fis4-> fis8 fis |
  fis4 fis8 fis |
  fis4-> fis8 fis |
  \barNumberCheck #114
  fis4 fis8 fis |
  fis4 fis8 fis |
  fis8( g8) g8-. g8-. |
  g4-> g8 g |
  g4 g8 g |
  g4-> g8 g |
  g4 g8 g |
  \barNumberCheck #121
  g4-> g8 g |
  g4 g8 g |
  g4 g8 g |
  g4 g8 g |
  g8->( gis8) gis8-. gis8-. |
  gis8( a8) a8-. a8-.  _\markup \italic "cresc." |
  a8( bes8) bes8-. bes8-. |
  \barNumberCheck #128
  bes8( b8) b8-. b8-. |
  b8( c'8) c'8-. c'8-. |
  c'8( cis'8) cis'8-. cis'8-. |
  cis'8( d'8) d'8-. d'8-. |
  d'8( g8) g8-. g8-. _\markup \italic "decresc." |
  g8( a8) a8-. a8-. |
  a8( a,8) a,8-. a,8-. |
}

% Bars 135-154: D pedal, sixteen tied bars (printed 1-10, 1-16 counts), then four bars rest.
bassoVsecAJ = {
  \barNumberCheck #135
  d2\p^\markup \small "1"~ |
  d2^\markup \small "2"~ |
  d2^\markup \small "3"~ |
  d2^\markup \small "4"~ |
  d2^\markup \small "5"~ |
  d2^\markup \small "6"~ |
  d2^\markup \small "7"~ |
  d2^\markup \small "8"~ |
  d2^\markup \small "9"~ |
  d2^\markup \small "10"~ |
  \barNumberCheck #145
  d2^\markup \small "11"~ |
  d2^\markup \small "12"~ |
  d2^\markup \small "13"~ |
  d2^\markup \small "14"~ |
  d2^\markup \small "15"~ |
  d2 ^\markup \small "16" |
  R2*4
}

% Bars 155-164: B-flat/E-flat/C offbeat figures (diminished-seventh colour).
bassoVsecAK = {
  \barNumberCheck #155
  bes,2->\fp |
  R2 |
  \barNumberCheck #157
  r4 bes,4\p( |
  ees4 c'4) |
  bes2\fp |
  R2 |
  r4 bes,4\p( |
  ees4 c'4) |
  bes4 r4 |
  R2 |
}

% Bars 165-170: rising line to the E4, answering fz figure.
bassoVsecAL = {
  \barNumberCheck #165
  r4 d4\f\<( |
  f4 bes4\!) |
  a2-> |
  R2 |
  a,4\fz cis'4\<( |
  e'4\! a4) |
}

% Bars 171-194: eighth-note triplet drive: D, B, then E-F#-G ascent to A, D-A, back to D.
bassoVsecAM = {
  \barNumberCheck #171
  \tuplet 3/2 { d8\pp d d } \tuplet 3/2 { d d d } |
  \omit TupletNumber
  \barNumberCheck #172
  \tuplet 3/2 { d8 d d } \tuplet 3/2 { d d d } |
  \tuplet 3/2 { d8 d d } \tuplet 3/2 { d d d } |
  \tuplet 3/2 { d8 d d } \tuplet 3/2 { d d d } |
  \tuplet 3/2 { b,8 b, b, } \tuplet 3/2 { b, b, b, } |
  \tuplet 3/2 { b,8 b, b, } \tuplet 3/2 { b, b, b, } |
  \barNumberCheck #177
  \tuplet 3/2 { b,8 b, b, } \tuplet 3/2 { b, b, b, } |
  \tuplet 3/2 { b,8 b, b, } \tuplet 3/2 { b, b, b, } |
  \tuplet 3/2 { e8 e e } \tuplet 3/2 { fis fis g } |
  \tuplet 3/2 { a8 a a } \tuplet 3/2 { a a a } |
  \tuplet 3/2 { d'8 d' d' } \tuplet 3/2 { a a a } |
  \barNumberCheck #182
  \tuplet 3/2 { d8 d d } \tuplet 3/2 { d d d } |
  \tuplet 3/2 { d8\f d d } \tuplet 3/2 { d d d } |
  \tuplet 3/2 { d8 d d } \tuplet 3/2 { d d d } |
  \tuplet 3/2 { d8 d d } \tuplet 3/2 { d d d } |
  \tuplet 3/2 { d8 d d } \tuplet 3/2 { d d d } |
  \barNumberCheck #187
  \tuplet 3/2 { b,8 b, b, } \tuplet 3/2 { b, b, b, } |
  \tuplet 3/2 { b,8 b, b, } \tuplet 3/2 { b, b, b, } |
  \tuplet 3/2 { b,8 b, b, } \tuplet 3/2 { b, b, b, } |
  \tuplet 3/2 { b,8 b, b, } \tuplet 3/2 { b, b, b, } |
  \tuplet 3/2 { e8 e e } \tuplet 3/2 { fis fis g } |
  \barNumberCheck #192
  \tuplet 3/2 { a8 a a } \tuplet 3/2 { a a a } |
  \tuplet 3/2 { d'8 d' d' } \tuplet 3/2 { a a a } |
  d4 r4 |
  \undo \omit TupletNumber
}

% Bars 195-204: eight bars rest, then two bars under the Va. cue.
bassoVsecAN = {
  \barNumberCheck #195
  R2*8
  \barNumberCheck #203
  R2*2   % Va. cue (bars 203-204)
}

% Bars 205-212: slurred half-note line D-E, C#-D, G-G#, A-A.
bassoVsecAO = {
  \barNumberCheck #205
  d2->\p( |
  e4) r4 |
  cis2->( |
  d4) r4 |
  g,2( |
  gis,2->) |
  a,2( |
  a,2->) |
}

% Bars 213-228: syncopated D/E/A cadence figures, G.P. bars, four bars rest, B-flat/B/A/A line.
bassoVsecAP = {
  \barNumberCheck #213
  d8\ff d4 d8~ |
  d4 r4 |
  \barNumberCheck #215
  e8 e4 e8~ |
  e4 r4 |
  a8 a4 a8~ |
  a4 r4 |
  R2^\markup "G.P." |
  R2^\markup "G.P." |
  R2*4
  \barNumberCheck #225
  bes2\p\<( |
  b2) |
  a2->\! |
  a,2 |
}

% Bars 229-236: ff dotted figure on D, three D quarters, G.P. bar with the da capo repeat sign.
bassoVsecAQ = {
  \barNumberCheck #229
  d8.\ff d'16 d'4-> |
  d8. d'16 d'4-> |
  d8. d'16 d'4-> |
  d8. d'16 d'4-> |
  d4 r4 |
  d4 r4 |
  d4 r4 |
  R2^\markup "G.P." |
  \bar ":|."
}

bassoVfirst = {
  \bassoVsecAA
  \bassoVsecAB
  \bassoVsecAC
  \bassoVsecAD
  \bassoVsecAE
  \bassoVsecAF
  \bassoVsecAG
  \bassoVsecAH
  \bassoVsecAI
  \bassoVsecAJ
  \bassoVsecAK
  \bassoVsecAL
  \bassoVsecAM
  \bassoVsecAN
  \bassoVsecAO
  \bassoVsecAP
  \bassoVsecAQ
}
