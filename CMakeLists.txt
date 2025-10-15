cmake_minimum_required(VERSION 3.16 FATAL_ERROR)  # only one minimum required

project(
    MapAndStream
    VERSION 0.9
    LANGUAGES CXX
)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Compiler warnings
if (MSVC)
    add_compile_options(/W3)  # W3 warning level, treat warnings as errors
else()
    add_compile_options(-Wall -Wextra -Wno-unused-parameter) # GCC/Clang
endif()

# Subdirectories
add_subdirectory(backend)
add_subdirectory(frontend)
