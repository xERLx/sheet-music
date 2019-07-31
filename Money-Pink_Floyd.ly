\header {
  title = "Untitled"
  composer = "Composer"
}

pause = {
\time 7/4
r1~r2~r4|
r1~r2~r4|
r1~r2~r4|
r1~r2~r4|
}

verseOne =  {
\time 7/4
  fis'8 fis'4 r1 r8 d'8 d' |
  b4 r1 r4 d'4 |
  b4 d' b fis a b e'~|
  e' b r1 r4 |

  fis'8 fis'4 r1 r8 d'8 d' |
  b4 r1 r4 d'4 |
  b4 d' b fis a b e'~|
  e' b r1 r4 |
}

bridgeOne = {
\time 4/4
  fis'4 fis' fis'8 cis' fis4|
  a cis' fis'8 fis' f'4|
\time 6/4 
  e'8 b e4 g a b cis'
\time 7/4
  b4. r1
}

verseBaseline = {
\time 7/4
  b,,4 b,8 fis, b,,4 fis,, a,, b,, d, |
  b,,4 b,8 fis, b,,4 fis,, a,, b,, d, |
  b,,4 b,8 fis, b,,4 fis,, a,, b,, d, |
  b,,4 b,8 fis, b,,4 fis,, a,, b,, d, |

  b,,4 b,8 fis, b,,4 fis,, a,, b,, d, |
  b,,4 b,8 fis, b,,4 fis,, a,, b,, d, |
  b,,4 b,8 fis, b,,4 fis,, a,, b,, d, |
  b,,4 b,8 fis, b,,4 fis,, a,, b,, d, |
}

bridgeBaseline = {
\time 4/4
  fis,2 fis,8 cis, fis,,4|
  a,, cis, fis, f, |
\time 6/4 
  e,8 b,, e,,4 g,, a,, b,, d,
\time 7/4
  b,,4 b,8 fis, b,,4 fis,, a,, b,, d, |
  b,,4 b,8 fis, b,,4 fis,, a,, b,, d, |
}


gesang = {\pause \pause \verseOne \bridgeOne}
bass = {\verseBaseline \verseBaseline \bridgeBaseline}

\score{
<<
  
  \new Staff {
    \clef treble
    \gesang
  }

  \new TabStaff {
    \set Staff.stringTunings = #guitar-tuning
    \gesang
  }
  \new TabStaff {
    \set Staff.stringTunings = \stringTuning <e, a, d g>
    \set TabStaff.minimumFret = #10
    \gesang
  }
  \new TabStaff {
    \set Staff.stringTunings = #bass-tuning
    \tabFullNotation
    \bass
  }
>>
\layout {}
\midi {
  \tempo 4 = 120
}
}