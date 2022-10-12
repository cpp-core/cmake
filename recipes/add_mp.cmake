cmake_minimum_required (VERSION 3.24 FATAL_ERROR)

function(add_mp)
  return_if_target(mp)
  maybe_add_subdirectory(mp)
  maybe_find_package(mp)
  maybe_fetch_content(mp)
  missing_error(mp mp ${CPP_CORE_DIR})
endfunction()
