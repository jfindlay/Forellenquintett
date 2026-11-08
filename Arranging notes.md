# Arranging notes: Violin II from the double bass part

## Premise

Schubert's D. 667 is scored Vn, Va, Vc, Kb, Pf. This arrangement is for piano + string quartet
(Vn1, Vn2, Va, Vc). Vn1, Va, Vc and Pf read the published urtext unchanged; the only product of
this project is a **Violin II part derived from the *Basso***, which replaces the missing double
bass. Nothing here edits the other four parts, so every solution has to work against them as
printed.

Pitch facts that drive everything: the bass sounds an octave below written pitch, the cello plays
at written pitch, and the violin's lowest note is G3. Vn2 therefore can never be the harmonic
bass. Lifted one octave from the Basso's written pitch, it lands exactly one octave above the
cello wherever the two share a line, and two octaves above the bass's sounding pitch. At best it
reproduces the bass line's *rhythm, articulation, pizzicati and thematic exchanges* as an inner
voice, in the viola's register. What the bass contributed as 16-foot weight is not replaced; the
cello and the piano left hand carry it.

## Layers

- `arrangement/basso/`: the *Basso* as printed (bass clef, written pitch), one file per movement,
  split into section variables. Proofread against the scan via `./build proof`; no artistic
  decisions.
- `arrangement/vn2/`: the Violin II part, built from those sections. All decisions live here and
  are recorded below.

## Rules (first pass, settled)

1. **Fidelity first.** Vn2 plays every sounding bar of the Basso with its printed rhythm,
   articulation, slurs, pizz./arco, dynamics and accents. Departures need one of the reasons below.
