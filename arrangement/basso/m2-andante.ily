\version "2.24.3"
% II. Andante, 3/4, F major. Part pp. 6-7, bars 1-121 (system starts: 1, 9, 17, 24, 30, 36, 41,
% 46, 51, 54, 57 | 61, 69, 77, 84, 90, 96, 101, 106, 111, 115, 118).
% Key signature changes at the double bars: A major (24), D major (36), Ab major (61), C major
% (84), F major (96). Part footnote on bars 43-44: Stadler's copy differs (see Vorwort); the main
% printed text is entered. The slurred repeated-note figures are ties; "dim." is plain text.
% The movement prints no cues (the Basso plays or rests throughout). Beaming is the default
% beat grouping and matches the print: eighth pairs beam, single eighths over rests are
% flagged, and each 16th. + 32nd + 8th (or 16th) figure is one beat-group.

% Figure used in bars 114-120 (staccato, slurred, then a 16th rest).
bassoIIpulseF = { f,16.-.( f,32-. f,16-.) r16 }

% Bars 1-23: F major theme, then the fp bars 19-23 down to C#.
bassoIIsecA = {
  \key f \major
  \time 3/4
  \tempo "Andante"
  \barNumberCheck #1
  f2.\p~ | f8 r e8 r c8 r |
  \after 2 \> f2.\< | c2\! r4 |
  f2.~ | f8 r e8 r c8 r |
  f2. | c4->( f8) r8 r4 |
  \barNumberCheck #9
  bes,2.~ | bes,8 r a,8 r f,8 r |
  bes8\<( a8) g4\! r4 | a8\<( g8) f4\! r4 |
  bes,4 c4 r4 |
  f2.~ | f8 r e8 r f4 |
  bes,2.~ |
  \barNumberCheck #17
  bes,8 r a,8 r bes,8 r |
  f8[ bes,8] c2 |
  f4\fp r4 r4 | es4\fp r4 r4 | d4\fp r4 r4 | cis4\fp r4 r4 |
  cis4\fp r8 cis8-.[ cis8-. cis8-.] |
  \bar "||"
}

% Bars 24-35: A major, pulsing eighths over F#-C#-F#-E-D-G#-A.
bassoIIsecB = {
  \key a \major
  \barNumberCheck #24
  fis8\p r8 fis8 r8 fis8 r8 | fis8 r8 fis8 r8 fis8 r8 | fis8 r8 fis8 r8 fis8 r8 |
  cis8 r8 cis8 r8 cis8 r8 | fis8 r8 fis8 r8 fis8 r8 | fis8 r8 fis8 r8 fis8 r8 |
  \barNumberCheck #30
  fis8 r8 fis8 r8 fis8 r8 | cis8 r8 cis8 r8 cis8 r8 |
  fis8 r8 fis8 r8 fis8\decresc r8 | e8\! r8 e8 r8 e8 r8 |
  d8 r8 d8 r8 gis,8-> r8 | a,8\pp r8 a,8 r8 a,8 r8 |
  \bar "||"
}

% Bars 36-52: D major, the dotted 16th figures with the A/F#/D/G octave jumps, ending in the long
% decrescendo on the D/D2 figure.
bassoIIsecCa = {
  \key d \major
  \barNumberCheck #36
  d8\fp-. r8 fis8-. r8 d8-. r8 |
  a,16.-. a,32-. a8->~ a16. a,32-. a8->~ a16. a,32-. a8-> |
  d8-. r8 fis8-. r8 d8-. r8 |
  a,16.-. a,32-. a8->~ a16. a,32-. a8->~ a16. a,32-. a8-> |
  d8 r8 b,8 r8 d8 r8 |
  \barNumberCheck #41
  fis16. fis,32 fis8->~ fis16. fis,32 fis8->~ fis16. fis,32 fis8-> |
  b,8 r8 d8 r8 b,8 r8 |
}

% Bars 43-52: the second half of the section, split off so the Vn2 layer can hang the Stadler
% footnote on bar 43.
bassoIIsecCb = {
  d16. d,32 d8->~ d16. d,32 d8->~ d16.\decresc d,32\! d8->~ |
  d16. d,32 d8 d,8 r8 d8 r8 |
  g16. g,32 g8 g,8 r8 g8 r8 |
  \barNumberCheck #46
  fis16. fis,32 fis8 fis,8 r8 fis8 r8 |
  g16. g,32 g8 g,8\decresc r8 g8\! r8 |
  fis16. fis,32 fis8 fis,8 r8 fis8 r8 |
  d16.\pp ^\markup \italic "dim." d,32 d8~ d16. d,32 d8~ d16. d,32 d8~ |
  d16. d,32 d8~ d16. d,32 d8~ d16. d,32 d8~ |
  \barNumberCheck #51
  d16. d,32 d8~ d16. d,32 d8~ d16.\decresc d,32\! d8~ |
  d16. d,32 d8~ d16. d,32 d8~ d16. d,32 d8 |
}

bassoIIsecC = { \bassoIIsecCa \bassoIIsecCb }

