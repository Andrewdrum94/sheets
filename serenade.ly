\version "2.26.0"
\header {
title = "Serenade"
arranger = "A.Kolesnik"
}
\score {
\new DrumStaff {
  \drummode {
  \time 4/4
  \tempo 4 = 130
  \set countPercentRepeats = ##t
  \set repeatCountVisibility = #(every-nth-repeat-count-visible 1)
  \partial 4 <sn hho>4 | <bd hh>4 r4 r4 r4 |
  \textMark \markup \bold \box "Kuplet"
  \repeat percent 6 {<bd hh>8 hh8 hh8 <bd hh>8 hh8 hh8 <sn hh>8 hh8} | <bd hh>8 hh16 hh16 hh8 sn8 hhp8 sn8 hhp8 sn8 | <bd sn hhp>4 hh4 hh4 hh4 |
  \repeat percent 6 {<bd hh>8 hh8 hh8 <bd hh>8 hh8 hh8 <sn hh>8 hh8} | <bd sn hhp>8 sn8 <bd hhp>8 sn8 <bd sn hhp>8 sn8 <bd hhp>8 sn8 | <bd sn hhp>4 hh4 hh4 hh4 |
  \segnoMark \default

  \textMark \markup \bold \box "Pripev"
  \repeat percent 7 {<bd hh>8 hh8 hh8 <bd hh>8 hh8 hh8 <sn hh>8 hh8} | <bd hh>8 sn8 hh8 bd8 <bd hh>8 sn16 sn16 sn8 bd8 |
  \repeat percent 2 {<bd hh>8 hh8 hh8 <bd hh>8 hh8 hh8 <sn hh>8 hh8} | <bd hh>8 sn16 sn16 sn8 sn8 sn8 sn8 sn8 sn8 | <bd sn>4 r4 r2 |\codaMark \default

  \textMark \markup \bold \box "Proigrysh"
  \repeat volta 2 { \repeat percent 6 {<bd hh>8 hh8 hh8 <bd hh>8 hh8 hh8 <sn hh>8 hh8}} 
  \alternative {
  \volta 1 {<bd hh>8 sn8 sn8 sn8 sn4 sn4 | <bd sn>4 r2. |}
  \volta 2 {<bd hh>8 <hh sn>8 <bd hh sn>8 <hh sn>8 <bd hho sn>8 sn16 sn16 sn8 sn16 sn16 | <bd sn>4 hh4 hh4 hh4 |}
  } \segno \coda
  \textMark \markup \bold \box "Kuplet 2"
  \repeat percent 6 {<bd hh>8 hh8 hh8 <bd hh>8 hh8 hh8 <sn hh>8 hh8} | <bd sn hhp>8 sn8 <bd hhp>8 sn8 <bd sn hhp>8 sn8 <bd hhp>8 sn8 | <bd sn hhp>4 hh4 hh4 hh4 |
  \textMark \markup \bold \box "Pripev 2"

  \repeat percent 7 {<bd hh>8 hh8 hh8 <bd hh>8 hh8 hh8 <sn hh>8 hh8} | <bd hh>8 sn8 hh8 bd8 <bd hh>8 sn16 sn16 sn8 bd8 |
  \repeat percent 2 {<bd hh>8 hh8 hh8 <bd hh>8 hh8 hh8 <sn hh>8 hh8} | <bd hh>8 sn16 sn16 sn8 sn8 sn8 sn8 sn8 sn8 | <bd sn>4 r4 r2 |
  \textMark \markup \bold \box "Coda"
 
  \repeat percent 4 {<bd hh>8 hh16 hh16 hh8 <bd hh>8 hh8 hh8 <bd hh>8 hh8} |
  hh8 hh4 hh16 hh16 hh8 hh4 hh16 hh16 | hh8 hh4 hh16 hh16 hh8 hh8 hh8 hh8 | hh4 r4 r4 hho4 | hh4 r2. \bar "|."
  

  }
}
\layout {}
}
\score {
\unfoldRepeats {
\new DrumStaff {
  \drummode {
  \time 4/4
  \tempo 4 = 130
  \set countPercentRepeats = ##t
  \set repeatCountVisibility = #(every-nth-repeat-count-visible 1)
  \partial 4 <sn hho>4 | <bd hh>4 r4 r4 r4 |
  \textMark \markup \bold \box "Kuplet"
  \repeat percent 6 {<bd hh>8 hh8 hh8 <bd hh>8 hh8 hh8 <sn hh>8 hh8} | <bd hh>8 hh16 hh16 hh8 sn8 hhp8 sn8 hhp8 sn8 | <bd sn hhp>4 hh4 hh4 hh4 |
  \repeat percent 6 {<bd hh>8 hh8 hh8 <bd hh>8 hh8 hh8 <sn hh>8 hh8} | <bd sn hhp>8 sn8 <bd hhp>8 sn8 <bd sn hhp>8 sn8 <bd hhp>8 sn8 | <bd sn hhp>4 hh4 hh4 hh4 |
  \segnoMark \default

  \textMark \markup \bold \box "Pripev"
  \repeat percent 7 {<bd hh>8 hh8 hh8 <bd hh>8 hh8 hh8 <sn hh>8 hh8} | <bd hh>8 sn8 hh8 bd8 <bd hh>8 sn16 sn16 sn8 bd8 |
  \repeat percent 2 {<bd hh>8 hh8 hh8 <bd hh>8 hh8 hh8 <sn hh>8 hh8} | <bd hh>8 sn16 sn16 sn8 sn8 sn8 sn8 sn8 sn8 | <bd sn>4 r4 r2 |\codaMark \default

  \textMark \markup \bold \box "Proigrysh"
  \repeat volta 2 { \repeat percent 6 {<bd hh>8 hh8 hh8 <bd hh>8 hh8 hh8 <sn hh>8 hh8}} 
  \alternative {
  \volta 1 {<bd hh>8 sn8 sn8 sn8 sn4 sn4 | <bd sn>4 r2. |}
  \volta 2 {<bd hh>8 <hh sn>8 <bd hh sn>8 <hh sn>8 <bd hho sn>8 sn16 sn16 sn8 sn16 sn16 | <bd sn>4 hh4 hh4 hh4 |}
  } \segno \coda
  \textMark \markup \bold \box "Kuplet 2"
  \repeat percent 6 {<bd hh>8 hh8 hh8 <bd hh>8 hh8 hh8 <sn hh>8 hh8} | <bd sn hhp>8 sn8 <bd hhp>8 sn8 <bd sn hhp>8 sn8 <bd hhp>8 sn8 | <bd sn hhp>4 hh4 hh4 hh4 |
  \textMark \markup \bold \box "Pripev 2"

  \repeat percent 7 {<bd hh>8 hh8 hh8 <bd hh>8 hh8 hh8 <sn hh>8 hh8} | <bd hh>8 sn8 hh8 bd8 <bd hh>8 sn16 sn16 sn8 bd8 |
  \repeat percent 2 {<bd hh>8 hh8 hh8 <bd hh>8 hh8 hh8 <sn hh>8 hh8} | <bd hh>8 sn16 sn16 sn8 sn8 sn8 sn8 sn8 sn8 | <bd sn>4 r4 r2 |
  \textMark \markup \bold \box "Coda"
 
  \repeat percent 4 {<bd hh>8 hh16 hh16 hh8 <bd hh>8 hh8 hh8 <bd hh>8 hh8} |
  hh8 hh4 hh16 hh16 hh8 hh4 hh16 hh16 | hh8 hh4 hh16 hh16 hh8 hh8 hh8 hh8 | hh4 r4 r4 hho4 | hh4 r2. \bar "|."
  

  }
}
}
\midi {}
}
