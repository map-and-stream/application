#pragma once
#include <unordered_map>
#include <string>
#include "UserRepository.h"


namespace Infrastructure
{
    class InMemoryUserRepository : public Application::UserRepository
    {
        public:
            void save(const Domain::User& user) override
            {
                m_users[user.getUserName()] = user;
            }

            std::shared_ptr<Domain::User> findByUsername(const std::string & username) override
            {
                auto it = m_users.find(username);
                return (it != m_users.end()) ? std::make_shared<Domain::User>(it->second) : nullptr;
            }

        private:
            std::unordered_map<std::string, Domain::User> m_users;
    };
}