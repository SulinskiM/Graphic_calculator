#include "mainwindow.h"
#include "ui_mainwindow.h"
#include "function.h"
#include "tools.h"
#include <QPainter>
#include <QColor>
#include <QPen>
#include <QLabel>
#include <QDebug>
#include <QTextEdit>
#include <QString>
#include <QColorDialog>
#include <QMouseEvent>
#include <QEvent>

MainWindow::MainWindow(QWidget *parent)
    : QMainWindow(parent)
    , ui(new Ui::MainWindow)
{
    ui->setupUi(this);
    fun.coordinate.set_size_axi_x(this->height());
    fun.coordinate.set_size_axi_y(this->height());
    this->setMinimumHeight(800);
    this->setMinimumWidth(1050);
}

MainWindow::~MainWindow()
{
    delete ui;
}

int begin_x = 0;
int begin_y = 0;

void MainWindow::paintEvent(QPaintEvent *e)
{
    QPainter p(this);
    this->fun.coordinate.draw_coordinate_system(p);

    for(int j = 0; j < this->fun.graphs.size(); j++)
    {
        QPen pen(this->fun.graphs[j].color, 6, Qt::SolidLine);
        p.setPen(pen);
        p.drawLines(this->fun.graphs[j].create_points());
    }
}

void MainWindow::mouseMoveEvent(QMouseEvent *event)
{
    QMainWindow::mouseMoveEvent(event);
    int pos_x = event->pos().x();
    int pos_y = event->pos().y();
    this->fun.coordinate.move_horizon(-1*abs(pos_x - begin_x));
    this->fun.coordinate.move_vertical(-1*abs(pos_y - begin_y));

    begin_x = pos_x;
    begin_y = pos_y;
    repaint();
}

void MainWindow::mousePressEvent(QMouseEvent *event){
    QMainWindow::mousePressEvent(event);

    begin_x = event->pos().x();
    begin_y = event->pos().y();

    for(int j = 0; j < this->fun.graphs.size(); j++)
    {
        QPoint newPunkt = this->fun.graphs[j].create_point_on_graph(begin_x - this->fun.coordinate.get_size_axi_x() / 2 - this->fun.coordinate.get_movement_x());
        if(newPunkt.y() - 20 <= begin_y && newPunkt.y() + 20 >= begin_y)
        {
            QColorDialog www(this);
            this->fun.graphs[j].color = www.getColor();
            repaint();
        }
    }
}

void MainWindow::resizeEvent(QResizeEvent *event){
    QMainWindow::resizeEvent(event);

    fun.coordinate.set_size_axi_x(this->height());
    fun.coordinate.set_size_axi_y(this->height());
    this->ui->text_functions->move(this->height(), 280);
    this->ui->input_expression->move(this->height(), 170);
    this->ui->text_functions->move(this->height(), 280);
    this->ui->pushButton->move(this->height(), 120);
    this->ui->Button_paint_graph->move(this->height(), 230);
    this->ui->Button_increase_scale->move(this->height(), 70);
    this->ui->Button_reduce_scale->move(this->height() + 125, 70);

    this->setGeometry(50,50,this->height() + 250,this->height());

    repaint();
}

void MainWindow::on_Button_increase_scale_clicked()
{
    this->fun.coordinate.increase_precision();
    repaint();
}

void MainWindow::on_Button_reduce_scale_clicked()
{
    this->fun.coordinate.reduce_precision();
    repaint();
}

void MainWindow::on_Button_paint_graph_clicked()
{
    QString linia(ui->input_expression->text());

    Function newF(linia, &this->fun.coordinate);
    QColorDialog www(this);
    newF.color = www.getColor();
    this->fun.graphs.push_back(newF);
    QString result = "";
    for(int i=0; i<this->fun.graphs.size(); i++)
        result += this->fun.graphs[i].Get_Expression() + "\n";
    this->ui->text_functions->setPlainText(result);

    repaint();
}

void MainWindow::on_pushButton_clicked()
{
    QColorDialog www(this);
    www.setVisible(true);
    this->color = www.getColor();
}


void MainWindow::on_button_movement_left_clicked()
{
    this->fun.coordinate.move_horizon(-100);
    repaint();
}


void MainWindow::on_button_movement_right_clicked()
{
    this->fun.coordinate.move_horizon(+100);
    repaint();
}


void MainWindow::on_button_movement_up_clicked()
{
    this->fun.coordinate.move_vertical(-100);
    repaint();
}


void MainWindow::on_button_movement_down_clicked()
{
    this->fun.coordinate.move_vertical(100);
    repaint();
}

