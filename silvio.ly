\version "2.26.0"
\header {
title = "Silvio song"
arranger = "A.S.Kolesnik"
}
#(define my-drums-pitches '(
  (cst . castanets)
))
drumPitchNames = #(append my-drums-pitches drumPitchNames)

#(define custom-drum-style-list '(
  (bassdrum default #f -3)
  (snare default #f 1)
  (sidestick cross #f 1)
  (hihat cross #f 5)
  (openhihat xcircle #f 5)
  (closedhihat cross "stopped" 5)
  (pedalhihat cross #f -5)
  (ridecymbal cross #f 4)
  (crashcymbal cross #f 6)
  (castanets triangle #f 3)
))
\score {
\new DrumStaff \with {
    drumStyleTable = #(alist->hash-table custom-drum-style-list)
} {
  \drummode {
  \time 4/4
  \set countPercentRepeats = ##t
  \set repeatCountVisibility = #(every-nth-repeat-count-visible 1)
  \override TextSpanner.bound-details.left.text = \markup { \italic "ritenuto" }
  \textMark \markup \bold \box "Intro"

  \repeat percent 6 {<bd>8 \tuplet 3/2 {<cst hhp>16 cst cst} cst8 <hhp cst>8 <bd cst>8 <hhp cst>8 <bd cst>8 <hhp cst>8}
  \textMark \markup \bold \box "Verse"
  \repeat percent 7 {<bd>8 \tuplet 3/2 {<cst hhp>16 cst cst} cst8 <hhp cst>8 <bd cst>8 <hhp cst>8 <bd cst>8 <hhp cst>8 | <bd>8 \tuplet 3/2 {<cst hhp>16 cst cst} cst8 <hhp cst>8 <bd cst>8 <hhp cst>8 <bd cst>8 <hhp cst>8 }
  \textMark \markup \box "Instrumental break"
  \repeat percent 4 {<bd>8 \tuplet 3/2 {<cst hhp>16 cst cst} cst8 <hhp cst>8 <bd cst>8 <hhp cst>8 <bd cst>8 <hhp cst>8} |
  \repeat volta 3 {
  \textMark \markup \box "Chorus"
  \repeat percent 5 {<bd cymr>8 \tuplet 3/2 {<cst hhp>16 cst cst} cst8 <hhp cst>8 <bd cymr>8 <hhp cst>8 <bd cymr>8 <hhp cst>8}
  <bd cymr>4\startTextSpan cymr8 cymr8 cymr2:32\fermata | <bd cymr>8 cymr <bd cymr>8 cymr8 cymr2:32\fermata \stopTextSpan |}
  \alternative {
  {\repeat percent 2 {<bd cymr>8 \tuplet 3/2 {<cst hhp>16 cst cst} cst8 <hhp cst>8 <bd cymr>8 <hhp cst>8 <bd cymr>8 <hhp cst>8}
  <bd cymr>4\startTextSpan r4 cymr2:32\fermata\stopTextSpan |   \repeat percent 3 {<bd cymr>8 \tuplet 3/2 {<cst hhp>16 cst cst} cst8 <hhp cst>8 <bd cymr>8 <hhp cst>8 <bd cymr>8 <hhp cst>8}
  <bd cymr>4\startTextSpan cymr4 cymr2:32\fermata\stopTextSpan |<bd cymr>8 \tuplet 3/2 {<cst hhp>16 cst cst} cst8 <hhp cst>8 <bd cymr>8 <hhp cst>8 <bd cymr>8 <hhp cst>8 | <bd cymr>4 hh4:16 hh4:16 hh16 hh16 hho8 |
  }
  { \repeat percent 4 {<bd>8 \tuplet 3/2 {<cst hhp>16 cst cst} cst8 <hhp cst>8 <bd cst>8 <hhp cst>8 <bd cst>8 <hhp cst>8} |
  }
  { \repeat percent 4 {<bd>8 \tuplet 3/2 {<cst hhp>16 cst cst} cst8 <hhp cst>8 <bd cst>8 <hhp cst>8 <bd cst>8 <hhp cst>8 | <bd>8 \tuplet 3/2 {<cst hhp>16 cst cst} cst8 <hhp cst>8 <bd cst>8 <hhp cst>8 <bd cst>8 <hhp cst>8  }
  }
  }
  <bd cst>4 r2. | <bd cst>4 <bd cst> <bd cst> <bd cymr>4 \bar "|."



  }
}\layout {}
}

