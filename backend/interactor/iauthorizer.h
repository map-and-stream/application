#ifndef IAUTHORIZER_H
#define IAUTHORIZER_H

#pragma once
#include <string>

enum class EntityType { RadarEntity, TrackEntity };

class IAuthorizer {
public:
    virtual ~IAuthorizer() = default;
    virtual bool canAdd(const std::string& user, EntityType entity) = 0;
    virtual bool canUpdate(const std::string& user, EntityType entity) = 0;
    virtual bool canDelete(const std::string& user, EntityType entity) = 0;
};

#endif // IAUTHORIZER_H
