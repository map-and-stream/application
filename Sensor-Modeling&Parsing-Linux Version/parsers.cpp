#include "parsers.h"
#include <QStringList>
#include <QJsonDocument>
#include <QJsonArray>
#include <QJsonObject>

std::vector<RadarPoint> parseRadarCSV(const QString& csv) {
    std::vector<RadarPoint> points;
    QStringList lines = csv.split('\n', Qt::SkipEmptyParts);
    for (const QString& line : lines) {
        QStringList tokens = line.split(',', Qt::SkipEmptyParts);
        if (tokens.size() == 3) {
            RadarPoint p;
            p.distance = tokens[0].toDouble();
            p.velocity = tokens[1].toDouble();
            p.azimuth = tokens[2].toDouble();
            points.push_back(p);
        }
    }
    return points;
}

std::vector<CameraDetection> parseCameraJSON(const QString& json) {
    std::vector<CameraDetection> detections;
    QJsonDocument doc = QJsonDocument::fromJson(json.toUtf8());
    if (doc.isArray()) {
        QJsonArray array = doc.array();
        for (const QJsonValue& val : array) {
            if (val.isObject()) {
                QJsonObject obj = val.toObject();
                CameraDetection d;
                d.x = obj["x"].toInt();
                d.y = obj["y"].toInt();
                d.w = obj["w"].toInt();
                d.h = obj["h"].toInt();
                d.class_id = obj["class_id"].toInt();
                d.confidence = obj["confidence"].toDouble();
                detections.push_back(d);
            }
        }
    }
    return detections;
}
