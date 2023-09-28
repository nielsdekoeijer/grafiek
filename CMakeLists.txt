cmake_minimum_required(VERSION 3.10)
project(grafiek CXX)

# set(CMAKE_CXX_STANDARD 20)
# set(CMAKE_EXPORT_COMPILE_COMMANDS ON)
# set(CMAKE_CXX_STANDARD_REQUIRED True)
# set(CMAKE_C_COMPILER "/usr/bin/clang")
# set(CMAKE_CXX_COMPILER "/usr/bin/clang++")
# set(CMAKE_CXX_FLAGS "-Weverything -O3 -Wno-pre-c++20-compat-pedantic -Wno-c++98-compat -Wno-padded")

find_package(Boost REQUIRED COMPONENTS system)

set(SOURCES
    src/draw/draw.cpp
    src/draw/addSquare.cpp
    src/draw/addPlot.cpp
    src/draw/addBackground.cpp
    src/draw/addHeader.cpp
    src/draw/addSize.cpp
    src/canvas/font.cpp
    src/color/hex.cpp
)

set(INCLUDEDIRS
    src
    ${Boost_INCLUDE_DIRS}
)

set(LINKDIRS
    ${Boost_LIBRARIES}
)

add_library(grafiek ${SOURCES})
target_link_libraries(grafiek PUBLIC ${LINKDIRS})
target_include_directories(grafiek PUBLIC ${INCLUDEDIRS})
