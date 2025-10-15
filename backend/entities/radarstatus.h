#ifndef RADARSTATUS_H
#define RADARSTATUS_H

#include <cstdint>
#include <chrono>

enum class RadarStatusType {
    OPERATIONAL,
    DEGRADED,
    OFFLINE
};

// Radar status entity (time series of statuses)
class RadarStatus final {
public:
    RadarStatus(uint64_t radarId,
                RadarStatusType status,
                std::chrono::system_clock::time_point timestamp)
        : radarId_(radarId), status_(status), timestamp_(timestamp) {}

    uint64_t getRadarId() const { return radarId_; }
    RadarStatusType getStatus() const { return status_; }
    std::chrono::system_clock::time_point getTimestamp() const { return timestamp_; }

private:
    uint64_t radarId_;
    RadarStatusType status_;
    std::chrono::system_clock::time_point timestamp_;
};

#endif // RADARSTATUS_H
