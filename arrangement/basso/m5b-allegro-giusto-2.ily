\version "2.24.3"
% V. Allegro giusto, 2/4, A major: bars 237-end (the part's page 13 bottom system through p. 15).
% Bar 236 (the D.C. repeat sign) belongs to the first half. Entered as printed: key A major (set by
% the first half); accidentals are the note's actual pitch (F#, C#, G# from the key signature, so
% natural F, C, G are written f, c, g). Cue bars (Pfte. 261-262, Vc. 263-264 and 287-288, Va.
% 439-440) are entered as printed with \bassoCue over the Basso's own rests.
%
% Printed bar numbers: 237-472. The repeat 247-262 is a plain |: ... :| (no alternatives); the
% movement ends with the G.P. bar 472 and the final barline.
%
% Six-quaver bars from 407 on are triplets (the part prints the "3" only in bar 407).

% --- 237-246: pp entry on B, E (staccato quarters), then four rests.
bassoVsecBA = {
  \set Score.currentBarNumber = #237
  \barNumberCheck #237
  R2*2                          % 237-238
  \barNumberCheck #239
  b,4-.\pp b-.                  % 239
  e-. b-.
  b,-. b-.
  e-. b-.                       % 242
  \barNumberCheck #243
  R2*4                          % 243-246
}

% --- 247-262: body of the |: ... :| repeat (wrapped by the assembly).
bassoVsecBB = {
  \barNumberCheck #247
  e4-. b-.                      % 247
  e-. e,-.                      % 248
  a,8->[( cis) cis-. cis-.]     % 249
  \barNumberCheck #250
  cis4( e8) r                   % 250
  b,4-. b-.                     % 251
  b,-. b-.                      % 252
  gis,8->[( b,) b,-. b,-.]      % 253
  b,4( e8) r                    % 254
  \barNumberCheck #255
  R2*6                          % 255-260
  % 261-262: Pfte. cue (treble clef, right hand), stems and slurs up as printed.
  \bassoCue "treble"
    {
      \stemUp \slurUp
      <b' gis''>8^>[(\pfteMark <a' fis''>) <a' fis''>^. <a' fis''>^.] |  % 261
      <a' fis''>4( <gis' e''>8) r8                                      % 262
    }
    { R2 | R2 }
}

% --- 263-272: second statement of the opening (Vc. cue in 263-264), closed by a double bar.
bassoVsecBC = {
  \barNumberCheck #263
  % 263-264: Vc. cue, bass clef (no clef sign printed): accented B tied across the barline.
  \bassoCue "bass"
    { b2^>^\vcMark~ | b2 }
    { R2 | R2 }
  \barNumberCheck #265
  b,4-.\pp b-.                  % 265
  e-. b-.
  b,-. b-.
  e-. b-.                       % 268
  \barNumberCheck #269
  R2*4                          % 269-272
  \bar "||"
}

% --- 273-288: ff figure on E, answering quarters, fz D tied into G staccati, six rests, Vc. cue.
bassoVsecBD = {
  \barNumberCheck #273
  e8.\ff( fis32 e d!8) c8-.     % 273
  b,4 b,                        % 274
  \barNumberCheck #275
  b4 b                          % 275
  e d->\fz~                     % 276
  d8[ g-. g-. g-.]              % 277
  g4 fis                        % 278
  g d                           % 279
  g r                           % 280
  \barNumberCheck #281
  R2*6                          % 281-286
  \barNumberCheck #287
  % 287-288: Vc. cue, bass clef, stems up as printed (D4 leaps down to D3, then G natural).
  \bassoCue "bass"
    { \stemUp d'4\vcMark d | g r }
    { R2 | R2 }
}

% --- 289-301: the ff figure and answer again, then five rests.
bassoVsecBE = {
  \barNumberCheck #289
  e8.\ff( fis32 e d!8) c8-.     % 289
  b,4 b,                        % 290
  b4 b                          % 291
  e d->\fz~                     % 292
  d8[ g-. g-. g-.]              % 293
  g4 fis                        % 294
  g d                           % 295
  g r                           % 296
  \barNumberCheck #297
  R2*5                          % 297-301
}

% --- 302-319: fp accented figures (C, A), diminuendo to ppp, long slurred half notes.
bassoVsecBF = {
  \barNumberCheck #302
  r4 c'4->\fp~                  % 302
  c'8[ a-.( b-. c'-.)]          % 303
  b4 r                          % 304
  R2                            % 305
  r4 a->\fp~                    % 306
  a8[ f-.( g-. a-.)]            % 307
  g4 r                          % 308
  R2                            % 309
  \barNumberCheck #310
  r4 f->\pp^\markup \italic "diminuendo" ~  % 310
  f8[ d-.( e-. f-.)]            % 311
  e4 r                          % 312
  R2                            % 313
  r4 d->\ppp~                   % 314
  d8[ b,-.( c-. d-.)]           % 315
  c2(                           % 316
  d                             % 317
  e~                            % 318
  e)                            % 319
}

