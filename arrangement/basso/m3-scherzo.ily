\version "2.24.3"
% Movement III: Scherzo (Presto, 3/4, A major) with Trio (D major) and the printed
% "Scherzo da capo, senza ripetizione" direction. Basso as printed (Bärenreiter part, printed
% pp. 8-9), bass clef, written pitch.
%
% Bar numbering as printed: the Scherzo opens with a PICKUP (r8 r4, three eighths) counted as bar
% 0; bar 1 is the first A. The pickup is the second half of a bar that is split across the
% repeat: bar 42 ends "c4 r8 |:" and "r8 r4" opens the repeated section, so the first ending
% (a4 r8) plus the repeat sign leads back to r8 r4 in the same way. The second ending (a4 r4,
% two beats) is completed by the one-beat pickup of the Trio. The Trio restarts the numbering at
% 1 with a one-beat pickup (cue note and rest); its first half ends mid-bar 16 (a4 r4 :|: r4)
% and its endings (r4 r4 / r4 r8) are completed by the pickups of the Trio and of the Scherzo
% da capo respectively.
%
% Cues: the Scherzo prints none. The Trio prints Viol. cues (treble clef, no 8va, entered with
% \bassoCue) in the pickup and bars 1-4 and in bars 62-65 with both endings. The cue notes are
% in \voiceOne (stems, slurs and ties up, as printed) and the whole-bar rests are the Basso's.
% Beaming: the movement has no beamed eighths; only the sixteenth pair after bar 65 is beamed.

