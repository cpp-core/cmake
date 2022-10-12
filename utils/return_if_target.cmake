cmake_minimum_required (VERSION 3.24 FATAL_ERROR)

macro(return_if_target NAME)
  if(TARGET ${NAME})
    return()
  endif()
endmacro()
