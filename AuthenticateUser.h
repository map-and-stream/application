#pragma once
#include <string>
#include "UserRepository.h"
#include "AuthService.h"


namespace Application
{

class AuthenticateUser
{
    public:
        AuthenticateUser(UserRepository & repo): m_repository{repo}{}

        bool execute(const std::string & username, const std::string & password)
        {
            std::shared_ptr<Domain::User>  user = m_repository.findByUsername(username);
           
            if((user != nullptr) && Domain::AuthService::validatePassword(password, user->getHashPassword()))
            {
                return true;
            }
            return false;
        }


    private:
        UserRepository & m_repository;

};



}
