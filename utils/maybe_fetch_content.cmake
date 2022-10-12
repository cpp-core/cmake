cmake_minimum_required (VERSION 3.24 FATAL_ERROR)

macro(maybe_fetch_content NAME)
  
  FetchContent_Declare(
    ${NAME}
    GIT_REPOSITORY https://github.com/cpp-core/${NAME}
    GIT_TAG main
    )
  
  FetchContent_MakeAvailable(${NAME})
  
  if (TARGET ${NAME})
    message("-- ${NAME}: Fetched content directly from repo")
    return()
  endif()
  
endmacro()
