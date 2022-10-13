cmake_minimum_required (VERSION 3.24 FATAL_ERROR)

include(${CMAKE_CURRENT_LIST_DIR}/add_component.cmake)

function(add_strand)
  return_if_target(strand)
  maybe_add_subdirectory(strand)
  maybe_find_package(strand)
  maybe_fetch_content(strand)
  missing_error(strand strand ${CPP_CORE_DIR}/strand)
endfunction()
