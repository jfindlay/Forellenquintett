\version "2.24.3"
% Diplomatic proof: the Basso exactly as entered in basso/ (bass clef, written pitch), for checking
% against source/IMSLP706362-*.pdf. Not a performance part.

\include "global.ily"
\include "basso/m1-allegro-vivace.ily"
\include "basso/m2-andante.ily"
\include "basso/m3-scherzo.ily"
\include "basso/m4-andantino.ily"
\include "basso/m5-allegro-giusto.ily"

\header {
  title = "Quintett in A: Basso (diplomatic proof)"
  tagline = ##f
}

\paper { indent = 12\mm }

\bookpart {
  \header { piece = "I. Allegro vivace" }
  \score { \new Staff { \clef bass \compressMMRests \bassoI } \partLayout }
}
\bookpart {
  \header { piece = "II. Andante" }
  \score { \new Staff { \clef bass \compressMMRests \bassoII } \partLayout }
}
\bookpart {
  \header { piece = "III. Scherzo: Presto" }
  \score { \new Staff { \clef bass \compressMMRests \bassoIII } \partLayout }
}
\bookpart {
  \header { piece = "IV. Andantino" }
  \score { \new Staff { \clef bass \compressMMRests \removeWithTag #'vnBeam \bassoIV } \partLayout }
}
\bookpart {
  \header { piece = "V. Allegro giusto" }
  \score { \new Staff { \clef bass \compressMMRests \bassoV } \partLayout }
}
