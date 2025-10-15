#include <QCoreApplication>
#include <QDebug>
#include "parsers.h"
int main(int argc, char *argv[])
{
    QCoreApplication a(argc, argv);
    QString radarCSV = "10.5,2.3,45.0\n12.0,1.8,50.0";
    QString cameraJSON = R"([
        {"x":100,"y":150,"w":50,"h":60,"class_id":1,"confidence":0.95},
        {"x":200,"y":250,"w":40,"h":50,"class_id":2,"confidence":0.85}
    ])";

    auto radarPoints = parseRadarCSV(radarCSV);
    auto cameraDetections = parseCameraJSON(cameraJSON);

    qDebug() << "Radar Points:";
    for (const auto& p : radarPoints)
        qDebug() << "Distance:" << p.distance << "Velocity:" << p.velocity << "Azimuth:" << p.azimuth;

    qDebug() << "Camera Detections:";
    for (const auto& d : cameraDetections)
        qDebug() << "BBox:" << d.x << d.y << d.w << d.h << "Class:" << d.class_id << "Confidence:" << d.confidence;
    // Set up code that uses the Qt event loop here.
    // Call a.quit() or a.exit() to quit the application.
    // A not very useful example would be including
    // #include <QTimer>
    // near the top of the file and calling
    // QTimer::singleShot(5000, &a, &QCoreApplication::quit);
    // which quits the application after 5 seconds.

    // If you do not need a running Qt event loop, remove the call
    // to a.exec() or use the Non-Qt Plain C++ Application template.

    return a.exec();
}
