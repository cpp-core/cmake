cmake_minimum_required (VERSION 3.24 FATAL_ERROR)

function(add_xtensor)
  add_repo(xtl)
  add_repo(xsimd)
  add_repo(xtensor)
endfunction()
