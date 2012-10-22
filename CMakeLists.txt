project(fakemusic)
cmake_minimum_required(VERSION 2.4)

add_subdirectory(code)

add_definitions(-Wall -Wextra -Wc++11-compat -Weffc++ -Wshadow -Wswitch
        --std=c++11 -O2 -g)

add_executable(fakemusic code/source/main.cpp code/source/Piece.cpp
        code/source/Part.cpp code/source/Measure code/source/Note.cpp
        code/source/tinyxml2.cpp code/source/RandomNoteGenerationStrategy.cpp
        code/source/NoteGenerationStrategy)