% Bars 53-60: the ppp G pulse (all strings pulse), closing on the fermata of bar 60.
bassoIIsecD = {
  \barNumberCheck #53
  g,16.\ppp-.( g,32-. g,16-.) r16 g,16.-.( g,32-. g,16-.) r16
    g,16._\markup \italic "simile" g,32 g,16 r16 |
  \barNumberCheck #54
  \repeat unfold 9 { g,16. g,32 g,16 r16 }
  \barNumberCheck #57
  \repeat unfold 9 { g,16. g,32 g,16 r16 }
  g,2.\fermata |
  \bar "||"
}

% Bars 61-83: A-flat major, the theme again with a lower-lying second half, closing on fp bars.
bassoIIsecE = {
  \key aes \major
  \barNumberCheck #61
  aes2.\p~ | aes8 r8 g8 r8 es8 r8 |
  \after 2 \> aes2.\< | es2\! r4 |
  aes2.~ | aes8 r8 g8 r8 es8 r8 |
  aes2. | es4->( aes8) r8 r4 |
  \barNumberCheck #69
  des2.~ | des8 r8 c8 r8 aes,8 r8 |
  des8\<( c8) bes,4\! r4 | c8\<( bes,8) aes,4\! r4 |
  des4 es4 r4 |
  aes2.~ | aes8 r8 g8 r8 aes4 |
  des2.~ |
  \barNumberCheck #77
  des8 r8 c8-. r8 des8 r8 |  % bar 77: the print has a staccato dot under the stem-up c8
  aes,8 des8 es2 |
  aes,4\fp r4 r4 | ges4\fp r4 r4 | f4\fp r4 r4 | e4\fp r4 r4 |
  e4\fp r8 e8-.[ e8-. e8-.] |
  \bar "||"
}

% Bars 84-95: C major, the pulsing eighths again over A-E-A-G-F-B-C.
bassoIIsecF = {
  \key c \major
  \barNumberCheck #84
  a8\p r8 a8 r8 a8 r8 | a8 r8 a8 r8 a8 r8 | a8 r8 a8 r8 a8 r8 |
  e8 r8 e8 r8 e8 r8 | a8 r8 a8 r8 a8 r8 | a8 r8 a8 r8 a8 r8 |
  \barNumberCheck #90
  a8 r8 a8 r8 a8 r8 | e8 r8 e8 r8 e8 r8 |
  a8 r8 a8 r8 a8\decresc r8 | g8\! r8 g8 r8 g8 r8 |
  f8 r8 f8 r8 b,8-> r8 | c8\pp r8 c8 r8 c8 r8 |
  \bar "||"
}

% Bars 96-113: F major, the dotted 16th figures with the A/C/F octave jumps, ending in the long
% decrescendo on the C/C2 figure.
bassoIIsecG = {
  \key f \major
  \barNumberCheck #96
  f8\fp-. r8 a8-. r8 f8-. r8 |
  c16.-. c,32-. c8->~ c16. c,32-. c8->~ c16. c,32-. c8-> |
  f8-. r8 a8-. r8 f8-. r8 |
  c16.-. c,32-. c8->~ c16. c,32-. c8->~ c16. c,32-. c8-> |
  f8 r8 d8 r8 f8 r8 |
  \barNumberCheck #101
  a16. a,32 a8->~ a16. a,32 a8->~ a16. a,32 a8-> |
  d8 r8 f8 r8 d8 r8 |
  f16. f,32 f8->~ f16. f,32 f8->~ f16. f,32 f8-> |
  bes,16. bes,32 bes8->~ bes16. bes,32 bes8->~ bes16. bes,32 bes8-> |
  c'16. c32 c'8 c8 r8 c'8 r8 |
  \barNumberCheck #106
  f16. f,32 f8 f,8 r8 f8 r8 |
  e16. e,32 e8 e,8\decresc r8 e8\! r8 |
  f16. f,32 f8 f,8 r8 f8 r8 |
  e16. e,32 e8 e,8 r8 e8 r8 |
  c16.\pp ^\markup \italic "dim." c,32 c8~ c16. c,32 c8~ c16. c,32 c8~ |
  \barNumberCheck #111
  c16. c,32 c8~ c16. c,32 c8~ c16. c,32 c8~ |
  c16.\decresc c,32\! c8~ c16. c,32 c8~ c16. c,32 c8~ |
  c16. c,32 c8~ c16. c,32 c8~ c16. c,32 c8 |
}

% Bars 114-121: the ppp F pulse (all strings pulse), closing on the fermata of bar 121.
bassoIIsecH = {
  \barNumberCheck #114
  f,16.\ppp-.( f,32-. f,16-.) r16 \bassoIIpulseF \bassoIIpulseF |
  \barNumberCheck #115
  \repeat unfold 9 \bassoIIpulseF
  \barNumberCheck #118
  \repeat unfold 9 \bassoIIpulseF
  f,2.\fermata |
  \bar "|."
}

bassoII = {
  \bassoIIsecA
  \bassoIIsecB
  \bassoIIsecC
  \bassoIIsecD
  \bassoIIsecE
  \bassoIIsecF
  \bassoIIsecG
  \bassoIIsecH
}
