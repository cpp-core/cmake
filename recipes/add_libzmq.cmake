cmake_minimum_required (VERSION 3.24 FATAL_ERROR)

function(add_libzmq)
  set(BUILD_TESTS OFF)
  add_component(ZeroMQ DIR libzmq TARGETS libzmq-static)
endfunction()
