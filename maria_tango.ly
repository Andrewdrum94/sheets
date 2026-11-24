\version "2.26.0"
#(set-global-staff-size 17)
\header {
    title = "Мария Танго"
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
            \textMark \markup \bold "Intro"
            \repeat percent 4 {hh8-> \f hh hh hh-> hh hh hh-> hh} |

            \textMark \markup \bold "Main theme Acco"
            \repeat percent 8 {<bd hh>8-> \f hh hh <bd hh>-> hh hh <bd ss hh>-> hh} |
            \repeat percent 4 {<bd sn>8-> sn16 sn <hhp sn>8 <bd sn>-> sn sn <bd sn hhp>-> sn | <bd sn>8-> sn16 sn <hhp sn>8 <bd sn>-> sn sn <bd sn hhp>16-> sn sn8}
            \repeat percent 8 {<bd hh>8-> \f hh16 hh hh8 <bd hh ss>-> hh hh <bd sn hh>-> hh} |
            \textMark \markup \bold \box "Shaker"
            \repeat percent 16 {<bd hh>8-> \f hh hh <bd hh>-> hh hh <bd ss hh>-> hh} |
            \repeat percent 8 {<bd hh>8-> \f hh hh <bd hh>-> hh hh <bd ss hh>-> hh} |
            \repeat percent 6 {bd8 hh ss bd hh ss bd hh16 ss } | <bd hh ss>8 hh <bd hh> <ss hh> <bd hh> hh <ss hh bd> hh |
            <bd hh>8 <sn hh> <bd hh> hh <sn hh> <bd hh> <sn hho> bd |
            \repeat percent 7 {<sn cymr bd>8 cymr16 cymr <bd cymr>8 <sn cymr> cymr <bd cymr> <sn cymr> cymr} | 
            <sn toml>8-> \< <sn toml> <sn toml> <sn toml>-> <sn toml> <sn toml> <sn toml>-> <sn toml> \! |
            \repeat percent 8 {<bd hh>8-> \f hh16 hh hh8 <bd hh>-> hh hh <bd hh>-> hh16 hh} | 
            \textMark \markup \bold \box "Без подструнника"
            \repeat percent 2 {<bd sn>8-> sn16 sn <hhp sn>8 <bd sn>-> sn sn <bd sn hhp>-> sn | <bd sn>8-> sn16 sn <hhp sn>8 <bd sn>-> sn sn <bd sn hhp>16-> sn sn8}
            <bd hh>4 r4. \fermata r8 \fermata r8 \fermata r8 \fermata | 
            \repeat percent 2 {<bd hh>8-> \> hh16 hh hh8 <bd hh>-> hh16 hh hh8 <bd hh>16-> hh hh hh }|
            <bd hh>4 \p r4 <bd cymr>4 r4 | <bd cymc>4 \pp r4 r2 \bar "|." 



        }
    }
}