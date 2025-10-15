cmake_minimum_required(VERSION 3.16)

project(backend LANGUAGES CXX)

set(CMAKE_AUTOUIC ON)
set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTORCC ON)
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Find Qt (assumed installed separately, as vcpkg Qt can be complex)
find_package(QT NAMES Qt6 Qt5 REQUIRED COMPONENTS Core)
find_package(Qt${QT_VERSION_MAJOR} REQUIRED COMPONENTS Core)

# Define backend source files (used by both backend and tests)
set(BACKEND_SOURCES
    entities/track.cpp
    entities/radar.cpp
    interactor/irepository.cpp
    interactor/iauthorizer.cpp
    interactor/ipresenter.cpp
    interactor/trackinteractor.cpp
    interactor/radarinteractor.cpp
    entities/trackdata.cpp
    entities/radarstatus.cpp
)

# Define include directory
set(BACKEND_INCLUDE_DIR ${CMAKE_CURRENT_SOURCE_DIR})

# ==============================
# Find and link external libraries via vcpkg
# ==============================

# Eigen (header-only, provided by vcpkg)
find_package(Eigen3 REQUIRED)
# Eigen3::Eigen is the imported target provided by vcpkg

# OpenCV (provided by vcpkg)
find_package(OpenCV REQUIRED)
# OpenCV provides imported targets like opencv_core, opencv_imgproc, etc.

# GeographicLib (provided by vcpkg)
find_package(GeographicLib REQUIRED)
# GeographicLib::GeographicLib is the imported target

# Build main executable
add_executable(backend
    main.cpp
    ${BACKEND_SOURCES}
    entities/track.h
    entities/radar.h
    interactor/irepository.h
    interactor/iauthorizer.h
    interactor/ipresenter.h
    interactor/trackinteractor.h
    interactor/radarinteractor.h
    entities/trackdata.h
    entities/radarstatus.h
)

# Include directories for the backend
target_include_directories(backend PUBLIC
    ${CMAKE_CURRENT_SOURCE_DIR}
    ${OpenCV_INCLUDE_DIRS}
    ${GeographicLib_INCLUDE_DIRS}
)

# Link libraries
target_link_libraries(backend PRIVATE
    Qt${QT_VERSION_MAJOR}::Core
    Eigen3::Eigen
    opencv_core  # Use specific OpenCV modules or opencv_world if you need all
    GeographicLib::GeographicLib
)

# Installation rules
include(GNUInstallDirs)
install(TARGETS backend
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)

# Make BACKEND_SOURCES and BACKEND_INCLUDE_DIR available to subdirs
set(BACKEND_SOURCES ${BACKEND_SOURCES} PARENT_SCOPE)
set(BACKEND_INCLUDE_DIR ${BACKEND_INCLUDE_DIR} PARENT_SCOPE)

# Add tests subdirectory
add_subdirectory(tests)
