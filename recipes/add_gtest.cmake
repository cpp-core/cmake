cmake_minimum_required (VERSION 3.24 FATAL_ERROR)

macro(add_gtest)
  include(GoogleTest)
  enable_testing()
  add_repo(GTest DIR googletest TAG release-1.12.1 TARGETS GTest::gtest)
endmacro()
