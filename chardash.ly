\version "2.26.0"
\header {
    title = "Чардаш"
    arranger = "А.С.Колесник"
}
\score {
    \new DrumStaff \with {
        instrumentName = "Drum Kit"
        shortInstrumentName = "Drms"
    } {
        \set countPercentRepeats = ##t
        \set repeatCountVisibility = #(every-nth-repeat-count-visible 1)
        \drummode {
            \time 4/4
            \tempo 4 = 70
            <bd cymc>2 <bd cymc> | <bd cymc>2 <bd cymc>8-^ r4. \fermata |
            <bd cymr>4 cymr cymr8. \tuplet 3/2 {cymr32 cymr cymr} cymr4 |
            \bar ".|:"
            \repeat percent 3 {<bd hh>8 hh hh <bd hh> <bd hh> hh <hh ss> hh} |
            \override TextSpanner.bound-details.left.text = "rit."
            <bd cymr>4 \startTextSpan <bd cymr> <bd cymr> cymr4:32 \stopTextSpan |
            \bar ":|."
            \repeat percent 5 {<bd hh>8 hh hh <bd hh> <bd hh> hh <hh ss> hh} | <bd hh>8 hh hh <bd hh> <bd hh> r4. \fermata |
            <bd hh>8 hh <ss hh> <bd hh> <bd hh> hh <ss hh> hh | <bd hh>8 <ss hh> <bd hh> <ss hh> <bd cymr>2 \fermata |
            \tempo "Presto"
            \repeat volta 2 { \repeat percent 7 {<bd hh>8 sn <bd hh> sn <bd hh> sn <bd hh> sn }| <bd hh> sn <bd hh> sn <bd hh> sn sn sn }
            \repeat volta 2 { \repeat percent 7 {<bd hh>8 sn <bd hh> sn <bd hh> sn <bd hh> sn }} 
            \alternative {
                \volta 1 {<bd hh>8 sn <bd hh> sn <bd hh> sn sn sn}
                \volta 2 {<bd hh> sn <bd hh> sn <bd cymr>4 r4}
            }

        }
    }
    \layout {}
}