% Combined dynamics printed as two marks side by side.
fsfIII = _\markup { \dynamic f \hspace #0.3 \dynamic sf }
ffsfIII = _\markup { \dynamic ff \hspace #0.3 \dynamic sf }
fpAccIII = _\markup { \dynamic fp \hspace #0.3 \musicglyph "scripts.sforzato" }

% --- Scherzo ---------------------------------------------------------------------------------

% Bars 0-10: opening A theme; pickup r8 r4 = bar 0.
bassoIIIsecA = {
  \key a \major
  \time 3/4
  \tempo "Presto"
  \partial 4.
  r8 r4 |
  \barNumberCheck #1
  a4\f r r | a r r | a-. a-. a-. | a r r |
  R2.*4 |  % bars 5-8
  \barNumberCheck #9
  a4-.\fsfIII a-. gis-. |
  fis4-.\sf fis-. ais-. |
  \barNumberCheck #11
}

% Bars 11-26: B-E echo, ff A returns.
bassoIIIsecB = {
  b4-.\sf b-. b,-. | e-. r r |
  b4-.\fp b-. b-. | e-. r r |
  b4-.\fp b-. b-. | e-. r r |
  \barNumberCheck #17
  e4-.\fp e-. e-. | e4 r r |
  \barNumberCheck #19
  a4\ff r r | a r r | a-. a-. a-. | a r r |
  R2.*4 |  % bars 23-26
  \barNumberCheck #27
}

% Bars 27-42: chromatic descent in F natural / C natural; ends with c4 r8 (three eighths), the
% first half of bar 42; the pickup r8 r4 of the next section completes it.
bassoIIIsecC = {
  f4-.\fp f-. f-. | e-. r r |
  f4-.\fp f-. f-. |
  \barNumberCheck #30
  e4-. r r |
  c'4-.\fsfIII c'-. b-. |
  a4-.\sf a-. g-. |
  f4-.\sf f-. e-. |
  d4-.\sf d-. fis-. |
  g4-.\sf g-. g,-. |
  c4-. r r |
  \barNumberCheck #37
  g4-.\fp g-. g-. |
  \barNumberCheck #38
  c'4-. r r |
  g4-.\fp g-. g-. |
  c'4-. r r |
  c4-.\f c-. c-. |
  c4 r8  % bar 42, first three eighths (pickup r8 r4 completes the bar)
}

% Bars 42-58: pickup r8 r4 completes bar 42; long tied C and D, then repeated staccato figures.
bassoIIIsecD = {
  r8 r4 |
  \barNumberCheck #43
  c2.\fpAccIII~ | c2.\p~ | c2.~ | c2. |
  \barNumberCheck #47
  c4-.\f c-. r | c-. c-. r | c-. c-. r | c-. c-. ees-. |
  d2.->\fp~ | d2.\p~ | d2.~ | d2. |
  d4-.\f d-. r |
  \barNumberCheck #56
  d4-. d-. r | d-. d-. r | d4\fz d d |
  \barNumberCheck #59
}

% Bars 59-79: rests and sf bursts (the Scherzo prints no cues), chromatic G, closing ff.
bassoIIIsecE = {
  R2.*3 |  % bars 59-61
  e4\sf e e |
  R2.*3 |  % bars 63-65
  a,4\sf a, a, |
  R2.*3 |  % bars 67-69
  \barNumberCheck #70
  d4\sf d d |
  R2.*3 |  % bars 71-73
  g,4\sf g, g, |
  gis,!4-.\pp gis!-. gis-. |  % printed with courtesy sharps after the naturals of bar 74
  a4-. r r |
  d4-. d-. d-. |
  e4-. r r |
  e4\ff e e |
  \barNumberCheck #80
}

% Bars 80-88: return of the A theme, then four bars of rest.
bassoIIIsecF = {
  e4 r r | a r r | a r r | a-. a-. a-. | a r r |
  R2.*4 |  % bars 85-88
  \barNumberCheck #89
}

% Bars 89-92: D-C# phrase (written D4; the highest notes of the movement).
bassoIIIsecG = {
  d'4-.\fp d'-. d'-. | cis'-. r r |
  \barNumberCheck #91
  d'4-.\fp d'-. d'-. | cis'-. r r |
  \barNumberCheck #93
}

% Bars 93-103: sf descent, closing ostinato.
bassoIIIsecH = {
  a4-.\ffsfIII a-. gis-. |
  fis4-.\sf fis-. e-. |
  d4-.\sf d-. cis-. |
  b,4-.\sf b,-. dis-. |
  e4-.\sf e-. e-. |
  \barNumberCheck #98
  a,4-. r r | e-.\fp e-. e-. | a-. r r | e-.\fp e-. e-. | a-. r r |
  a,4-.\ff a,-. a,-. |
  \barNumberCheck #104
}

% First ending (bar 104): a4 r8, three eighths; the repeat leads back to pickup r8 r4.
bassoIIIsecI = {
  \partial 4.
  a,4 r8 |
}

% Second ending (bar 104): a4 r4, two beats; the Trio's one-beat pickup completes the bar.
bassoIIIsecJ = {
  \set Score.currentBarNumber = #104
  \partial 2
  \barNumberCheck #104
  a,4 r4 \bar "|."
}

% --- Trio (D major; bar numbers restart at 1) -----------------------------------------------

% Trio pickup and bars 1-16. The Viol. cue (treble clef, stems up, slurs above) runs from the
% pickup through bar 4 over the Basso's quarter rest and four whole-bar rests. The part has an
% unprinted start-of-section repeat here; the first half ends with a4 r4 (two beats) and the
% repeat sign, with a r4 after it completing bar 16.
bassoIIIsecK = {
  \key d \major
  \set Score.currentBarNumber = #0
  \partial 4
  \bassoCue "treble"
    { \voiceOne fis''4-.\violMark |
      \barNumberCheck #1
      fis''2( e''4) | e''2( d''4) | d''2( a'4) | a'2 r4 | }
    { r4 | R2. | R2. | R2. | R2. | }
  \barNumberCheck #5
  a2.\p~ | a2. | a2.->( | d4) r r |
  R2.*4 |  % bars 9-12
  \barNumberCheck #13
  e2.~ | e2. | e2.->( | a,4) r4  % bar 16 begins; r4 after the repeat completes it
}

% Bars 16 (r4) - 24: second half begins with one beat of rest, then pp phrase.
bassoIIIsecL = {
  r4 |  % completes bar 16
  \barNumberCheck #17
  R2.*3 |  % bars 17-19
  r4 r d'-.\pp |
  d'2( ais4) | ais2( b4) | b r r |
  R2. |  % bar 24
  \barNumberCheck #25
}

% Bars 25-35: pedal G counted 1-7, then Bb/F slurred figures; dim.
bassoIIIsecM = {
  g2.\pp~^\markup \fontsize #-2 "1" | g2.~^\markup \fontsize #-2 "2" |
  g2.~^\markup \fontsize #-2 "3" | g2.~^\markup \fontsize #-2 "4" |
  g2.~^\markup \fontsize #-2 "5" | g2.~^\markup \fontsize #-2 "6" |
  g2.~^\markup \fontsize #-2 "7" _\markup \italic "dim." |
  g2( bes4) | bes2.( | f2 bes4) | a2.( |
  \barNumberCheck #36
}

% Bars 36-49: same figure again, ff Bb and A repeated, G.P.
bassoIIIsecN = {
  f4 g a) | bes2.( | f2 bes4) | a2.( | f4 g a) |
  bes4\ff r r | bes r r | bes r r | bes r r |
  \barNumberCheck #45
  a4 r r |
  \barNumberCheck #46
  a r r | a r r | a r r |
  R2.^\markup \italic "G.P." |  % bar 49
}

% Bars 50-65: D-G slurred phrase, A staccato, rests, then the Viol. cue of bars 62-65.
bassoIIIsecO = {
  r4 r d-.\p |
  d2( fis4) | fis2( b4) | b2( g4) | g2.-> |
  a4-. a-. a-. |
  \barNumberCheck #56
  a4-. a-. a-. | a-. a-. a-. | a-. r r |
  R2.*3 |  % bars 59-61
  % Bars 62-65: Viol. cue (printed pitch, no 8va): D6 half slurred to B5, then a trilled A5
  % tied through three bars with the G#5-A5 sixteenth pair closing bar 65; four whole-bar rests.
  \bassoCue "treble"
    { \voiceOne
      d'''2->\violMark( b''4) | a''2.\startTrillSpan~ | a''2.~ |
      \afterGrace a''2. { gis''16\stopTrillSpan[ a''] } | }
    { R2. | R2. | R2. | R2. | }
  \barNumberCheck #66
}

% First ending (bar 66): Viol. cue D5 and a quarter rest over two beats of Basso rest; the pickup
% r4 of the Trio completes the bar.
bassoIIIsecP = {
  \partial 2
  \bassoCue "treble" { \voiceOne d''4 r4 } { r4 r4 } |
}

% Second ending (bar 66): Viol. cue D5 and an eighth rest over 1.5 beats of Basso rest, completed
% by the Scherzo da capo's pickup.
bassoIIIsecQ = {
  \set Score.currentBarNumber = #66
  \partial 4.
  \barNumberCheck #66
  \bassoCue "treble" { \voiceOne d''4 r8 } { r4 r8_\markup \italic \right-column { "Scherzo da capo," "senza ripetizione" } }
  \bar "|."
}

bassoIII = {
  \bassoIIIsecA
  \bassoIIIsecB
  \bassoIIIsecC
  \repeat volta 2 {
    \bassoIIIsecD
    \bassoIIIsecE
    \bassoIIIsecF
    \bassoIIIsecG
    \bassoIIIsecH
  }
  \alternative {
    { \bassoIIIsecI }
    { \bassoIIIsecJ }
  }
  \repeat volta 2 { \bassoIIIsecK }
  \repeat volta 2 {
    \bassoIIIsecL
    \bassoIIIsecM
    \bassoIIIsecN
    \bassoIIIsecO
  }
  \alternative {
    { \bassoIIIsecP }
    { \bassoIIIsecQ }
  }
}
