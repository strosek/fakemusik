
\version "2.14.2"
% automatically converted from chorus.xml

\header {
    encodingsoftware = "Finale for Macintosh"
    tagline = "Finale for Macintosh"
    encodingdate = "2007-12-11"
    }

\layout {
    \context { \Score
        autoBeaming = ##f
        }
    }
PartPOneVoiceOne =  \relative b' {
    \clef "treble" \key e \major \time 4/4 b4 b4 cis4 cis4 | % 2
    dis4 dis4 e2 ^\fermata | % 3
    fis4 fis4 e4 dis4 | % 4
    cis4 dis8 [ e8 ] cis2 \break | % 5
    b2 ^\fermata b4 b4 | % 6
    cis4 cis4 b4 a4 | % 7
    gis2 ^\fermata b4 b4 | % 8
    a4 gis4 fis4 gis8 [ a8 ] \break | % 9
    fis2 e2 ^\fermata | \barNumberCheck #10
    b'4 b4 cis4 cis4 | % 11
    dis4 dis4 e2 ^\fermata | % 12
    b4 b4 a4 gis8 [ fis8 ] | % 13
    fis4. e8 e2 ^\fermata \bar "|."
    }

PartPTwoVoiceOne =  \relative gis' {
    \clef "treble" \key e \major \time 4/4 gis4 gis4 gis8 [ fis16 e16 ]
    a4 ~ | % 2
    a8 [ gis16 fis16 ] b8 [ a8 ] gis2 | % 3
    b4 ais8 [ b8 ] cis8 [ ais8 ] fis8 [ gis8 ] | % 4
    ais4 b4 b4 ais4 \break | % 5
    fis2 gis8 [ a8 ] b4 | % 6
    b4 a4. gis4 fis8 | % 7
    e2 dis4 cis4 | % 8
    cis8 [ dis8 ] e4 b4 b4 \break | % 9
    cis4 dis4 b2 | \barNumberCheck #10
    e4 e4 e4. e8 | % 11
    a8 [ fis8 ] gis4 gis2 | % 12
    gis4 gis4 gis8 [ fis8 ] e4 | % 13
    e4 dis4 b2 \bar "|."
    }

PartPThreeVoiceOne =  \relative e' {
    \clef "bass" \key e \major \time 4/4 e4 e4 e8 [ dis16 cis16 ] fis4 ~
    | % 2
    fis8 [ dis8 ] b8 [ b8 ] b2 | % 3
    fis'4 e8 [ dis8 ] cis4 dis8 [ e8 ] | % 4
    fis4 fis4 gis4 fis8 [ e8 ] \break | % 5
    dis2 e4 e4 | % 6
    e8 [ cis8 ] fis4. dis8 e8 [ fis8 ] | % 7
    b,2 b8 [ a8 ] gis4 | % 8
    a8 [ b8 ] cis4 dis4 e4 \break | % 9
    e8 a,4 gis16 [ fis16 ] gis2 | \barNumberCheck #10
    gis8 [ a8 ] b4 a8 [ e8 ] cis'4 ~ | % 11
    cis4 bis4 cis2 | % 12
    dis4 e4 e8 [ b8 ] b4 | % 13
    cis8 [ a8 ] fis8 [ b8 ] gis2 \bar "|."
    }

PartPFourVoiceOne =  \relative e {
    \clef "bass" \key e \major \time 4/4 e8 [ fis8 ] gis8 [ e8 ] a4. gis16
    [ fis16 ] | % 2
    b8 [ a8 ] gis8 [ fis8 ] e2 | % 3
    dis8 [ e8 ] fis8 [ gis8 ] ais8 [ fis8 ] b4 | % 4
    e,8 [ dis8 ] cis8 [ b8 ] e8 [ cis8 ] fis4 \break | % 5
    b,2 e8 [ fis8 ] gis8 [ e8 ] | % 6
    a8 [ gis8 ] fis8 [ e8 ] dis8 [ b8 ] cis8 [ dis8 ] | % 7
    e2 gis8 [ fis8 ] eis8 [ cis8 ] | % 8
    fis4 cis'8 [ b8 ] a8 [ gis8 ] fis8 [ e8 ] \break | % 9
    a8 [ fis8 ] b4 e,2 | \barNumberCheck #10
    e8 [ fis8 ] gis8 [ e8 ] a8 [ b8 ] a8 [ gis8 ] | % 11
    fis8 [ dis8 ] gis4 cis,2 | % 12
    gis'8 [ fis8 ] e8 [ dis8 ] cis8 [ dis8 ] e8 [ cis8 ] | % 13
    a8 [ fis8 ] b4 e2 \bar "|."
    }

PartPFiveVoiceOne =  \relative e {
    \clef "bass" \key e \major \time 4/4 e8 [ fis8 ] gis8 [ e8 ] a4. gis16
    [ fis16 ] | % 2
    b8 [ a8 ] gis8 [ fis8 ] e2 | % 3
    dis8 [ e8 ] fis8 [ gis8 ] ais8 [ fis8 ] b8 [ b,8 ] | % 4
    e8 [ dis8 ] cis8 [ b8 ] e8 [ cis8 ] fis4 \break | % 5
    b,2 e8 [ fis8 ] gis8 [ e8 ] | % 6
    a8 [ gis8 ] fis8 [ e8 ] dis8 [ b8 ] cis8 [ dis8 ] | % 7
    e2 gis8 [ fis8 ] eis8 [ cis8 ] | % 8
    fis8 [ fis,8 ] cis'8 [ b8 ] a8 [ gis8 ] fis8 [ e8 ] \break | % 9
    a8 [ fis8 ] b4 e,2 | \barNumberCheck #10
    e'8 [ fis8 ] gis8 [ e8 ] a8 [ b8 ] a8 [ gis8 ] | % 11
    fis8 [ dis8 ] gis8 [ gis,8 ] cis2 | % 12
    gis'8 [ fis8 ] e8 [ dis8 ] cis8 [ dis8 ] e8 [ cis8 ] | % 13
    a8 [ fis8 ] b4 e,2 \bar "|."
    }


% The score definition
\score {
    <<
        \new StaffGroup <<
            \new Staff <<
                \set Staff.instrumentName = "Soprano"
                \set Staff.shortInstrumentName = "S."
                \context Staff << 
                    \context Voice = "PartPOneVoiceOne" { \PartPOneVoiceOne }
                    >>
                >>
            \new Staff <<
                \set Staff.instrumentName = "Alto"
                \set Staff.shortInstrumentName = "A."
                \context Staff << 
                    \context Voice = "PartPTwoVoiceOne" { \PartPTwoVoiceOne }
                    >>
                >>
            \new Staff <<
                \set Staff.instrumentName = "Tenor"
                \set Staff.shortInstrumentName = "T."
                \context Staff << 
                    \context Voice = "PartPThreeVoiceOne" { \PartPThreeVoiceOne }
                    >>
                >>
            \new Staff <<
                \set Staff.instrumentName = "Bass"
                \set Staff.shortInstrumentName = "B."
                \context Staff << 
                    \context Voice = "PartPFourVoiceOne" { \PartPFourVoiceOne }
                    >>
                >>
            
            >>
        \new Staff <<
            \set Staff.instrumentName = "Continuo"
            \context Staff << 
                \context Voice = "PartPFiveVoiceOne" { \PartPFiveVoiceOne }
                >>
            >>
        
        >>
    \layout {}
    % To create MIDI output, uncomment the following line:
    %  \midi {}
    }

