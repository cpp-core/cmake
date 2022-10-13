cmake_minimum_required (VERSION 3.24 FATAL_ERROR)

include(${CMAKE_CURRENT_LIST_DIR}/add_component.cmake)

function(add_fp)
  return_if_target(pf)
  maybe_add_subdirectory(fp)
  maybe_find_package(fp)
  maybe_fetch_content(fp)
  missing_error(fp fp ${CPP_CORE_DIR}/fp)
endfunction()
