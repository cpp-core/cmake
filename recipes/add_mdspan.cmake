cmake_minimum_required (VERSION 3.24 FATAL_ERROR)

function(add_mdspan)
  set(CMAKE_CXX_STANDARD=23)
  set(MDSPAN_CXX_STANDARD=23)
  add_repo(mdspan TAG stable)
endfunction()
