cmake_minimum_required (VERSION 3.24 FATAL_ERROR)

include(${CMAKE_CURRENT_LIST_DIR}/add_component.cmake)

macro(add_gtest)
  include(GoogleTest)
  enable_testing()
  add_component(GTest TARGET GTest::gtest DIR googletest)
endmacro()
