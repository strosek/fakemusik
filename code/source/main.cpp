#include "../headers/main.hpp"

#include <iostream>
#include <cstdlib>
#include <string>
#include <sstream>
#include <fstream>

#include "../headers/tinyxml2.h"

using namespace tinyxml2;
using namespace std;


//////////////////////////////////////////////////////////////////////////////
// Global Stuff, to be class members.
//////////////////////////////////////////////////////////////////////////////
string fileName = "test.xml";
XMLDocument document;
const int LENGTH_DATESTR = 50+1;
int nParts = 5;


string getNewPartId() {
    static int partNo = 1;

    stringstream partIdStream;

    partIdStream << 'P' << dec << partNo;
    ++partNo;

    return partIdStream.str();
}

void addDoctypeDeclaration() {
    fstream outputFile(fileName.c_str(), fstream::in | fstream::out);
    outputFile.seekg(0, ios_base::end);
    int fileCharacters = outputFile.tellg();

    char * fileContents = new char[fileCharacters];
    outputFile.seekg(0, ios_base::beg);
    outputFile.read(fileContents, fileCharacters);

    cout << fileContents << endl;

    const string doctype = "<!DOCTYPE score-partwise PUBLIC\n    \"-//Recordare//DTD MusicXML 3.0 Partwise//EN\"\n    \"http://www.musicxml.org/dtds/partwise.dtd\">\n";

    outputFile.close();
    outputFile.open(fileName.c_str(), fstream::out | fstream::trunc);

    int i = 0;
    while (i < fileCharacters && fileContents[i] != '>') {
        outputFile << fileContents[i];
        ++i;
    }

    outputFile << ">\n" << doctype;

    i += 2;
    while (i < fileCharacters) {
        outputFile << fileContents[i];
        ++i;
    }
}

void initializeDocument() {
    document.InsertFirstChild(document.NewDeclaration(
            "xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"no\""));
    XMLElement* root = document.NewElement("score-partwise");
    document.InsertEndChild(root);
    root->SetAttribute("version", "3.0");

    XMLElement* movementTitle = document.NewElement("movement-title");
    root->InsertEndChild(movementTitle);
    movementTitle->InsertEndChild(document.NewText("untitled"));

    XMLElement* identification = document.NewElement("identification");
    root->InsertEndChild(identification);

    XMLElement* creator = document.NewElement("creator");
    identification->InsertEndChild(creator);
    creator->InsertEndChild(document.NewText("computer"));

    XMLElement* encoding = document.NewElement("encoding");
    identification->InsertEndChild(encoding);
    XMLElement* software = document.NewElement("software");
    encoding->InsertEndChild(software);
    software->InsertEndChild(document.NewText("fakemusic v0.1"));

    time_t rawTime;
    struct tm* timeInfo;
    char dateString[LENGTH_DATESTR];
    time(&rawTime);
    timeInfo = localtime(&rawTime);
    strftime(dateString, LENGTH_DATESTR, "%c", timeInfo);

    XMLElement* encodingDate = document.NewElement("encoding-date");
    encoding->InsertEndChild(encodingDate);
    encodingDate->InsertEndChild(document.NewText(dateString));

    XMLElement* partList = document.NewElement("part-list");
    root->InsertEndChild(partList);
}


int main(void) {
    cout << "MusicXML testing program\n" <<
            "========================\n" << endl;

    initializeDocument();
    document.SaveFile(fileName.c_str());

    return EXIT_SUCCESS;
}
