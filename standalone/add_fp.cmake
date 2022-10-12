cmake_minimum_required (VERSION 3.24 FATAL_ERROR)

include(${CMAKE_CURRENT_LIST_DIR}/add_component.cmake)

function(add_fp)
  FetchContent_Declare(
    fp
    GIT_REPOSITORY https://github.com/cpp-core/fp
    GIT_TAG main
    )
  FetchContent_MakeAvailable(fp)
endfunction()
