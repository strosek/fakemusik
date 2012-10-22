/// @file  NoteGenerationStrategy.hpp
/// @brief Declaration file of class NoteGenerationStrategy.
/// @date  2012-08-19 17:23:13 UTC

#ifndef NOTEGENERATIONSTRATEGY_HPP
#define NOTEGENERATIONSTRATEGY_HPP


/// @class NoteGenerationStrategy
/// @brief brief.
///
///        Long description
class NoteGenerationStrategy 
{
public:
    NoteGenerationStrategy();
    virtual ~NoteGenerationStrategy();

    virtual void generateParts(int nParts) = 0;
private:
};

#endif // NOTEGENERATIONSTRATEGY_HPP included.

