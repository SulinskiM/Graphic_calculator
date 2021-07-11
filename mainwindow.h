#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QMainWindow>
#include <QPainter>
#include <QColor>
#include "graph.h"

QT_BEGIN_NAMESPACE
namespace Ui { class MainWindow; }
QT_END_NAMESPACE

class MainWindow : public QMainWindow
{
    Q_OBJECT

public:
    MainWindow(QWidget *parent = nullptr);
    ~MainWindow();
    void mousePressEvent(QMouseEvent *event);
    void mouseMoveEvent(QMouseEvent *event);
    void resizeEvent(QResizeEvent *event);

protected:
    void paintEvent(QPaintEvent *e);
    QColor color;

private slots:
    void on_Button_increase_scale_clicked();

    void on_Button_reduce_scale_clicked();

    void on_Button_paint_graph_clicked();

    void on_pushButton_clicked();

    void on_button_movement_left_clicked();

    void on_button_movement_right_clicked();

    void on_button_movement_up_clicked();

    void on_button_movement_down_clicked();

private:
    Ui::MainWindow *ui;
    Graph fun;
};
#endif // MAINWINDOW_H
