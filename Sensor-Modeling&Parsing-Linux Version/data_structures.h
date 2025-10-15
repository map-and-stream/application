#ifndef DATA_STRUCTURES_H
#define DATA_STRUCTURES_H
#pragma once
#include <QString>
#include <vector>
struct RadarPoint {
    double distance;
    double velocity;
    double azimuth;
};

struct CameraDetection {
    int x, y, w, h;
    int class_id;
    double confidence;
};

struct FusedObject {
    double x, y;
    double velocity_x, velocity_y;
    int class_id;
    std::vector<QString> source_sensors;
};
#endif // DATA_STRUCTURES_H
