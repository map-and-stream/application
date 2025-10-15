#ifndef SENSORTYPES_H
#define SENSORTYPES_H
#include <QString>
#include <QVector>

struct RadarPoint {
    double distance;
    double velocity;
    double azimuth;
};

struct CameraDetection {
    int x, y, w, h;
    int class_id;
    float confidence;
};

struct FusedObject {
    double x, y;
    double velocity_x, velocity_y;
    int class_id;
    QVector<QString> source_sensors;
};
#endif // SENSORTYPES_H
