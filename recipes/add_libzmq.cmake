cmake_minimum_required (VERSION 3.24 FATAL_ERROR)

include(${CMAKE_CURRENT_LIST_DIR}/add_component.cmake)

macro(add_libzmq)
  set(BUILD_TESTS OFF)
  add_component(ZeroMQ TARGET libzmq-static DIR libzmq)
endmacro()
