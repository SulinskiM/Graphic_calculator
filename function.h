#ifndef FUNCTION_H
#define FUNCTION_H
#include <iostream>
#include <QString>
#include <QColor>
#include "coordinatesystem.h"

using namespace std;

class Unit
{
public:
    virtual char value();
    virtual int return_value() = 0;
    virtual bool is_operator();
    virtual bool is_unknown();
    virtual bool is_number();
    virtual void write() = 0;
};

class Operation : public Unit
{
public:
    char operation;
    virtual int return_value()
    {
        return 0;
    }
    bool is_operator();
    virtual void write()
    {
        cout << operation;
    }
    Operation(char);
    virtual char value()
    {
        return operation;
    }
};

class Unknown : public Unit
{
public:
    char unknown;
    bool is_unknown();
    virtual void write()
    {
        cout << unknown;
    }
    Unknown(char);
    virtual int return_value()
    {
        return 0;
    }
    virtual char value()
    {
        return unknown;
    }
};

class Number : public Unit
{
public:
    int value;
    bool is_number();
    virtual void write()
    {
        cout << value;
    }
    virtual int return_value()
    {
        return value;
    }

    Number(int);
};

class Function
{
public:
    Function(QString, CoordinateSystem*);
    QString Get_ONP();
    QString Get_Expression();
    void Set_Expression(QString);
    double calculate_value(double);
    QColor color;
    CoordinateSystem* enviroment;
    QPoint create_point_on_graph(double);
    QVector<QPoint> create_points();
private:
    QString expression = "";
    vector<Unit*> expression_basic;
    vector<Unit*> expression_ONP;
};

vector<Unit*> string_to_expression(string term);
vector<Unit*> ONP(vector<Unit*> pattern);
double result_expression(vector<Unit*> pattern, double x);


#endif // FUNCTION_H
