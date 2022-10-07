cmake_minimum_required (VERSION 3.24 FATAL_ERROR)

include(${CMAKE_CURRENT_LIST_DIR}/add_component.cmake)

macro(add_zstd)
  find_package(zstd REQUIRED)
  # if (NOT TARGET libzstd_static)
  #   set(SRC_DIR ${CPP_CORE_SOURCE_DIR}/components/zstd/build/cmake)
  #   set(BIN_DIR ${CPP_CORE_BINARY_DIR}/components/zstd/build/cmake)
  #   add_subdirectory(${SRC_DIR} ${BIN_DIR})
  # endif()
endmacro()
