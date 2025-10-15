#ifndef IREPOSITORY_H
#define IREPOSITORY_H

#pragma once
#include <memory>
#include "../entities/radar.h"
#include "../entities/track.h"

class ITrackRepository {
public:
    virtual ~ITrackRepository() = default;
    virtual void save(const Track& track) = 0;
    virtual void update(const Track& track) = 0;
    virtual void remove(uint64_t id) = 0;
    virtual std::shared_ptr<Track> findById(uint64_t id) = 0;
};

class IRadarRepository {
public:
    virtual ~IRadarRepository() = default;
    virtual void save(const Radar& radar) = 0;
    virtual void update(const Radar& radar) = 0;
    virtual void remove(uint64_t id) = 0;
    virtual std::shared_ptr<Radar> findById(uint64_t id) = 0;
};

#endif // IREPOSITORY_H
