\version "2.26.0"
#(set-global-staff-size 22)
\header {
    title = "Лунная рапсодия"
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
            \textMark \markup \bold \box "Intro"
            \repeat percent 7 {<bd sn hh>4 <bd sn hh> <bd sn hh> <bd sn hh>8 <sn hho> } | <bd sn hh>4 <bd hho sn> <bd sn hh>4 r4 |
            \repeat percent 8 {<bd sn hh>4 <bd sn hh> <bd sn hh> <bd sn hh>8 <sn hho> } | 
            \repeat percent 15 {<bd sn hh>4 <bd sn hh> <bd sn hh> <bd sn hh>8 <sn hho> } | <bd sn hh>4 <bd hho sn> <bd sn hh>4 r4 |
            \repeat percent 6 {<bd sn hh>4 <bd sn hh> <bd sn hh> <bd sn hh>8 <sn hho> } | <bd sn hh>8 <sn hh>4 <bd hho sn>8 <bd sn hh>8 <sn hh>4 <sn hho>8 | <bd sn hh>4 r2. |
            \repeat percent 7 {<bd sn hh>4 <bd sn hh> <bd sn hh> <bd sn hh>8 <sn hho> } | <bd sn hh>4 <bd hho sn> <bd sn hh>4 r4 |
            \repeat percent 4 {<bd sn hh>4 <bd sn hh> <bd sn hh> <bd sn hh>8 <sn hho> } |
            \override TextSpanner.bound-details.left.text = "rit..."
            cymr2.:32 \startTextSpan r4 |
            cymr4 cymr8 cymr cymr4 r4  |
            cymr2 cymr | cymr4 cymr cymr r4 \stopTextSpan|
            \textMark \markup \bold "Clarinet cadencia"
            r1 \fermata |
            \repeat percent 14 {<bd sn hh>4 <bd sn hh> <bd sn hh> <bd sn hh>8 <sn hho> } | <bd sn hh>4 <bd hho sn> <bd sn hh>4 r4 |
            \repeat percent 3 {<bd sn hh>4 <bd sn hh> <bd sn hh> <bd sn hh>8 <sn hho> } | <sn hh bd>8 <sn hh>4 <sn hh>8 <bd hh sn>4 <bd sn hho>4 |
            \repeat percent 2 {<bd sn hh>4 <bd sn hh> <bd sn hh> <bd sn hh>8 <sn hho> } | <bd sn hh>8 <sn hh>4 <bd hho sn>8 <bd sn hh>8 <sn hh>4 <sn hho>8 | <bd sn hh>4 r2. |
            \repeat percent 7 {<bd sn hh>4 <bd sn hh> <bd sn hh> <bd sn hh>8 <sn hho> } | <bd sn hh>4 \fermata <bd hho sn>2. \fermata \bar "|."



        }
    }
    \layout {}
}
