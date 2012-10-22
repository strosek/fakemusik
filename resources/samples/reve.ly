
\version "2.14.2"
% automatically converted from reve.xml

\header {
    copyright = "Copyright © 2002 Recordare LLC"
    encodingdate = "2011-08-10"
    tagline = "Finale 2011 for Windows"
    title = "Après un rêve"
    composer = "Gabriel Fauré"
    encodingsoftware = "Finale 2011 for Windows"
    }

#(set-global-staff-size 18.0675)
\paper {
    paper-width = 21.59\cm
    paper-height = 27.94\cm
    top-margin = 1.27\cm
    bottom-margin = 1.27\cm
    left-margin = 1.27\cm
    right-margin = 1.27\cm
    between-system-space = 2.02\cm
    page-top-space = 2.02\cm
    }
\layout {
    \context { \Score
        skipBars = ##t
        autoBeaming = ##f
        }
    }
PartPOneVoiceOne =  \relative g' {
    \clef "treble" \key es \major \time 3/4 | % 1
    R2. | % 2
    g4 ^\markup{ \bold {Andantino} } ^\markup{ \italic {dolce} } c4 \< d4
    | % 3
    es4 \! ~ \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        es8 [ d8 c8 ] }
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        es8 [ d8 c8 ] }
    | % 4
    c2 \> bes4 \! }

PartPOneVoiceOneLyricsOne =  \lyricmode { Dans un som -- "meil " __ mait
    ma -- ge }
PartPTwoVoiceOne =  \relative c' {
    \clef "treble" \key es \major \time 3/4 | % 1
    <c es g>8 \pp [ <c es g>8 <c es g>8 <c es g>8 <c es g>8 <c es g>8 ]
    | % 2
    <c es g>8 [ <c es g>8 <c es g>8 <c es g>8 <bes d es g>8 <bes d es g>8
    ] \change Staff="2" | % 3
    <a c es g>8 [ \change Staff="2" <a c es g>8 \change Staff="2" <a c
        es g>8 \change Staff="2" <a c es g>8 \change Staff="2" <a c es
        f>8 \change Staff="2" <a c es f>8 ] \change Staff="2" | % 4
    <as c d f>8 [ \change Staff="2" <as c d f>8 \change Staff="2" <as c
        d f>8 \change Staff="2" <as c d f>8 \change Staff="2" <as c d f>8
    \change Staff="2" <as c d f>8 ] }

PartPTwoVoiceTwo =  \relative f,, {
    \clef "bass" \key es \major \time 3/4 R2.*2 | % 3
    <f f'>2. | % 4
    <bes bes'>2. }


% The score definition
\score {
    <<
        \new Staff <<
            \set Staff.instrumentName = "Voice"
            \context Staff << 
                \context Voice = "PartPOneVoiceOne" { \PartPOneVoiceOne }
                \new Lyrics \lyricsto "PartPOneVoiceOne" \PartPOneVoiceOneLyricsOne
                >>
            >>
        \new StaffGroup \with { systemStartDelimiter =
            #'SystemStartBrace } <<
            \new PianoStaff <<
                \set PianoStaff.instrumentName = "Piano"
                \context Staff = "1" << 
                    \context Voice = "PartPTwoVoiceOne" { \PartPTwoVoiceOne }
                    >> \context Staff = "2" <<
                    \context Voice = "PartPTwoVoiceTwo" { \PartPTwoVoiceTwo }
                    >>
                >>
            
            >>
        
        >>
    \layout {}
    % To create MIDI output, uncomment the following line:
    %  \midi {}
    }

