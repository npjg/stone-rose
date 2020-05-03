\version "2.19.84"

\header {
  title = "Мишель"
  composer = "Ola Gjeilo"
  arranger = "transcribed, N.G."
}

global = {
  \key g \major
  \time 2/2
  \tempo 2 = 87
}

right = \relative c'' {
  \global
  b,4~ b8 g'8~ g8 b,4 a2 g'4 d8 a4 |
  \appoggiatura a b4~ b8 g'8~ g8 b,4 a2 g'4 d8 a4 |
  \appoggiatura a b4~ b8 g'8~ g8 b,4 a2 g'4 d8 a4 |
  \appoggiatura a b4~ b8 g'8~ g8 b,4 a2 d8 g8 a8 b8 b8~ |
  
  b4 d,8 g4 d4 d4 d4 g4 d4 
  g8 b8 c4 b4 a4 a8 g2 r8 d4 
  d4. d8 g4 a8 b8 a4 g fis e \appoggiatura fis e d d 

}

leftOne = \relative c' {
  \global
%  g2 g1*3/2
  
}

leftTwo = \relative c' {
  \global
  % Music follows here.
  
}

\score {
  \new PianoStaff \with {
    instrumentName = "Piano"
  } <<
    \new Staff = "right" \with {
      midiInstrument = "acoustic grand"
    } \right
    \new Staff = "left" \with {
      midiInstrument = "acoustic grand"
    } { \clef bass << \leftOne \\ \leftTwo >> }
  >>
  \layout { 
    \context { 
      \Voice \remove "Note_heads_engraver"
      \consists "Completion_heads_engraver" 
    }
  }		
  \midi {
    \tempo 2 = 87
  }
}
