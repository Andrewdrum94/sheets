\version "2.26.0"
\header {
    title = "Fellini 8 1/2"
    arranger = "A.Kolesnik"
    composer = "Nino Rota"
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
            \tempo 4 = 100
            \partial 16*5 r16 r4 |
            \repeat percent 12 {bd8 sn bd sn bd sn bd sn } 
            \override TextSpanner.bound-details.left.text = "rit."
            bd8 \startTextSpan sn bd sn bd sn bd sn \stopTextSpan
            \tempo "A tempo"
            \override TextSpanner.bound-details.left.text = "accel."
            \repeat percent 8 {bd8 ss bd ss bd ss bd ss }
            \repeat volta 2 {\repeat percent 10 {<bd hh>8 ss <bd hh> ss <hh bd> ss <bd hh> ss }}
            \textMark \markup \box "Clarinette"
            \repeat percent 2 {<bd cymr>8 sn <bd cymr>8 sn <bd cymr>8 sn <bd hh> sn | <bd cymr>8 sn <bd cymr>8 sn <bd cymr>8 sn16 sn sn8 sn }
            <bd cymr>8 sn <bd cymr>8 sn <bd cymr>8 sn <bd hh> sn | <bd cymr>8 sn <bd hh>8 sn <bd cymr>8 sn <bd hh> sn |
            <bd cymr>8 sn <bd hh>8 sn <bd cymr>8 sn <bd hh> sn | <bd cymr>8 \< sn <bd cymr>8 sn <bd cymr>8 sn <bd cymr>16. sn32 sn8 \! |
            \repeat percent 10 {<bd hh>8 \f <hh sn> <bd hh> <sn hh> <hh bd> <sn hh> <bd hh> <sn hh> }
            \textMark \markup \box "Accordeon"
            \repeat percent 8 {<bd hh>8 \mf <hh sn> <bd hh> <sn hh> <hh bd> <sn hh> <bd hh> <sn hh>}
            \repeat percent 4 {<bd hh>8 \mp <hh sn> <bd hh> <sn hh> <hh bd> <sn hh> <bd hh> <sn hh>}
            \repeat percent 10 {<bd cymr>8 sn4:32 sn8 <bd cymr>8 sn <bd cymr>8 sn}
            \repeat volta 2{\repeat percent 2 {<bd cymr>8 \f sn <bd cymr>8 sn <bd cymr>8 sn <bd hh> sn | <bd cymr>8 sn <bd cymr>8 sn <bd cymr>8 sn16 sn sn8 sn }
            <bd cymr>8 sn <bd cymr>8 sn <bd cymr>8 sn <bd hh> sn | <bd cymr>8 sn <bd hh>8 sn <bd cymr>8 sn <bd hh> sn |
            <bd cymr>8 \startTextSpan \< sn <bd cymr>8 sn <bd cymr>8 sn <bd cymr>8 sn | <bd cymr>8 sn <bd cymr>8 sn <bd cymr>8 sn <bd sn cymr> sn16 sn \stopTextSpan \! |}
            \repeat percent 2 {<bd cymc>8 \ff sn <bd cymc>8 sn <bd cymc>8 sn <bd hh> sn | <bd cymc>8 sn <bd cymc>8 sn <bd cymc>8 sn16 sn sn8 sn }
            <bd cymc>8 sn <bd cymc>8 sn <bd cymc>8 sn <bd hh> sn | <bd cymc>8 sn <bd hh>8 sn <bd cymc>8 sn <bd hh> sn |
            <bd cymr sn>8 sn16 sn sn8 sn <bd cymr sn>16 sn sn sn sn8 sn |
            <bd cymr sn>16 sn sn sn <bd sn>8 sn <bd sn cymr>4 <bd sn cymc>4 \bar "|."


        }
    }
    \layout {}
}