cmake_minimum_required (VERSION 3.24 FATAL_ERROR)

function(add_fmt)
  return_if_target(fmt)
  
  set(FMT_INSTALL ON)
  set(FMT_TEST OFF)
  set(CMAKE_BUILD_TYPE Release)
  maybe_add_subdirectory(fmt)
  maybe_find_package(fmt)
  maybe_fetch_content(fmt TAG 8.1.1)
  
  missing_error(fmt fmt ${CPP_CORE_DIR})
endfunction()
