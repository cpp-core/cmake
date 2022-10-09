cmake_minimum_required (VERSION 3.24 FATAL_ERROR)

include(${CMAKE_CURRENT_LIST_DIR}/add_component.cmake)
include(FetchContent)

function(add_cpr)
  set(CMAKE_BUILD_TYPE Release)
  set(CPR_USE_SYSTEM_CURL ON)
  add_component(cpr)
endfunction()
