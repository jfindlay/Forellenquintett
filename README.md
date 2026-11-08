# Forellenquintett (D. 667): the double bass part as a Violin II part

Schubert's Piano Quintet in A, D. 667, arranged for piano + string quartet: the double bass part
(*Basso*) becomes a Violin II part, and the other four players read the published parts unchanged.
There is no LilyPond source for this work on IMSLP, so the part is entered by hand from the printed
edition. `Arranging notes.md` holds the premise, the rules and the per-section decision table.

## Layout

```
source/                   INPUT: downloaded scans (git-ignored; see below)
arrangement/              the only hand-written music
  forellenquintett-violin2.ly  main score: one bookpart per movement
  basso-proof.ly          diplomatic Basso (bass clef, written pitch) for proofreading
  global.ily              \vnLift / \vnHigh (octave lift + fold into G3-A5), shared marks, layout
  basso/m1..m5*.ily       LAYER 1: the Basso as printed, in section variables (bassoI..V)
  vn2/m1..m5*.ily         LAYER 2: Violin II built from layer 1; all arranging decisions
Arranging notes.md        premise, rules, decision table (83 sections), review flags
output/                   the PDFs (git-ignored)
build                     ./build [violin2|proof|all] -> output/
```

## Source material

The edition is Bärenreiter 5511 (1975). Download both by hand (IMSLP's reverse-lookup pages accept
the file numbers) and save under `source/`:

- `IMSLP706362-PMLP10129-Schubert_D667_contrabass_part.pdf`, the part being transcribed:
  <https://imslp.org/wiki/Special:ReverseLookup/706362>
- `IMSLP706358-PMLP10129-Schubert_D667_score.pdf`, the full score, for context and for checking
  cue bars: <https://imslp.org/wiki/Special:ReverseLookup/706358>

Both are scans with no usable text layer, and `source/` is git-ignored because the edition is in
copyright. Schubert's music is public domain.

## Method

The Basso is entered in the part's own bass clef at written pitch (layer 1), so each bar can be
proofread against the scan unchanged. Layer 2 (`vn2/`) builds Violin II section by section: each
section is `\vnLift` of the matching Basso section unless the notes record a reason for `\vnHigh`,
a rest or a hand re-voicing. The part prints a bar number at the start of every system; each
movement file anchors on those with `\barNumberCheck`, and a clean compile reports zero warnings.

## Build

Requires LilyPond (2.24.x).

```
./build          # Violin II part: output/Forellenquintett violin II part.pdf
./build proof    # diplomatic Basso: output/Forellenquintett basso proof.pdf
./build all
```

## License

© 2026 Justin Findlay. The arrangement and score are licensed under
[Creative Commons Attribution 4.0 International](LICENSE)
(<https://creativecommons.org/licenses/by/4.0/>). Schubert's music is in the public domain.
The part is adapted from the double bass part of Bärenreiter 5511 (1975), which is in copyright and
is not distributed here (`source/` is git-ignored).
