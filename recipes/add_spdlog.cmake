cmake_minimum_required (VERSION 3.24 FATAL_ERROR)

include(${CMAKE_CURRENT_LIST_DIR}/add_component.cmake)

macro(add_spdlog)
  set(SPDLOG_FMT_EXTERNAL ON)
  set(SPDLOG_INSTALL ON)
  add_component(spdlog)
  unset(SPDLOG_FMT_EXTERNAL)
  unset(SPDLOG_INSTALL)
endmacro()
