\version "2.24.4"
\header {
title = "Два берега"
composer = "Берлиоз"
arranger = "S. Bondarenko"
instrument = "Glockenspiel"
}
\score
{
\relative 
{
\new Staff {
\set Score.rehearsalMarkFormatter = #format-mark-box-numbers
\clef treble
\key fis \minor \time 4/4
fis'8 cis'8 fis,16 a8 cis16 fis,8 cis'8 fis,16 a8 cis16 |\mark \default cis8 b8 a8 gis8 fis4 fis'4|
}
}
\layout {}
}
