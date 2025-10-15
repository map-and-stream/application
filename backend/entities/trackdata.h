#ifndef TRACKDATA_H
#define TRACKDATA_H

#include <chrono>
#include <cstdint>
#include <cmath>
#include "track.h"

class TrackData final {
public:
    TrackData(uint64_t trackId,
              const Position& pos,
              std::chrono::system_clock::time_point timestamp)
        : trackId_(trackId), position_(pos), timestamp_(timestamp) {}

    uint64_t getTrackId() const { return trackId_; }
    const Position& getPosition() const { return position_; }
    std::chrono::system_clock::time_point getTimestamp() const { return timestamp_; }

private:
    uint64_t trackId_;
    Position position_;
    std::chrono::system_clock::time_point timestamp_;
};

#endif // TRACKDATA_H
