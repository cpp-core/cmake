cmake_minimum_required (VERSION 3.24 FATAL_ERROR)

include(${CMAKE_CURRENT_LIST_DIR}/add_component.cmake)

function(add_zstd)
  if (NOT TARGET libzstd_static)
    set(SRC_DIR ${CPP_CORE_SOURCE_DIR}/components/zstd/build/cmake)
    set(BIN_DIR ${CPP_CORE_BINARY_DIR}/components/zstd/build/cmake)
    add_subdirectory(${SRC_DIR} ${BIN_DIR})
    add_library(zstd::libzstd_static ALIAS libzstd_static)
    target_include_directories(libzstd_static PUBLIC
      $<BUILD_INTERFACE:${CPP_CORE_SOURCE_DIR}/components/zstd/lib>)
  endif()
endfunction()
