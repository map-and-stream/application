#pragma once
#include "User.h"
#include <memory>

namespace Application
{
    class UserRepository
    {
        public:
            virtual void save(const Domain::User & user) = 0;
            virtual std::shared_ptr<Domain::User> findByUsername(const std::string & username) = 0;
    };

}