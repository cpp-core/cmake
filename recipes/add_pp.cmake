cmake_minimum_required (VERSION 3.24 FATAL_ERROR)

function(add_pp)
  return_if_target(pp)
  maybe_add_subdirectory(pp)
  maybe_find_package(pp)
  maybe_fetch_content(pp)
  missing_error(pp pp ${CPP_CORE_DIR})
endfunction()
