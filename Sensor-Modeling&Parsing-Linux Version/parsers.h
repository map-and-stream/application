#ifndef PARSERS_H
#define PARSERS_H
#pragma once
#include "data_structures.h"
#include <QString>
#include <vector>

std::vector<RadarPoint> parseRadarCSV(const QString& csv);
std::vector<CameraDetection> parseCameraJSON(const QString& json);
#endif // PARSERS_H
