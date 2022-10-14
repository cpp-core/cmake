cmake_minimum_required (VERSION 3.24 FATAL_ERROR)

function(add_zstd)
  return_if_target(zstd::libzstd_static)

  set(NAME zstd)
  set(TARGETS zstd::libzstd_static)
  set(DIR zstd)
  set(TAG v1.4.10)
  
  message("-- ${NAME}: Searching for ${TARGETS}")

  if(CPP_CORE_DIR AND EXISTS ${CPP_CORE_DIR}/${DIR})
    message("-- ${NAME}: Adding subdirectory: ${CPP_CORE_DIR}/${DIR}")
    add_subdirectory(${CPP_CORE_DIR}/${DIR} ${CMAKE_BINARY_DIR}/${DIR})
    return()
  endif()
  
  find_package(${NAME} QUIET)
  if(${NAME}_FOUND)
    message("-- ${NAME}: Found installed package: ${NAME}_DIR")
    return()
  endif()

  message("-- ${NAME}: Fetching from repo: ${DIR}")
  FetchContent_Declare(
    ${NAME}
    GIT_REPOSITORY https://github.com/cpp-core/${DIR}
    GIT_TAG ${TAG}
    )
  FetchContent_GetProperties(${NAME})
  if(NOT zstd_POPULATED)
    FetchContent_Populate(zstd)
    add_subdirectory(${zstd_SOURCE_DIR}/build/cmake ${zstd_BINARY_DIR})
  
    add_library(zstd::libzstd_static ALIAS libzstd_static)
    target_include_directories(libzstd_static PUBLIC
      $<BUILD_INTERFACE:${CPP_CORE_SOURCE_DIR}/components/zstd/lib>)
  endif()
  
endfunction()
