cmake_minimum_required (VERSION 3.24 FATAL_ERROR)

include(${CMAKE_CURRENT_LIST_DIR}/add_component.cmake)

function(add_pp)
  FetchContent_Declare(
    pp
    GIT_REPOSITORY https://github.com/cpp-core/pp
    GIT_TAG main
    )
  FetchContent_MakeAvailable(pp)
endfunction()
