#ifndef RADARPARSER_H
#define RADARPARSER_H

#include "SensorTypes.h"
#include <QString>
#include <QVector>

class RadarParser
{
public:
    RadarParser();
    QVector<RadarPoint> parseRadarCSV(const QString& csv);
};

#endif // RADARPARSER_H
