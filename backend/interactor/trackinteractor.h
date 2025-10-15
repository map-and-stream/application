#ifndef TRACKINTERACTOR_H
#define TRACKINTERACTOR_H

#include "irepository.h"
#include "iauthorizer.h"
#include "ipresenter.h"
#include <stdexcept>

class TrackInteractor {
    ITrackRepository* repo;
    IAuthorizer* auth;
    IPresenter* presenter;

public:
    TrackInteractor(ITrackRepository* r, IAuthorizer* a, IPresenter* p)
        : repo(r), auth(a), presenter(p) {}

    std::string addTrack(const std::string& user, const Track& track) {
        if (!auth->canAdd(user, EntityType::TrackEntity)) {
            throw std::runtime_error("Access denied: cannot add track");
        }
        repo->save(track);
        return presenter->presentTrack(track);
    }

    std::string updateTrack(const std::string& user, const Track& track) {
        if (!auth->canUpdate(user, EntityType::TrackEntity)) {
            throw std::runtime_error("Access denied: cannot update track");
        }
        repo->update(track);
        return presenter->presentTrack(track);
    }

    void deleteTrack(const std::string& user, uint64_t id) {
        if (!auth->canDelete(user, EntityType::TrackEntity)) {
            throw std::runtime_error("Access denied: cannot delete track");
        }
        repo->remove(id);
    }
};

#endif // TRACKINTERACTOR_H
