#include <QtTest>

// add necessary includes here
#include "RadarParser.h"
#include "CameraParser.h"
class SensorFusionTests : public QObject
{
    Q_OBJECT

private slots:
    void test_case1();
    void testRadarCSVValid();
    void testCameraJSONValid();
};

void SensorFusionTests::testRadarCSVValid() {
    QString csv = "10.5,2.3,45.0\n20.1,1.8,90.0";
    RadarParser parser;
    auto result = parser.parseRadarCSV(csv);
    QCOMPARE(result.size(), 2);
    QCOMPARE(result[0].distance, 10.5);
}

void SensorFusionTests::testCameraJSONValid() {
    QString json = R"([
        {"x":10,"y":20,"w":30,"h":40,"class_id":1,"confidence":0.9}
    ])";

    CameraParser parser;
    auto result = parser.parseCameraJSON(json);

    QCOMPARE(result.size(), 1);
    QCOMPARE(result[0].x, 10);
}

void SensorFusionTests::test_case1() {}

QTEST_APPLESS_MAIN(SensorFusionTests)

#include "tst_sensorfusiontests.moc"
