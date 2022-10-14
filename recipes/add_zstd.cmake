cmake_minimum_required (VERSION 3.24 FATAL_ERROR)

function(add_zstd)
  return_if_target(zstd::libzstd_static)
  add_component(zstd DIR zstd TAG master TARGETS zstd::libzstd_static)
  
  add_library(zstd::libzstd_static ALIAS libzstd_static)
  target_include_directories(libzstd_static PUBLIC
    $<BUILD_INTERFACE:${CPP_CORE_SOURCE_DIR}/components/zstd/lib>)
endfunction()
