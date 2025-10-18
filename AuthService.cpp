#include "AuthService.h"

namespace Domain
{

bool AuthService::validatePassword(const std::string & inputPassword, const std::string & hashPassword)
{
    return hash(inputPassword) == hashPassword;
}


std::string AuthService::hash(const std::string & password)
{
    // This is not a real hash calculator

    return std::string(password.rbegin(), password.rend());
}



}