#include "mainwindow.h"
#include "ui_mainwindow.h"
#include "function.h"
#include <QPainter>
#include <QColor>
#include <QPen>
#include <QLabel>
#include <QDebug>
#include <QTextEdit>
#include <QString>

#include <iostream>
#include <string>
#include <vector>

using namespace std;

MainWindow::MainWindow(QWidget *parent)
    : QMainWindow(parent)
    , ui(new Ui::MainWindow)
{
    ui->setupUi(this);
}

MainWindow::~MainWindow()
{
    delete ui;
}

bool is_operator(char);

class Unit
{
public:
    virtual char value()
    {
        return 'l';
    }
    virtual int return_value() = 0;
    virtual bool is_operator()
    {
        return false;
    }
    virtual bool is_unknown()
    {
        return false;
    }
    virtual bool is_number()
    {
        return false;
    }
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

class Unknown
    : public Unit
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

class Number
    : public Unit
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

struct Node
{
    Node* left = NULL;
    Node* right = NULL;
    Node* parent = NULL;
    Unit* value;
};

Node* create_tree(string ONP)
{
    vector<Node*> STACK;
    for (int i = 0; i < ONP.size(); i++)
    {
        if (is_operator(ONP[i]))
        {
            Node* a = STACK.back();
            STACK.pop_back();
            Node* b = STACK.back();
            STACK.pop_back();

            Node* node = new Node();
            node->value = new Operation(ONP[i]);
            node->left = a;
            node->right = b;
            a->parent = node;
            b->parent = node;

            STACK.push_back(node);
        }
        else if(ONP[i] == 'x')
        {
            Node* node = new Node();
            node->value = new Unknown(ONP[i]);
            STACK.push_back(node);
        }
        else
        {
            Node* node = new Node();
            node->value = new Number(ONP[i]);
            STACK.push_back(node);
        }
    }
    return STACK.back();
}

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

vector<Unit*> string_to_expression(string term)
{
    vector<Unit*> result;

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

void write_expression(vector<Unit*> expression)
{
    for (int i = 0; i < expression.size(); i++)
        expression[i]->write();
}

void pobierz(vector<double> &sta, double& a, double& b)
{
    a = sta.back();
    sta.pop_back();
    b = sta.back();
    sta.pop_back();
}

vector<Unit*> ONP(vector<Unit*> pattern);

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

    return stack.back();
}

const int A = 500;
double B = 50;

bool is_good_expression(vector<Unit*> pattern)
{
    if(pattern.back()->is_operator() && pattern.back()->value() != ')')
        return false;
    return true;
}

double valueF(int x, Ui::MainWindow *ui)
{
    QString linia(ui->line->text());
    vector<Unit*> a;
    a = string_to_expression(linia.toStdString());
    if(is_good_expression(a))
    {
        a = ONP(a);
        return result_expression(a, (double)x/B)*B;
    }
    else
        return 0;
}

void MainWindow::paintEvent(QPaintEvent *e)
{
    QPainter p(this);

    QPen pen3(Qt::black, 1, Qt::SolidLine);
    p.setPen(pen3);
    for(int i = B; i< 1000; i+=B)
        p.drawLine(0, i, 1000, i);
    for(int i = B; i< 1000; i+=B)
        p.drawLine(i, 0, i, 1000);

    QPen pen2(Qt::black, 6, Qt::SolidLine);
    p.setPen(pen2);
    p.drawLine(0,500, 1000, 500);
    p.drawLine(500,0, 500, 1000);

    QPen pen(Qt::green, 4, Qt::SolidLine);
    p.setPen(pen);
    for(int i = -500; i<500; i++)
        p.drawLine((i) + A, -1*valueF(i, ui) + A, (i + 1) + A, -1*valueF(i + 1, ui) + A);
}


void MainWindow::on_pushButton_3_clicked()
{
    QString linia(ui->line->text());
      grubosc++;
      repaint();
}

bool is_operator(char znak)
{
    if (znak == '(' || znak == ')' || znak == '/' || znak == '*' || znak == '+' || znak == '-' || znak == '^')
        return true;
    return false;
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
                }
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
    }
    return result;
}

void MainWindow::on_pushButton_clicked()
{
    B+=10;
}


void MainWindow::on_pushButton_2_clicked()
{
    B-=10;
}

