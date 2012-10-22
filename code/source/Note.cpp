/// @file  Note.cpp
/// @brief Member functions definition file of class Note.
/// @date  15/08/2012

#include "../headers/Note.hpp"

Note::Note() :
    m_pitch(NOTE_C0),
    m_accidentals(0),
    m_duration(1),
    m_type(0),
    m_isSilence(false)
{
}

Note::Note(Pitch_t pitch, short int accidentals, int duration, short int type,
        bool silence):
    m_pitch(pitch),
    m_accidentals(accidentals),
    m_duration(duration),
    m_type(type),
    m_isSilence(silence)
{
}

Note::~Note() {
}

Pitch_t Note::getPitch() const {
    return m_pitch;
}

short int Note::getAccidentals() const {
    return m_accidentals;
}

int Note::getDuration() const {
    return m_duration;
}

short int Note::getType() const {
    return m_type;
}

bool      Note::isSilence() const {
    return m_isSilence;
}

void Note::setPitch(Pitch_t pitch) {
    if (pitch >= 0 && pitch <= 43) {
        m_pitch = pitch;
    }
}

void Note::setAccidentals(short int accidentals) {
    if (accidentals >= -2 && accidentals <= 2) {
        m_accidentals = accidentals;
    }
}

void Note::setDuration(int duration) {
    if (duration >= 0 && duration <= 1) {
        m_duration = duration;
    }
}
void Note::setType(short int type) {
    if (type >= 0 && type <= 1) {
        m_type = type;
    }
}

void Note::setSilence(bool silence) {
    m_isSilence = silence;
}
