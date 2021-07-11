#ifndef GRAPH_H
#define GRAPH_H
#include "function.h"
#include "coordinatesystem.h"

class Graph
{
public:
    Graph();
    CoordinateSystem coordinate;
    vector<Function> graphs;
};

#endif // GRAPH_H
