cmake_minimum_required (VERSION 3.24 FATAL_ERROR)

include(${CMAKE_CURRENT_LIST_DIR}/add_component.cmake)

macro(add_cppzmq)
  add_component(cppzmq TARGET cppzmq-static)
endmacro()
