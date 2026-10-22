\version "2.26.0"
#(set-global-staff-size 18)
\header {
    title = "Маленький Оркестр"
    arranger = "A.Kolesnik"
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
            \tempo 4 = 80
            sn8 \f sn16 sn sn8 sn r4 sn:32 | <bd hho>8 \> <hh sn>16 sn16 <bd hho>8 <hh sn>8 <bd hho>8 <hh sn>16 sn16 <bd hho>8 <hh sn>8 |
            <bd hho>8 <hh sn>16 sn16 <bd hho>8 <hh sn>8 \! r2 | 
            \textMark \markup \bold \box "Kuplet 1"
            \repeat percent 7 {<bd hh>16 \p hh32 hh32 hh16-> hh-> <bd hh>16 hh hh-> hh <bd hh>16 hh32 hh32 hh16-> hh-> <bd hh>16 hh hh-> hh} |
            <bd hh>16 hh32 hh32 hh16-> hh-> <bd hh>16 hh hh-> hh <bd sn>8 sn16 sn sn8 bd |
            \textMark \markup \bold \box "Proigrysh"
            \repeat percent 4 {<bd hho>8 \mp <hh sn>16 sn16 <bd hho>8 <hh sn>8 <bd hho>8 <hh sn>16 sn16 <bd hho>8 <hh sn>8} |
            \textMark \markup \bold \box "Kuplet 2"
            \repeat percent 8 {<bd hho>8 \p hh16-> hh-> <bd hh>16 hh hh-> hh <bd hh>16 hh32 hh32 hh16-> hh-> <bd hh>16 hh hh-> hh}
            \textMark \markup \bold \box "Pripev"
            \repeat percent 8 {<bd cymr>8 \mp <cymr sn>16 sn16 <bd cymr>8 <cymr sn>8 <bd cymr>8 <cymr sn>16 sn16 <bd cymr>8 <cymr sn>8}
            \bar ".|:"
            \textMark \markup \bold \box "Solo"
            \repeat percent 8 {<bd cymr>8 \mf <cymr sn>16 sn16 <bd cymr>8 <cymr sn>8 <bd cymr>8 <cymr sn>16 sn16 <bd cymr>8 <cymr sn>8} \bar ":|."
            \textMark \markup \bold \box "Proigrysh la-la-la"
            \repeat percent 8 {<bd hho>8 \mp <hh sn>16 sn16 <bd hho>8 <hh sn>8 <bd hho>8 <hh sn>16 sn16 <bd hho>8 <hh sn>8} |
            \repeat percent 3 {<bd hh>8 \p <hh sn>16 sn16 <bd hh>8 <hh sn>8 <bd hh>8 <hh sn>16 sn16 <bd hh>8 <hh sn>8} | 
            \dimTextDim \repeat percent 3 {<bd hh>8 \> <sn hh>16 sn <bd hh>8 <hh sn> <bd sn>8 sn16 sn sn8 bd } | <bd hh>8 <hh sn>16 sn16 <bd hh>8 <hh sn>8 \! <bd sn>8 \sfz sn16 sn sn8 bd|
            \time 1/4 
            r4 \fermata |
            \time 4/4
            \repeat percent 12 {<bd cymr>8 \mf <cymr sn>16 sn16 <bd cymr>8 <cymr sn>8 <bd cymr>8 <cymr sn>16 sn16 <bd cymr>8 <cymr sn>8} |
            <bd hho>8 <hh sn>16 sn16 <bd hho>8 <hh sn>8 r2 | <bd sn cymc>4-^ r2.
            \bar "|."
            
        }
    }
    \layout {}
}