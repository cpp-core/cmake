cmake_minimum_required (VERSION 3.24 FATAL_ERROR)

include(${CMAKE_CURRENT_LIST_DIR}/add_component.cmake)

macro(add_xtensor)
  set(BUILD_BENCHMARK OFF)
  add_component(xtl)
  add_component(xsimd)
  add_component(xtensor)
endmacro()
