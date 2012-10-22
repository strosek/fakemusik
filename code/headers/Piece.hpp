/// @file  Piece.hpp
/// @brief Declaration file of class Piece.
/// @date  2012-08-19 17:38:01 UTC

#ifndef PIECE_HPP
#define PIECE_HPP

#include "../headers/Part.hpp"

#include <vector>

/// @class Piece
/// @brief brief.
///
///        Long description
class Piece 
{
public:
    Piece();
    ~Piece();
private:
    std::vector<Part> m_parts;
};

#endif // PIECE_HPP included.

