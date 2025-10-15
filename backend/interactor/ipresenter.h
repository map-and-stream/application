#ifndef IPRESENTER_H
#define IPRESENTER_H

#include <string>
#include "../entities/radar.h"
#include "../entities/track.h"

class IPresenter {
public:
    virtual ~IPresenter() = default;
    virtual std::string presentRadar(const Radar& radar) = 0;   // gRPC message string
    virtual std::string presentTrack(const Track& track) = 0;   // gRPC message string
};

#endif // IPRESENTER_H
