cmake_minimum_required (VERSION 3.24 FATAL_ERROR)

include(${CMAKE_CURRENT_LIST_DIR}/add_component.cmake)

macro(add_string)
  add_component(string string::string string)
endmacro()