% --- 320-343: dotted figure A (mf), then the same without staccato, decresc. towards G# major.
bassoVsecBG = {
  \barNumberCheck #320
  a,4-.\mf cis8.[ e16-.]        % 320
  a4 r                          % 321
  a,4-. cis8.[ e16-.]           % 322
  a4 r                          % 323
  e4-. gis8.[-. b16-.]          % 324
  e'4 r                         % 325
  e4-. gis8.[-. b16-.]          % 326
  e'4 r                         % 327
  \barNumberCheck #328
  a,4 cis8.[ e16]               % 328
  a4 r                          % 329
  a,4 cis8.[ e16]               % 330
  a4 r                          % 331
  e4 gis8.[ b16]                % 332
  e'4 r                         % 333
  e4 gis8.[ b16]                % 334
  e'4 r                         % 335
  \barNumberCheck #336
  a,4 cis8.[ e16]               % 336
  a4 r                          % 337
  a,4 cis8.[ e16]               % 338
  a4 r                          % 339
  gis,4_\markup \italic "decresc." cis8.[ e16]  % 340
  gis4 r                        % 341
  gis,4 bis,8.[ dis16]          % 342
  gis4 r                        % 343
}

% --- 344-359: pp repeated C# then D figure; the part prints bar-counting numbers 1-8 and 1-7.
bassoVsecBH = {
  \barNumberCheck #344
  cis4\pp cis8^\markup \small "1" cis          % 344
  cis4_> cis8^\markup \small "2" cis           % 345
  cis4 cis8^\markup \small "3" cis             % 346
  cis4_> cis8^\markup \small "4" cis           % 347
  cis4 cis8^\markup \small "5" cis             % 348
  cis4_> cis8^\markup \small "6" cis           % 349
  cis4 cis8^\markup \small "7" cis             % 350
  cis4 cis8^\markup \small "8" cis             % 351
  \barNumberCheck #352
  cis8[( d) d-. d-.]            % 352
  d4-> d8^\markup \small "1" d                 % 353
  d4 d8^\markup \small "2" d                   % 354
  d4-> d8^\markup \small "3" d                 % 355
  d4 d8^\markup \small "4" d                   % 356
  d4-> d8^\markup \small "5" d                 % 357
  d4 d8^\markup \small "6" d                   % 358
  d4 d8^\markup \small "7" d                   % 359
}

% --- 360-370: last count (8), then the chromatic climb D to A in slurred pairs, back to E.
bassoVsecBI = {
  \barNumberCheck #360
  d4 d8^\markup \small "8" d                   % 360
  d8->[( dis) dis-. dis-.]      % 361
  dis8[_\markup \italic "cresc."( e) e-. e-.]  % 362
  e8[( f) f-. f-.]              % 363
  f8[( fis) fis-. fis-.]        % 364
  fis8[( g) g-. g-.]            % 365
  g8[( gis) gis-. gis-.]        % 366
  \barNumberCheck #367
  gis8[( a) a-. a-.]            % 367
  a8[_\markup \italic "decresc."( d) d-. d-.]  % 368
  d8[( e) e-. e-.]              % 369
  e4 e8 e                       % 370
}

