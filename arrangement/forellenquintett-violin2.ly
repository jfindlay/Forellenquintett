\version "2.24.3"
% Schubert, Piano Quintet in A, D. 667 ("Forellenquintett"): the double bass part adapted as a
% Violin II part, for piano + string quartet. Source: Bärenreiter 5511 (1975) via IMSLP, see
% ../README.md. Layers: basso/ = the Basso as printed; vn2/ = the arrangement decisions.

\include "global.ily"
\include "basso/m1-allegro-vivace.ily"
\include "basso/m2-andante.ily"
\include "basso/m3-scherzo.ily"
\include "basso/m4-andantino.ily"
\include "basso/m5-allegro-giusto.ily"
\include "vn2/m1-allegro-vivace.ily"
\include "vn2/m2-andante.ily"
\include "vn2/m3-scherzo.ily"
\include "vn2/m4-andantino.ily"
\include "vn2/m5-allegro-giusto.ily"

\header {
  title = "Quintett in A"
  subtitle = \markup { \small "Violino II, adapted from the double bass part" \raise #0.6 \fontsize #-3 "*" }
  opus = "D. 667"
  composer = "Franz Schubert"
  arranger = \markup {
    \fontsize #-3
    \fill-line {
      \null
      \null
      \right-column {
        "Arrangement November 2026"
        "Justin Findlay & Claude Sonnet 5.5"
        " "
      }
    }
  }
  copyright = \markup {
    \tiny \center-column {
      "© 2026 Justin Findlay. Licensed CC BY 4.0: creativecommons.org/licenses/by/4.0/"
      "Adapted from the double bass part of Bärenreiter 5511 (1975); Schubert's music is in the public domain."
    }
  }
  tagline = ##f
}

% The movements flow on as consecutive scores with no headers or page breaks. Each score's first
% system takes the indent, which is where the tempo word sits, as in the printed part; only the
% first score carries the part name, and no staff carries a short name.
% The part name also runs in the page header, on the side opposite the page number (neither on
% page 1, where the title block and staff name already say it).
partName = "Violino II"

\paper {
  indent = 12\mm
  oddHeaderMarkup = \markup \fill-line {
    \unless \on-first-page-of-part \partName
    \if \should-print-page-number \fromproperty #'page:page-number-string
  }
  evenHeaderMarkup = \markup \fill-line {
    \if \should-print-page-number \fromproperty #'page:page-number-string
    \unless \on-first-page-of-part \partName
  }
}

\score {
  \new Staff \with { instrumentName = \partName } {
    \clef treble \compressMMRests
    % \footnote is not rendered from a \header field, so the subtitle carries a literal "*" and the
    % footnote hangs off the first notehead with an empty (invisible) mark, its text opening with "*".
    \footnote \markup \null #'(0 . 1)
      \markup \small \italic \wordwrap {
        * For piano and string quartet. Violino II plays the double bass line an octave above the
        cello (notes below G3 are folded up). Dynamics are the Basso's, as ensemble levels: blend
        under the cello rather than project.
      }
      NoteHead
    \vnTwoI
  }
  \partLayout
}
\score {
  \new Staff { \clef treble \compressMMRests \vnTwoII }
  \partLayout
}
\score {
  \new Staff { \clef treble \compressMMRests \vnTwoIII }
  \partLayout
}
\score {
  \new Staff { \clef treble \compressMMRests \vnTwoIV }
  \partLayout
}
\score {
  \new Staff { \clef treble \compressMMRests \vnTwoV }
  \partLayout
}
