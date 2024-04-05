cmake_minimum_required (VERSION 3.24 FATAL_ERROR)

function(add_fmt)
  set(FMT_INSTALL ON)
  set(FMT_TEST OFF)
  add_component(fmt TAG 10.2.1)
endfunction()
