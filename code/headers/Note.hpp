/// @file  Note.hpp
/// @brief Declaration file of class Note.
/// @date  15/08/2012

#ifndef NOTE_HPP
#define NOTE_HPP

enum Pitch_t {
    NOTE_C0 = 0,
    NOTE_D0,
    NOTE_E0,
    NOTE_F0,
    NOTE_G0,
    NOTE_A0,
    NOTE_B0,
    NOTE_C1, // 7
    NOTE_D1,
    NOTE_E1,
    NOTE_F1,
    NOTE_G1,
    NOTE_A1,
    NOTE_B1,
    NOTE_C2, // 14
    NOTE_D2,
    NOTE_E2,
    NOTE_F2,
    NOTE_G2,
    NOTE_A2,
    NOTE_B2,
    NOTE_C3, // 21
    NOTE_D3,
    NOTE_E3,
    NOTE_F3,
    NOTE_G3,
    NOTE_A3,
    NOTE_B3,
    NOTE_C4, // 28
    NOTE_D4,
    NOTE_E4,
    NOTE_F4,
    NOTE_G4,
    NOTE_A4,
    NOTE_B4,
    NOTE_C5, // 35
    NOTE_D5,
    NOTE_E5,
    NOTE_F5,
    NOTE_G5,
    NOTE_A5,
    NOTE_B5,
    NOTE_C6, // 42
    NOTE_D6,
    NOTE_E6,
    NOTE_F6,
    NOTE_G6,
    NOTE_A6,
    NOTE_B6,
    NOTE_C7, // 49
    NOTE_D7,
    NOTE_E7,
    NOTE_F7,
    NOTE_G7,
    NOTE_A7,
    NOTE_B7,
    NOTE_C8, // 56
    NOTE_D8,
    NOTE_E8,
    NOTE_F8,
    NOTE_G8,
    NOTE_A8,
    NOTE_B8 // 62
};

class Note {
public:
    Note();
    Note(Pitch_t pitch, short int accidentals, int duration, short int type,
            bool isSilence);
    ~Note();
    
    Pitch_t   getPitch() const;
    short int getAccidentals() const;
    int       getDuration() const;
    short int getType() const;
    bool      isSilence() const;
    
    void setPitch(Pitch_t pitch);
    void setAccidentals(short int accidentals);
    void setDuration(int duration);
    void setType(short int type);
    void setSilence(bool silence);
private:
    Pitch_t   m_pitch;
    short int m_accidentals;
    int       m_duration;
    short int m_type;
    bool      m_isSilence;
};

#endif // NOTE_HPP included.
