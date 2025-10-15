#ifndef RADARINTERACTOR_H
#define RADARINTERACTOR_H

#include "irepository.h"
#include "iauthorizer.h"
#include "ipresenter.h"
#include <stdexcept>

class RadarInteractor {
    IRadarRepository* repo;
    IAuthorizer* auth;
    IPresenter* presenter;

public:
    RadarInteractor(IRadarRepository* r, IAuthorizer* a, IPresenter* p)
        : repo(r), auth(a), presenter(p) {}

    std::string addRadar(const std::string& user, const Radar& radar) {
        if (!auth->canAdd(user, EntityType::RadarEntity)) {
            throw std::runtime_error("Access denied: cannot add radar");
        }
        repo->save(radar);
        return presenter->presentRadar(radar);
    }

    std::string updateRadar(const std::string& user, const Radar& radar) {
        if (!auth->canUpdate(user, EntityType::RadarEntity)) {
            throw std::runtime_error("Access denied: cannot update radar");
        }
        repo->update(radar);
        return presenter->presentRadar(radar);
    }

    void deleteRadar(const std::string& user, uint64_t id) {
        if (!auth->canDelete(user, EntityType::RadarEntity)) {
            throw std::runtime_error("Access denied: cannot delete radar");
        }
        repo->remove(id);
    }
};
#endif // RADARINTERACTOR_H
