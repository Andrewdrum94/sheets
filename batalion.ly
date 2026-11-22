\version "2.26.0"
% automatically converted by musicxml2ly from storage/downloads/MAX/НАМ НУЖНА ОДНА ПОБЕДА - Бас-гитара - 2025-02-19 2345.musicxml
\pointAndClickOff

%% additional definitions required by the score:
hideNote =
  \tweak Dots.transparent ##t
  \tweak NoteHead.transparent ##t
  \tweak NoteHead.no-ledgers ##t
  \tweak Stem.transparent ##t
  \tweak Accidental.transparent ##t
  \tweak Rest.transparent ##t
  \tweak TabNoteHead.transparent ##t \etc

#(define-markup-command (square layout props arg)
   (markup?)
   (let* ((stil (interpret-markup layout props arg))
          (x-size (interval-length (ly:stencil-extent stil X)))
          (y-size (interval-length (ly:stencil-extent stil Y)))
          (axis (if (> x-size y-size) Y X)))
     (interpret-markup
      layout props
      #{
        \markup \box \with-dimension-from #axis \rotate #90 #arg #arg
      #})))

D = \tweak Stem.direction #DOWN \etc
U = \tweak Stem.direction #UP \etc


\header {
  subtitle = \markup \normal-text \normalsize \fontsize #5.664
  "НАМ НУЖНА ОДНА ПОБЕДА"
  composer = \markup \normal-text \normalsize \fontsize #1.193 "Б.Окуджава"
  poet = \markup \normal-text \normalsize \fontsize #3.246 "Бас-гитара"
  copyright = \markup \normal-text \normalsize \fontsize #0.429
  "инстр.Г.Панкратова"
  "work-title" = "НАМ НУЖНА ОДНА ПОБЕДА"
  "id: copyright" = "инстр.Г.Панкратова"
  "id: composer" = "Б.Окуджава"
  "id: lyricist" = "Б.Окуджава"
  "id: software" = \markup \column {
    \line { "Sibelius 22.9.0" }
    \line { "Direct export, not from Dolet" }
  }
  "id: encoding-date" = "2026-10-25"
  "id: encoder" = Happy
  "id: encoding-description" = "Sibelius / MusicXML 3.0"
}
#(set-global-staff-size 22.76220472440945)
\paper {
  paper-width = 21.0\cm
  paper-height = 29.7\cm
  top-margin = 1.5\cm
  bottom-margin = 1.5\cm
  left-margin = 1.5\cm
  right-margin = 1.5\cm
  system-system-spacing.basic-distance = 14.0
  indent = 2.12\cm
  short-indent = 1.41\cm
}
\layout {
  \context {
    \Staff
    printKeyCancellation = ##f
  }
  \context {
    \Score
    autoBeaming = ##f
  }
}
PartPOneVoiceOne = \relative d {
  \clef "bass" \numericTimeSignature \time 4/4 \key d \minor \transposition c
  \partial 2. \pageBreak \tempo \markup \normal-text \concat { \fontsize #0.776
    \bold Andante " " \normal-text \smaller { \fontsize #-2 \rhythm { 4 } \char
      ##x2009 = \char ##x2009 80 } } \tempo \markup \normal-text \concat {
    \normal-text \smaller { \fontsize #-2 \rhythm { 4 } \char ##x2009 = \char
      ##x2009 55 } } \hideNote r2 \D d2 \fermata -\tweak font-size #0.073 -\mp | % 1
  r2 \D d2 \fermata | % 2
  r2 \fermata \tempo \markup \normal-text \concat { \normal-text \smaller {
      \fontsize #-2 \rhythm { 4 } \char ##x2009 = \char ##x2009 95 } } \U <a a>4
  -. -. | % 3
  \time 6/4 \U a4 -. \U a4 -. \U a4 -. \U a4 -. \U a4 -. \U a4 -. \break | % 4
  \numericTimeSignature \time 4/4 \D d4 -. \D d4 -. \D d4 -. \tweak
  TupletBracket.stencil ##f \tweak TupletBracket.direction #DOWN \tuplet 3/2 {
    \D d8*255/256 -. [ \D d8*255/256 -. \D d8*129/128 -. ] }
  \bar "||" % 5
  \mark \markup \square \fontsize #2.126 "1" \D d4 -. \D d4 -. \D d4 -. \D d4 -.
  | % 6
  \D d4 -. \tweak TupletBracket.stencil ##f \tweak TupletBracket.direction #DOWN
  \tuplet 3/2 {
    \D d8*255/256 -. [ \D d8*255/256 \D d8*129/128 ] }
  \D d4 -. \D d4 -. | % 7
  \D g4 -. \D g4 -. \D g4 -. \D g4 -. \break | % 8
  \D g4 -. \tweak TupletBracket.stencil ##f \tweak TupletBracket.direction #DOWN
  \tuplet 3/2 {
    \D g8*255/256 [ \D g8*255/256 \D g8*129/128 ] }
  \D g4 -. \D g4 -. | % 9

  \barNumberCheck #10
  \U c,4 -. \U c4 -. \U c4 -. \U c4 -. | % 10
  \D f4 -. \tweak TupletBracket.stencil ##f \tweak TupletBracket.direction #DOWN
  \tuplet 3/2 {
    \D f8*255/256 -. [ \D f8*255/256 \D f8*129/128 ] }
  \D f4 -. \D f4 -. | % 11
  \D e4 -. \D e4 -. \U a,4 -. \U a4 -. | % 12
  \D d4 -. \U c4 -. \U bes4 -. \U a4 -. \break | % 13
  \D e'4 -. \D e4 -. \U a,4 -. \U cis4 -. | % 14
  \D d4 -. \tweak TupletBracket.stencil ##f \tweak TupletBracket.direction #DOWN
  \tuplet 3/2 {
    \D d8*255/256 -. [ \D d8*255/256 \D d8*129/128 ] }
  \D d4 -. \U c!4 -> \bar "||" % 15
  \mark \markup \square \fontsize #2.126 "2" \D f4 -. \D f4 -. \U c4 -. \U c4 -.
  | % 16
  \D f4 -. \D f4 -. \D f4 -. \D f4 -. | % 17
  \D f4 -. \D f4 -. \U a,4 -. \U a4 -. \break | % 18
  \U bes4 -. \U bes4 -. \U bes4 -. \U bes4 -. | % 19

  \barNumberCheck #20
  \D g'4 -. \D g4 -. \U c,4 -. \U c4 -. | % 20
  \D f4 -. \tweak TupletBracket.stencil ##f \tweak TupletBracket.direction #DOWN
  \tuplet 3/2 {
    \D f8*255/256 -. [ \D f8*255/256 \D f8*129/128 ] }
  \D f4 -. \D f4 -. | % 21
  \D e4 -. \D e4 -. \U a,4 -. \U a4 -. | % 22
  \D d4 -. \U c4 -. \U bes4 -. \U a4 -. \break | % 23
  \D e'4 -. \D e4 -. \D a4 -. \D a4 -. | % 24
  \D d,4 -. -\markup \fontsize #0.776 \bold "Più mosso" \D d4 -. \D d4 -. \tweak
  TupletBracket.stencil ##f \tweak TupletBracket.direction #DOWN \tuplet 3/2 {
    \D d8*255/256 -. [ \D d8*255/256 -. \D d8*129/128 -. ] }
  \bar "||" % 25
  \mark \markup \square \fontsize #2.126 "3" \tempo \markup \normal-text \concat
  { \normal-text \smaller { \fontsize #-2 \rhythm { 4 } \char ##x2009 = \char
      ##x2009 105 } } \D d4 -. \D d4 -. \D d4 -. \tweak TupletBracket.stencil
  ##f \tweak TupletBracket.direction #DOWN \tuplet 3/2 {
    \D d8*255/256 -. [ \D d8*255/256 \D d8*129/128 ] }
  \break | % 26
  \D d4 -. \D d4 -. \D d4 -. \tweak TupletBracket.stencil ##f \tweak
  TupletBracket.direction #DOWN \tuplet 3/2 {
    \D d8*255/256 -. [ \D d8*255/256 \D d8*129/128 ] }
  | % 27
  \time 6/4 \D g4 -. \D g4 -. \D g4 -. \D g4 -. \D g4 -. \D g4 -. | % 28
  \numericTimeSignature \time 4/4 \D d4 -. \D d4 -. \D d4 -. \tweak
  TupletBracket.stencil ##f \tweak TupletBracket.direction #DOWN \tuplet 3/2 {
    \D d8*255/256 -. [ \D d8*255/256 -. \D d8*129/128 -. ] }
  \bar "||" % 29

  \barNumberCheck #30
  \break \D d4 -. \D d4 -. \D d4 -. \D d4 -. | % 30
  \D d4 -. \tweak TupletBracket.stencil ##f \tweak TupletBracket.direction #DOWN
  \tuplet 3/2 {
    \D d8*255/256 -. [ \D d8*255/256 -. \D d8*129/128 -. ] }
  \D d4 -. \D d4 -. | % 31
  \D g4 -. \D g4 -. \D g4 -. \D g4 -. | % 32
  \D g4 -. \tweak TupletBracket.stencil ##f \tweak TupletBracket.direction #DOWN
  \tuplet 3/2 {
    \D g8*255/256 -. [ \D g8*255/256 -. \D g8*129/128 -. ] }
  \D g4 -. \D g4 -. | % 33
  \U c,4 -. \U c4 -. \U c4 -. \U c4 -. \break | % 34
  \D f4 -. \tweak TupletBracket.stencil ##f \tweak TupletBracket.direction #DOWN
  \tuplet 3/2 {
    \D f8*255/256 -. [ \D f8*255/256 -. \D f8*129/128 -. ] }
  \D f4 -. \D f4 -. | % 35
  \D e4 -. \D e4 -. \U a,4 -. \U a4 -. | % 36
  \D d4 -. \U c4 -. \U bes4 -. \U a4 -. | % 37
  \D e'4 -. \D e4 -. \U a,4 -. \U cis4 -. | % 38
  \D d4 -. \tweak TupletBracket.stencil ##f \tweak TupletBracket.direction #DOWN
  \tuplet 3/2 {
    \D d8*255/256 -. [ \D d8*255/256 -. \D d8*129/128 -. ] }
  \D d4 -. \U c!4 -> \bar "||" % 39

  \barNumberCheck #40
  \pageBreak \mark \markup \square \fontsize #2.126 "4" \tempo \markup
  \normal-text \concat { \normal-text \smaller { \fontsize #-2 \rhythm { 4 }
      \char ##x2009 = \char ##x2009 110 } } \D f4 -. \D f4 -. \U c4 -. \U c4 -.
  | % 40
  \D f4 -. \D f4 -. \D f4 -. \D f4 -. | % 41
  \D f4 -. \D f4 -. \U a,4 -. \U a4 -. | % 42
  \U bes4 -. \U bes4 -. \U bes4 -. \U bes4 -. | % 43
  \D g'4 -. \D g4 -. \U c,4 -. \U c4 -. \break | % 44
  \D f4 -. \tweak TupletBracket.stencil ##f \tweak TupletBracket.direction #DOWN
  \tuplet 3/2 {
    \D f8*255/256 -. [ \D f8*255/256 \D f8*129/128 ] }
  \D f4 -. \D f4 -. | % 45
  \D e4 -. \D e4 -. \D a4 -. \D a4 -. | % 46
  \D bes4 -. \D a4 -. \D g4 -. \D f4 -. | % 47
  \D e4 -. \D e4 -. \D a4 -. \D a4 -. -\< | % 48
  \D d,4 -. -> \D d4 -. -> \D d4 -. -> \tweak TupletBracket.stencil ##f \tweak
  TupletBracket.direction #DOWN \tuplet 3/2 {
    \D d8*255/256 -. -> [ \! \D d8*255/256 -. -> \D d8*129/128 -. -> ] -\tweak
    font-size #0.073 -\ff }
  \bar "||" % 49

  \barNumberCheck #50
  \break \mark \markup \square \fontsize #2.126 "5" \tempo \markup \normal-text
  \concat { \normal-text \smaller { \fontsize #-2 \rhythm { 4 } \char ##x2009 =
      \char ##x2009 115 } } \D d4 -. -> \D d4 -. -> \D d4 -. -> \tweak
  TupletBracket.stencil ##f \tweak TupletBracket.direction #DOWN \tuplet 3/2 {
    \D d8*255/256 -. -> [ \D d8*255/256 -. -> \D d8*129/128 -. -> ] }
  | % 50
  \D d4 -. -> \D d4 -. -> \D d4 -. -> \tweak TupletBracket.stencil ##f \tweak
  TupletBracket.direction #DOWN \tuplet 3/2 {
    \D d8*255/256 -. -> [ \D d8*255/256 -. -> \D d8*129/128 -. -> ] }
  \bar "||" % 51
  \time 6/4 \D g4 -. \D g4 -. \D g4 -. \D g4 -. \D g4 -. \D g4 -. \break | % 52
  \numericTimeSignature \time 4/4 \D d4 -. \D d4 -. \D d4 -. \tweak
  TupletBracket.stencil ##f \tweak TupletBracket.direction #DOWN \tuplet 3/2 {
    \D d8*255/256 -. [ \D d8*255/256 -. \D d8*129/128 -. ] }
  | % 53
  \D d4 -. -\> -\markup "rit." \D d4 -. \D d4 -. \tweak TupletBracket.stencil
  ##f \tweak TupletBracket.direction #DOWN \tuplet 3/2 {
    \D d8*255/256 -. [ \D d8*255/256 -. \D d8*129/128 -. ] }
  | % 54
  \D d4 -. \D d4 -. \D d4 -. \tweak TupletBracket.stencil ##f \tweak
  TupletBracket.direction #DOWN \tuplet 3/2 {
    \D d8*255/256 -. [ \D d8*255/256 -. \! \D d8*129/128 -. ] -\tweak font-size
    #0.073 -\p }
  | % 55
  \D d4 -. r4 \fermata r2 \fermata \bar "||" % 56
  \break \mark \markup \square \fontsize #2.126 "6" d1 \fermata -\tweak
  font-size #0.073 -\p -\markup \fontsize #0.776 \bold "Meno mosso" | % 57
  g1 ^~ \fermata | % 58
  \D g2 \fermata r2 \fermata \bar "||" % 59

  \barNumberCheck #60
  \tempo \markup \normal-text \concat { \normal-text \smaller { \fontsize #-2
      \rhythm { 4 } \char ##x2009 = \char ##x2009 90 } } \U c,4 -. -\tweak
  font-size #0.073 -\p -\markup \fontsize #0.776 \bold "A tempo" \U c4 -. \U c4
  -. \U c4 -. | % 60
  \D f4 -. \D f4 -. \D f4 -. \D f4 -. \break | % 61
  \D e4 -. \D e4 -. \U a,4 -. \U a4 -. | % 62
  \U bes4 -. -\< \U bes4 -. \U bes4 -. \U bes4 -. | % 63
  \D e4 -. -\markup "accel." \D e4 -. \U a,4 -. \U cis4 -. | % 64
  \D d4 -. \tweak TupletBracket.stencil ##f \tweak TupletBracket.direction #DOWN
  \tuplet 3/2 {
    \D d8*255/256 -. -> [ \D d8*255/256 -> \D d8*129/128 -> ] }
  \D d4 -. -> \! \U c!4 -> -\tweak font-size #0.073 -\f \bar "||" % 65
  \break \mark \markup \square \fontsize #2.126 "7" \tempo \markup \normal-text
  \concat { \normal-text \smaller { \fontsize #-2 \rhythm { 4 } \char ##x2009 =
      \char ##x2009 110 } } \D f4 -. \D f4 -. \U c4 -. \U c4 -. | % 66
  \D f4 -. \tweak TupletBracket.stencil ##f \tweak TupletBracket.direction #DOWN
  \tuplet 3/2 {
    \D f8*255/256 -. [ \D f8*255/256 -. \D f8*129/128 -. ] }
  \D f4 -. \D f4 -. | % 67
  \D f4 -. \D f4 -. \U a,4 -. \U a4 -. | % 68
  \U bes4 -. \tweak TupletBracket.stencil ##f \tweak TupletBracket.direction #UP
  \tuplet 3/2 {
    \U bes8*255/256 -. [ \U bes8*255/256 -. \U bes8*129/128 -. ] }
  \U bes4 -. \U bes4 -. | % 69

  \barNumberCheck #70
  \D g'4 -. \D g4 -. \U c,4 -. \U c4 -. \break | % 70
  \D f4 -. \tweak TupletBracket.stencil ##f \tweak TupletBracket.direction #DOWN
  \tuplet 3/2 {
    \D f8*255/256 -. [ \D f8*255/256 \D f8*129/128 ] }
  \D f4 -. \D f4 -. | % 71
  \D e4 -. \D e4 -. \U a,4 -. \U a4 -. | % 72
  \U bes4 -. -\< \tweak TupletBracket.stencil ##f \tweak TupletBracket.direction
  #UP \tuplet 3/2 {
    \U bes8*255/256 -. [ \U bes8*255/256 -. \U bes8*129/128 -. ] }
  \U bes4 -. \U bes4 -. \break | % 73
  \D e4 -. \D e4 -. \U a,4 -. \after 8 \! \U a4 -. | % 74
  \D d4 -. -> -\tweak font-size #0.073 -\ff \tweak TupletBracket.stencil ##f
  \tweak TupletBracket.direction #DOWN \tuplet 3/2 {
    \D d8*255/256 -. -> [ \D d8*255/256 -> \D d8*129/128 -> ] }
  \D d4 -. -> r4 \bar "|."
}

PartPOneVoiceOneChords = \chordmode {
  \partial 2. s2 s4 | % 1
  d2:m d2:m | % 2
  s2 s4 s4 | % 3
  g4:m6/+a s4 s4 s4 s4 s4 | % 4
  s4 d4:m s4 s1024*85 s1024*85 s512*43 \bar "||" % 5
  s4 d4:m s4 s4 | % 6
  s4 d8*85/128:m s1024*85 s512*43 s4 s4 | % 7
  s4 s4 g4:m s4 | % 8
  s4 s1024*85 s1024*85 s512*43 s4 s4 | % 9

  \barNumberCheck #10
  s4 s8 s8 c4 s4 | % 10
  s8 s8 f8*85/128 s1024*85 s512*43 s4 s4 | % 11
  s8 s8 e4:7 s8 s8 a4:7 | % 12
  s4 d4:m s4 s4 | % 13
  s8 s8 e4:7 s8 s8 a4:7 | % 14
  s8 s8 d8*85/128:m s1024*85 s512*43 s4 c4:7 \bar "||" % 15
  s512*85 s512*43 f4 s8 s8 c4:7 | % 16
  s8. s16 f4 s4 s4 | % 17
  s8 s8 f4 s8 s8 a4:7 | % 18
  s4 bes4 s4 s4 | % 19

  \barNumberCheck #20
  g4:m s4 s4 c4:7 | % 20
  s4 f8*85/128 s1024*85 s512*43 s4 s4 | % 21
  e4:7 s4 s4 a4:7 | % 22
  s4 s4 bes4 s4 | % 23
  s4 e4:7 s4 a4:7 | % 24
  s4 d4:m s4 s1024*85 s1024*85 s512*43 \bar "||" % 25
  s4 d4:m s4 s1024*85 s1024*85 s512*43 | % 26
  s4 d4:m s4 s1024*85 s1024*85 s512*43 | % 27
  s4 a4:7/+g s4 s4 s4 s4 | % 28
  s4 d4:m s4 s1024*85 s1024*85 s512*43 \bar "||" % 29

  \barNumberCheck #30
  s4 d4:m s4 s4 | % 30
  s4 d8*85/128:m s1024*85 s512*43 s4 s4 | % 31
  s4 s4 g4:m s4 | % 32
  s4 s1024*85 s1024*85 s512*43 s4 s4 | % 33
  s4 s8 s8 c4 s4 | % 34
  s8 s8 f8*85/128 s1024*85 s512*43 s4 s4 | % 35
  s8 s8 e4:7 s8 s8 a4:7 | % 36
  s4 d4:m s4 s4 | % 37
  s8 s8 e4:7 s8 s8 a4:7 | % 38
  s8 s8 d8*85/128:m s1024*85 s512*43 s4 c4:7 \bar "||" % 39

  \barNumberCheck #40
  s512*85 s512*43 f4 s8 s8 c4:7 | % 40
  s8. s16 f4 s4 s4 | % 41
  s8 s8 f4 s8 s8 a4:7 | % 42
  s4 bes4 s4 s4 | % 43
  g4:m s4 s4 c4:7 | % 44
  s4 f8*85/128 s1024*85 s512*43 s4 s4 | % 45
  e4:7 s4 s4 a4:7 | % 46
  s4 s4 bes4 s4 | % 47
  s4 e4:7 s4 a4:7 | % 48
  s4 d4:m s4 s1024*85 s1024*85 s512*43 \bar "||" % 49

  \barNumberCheck #50
  s4 d4:m s4 s1024*85 s1024*85 s512*43 | % 50
  s4 d4:m s4 s1024*85 s1024*85 s512*43 \bar "||" % 51
  s4 a4:7/+g s4 s4 s4 s4 | % 52
  s4 d4:m s4 s1024*85 s1024*85 s512*43 | % 53
  s4 d4:m s4 s1024*85 s1024*85 s512*43 | % 54
  s4 d4:m s4 s1024*85 s1024*85 s512*43 | % 55
  s4 s4 s2 \bar "||" % 56
  s1 | % 57
  s1 | % 58
  s2 s2 \bar "||" % 59

  \barNumberCheck #60
  s4 s8 s8 c4 s4 | % 60
  s8 s8 f4 s4 s4 | % 61
  s8 s8 e4:7 s8 s8 a4:7 | % 62
  s4 bes4 s4 s4 | % 63
  e4:7 s4 s8 s8 a4:7 | % 64
  s8 s8 d8*85/128:m s1024*85 s512*43 s4 c4:7 \bar "||" % 65
  s512*85 s512*43 f4 s8 s8 c4:7 | % 66
  s8. s16 f8*85/128 s1024*85 s512*43 s4 s4 | % 67
  s8 s8 f4 s8 s8 a4:7 | % 68
  s4 bes8*85/128 s1024*85 s512*43 s4 s4 | % 69

  \barNumberCheck #70
  g4:m s4 s4 c4:7 | % 70
  s4 f8*85/128 s1024*85 s512*43 s4 s4 | % 71
  e4:7 s4 s4 a4:7 | % 72
  s4 s1024*85 s1024*85 s512*43 bes4 s4 | % 73
  s4 e4:7 s4 a4:7 | % 74
  s8 s8 d8*85/128:m s1024*85 s512*43 s4 s4 \bar "|."
}


% The score definition
\score {
  <<
    \context ChordNames = "PartPOneVoiceOneChords" {
      \PartPOneVoiceOneChords
    }
    \new Staff = "P1" <<
      \set Staff.instrumentName = \markup \concat { "Бас-гитара" }
      \set Staff.shortInstrumentName = \markup \concat { "Бас" }
      \context Staff <<
        \override Staff.BarLine.allow-span-bar = ##f
        \mergeDifferentlyDottedOn
        \mergeDifferentlyHeadedOn
        \context Voice = "PartPOneVoiceOne" {
          \PartPOneVoiceOne
        }
      >>
    >>
  >>
  \layout {}
  % To create MIDI output, uncomment the following line:
  % \midi { \tempo 4 = 100 }
}

