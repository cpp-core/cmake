cmake_minimum_required (VERSION 3.24 FATAL_ERROR)

include(${CMAKE_CURRENT_LIST_DIR}/add_component.cmake)

macro(add_bzip2)
  add_component(libbz2 DIR bzip2)
endmacro()
