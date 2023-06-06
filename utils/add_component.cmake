cmake_minimum_required (VERSION 3.24 FATAL_ERROR)

macro(add_component NAME)
  cmake_parse_arguments(AP
    "" # options
    "DIR;TAG;REPO" # single-value args
    "TARGETS" # multi-value args
    ${ARGN}
    )

  if(AP_DIR)
    set(DIR ${AP_DIR})
  else()
    set(DIR ${NAME})
  endif()

  if(AP_TAG)
    set(TAG ${AP_TAG})
  else()
    set(TAG main)
  endif()

  if(AP_REPO)
    set(REPO ${AP_REPO})
  else()
    set(REPO "cpp-core")
  endif()

  if(AP_TARGETS)
    set(TARGETS ${AP_TARGETS})
  else()
    set(TARGETS ${NAME}::${NAME})
  endif()

  return_if_target(${TARGETS})

  message("-- ${NAME}: Searching for ${TARGETS}")

  if(CPP_CORE_DIR AND EXISTS ${CPP_CORE_DIR}/${DIR})
    message("-- ${NAME}: Adding subdirectory: ${CPP_CORE_DIR}/${DIR}")
    add_subdirectory(${CPP_CORE_DIR}/${DIR} ${CMAKE_BINARY_DIR}/${DIR})
  else()
    find_package(${NAME} QUIET)
    if(${NAME}_FOUND)
      message("-- ${NAME}: Found installed package: ${NAME}_DIR")
    else()
      message("-- ${NAME}: Fetching from repo: ${DIR}")
      FetchContent_Declare(
	${NAME}
	GIT_REPOSITORY https://github.com/${REPO}/${DIR}
	GIT_TAG ${TAG}
	)
      FetchContent_MakeAvailable(${NAME})
    endif()
  endif()
endmacro()

