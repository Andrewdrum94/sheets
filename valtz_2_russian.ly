\version "2.26.0"
\header {
    title = "Вальс №2 (Русский)"
    arranger = "A.Kolesnik"
    composer = "Шостакович"
}
\score {
    \new DrumStaff \with {
        instrumentName = "Drum Set"
        shortInstrumentName = "Drms"
    } {
        \set countPercentRepeats = ##t
        \set repeatCountVisibility = #(every-nth-repeat-count-visible 1)
        \drummode {
            \time 3/4
            r2. |
        }
    }
    \layout {}
}