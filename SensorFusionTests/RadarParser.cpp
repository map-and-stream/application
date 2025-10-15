#include "RadarParser.h"
#include <QStringList>

RadarParser::RadarParser() {}
QVector<RadarPoint> RadarParser::parseRadarCSV(const QString& csv) {
    QVector<RadarPoint> points;
    QStringList lines = csv.split('\n', Qt::SkipEmptyParts);

    for (const QString& line : lines) {
        QStringList tokens = line.split(',');
        if (tokens.size() != 3) continue;

        RadarPoint p;
        p.distance = tokens[0].toDouble();
        p.velocity = tokens[1].toDouble();
        p.azimuth = tokens[2].toDouble();
        points.append(p);
    }
    return points;
}
