\version "2.26.0"
#(set-global-staff-size 26)
\header {
    title = "Белеет мой парус"
    arranger = "А.С.Колесник"
}
\score {
    \new DrumStaff \with {
        instrumentName = "Drums"
    }
    {
        \set countPercentRepeats = ##t
        \set repeatCountVisibility = #(every-nth-repeat-count-visible 1)
        \drummode {
            \time 4/4
            \tempo 4 = 140
            \repeat percent 4 {<bd cymr>8 \f \> sn <bd cymr>8 sn <bd cymr>8 sn <bd cymr>8 sn }
            \repeat percent 8 {bd8 \segno \p hh bd8 hh bd8 hh bd8 hh}
            \repeat percent 8 {<bd hh>8 \mp ss <bd hh>8 ss <bd hh>8 ss <bd hh>8 ss }
            \textMark \markup \bold \box "Pripev"
            \repeat percent 8 {<bd cymr>8 sn4:32 sn8 <bd cymr>8 sn <bd cymr> sn }
            \bar ".|:"
            \repeat percent 4 {<bd cymr>8 sn4:32 sn8 <bd cymr>8 sn <bd cymr> sn}
            <bd cymr>4 \coda <sn cymc> <bd cymr>8 sn <bd cymr>8 sn | <bd cymr>4 <sn cymc> <bd cymr>8 sn <bd cymr>8 sn |
            <bd sn hh> 8 sn <bd hh>8 sn <bd hh>8 sn <bd hh>8 sn | <bd sn hh> 8 sn <bd hh>8 sn <bd hh>8 sn <bd hh>8 sn \segno
            \bar ":|." 
            <bd cymr>4 \coda <sn cymc>2 <sn cymr>4 | <bd cymr>4 <sn cymc>2 <sn cymr>4 | sn4 sn8 sn(sn) sn sn4|sn8 sn sn sn(sn) sn sn sn16 sn |
            \repeat percent 4 {<bd cymr>8 sn4:32 sn8 <bd cymr>8 sn <bd cymr> sn}
            <bd cymr>4 <sn cymc>2 <sn cymr>4 | <bd cymr>4 <sn cymc>2 <sn cymr>4 |
            \repeat percent 4 {<bd sn cymr>8 \f sn16 sn <bd sn>8 <sn cymc>4 sn8 <bd cymr>8 sn }
            <bd sn cymr>4 <bd sn cymr>8 <bd sn cymr>(<bd sn cymr>) <bd sn cymr> <bd sn cymc>4 
            \bar "|."
        }
    }
}