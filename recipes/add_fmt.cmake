cmake_minimum_required (VERSION 3.24 FATAL_ERROR)

function(add_fmt)
  set(FMT_INSTALL ON)
  set(FMT_TEST OFF)
  set(CMAKE_BUILD_TYPE Release)
  add_component(fmt TAG 9.1.0)
endfunction()
