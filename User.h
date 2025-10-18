#pragma once
#include <string>
#include <vector>


namespace Domain
{

enum class Role
{
    ADMIN,
    USER
};


class User
{
    public:
    User();
    User(const std::string & username, const std::string & hashPassword, const std::string & userId, std::vector<Role> roles);
    std::string getUserName() const;
    std::string getUserId() const;
    std::string getHashPassword() const;
    const std::vector<Role>& getRoles() const;
private:
    std::string m_username;
    std::string m_hashPassword;
    std::string m_userId;
    std::vector<Role> m_roles;

};
}