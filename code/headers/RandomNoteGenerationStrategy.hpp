/// @file  RandomNoteGenerationStrategy.hpp
/// @brief Declaration file of class RandomNoteGenerationStrategy.
/// @date  2012-08-19 17:24:10 UTC

#ifndef RANDOMNOTEGENERATIONSTRATEGY_HPP
#define RANDOMNOTEGENERATIONSTRATEGY_HPP

#include "../headers/NoteGenerationStrategy.hpp"

/// @class RandomNoteGenerationStrategy
/// @brief Class that encapsulates random note generation algorithm.
///
///        Long description
class RandomNoteGenerationStrategy : public NoteGenerationStrategy
{
public:
    RandomNoteGenerationStrategy();
    ~RandomNoteGenerationStrategy();

    void generateParts(int nParts);
private:
};

#endif // RANDOMNOTEGENERATIONSTRATEGY_HPP included.

