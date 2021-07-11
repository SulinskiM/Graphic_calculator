#include "function.h"
#include <vector>
#include <iostream>
#include "tools.h"
#include <QString>
#include <QDebug>
#include <math.h>
#include <QPoint>

using namespace std;

char Unit::value()
{
    return 'l';
}
bool Unit::is_operator()
{
    return false;
}
bool Unit::is_unknown()
{
    return false;
}
bool Unit::is_number()
{
    return false;
}

Unknown::Unknown(char a)
{
    unknown = a;
}

bool Unknown::is_unknown()
{
    return false;
}

Operation::Operation(char znak)
{
    operation = znak;
}

bool Operation::is_operator()
{
    return true;
}

Number::Number(int liczba)
{
    value = liczba;
}

bool Number::is_number()
{
    return true;
}

vector<Unit*> string_to_expression(string term)
{
    vector<Unit*> result;
    result.push_back(new Number(0));
    for (int i = 0; i < term.size(); i++)
    {
        if (is_operator(term[i]))
        {
            Unit* a = new Operation(term[i]);
            result.push_back(a);
        }
        else if(term[i] == 'x')
        {
            Unit* b = new Unknown(term[i]);
            result.push_back(b);
        }
        else
        {
            int number = 0;
            do
            {
                number *= 10;
                number += (int)term[i] - (int)'0';
                i++;
            } while (i < term.size() && !is_operator(term[i]));
            i--;
            Unit* b = new Number(number);
            result.push_back(b);
        }
    }

    return result;
}

vector<Unit*> ONP(vector<Unit*> pattern)
{
    vector<Unit*> result;
    vector<Unit*> STACK;

        for (int i = 0; i < pattern.size(); i++)
        {
            if(is_operator(pattern[i]->value()))
            {
                if (pattern[i]->value() == '(')
                    STACK.push_back(pattern[i]);
                else if (pattern[i]->value() == ')')
                {
                    while (STACK.back()->value() != '(')
                    {
                        result.push_back(STACK.back());
                        STACK.pop_back();
                        if (STACK.size() == 0)
                            break;
                    }
                    if (STACK.size() == 0)
                        break;
                    STACK.pop_back();
                }
                else
                {
                    if (STACK.size() == 0)
                    {
                        STACK.push_back(pattern[i]);
                    }
                    else if (priority_operator(pattern[i]->value()) > priority_operator(STACK.back()->value()))
                        STACK.push_back(pattern[i]);
                    else
                    {
                        if (STACK.size() > 0)
                            while (priority_operator(pattern[i]->value()) <= priority_operator(STACK.back()->value()))
                            {
                                result.push_back(STACK.back());
                                STACK.pop_back();
                                if (STACK.size() == 0)
                                    break;
                            }
                        STACK.push_back(pattern[i]);
                    }
                }
            }
            else
            {
                result.push_back(pattern[i]);
            }
        }
        while (STACK.size() > 0)
        {
            result.push_back(STACK.back());
            STACK.pop_back();
            if (STACK.size() == 0)
                break;
        }
        return result;
}

double result_expression(vector<Unit*> pattern, double x)
{
    vector<double> stack;
    double a, b;

    for (int i = 0; i < pattern.size(); i++)
    {
        if (is_operator(pattern[i]->value()))
        {
            switch (pattern[i]->value())
            {
                case '+':
                    pobierz(stack, a, b);
                    stack.push_back(a + b);
                    break;
                case '-':
                    pobierz(stack, a, b);
                    stack.push_back(b - a);
                    break;
                case '*':
                    pobierz(stack, a, b);
                    stack.push_back(a * b);
                    break;
                case '/':
                    pobierz(stack, a, b);
                    stack.push_back(b / a);
                    break;
                case '^':
                    pobierz(stack, a, b);
                    stack.push_back(pow(b, a));
                    break;
            }
        }
        else
        {
            if (pattern[i]->value() == 'x')
                stack.push_back(x);
            else
                stack.push_back(pattern[i]->return_value());
        }
    }
    if(stack.size() > 0)
        return stack.back();
    else
        return -1.0;
}

QPoint Function::create_point_on_graph(double x)
{
    return QPoint(x + enviroment->get_size_axi_x() / 2 + enviroment->get_movement_x(),
    -1*this->calculate_value(x / enviroment->get_precision())*enviroment->get_precision() + enviroment->get_size_axi_y() / 2 + enviroment->get_movement_y());
}

QVector<QPoint> Function::create_points()
{
    QVector<QPoint> graph;
    for(int i = -1000; i<1000; i++)
    {
        graph.push_back(this->create_point_on_graph(i));
        graph.push_back(this->create_point_on_graph(i+1));
    }
    return graph;
}

Function::Function(QString term, CoordinateSystem* enviroment)
{
    this->enviroment = enviroment;
    expression = term;
    expression_basic = string_to_expression(term.toStdString());
    expression_ONP = ONP(expression_basic);
}
QString Function::Get_ONP()
{
    return expression;
}
QString Function::Get_Expression()
{
    return expression;
}
void Function::Set_Expression(QString term)
{
    expression = term;
    expression_basic = string_to_expression(term.toStdString());
    expression_ONP = ONP(expression_basic);
}
double Function::calculate_value(double x)
{
    return result_expression(expression_ONP, x);
}
