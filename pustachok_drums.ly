\version "2.26.0"
% automatically converted by musicxml2ly from C:/Users/Andrey/sheets/pustachok_drums.musicxml
\pointAndClickOff

%% additional definitions required by the score:
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

% Change the number of staff lines to `num-lines`.
%
% The argument `clef` makes the function emit a clef with the given
% name.  If `clef` contains the substring `"percussion"` or `"tab"`,
% use both even and odd staff line positions.  If set to `""`, do the
% same but don't set `Staff.clefPosition` (which means that no clef
% gets triggered).  If `clef` is set to any other value, use even
% staff line positions only and set `Staff.clefPosition`, which
% triggers a clef if its value changes.
%
% The optional argument `properties` is an alist of properties to
% control the appearance of both the staff and the clef:
%
% * `details` is a list of staff line numbers that should be
%   displayed.  An empty list suppresses any display of staff lines;
%   omitting the argument means to display all lines.
% * `staff-color` holds the color of the staff.
% * `clef-font-size` holds the font size of the clef
% * `clef-color` holds the color of the clef.
%
% \staffLines [<properties>] <clef> <num-lines>

staffLines =
#(define-music-function (properties clef num-lines)
                        ((alist? '()) string? index?)
   (let* ((details (assoc-get 'details properties #f))
          (staff-color (assoc-get 'staff-color properties #f))
          (clef-color (assoc-get 'clef-color properties #f))
          (clef-font-size (assoc-get 'clef-font-size properties #f))
          (lines (or details (iota num-lines 1)))
          (only-even-pos (not (or (equal? clef "")
                                  (string-contains clef "percussion")
                                  (string-contains clef "tab"))))
          (offset (if only-even-pos
                      (if (even? num-lines) 1 0)
                      0))
          ;; MusicXML counts staff lines from the bottom.
          (delta (- -1 num-lines offset))
          (positions (filter (lambda (x) (<= x num-lines))
                             lines))
          (positions (map (lambda (x) (+ delta (* x 2)))
                      positions)))
     #{
       \stopStaff

       #(if staff-color
            #{
              \once \override Staff.StaffSymbol.color = #staff-color
            #})
       #(if clef-color
            #{
              \once \override Staff.Clef.color = #clef-color
            #})
       #(if clef-font-size
            #{
              \once \override Staff.Clef.font-size = #clef-font-size
            #})

       #(if (equal? clef "")
            #{
              \unset Staff.middleCPosition
              \unset Staff.middleCClefPosition
              % To suppress the clef inserted by default by LilyPond at the
              % beginning of a piece.
              \once \omit Staff.Clef
            #}
            #{ \clef #clef #})

       \override Staff.StaffSymbol.line-positions = #positions

       \applyContext
       #(lambda (ctx)
          (let* ((c (ly:context-find ctx 'Staff))
                 (clef-p (ly:context-property c 'clefPosition))
                 (middle-c-p (ly:context-property c 'middleCPosition))
                 (middle-c-clef-p (ly:context-property c 'middleCClefPosition))
                 (use-offset (not (string-contains clef "percussion")))
                 (delta (+ delta (if use-offset 6 0))))
            (when only-even-pos
              (ly:context-set-property! c 'clefPosition (+ clef-p delta))
              (ly:context-set-property! c 'forceClef #t))
            (ly:context-set-property! c 'middleCPosition (+ middle-c-p delta))
            (ly:context-set-property! c 'middleCClefPosition
                                      (+ middle-c-clef-p delta))))
       \startStaff
     #}))

D = \tweak Stem.direction #DOWN \etc
U = \tweak Stem.direction #UP \etc


\header {
  title = \markup \normal-text \normalsize "ПУСТЯЧОК"
  composer = \markup \normal-text \normalsize \fontsize #-0.793 "Л.Андерсон"
  copyright = \markup \normal-text \normalsize "Авторское право © "
  "work-title" = "ПУСТЯЧОК"
  "id: copyright" = "Авторское право © "
  "id: composer" = "Л.Андерсон"
  "id: software" = "MuseScore Studio 4.7.5"
  "id: encoding-date" = "2026-10-29"
  "id: encoder" = Happy
}
#(set-global-staff-size 19.916929133858268)
\paper {
  paper-width = 21.01\cm
  paper-height = 29.69\cm
  top-margin = 1.5\cm
  bottom-margin = 1.5\cm
  left-margin = 1.5\cm
  right-margin = 1.5\cm
  indent = 1.62\cm
  short-indent = 1.05\cm
}
\layout {
  \context {
    \Staff
    printKeyCancellation = ##f
    \override MultiMeasureRest.expand-limit = 1
  }
  \context {
    \Score
    skipBars = ##t
    doubleRepeatBarType = ":|.|:"
    autoBeaming = ##f
  }
}
PartPOneVoiceOne = \relative f'' {
  \staffLines "percussion" 5 \time 2/2 \key c \major \tempo \markup \normal-text
  \concat { \normal-text \smaller { \fontsize #-2 \rhythm { 4 } \char ##x2009 =
      \char ##x2009 280 } } \U \tweak style #'cross f4 \U c4 \U \tweak style
  #'cross f4 \U c4 | % 1
  \U \tweak style
  #'cross f4 \U c4 \U \tweak style #'cross f4 \U c4 | % 2
  \U \tweak style
  #'cross f4 \U c4 \U \tweak style #'cross f4 \U c4 | % 3
  \U \tweak style #'cross f2 \U c2 :32 | % 4
  \U <c \tweak style #'cross f>2 \U <c \tweak style #'cross f>2 | % 5
  \U <c \tweak style #'cross f>2 r4 \U <c \tweak style #'cross f>4 \break | % 6
  \U <c \tweak style #'cross f>4 \U <c \tweak style #'cross f>4 \U <c \tweak
    style #'cross f>4 \U <c \tweak style #'cross f>4 | % 7
  \U <c \tweak style #'cross a'>4 r4 r2 \repeat volta 2 {
    | % 8
    \mark \markup \box \bold "1" \U \tweak style #'cross g'4 -\p \U c,4 \U
    \tweak style #'cross g'4 \U c,4 | % 9

    \barNumberCheck #10
    \U \tweak style #'cross g'4 \U c,4 \U
    \tweak style #'cross g'4 \U c,4 | % 10
    \U \tweak style #'cross g'4  \U c,4 \U
    \tweak style #'cross g'4 \U c,4 | % 11
    \U \tweak style #'cross g'4  \U c,4 \U
    \tweak style #'cross g'4 \U c,4 | % 12
     \U \tweak style #'cross g'4  \U c,4 \U
    \tweak style #'cross g'4 \U c,4 \break | % 13
     \U \tweak style #'cross g'4  \U c,4 \U
    \tweak style #'cross g'4 \U c,4 | % 14
    \U \tweak style #'cross g'4 \U \tweak style #'cross g4 \U \tweak style
    #'cross g4 \U \tweak style #'cross g4 | % 15
    \U \tweak style #'xcircle g4 \U c,8 [ \U c8 ] r8 \U c8 \U c4 | % 16
    \U \tweak style #'cross g'4 -\f \U c,4 \U \tweak style #'cross g'4 \U c,4 | % 17
    \U \tweak style #'cross g'4  \U c,4 \U \tweak style #'cross g'4 \U c,4 | % 18
    \U \tweak style #'cross g'4  \U c,4 \U \tweak style #'cross g'4 \U c,4
    \break | % 19

    \barNumberCheck #20
    \U \tweak style #'cross g'4  \U c,4 \U \tweak style #'cross g'4 \U c,4 | % 20
    \U \tweak style #'cross g'4  \U c,4 \U \tweak style #'cross g'4 \U c,4 | % 21
    \U \tweak style #'cross g'4  \U c,4 \U \tweak style #'cross g'4 \U c,4 | % 22
    \U \tweak style #'cross g'4  \U c,4 \U \tweak style #'cross g'4 \U c,4
    \alternative {
      \volta 1 {
        \once \override Score.VoltaBracket.text = \markup "1" | % 23
        \U <c \tweak style #'cross f>4 \U \tweak style #'cross f4 \U \tweak
        style #'cross f8 [ \U c8 ] \U c4 -\p }
      \volta 2 {
        \once \override Score.VoltaBracket.text = \markup "2" | % 24
        \U <c \tweak style #'cross f>4 \U \tweak style #'cross f4 \U \tweak
        style #'cross f8 [ \U c8 ] \U c4 -\f \bar "||" % 25
      }
    }
  }
  \break \mark \markup \box \bold "2" \U \tweak style #'cross f4 -\p \U c4 \U
  \tweak style #'cross f4 \U c4 | % 26
  \U \tweak style #'cross f4  \U c4 \U \tweak
  style #'cross f4 \U c4 | % 27
  \U \tweak style #'cross f4 \U c4 \U c4 \U <c \tweak style #'cross f>4 ( | % 28
  \U <c \tweak style #'cross f>4 \U c8 [ \U c8 ) ] r8 \U c8 \U c4 | % 29

  \barNumberCheck #30
  \U \tweak style #'cross f4 \U c4 \U \tweak style #'cross f4 \U c4 | % 30
  \U \tweak style #'cross f4 \U c4 \U \tweak style #'cross f4 \U c4 \break | % 31
  \U \tweak style #'cross f4 \U c4 \U \tweak style #'cross f4 \U c4 | % 32
  \U \tweak style #'cross f4 \U \tweak style #'cross f4 \U \tweak style #'cross
  f8 [ \U c8 ] \U c4 | % 33
  \U \tweak style #'cross f4 \U c4 \U \tweak style #'cross f4 \U c4 | % 34
  \U \tweak style #'cross f4 \U c4 \U \tweak style #'cross f4 \U c4 | % 35
  \U <c \tweak style #'cross f>4 r4 r4 \U <c \tweak style #'cross a'>4 ( -\sfz | % 36
  \oneVoice \U <c \tweak style #'cross a'>4 ) \U c4 \U c8 [ \U c8 \U c8 \U c8 ]
  \break | % 37
  \voiceOne \U \tweak style #'cross f4 -\mf \U c4 \U \tweak style #'cross f4 \U
  c4 | % 38
  \U \tweak style #'cross f4  \U c4 \U \tweak style #'cross f4 \U c4 | % 39

  \barNumberCheck #40
  \U \tweak style #'cross g'4 \U \tweak style #'cross g4 \U \tweak style #'cross
  g4 \U \tweak style #'cross g4 | % 40
  \U \tweak style #'cross g4 \U \tweak style #'cross g4 \U \tweak style #'cross
  g8 [ \U c,8 ] \U <c \tweak style #'cross g'>4 \bar "||" % 41
  \mark \markup \box \bold "3" \U \tweak style #'cross g'4 \U c,4 \U \tweak
  style #'cross g'4 \U c,4 | % 42
  \U \tweak style #'cross g'4 \U c,4 \U \tweak
  style #'cross g'4 \U c,4 \break | % 43
  \U \tweak style #'cross g'4 \U c,4 \U \tweak
  style #'cross g'4 \U c,4 | % 44
  \U \tweak style #'cross g'4 \U c,4 \U \tweak
  style #'cross g'4 \U c,4 | % 45
  \U \tweak style #'cross g'4 \U c,4 \U \tweak
  style #'cross g'4 \U c,4 | % 46
  \U \tweak style #'cross g'4 \U c,4 \U \tweak
  style #'cross g'4 \U c,4 | % 47
  \U \tweak style #'cross g'4 \U \tweak style #'cross g4 \U \tweak style #'cross
  g4 \U \tweak style #'cross g4 | % 48
  \U \tweak style #'xcircle g4 \U c,8 [ \U c8 ] r8 \U c8 \U c4 \break | % 49

  \barNumberCheck #50
  \U \tweak style #'cross g'4 -\f \U c,4 \U \tweak style #'cross g'4 \U c,4 | % 50
  \U \tweak style #'cross g'4 \U c,4 \U \tweak style #'cross g'4 \U c,4 | % 51
  \U \tweak style #'cross g'4 \U c,4 \U \tweak style #'cross g'4 \U c,4 | % 52
  \U \tweak style #'cross g'4 \U c,4 \U \tweak style #'cross g'4 \U c,4 | % 53
  \U \tweak style #'cross g'4 \U c,4 \U \tweak style #'cross g'4 \U c,4 | % 54
  \U \tweak style #'cross g'4 \U c,4 \U \tweak style #'cross g'4 \U c,4 | % 55
  \U \tweak style #'cross g'4 \U c,4 \U \tweak style #'cross g'4 \U c,4 | % 56
  \U \tweak style #'cross g'4 \U c,4 \U \tweak style #'cross g'4 \U c,4
  \break | % 57
  \U \tweak style #'cross g'4  \U c,4 \U \tweak style #'cross g'4 \U c,4 | % 58
  \U \tweak style #'cross g'4 \U c,4 \U \tweak style #'cross g'4 \U c,4 | % 59

  \barNumberCheck #60
  \U \tweak style #'cross g'4  \U c,4 \U \tweak style #'cross g'4 \U c,4 | % 60
  \U \tweak style #'cross f2 \U c2 :32 \bar "||" % 61
  \mark \markup \box \bold "4" \U \tweak style #'cross f4 -\f \U c4 \U \tweak
  style #'cross f4 \U c4 | % 62
  \U \tweak style #'cross f4  \U c4 \U \tweak
  style #'cross f4 \U c4 | % 63
  \U \tweak style #'cross f4 \U c4 \U \tweak
  style #'cross f4 \U c4 \pageBreak | % 64
  \U \tweak style #'cross f4 r4 \U <c \tweak style #'cross g'>2 -\sfz | % 65
  \U \tweak style #'cross f4 \U c4 \U \tweak style #'cross f4 \U c4 | % 66
  \U \tweak style #'cross f4 \U c4 \U \tweak style #'cross f4 \U c4 | % 67
  \U \tweak style #'cross f4 \U <c \tweak style #'cross f>4 \U \tweak style
  #'cross f4 \U \tweak style #'cross f8 [ \U c8 ] | % 68
  \U c4 -\> \U c4 \U c4 r4 \! \break \repeat volta 2 {
    | % 69

    \barNumberCheck #70
    \mark \markup \box \bold "5" \U <c \tweak style #'cross g'>4 -\mf r4 r2 | % 70
    \oneVoice r2 \voiceOne \U <c \tweak style #'cross g'>4 -\p r4 | % 71
    \U <c \tweak style #'cross g'>4 r4 r2 | % 72
    \oneVoice r4 \U c4 -\< \U e4 \voiceOne r4 <>\! | % 73
    \U <c \tweak style #'cross g'>4 -\mf r4 r2 \break | % 74
    \oneVoice r2 \voiceOne \U <c \tweak style #'cross g'>4 -\p r4 | % 75
    \U <c \tweak style #'cross g'>4 r4 r2 | % 76
    \oneVoice r4 \U c4 -\< \U e8 [ \U e8 ] \voiceOne r4 <>\! | % 77
    \U <c \tweak style #'cross g'>4 r4 r2 | % 78
    \oneVoice r2 \voiceOne \U <c \tweak style #'cross g'>4 -\p r4 | % 79

    \barNumberCheck #80
    \U <c \tweak style #'cross g'>4 r4 r2 \break | % 80
    \oneVoice r4 \U c4 \U e8 [ \U e8 ] \voiceOne r4 \alternative {
      \volta 1 {
        \once \override Score.VoltaBracket.text = \markup "1" | % 81
        \U <c \tweak style #'cross f>4 r4 r4 \U <c \tweak style #'cross f>4 | % 82
        r2 -\< \U <c \tweak style #'cross f>4 r4 | % 83
        r4 \U <c \tweak style #'cross f>4 r4 \U <c \tweak style #'cross g'>4 | % 84
        \oneVoice \U \tweak style #'cross f4 \U c4 \U e8 [ \U e8 ] \voiceOne r4
        \! }
      \volta 2 {
        \once \override Score.VoltaBracket.text = \markup "2" | % 85
        \U <c \tweak style #'cross f>4 \U <c \tweak style #'cross a'>2 \U <c
          \tweak style #'cross f>4 | % 86
        \U <c \tweak style #'cross f>4 -\< \U <c \tweak style #'cross a'>2 \U <c
          \tweak style #'cross f>4 | % 87
        \U <c \tweak style #'cross f>4 \U <c \tweak style #'cross a'>2 \after 8
        \! \U <c \tweak style #'cross f>4 }
    }
  }
  \break \repeat volta 2 {
    | % 88
    \mark \markup \box \bold "6" \U \tweak style #'cross g'4 -\f \U c,4 \U
    \tweak style #'cross g'4 \U c,4 | % 89

    \barNumberCheck #90
    \U \tweak style #'cross g'4  \U c,4 \U
    \tweak style #'cross g'4 \U c,4 | % 90
    \U \tweak style #'cross g'4 \U c,4 \U
    \tweak style #'cross g'4 \U c,4 | % 91
    \U \tweak style #'cross g'4 \U <c, \tweak style #'cross g'>4 \U \tweak style
    #'cross g'8 [ \U c,8 ] \U <c \tweak style #'cross g'>4 | % 92
    \U \tweak style #'cross g'4 \U c,4 \U \tweak style #'cross g'4 \U c,4 | % 93
    \U \tweak style #'cross g'4 \U c,4 \U \tweak style #'cross g'4 \U c,4 | % 94
    \U \tweak style #'cross g'4 \U c,4 \U \tweak style #'cross g'4 \U c,4 | % 95
    \U \tweak style #'xcircle g'4 \U <c, \tweak style #'cross g'>8 [ \U c8 ] \U
    \tweak style #'cross g'8 [ \U c,8 ] \U c4 | % 96
    \U \tweak style #'cross g'4 \U c,4 \U \tweak style #'cross g'4 \U c,4 \break
    | % 97
    \U \tweak style #'cross g'4 \U c,4 \U \tweak style #'cross g'4 \U c,4 | % 98
    \U \tweak style #'cross g'4 \U c,4 \U \tweak style #'cross g'4 \U c,4 | % 99

    \barNumberCheck #100
    \U \tweak style #'cross g'4 \U <c, \tweak style #'cross g'>4 \U \tweak style
    #'cross g'8 [ \U c,8 \U c8 ] r8 \alternative {
      \volta 1 {
        \once \override Score.VoltaBracket.text = \markup "1" | % 100
        \oneVoice \U <c \tweak style #'cross g'>4 r4 r2 | % 101
        R1 | % 102
        \voiceOne \U <c \tweak style #'cross f>4 \U \tweak style #'cross f4 \U
        <c \tweak style #'cross f>4 \U \tweak style #'cross f4 \break | % 103
        \U <c \tweak style #'cross f>4 \U \tweak style #'cross f4 \U c8 [ \U c8
        ] r4 }
      \volta 2 {
        \once \override Score.VoltaBracket.text = \markup "2" | % 104
        \U \tweak style #'cross f4 r4 \U \tweak style #'cross f4 \U <c \tweak
          style #'cross f>4 | % 105
        \U \tweak style #'cross f4 \U <c \tweak style #'cross f>4 \U <c \tweak
          style #'cross f>2 | % 106
        \U \tweak style #'cross f4 \U <c \tweak style #'cross f>4 \U \tweak
        style #'cross f4 \U <c \tweak style #'cross f>4 }
    }
  }
  | % 107
  \U \tweak style #'cross g'4 r4 \U c,2 :32 -\sfz \break | % 108
  \U \tweak style #'cross a'2 \U <c, \tweak style #'cross f>2 | % 109

  \barNumberCheck #110
  \U <c \tweak style #'cross f>4 \U <c \tweak style #'cross a'>2 \U <c \tweak
    style #'cross f>4 | % 110
  \U <c \tweak style #'cross f>4 \U c4 \U <c \tweak style #'cross f>4 r4 | % 111
  \U <c \tweak style #'cross g'>4 r4 r2 \bar "||" % 112
  \mark \markup \box \bold "7" \U \tweak style #'cross g'4 -\p \U c,4 \U
  \tweak style #'cross g'4 \U c,4 | % 113
  \U \tweak style #'cross g'4  \U c,4 \U
  \tweak style #'cross g'4 \U c,4 \break | % 114
  \U \tweak style #'cross g'4  \U c,4 \U
  \tweak style #'cross g'4 \U c,4 | % 115
  \U \tweak style #'cross g'4  \U c,4 \U
  \tweak style #'cross g'4 \U c,4 | % 116
  \U \tweak style #'cross g'4 \U c,4 \U
  \tweak style #'cross g'4 \U c,4 | % 117
  \U \tweak style #'cross g'4  \U c,4 \U
  \tweak style #'cross g'4 \U c,4 | % 118
  \U \tweak style #'cross g'4 \U \tweak style #'cross g4 \U \tweak style #'cross
  g4 \U \tweak style #'cross g4 | % 119

  \barNumberCheck #120
  \U \tweak style #'cross g4 \U \tweak style #'cross g4 \U \tweak style #'cross
  g8 [ \U c,8 ] \U <c \tweak style #'cross g'>4 | % 120
  \U \tweak style #'cross g'4 -\f \U c,4 \U \tweak style #'cross g'4 \U c,4
  \break | % 121
  \U \tweak style #'cross g'4  \U c,4 \U \tweak style #'cross g'4 \U c,4 | % 122
  \U \tweak style #'cross g'4  \U c,4 \U \tweak style #'cross g'4 \U c,4 | % 123
  \U \tweak style #'cross g'4  \U c,4 \U \tweak style #'cross g'4 \U c,4 | % 124
  \U \tweak style #'cross g'4  \U c,4 \U \tweak style #'cross g'4 \U c,4 | % 125
  \U \tweak style #'cross g'4  \U c,4 \U \tweak style #'cross g'4 \U c,4 | % 126
  \U \tweak style #'cross g'4  \U c,4 \U \tweak style #'cross g'4 \U c,4 | % 127
  \U <c \tweak style #'cross f>4 \U \tweak style #'cross f4 \U \tweak style
  #'cross f8 [ \U c8 ] \U c4 \bar "||" % 128
  \pageBreak \mark \markup \box \bold "8" \U \tweak style #'cross f4 -\p \U c4
  \U \tweak style #'cross f4 \U c4 | % 129

  \barNumberCheck #130
  \U \tweak style #'cross f4  \U c4 \U \tweak
  style #'cross f4 \U c4 | % 130
  \U \tweak style #'cross f4 \U c4 \U c4 \U <c \tweak style #'cross f>4 ( -\sfz
  | % 131
  \U <c \tweak style #'cross f>4 -\> \U c8 [ \U c8 ) ] r8 \U c8 \after 1*239/960
  \! \U c4 | % 132
  \U \tweak style #'cross f4 \U c4 \U \tweak style #'cross f4 \U c4 | % 133
  \U \tweak style #'cross f4 \U c4 \U \tweak style #'cross f4 \U c4 \break | % 134
  \U \tweak style #'cross f4 \U c4 \U \tweak style #'cross f4 \U c4 | % 135
  \U \tweak style #'cross f4 \U \tweak style #'cross f4 \U \tweak style #'cross
  f8 [ \U c8 ] \U c4 | % 136
  \U \tweak style #'cross f4 \U c4 \U \tweak style #'cross f4 \U c4 | % 137
  \U \tweak style #'cross f4 \U c4 \U \tweak style #'cross f4 \U c4 | % 138
  \U <c \tweak style #'cross f>4 r4 r4 \U <c \tweak style #'cross a'>4 ( -\sfz | % 139

  \barNumberCheck #140
  \oneVoice \U <c \tweak style #'cross a'>4 ) \U c4 \U c8 [ \U c8 \U c8 \U c8 ]
  \break | % 140
  \voiceOne \U \tweak style #'cross f4 -\mf \U c4 \U \tweak style #'cross f4 \U
  c4 | % 141
  \U \tweak style #'cross f4  \U c4 \U \tweak style #'cross f4 \U c4 | % 142
  \U \tweak style #'cross g'4 \U \tweak style #'cross g4 \U \tweak style #'cross
  g4 \U \tweak style #'cross g4 | % 143
  \U \tweak style #'cross g4 \U \tweak style #'cross g4 \U \tweak style #'cross
  g8 [ \U c,8 ] \U <c \tweak style #'cross g'>4 \bar "||" % 144
  \mark \markup \box \bold "9" \U \tweak style #'cross g'4 -\p \U c,4 \U
  \tweak style #'cross g'4 \U c,4 | % 145
  \U \tweak style #'cross g'4  \U c,4 \U
  \tweak style #'cross g'4 \U c,4 \break | % 146
  \U \tweak style #'cross g'4  \U c,4 \U
  \tweak style #'cross g'4 \U c,4 | % 147
  \U \tweak style #'cross g'4  \U c,4 \U
  \tweak style #'cross g'4 \U c,4 | % 148
  \U \tweak style #'cross g'4  \U c,4 \U
  \tweak style #'cross g'4 \U c,4 | % 149

  \barNumberCheck #150
  \U \tweak style #'cross g'4  \U c,4 \U
  \tweak style #'cross g'4 \U c,4 | % 150
  \U \tweak style #'cross g'4 \U \tweak style #'cross g4 \U \tweak style #'cross
  g4 \U \tweak style #'cross g4 | % 151
  \U \tweak style #'cross g4 \U \tweak style #'cross g4 \U \tweak style #'cross
  g8 [ \U c,8 ] \U <c \tweak style #'cross g'>4 | % 152
  \U \tweak style #'cross g'4 -\f \U c,4 \U \tweak style #'cross g'4 \U c,4
  \break | % 153
  \U \tweak style #'cross g'4 -\f \U c,4 \U \tweak style #'cross g'4 \U c,4 | % 154
  \U \tweak style #'cross g'4 -\f \U c,4 \U \tweak style #'cross g'4 \U c,4 | % 155
  \U \tweak style #'cross g'4 -\f \U c,4 \U \tweak style #'cross g'4 \U c,4 | % 156
  \U \tweak style #'cross g'4 -\f \U c,4 \U \tweak style #'cross g'4 \U c,4 | % 157
  \U \tweak style #'cross g'4 -\f \U c,4 \U \tweak style #'cross g'4 \U c,4 | % 158
  \U \tweak style #'cross g'4 -\f \U c,4 \U \tweak style #'cross g'4 \U c,4 | % 159

  \barNumberCheck #160
  \U <c \tweak style #'cross f>4 \U \tweak style #'cross f4 \U \tweak style
  #'cross f8 [ \U c8 ] \U c4 \break | % 160
  \U \tweak style #'cross g'4 -\f \U c,4 \U \tweak style #'cross g'4 \U c,4 | % 161
  \U \tweak style #'cross g'4 -\f \U c,4 \U \tweak style #'cross g'4 \U c,4 | % 162
  \U \tweak style #'cross g'4 -\f \U c,4 \U \tweak style #'cross g'4 \U c,4 | % 163
  \U <c \tweak style #'cross f>4 \U \tweak style #'cross f4 \U \tweak style
  #'cross f8 [ \U c8 ] \U c4 \bar "||" % 164
  \mark \markup \box \bold "10" \U \tweak style #'cross g'4 -\f \U c,4 \U
  \tweak style #'cross g'4 \U c,4 | % 165
  \U \tweak style #'cross g'4  \U c,4 \U
  \tweak style #'cross g'4 \U c,4 \break | % 166
  \U \tweak style #'cross g'4 -\p \U c,4 \U \tweak style #'cross g'4 \U c,4 | % 167
  \U \tweak style #'cross g'4  \U c,4 \U \tweak style #'cross g'4 \U c,4 | % 168
  \U \tweak style #'cross g'4 -\f \U c,4 \U \tweak style #'cross g'4 \U c,4 | % 169

  \barNumberCheck #170
  \U \tweak style #'cross g'4 \U c,4 \U \tweak style #'cross g'4 \U c,4 | % 170
  \U <c \tweak style #'cross f>8 r8 r4 r2 | % 171
  \U <c \tweak style #'cross f>8 r8 r4 r2 \break | % 172
  \U <c \tweak style #'cross g'>4 -\p r4 r4 \U <c \tweak style #'cross g'>4 | % 173
  \U <c \tweak style #'cross g'>4 r4 r4 \U <c \tweak style #'cross g'>4 | % 174
  \U <c \tweak style #'cross g'>4 r4 r4 \U <c \tweak style #'cross g'>4 | % 175
  \U <c \tweak style #'cross g'>4 r4 r4 \U <c \tweak style #'cross g'>4 | % 176
  \U c4 \U c4 \U c4 \U c4 \break | % 177
  \U c4 \U c4 \U c4 \U c4 | % 178
  \U c4 \U c4 \U c4 \U c4 | % 179

  \barNumberCheck #180
  \U c4 \U c4 \U c4 \U c4 | % 180
  \U <c \tweak style #'cross f>8 r8 r4 r2 | % 181
  \oneVoice R1 | % 182
  \break \voiceOne \U \tweak style #'cross g'4 -\f \U c,4 \U \tweak style
  #'cross g'4 \U c,4 | % 183
  \U \tweak style #'cross g'4  \U c,4 \U \tweak style #'cross g'4 \U c,4 | % 184
  \U <c \tweak style #'cross f>4 \U c8 [ \U c8 ] \U c4 \U c4 | % 185
  \U <c \tweak style #'cross f>4 r4 \U <c \tweak style #'cross a'>4 -\sfz r4
  \bar "|."
}

PartPOneVoiceTwo = \relative f' {
  \staffLines "percussion" 5 \time 2/2 \key c \major \D f4 r4 \D f4 r4 | % 1
  \D f4 r4 \D f4 r4 | % 2
  \D f4 r4 \D f4 r4 | % 3
  \D f2 r2 | % 4
  \D f2 \D f2 | % 5
  \D f2 r4 \D f4 \break | % 6
  \D f4 \D f4 \D f4 \D f4 | % 7
  \D f4 r4 r2 \repeat volta 2 {
    | % 8
    \D f4 r4 \D f4 r4 | % 9

    \barNumberCheck #10
    \D f4 r4 \D f4 r4 | % 10
    \D f4 r4 \D f4 r4 | % 11
    \D f4 r4 \D f4 r4 | % 12
    \D f4 r4 \D f4 r4 | % 13
    \D f4 r4 \D f4 r4 | % 14
    \D f4 r4 r2 | % 15
    \D f4 r4 r2 | % 16
    \D f4 r4 \D f4 r4 | % 17
    \D f4 r4 \D f4 r4 | % 18
    \D f4 r4 \D f4 r4 | % 19

    \barNumberCheck #20
    \D f4 r4 \D f4 r4 | % 20
    \D f4 r4 \D f4 r4 | % 21
    \D f4 r4 \D f4 r4 | % 22
    \D f4 r4 \D f4 r4 \alternative {
      \volta 1 {
        \once \override Score.VoltaBracket.text = \markup "1" | % 23
        \D f4 r4 r2 }
      \volta 2 {
        \once \override Score.VoltaBracket.text = \markup "2" | % 24
        \D f4 r4 r2 \bar "||" % 25
      }
    }
  }
  \break \D f4 r4 \D f4 r4 | % 26
  \D f4 r4 \D f4 r4 | % 27
  \D f4 r4 r4 \D f4 | % 28
  \D f4 r4 r2 | % 29

  \barNumberCheck #30
  \D f4 r4 \D f4 r4 | % 30
  \D f4 r4 \D f4 r4 | % 31
  \D f4 r4 \D f4 r4 | % 32
  \D f4 r4 r2 | % 33
  \D f4 r4 \D f4 r4 | % 34
  \D f4 r4 \D f4 r4 | % 35
  \D f4 \D f4 \D f4 r4 s1 | % 37
  \D f4 r4 \D f4 r4 | % 38
  \D f4 r4 \D f4 r4 | % 39

  \barNumberCheck #40
  \D f4 r4 r2 | % 40
  \D f4 r4 r2 \bar "||" % 41
  \D f4 r4 \D f4 r4 | % 42
  \D f4 r4 \D f4 r4 | % 43
  \D f4 r4 \D f4 r4 | % 44
  \D f4 r4 \D f4 r4 | % 45
  \D f4 r4 \D f4 r4 | % 46
  \D f4 r4 \D f4 r4 | % 47
  \D f4 r4 r2 | % 48
  \D f4 r4 r2 | % 49

  \barNumberCheck #50
  \D f4 r4 \D f4 r4 | % 50
  \D f4 r4 \D f4 r4 | % 51
  \D f4 r4 \D f4 r4 | % 52
  \D f4 r4 \D f4 r4 | % 53
  \D f4 r4 \D f4 r4 | % 54
  \D f4 r4 \D f4 r4 | % 55
  \D f4 r4 \D f4 r4 | % 56
  \D f4 r4 \D f4 r4 | % 57
  \D f4 r4 \D f4 r4 | % 58
  \D f4 r4 \D f4 r4 | % 59

  \barNumberCheck #60
  \D f4 r4 \D f4 r4 | % 60
  \D f2 r2 \bar "||" % 61
  \D f4 r4 \D f4 r4 | % 62
  \D f4 r4 \D f4 r4 | % 63
  \D f4 r4 \D f4 r4 \pageBreak | % 64
  \D f4 r4 \D f2 | % 65
  \D f4 r4 \D f4 r4 | % 66
  \D f4 r4 \D f4 r4 | % 67
  \D f4 \D f4 \D f4 \D f4 | % 68
  \D f4 \D f4 \D f4 \D f4 \repeat volta 2 {
    | % 69

    \barNumberCheck #70
    \D f4 r4 r2 s2 \D f4 r4 | % 71
    \D f4 r4 r2 s2. \D f4 | % 73
    \D f4 r4 r2 \break s2 \D f4 r4 | % 75
    \D f4 r4 r2 s2. \D f4 | % 77
    \D f4 r4 r2 s2 \D f4 r4 | % 79

    \barNumberCheck #80
    \D f4 r4 r2  s2. \D f4 \alternative {
      \volta 1 {
        \once \override Score.VoltaBracket.text = \markup "1" | % 81
        \D f4 \D f4 \D f4 r4 | % 82
        \D f4 \D f4 r4 \D f4 | % 83
        \D f4 r4 \D f4 r4 s2. \D f4 }
      \volta 2 {
        \once \override Score.VoltaBracket.text = \markup "2" | % 85
        \D f4 \D f2 \D f4 | % 86
        \D f4 \D f2 \D f4 | % 87
        \D f4 \D f2 \D f4 }
    }
  }
  \break \repeat volta 2 {
    | % 88
    \D f4 r4 \D f4 r4 | % 89

    \barNumberCheck #90
    \D f4 r4 \D f4 r4 | % 90
    \D f4 r4 \D f4 r4 | % 91
    \D f4 r4 \D f4 r4 | % 92
    \D f4 r4 \D f4 r4 | % 93
    \D f4 r4 \D f4 r4 | % 94
    \D f4 r4 \D f4 r4 | % 95
    \D f4 r4 \D f8 r8 r4 | % 96
    \D f4 r4 \D f4 r4 | % 97
    \D f4 r4 \D f4 r4 | % 98
    \D f4 r4 \D f4 r4 | % 99

    \barNumberCheck #100
    \D f4 r4 \D f4 r8 \D f8 \alternative {
      \volta 1 {
        \once \override Score.VoltaBracket.text = \markup "1" s1 | % 101
        s1 | % 102
        \D f4 \D f4 \D f4 \D f4  | % 103
        \D f4 \D f4 r4 \D f4 }
      \volta 2 {
        \once \override Score.VoltaBracket.text = \markup "2" | % 104
        \D f4 r4 \D f4 r4 | % 105
        \D f4 r4 \D f2 | % 106
        \D f4 r4 \D f4 r4 }
    }
  }
  | % 107
  \D f4 r4 r2  | % 108
  \D f2 r2 | % 109

  \barNumberCheck #110
  \D f4 \D f2 \D f4 | % 110
  \D f4 r4 \D f4 r4 | % 111
  \D f4 r4 r2 \bar "||" % 112
  \D f4 r4 \D f4 r4 | % 113
  \D f4 r4 \D f4 r4 | % 114
  \D f4 r4 \D f4 r4 | % 115
  \D f4 r4 \D f4 r4 | % 116
  \D f4 r4 \D f4 r4 | % 117
  \D f4 r4 \D f4 r4 | % 118
  \D f4 r4 r2 | % 119

  \barNumberCheck #120
  \D f4 r4 r2 | % 120
  \D f4 r4 \D f4 r4 | % 121
  \D f4 r4 \D f4 r4 | % 122
  \D f4 r4 \D f4 r4 | % 123
  \D f4 r4 \D f4 r4 | % 124
  \D f4 r4 \D f4 r4 | % 125
  \D f4 r4 \D f4 r4 | % 126
  \D f4 r4 \D f4 r4 | % 127
  \D f4 r4 r2 \bar "||" % 128
  \pageBreak \D f4 r4 \D f4 r4 | % 129

  \barNumberCheck #130
  \D f4 r4 \D f4 r4 | % 130
  \D f4 r4 r4 \D f4 | % 131
  \D f4 r4 r2 | % 132
  \D f4 r4 \D f4 r4 | % 133
  \D f4 r4 \D f4 r4 | % 134
  \D f4 r4 \D f4 r4 | % 135
  \D f4 r4 r2 | % 136
  \D f4 r4 \D f4 r4 | % 137
  \D f4 r4 \D f4 r4 | % 138
  \D f4 \D f4 \D f4 r4 s1 | % 140
  \D f4 r4 \D f4 r4 | % 141
  \D f4 r4 \D f4 r4 | % 142
  \D f4 r4 r2 | % 143
  \D f4 r4 r2 \bar "||" % 144
  \D f4 r4 \D f4 r4 | % 145
  \D f4 r4 \D f4 r4 | % 146
  \D f4 r4 \D f4 r4 | % 147
  \D f4 r4 \D f4 r4 | % 148
  \D f4 r4 \D f4 r4 | % 149

  \barNumberCheck #150
  \D f4 r4 \D f4 r4 | % 150
  \D f4 r4 r2 | % 151
  \D f4 r4 r2 | % 152
  \D f4 r4 \D f4 r4 | % 153
  \D f4 r4 \D f4 r4 | % 154
  \D f4 r4 \D f4 r4 | % 155
  \D f4 r4 \D f4 r4 | % 156
  \D f4 r4 \D f4 r4 | % 157
  \D f4 r4 \D f4 r4 | % 158
  \D f4 r4 \D f4 r4 | % 159

  \barNumberCheck #160
  \D f4 r4 r2 \break | % 160
  \D f4 r4 \D f4 r4 | % 161
  \D f4 r4 \D f4 r4 | % 162
  \D f4 r4 \D f4 r4 | % 163
  \D f4 r4 r2 \bar "||" % 164
  \D f4 r4 \D f4 r4 | % 165
  \D f4 r4 \D f4 r4 | % 166
  \D f4 r4 \D f4 r4 | % 167
  \D f4 r4 \D f4 r4 | % 168
  \D f4 r4 \D f4 r4 | % 169

  \barNumberCheck #170
  \D f4 r4 \D f4 r4 | % 170
  \D f8 r8 r4 r2 | % 171
  \D f8 r8 r4 r2 | % 172
  \D f4 r4 r4 \D f4 | % 173
  \D f4 r4 r4 \D f4 | % 174
  \D f4 r4 r4 \D f4 | % 175
  \D f4 r4 r4 \D f4 | % 176
  \D f4 r4 \D f4 r4 | % 177
  \D f4 r4 \D f4 r4 | % 178
  \D f4 r4 \D f4 r4 | % 179

  \barNumberCheck #180
  \D f4 r4 \D f4 r4 | % 180
  \D f8 r8 r4 r2 | % 181
  s1  | % 182
  \D f4 r4 \D f4 r4 | % 183
  \D f4 r4 \D f4 r4 | % 184
  \D f4 r4 \D f4 r4 | % 185
  \D f4 r4 \D f4 r4 \bar "|."
}


% The score definition
\score {
  <<
    \new Staff = "P1" <<
      \set Staff.instrumentName = "Drum Kit"
      \set Staff.shortInstrumentName = "Drms"
      \context Staff <<
        \override Staff.BarLine.allow-span-bar = ##f
        \mergeDifferentlyDottedOn
        \mergeDifferentlyHeadedOn
        \context Voice = "PartPOneVoiceOne" {
          \voiceOne \PartPOneVoiceOne
        }
        \context Voice = "PartPOneVoiceTwo" {
          \voiceTwo \PartPOneVoiceTwo
        }
      >>
    >>
  >>
  \layout {}
  % To create MIDI output, uncomment the following line:
  % \midi { \tempo 4 = 280 }
}

