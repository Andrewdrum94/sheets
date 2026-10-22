\version "2.26.0"
#(set-global-staff-size 19)
\header {
    title = Карнавал
    arranger = "А.С.Колесник"
}
\score {
    \new DrumStaff \with {
        instrumentName = "Drum Kit"
    }{
        \set countPercentRepeats = ##t
        \set repeatCountVisibility = #(every-nth-repeat-count-visible 1)
        \drummode {
            \time 4/4
            \tempo 4 = 160
            r1 |
            \bar ".|:" \repeat percent 6 {<bd cymr>8 \p sn <bd cymr> sn <bd cymr> sn <bd cymr> sn} |
            <bd cymr>8 \< sn <bd cymr> sn <bd cymr> sn <bd cymr> sn \! | <bd cymr>8 \> sn <bd cymr> sn <bd cymr> sn <bd cymr> sn \! \bar ":|."

            \repeat percent 8 {<bd cymr>8 \mf sn <bd cymr> sn <bd cymr> sn <bd cymr> sn}
            \repeat percent 6 {<bd cymr>8 \p \< sn <bd cymr> sn <bd cymr> sn <bd cymr> sn} 
            <bd cymr>8 \! \> sn <bd cymr> sn <bd cymr> sn <bd cymr> sn | <bd hh>4 r2. \!
            \repeat percent 8 {<bd cymr>8 \p sn <bd cymr> sn <bd cymr> sn <bd cymr> sn}
            \repeat percent 8 {<bd cymr>8 \mp sn <bd cymr> sn <bd cymr> sn <bd cymr> sn}
            \repeat percent 8 {<bd cymr>8 \mf sn <bd cymr> sn <bd cymr> sn <bd cymr> sn}
            \repeat percent 6 {<bd cymr>8 \p \< sn <bd cymr> sn <bd cymr> sn <bd cymr> sn} 
            <bd cymr>8 \! \> sn <bd cymr> sn <bd cymr> sn <bd cymr> sn | <bd hh>4 r2. \!
            \repeat percent 15 {bd8 hh hh bd hh hh ss hh} | <bd hh>4 r4 tommh8 tommh tomfh tomfh |
            \repeat percent 6 {<bd cymr>8 \mp sn <bd cymr> sn <bd cymr> sn <bd cymr> sn} |
            <bd cymr>8 \< sn <bd cymr> sn <bd cymr> sn <bd cymr> sn | <bd cymr>8 sn <bd cymr> sn <bd cymr> sn <bd cymr> sn \! |
            \repeat percent 6 {<bd cymr>8 \f sn <bd cymr> sn <bd cymr> sn <bd cymr> sn} |
            <bd cymr>8 \> sn <bd cymr> sn <bd cymr> sn <bd cymr> sn | <bd cymr>8 sn <bd cymr> sn <bd cymr> sn <bd cymr> sn \! |
            \repeat percent 4 {<bd hh>8 \p sn <bd hh> sn <bd hh> sn <bd hh> sn} |
            \repeat percent 4 {<bd hh>8 \< sn <bd hh> sn <bd hh> sn <bd hh> sn} |
            \repeat percent 3 {<bd cymr>8 \f sn <bd cymr> sn <bd cymr> sn <bd cymr> sn} | <bd hh>4 r2. |
            \repeat percent 4 {<bd cymr>8 \> sn <bd cymr> sn <bd cymr> sn <bd cymr> sn} |
            \repeat percent 7 {<bd hh>8 \p sn <bd hh> sn <bd hh> sn <bd hh> sn} | 
            <bd hh>16 hh hh hh <bd hho>8 sn16 sn <bd cymc>4 r4 \bar "|."


        }
    }
}