#ifndef RADAR_H
#define RADAR_H

#include <string>
#include <cstdint>

enum class RadarStatus {
    OPERATIONAL,
    DEGRADED,
    OFFLINE
};

enum class RadarType {
    PRIMARY,
    SECONDARY,
    DOPPLER,
    PHASED_ARRAY
};

class Radar final {
public:
    // Constructor: all fields explicitly provided (no auto-generation)
    Radar(uint64_t id,
          const std::string& name,
          double latitude,
          double longitude,
          double altitude,
          double range_drift,
          double azimuth_drift,
          RadarStatus status,
          RadarType type);

    // Getters
    uint64_t getId() const { return id_; }
    const std::string& getName() const { return name_; }
    double getLatitude() const { return latitude_; }
    double getLongitude() const { return longitude_; }
    double getAltitude() const { return altitude_; }
    double getRangeDrift() const { return range_drift_; }
    double getAzimuthDrift() const { return azimuth_drift_; }
    RadarStatus getStatus() const { return status_; }
    RadarType getType() const { return type_; }

private:
    uint64_t id_;
    std::string name_;
    double latitude_;        // in degrees
    double longitude_;       // in degrees
    double altitude_;        // in meters
    double range_drift_;     // in meters
    double azimuth_drift_;   // in degrees
    RadarStatus status_;
    RadarType type_;
};

#endif // RADAR_H
