cmake_minimum_required (VERSION 3.24 FATAL_ERROR)

include(${CMAKE_CURRENT_LIST_DIR}/add_component.cmake)

macro(add_gtest)
  include(GoogleTest)
  enable_testing()
  FetchContent_Declare(
    GTest
    GIT_REPOSITORY https://github.com/cpp-core/googletest
    GIT_TAG release-1.12.1
    )
  FetchContent_MakeAvailable(GTest)
endmacro()
