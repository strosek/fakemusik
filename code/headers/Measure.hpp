/// @file  Measure.hpp
/// @brief Declaration file of class Measure.
/// @date  2012-08-19 18:34:05 UTC

#ifndef MEASURE_HPP
#define MEASURE_HPP

#include <list>
#include "Note.hpp"

enum Clef_t {
    CLEF_G = 0,
    CLEF_F,
    CLEF_C
};

/// @class Measure
/// @brief brief.
///
///        Long description
class Measure 
{
public:
    Measure();
    ~Measure();

    void addNote();
private:
    int             m_number;
    short int       m_divisions;
    short int       m_beat;
    short int       m_beatType;
    short int       m_keyFifths;
    short int       m_keyMode;
    Clef_t          m_clefSign;
    short int       m_clefPosition;
    std::list<Note> m_notes;
    int             m_notesLength;
    bool            m_isClefVisible;
    bool            m_isBeatVisible;
};

#endif // MEASURE_HPP included.

