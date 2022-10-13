cmake_minimum_required (VERSION 3.24 FATAL_ERROR)

include(${CMAKE_CURRENT_LIST_DIR}/add_component.cmake)

function(add_util)
  return_if_target(util)
  maybe_add_subdirectory(util)
  maybe_find_package(util)
  maybe_fetch_content(util)
  missing_error(util util ${CPP_CORE_DIR}/util)
endfunction()
