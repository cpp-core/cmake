cmake_minimum_required (VERSION 3.24 FATAL_ERROR)

macro(maybe_fetch_content NAME)
  cmake_parse_arguments(MFC
    "" # options
    "TAG" # single-value args
    "TARGETS" # multi-value args
    ${ARGN}
    )

  if(MFC_TAG)
    set(TAG ${MFC_TAG})
  else()
    set(TAG main)
  endif()

  if(MFC_TARGETS)
    set(TARGETS ${MFC_TARGETS})
  else()
    list(APPEND TARGETS ${NAME})
  endif()
  
  FetchContent_Declare(
    ${NAME}
    GIT_REPOSITORY https://github.com/cpp-core/${NAME}
    GIT_TAG ${TAG}
    )
  
  FetchContent_MakeAvailable(${NAME})

  foreach(target ${TARGETS})
    if(TARGET ${target})
      message("-- ${NAME}: Fetched content directly from repo")
      return()
    endif()
  endforeach()
  
endmacro()
