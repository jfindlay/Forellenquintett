\version "2.24.3"
% IV. Andantino (2/4, D major): Thema (bars 1-20), Var. I (21, pizz.), Var. II (41, arco), Var. III
% (61), Var. IV (81, F major), Var. V (101, Bb major), then Allegretto from bar 128 (D major, 2/4)
% to the closing fermata (bar 172). Part pp. 9-11.
%
% Each variation is one self-contained section (its own repeat and voltas). Every variation's last
% bar is a 3/8 bar; the next variation's pickup eighth completes it. Where the print shows
% "28a"/"68a" for a first ending, the first and second endings share one bar number, so each
% second ending resets Score.currentBarNumber.

% Thema, bars 1-20 (pickup rest, repeat with 1./2. endings).
bassoIVsecA = {
  \key d \major
  \time 2/4
  \tempo "Andantino"
  \partial 8 r8
  \repeat volta 2 {
    \barNumberCheck #1
    d4-.\pp( d8-. d-.) |
    d2 |
    a4-.( a8-. a-.) |
    a4 r |
    d4-.( d8-. d-.) |
    d4. d8 |
    e4. e8 |
  }
  \alternative {
    { \barNumberCheck #8 a,4 r | }
    { \set Score.currentBarNumber = #8 \barNumberCheck #8 a,4 r | }
  }
  \barNumberCheck #9
  a4-.( a8-. a-.) |
  \barNumberCheck #10
  d8-. d-. fis-. d-. |
  a4-.( a8-. a-.) |
  d'4 r |
  g,4 g,8( b,) |
  d4.( fis8) |
  \barNumberCheck #15
  a8.-.( a16-. a8-. a-.) |
  d'4 r |
  g,4 g,8( b,) |
  d4.( fis8) |
  a8.-.( a16-. a8-. a-.) |
  \barNumberCheck #20
  d4. \bar "||"
}

% Var. I, bars 21-40 (pizz. arpeggios, repeat with 1./2. endings).
bassoIVsecB = {
  r8
  \repeat volta 2 {
    \showBarNumber
    \barNumberCheck #21
    d8-.\pzMark\pp d'-. a-. fis-. |
    d-. a-. fis-. d-. |
    a,-. cis-. e-. a-. |
    a,-. cis-. e-. a-. |
    d-. d'-. a-. fis-. |
    d-. a-. fis-. d-. |
    e-. a-. gis-. e-. |
  }
  \alternative {
    { \barNumberCheck #28 a8-. a,-. r a,-. | }
    { \set Score.currentBarNumber = #28 \barNumberCheck #28 a8-. a,-. r a,-. | }
  }
  \barNumberCheck #29
  a,8-. cis-. e-. a-. |
  d-. fis-. a-. d'-. |
  a,-. cis-. e-. a-. |
  d-. fis-. a-. d'-. |
  g,-. g-. g,-. b,-. |
  \barNumberCheck #34
  d-. d'-. d-. fis-. |
  a-. e-. cis-. a,-. |
  d-. d'-. r d-. |
  g,-. g-. g,-. b,-. |
  d-. d'-. d-. fis-. |
  a-. e-. cis-. a,-. |
  \barNumberCheck #40
  d-. d'-. d-. \bar "||"
}

% Var. II, bars 41-60 (arco, sparse skeleton; repeat with 1./2. endings).
bassoIVsecC = {
  r8
  \repeat volta 2 {
    \showBarNumber
    \barNumberCheck #41
    d4\arcoMark\p r |
    R2 |
    a,4 r |
    a4 r |
    d4 r |
    r4 r8 d |
    e8 r e r |
  }
  \alternative {
    { \barNumberCheck #48 a,4 r | }
    { \set Score.currentBarNumber = #48 \barNumberCheck #48 a,4 r | }
  }
  \barNumberCheck #49
  a8.-.( a16-. a8-. a-.) |
  d4. r8 |
  \barNumberCheck #51
  a8.-.( a16-. a8-. a-.) |
  d4 r |
  g,8.-.( g,16-. g,8-. b,-.) |
  d4. r8 |
  a,8.-.( a,16-. a,8-. a,-.) |
  d4 r |
  g,8.-.( g,16-. g,8-. b,-.) |
  d4. r8 |
  a,8.-.( a,16-. a,8-. a,-.) |
  \barNumberCheck #60
  d4. \bar "||"
}

% Var. III, bars 61-80 (pickup A, then repeat with 1./2. endings).
bassoIVsecDa = {
  a,8\p
  \repeat volta 2 {
    \showBarNumber
    \barNumberCheck #61
    d8-. d-. fis-. fis-. |
    d4 a, |
    a,8. a,16 e16._( d32 cis16. b,32) |
    a,4 r8 a, |
    d8-. d-. fis-. fis-. |
    d4 a,8 d |
    e8 r e r |
  }
  \alternative {
    { \barNumberCheck #68 a,4. a,8 | }
    { \set Score.currentBarNumber = #68 \barNumberCheck #68 a,4. a,8 | }
  }
  \barNumberCheck #69
  cis8 cis d16_( cis b, cis) |
  d4( a,8) d |
  cis8 cis cis16( g e cis) |
}

% Bars 72-80: split off so the Vn2 layer can hang the Stadler footnote on bar 72.
bassoIVsecDb = {
  d4( d,8) d |
  b,8 b, b, d |
  \barNumberCheck #74
  d4->( a,8) a, |
  a,8. a,16 e8 cis |
  d4( d,8) d |
  b,8 b, b, d |
  d4->( a,8) a, |
  a,8. a,16 e8 cis |
  \barNumberCheck #80
  d4. \bar "||"
}

bassoIVsecD = { \bassoIVsecDa \bassoIVsecDb }

% Var. IV, bars 81-100 (F major). The pickup A sits after the repeat sign; the repeat covers bars
% 81-88, and the eighth rest after the repeat bar completes the 3/8 bar 88 on the way out.
bassoIVsecE = {
  \key f \major
  \override TupletBracket.bracket-visibility = ##f
  \repeat volta 2 {
    a8\ff |
    \showBarNumber
    \barNumberCheck #81
    % The print beams each bar's triplets in sixes. The \vnBeam-tagged settings beam them in threes
    % in the Vn2 part (eighth-note beat groups, bars 81-83); basso-proof.ly strips the tag, so the
    % proof keeps the print's beams.
    \tag #'vnBeam {
      \set Timing.baseMoment = #(ly:make-moment 1/8)
      \set Timing.beatStructure = 1,1,1,1
    }
    \tuplet 3/2 { d'16-. gis( a) } \tuplet 3/2 { f'-. cis'( d') }
      \tuplet 3/2 { a-. e( f) } \tuplet 3/2 { d-. gis,( a,) } |
    % Bars 82-83: the print gives no tuplet numbers.
    \override TupletNumber.stencil = ##f
    \tuplet 3/2 { d'16-. gis( a) } \tuplet 3/2 { f'-. cis'( d') }
      \tuplet 3/2 { a-. e( f) } \tuplet 3/2 { d-.( f d) } |
    \tuplet 6/4 { a,16 cis e a, d f } \tuplet 6/4 { a, e g a, f gis } |
    \revert TupletNumber.stencil
    % The run up to the a' in bar 84 keeps one beam.
    \tag #'vnBeam {
      \set Timing.baseMoment = #(ly:make-moment 1/4)
      \set Timing.beatStructure = 1,1
    }
    \barNumberCheck #84
    \tuplet 6/4 { a,16 cis e a cis' e' } a'8 c\pp |
    f,8 r \tuplet 6/4 { f16 f f f f f } |
    f8 r \tuplet 6/4 { f16 f f f f f } |
    \barNumberCheck #87
    c16 r \tuplet 3/2 { c c c } c16 r \tuplet 3/2 { c c c } |
    \barNumberCheck #88
    f16 r \tuplet 3/2 { c c c } f8
  }
  r8
  \barNumberCheck #89
  r8 c8\pp r c |
  r f, r f, |
  r c r c |
  r f, r f, |
  bes,4\<( a,\!\>) |
  \barNumberCheck #94
  bes,4\p g,8(\> a,16 bes,) |
  a,4\pp a, |
  d4\cresc c\! |
  bes, a,-> |
  bes,4\p g,8(\> a,16 bes,) |
  a,4\pp a, |
  \barNumberCheck #100
  d4. \bar "||"
  \revert TupletBracket.bracket-visibility
}

% Var. V, bars 101-127 (Bb major; pickup rest, repeat with 1./2. endings, then the dying-away
% close with fermata on the last note).
bassoIVsecF = {
  \key bes \major
  r8
  \repeat volta 2 {
    \showBarNumber
    \barNumberCheck #101
    bes,8-.\pp bes-. bes,-. bes-. |
    bes,-. bes-. bes,-. bes-. |
    f, f f, f |
    f, f f, f |
    bes, bes bes, bes |
    bes,8\cresc bes des\!\> des' |
    c8\p c' c c' |
  }
  \alternative {
    { \barNumberCheck #108 f,8 f f, r | }
    { \set Score.currentBarNumber = #108 \barNumberCheck #108 f,8 f f, r | }
  }
  \barNumberCheck #109
  f,8\pp f f, f |
  bes, bes bes, bes |
  aes, aes aes, aes |
  des des' des des' |
  ges, ges ges, ges |
  des des' des des' |
  aes, aes aes, aes |
  des des' des des' |
  ges, ges ges, ges |
  des des' des des' |
  \barNumberCheck #119
  aes, aes aes, aes |
  des8-.( des-. des-. des-.) |
  aes,8-.(\decresc aes,-. aes,-. aes,-.\!) |
  des8-.( des-. des-. des-.) |
  e8-.( e-. e-. e-.) |
  a,8-.( a,-. a,-. a,-.) |
  cis8-.(\dim cis-. cis-. cis-.\!) |
  fis,8-.( fis,-. fis,-. fis,-.) |
  a,8-.( a,-. a,-. a,-.\fermata) \bar "||"
}

% Allegretto, bars 128-156 (D major; eighth-note pulse under the cello solo).
bassoIVsecG = {
  \key d \major
  \tempo "Allegretto"
  \barNumberCheck #128
  d8 r r4 |
  % 129-133: Vn cue "Viol." rest bars.
  R2*5 |
  % 134-135: Viol. cue bars.
  R2 |
  R2 |
  \barNumberCheck #136
  d8\p r d r |
  d r d r |
  a, r a, r |
  a, r a, r |
  \barNumberCheck #140
  d r d r |
  d r d r |
  e r e r |
  a, r a, r |
  % 144-153.
  R2*10 |
  % 154-155: Viol. cue bars.
  R2 |
  R2 |
  \barNumberCheck #156
  a,8 r a, r |
}

% Allegretto close, bars 157-172 (ends on the fermata).
bassoIVsecH = {
  \barNumberCheck #157
  d8 r d r |
  a, r a, r |
  d r d r |
  g, r g, r |
  d r d r |
  a, r a, r |
  d r d r |
  g, r g, r |
  \barNumberCheck #165
  d8 r d r |
  a, r a, r |
  d8_\markup \italic "decresc." r d r |
  d r d r |
  d4-.\pp( d-.) |
  d4-.\dim( d-.\!) |
  d2( |
  d2\fermata) \bar "|."
}

bassoIV = {
  \bassoIVsecA
  \bassoIVsecB
  \bassoIVsecC
  \bassoIVsecD
  \bassoIVsecE
  \bassoIVsecF
  \bassoIVsecG
  \bassoIVsecH
}