% --- 371-390: A pedal in tied half notes (counts 1-16, tied through), then four rests.
bassoVsecBJ = {
  \barNumberCheck #371
  a,2\pp^\markup \small "1"~                   % 371
  a,2^\markup \small "2"~
  a,2^\markup \small "3"~
  a,2^\markup \small "4"~
  a,2^\markup \small "5"~
  a,2^\markup \small "6"~                      % 376
  \barNumberCheck #377
  a,2^\markup \small "7"~                      % 377
  a,2^\markup \small "8"~
  a,2^\markup \small "9"~
  a,2^\markup \small "10"~
  a,2^\markup \small "11"~
  a,2^\markup \small "12"~
  a,2^\markup \small "13"~
  a,2^\markup \small "14"~
  a,2^\markup \small "15"~
  a,2^\markup \small "16"                      % 386
  \barNumberCheck #387
  R2*4                          % 387-390
}

% --- 391-400: F half notes ff / F-Bb-G arpeggios p, with single rest bars between.
bassoVsecBK = {
  \barNumberCheck #391
  f,2->\ff                      % 391
  R2                            % 392
  r4 f,\p(                      % 393
  bes, g)                       % 394
  f2\ff                         % 395
  R2                            % 396
  r4 f,\p(                      % 397
  bes, g)                       % 398
  f4 r                          % 399
  R2                            % 400
}

% --- 401-408: rising arpeggios A-C-F and G#-B-E (hairpins), E half note, pp triplet quavers on A.
bassoVsecBL = {
  \barNumberCheck #401
  r4 a,\f\<(                    % 401
  c f)\!                        % 402
  e2->                          % 403
  R2                            % 404
  r4 gis\<(                     % 405
  b\! e)                        % 406
  \barNumberCheck #407
  % restore the default tuplet number: an earlier section may have hidden it
  \override TupletNumber.stencil = #ly:tuplet-number::print
  \tuplet 3/2 { a,8\pp a, a, } \tuplet 3/2 { a, a, a, }  % 407: the only bar with printed "3"s
  \omit TupletNumber
  \tuplet 3/2 { a,8 a, a, } \tuplet 3/2 { a, a, a, }     % 408
}

% --- 409-430: triplet-quaver pedal figure A, F#, B-C#-D, E, A-E; f from 418; ends A quarter.
bassoVsecBM = {
  \barNumberCheck #409
  \omit TupletNumber
  \tuplet 3/2 { a,8 a, a, } \tuplet 3/2 { a, a, a, }     % 409
  \tuplet 3/2 { a,8 a, a, } \tuplet 3/2 { a, a, a, }     % 410
  \tuplet 3/2 { fis,8 fis, fis, } \tuplet 3/2 { fis, fis, fis, }  % 411
  \tuplet 3/2 { fis,8 fis, fis, } \tuplet 3/2 { fis, fis, fis, }  % 412
  \tuplet 3/2 { fis,8 fis, fis, } \tuplet 3/2 { fis, fis, fis, }  % 413
  \tuplet 3/2 { fis,8 fis, fis, } \tuplet 3/2 { fis, fis, fis, }  % 414
  \barNumberCheck #415
  \tuplet 3/2 { b,8 b, b, } \tuplet 3/2 { cis cis d }    % 415
  \tuplet 3/2 { e8 e e } \tuplet 3/2 { e e e }           % 416
  \tuplet 3/2 { a8 a a } \tuplet 3/2 { e e e }           % 417
  \tuplet 3/2 { a,8\f a, a, } \tuplet 3/2 { a, a, a, }   % 418
  \tuplet 3/2 { a,8 a, a, } \tuplet 3/2 { a, a, a, }     % 419
  \tuplet 3/2 { a,8 a, a, } \tuplet 3/2 { a, a, a, }     % 420
  \barNumberCheck #421
  \tuplet 3/2 { a,8 a, a, } \tuplet 3/2 { a, a, a, }     % 421
  \tuplet 3/2 { a,8 a, a, } \tuplet 3/2 { a, a, a, }     % 422
  \tuplet 3/2 { fis,8 fis, fis, } \tuplet 3/2 { fis, fis, fis, }  % 423
  \tuplet 3/2 { fis,8 fis, fis, } \tuplet 3/2 { fis, fis, fis, }  % 424
  \tuplet 3/2 { fis,8 fis, fis, } \tuplet 3/2 { fis, fis, fis, }  % 425
  \tuplet 3/2 { fis,8 fis, fis, } \tuplet 3/2 { fis, fis, fis, }  % 426
  \barNumberCheck #427
  \tuplet 3/2 { b,8 b, b, } \tuplet 3/2 { cis cis d }    % 427
  \tuplet 3/2 { e8 e e } \tuplet 3/2 { e e e }           % 428
  \tuplet 3/2 { a8 a a } \tuplet 3/2 { e e e }           % 429
  a,4 r                                                  % 430
}

