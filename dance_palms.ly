\version "2.26.0"
#(set-global-staff-size 24)
\header {
title = "Танцующие пальмы"
arranger = "A.Kolesnik"
}
\score {
  \new DrumStaff \with {
    instrumentName = "Drum Set"
    shortInstrumentName = "Drms"
  } {
    \set countPercentRepeats = ##t
    \set repeatCountVisibility = #(every-nth-repeat-count-visible 1)
    \drummode {
    \time 4/4
    \tempo 4 = 130
    <cymr sn>4. <sn cymr>8 <cymr sn>4. <sn cymr>8 | <cymr sn>8. sn16 sn8 sn sn bd <cymr sn>4 |
    \repeat volta 2 {\repeat percent 3 {<bd hh>8 <sn hh> <bd hh>8 <sn hh> <bd hh>8 <sn hh> <bd hh>8 <sn hh> } | <bd hh>4 r4 r2 |
    \repeat percent 3 {<bd hh>8 <sn hh> <bd hh>8 <sn hh> <bd hh>8 <sn hh> <bd hh>8 <sn hh> } }
    \alternative {
      {<bd sn hh>4 sn4:32 <bd sn> r4 }
      {<bd sn hh>8 sn16 sn sn8 sn <bd sn>4 <sn cymc>4}
    }
    \repeat volta 2 {\repeat percent 7 {<bd cymr>8 sn <bd cymr>8 sn <bd cymr>8 sn <bd cymr>8 sn } | <bd sn hh>4 r4 r8 <sn hh>8 <sn bd hh>4 }
    \repeat percent 3 {<bd hh>8 <sn hh> <bd hh>8 <sn hh> <bd hh>8 <sn hh> <bd hh>8 <sn hh> } | <bd hh>4 r4 r2 |
    \repeat percent 3 {<bd hh>8 <sn hh> <bd hh>8 <sn hh> <bd hh>8 <sn hh> <bd hh>8 <sn hh> } | <bd sn hh>8 sn16 sn sn8 sn <bd sn>4 <sn cymc>4
    <bd sn hh>4 r4 r4 r8 <sn hh>8 | r8 <sn hh> r8 <sn hh> <sn hh>4 <bd sn cymc>4 |\break
    \repeat volta 2 {\repeat percent 3 {<bd hh>8 <sn hh> <bd hh>8 <sn hh> <bd hh>8 <sn hh> <bd hh>8 <sn hh> } | <bd hh>8 <sn hh> <bd hh> <sn hh> <sn cymr>4 r4 |
    \repeat percent 3 {<bd hh>8 <sn hh> <bd hh>8 <sn hh> <bd hh>8 <sn hh> <bd hh>8 <sn hh> } | <bd sn hh>4 r4 r8 <sn hh>8 <sn hh> <sn hh> |
    \repeat percent 3 {<bd hh>8 <sn hh> <bd hh>8 <sn hh> <bd hh>8 <sn hh> <bd hh>8 <sn hh> } | <bd hh>8 <sn hh> <bd hh> <sn hh> <sn cymr>4 r4 |
    \repeat percent 3 {<bd hh>8 <sn hh> <bd hh>8 <sn hh> <bd hh>8 <sn hh> <bd hh>8 <sn hh> } }
    \alternative {
    {<bd sn hh>4 sn4:32 <bd sn> r4}
    {<bd sn hh>4 sn4:32 <bd sn>4 <sn bd cymc>4} 
    }
    r1 \fermata |
    \tempo 4 = 150
    \repeat volta 2 {\repeat percent 3 {<bd hh>8 <sn hh> <bd hh>8 <sn hh> <bd hh>8 <sn hh> <bd hh>8 <sn hh> } | <bd hh>4 r4 r2 |
    \repeat percent 3 {<bd hh>8 <sn hh> <bd hh>8 <sn hh> <bd hh>8 <sn hh> <bd hh>8 <sn hh> } }
    \alternative {
      {<bd sn hh>4 sn4:32 <bd sn> r4 }
      {<bd sn hh>8 sn16 sn sn8 sn <bd sn>4 <sn cymc>4}
    }


    }
  }
  \layout {}
}
