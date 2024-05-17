cmake_minimum_required (VERSION 3.24 FATAL_ERROR)

function(add_cpr)
  set(CMAKE_BUILD_TYPE Release)
  set(CPR_USE_SYSTEM_CURL ON)
  add_repo(cpr)
endfunction()
