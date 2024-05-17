cmake_minimum_required (VERSION 3.24 FATAL_ERROR)

function(add_spdlog)
  set(SPDLOG_FMT_EXTERNAL ON)
  set(SPDLOG_INSTALL ON)
  add_repo(spdlog TAG v1.x)
endfunction()
