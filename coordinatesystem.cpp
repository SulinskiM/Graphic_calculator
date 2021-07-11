#include "coordinatesystem.h"
#include <QPen>
#include <QPainter>

CoordinateSystem::CoordinateSystem()
{

}

int CoordinateSystem::get_size_axi_x()
{
    return size_axi_x;
}

int CoordinateSystem::get_size_axi_y()
{
    return size_axi_y;
}

void CoordinateSystem::set_size_axi_x(int size)
{
    if(size) size_axi_x = size;
}

void CoordinateSystem::set_size_axi_y(int size)
{
    if(size) size_axi_y = size;
}

int CoordinateSystem::get_movement_x()
{
    return movement_x;
}

int CoordinateSystem::get_movement_y()
{
    return movement_y;
}

double CoordinateSystem::get_precision()
{
    return precision;
}

void CoordinateSystem::reduce_precision()
{
    if(precision > 100)
        precision -= 50;
    else if(precision > 50)
        precision -= 10;
    else if(precision > 5)
        precision -= 5;
}

void CoordinateSystem::increase_precision()
{
    if(precision > 100)
        precision += 50;
    else if(precision > 50)
        precision += 10;
    else
        precision += 5;
}

void CoordinateSystem::move_horizon(int move)
{
    movement_x -= move;
}

void CoordinateSystem::move_vertical(int move)
{
    movement_y -= move;
}

void CoordinateSystem::draw_coordinate_system(QPainter &p)
{
    if(precision > 50.0)
        draw_auxiliary_net(p);
    draw_main_net(p);
    draw_main_axes(p);
}

void CoordinateSystem::draw_main_axes(QPainter &p)
{
    QPen pen(Qt::black, 6, Qt::SolidLine);
    p.setPen(pen);

    p.drawLine(0, size_axi_y / 2 + movement_y, size_axi_x, size_axi_y / 2 + movement_y);
    p.drawLine(size_axi_x / 2 + movement_x, 0, size_axi_x / 2 + movement_x, size_axi_y);
}

void CoordinateSystem::draw_main_net(QPainter &p)
{
    QPen pen(Qt::black, 2, Qt::SolidLine);
    p.setPen(pen);
    if(precision <= 10)
        this->draw_net(p, precision * 5);
    else
        this->draw_net(p, precision);
}

void CoordinateSystem::draw_auxiliary_net(QPainter &p)
{
    QPen pen(Qt::gray, 1, Qt::SolidLine);
    p.setPen(pen);
    this->draw_net(p, precision / 10);
}

void CoordinateSystem::draw_net(QPainter &p, double precisionF)
{
    for(int i = size_axi_y / 2 + movement_y; i < size_axi_x; i+= precisionF)
        p.drawLine(0, i, size_axi_x, i);
    for(int i = size_axi_x / 2 + movement_x; i < size_axi_y; i+=precisionF)
        p.drawLine(i, 0, i, size_axi_y);
    for(int i = size_axi_y / 2 + movement_y; i > 0; i -= precisionF)
        p.drawLine(0, i, size_axi_x, i);
    for(int i = size_axi_y / 2 + movement_x; i > 0; i -= precisionF)
        p.drawLine(i, 0, i, size_axi_y);
}
