#pragma once
#include <string>
#include <iostream>
#include "RegisterUser.h"
#include "AuthenticateUser.h"

namespace Interface
{
    class ConsoleUi
    {
        public:
            ConsoleUi(Application::RegisterUser & regUser, Application::AuthenticateUser & authUser):
            m_registerUser{regUser}, m_authenticateUser{authUser}{}

            void registerNewUser()
            {
                std::string username, password;
                std::cout << "Enter a username:\n";
                std::cin >> username;
                std::cout << "Enter a password:\n";
                std::cin >> password;

                try
                {
                    m_registerUser.execute(username, password);
                    std::cout << "User registered successfully!\n\n";
                }
                catch(const std::exception& e)
                {
                    std::cerr << "Registration failed: " << e.what() << "\n\n";
                }
                
            }

            void loginUser()
            {
                std::string username, password;
                std::cout << "Enter your username:\n";
                std::cin >> username;
                std::cout << "Enter your password:\n";
                std::cin >> password;

                if(m_authenticateUser.execute(username, password))
                {
                    std::cout << "Login successful! Welcome " << username << "\n\n";
                }
                else
                {
                    std::cout << "Login failed: Invalid username or password.\n\n";
                }
            }



        private:
            Application::RegisterUser & m_registerUser;
            Application::AuthenticateUser & m_authenticateUser;
    };
}


