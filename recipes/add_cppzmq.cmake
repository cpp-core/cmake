cmake_minimum_required (VERSION 3.24 FATAL_ERROR)

include(${CMAKE_CURRENT_LIST_DIR}/add_component.cmake)

function(add_cppzmq)
  add_libzmq()
  set(CPPZMQ_BUILD_TESTS OFF)
  add_component(cppzmq TARGET cppzmq-static)
endfunction()
