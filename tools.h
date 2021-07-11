#ifndef TOOLS_H
#define TOOLS_H

#include <vector>
#include <iostream>
#include "function.h"

using namespace std;

int priority_operator(char znak);
void pobierz(vector<double> &sta, double& a, double& b);
bool is_operator(char znak);
bool is_good_expression(vector<Unit*> pattern);
int abs(int);

#endif // TOOLS_H
