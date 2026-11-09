\version "2.24.3"
% I. Allegro vivace, 4/4, A major. Part pp. 2-5, bars 1-317. Entered as printed (written pitch,
% bass clef). Printed system-start numbers: 1, 11, 20, 28, 36, 43, 50, 56, 64, 71, 79, 91, 99, 110,
% 118, 125, 130, 134, 141 | 147, 155, 167, 174, 181, 184, 187, 191, 195, 203, 210, 218 | 226, 234,
% 242, 251, 258, 266, 279, 287, 294, 299, 304, 312.
%
% Notes on the transcription:
% - Bars 1-146 sit inside the exposition repeat (end-repeat sign after bar 146, footnote "Zum Problem
%   der Wiederholung vgl. Vorwort"); the part prints no volta brackets.
% - The cues from other parts that the Basso prints over its rests (bars 91-93 Pfte. with 8va, then
%   Viol.; 163-164 Pfte. with 8va; 276-277 Pfte., 278 Viol., no 8va bracket) are entered as small
%   notes with \bassoCue. The 8va cues are typed at sounding pitch inside \ottava.
% - Beams: the print's beaming needs no manual override (LilyPond's default groups match), except
%   where noted in the bar comments; the sixteenth figures are beamed by hand ([ ]) as printed.
% - The bar-52 and bar-237 eighths (and 181-188) are triplets: the part prints twelve (or 6+3+3)
%   unmarked eighths to the bar; each figure is entered as a tuplet, and the movement prints no "3"
%   (\omit TupletNumber in bassoI and vnTwoI).
% - The small ">" after a dynamic (ff>, p>cresc., f>, fp>) is entered as part of a markup.
% - Bars 1-10 (A pedal) and 11-18 (F pedal) carry the part's printed courtesy counts 1-10 and 1-8
%   as small text above the notes.
% - Key signatures: A major (bars 1-180), E-flat major (181-194), C major (195-209), A major (210-).

% --- Bars 1-22: A pedal (1-10), F pedal (11-18), F figure (19-22) -------------------------------
% The two halves are separate variables only so the Vn2 layer can treat them differently.
bassoIsecAa = {
  \key a \major
  \time 4/4
  \tempo "Allegro vivace"
  \barNumberCheck #1
  a,1~^\markup \small "1" _\markup { \dynamic ff \italic ">" }
  a,1\p~^\markup \small "2"
  a,1\pp~^\markup \small "3"
  a,1~^\markup \small "4"
  a,1~^\markup \small "5"
  a,1~^\markup \small "6"
  a,1~^\markup \small "7"
  a,1~^\markup \small "8"
  a,1~^\markup \small "9"
  a,1^\markup \small "10"
}

bassoIsecAb = {
  \barNumberCheck #11
  f,1\pp~^\markup \small "1"
  f,1~^\markup \small "2"
  f,1~^\markup \small "3"
  f,1~^\markup \small "4"
  f,1~^\markup \small "5"
  f,1~^\markup \small "6"
  f,1~^\markup \small "7"
  f,1^\markup \small "8"
  f,4\cresc f,2 f,4~
  \barNumberCheck #20
  f,4 f,2 f,4~
  f,4 f,2 f,4~
  f,4 f,2 f4
}

bassoIsecA = {
  \bassoIsecAa
  \bassoIsecAb
}

% --- Bars 23-51: E dominant, pizz./arco dialogue, rest bar -------------------------------------
% Split at bar 43 (a lone bar) only so the Vn2 layer can treat that bar differently.
bassoIsecBa = {
  \barNumberCheck #23
  e1->\f
  e1->
  a,4\ff r4 r2
  r4 a4\pzMark\pp -. e4-. cis4-.
  a,4-. r4 a4-. r4
  \barNumberCheck #28
  r4 cis4\arcoMark -. a,4-. cis4-.
  e2\ff r2
  r4 e4\pzMark\pp -. b,4-. gis,4-.
  e,4-. r4 e4-. r4
  r4 e4\arcoMark -. gis4-. e4-.
  a2\ff r2
  r2 a,4\fz r4
  d4\p r4 a,4\fz r4
  \barNumberCheck #36
  d4\p r4 dis2->(
  e4)\cresc r4 e4 r4
  a,2\ff r2
  r4 a,4\pzMark\p -. cis4-. e4-.
  a4-. r4 a,4-. r4
  r4 a,4\arcoMark -. cis4-. a,4-.
  e2\ff r2
}

