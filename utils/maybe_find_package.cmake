cmake_minimum_required (VERSION 3.24 FATAL_ERROR)

macro(maybe_find_package NAME)
  find_package(${NAME} QUIET)
  if(${NAME}_FOUND)
    message("-- ${NAME}: Found installed package: ${NAME}_DIR")
    return()
  endif()
endmacro()
