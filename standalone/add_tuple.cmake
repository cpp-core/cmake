cmake_minimum_required (VERSION 3.24 FATAL_ERROR)

include(${CMAKE_CURRENT_LIST_DIR}/add_component.cmake)

function(add_tuple)
  FetchContent_Declare(
    tuple
    GIT_REPOSITORY https://github.com/cpp-core/tuple
    GIT_TAG main
    )
  FetchContent_MakeAvailable(tuple)
endfunction()
