\version "2.26.0"
#(set-global-staff-size 25)
\header {
   title = "Подражая контрабасу"
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
   \tempo 4 = 125
   r1 | r1 \segno |r1|r1|
   <sn hh>4 r4 r4 <sn hho>4 |
   \repeat percent 3 {<sn hh>8 <sn hh>4 <sn hh>8 <sn hh>4 <sn hho>4 }|<bd sn hh>4 r4 r2 |
   \repeat percent 4 {<bd sn hh>4 <bd sn hh>4 <bd sn hh>4 <bd sn hh>8 <sn hho>8} | <bd sn hh>4 r4 r2|
   \repeat percent 3 {<sn hh>8 <sn hh>4 <sn hh>8 <sn hh>4 <sn hho>4 }|<bd sn hh>4 r4 r2 | r1 |
   r8 <sn hh>4 <sn hh>8 <sn hh>4 r4 |r8 <sn hh>4 <sn hh>8 <sn hh>4 r4 |
   <sn hh>8 <sn hh>4 <sn hh>8 <sn hh>8 <sn hh>4 <sn hh>8 | <sn hh>4 r4 r2|
   r8 <sn hh>4 <sn hh>8 <sn hh>4 r4 |r8 <sn hh>4 <sn hh>8 <sn hh>4 r4 |
   <sn hh>8 <sn hh>4 <sn hh>8 <sn hh>8 <sn hh>4 <sn hh>8 | <sn hh>4 <sn hh>4 <sn hh> <sn hho> |
   \textMark \markup \bold "Шейкер"
   \repeat percent 8 {hh8 \coda hh hh hh hh hh hh hh} | \repeat percent 4{<bd cymr>8 sn16 sn sn8 bd <bd cymr>8 sn16 sn sn8 bd} | 
   <sn hh>4 <sn cymc>2 <sn hho>4 | <sn hh>4 r4 r2 \segno |
   \repeat percent 8 {<bd sn hh>4 \coda <sn hh> <sn hh> <sn hh>8 <sn hho>}
   \repeat percent 4{<bd cymr>8 sn16 sn sn8 bd <bd cymr>8 sn16 sn sn8 bd} | <sn hh>4 <sn cymc>2 <sn hho>4 | <sn hh>4 r4 r2| r1 |
   r1 | r1 | r4 <sn hho>4 <sn hh> r4 \bar "|."

   }
   }
   \layout {}
}
