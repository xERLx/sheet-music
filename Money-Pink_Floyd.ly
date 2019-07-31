\header {
  title = "Untitled"
  composer = "Composer"
}
verseOne =  {
  fis'8 fis'4 r1 r8 d'8 d' |
  b4 r1 r4 d'4 |
  b4 d' b fis a b e'~|
  e' b r1 r4 |

  fis'8 fis'4 r1 r8 d'8 d' |
  b4 r1 r4 d'4 |
  b4 d' b fis a b e'~|
  e' b r1 r4 |
}

<<
  \time 7/4
  \new Staff {
    \clef treble
    \verseOne
  }

  \new TabStaff {
    \set Staff.stringTunings = #guitar-tuning
    \verseOne
  }
  \new TabStaff {
    \set Staff.stringTunings = \stringTuning <e, a, d g>
    \set TabStaff.minimumFret = #10
    \set TabStaff.tabFullNotation = true
    \verseOne
  }
  \new TabStaff {
    \set Staff.stringTunings = #bass-tuning
    \set TabStaff.tabFullNotation = true
    \set TabStaff.minimumFret = #5
    \verseOne
  }
>>