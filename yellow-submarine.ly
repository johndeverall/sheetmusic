\version "2.24.4"

#(set-global-staff-size 18)

\header {
  title = "Yellow Submarine"
  arranger = "Arr. John Deverall"
  instrument = "Lead Sheet – Voice / Melody & Guitar"
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
  }

  \alternative {
    % 1st time bar: only 3 beats to "balance" the 1-beat pickup
    {
      a8. \melisma g16 e4~ e8. \melismaEnd e16 b'8. b16 |
      \partial 4*3
      a2. :||          % 3 beats
    }
    % 2nd time bar: a full 4/4 bar
    {
      a8. \melisma g16 e2 \melismaEnd b'8. b16 | 
      a1 \bar "||"       % 4 beats – change this to whatever you actually want
    }
  }

  d4 d d d8. e16 | 
  a,8. a16 a8. a16 a4 r4 | 
  a8. a16 a8. a16 a4 r4 | 
  g8. g16 g8. g16 g4 r4 |
  
  d'4 d d d8. e16 | 
  a,8. a16 a8. a16 a4 r4 | 
  a8. a16 a8. a16 a4 r4 | 
  g8. g16 g8. g16 g4 

  b8. c16 | d2~  d8. b16 a8. b16 |
  g2. b8. b16 | 
  a8. g16 e2 b'8. b16 |
  a2. 

  b8. c16 | d2~  d8. b16 a8. b16 |
  g2. r4^\markup { \bold "Band improv (free)" } |  
  r1 |
  r1 |

  d'4 d d d8. e16 | 
  a,8. a16 a8. a16 a4 r4 |
  a8. a16 a8. a16 a4 r4 | 
  g8. g16 g8. g16 g4 r4 |
      
  d'4 d d d8. e16 |
  a,8. a16 a8. a16 a4 r4 |
  a8. a16 a8. a16 a4 r4 |
  g8. g16 g8. g16 g4 r4 | 

  r2.^\markup { \bold "Band improv (free)" } r4 | r2. r4 | r2. r4 | r2. r4 |
  r2. r4 | r2. r4 | r2. r4 | r2. 

  b8. c16 | d2~  d8. b16 a8. b16 |
  g2. b8. b16 |
  a8. g16 e4~ e8. e16 b'8. b16 |
  a2.

  b8. c16 | d2~  d8. b16 a8. b16 |
  g2. b8. b16 |  
  a8. \melisma g16 \melismaEnd e2 b'8. b16 |
  a1 \noBreak | \bar ".|:" 

  d4 d d d8. e16 |
  a,8. a16 a8. a16 a4 r4 |
  a8. a16 a8. a16 a4 r4 |
  g8. g16 g8. g16 g4 r4 |
   
  d'4^\markup { \bold "2nd time fade out" } d d d8. e16 |
  a,8. a16 a8. a16 a4 r4 |
  a8. a16 a8. a16 a4 r4 |
  g8. g16 g8. g16 g4 r4 | \bar ":|."
}

verseone = \lyricmode {
  In the
  town where I was
  born lived a
  man __ who
  sailed to 
  sea. And he 
  told us of his life
  in the land __ of 
  sub -- ma -- rines.  
  \skip 1 
  \skip 1
  \skip 4 
  \skip 1 
  We all live in a 
  yel -- low sub -- ma -- rine. 
  Yel -- low sub -- ma -- rine, 
  Yel -- low sub -- ma -- rine. 
  We all live in a 
  yel -- low sub -- ma -- rine, 
  yel -- low sub -- ma -- rine, 
  yel -- low sub -- ma -- rine.

  And our friends are all a -- board
  Ma -- ny more of them live next door
  And the band be -- gins to play

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
  and we lived be -- neath the 
  waves in our 
  \skip 1
  \skip 2.
  \skip 4
  \skip 4
  \skip 1 
  yellow __ sub -- mar -- ine.
}

\score {
  <<
    \new ChordNames {
      \set majorSevenSymbol = \markup { Maj7 }
      \chordmode { 
        g4 | d2. c4 | g2. e4:min | a2.:min c4 | d2.:7 g4 |
        d2. c4 | g2. e4:min | a2.:min c4 | d2.:7 |
        a2.:min c4 | d1:7 |
     
        g1 | d1 | d1 | g1 | g1 | d1 | d1 | g1 |

        d2. c4 | g2. e4:min | a2.:min c4 | d2.:7 g4 |
        d2. c4 | g2. s4 | s1 | s1 |
      
        g1 | d1 | d1 | g1 | g1 | d1 | d1 | g1 |

        d2. c4 | g2. e4:min | a2.:min c4 | d2.:7 g4 |
        d2. c4 | g2. e4:min | a2.:min c4 | d2.:7 g4 |

        d2. c4 | g2. e4:min | a2.:min c4 | d2.:7 g4 |
        d2. c4 | g2. e4:min | a2.:min c4 | d1:7 |

        g1 | d1 | d1 | g1 | g1 | d1 | d1 | g1 |
      }
    }
    \new Voice = "mel" { \melody }
    \new Lyrics \lyricsto "mel" \verseone
    \new Lyrics \lyricsto "mel" \versetwo
  >>
}
