cmake_minimum_required (VERSION 3.24 FATAL_ERROR)

macro(maybe_add_subdirectory NAME)
  if(CPP_CORE_DIR AND EXISTS ${CPP_CORE_DIR}/${NAME})
    message("-- ${NAME}: Added subdirectory: ${CPP_CORE_DIR}/${NAME}")
    add_subdirectory(${CPP_CORE_DIR}/${NAME} ${CMAKE_BINARY_DIR}/${NAME})
    return()
  endif()
endmacro()