2. **Default register: `\vnLift`.** One octave above written pitch, which is one octave above the
   cello where the two share a line. This is the lowest register the violin can reach while
   keeping the line's pitch classes, so it is also the most bass-like one. Any note that would
   fall below G3 is folded up an octave (written E2 and F#2 become E4 and F#4). The ceiling is A5.
3. **`\vnHigh` for a whole section** (two octaves above written, folded under A5) when a section
   is dominated by notes below written G2, or alternates across the fold boundary (A-E pedal
   figures), so that folding would turn a bass line into a leaping one. Compare the section's
   contour in both registers before choosing.
4. **Collision check.** Compare the lifted line with Vn1, Va, Vc and the piano in the full score.
   If Vn2 would sit above Vn1's line, or sit a unison or second against a sustained melodic note
   for a bar or more, try `\vnHigh`; failing that, rest the passage or hand-re-voice it (rule 7).
5. **Cue bars rest.** Where the printed Basso is silent and cues `Pfte.`, `Viol.`, `Vc.` or `Va.`,
   Vn2 rests. Cue notes are not entered.
6. **Pedals and ties stay as printed.** A long tied note is kept as a tie; the violinist
   re-bows as needed. Re-articulate only where a tie runs past eight bars, and record it.
7. **Hand re-voicing is allowed** for a passage that no lift makes playable or audible: the
   re-voiced Vn2 bars are entered by hand in `vn2/` (never in `basso/`) and justified in the
   table. Typical reasons: double-stop-sized chords the violin cannot play, a leaping fold, a
   figure that is only effective at pitch.
8. **Structure as printed.** Repeats, voltas, D.C., fermatas and the part's bar numbering are
   reproduced; each section starts and ends on a `\barNumberCheck`.
9. **Dynamics are the Basso's, read as ensemble levels** (the first page of the part says so):
   blend under the cello rather than project. No dynamic is rewritten in the notes.

## Decision table

One row per section (a phrase or episode, not a bar), with the bars as printed in the part.
"Vn2" is one of: `lift` (rule 2), `high` (rule 3), `rest` (rule 4/5), `hand` (rule 7).

| Mvt | Bars | Basso does | Vc / Pf LH do | Vn2 | Why |
|-----|------|------------|---------------|-----|-----|
| I | 1-22 | A2 pedal tied for 10 bars (ff> p pp), F2 pedal tied for 8 bars (pp), then an F quarter-half-quarter figure under cresc. with an F3 pickup into bar 23 | Vc: A2 at bar 1, then slurred fragments at A3-C#4 over the pedal and rising triplets in 19-22; Pf LH: A then F pedal octaves | high | The pedals cross the fold (F2 is below G2); A4 then F4 keeps the A-to-F drop (plain lift would put the A pedal on A3 in the cello's melodic range), and bars 11-22 are lifted so F2 and F3 both land on F4; ties kept as printed |
| I | 23-51 | E whole-note accents (f, ff), then pizz./arco quarter-note dialogue (A-E-C#, E-B-G#, A-C#-A, D-A pulses) answering the tutti, G#-D#-E cadence and a rest bar | Vc: slurred or staccato quavers at A3-E4 with the viola, Vn1 has the tune; Pf LH: chords on the tutti downbeats, silent under the pizz. bars | lift | The pizz. and arco quarter notes read as the bass of the quaver tutti and stay under Vn1; written E2 (bars 31, 44) folds to E4 as a unison, but bar 43 alone goes up two octaves (E4-G#4-B4) because the rising arpeggio would fold to E4-G#3-B3 |
| I | 52-63 | Dim-7 triplet quaver arpeggio C-D#-F#-A-C (52), then E, F-F# (dotted half, slurred), G, G, G#, A-D, E, G, G#, A/A, B/B whole and half notes with fp, decresc. and ff-fz | Vc: the same triplet figure at pitch in 52, then sustained notes a sixth to an octave above the bass (slurred); Pf LH: block chords and octave bass notes | lift | Vn2 doubles the cello's triplets an octave higher in 52 and then holds the bass notes in the viola's register, none of them below G3 |
| I | 64-90 | E-major crotchets (E-G#-B, B-B2, A-A#-B-F#), E-minor colour (G natural, 71-84, B2 tied wholes 73-74), p and dim., six bars rest (85-90) | Vc: long cantabile notes above the bass (bars 64-84) while the viola plays off-beat chords; Pf LH: quaver arpeggios and low octaves on the same bass notes | lift | The crotchet pulses give the missing bass beat and sit under Vn1's tune; F#2 in bar 72 folds to F#4 (one unison), nothing else leaves the register |
| I | 91-109 | Rest with Pfte./Viol. cue (91-93), then B crotchets, E-E-G#, A-B-C#-C, B-B-C# (pp), E whole tied for 6 bars, C whole tied for 4 bars | Vc: slurred answers and long notes above the bass; Pf LH: quaver arpeggios (91-98), then octave pedals under sixteenths | lift | The three cue bars rest (rule 5); the rest is lifted unchanged, and the E4 and C4 pedals stay tied as printed (6 and 4 bars, under the limit) as a quiet inner drone beside the sustained viola and cello |
| I | 110-124 | B crotchet-minim-crotchet pedal tied bar to bar (cresc.), then ff/p alternating E and B crotchets, ending E-B, C#-G#, A-E under f/p | Vc: ff dotted chord figures with the viola and Vn1 (114-124), sustained halves above (110-113); Pf LH: tremolo-like sixteenths | lift | The crotchets are the bass of the dotted tutti and do not clash with the chord tones; C#5 in bar 123 is the highest note and stays below A5 |
| I | 125-146 | Staccato quaver figures C#-D#-E, A-B-E, F#-G#-A, D-E-A, B sixteenth figures (129-131), repeated B (132), G#-A-A# (134), D-A slurred wholes (136-139), E/A/B/B dotted figures with accents, E-E2 to the repeat | Vc: quaver figures with the bass (125-135), slurred wholes (136-139), dotted tutti rhythm (141-146); Pf LH: sixteenth figuration and low octaves | lift | Rhythm, slurs and accents are kept; bar 146 E3-E2 becomes E4-E4 (E2 folds); the repeat sign after 146 is entered as printed |
| I | 147-164 | Two rests, then dotted C-B-C pedal figures (pp, bars 149-157), C crotchet, rests with the Pfte. cue (158-164) | Vc: dotted figure on the same rhythm in unison or above the bass (149-163); Pf LH silent to bar 164 | lift | The dotted pedal notes are the bass of a quiet cello and viola dotted figure and sit as C4/B3 below it; rests where the cue bars are |
| I | 165-180 | B-flat pedal in halves (pp) with A, E-flat, C-flat, F, G, E-flat answers under long slurs, then dotted F/F, B-flat, D, G figures (171-180) with dim. | Vc: dotted pedal-note figure above the bass (167-180); Pf LH: slurred quavers (167-170) then dotted chords and low octaves | lift | B-flat3 pedal stays below the dotted cello figure; F2 in bars 171-172 folds to F4 (the printed octave bounce becomes a repeat of F4), not worth a move to high |
| I | 181-194 | E-flat major: triplet line with tied accented B-flat/A-flat/C starts (181-188), dotted-rhythm quaver and sixteenth dialogue (189-193), C-flat rest bar (194), all under f and cresc. | Vc: exactly the same triplet line at pitch (181-188), then A-flat/E-flat dotted figures (189-193); Pf LH: E-flat pedal and arpeggios | lift | Vn2 doubles the cello's triplet line an octave above it, which is the best use of the part; F2 (183, 185) folds to F4, and the line stays under Vn1's long notes |
| I | 195-209 | C major: B, B, C, C, C, D-flat, C#, C# crotchet pulses, then seven bars of A pedal pulses under dim. | Vc: repeated quavers in the viola's register with accents; Pf LH: rests, then low octaves (203-209) | lift | Crotchet pulses are the bass of the quaver cello and viola pattern; everything lifts to B3 or above, nothing below G3 |
| I | 210-225 | D-major recapitulation: pizz./arco dialogue D-A-F#, D-D, F#-D-F#, then A-E-C#, A-A, A-C#-A, followed by D, G natural, D, G#-A pulses (cresc.) | Vc: slurred or staccato quavers with the viola as in bars 28-45; Pf LH: chords on the downbeats | lift | Same texture and treatment as bars 23-51: pizz./arco pulses an octave above the cello's quavers; D5 in bars 211 and 212 is the top note |
| I | 226-236 | Pizz./arco dialogue continued (D-F#-D, A-C#-E, A-C#-A), D, G2, D and G2-G pulses with f/p and fz, rest bar | Vc: quavers with the viola as before; Pf LH: downbeat chords, rests in the pizz. bars | lift | G2 lifts to exactly G3 and stays playable; the octave jump G2-G3 in bar 235 (G3-G4 after lift) is kept |
| I | 237-248 | Dim-7 triplets F-G#-B-D-F (p cresc.), A whole, B-flat dotted half to B natural, C whole twice, C#-D-G-A-C-C#-D-E pedals under decresc., fp/ff/p | Vc: the same triplets at pitch in 237, then sustained notes above the bass; Pf LH: block chords and octave pedals | lift | Lift in 238-248 as in 52-63; bar 237 alone goes up two octaves (F4-F5) because F2 would fold to F4 above the G#3 it slurs into |
| I | 249-278 | A/C#, E/E2, A/C#, E/E2 crotchet pulses, D-D#, E-B, E-C natural, B-B, E whole tied (decresc.), A-C, E-E2, A-C, E-E2, A-G, C-F, G-G, G#-A-D, E-E, A, then six bars rest and a three-bar Pfte./Viol. cue | Vc: long solo notes above the bass (249-269), rests from 270; viola plays off-beat chords, Pf LH quaver arpeggios | lift | Same as 64-90; E2 (250-252, 261-263) and F2 (265) fold to E4 and F4, which turns the printed octave drops into repeats and one upward leap in 265, acceptable for a pulse line |
| I | 279-293 | Second theme tail in A: E-E-E, A-A-C#, D-E, F#-F natural, E-E-F#, D-D-E, then ff and p/f alternating A and E crotchets | Vc: the tune above the bass in 279-284, then ff dotted chord figures with the viola (285-293); Pf LH: block chords, then sixteenth figuration | lift | The crotchets are the bass of the tune and of the tutti dotted figure and sit an octave above the cello's chord notes |
| I | 294-317 | F#-C#, D-A, F#-G#-A, D-E-A, B-C#-D, G-A-D quaver figures, repeated E semiquaver figures (300-304), C#-D-D# (305), G-D wholes (307-310), then the A-D-E dotted coda with accents and a final A-A2 | Vc: plays the same quaver figures in unison (294-299) and the dotted coda with the viola; Pf LH: sixteenth figuration | lift | Vn2 doubles the cello an octave above in 294-299 and again in the coda; E2 (311) folds to E4 and E5 (313-316) is the highest note |
| II | 1-23 | F major: F-E-C theme bass (tied F dotted halves, eighths with rests), hairpins, then fp quarters F-Eb-D-C#-C# | Vc doubles the bass and adds the tune above it (bars 1, 4, 8, 12), then rising staccato arpeggios from the bass note (19-23); Pf has the theme in both hands | lift | Vn2 sits an octave above the cello in the viola register and Vn1 is silent to bar 10 and above afterwards; only bar 10 (written F2 folds to F4) and the first eighth of bars 19-23 (Vn1 starts below Vn2) deviate |
| II | 24-35 | A major: eighth-note pulses on the beat over F#-C#-F#-E-D-G#-A, decresc. to pp | Vc and Va have the long tune above (F#4 held, then A3 and B3-D4), Pf LH plays F#2/F#3 staccato octaves, Vn1 plays off-beat accented pairs | lift | On-beat F#4 pulses interlock with Vn1's off-beat pairs and share a unison with the cello only on the first beat of bar 24, so no move to high is needed |
| II | 36-52 | D major: fp staccato D-F#-D pulses, syncopated A2/A3 figure with tied accents (37, 39), F#/D/G octave-jump dotted figures (41-48), tied D/D2 figure under dim./decresc. (49-52) | Vc doubles the bass exactly in 36-44, then holds double stops above it (45-52); Vn1 and Va hold chords, Pf LH plays octaves and arpeggios | lift | Rhythm, accents and ties are kept; written D2, F#2 and E2 fold up an octave, so the printed octave jump becomes a repeated note (G bars 45 and 47 keep their jump), and high would put Vn2 right under Vn1's G5-F#5 line in 49-52 |
| II | 53-60 | ppp G2 pedal pulses (dotted 16th, 32nd, 16th, rest) with simile, then G2 dotted half on the fermata | Vc pulses on D, G and F# above the bass, Vn1, Va and Pf pulse on the same rhythm | lift | The written G2 lifts to G3, the open G string, and the line sits as a unison or fifth with the pulsing cello and viola |
| II | 61-83 | Ab major: the theme again (Ab-G-Eb, Db-C-Bb), lower Ab2-Db3-Eb3 at 78, fp quarters Ab-Gb-F-E-E | Vc doubles the bass and adds the tune above it, then rising staccato arpeggios in 79-83; Va has the tune, Vn1 rests to bar 68 | lift | Same texture as bars 1-23: Vn2 stays an octave above the cello, below Vn1 (which only enters at 69), and the fp arpeggio bars cross Vn1 only on their first eighth |
| II | 84-95 | C major: eighth-note pulses on the beat over A-E-A-G-F-B-C, decresc. to pp | Vc and Va have the long tune in the middle, Pf LH plays A2/A3 staccato octaves, Vn1 plays off-beat accented pairs | lift | Identical to bars 24-35: A4 pulses against Vn1's off-beat pairs, unison with the cello only on the first beat of bar 84 |
| II | 96-113 | F major: fp staccato F-A-F pulses, A/C/F/Bb/C octave-jump dotted figures with tied accents (97-105), F/E figures (106-109), tied C/C2 figure under dim./decresc. (110-113) | Vc doubles the bass exactly in 96-105, then holds double stops above it (106-113); Vn1 and Va hold chords, Pf LH plays octaves | lift | Same as bars 36-52: low halves of the C2, F2 and E2 figures fold onto the high halves (repeated notes) while the rhythm and accents stay, and the line lies below the Vn1 chords |
| II | 114-121 | ppp F2 pedal pulses (dotted 16th, 32nd, 16th, rest, staccato and slurred) to the fermata on an F2 dotted half | Vc pulses on C and F with the same rhythm, Vn1 pulses on D4 and above, Va and Pf pulse as well | lift | Written F2 folds to F4, so Vn2 pulses above Vn1's D4 (a third, in a ppp murmur where every string repeats the same rhythm), which is acceptable; the user should listen to this one |
| III | Scherzo 0-10 | Pickup rest, then A on the downbeat, A-A-A, then staccato A-A-G#, F#-F#-A# (f, sf) | Vc plays double stops on the Basso's beats (1-4), then the theme above it; Pf LH chords on the same beats (1-4), rests after | lift | Written A3-B3 lifts to A4-B4, beneath Vn1 (C#5 and higher) in the viola range, nothing falls below G3. |
| III | Scherzo 11-26 | B-B-B/E echo pairs (sf, fp), ff return of the A theme, four bars rest (23-26) | Vc has the theme above the Basso (11-18), then double stops with the Basso (19-22); Pf LH rests | lift | Lifted B4/E4/A4 stay below Vn1 (F#5-B5) and give the rhythmic echo as an inner voice. |
| III | Scherzo 27-42 | Staccato chromatic descent (F/E, C-B-A-G-F-E-D-F#-G, G pedals) with sf, ending c4 r8 | Vc carries the descent above the Basso; Pf LH chords on the same beats from bar 31 | lift | Lifted line (C5 at most, F4-G3 low points) stays under Vn1 and above the folded range, so no change is needed. |
| III | Scherzo 42-58 | Pickup r8 r4, four-bar tied C (43-46), staccato C figure (47-50), four-bar tied D (51-54), D figure (55-58) | Vc in unison with the Basso at written pitch; Pf plays the melody in both hands, no bass | lift | One octave above the cello, under the melodic Vn1/Va; the four-bar ties are under the eight-bar limit and kept as printed. |
| III | Scherzo 59-79 | Rests with sf bursts on E (62), A (66), D (70), G (74), then G#-G#-G#, A, D, E, ff E-E-E | Vc doubles the bursts and has an A-Bb-A figure; Pf LH rests until bar 80 | lift | Lifted pitches (G3 to E4) sit below Vn1/Va and the bursts keep their rhythmic punch; no fold is needed. |
| III | Scherzo 80-88 | E, A, A, A-A-A, A with rests, then four bars rest | Vc double stops with the Basso (80-84), rests; Pf LH chords on the same beats | lift | A4/E4 under Vn1 and Va (which carry the theme), same rhythm as the Basso. |
| III | Scherzo 89-92 | D-D-D / C# (fp, written D4, the highest notes of the movement) | Vc in unison with the Basso at written pitch; Pf LH rests | hand | A lift would put D5 above Vn1 (B4) and the viola, so Vn2 plays the Basso at written pitch, unison with the cello, under the violin. |
| III | Scherzo 93-103 | sf descent A-G#, F#-E, D-C#, B-D#, E, then A/E ostinato (fp, ff) | Vc plays a third/sixth above the descent, then double stops; Pf LH has chords from bar 93 | lift | Descent in the lifted octave stays under Vn1 (C#6 down to E5) and fits between viola and cello. |
| III | Scherzo 104 (1st ending) | a4 r8, three eighths; repeat to pickup r8 r4 | Vc double stop a4 r8; Pf LH rests | lift | Same note as the ostinato's last chord, lifted with the rest of the section. |
| III | Scherzo 104 (2nd ending) | a4 r4, two beats, then Trio pickup | Vc double stop a4 r4; Pf LH rests | lift | Same note as the first ending, lifted. |
| III | Trio 0-16 | Cue pickup, four bars rest (cue Viol.), long A (5-7) slurred to D, rests (9-12), long E (13-15) slurred to A, a4 r4 | Vc silent until bar 7, then a staccato counter-melody above; Pf LH rests | lift | Lifted A4/E4 in the viola register is a unison with Va on A4 (bars 6-7) and a second against F#4 in bar 15, both doubling the harmony, so kept. |
| III | Trio 16-24 | r4 pickup, three bars rest, then D staccato and the pp tune D-A#-B (bars 20-23), rest | Vc plays the same tune above the Basso; Pf LH rests | lift | The tune is doubled at D5-A#4-B4 beneath Vn1's A5 and the viola, an inner voice that matches the cello. |
| III | Trio 25-35 | Seven-bar tied pedal G counted 1-7 (pp, dim.), then G-Bb, Bb., F-Bb, A. slurs | Vc holds a tied pedal then plays the same slurs above the Basso; Pf LH rests | lift | G4 pedal is a unison with the Va G4 pedal and sits under the Vn1 tune; Bb4/F4/A4 lift without fold, and the 7-bar tie is under the eight-bar limit. |
| III | Trio 36-49 | F-G-A, Bb. and F-Bb, A. slurred, then ff Bb r r (4) and A r r (4), G.P. bar | Vc plays chords on the Basso's beats (41-48); Pf LH chords on the same beats | lift | Lifted Bb4/A4 are on the same beats as the string chords and stay under Vn1's long D5 line. |
| III | Trio 50-65 | pickup rests then the slurred tune D-F#-B-G (p) ending G.>, staccato A (55-58), rests (cue Viol., trill) | Vc plays the same tune above; Pf LH doubles the tune, then rests | lift | D4-G4 and A4 stay below Vn1's F#5 line and match the cello tune an octave lower. |
| III | Trio 66 (1st ending) | r4 r4, two beats rest (cue Viol.) | Vc rests; Pf LH rests | rest | The Basso rests (cue bar), so Vn2 rests too. |
| III | Trio 66 (2nd ending) | r4 r8, then "Scherzo da capo, senza ripetizione" | Vc rests; Pf LH rests | rest | The Basso rests (cue bar); the da capo direction is printed as in the part. |
| IV | 1-20 (Thema, 1./2. endings) | Tune skeleton in D major: D-D-D, D half, A-A-A, A, D-D-D, D., E., A (endings), then D D F D, A A A, D', G B, D. F, A. A A A, D. | Vc plays the tune's harmony above the Basso at D4-A4 (unison with the lifted Vn2 on the repeated Ds); Pf rests | lift | The skeleton reads as an inner voice under Vn1's tune; the cello doubles it only on repeated notes, so a plain lift duplicates without clashing. |
| IV | 21-40 (Var. I, 1./2. endings) | Pizzicato staccato eighth arpeggios D-D'-A-F#, A,-C#-E-A, G,-G-G,-B, repeated with a 28a/28 ending | Vc plays slurred triplets (A4-F5 range), Va sextuplets, Pf has the tune in both hands | lift | Pizz. arpeggio sits as inner rhythm under the cello triplets; the highest lifted notes (D5) stay under Vn1's triplets and trills and are pizzicato, so no crossing. |
| IV | 41-60 (Var. II, 1./2. endings) | Sparse arco skeleton: D, rest bar, A, A', D, E; then dotted-rhythm A and D, G, A cells with rests | Vc carries the tune (F#3-D4 legato), Pf plays chords from bar 42 | lift | The Basso only punctuates the tune on the strong beats; lifted D4-A4 notes sit in the viola register but are short and p, so they do not fight the cello's tune. |
| IV | 61-80 (Var. III, 1./2. endings) | Staccato D D F# F#, D A, dotted A cells, E, C# descending 16ths, D(-A) slurs with accent, B B B D; Stadler footnote bars 72/76 not entered | Vc plays exactly the Basso's notes at the same written pitch; Pf plays 16th figuration in both hands; Va and Vn1 play offbeat dyads | lift | On-beat unison an octave above the cello fits the offbeat Vn1/Va figures (they fill the rests); D2 in bars 72/76 folds to D4 and flattens the octave drop. |
| IV | 81-100 (Var. IV, F major) | Triplet/sextuplet arpeggio flourishes A,-C#-E-A-C#-E' to A'' (81-84), F and C pedal sextuplets/triplets (85-88), offbeat C, F, (89-92), then B,-A, G,-A,-B, / D-C slurred line with hairpins (93-100) | Vc plays the same flourish in unison (81-84), higher sextuplets and triplets (85-88), offbeat G/F quavers (89-92), a line above the Basso (93-100); Pf has ff repeated chords then offbeat chords | lift | Octave doubling of the cello's flourish keeps the rushing gesture; the rise to F5/A5 passes above Vn1's repeated dyads only briefly; F2 folds to F4 in 85-92 so the C-F motion rises instead of falling. |
| IV | 101-127 (Var. V, B-flat major, 1./2. endings, close with fermata) | Octave-leap ostinato B,-B, F,-F, A-flat,-A-flat, D-flat-D-flat', G-flat,-G-flat to bar 118, then slurred staccato quaver chains D-flat, A-flat,, D-flat, E, A,, C#, F#,, A, (fermata) | Vc has the tune as Solo (D4 and up), Va plays inner figures, Pf rests then plays the tune in 8va and offbeat chords | lift | The ostinato lifted lies under Vn1's tune in the viola register; F2 and G-flat2 fold so the octave leap flattens to a pedal in 103-104, 108-109, 113, 117, and F#2 folds to F#4 in 126, which the quiet slurred chain tolerates. |
| IV | 128-156 (Allegretto) | D8 rest rest (128), cue rests (129-135), on-beat quaver pulses D, A,, D, E, A, with quaver rests (136-143), ten rests and cue bars (144-155), A, pulse (156) | Vn1 and Vc alternate the tune, Va plays offbeat dyads, Pf has the sextuplet figure and a bass pulse | lift | The D-A-E pulse is the bass of a light accompaniment; lifted D4-E4 eighths keep its rhythm in the viola register, and the rest and cue bars stay silent. |
| IV | 157-172 (Allegretto close) | Quaver pulses D, A,, D, G, (157-168) with decresc., then pp staccato D D slurred pairs, then D half slurred to D half with fermata | Vc plays the Solo tune and ends on D at the same written pitch, Va offbeat dyads, Pf rests then plays the sextuplet figure (167-170) and the closing D | lift | Same pulse as the preceding section; the final long D lifts to D4, one octave above the cello's final D, and the fermata is kept. |
| V | 1-10 | rests 1-2 (Vc cue); pp staccato E2-E3 / A2-E3 in 3-6; rests 7-10 | Vc holds E3 (1-2), rests 3-6, plays the same E/A figure in 7-10; Pf LH holds a tied E throughout | high | E/A figure alternates across the fold (lift gives E4 E4 A3 E4 and loses the octave leap); high keeps E4-E5 / A4-E5 clear of the Vn1/Va tune around D4 |
| V | 11-26 | A2-E3 / A2-A3 pizzicato figure, D3-F#3 slurred answer (13-14, 17-18), E2-E3 (15-16); rests 19-24; Pfte. cue 25-26 | Vc rests except for the answering figure in 13-14 and 17-18; Pf LH rests 11-18, takes over the A/E bass in 19-26 | lift | only the E2 bars (15-16) fold, to E4 E4; the rest is an unbroken bass line from A3 to A4 |
| V | 27-36 | as 1-10 (Vc cue 27-28, E/A figure 29-32, rests 33-36) | Vc holds E3 (27-28) and plays the E/A figure in 33-36; Pf LH holds a tied E | high | same figure as bars 3-6, same reason |
| V | 37-52 | ff chromatic theme A3. B A G F / E E / A G~G C C C / C B / C G / C (37-44); rests 45-50, Vc cue 51-52 | Vc plays the identical line at the same pitch (37-44) and continues the theme in 45-52; Pf LH doubles in octaves and chords | lift | tutti unison theme, Vn2 lands one octave above the cello with Vn1/Va; nothing folds (lowest note E4) |
| V | 53-65 | the ff theme again (53-60), then five bars rest | Vc doubles as in 37-44, rests 61-65; Pf plays the theme alone in 61-65 | lift | as 37-52 |
| V | 66-77 | fp offbeat figures F-D-E-F / D-B-C-D / B-flat-G-A-B-flat, each answered by a rest, closing diminuendo | Vc repeats a single chord note above the Basso (G3, then E3, then C3) with the same offbeat rhythm; Pf plays the chords | lift | parallel offbeat figure with all strings and Pf; lowest note G3 (bar 75), so no fold |
| V | 78-83 | ppp rising semitone figure G-E-F-G, then slurred half notes F-G-A-A | Vc plays above (C#3 repeated, then D3-E3-F3-C#3); Pf LH rests from 79 | high | lift folds E-F-G into E4-F4-G3 (a leaping line); high keeps the semitone ascent (G4 E4 F4 G4 / F4 G4 A4 A4), in contrary motion to Vn1's descent A-G-F-E (unisons at bar 79 F4 and bar 81 G4, Vn2 above Vn1 in 82-83 at ppp) |
| V | 84-107 | D-F#-A / A-C#-E staccato oom-pa under the canon, then C#-F#-A and C#-E#-G# before the F# pedal | Vc has the tune from bar 87 (A3 above the bass); Pf LH doubles the same oom-pa as chords | lift | plain accompaniment line, D4-D5 range, no fold; Vn1's held A4 in 86 meets Vn2 only on the short A4 16th |
| V | 108-134 | F# pedal (108-115), G pedal (116-124), then chromatic climb G# to D with slurred pairs, falling to A (134) | Vc plays the upper chord tones of the same quarter + two 8ths pulse; Pf has no bass here (both hands in treble clef 8va) | lift | the pulse reads as an inner voice, F#4 to D5, nothing below G3 |
| V | 135-154 | tied D pedal for 16 bars (printed counts 1-10 and 11-16), then four bars rest | Vc plays the melody above (B3-C#4-E4 figures) to bar 150, rests 151-154; Pf plays arpeggio triplets in both hands | lift | D4 pedal under the melody; the 16-bar tie is broken once, after bar 142, per rule 6 (two 8-bar ties), counts kept |
| V | 155-164 | B-flat2 fp half note, then B-flat / E-flat / C offbeat figures and a B-flat half note (155-159, 161-163) | Vc plays the rising D3-F-B-flat figure and sustains B-flat3; Pf holds the diminished-seventh chords | lift | B-flat3 to C5, all above G3; the C5 is the top of the figure, still below Vn1 |
| V | 165-170 | D-F-B-flat rising slur (165-166), A half note, rest, then A2-C#4-E4-A3 with fz and hairpin | Vc plays the same rising slur a third above (F3-B-flat3-D4) and holds a B-flat3 half note in 167; Pf has the rising chord line | lift | lifted line peaks at E5, inside the range; no fold |
| V | 171-194 | eighth-note triplet drive: D (171-174), B (175-178), E-F#-G ascent (179), A (180), D-A (181), then D, B, E-F#-G, A, D-A again to bar 194 | Vc plays the melody above (D4 A3 / D4 F#4 ...); Va repeats double stops; Pf LH keeps D then B as the real bass | lift | triplet accompaniment at D4 / B3 (lowest), A4-D5 at the peaks, reads as the viola's repeated notes; the cello melody lies above it |
| V | 195-204 | eight bars rest, two bars rest under the Va. cue | Vc rests; Pf has the answering figure | lift | silent bars; Vn2 rests as printed |
| V | 205-212 | slurred half notes D-E, C#-D, G-G#, A-A with accents | Vc plays a third above (E-F#, E-F-F#...); Pf rests | lift | G3 (bar 209) is the lowest note; the line stays under the cello's thirds |
| V | 213-228 | ff syncopated D / E / A figures, two G.P. bars, four bars rest, then B-flat-B-A-A half notes (p, hairpin) | Vc and Va play the same syncopation above; Pf has flourishes (213-218) and sustained chords (225-228) | lift | the syncopation lands on D4 / E4 / A4, no fold; the final A3 (228) is within range |
| V | 229-236 | ff dotted D3. D4 D4> (229-232), three D quarters, G.P. bar with the da capo repeat sign | Vc plays a D4 syncopated pulse with Va double stops; Pf has a triplet flourish | lift | D4. D5 D5> doubles the upper strings' accents; the lift keeps the octave of the figure |
| V | 237-246 | pp staccato B2-B3 and E3-B3 quarter leaps (239-242), 237-238 and 243-246 rest | Vc: tied B halves 237-238, rests 239-242, plays the same B/E pulse 243-246; Pf LH: tied B octave pedal | hand | Lifted, the upper B (B4) sits above Vn1's G4-A4 melody, so the upper B drops to B3 and the E lifts to E4 |
| V | 247-262 (repeat) | B/E/E2 staccato quarters, A-C#-C#-C# and G#-B-B-B accented slurred eighths, answers C#-E and B-E; six rests, Pfte. cue 261-262 | Vc: rests 247-248, 251-252 and 255-262, answers on its own notes in 249-250 and 253-254; Pf LH: rests until 255, then plays the cue figure | hand | Same crossing as 237-246 on the B-B bars (251-252); E3/E2 both fold to E4 in 248, a staccato second above Va's D4 that cannot be avoided |
| V | 263-272 | Vc cue 263-264, then the 237-246 pulse (265-268), four rests | Vc: tied B halves 263-264, rests 265-268, B/E pulse 269-272; Pf LH: tied B octave pedal | hand | Second statement of 237-246, treated identically |
| V | 273-288 | ff E-F#-E-D-C figure with answering quarters, fz D tied into G staccato eighths, six rests, Vc cue 287-288 | Vc: unison with the Basso in 273-274, an octave above it in 275-280, rests after; Pf LH: doubles in chords, rests 281-288 | lift | Tutti unison/octave passage, lifted Vn2 doubles Vc and Vn1 without crossing |
| V | 289-301 | Repeat of 273-296 (ff figure, quarters, fz D into G staccati), five rests | Vc: as 273-296; Pf LH: doubles in chords, rests 297-301 | lift | Same as 273-288 |
| V | 302-319 | fp accented C and A figures with slurred staccato eighths (302-309), diminuendo F and D figures to ppp (310-315), slurred halves C-D-E-E (316-319) | Vc: unison with the Basso 302-309, melody above the Basso in 316-319; Pf LH: slurred chords 302-313, rests after | lift | Octave tutti figures, lifted Vn2 doubles the Vc line from above and stays below Vn1 |
| V | 320-343 | Dotted A and E bass figure (A-C#-E, A / E-G#-B, E), mf, staccato 320-327, decresc. to the G# major bars 340-343 | Vc: slurred A-B-C#-E countermelody; Pf LH: low A/E on the beat plus off-beat chord, same harmony | lift | Vn2 reads the bass rhythm as an inner voice under Vn1 and over Vc |
| V | 344-359 | pp pedal C# quarter plus two eighths, numbers 1-8, then D with numbers 1-7 and accents | Vc: same rhythm on neighbour notes; Pf: slurred treble fragments, no bass | lift | Rhythmic pedal kept at C#4 and D4 below Va and Vn1 |
| V | 360-370 | Last count (8), chromatic climb D to A in slurred pairs with staccato, cresc., back down to E, decresc. | Vc: parallel chromatic climb above; Pf LH: rests, slurred octave line from 366 | lift | Line stays in D4-A4, nothing crosses Vn1's higher chromatic climb |
| V | 371-390 | A2 pedal, tied halves counted 1-16, pp, then four rests | Vc: slurred eighth/quarter countermelody; Pf: triplet figures in both hands | lift | A3 pedal kept; the 16-bar tie is re-bowed after bar 378 (count 9) because it runs past eight bars |
| V | 391-400 | ff F half note, p F-Bb-G arpeggio quarters, ff F half, p arpeggio again, F quarter, rest bars | Vc: tied Bb halves and a D-Bb figure above; Pf LH: Bb chords, RH chromatic runs | lift | F2 folds to F4 so the arpeggio reads F4-Bb3-G4; high would put G5 above Vn1's E5 sustain |
| V | 401-408 | Rising arpeggios A-C-F and G#-B-E with hairpins, E half, pp triplet-quaver A pulse | Vc: parallel arpeggios above, then the same triplet pulse in dyads; Pf LH: arpeggios in 8ths | lift | Vn2 stays an octave above the Vc's pulse and below Vn1 |
| V | 409-430 | Triplet-quaver pedal A (409-410), F# (411-414), B-C#-D, E, A-E, f from 418, repeated 421-430, ends A quarter | Vc: same triplet pulse in dyads; Pf LH: staccato chord figure | lift | F#2 folds to F#4 in 411-414 and 423-426 (a pedal pulse, contour unimportant); high would put E5/A5 in Vn1's melody |
| V | 431-440 | Eight rests, Va cue 439-440 | Vc and Pf rest, Va has the cue | rest | Cue bars |
| V | 441-460 | A-B and G#-A halves slurred to quarters (p), D-D#-E-E halves, syncopated A, B, E eighth figures (ff), two G.P. bars, four rests | Vc: octave above the Basso 441-444, parallel line 445-448, chords with Pf in 449-454; Pf LH: chords 449-454, rests after | lift | Doubles the Vc from below the Vc's octave, nothing above Vn1 |
| V | 461-472 | p F-F#-E halves tied, ff dotted A figure with A3 octave leap (465-468), quarters, final G.P. bar | Vc: parallel halves 461-464, then A and chord quarters; Pf LH: triplet arpeggios 465-468, A quarters | lift | Lifted figure A3-A4-A4 doubles Vn1's A4 on the accents |

## Review flags from the first pass

The Basso was read from the scan by eye (no OMR). Duration errors are caught by the
`\barNumberCheck` gate; wrong pitches are not. Proofread with `./build proof` beside the scan, and
use a recording for the Vn2 choices. Weakest spots, by movement and printed bar:

- **I:** 129-131 and 313-316 (octave of the repeated B/E figures); 181-194 (triplets, dotted
  figures); 50 and 235 (octave pair order); 305, 307-311; accent placement in 56, 239-241, 256,
  264, 267. `ff>`, `p>cresc.`, `fp>` are entered as text, not hairpins.
- **II:** 37/39 and 97/99 (dotted figures); 79 (A-flat2 then G-flat3, a seventh); 105-109 (low E,
  F on ledger lines).
- **III:** 75 (courtesy sharps); the Trio's counting numbers 1-7.
- **IV:** 81-88 (Var. IV tuplet grouping: bar 83 may be triplets, not sextuplets; slurs in 82); 84
  (pitch of the high eighth); 101-119 (octave reading in Var. V); 123-125.
- **V:** 74, 78, 227 and 155, 207, 210, 212 (`>` read as accents, not short diminuendos); 211-218
  (slur versus tie); 250 and 342-343 (pitches); 324-327 (staccato dots); 361-367 (accidentals on
  repeated notes); 407 on (triplet reading); 445-448 and 461-463 (slur versus tie).
- Cautionary accidentals in the scan are not reproduced.

Vn2 choices to hear first (all are judgement calls, not facts):

- **Fold flattening.** Where the Basso goes below written G2 the fold turns octave leaps into
  repeated notes or inversions: II 41-52, 106-113, bar 10; IV 72/76, 85-92, 103-104, 108-109,
  113, 117; I 171-172; V 391-400, 411-414, 423-426.
- **High registers.** I 1-22 (pedals A4, F4); V 1-10 and 27-36 (high), V 78-83 (high: crosses
  Vn1's falling line, unisons at 79 and 81).
- **Hand re-voicings.** III Scherzo 89-92 (unison with the cello instead of D5 above Vn1);
  V 237-272 (B3 for the upper B so it stays below Vn1; E4 in 248 sits a second above the viola).
- **Collisions accepted.** II 19-23 and 79-83 (Vn2 above Vn1 on one eighth per bar); II 114-121
  (my reading of Vn1's pitches there is low-confidence); IV 81-84 (flourish passes above Vn1's
  dyads to A5); III Trio 25-31 (G4 tied pedal unison with the viola).
- **Not addressed.** Page turns, bowings, and the cello's lost bass support are left for the
  player; nothing in the Basso's dynamics was rewritten.
