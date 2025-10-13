// Necessary header files for input output functions
#include <iostream>
using namespace std;
#include "log/logger.h"

// main() function: where the execution of
// C++ program begins
int main() {
  
    // This statement prints "Hello World"
    std::cout << "Hello World\n";
    ConsoleLogger logger;
    logger.Info("hello from sub-module logger");
    return 0;
}