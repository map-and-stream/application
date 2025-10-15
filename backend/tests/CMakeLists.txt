cmake_minimum_required(VERSION 3.16)
project(tests LANGUAGES CXX)

enable_testing()

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Find GoogleTest installed by vcpkg
find_package(GTest REQUIRED)
find_package(Threads REQUIRED)

# Build full paths to backend sources
set(BACKEND_SOURCE_DIR ${BACKEND_INCLUDE_DIR})  # Ensure BACKEND_INCLUDE_DIR is set in parent CMakeLists

add_executable(tests
    main.cpp
    tst_entities.cpp
    backendTest.h

    # Your backend source files
    ${BACKEND_SOURCE_DIR}/entities/track.cpp
    ${BACKEND_SOURCE_DIR}/entities/radar.cpp
    ${BACKEND_SOURCE_DIR}/interactor/irepository.cpp
    ${BACKEND_SOURCE_DIR}/interactor/iauthorizer.cpp
    ${BACKEND_SOURCE_DIR}/interactor/ipresenter.cpp
    ${BACKEND_SOURCE_DIR}/interactor/radarinteractor.cpp
    ${BACKEND_SOURCE_DIR}/interactor/trackinteractor.cpp
)

target_include_directories(tests PRIVATE
    ${BACKEND_SOURCE_DIR}
    ${GTEST_INCLUDE_DIRS}  # GoogleTest include dirs provided by vcpkg
)

target_link_libraries(tests PRIVATE
    GTest::gtest
    GTest::gtest_main
    Threads::Threads
)

# Register the tests with CTest
add_test(NAME tests COMMAND tests)
