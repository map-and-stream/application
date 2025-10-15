#include <QtTest/QtTest>
#include "parsers.h"

class TestParsers : public QObject {
    Q_OBJECT

private slots:
    void testRadarCSV_valid();
    void testRadarCSV_invalid();
    void testCameraJSON_valid();
    void testCameraJSON_invalid();
};

void TestParsers::testRadarCSV_valid() {
    QString csv = "10.0,2.0,45.0\n12.5,1.5,50.0";
    auto result = parseRadarCSV(csv);
    QCOMPARE(result.size(), 2);
    QCOMPARE(result[0].distance, 10.0);
    QCOMPARE(result[1].azimuth, 50.0);
}

void TestParsers::testRadarCSV_invalid() {
    QString csv = "10.0,2.0\nbad,data,line\n,,";
    auto result = parseRadarCSV(csv);
    QCOMPARE(result.size(), 0); // Should skip malformed lines
}

void TestParsers::testCameraJSON_valid() {
    QString json = R"([
        {"x":10,"y":20,"w":30,"h":40,"class_id":1,"confidence":0.9}
    ])";
    auto result = parseCameraJSON(json);
    QCOMPARE(result.size(), 1);
    QCOMPARE(result[0].x, 10);
    QCOMPARE(result[0].confidence, 0.9);
}

void TestParsers::testCameraJSON_invalid() {
    QString json = R"({ "not": "an array" })";
    auto result = parseCameraJSON(json);
    QCOMPARE(result.size(), 0); // Should return empty vector

    QString malformed = R"([ { "x": 10, "y": 20 )"; // broken JSON
    auto result2 = parseCameraJSON(malformed);
    QCOMPARE(result2.size(), 0);
}

QTEST_MAIN(TestParsers)
#include "test_parsers.moc"
