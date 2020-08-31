project(kata)

set(CMAKE_MODULE_PATH ${CMAKE_CURRENT_SOURCE_DIR}/cmake/modules ${CMAKE_MODULE_PATH})
include(CppResultType)
cmake_minimum_required(VERSION 3.15)

enable_testing()

####################################################
# Set the C++ Standard to be used (Default to C++11)
####################################################
set(CXX_STANDARD 17)
set(CXX_STANDARD_REQUIRED ON)

####################################################################
# Set Compiler flags
####################################################################
IF (CMAKE_CXX_COMPILER_ID MATCHES "GNU" OR CMAKE_CXX_COMPILER_ID MATCHES "Clang")
  SET(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wall -std=c++${CXX_STANDARD}")
ELSEIF (MSVC)
  SET(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} /W4")
ENDIF()

include_directories("${CMAKE_SOURCE_DIR}/include")

####################################################
# Add Unit Tests file names (without .cpp extension)
####################################################
list(APPEND UNIT_TESTS
    kata
)

####################################################
# Create executable for each test
####################################################
foreach(TEST ${UNIT_TESTS})
    add_executable(${TEST} "${CMAKE_SOURCE_DIR}/src/${TEST}.cpp")
    target_link_libraries(${TEST} cppresulttype)
    add_test(${TEST} ${TEST})
endforeach()
