cmake_minimum_required(VERSION 3.7)
project(catch)

set(CMAKE_CXX_STANDARD 14)
add_subdirectory(Tests)
set(SOURCE_FILES main.cpp )
add_executable(catch ${SOURCE_FILES})