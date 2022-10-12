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
  
  FetchContent_Declare(
    ${NAME}
    GIT_REPOSITORY https://github.com/cpp-core/${NAME}
    GIT_TAG ${TAG}
    )
  
  FetchContent_MakeAvailable(${NAME})
  
  if (TARGET ${NAME})
    message("-- ${NAME}: Fetched content directly from repo")
    return()
  endif()
  
endmacro()
