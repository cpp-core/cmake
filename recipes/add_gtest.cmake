cmake_minimum_required (VERSION 3.24 FATAL_ERROR)

macro(add_gtest)
  enable_testing()
  if (NOT TARGET GTest::gtest)
    find_package(GTest QUIET)
    if (NOT TARGET GTest::gtest)
      add_subdirectory(${CMAKE_CURRENT_SOURCE_DIR}/extern/googletest)
    endif()
  endif()
endmacro()
