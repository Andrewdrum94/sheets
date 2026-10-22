\version "2.26.0"
#(set-global-staff-size 22)
\header {
    title = "Веселье"
    arranger = "А.С.Колесник"
}
\score {
    \new DrumStaff \with {
        instrumentName = "Drum Kit"
        shortInstrumentName = "Drums"
    } {
        \set countPercentRepeats = ##t
        \set repeatCountVisibility = #(every-nth-repeat-count-visible 4)
        \drummode {
            \time 4/4
            \tempo "Adagio"
            \override TextSpanner.bound-details.left.text = \markup \italic "accel."
            \override TextSpanner.style = #'dashed-line
            r1 | \bar ".|:" \repeat percent 7 {bd8 \p \startTextSpan hh bd hh bd hh bd hh} 
            | bd hh bd hh <bd hh>4 r4 
            \bar ":|."
            \repeat percent 7 {<bd hh>8 \stopTextSpan hh hh <bd hh> hh hh <bd sn hh> hh} 
            | <sn hh> <bd hh> <bd hh> <sn hho> r2 |
            \repeat percent 7 {<bd hh>8 sn <bd hh> sn <bd hh> sn <bd hh> sn } |
             <bd hh> sn <bd hh> sn <bd sn hh>4 r4 |
            \bar ".|:"
            \repeat percent 4 {<bd hh>8 \segno hh hh <bd hh> hh hh <bd sn hh> hh} |
            \repeat percent 2 {<bd hh>8 sn <bd hh> sn <bd hh> sn <bd hh> sn } |
            \repeat percent 2 {<bd hh>8 hh hh <bd hh> hh hh <bd sn hh> hh} |
            \repeat percent 2 {<bd hh>8 sn <bd hh> sn <bd hh> sn <bd hh> sn } \bar ":|."
            \textMark \markup \bold \box "Bass solo"
            \repeat percent 8 {hh8 \coda hh hh hh hh hh hh hh}
            \repeat percent 7 {<bd hh>8 sn <bd hh> sn <bd hh> sn <bd hh> sn } |
            <bd hh> sn <bd hh> sn <bd sn hh>4 r4 |
             \repeat percent 7 {<bd hh>8 hh hh <bd hh> hh hh <bd sn hh> hh} 
            | <sn hh> <bd hh> <bd hh> <sn hho> r2 \segno
            \override TextSpanner.bound-details.left.text = \markup \italic "rit."
            hh8 \coda hh-> hh hh-> hh hh-> hh hh-> | hh8 \startTextSpan hh-> hh hho hh4 \stopTextSpan r4  | 
            \tempo "Lento"
            r1 | r4 \startTextSpan r4 r8 \stopTextSpan \fermata r8 r8 r8 | 
            \override TextSpanner.bound-details.left.text = \markup \italic "accel."
            \repeat percent 3 {<bd hh>8 \startTextSpan sn <bd hh> sn <bd hh> sn <bd hh> sn } |
            <bd hh> sn <bd hh> sn <bd hh>4 \stopTextSpan r4 |
            \repeat percent 7 {<bd cymr>8 \f sn <bd cymr>8 sn <bd cymr>8 sn <bd cymr>8 sn } |
            <bd cymr>4 <cymr sn>8 <bd cymr>(<bd cymr>) <sn cymr>8 <bd cymc>4 \bar "|."



        }
    }
}