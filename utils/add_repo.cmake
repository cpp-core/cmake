cmake_minimum_required (VERSION 3.24 FATAL_ERROR)

macro(add_repo REPO)
  cmake_parse_arguments(AP "" "URL;NAME" "" ${ARGN})

  if(AP_URL)
    set(URL ${AP_URL})
  else()
    set(URL "https://github.com")
  endif()

  if(AP_NAME)
    set(NAME ${NAME})
  else()
    string(MAKE_C_IDENTIFIER ${REPO} NAME)
  endif()
  
  find_package(${NAME} QUIET)
  if(${NAME}_FOUND)
    message("-- ${NAME}: Found installed package: ${NAME}_DIR")
  else()
    message("-- ${NAME}: Fetching package ${NAME} from repo: ${URL}/${REPO}")
    FetchContent_Declare(${NAME}
      GIT_REPOSITORY ${URL}/${REPO}
      GIT_TAG main)
    FetchContent_MakeAvailable(${NAME})
  endif()
endmacro()
