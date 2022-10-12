cmake_minimum_required (VERSION 3.24 FATAL_ERROR)

function(add_gtest_impl)
  maybe_add_subdirectory(googletest)
  maybe_find_package(GTest)
  maybe_fetch_content(googletest TARGETS GTest::gtest)
  missing_error(GTest googletest ${CPP_CORE_DIR}/googletest)
endfunction()

macro(add_gtest)
  include(GoogleTest)
  enable_testing()
  add_gtest_impl()
endmacro()
