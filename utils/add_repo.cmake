cmake_minimum_required (VERSION 3.24 FATAL_ERROR)

macro(add_repo PROJECT)
  cmake_parse_arguments(AP "" "URL;TAG;NAME" "" ${ARGN})

  if(${PROJECT} MATCHES ".*/.*")
    set(REPO ${PROJECT})
  else()
    set(REPO "cpp-core/${PROJECT}")
  endif()

  if(AP_URL)
    set(URL ${AP_URL})
  else()
    set(URL "https://github.com")
  endif()

  if(AP_TAG)
    set(TAG ${AP_TAG})
  else()
    set(TAG main)
  endif()
  
  if(AP_NAME)
    set(NAME ${NAME})
  else()
    string(MAKE_C_IDENTIFIER ${REPO} NAME)
  endif()
  
  find_package(${NAME} QUIET)
  
  if(${NAME}_FOUND)
    message("-- ${NAME}: Found installed package")
  else()
    message("-- ${NAME}: Including package ${NAME} from repo: ${URL}/${REPO}")
    FetchContent_Declare(${NAME}
      GIT_REPOSITORY ${URL}/${REPO}
      GIT_TAG ${TAG}
      FIND_PACKAGE_ARGS)
    FetchContent_MakeAvailable(${NAME})
  endif()
endmacro()
