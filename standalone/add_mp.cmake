cmake_minimum_required (VERSION 3.24 FATAL_ERROR)

include(${CMAKE_CURRENT_LIST_DIR}/add_component.cmake)

function(add_mp)
  FetchContent_Declare(
    mp
    GIT_REPOSITORY https://github.com/cpp-core/mp
    GIT_TAG main
    )
  FetchContent_MakeAvailable(mp)
endfunction()
