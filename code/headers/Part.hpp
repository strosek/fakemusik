/// @file  Part.hpp
/// @brief Declaration file of class Part.
/// @date  16/08/2012

#ifndef PART_HPP
#define PART_HPP

#include <list>

#include "Note.hpp"
#include "Measure.hpp"

/// @class Part
/// @brief Class that contains measures of a part.
///
///        This class has a data structure to keep all notes of a part in
///        measures.
class Part 
{
public:
    Part();
    ~Part();
private:
    std::list<Measure> m_measuresList;
};

#endif // PART_HPP

