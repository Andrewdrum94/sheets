\version "2.26.0"
\header {
  title = "Dva Soldi"
  arranger = "A.Kolesnik"
}
\score {
  \new DrumStaff \with {
    instrumentName = "Drum Kit"
    shortInstrumentName = "Drums"
  } {
  \drummode {
  \set countPercentRepeats = ##t
  \set repeatCountVisibility = #(every-nth-repeat-count-visible 1)
  \time 4/4
  \tempo 4 = 100
  r1 \fermata | r2. r4 |
  \textMark \markup \bold \box "Intro"
  \repeat percent 7 {<bd hho>8 \tuplet 3/2 {<sn hhc>8 hh16} <bd hho>8  \tuplet 3/2 {<sn hhc>8 hh16} <bd hho>8 \tuplet 3/2 {<sn hhc>8 hh16} \tuplet 3/2 {<bd hho>8 sn16} \tuplet 3/2 {<sn hhp>8 sn16}}
  <bd hho>8 \tuplet 3/2 {<sn hhp>8 sn16} \tuplet 3/2 {bd8 sn16} <sn hhp>8 <bd sn>4 r4 | 
  \time 2/4
  \tempo "Tempo rubato"
  \repeat percent 11 {cymr2 | cymr2} | cymr4 cymr |
  \tempo 4 = 100
  \time 4/4
  \repeat percent 8 {<bd hho>8 \tuplet 3/2 {<sn hhc>8 hh16} <bd hho>8  \tuplet 3/2 {<sn hhc>8 hh16} <bd hho>8 \tuplet 3/2 {<sn hhc>8 hh16} \tuplet 3/2 {<bd hho>8 sn16} \tuplet 3/2 {<sn hhp>8 sn16}} |
  <bd hho>8 \tuplet 3/2 {<sn hhp>8 sn16} \tuplet 3/2 {bd8 sn16} <sn hhp>8 <bd sn>4 r4 |
  \repeat percent 3 {<bd ss>16-> ss <hhp ss> ss-> <bd ss> ss <hhp ss>-> ss <bd ss>-> ss <hhp ss> ss-> \tuplet 3/2 {<bd ss>16 ss ss} <hhp ss>-> ss} |
  <bd cymr>16 ss-> <hhp ss>-> ss <bd ss>-> ss <hhp ss>-> <cymr sn>-> r16 sn r16 sn sn8 sn8 | 

  }
  }
  \layout {}
}
