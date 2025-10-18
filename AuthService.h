#pragma once
#include <string>
#include <iostream>


namespace Domain
{
    class AuthService
    {
        public:
        static bool validatePassword(const std::string & inputPassword, const std::string & hashPassword);
        static std::string hash(const std::string & password);
    };
}