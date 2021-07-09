/********************************************************************************
** Form generated from reading UI file 'mainwindow.ui'
**
** Created by: Qt User Interface Compiler version 6.1.2
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_MAINWINDOW_H
#define UI_MAINWINDOW_H

#include <QtCore/QVariant>
#include <QtWidgets/QApplication>
#include <QtWidgets/QFrame>
#include <QtWidgets/QLineEdit>
#include <QtWidgets/QMainWindow>
#include <QtWidgets/QMenuBar>
#include <QtWidgets/QPlainTextEdit>
#include <QtWidgets/QPushButton>
#include <QtWidgets/QSlider>
#include <QtWidgets/QStatusBar>
#include <QtWidgets/QWidget>

QT_BEGIN_NAMESPACE

class Ui_MainWindow
{
public:
    QWidget *centralwidget;
    QSlider *slider_graph_scale;
    QLineEdit *input_expression;
    QPushButton *Button_paint_graph;
    QPlainTextEdit *plainTextEdit;
    QFrame *line;
    QPushButton *Button_increase_scale;
    QPushButton *Button_reduce_scale;
    QPushButton *pushButton;
    QPushButton *button_movement_left;
    QPushButton *button_movement_right;
    QPushButton *button_movement_up;
    QPushButton *button_movement_down;
    QMenuBar *menubar;
    QStatusBar *statusbar;

    void setupUi(QMainWindow *MainWindow)
    {
        if (MainWindow->objectName().isEmpty())
            MainWindow->setObjectName(QString::fromUtf8("MainWindow"));
        MainWindow->resize(1485, 832);
        QPalette palette;
        QBrush brush(QColor(0, 170, 255, 255));
        brush.setStyle(Qt::SolidPattern);
        palette.setBrush(QPalette::Active, QPalette::WindowText, brush);
        palette.setBrush(QPalette::Inactive, QPalette::WindowText, brush);
        QBrush brush1(QColor(120, 120, 120, 255));
        brush1.setStyle(Qt::SolidPattern);
        palette.setBrush(QPalette::Disabled, QPalette::WindowText, brush1);
        MainWindow->setPalette(palette);
        centralwidget = new QWidget(MainWindow);
        centralwidget->setObjectName(QString::fromUtf8("centralwidget"));
        slider_graph_scale = new QSlider(centralwidget);
        slider_graph_scale->setObjectName(QString::fromUtf8("slider_graph_scale"));
        slider_graph_scale->setGeometry(QRect(1080, 240, 16, 361));
        slider_graph_scale->setMinimum(20);
        slider_graph_scale->setMaximum(50);
        slider_graph_scale->setOrientation(Qt::Vertical);
        input_expression = new QLineEdit(centralwidget);
        input_expression->setObjectName(QString::fromUtf8("input_expression"));
        input_expression->setGeometry(QRect(1110, 180, 211, 61));
        Button_paint_graph = new QPushButton(centralwidget);
        Button_paint_graph->setObjectName(QString::fromUtf8("Button_paint_graph"));
        Button_paint_graph->setGeometry(QRect(1110, 240, 211, 41));
        plainTextEdit = new QPlainTextEdit(centralwidget);
        plainTextEdit->setObjectName(QString::fromUtf8("plainTextEdit"));
        plainTextEdit->setEnabled(true);
        plainTextEdit->setGeometry(QRect(1110, 280, 211, 321));
        plainTextEdit->setAutoFillBackground(false);
        plainTextEdit->setReadOnly(true);
        line = new QFrame(centralwidget);
        line->setObjectName(QString::fromUtf8("line"));
        line->setGeometry(QRect(1010, -20, 71, 1031));
        QFont font;
        font.setFamilies({QString::fromUtf8("MS Sans Serif")});
        font.setPointSize(20);
        font.setBold(false);
        line->setFont(font);
        line->setFrameShape(QFrame::VLine);
        line->setFrameShadow(QFrame::Sunken);
        Button_increase_scale = new QPushButton(centralwidget);
        Button_increase_scale->setObjectName(QString::fromUtf8("Button_increase_scale"));
        Button_increase_scale->setGeometry(QRect(1060, 170, 51, 41));
        QFont font1;
        font1.setPointSize(30);
        font1.setBold(true);
        Button_increase_scale->setFont(font1);
        Button_reduce_scale = new QPushButton(centralwidget);
        Button_reduce_scale->setObjectName(QString::fromUtf8("Button_reduce_scale"));
        Button_reduce_scale->setGeometry(QRect(1060, 610, 51, 41));
        Button_reduce_scale->setFont(font1);
        pushButton = new QPushButton(centralwidget);
        pushButton->setObjectName(QString::fromUtf8("pushButton"));
        pushButton->setGeometry(QRect(1120, 80, 191, 61));
        button_movement_left = new QPushButton(centralwidget);
        button_movement_left->setObjectName(QString::fromUtf8("button_movement_left"));
        button_movement_left->setGeometry(QRect(250, 710, 75, 23));
        button_movement_right = new QPushButton(centralwidget);
        button_movement_right->setObjectName(QString::fromUtf8("button_movement_right"));
        button_movement_right->setGeometry(QRect(680, 720, 75, 23));
        button_movement_up = new QPushButton(centralwidget);
        button_movement_up->setObjectName(QString::fromUtf8("button_movement_up"));
        button_movement_up->setGeometry(QRect(970, 120, 75, 23));
        button_movement_down = new QPushButton(centralwidget);
        button_movement_down->setObjectName(QString::fromUtf8("button_movement_down"));
        button_movement_down->setGeometry(QRect(960, 560, 75, 23));
        MainWindow->setCentralWidget(centralwidget);
        menubar = new QMenuBar(MainWindow);
        menubar->setObjectName(QString::fromUtf8("menubar"));
        menubar->setGeometry(QRect(0, 0, 1485, 21));
        MainWindow->setMenuBar(menubar);
        statusbar = new QStatusBar(MainWindow);
        statusbar->setObjectName(QString::fromUtf8("statusbar"));
        MainWindow->setStatusBar(statusbar);

        retranslateUi(MainWindow);

        QMetaObject::connectSlotsByName(MainWindow);
    } // setupUi

    void retranslateUi(QMainWindow *MainWindow)
    {
        MainWindow->setWindowTitle(QCoreApplication::translate("MainWindow", "MainWindow", nullptr));
        input_expression->setText(QCoreApplication::translate("MainWindow", "0-1*x*x+5*x", nullptr));
        Button_paint_graph->setText(QCoreApplication::translate("MainWindow", "Rysuj wykres", nullptr));
        Button_increase_scale->setText(QCoreApplication::translate("MainWindow", "+", nullptr));
        Button_reduce_scale->setText(QCoreApplication::translate("MainWindow", "-", nullptr));
        pushButton->setText(QCoreApplication::translate("MainWindow", "W\305\202a\305\233ciwo\305\233ci", nullptr));
        button_movement_left->setText(QCoreApplication::translate("MainWindow", "Left", nullptr));
        button_movement_right->setText(QCoreApplication::translate("MainWindow", "Right", nullptr));
        button_movement_up->setText(QCoreApplication::translate("MainWindow", "Up", nullptr));
        button_movement_down->setText(QCoreApplication::translate("MainWindow", "Down", nullptr));
    } // retranslateUi

};

namespace Ui {
    class MainWindow: public Ui_MainWindow {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_MAINWINDOW_H
