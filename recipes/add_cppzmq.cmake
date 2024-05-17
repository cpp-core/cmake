cmake_minimum_required (VERSION 3.24 FATAL_ERROR)

function(add_cppzmq)
  add_libzmq()
  set(CPPZMQ_BUILD_TESTS OFF)
  add_repo(cppzmq TARGETS cppzmq-static)
endfunction()
