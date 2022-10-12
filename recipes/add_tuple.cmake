cmake_minimum_required (VERSION 3.24 FATAL_ERROR)

function(add_tuple)
  return_if_target(tuple)
  maybe_add_subdirectory(tuple)
  maybe_find_package(tuple)
  maybe_fetch_content(tuple)
  missing_error(mp mp ${CPP_CORE_DIR}/tuple)
endfunction()
