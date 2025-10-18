#include <iostream>
#include "ConsoleUi.h"
#include "RegisterUser.h"
#include "AuthenticateUser.h"
#include "InMemoryUserRepository.h"


int main(int, char**){
    Infrastructure::InMemoryUserRepository userRepository;
    Application::RegisterUser registerUser(userRepository);
    Application::AuthenticateUser authenticateUser(userRepository);

    Interface::ConsoleUi consoleUi(registerUser, authenticateUser);

    int choice;

    do
    {
        std::cout << "1. Register\n";
        std::cout << "2. Login\n";
        std::cout << "3. Exit\n";
        std::cout << "Enter your choice\n";

        std::cin >> choice;

        switch(choice)
        {
            case 1:
                consoleUi.registerNewUser();
                break;
            case 2:
                consoleUi.loginUser();
                break;
            case 3:
                std::cout << "Exiting...\n";
                break;
            default:
                std::cout << "Invalid choice. Try again.\n";
        }

    } while (choice != 3);
    


}
