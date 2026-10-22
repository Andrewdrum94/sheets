\version "2.26.0"
\header {
title = "Klon"
}
\score
{
\relative
{
\tempo "Larghetto" 4 = 60
\clef "treble"
\time 4/4
\key d \major
\compressMMRests {
R1*6
}
r2. r4 \fermata | fis'2 \tuplet 3/2 {r4 e16 fis16} \tuplet 3/2 {e4 d16 cis16} |  
e8 d4. r8 cis'16 d16 cis4 |
b16 a32( fis32) e16 d16 b'4 r8 a16 b16 \tuplet 3/2 {a8 fis16} \tuplet 3/2 {fis8 g16} |
a16( g16) g4 fis16 d16~ d16 b16 e8~ e4| 
r16 fis'8. fis4 \tuplet 3/2 {r4 e16 fis16} \tuplet 3/2 {e4 d16 cis16} |  
e8 d4. r8 cis16 d16 cis8 b16 a16( |
a16) b,16 b'8~ b4 r16 a16 a16 b16 \tuplet 3/2 {a8 g16} \tuplet 3/2 {fis8 g16} |
a4~ a8 gis16\glissando e16~ e16 e16 g8~ g4 |
r4 \tuplet 3/2 {b8 cis8 d16( cis16)} d4 r16 cis16 d16 cis16 |
\tuplet 3/2 {b8( a16)} a8\glissando e4 r2 | 
r8. b'16 \tuplet 3/2 {b8 cis8 d16( cis16)} d8. cis16 \tuplet 3/2 {d8 cis8 b16 a16} |
a8 e4.\> e8\! g4.| 
r4 \tuplet 3/2 {b8 cis8 d16(cis16)} d8. cis16 d8. cis16 |
b16. a32 a8 e4 r2 |
r8. b'16 \tuplet 3/2 {b8 cis8 d16( cis16)} d8. cis16 d8. cis16 |
b16. a32 a8 e4 r4 \tuplet 3/2 {e8 fis8 e16. e32}|
g8. d16 d4 r4 \tuplet 3/2 {d8 e8 fis16 e16}|
fis8. cis16 cis4 r4 \tuplet 3/2 {cis8 d8 e16 d16} |
e4\glissando b4 r4 \tuplet 3/2 {cis8 d8 e16 d16}|
e2\glissando a,2\fermata|
r2 r8. a16 \tuplet 3/2 {a'8[ g fis16( e16)]} \segnoMark \default
fis2 r8. a,16 \tuplet 3/2 {a'8[g fis16( e16)]}|
e8 d4. r8. d16 \tuplet 3/2 {d'8[cis b16(a16)]}|
b8. d,16 \tuplet 3/2 {b'8[a g16(fis16)]} a8. d,16 \tuplet 3/2 {a'8[g fis16(e16)]}|\codaMark \default
g2 r8. a,16 \tuplet 3/2 {a'8[ g fis16( e16)]} |
fis2 r8. a,16 \tuplet 3/2 {a'8[g fis16( e16)]}|
e8 d4. r8. d16 \tuplet 3/2 {d'8[cis b16(a16)]}|
b8. d,16 \tuplet 3/2 {b'8[a g16(fis16)]} a8. d,16 \tuplet 3/2 {a'8[g fis16(e16)]}|
e2 r8. a16 a16 d16 d16 e16|
\appoggiatura e8 fis2 \acciaccatura {g16 fis} e4 r4| R1*6 | r2 r8. a,,16 \tuplet 3/2 {a'8[g fis16 e16]} \segno \coda 
g2 r8. fis16 \tuplet 3/2 {g8 fis8 e16 d16} |
fis2 r8. a,16 \tuplet 3/2 {a'8 g8 fis16 e16} |
d2 r8. d16 \tuplet 3/2 {d'8 cis8 b16 a16} | b8. d,16 b'16. a32 g16. fis32 a4 r8. a,16 | 
\tuplet 3/2 {a'8 g8 fis16 e16} e4(e8.) fis16 \tuplet 3/2 {g8 fis8 e16 fis16} | d2 r8. fis16 g8. fis16 
| r8 e16(fis16) d4~ d8 r8 cis'4 | d2 r2 | r1 \bar "|."


}
\layout {}
}

