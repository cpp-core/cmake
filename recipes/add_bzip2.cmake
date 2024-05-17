cmake_minimum_required (VERSION 3.24 FATAL_ERROR)

function(add_bzip2)
  add_repo(libbz2 DIR bzip2 TAG master)
endfunction()
