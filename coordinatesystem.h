#ifndef COORDINATESYSTEM_H
#define COORDINATESYSTEM_H
#include <QPainter>

class CoordinateSystem
{
public:
    CoordinateSystem();
    void draw_coordinate_system(QPainter&);
    void reduce_precision();
    void increase_precision();
    void move_horizon(int);
    void move_vertical(int);
    int get_size_axi_x();
    int get_size_axi_y();
    void set_size_axi_x(int);
    void set_size_axi_y(int);
    int get_movement_x();
    int get_movement_y();
    double get_precision();

private:
    double precision = 50.0; //z ilu pikseli składa się wartość 1 na wykresie
    int movement_x = 0;
    int movement_y = 0;
    int size_axi_x = 800;
    int size_axi_y = 800;
    void draw_main_axes(QPainter&);
    void draw_main_net(QPainter&);
    void draw_auxiliary_net(QPainter&);
    void draw_net(QPainter &, double);
};

#endif // COORDINATESYSTEM_H
