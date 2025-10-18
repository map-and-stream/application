cmake_minimum_required(VERSION 3.10.0)
project(Authentication VERSION 0.1.0 LANGUAGES C CXX)

add_executable(Authentication 
main.cpp
User.cpp
AuthService.cpp

)

