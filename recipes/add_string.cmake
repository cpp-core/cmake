cmake_minimum_required (VERSION 3.24 FATAL_ERROR)

include(${CMAKE_CURRENT_LIST_DIR}/add_component.cmake)

function(add_string)
  return_if_target(string)
  maybe_add_subdirectory(string)
  maybe_find_package(string)
  maybe_fetch_content(string)
  missing_error(string string ${CPP_CORE_DIR}/string)
endfunction()
