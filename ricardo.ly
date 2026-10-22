\version "2.26.0"
\header {
title = "Серенада Рикардо"
arranger = "A.S.Kolesnik"
}
\score {
  \new DrumStaff \with {
    instrumentName = "Drum Kit"
    shortInstrumentName = "Drums"
  } {
    \drummode {
    \set countPercentRepeats = ##t
    \set repeatCountVisibility = #(every-nth-repeat-count-visible 1)
    \set Score.rehearsalMarkFormatter = #format-mark-box-numbers
    \override TextSpanner.bound-details.left.text = "rit."
      \time 3/4
      \tempo 4 = 180
      \repeat volta 2 {
      \repeat percent 4 {bd8 hh8 bd hh bd hh} \mark \default
      <bd hh>4 r4 r4 | r2.|
      \repeat percent 7 {bd8 hh8 bd hh bd hh | bd8 hh bd hh bd hh} \mark \default
      \segnoMark 1
      \repeat percent 4 {bd8 hh8 bd hh bd hh | bd8 hh bd hh bd hh} \mark \default
      \repeat percent 4 {bd8 hh8 bd hh bd hh}|<bd cymr>4 cymr cymr| <bd cymr>4 cymr cymr|<bd cymr>4 \startTextSpan cymc2 \fermata \stopTextSpan \mark \default|\codaMark \default
      \repeat percent 5 {bd8 hh8 bd hh bd hh}|<bd hh>4 r4 <bd hho>4 } 
      \mark \default  \repeat percent 8 {bd8 hh8 bd hh bd hh | bd8 hh bd hh bd hh} 
      \once \override Score.RehearsalMark.baseline-skip = #4.5
      \mark \markup {
        \center-column {
          \musicglyph "scripts.segno"
          \musicglyph "scripts.coda"
        }
      }
      \repeat percent 5 {bd8 hh8 bd hh bd hh}|<bd hh>4 r4 <bd hho>4 | <bd cymc>4 r2 \bar "|." 



    }
  }
  \layout {}
}
