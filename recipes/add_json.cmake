cmake_minimum_required (VERSION 3.24 FATAL_ERROR)

include(${CMAKE_CURRENT_LIST_DIR}/add_component.cmake)

macro(add_json)
  set(JSON_Install ON CACHE INTERNAL "Have json create the install target")
  add_component(json TARGET nlohmann_json::nlohmann_json)
endmacro()
