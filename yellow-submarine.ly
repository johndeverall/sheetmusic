\version "2.24.4"

\header {
  title = "Yellow Submarine"
  arranger = "Arr. John Deverall"
  instrument = "For Descant Recorder"
  tagline = ""
}

melody = \relative c'' {
  \key g \major
  \time 4/4

  \repeat volta 2 {
    \partial 4*1
    b8. c16 | 
    d2~  d8. b16 a8. b16 | 
    g2. b8. b16 |                            
    a8. \melisma g16 e4~ e8. \melismaEnd e16 b'8. b16 | 
    a2. b8. c16 |
    d2~ d8. b16 a8. b16 |
    g2. b8. b16 | 
    a8. \melisma g16 e4~ e8. \melismaEnd e16 b'8. b16 |
  }

  \alternative {
    % 1st time bar: only 3 beats to "balance" the 1-beat pickup
    {
      \partial 4*3
      a2. :||          % 3 beats
    }
    % 2nd time bar: a full 4/4 bar
    {
      a1 \bar "||"       % 4 beats – change this to whatever you actually want
    }
  }

  d4 d d d8. e16 | 
  a,8. a16 a8. a16 a4 r4 | 
  a8. a16 a8. a16 a4 r4 | 
  g8. g16 g8. g16 g2 |
  
  d'4 d d d8. e16 | 
  a,8. a16 a8. a16 a4 r4 | 
  a8. a16 a8. a16 a4 r4 | 
  g8. g16 g8. g16 g4 b8. c16 |
  d2~  d8. b16 a8. b16 |
  g2. b8. b16 | 
  a8. g16 e4~ e8. e16 b'8. b16 |
  a2. b8. c16 | 
  d2~  d8. b16 a8. b16 |
  g2. b8. b16 |  
  a8. \melisma g16 \melismaEnd e2 b'8. b16 |
  a1 |
  d4 d d d8. e16 | 
  a,8. a16 a8. a16 a4 r4 |
  a8. a16 a8. a16 a4 r4 | 
  g8. g16 g8. g16 g2 |      
  d'4 d d d8. e16 |
  a,8. a16 a8. a16 a4 r4 |
  a8. a16 a8. a16 a4 r4 |
  g8. g16 g8. g16 g2 \bar ":|."
}

verseone = \lyricmode {
  In the
  town where I was
  born lived a
  man __ who
  sailed the
  sea. And he 
  told us of his life
  in the land __ of 
  sub -- ma -- rines.  
  rines.
  We all live in a 
  yel -- low sub -- ma -- rine. 
  Yel -- low sub -- ma -- rine, 
  Yel -- low sub -- ma -- rine. 
  We all live in a 
  yel -- low sub -- ma -- rine, 
  yel -- low sub -- ma -- rine, 
  yel -- low sub -- ma -- rine.
  As we live a life of ease. 
  Ev -- rey one of us 
  has all we need. Sky of blue
  and sea of green in our yel __ low   
  sub mar ine.
  We all live in a
  yel -- low sub -- ma -- rine. 
  Yel -- low sub -- ma -- rine, 
  Yel -- low sub -- ma -- rine. 
  We all live in a yel -- low sub -- ma -- rine. 
  Yel -- low sub ma rine, 
  Yel -- low sub -- ma -- rine.
}

versetwo = \lyricmode {
  So we sailed on to the sun
  till we found __ the sea of green
  and we lived be -- neath the waves
  in our yellow __ submarine.
}



\score {
  <<
    \new Voice = "mel" { \melody }
    \new Lyrics \lyricsto "mel" \verseone
    \new Lyrics \lyricsto "mel" \versetwo
  >>
}
