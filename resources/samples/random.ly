
\version "2.14.2"
% automatically converted from random.xml

\header {
    encodingsoftware = "MusicXML Library v2"
    tagline = "MusicXML Library v2"
    title = "Random Music"
    }

\layout {
    \context { \Score
        autoBeaming = ##f
        }
    }
PartPOneVoiceNone =  \relative b'' {
    \clef "treble" \numericTimeSignature\time 4/4 b4 g,4 c4 a'4 | % 2
    a,4 e4 a'4 d,,4 | % 3
    b'4 g'4 g,4 a4 | % 4
    b'4 b,4 g'4 g,4 | % 5
    e'4 e,4 d'4 f,4 | % 6
    a4 f4 g4 e4 | % 7
    c'4 b4 e,4 f'4 | % 8
    a,4 d4 e,4 a4 | % 9
    b'4 b4 d,4 a'4 | \barNumberCheck #10
    c,4 f,4 c4 e'4 | % 11
    g4 a4 a4 e,4 | % 12
    f4 a4 d,4 f'4 | % 13
    g4 d,4 g'4 g,4 | % 14
    d'4 f4 a,4 d,4 | % 15
    b''4 e,,4 d4 b'4 | % 16
    d,4 f4 d'4 f,4 | % 17
    d4 f4 f'4 f,4 | % 18
    c'4 a4 g'4 c,,4 | % 19
    b'4 b'4 c,4 g'4 | \barNumberCheck #20
    f4 g,4 c4 f4 }


% The score definition
\new Staff <<
    \set Staff.instrumentName = "Part name"
    \context Staff << 
        \context Voice = "PartPOneVoiceNone" { \PartPOneVoiceNone }
        >>
    >>

