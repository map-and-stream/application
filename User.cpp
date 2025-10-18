#include "User.h"

namespace Domain
{

User::User()
: m_username{""}, m_hashPassword{""}, m_userId{""}, m_roles{}
{}

User::User(const std::string & username, const std::string & hashpassword, const std::string & userId, std::vector<Role> roles)
: m_username{std::move(username)}, m_hashPassword{std::move(hashpassword)}, m_userId{std::move(userId)}, m_roles{std::move(roles)}
{}

std::string User::getUserName() const
{
    return m_username;
}

std::string User::getUserId() const
{
    return m_userId;
}

std::string User::getHashPassword() const
{
    return m_hashPassword;
}

const std::vector<Role>& User::getRoles() const
{
    return m_roles;
}


}