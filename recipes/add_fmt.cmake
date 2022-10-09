cmake_minimum_required (VERSION 3.24 FATAL_ERROR)

include(${CMAKE_CURRENT_LIST_DIR}/add_component.cmake)

function(add_fmt)
  set(FMT_INSTALL ON)
  set(FMT_TEST OFF)
  set(CMAKE_BUILD_TYPE Release)
  add_component(fmt)
endfunction()
