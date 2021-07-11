#include "tools.h"
#include <QChar>
#include <QDebug>

int priority_operator(char znak)
{
    if (znak == '(')
        return 0;
    if (znak == '+' || znak == '-' || znak == ')')
        return 1;
    if (znak == '*' || znak == '/' || znak == '%')
        return 2;
    if (znak == '^')
        return 3;
}

void pobierz(vector<double> &sta, double& a, double& b)
{
    //a = 3;
    //b = 3;
    if(sta.size() >= 2)
    {
        a = sta.back();
        sta.pop_back();
        b = sta.back();
        sta.pop_back();
    }
}

bool is_operator(char znak)
{
    if (znak == '(' || znak == ')' || znak == '/' || znak == '*' || znak == '+' || znak == '-' || znak == '^')
        return true;
    return false;
}

bool is_good_expression(vector<Unit*> pattern)
{
    if(pattern.size() == 0)
        return false;
    if(pattern.back()->is_operator() && pattern.back()->value() != ')')
        return false;
    return true;
}

int abs(int x)
{
    if(x) return x;
    else return -1*x;
}
