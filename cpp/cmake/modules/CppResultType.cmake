cmake_minimum_required(VERSION 3.14 FATAL_ERROR)
include(FetchContent)

set(component cppresulttype)

FetchContent_Declare(
        extern_${component}
  GIT_REPOSITORY https://github.com/ferkulat/CppResultType.git
  GIT_TAG        f6be9c3e6b5c373fb0ffccc72126de016e25bf52
)
if(NOT extern_${component}_POPULATED)
    FetchContent_Populate(extern_${component})
endif()
add_library(${component}  INTERFACE)

add_library(${component}::${component} ALIAS ${component})

target_include_directories(${component}
        INTERFACE
        $<BUILD_INTERFACE:${extern_${component}_SOURCE_DIR}/include>
        $<INSTALL_INTERFACE:${CMAKE_INSTALL_INCLUDEDIR}>
        )