% --- 431-440: eight rests, then the Va. cue bars (439-440, two triplet groups per bar).
bassoVsecBN = {
  \barNumberCheck #431
  R2*8                          % 431-438
  % 439-440: Va. cue, bass clef (no clef sign printed), stems and slurs up as printed.
  \bassoCue "bass"
    {
      \stemUp \slurUp \omit TupletNumber \omit TupletBracket \override Rest.direction = #UP
      % 439: the print's slur starts over the second note, not the accented first one
      \tuplet 3/2 { r8 cis'^>\vaMark[ b(] } \tuplet 3/2 { a[ gis fis)] } |  % 439
      \tuplet 3/2 { e8[( fis) e^.] } \tuplet 3/2 { e[( fis) e^.] }          % 440
    }
    { R2 | R2 }
}

% --- 441-460: A, G# half notes slurred to quarters; syncopated A, B, E; two G.P. bars, four rests.
bassoVsecBO = {
  \barNumberCheck #441
  a,2->\p(                      % 441
  b,4) r                        % 442
  gis,2->(                      % 443
  a,4) r                        % 444
  d2(                           % 445
  dis->)                        % 446
  e2(                           % 447
  e->)                          % 448
  a,8\ff a,4 a,8~               % 449
  a,4 r                         % 450
  \barNumberCheck #451
  b,8 b,4 b,8~                  % 451
  b,4 r                         % 452
  e8 e4 e8~                     % 453
  e4 r                          % 454
  R2^\markup "G.P."             % 455
  R2^\markup "G.P."             % 456
  R2*4                          % 457-460
}

% --- 461-472: F, F#, E tied; A octave figure ff; quarters; final G.P. bar and barline.
bassoVsecBP = {
  \barNumberCheck #461
  f2\p\<(                       % 461
  fis)                          % 462
  e_>\!~                        % 463
  \barNumberCheck #464
  e2                            % 464
  a,8.\ff[ a16] a4->            % 465
  a,8.[ a16] a4->               % 466
  a,8.[ a16] a4->               % 467
  a,8.[ a16] a4->               % 468
  a,4 r                         % 469
  a r                           % 470
  a, r                          % 471
  \barNumberCheck #472
  R2^\markup "G.P."             % 472
  \bar "|."
}

% The whole second half: the |: 247-262 :| repeat has no alternative endings.
bassoVsecond = {
  \bassoVsecBA
  \repeat volta 2 { \bassoVsecBB }
  \bassoVsecBC
  \bassoVsecBD
  \bassoVsecBE
  \bassoVsecBF
  \bassoVsecBG
  \bassoVsecBH
  \bassoVsecBI
  \bassoVsecBJ
  \bassoVsecBK
  \bassoVsecBL
  \bassoVsecBM
  \bassoVsecBN
  \bassoVsecBO
  \bassoVsecBP
}
