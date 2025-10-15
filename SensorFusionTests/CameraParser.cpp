#include "CameraParser.h"
#include <QJsonDocument>
#include <QJsonArray>
#include <QJsonObject>

CameraParser::CameraParser() {}
QVector<CameraDetection> CameraParser::parseCameraJSON(const QString& jsonStr) {
    QVector<CameraDetection> detections;
    QJsonDocument doc = QJsonDocument::fromJson(jsonStr.toUtf8());
    if (!doc.isArray()) return detections;

    QJsonArray array = doc.array();
    for (const QJsonValue& val : array) {
        if (!val.isObject()) continue;
        QJsonObject obj = val.toObject();

        CameraDetection det;
        det.x = obj["x"].toInt();
        det.y = obj["y"].toInt();
        det.w = obj["w"].toInt();
        det.h = obj["h"].toInt();
        det.class_id = obj["class_id"].toInt();
        det.confidence = obj["confidence"].toDouble();
        detections.append(det);
    }
    return detections;
}
