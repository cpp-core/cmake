cmake_minimum_required (VERSION 3.24 FATAL_ERROR)

include(${CMAKE_CURRENT_LIST_DIR}/add_component.cmake)

function(add_cc)
  return_if_target(cc)
  maybe_add_subdirectory(cc)
  maybe_find_package(cc)
  maybe_fetch_content(cc)
  missing_error(cc cc ${CPP_CORE_DIR}/cc)
endfunction()
