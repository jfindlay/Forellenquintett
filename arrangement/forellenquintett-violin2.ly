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
  subtitle = \markup { \small "Violin II, adapted from the double bass part" }
  opus = "D. 667"
  composer = "Franz Schubert"
  tagline = ##f
}

\paper { indent = 12\mm }

\bookpart {
  \header { piece = "I. Allegro vivace" }
  \markup \small \italic \wordwrap {
    For piano and string quartet. Violin II plays the double bass line an octave above the
    cello (notes below G3 are folded up). Dynamics are the Basso's, as ensemble levels: blend
    under the cello rather than project.
  }
  \score {
    \new Staff \with { instrumentName = "Violin II" shortInstrumentName = "Vn. II" } {
      \clef treble \compressMMRests \vnTwoI
    }
    \partLayout
  }
}
\bookpart {
  \header { piece = "II. Andante" }
  \score {
    \new Staff \with { instrumentName = "Violin II" shortInstrumentName = "Vn. II" } {
      \clef treble \compressMMRests \vnTwoII
    }
    \partLayout
  }
}
\bookpart {
  \header { piece = "III. Scherzo: Presto" }
  \score {
    \new Staff \with { instrumentName = "Violin II" shortInstrumentName = "Vn. II" } {
      \clef treble \compressMMRests \vnTwoIII
    }
    \partLayout
  }
}
\bookpart {
  \header { piece = "IV. Andantino" }
  \score {
    \new Staff \with { instrumentName = "Violin II" shortInstrumentName = "Vn. II" } {
      \clef treble \compressMMRests \vnTwoIV
    }
    \partLayout
  }
}
\bookpart {
  \header { piece = "V. Allegro giusto" }
  \score {
    \new Staff \with { instrumentName = "Violin II" shortInstrumentName = "Vn. II" } {
      \clef treble \compressMMRests \vnTwoV
    }
    \partLayout
  }
}
