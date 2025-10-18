#pragma once
#include <string>
#include "UserRepository.h"
#include "AuthService.h"
#include <stdexcept>


namespace Application
{

class RegisterUser
{
    public:
        RegisterUser(UserRepository & repo) : m_repository{repo} {};


        void execute(const std::string & username, const std::string & password)
        {
            if(m_repository.findByUsername(username) != nullptr)
            {
                throw std::runtime_error("Username already exists");
            }

            std::string hashPassword = Domain::AuthService::hash(password);
            Domain::User newUser(username, hashPassword, "UUID", {Domain::Role::USER});
            m_repository.save(newUser);
        }



    private:
        UserRepository& m_repository;

};



}