bassoIsecBb = {
  \barNumberCheck #43
  r4 e,4\pzMark\p -. gis,4-. b,4-.
}

bassoIsecBc = {
  \barNumberCheck #44
  e4-. r4 e,4-. r4
  r4 e4\arcoMark -. gis4-. e4-.
  a2\ff r2
  r2 a4\f r4
  d4\p r4 a4\f r4
  d4\p r4 a4\f r4
  \barNumberCheck #50
  d'4\f d4-.\fz r2
  R1
}

bassoIsecB = {
  \bassoIsecBa
  \bassoIsecBb
  \bassoIsecBc
}

% --- Bars 52-63: diminished-seventh triplets, E/F/G pedals ---------------------------------------
bassoIsecC = {
  \barNumberCheck #52
  \tuplet 3/2 { c8_( _\markup { \dynamic p \italic ">" \italic "cresc." } dis8) dis8-. }
  \tuplet 3/2 { dis8_( fis8) fis8-. }
  \tuplet 3/2 { fis8_( a8) a8-. }
  \tuplet 3/2 { a8^( c'8) c'8-. }
  e1->\f
  f2.->\fz( fis4)
  g1->
  \barNumberCheck #56
  g,1_>
  gis,1\fp
  % The spanner's "decresc." sits at the note's left edge and runs into the pp of bar 59; the print
  % has it centred under the second note, so it is plain text here.
  a,2 d2_\markup \italic "decresc."
  e1\pp
  g1->\ff
  gis1\fz
  a2\p a,2
  b,2 b,2
}

% --- Bars 64-90: E-major/minor crotchets, rest 85-90 ---------------------------------------------
bassoIsecD = {
  \barNumberCheck #64
  e4\p r4 gis4 r4
  b4 r4 b,4 r4
  e4 r4 gis4 r4
  b4 r4 b,4 r4
  e4 r4 gis4 r4
  a4 r4 ais4 r4
  b4 r4 fis4 r4
  \barNumberCheck #71
  b,4 r4 g2->(
  fis4) r4 fis,4\p r4
  b,1\dim~
  b,1
  e4\p r4 g4 r4
  b4 r4 b,4 r4
  e4 r4 g4 r4
  b4 r4 b,4 r4
  \barNumberCheck #79
  e4 r4 d4-> r4
  g4 r4 c4 r4
  d4 r4 d4 r4
  dis4-> r4 e4 a,4
  b,4 r4 b,4 r4
  e4 r4 r2
  R1*6
}

% --- Bars 91-109: cue bars, B/E/C pedals ---------------------------------------------------------
bassoIsecE = {
  \barNumberCheck #91
  % Pfte. cue (treble clef, 8va bracket over bars 91-93 up to the quarter e), then Viol. in bar 93.
  % The print gives the notes an octave below sounding; typed here at sounding pitch.
  \bassoCue "treble"
    {
      \stemUp \ottava #1
      % The print puts the tr directly over the note, under the 8va bracket (and the label above it).
      \once \override Script.outside-staff-priority = #300
      dis'''2\pfteMark\trill \grace { cis'''16[ dis'''] } e'''8.^.[ fis'''16^. gis'''8.^. e'''16^.] |
      cis'''4^. fis'''4^.^> dis'''8.^.[ cis'''16^. dis'''8.^. b''16^.] |
      e'''4 \ottava #0 r4 b''4\violMark^. b''4^.
    }
    { R1 | R1 | R1 }
  b,4\pp b,4 b,4 r4
  e4 e4 gis,2(
  a,2 b,2
  cis2 c2)
  b,4 b,4 cis2
  \barNumberCheck #99
  a,4 a,4 b,2
  e1\pp~ e1~ e1~ e1~ e1~ e1
  c1\pp~ c1~ c1~ c1
}

% --- Bars 110-124: B crotchet pedal, E/B alternation --------------------------------------------
bassoIsecF = {
  \barNumberCheck #110
  b,4\cresc b,2 b,4~
  b,4 b,2 b,4~
  b,4 b,2 b,4~
  b,4 b,2 b,4
  e4\ff r4 e4 r4
  e4 r4 e4 r4
  b,4\p r4 b,4 r4
  b,4 r4 b,4 r4
  \barNumberCheck #118
  e4\f r4 e4 r4
  e4 r4 e4 r4
  b,4\p r4 b,4 r4
  b,4 r4 b,4 r4
  e4\f r4 b4\p r4
  cis'4\f r4 gis4\p r4
  a4\f r4 e4\p r4
}

% --- Bars 125-146: end of the exposition (repeat sign after 146) -----------------------------------
bassoIsecGa = {
  \barNumberCheck #125
  cis8\f r8 dis8 r8 e8 r8 r4
  a,8\p r8 b,8 r8 e8 r8 r4
  fis8\f r8 gis8 r8 a4 r4
  d8\p r8 e8 r8 a,4 r4
  b,8\fp b16[ b b8 b] b4 r4
  \barNumberCheck #130
  r8 b16[\cresc b b8 b] b4 r4
  r8 b16[ b b8 b] b4 r4
  r8 b,16[\f b, b,8 b,] b,8[ b, b,8 b,]
  b,4 r4 r2
  \barNumberCheck #134
  r4 gis,8\p r8 a,8 r8 ais,8 r8
  b,4\fp r4 r2
  d1\pp( a,1)
  d1( a,1)
  d4 r4 b,2\fz
  \barNumberCheck #141
  e4\ff r8. e16 a4 r8. a16
  b4 r8. b16 b,4 r8. b,16
  e4\p r8. b,16 b4-> r8. b,16
  b4-> r8. b,16\cresc b4-> r8. b,16
  b4->\ff r8. b,16 b4-> r8. b,16
  e4 e,4\fz
}

% The closing half-rest of bar 146, split off so the Vn2 layer can hang the repeat footnote on it
% (a \footnote anchor only catches a grob at the very moment it is placed).
bassoIsecGb = {
  r2
}

bassoIsecG = { \bassoIsecGa \bassoIsecGb }

% --- Bars 147-164: development opens, dotted C/B pedal, rests with Pfte. cue -----------------------
bassoIsecH = {
  \barNumberCheck #147
  R1*2
  c4.\pp c8 c4. c8
  c4. c8 c4. c8
  b,4. b,8 b,4. b,8
  b,4. b,8 b,4. b,8
  c4. c8 c4. c8
  c4. c8 c4. c8
  \barNumberCheck #155
  c4. c8 c4. c8
  c4. c8 c4. c8
  c4 r4 r2
  R1*5
  % Pfte. cue (treble clef, 8va bracket over both bars), typed at sounding pitch.
  \bassoCue "treble"
    {
      \stemUp \slurUp \ottava #1
      bes'''2.\pfteMark^>( f'''4) | fis'''!2( g'''2) \ottava #0
    }
    { R1 | R1 }
}

% --- Bars 165-180: B-flat pedal, dotted figures --------------------------------------------------
bassoIsecI = {
  \barNumberCheck #165
  bes,2\pp( a,2
  bes,2 ees2)
  \barNumberCheck #167
  bes,2( ces2
  bes,2 f2)
  bes,2( g,2
  bes,2 ees2)
  f,4. f8 f4. f8
  f4. f8 f4. f8
  bes,4. bes,8 bes,4. bes,8
  \barNumberCheck #174
  bes,4. bes,8 bes,4. bes,8
  bes,4. bes,8 bes,4. bes,8
  bes,4. bes,8 bes,4. bes,8
  bes,4. bes,8 d4. d8
  g,4. g,8 d4. d8
  g,4.\dim g,8 bes,4. bes,8
  ees4. ees8 bes,4. bes,8
  \bar "||"
}

% --- Bars 181-194: E-flat major, the triplet line, dotted-rhythm dialogue --------------------------
bassoIsecJ = {
  \key ees \major
  \barNumberCheck #181
  ees4\f bes4->~ \tuplet 3/2 { bes8( c'8 bes8 } \tuplet 3/2 { aes8 g8 f8) }
  \tuplet 3/2 { ees8( f8 g8 } \tuplet 3/2 { f8 ees8 d8 } \tuplet 3/2 { ees8 d8 c8 }
    \tuplet 3/2 { bes,8 aes,8 g,8) }
  f,4-. aes4->~ \tuplet 3/2 { aes8( bes8 aes8 } \tuplet 3/2 { g8 f8 ees8) }
  \barNumberCheck #184
  \tuplet 3/2 { d8( ees8 f8 } \tuplet 3/2 { ees8 d8 c8 } \tuplet 3/2 { bes,8 a,8 bes,8 }
    \tuplet 3/2 { c8-> b,8 c8) }
  f,4-. c'4->~ \tuplet 3/2 { c'8( des'8 c'8 } \tuplet 3/2 { bes8 aes8 g8) }
  \tuplet 3/2 { aes8( bes8 c'8 } \tuplet 3/2 { bes8 aes8 g8 } \tuplet 3/2 { f8 ees8 des8 }
    \tuplet 3/2 { c8 bes,8 aes,8) }
  \barNumberCheck #187
  g,4-. bes4->~ \tuplet 3/2 { bes8( c'8 bes8 } \tuplet 3/2 { aes8 g8 f8) }
  \tuplet 3/2 { e8( f8 g8 } \tuplet 3/2 { f8 e8 d8 } \tuplet 3/2 { c8 b,8 c8 }
    \tuplet 3/2 { ees8-> d8 ees8) }
  aes,4\p aes8. ees16 g4 ees8. ees16
  aes4 aes8. aes16 a4 a8. f16
  \barNumberCheck #191
  bes4\cresc bes8. f16 a4 f8. f16
  bes4 bes,8. bes,16 bes4 ges8. ges16
  ces'4\f ces'8. ges16 bes4 ges8. ges16
  ces'4 r4 ces4\p r4
  \bar "||"
}

% --- Bars 195-209: C major, B/C/Db/C-sharp then A pedal ---------------------------------------------
bassoIsecK = {
  \key c \major
  \barNumberCheck #195
  b,4 r4 b,4 r4
  b,4 r4 b,4 r4
  c4 r4 c4 r4
  c4 r4 c4 r4
  c4 r4 c4 r4
  des4 r4 des4 r4
  cis4 r4 cis4 r4
  cis4 r4 cis4 r4
  \barNumberCheck #203
  a,4\dim r4 a,4 r4
  a,4 r4 a,4 r4
  a,4 r4 a,4 r4
  a,4 r4 a,4 r4
  a,4 r4 a,4 r4
  a,4 r4 a,4 r4
  a,4 r4 a,4 r4
  \bar "||"
}

% --- Bars 210-225: recapitulation opens in D (parallel to bars 26-41, a fourth higher) -------------
bassoIsecL = {
  \key a \major
  \barNumberCheck #210
  d4\ff r4 r2
  r4 d'4\pzMark\pp -. a4-. fis4-.
  d4-. r4 d'4-. r4
  r4 fis4\arcoMark -. d4-. fis4-.
  a2\ff r2
  r4 a4\pzMark\p -. e4-. cis4-.
  a,4-. r4 a4-. r4
  r4 a4\arcoMark -. cis'4-. a4-.
  \barNumberCheck #218
  d2\ff r2
  r2 d4\f r4
  g4\p r4 d4\f r4
  g4\p r4 gis2->(
  a4)\cresc r4 a4 r4
  d2\ff r2
  r4 d4\pzMark\p -. fis4-. a4-.
  d'4-. r4 d4-. r4
}

% --- Bars 226-236: D theme continues, G dominant preparation, rest bar --------------------------
bassoIsecM = {
  \barNumberCheck #226
  r4 d4\arcoMark -. fis4-. d4-.
  a2\ff r2
  r4 a,4\pzMark\p -. cis4-. e4-.
  a4-. r4 a,4-. r4
  r4 a4\arcoMark -. cis'4-. a4-.
  d2\ff r2
  r2 d4\f r4
  g,4\p r4 d4\f r4
  \barNumberCheck #234
  g,4\p r4 d4\f r4
  g,4\f g4-.\fz r2
  R1
}

% --- Bars 237-248: diminished-seventh triplets, A/B-flat/C pedals ---------------------------------
% Split after bar 237 only so the Vn2 layer can treat the triplet bar differently.
bassoIsecNa = {
  \barNumberCheck #237
  \tuplet 3/2 { f,8_(\p\cresc gis,8) gis,8-. }
  \tuplet 3/2 { gis,8_( b,8) b,8-. }
  \tuplet 3/2 { b,8_( d8) d8-. }
  \tuplet 3/2 { d8^( f8) f8-. }
}

bassoIsecNb = {
  \barNumberCheck #238
  a,1\! _\markup { \dynamic f \italic ">" }
  bes,2._>( b,4)
  c1_>
  c1_>
  \barNumberCheck #242
  cis1\fp
  d2\decresc g,2
  a,1\p
  c1 _\markup { \dynamic ff \italic ">" }
  cis1 _\markup { \dynamic fp \italic ">" }
  d1\p
  e2 e2
}

bassoIsecN = {
  \bassoIsecNa
  \bassoIsecNb
}

% --- Bars 249-278: crotchet pedals, G/F colour, rests with Pfte./Viol. cue ------------------------
bassoIsecO = {
  \barNumberCheck #249
  a,4\p r4 cis4 r4
  e4 r4 e,4 r4
  \barNumberCheck #251
  a,4 r4 cis4 r4
  e4 r4 e,4 r4
  a,4 r4 cis4 r4
  d4 r4 dis4 r4
  e4 r4 b,4 r4
  e4 r4 c2_>(
  b,4) r4 b,4\p r4
  \barNumberCheck #258
  e1\dim~
  e1
  a,4\p r4 c4 r4
  e4 r4 e,4 r4
  a,4 r4 c4 r4
  e4 r4 e,4 r4
  a,4 r4 g,4_> r4
  c4 r4 f,4 r4
  \barNumberCheck #266
  g,4 r4 g,4 r4
  gis,4_> r4 a,4 d4
  e4 r4 e4 r4
  a,4 r4 r2
  R1*6
  % Pfte. cue 276-277, Viol. cue 278 (treble clef; the print draws no 8va bracket here).
  \bassoCue "treble"
    {
      \stemUp
      % As in bar 91: the tr sits directly over the note, under the "Pfte." label.
      \once \override Script.outside-staff-priority = #300
      gis''!2\pfteMark\trill a''8.^.[ b''16^. cis'''8.^. a''16^.] |
      fis''4^. b''4^.^> gis''8.^.[ fis''16^. gis''8.^. e''16^.] |
      a''4 r4 e''4\violMark^. e''4^.
    }
    { R1 | R1 | R1 }
}

% --- Bars 279-293: second-theme tail in A, crotchet alternation -----------------------------------
bassoIsecP = {
  \barNumberCheck #279
  e4\p e4 e4 r4
  a,4 a,4 cis2(
  d2 e2
  fis2 f2)
  e4 e4 fis2
  d4 d4 e2
  a4\ff r4 a4 r4
  a4 r4 a4 r4
  \barNumberCheck #287
  e4\p r4 e4 r4
  e4 r4 e4 r4
  a4\f r4 a4 r4
  a4 r4 a4 r4
  e4\p r4 e4 r4
  e4 r4 e4 r4
  a4\f r4 e4\p r4
}

% --- Bars 294-317: closing group, coda and final bar ------------------------------------------------
bassoIsecQ = {
  \barNumberCheck #294
  fis4\f r4 cis4\p r4
  d4\f r4 a,4\p r4
  fis8\f r8 gis8 r8 a8 r8 r4
  d8\p r8 e8 r8 a,4 r4
  b8\f r8 cis'8 r8 d'4 r4
  \barNumberCheck #299
  g8\p r8 a8 r8 d4 r4
  e8[\fp e16 e e8 e] e4 r4
  r8 e16[ e e8 e] e4 r4
  r8 e16[\cresc e e8 e] e4 r4
  r8 e16[\f e e8 e] e8[ e e e]
  \barNumberCheck #304
  e4 r4 r2
  r4 cis8\p r8 d8 r8 dis8 r8
  e4\fp r4 r2
  g,1\pp( d1)
  g,1( d1)
  g,4 r4 e,2\ffz
  \barNumberCheck #312
  a,4\ff r8. a,16 d4 r8. d16
  e4 r8. e16 e'4 r8. e16
  a,4\p r8. e16 e'4-> r8. e16
  e'4-> r8. e16\cresc e'4-> r8. e16
  e'4->\ff r8. e16 e'4-> r8. e16
  a4\fz a,4 r2
  \bar "|."
}

% --- Whole movement: exposition repeat (bars 1-146), no volta brackets are printed ---------------
bassoI = {
  \omit TupletNumber
  \repeat volta 2 {
    \bassoIsecA
    \bassoIsecB
    \bassoIsecC
    \bassoIsecD
    \bassoIsecE
    \bassoIsecF
    \bassoIsecG
  }
  \bassoIsecH
  \bassoIsecI
  \bassoIsecJ
  \bassoIsecK
  \bassoIsecL
  \bassoIsecM
  \bassoIsecN
  \bassoIsecO
  \bassoIsecP
  \bassoIsecQ
}
