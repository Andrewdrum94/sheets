\version "2.26.0"
\header {
title = "Serkan"
arranger = "A. Kolesnik"
}
\score
{
\new Staff \with {
instrumentName = "Violin"
shortInstrumentName = "V-n"
}
\relative
{
\clef "treble"
\time 12/8
\key d \minor
\sectionLabel "Проигрыш"
r4 d'8 a'4 \appoggiatura {bes16 a} g8 f4 \appoggiatura {g16 f} e8 d4 \appoggiatura {e16 d} cis8 | e4 f8 r4 g8~ g4 \appoggiatura {a16 g} f8 e4 d8~ |
d4 \appoggiatura {e16 d} a8 d4 e8( f4) e8( d4) e8( |\break cis4) e8 a,4 a8~ a4. r4. |
r4 d8 a'4 \appoggiatura {bes16 a} g8 f4 e8 d4 \appoggiatura {e16 d} cis8 | e4 f8 r4 g8~ g4 \appoggiatura {a16 g} f8 e4 f8~ |
f4 d8 f4 g8 \appoggiatura {a16 bes} a4 g8 f4 a8 | \appoggiatura a8 g4 e8 r4 e8~ e2. | r1. |\break
\sectionLabel "Припев"
\repeat volta 2 {r4. a4 \appoggiatura {bes16 a} g8 r4 f8 a4. | r4. g4 \appoggiatura {a16 g} f8 r4 e8 g4. |\break}
\alternative {
{r4. f4 f8 r4 e8 r4 d8 | a4. a4 a8 a'4. \appoggiatura {bes16 a} g8 a4 \break}
{r4. f4 f8~ f4 g8 f4 aes8~ | aes4. aes4. g4 f4 e4}
} r4. aes4. g4 f8~ f8 e4 | d1. \bar "|."
}
\layout {}
}

