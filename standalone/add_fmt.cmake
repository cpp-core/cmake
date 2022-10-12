cmake_minimum_required (VERSION 3.24 FATAL_ERROR)

include(${CMAKE_CURRENT_LIST_DIR}/add_component.cmake)

function(add_fmt)
    FetchContent_Declare(
      fmt
      GIT_REPOSITORY https://github.com/cpp-core/fmt
      GIT_TAG 8.1.1
      )
    FetchContent_GetProperties(fmt)
    if(NOT fmt_POPULATED)
      FetchContent_Populate(fmt)
      set(FMT_INSTALL ON)
      set(FMT_TEST OFF)
      set(CMAKE_BUILD_TYPE Release)
      add_subdirectory(${fmt_SOURCE_DIR} ${fmt_BINARY_DIR})
    endif()
endfunction()
