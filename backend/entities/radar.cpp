#include "radar.h"

Radar::Radar(uint64_t id,
             const std::string& name,
             double latitude,
             double longitude,
             double altitude,
             double range_drift,
             double azimuth_drift,
             RadarStatus status,
             RadarType type)
    : id_(id)
    , name_(name)
    , latitude_(latitude)
    , longitude_(longitude)
    , altitude_(altitude)
    , range_drift_(range_drift)
    , azimuth_drift_(azimuth_drift)
    , status_(status)
    , type_(type) {}
