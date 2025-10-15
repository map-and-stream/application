#ifndef CAMERAPARSER_H
#define CAMERAPARSER_H

#include "SensorTypes.h"
#include <QString>
#include <QVector>

class CameraParser
{
public:
    CameraParser();
    QVector<CameraDetection> parseCameraJSON(const QString& jsonStr);
};

#endif // CAMERAPARSER_H
