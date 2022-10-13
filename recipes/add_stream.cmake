cmake_minimum_required (VERSION 3.24 FATAL_ERROR)

function(add_stream)
  return_if_target(stream)
  maybe_add_subdirectory(stream)
  maybe_find_package(stream)
  maybe_fetch_content(stream)
  missing_error(stream stream ${CPP_CORE_DIR}/stream)
endfunction()
