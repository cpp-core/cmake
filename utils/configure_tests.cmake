cmake_minimum_required (VERSION 3.24 FATAL_ERROR)

function(configure_tests SUBDIR LIBRARIES)

  if (NOT TARGET check)
    add_custom_target(check ${CMAKE_CTEST_COMMAND} WORKING_DIRECTORY ${CMAKE_BINARY_DIR})
    add_custom_target(check_detail ${CMAKE_CTEST_COMMAND} -V WORKING_DIRECTORY ${CMAKE_BINARY_DIR})
  endif()
  
  foreach(NAME ${ARGN})
    get_filename_component(DIRNAME ${NAME} DIRECTORY)
    get_filename_component(BASENAME ${NAME} NAME_WE)
    string(REPLACE / _ CATNAME ${NAME})

    set(TEST_NAME test_${CATNAME})
    set(TEST_FILE ${PROJECT_SOURCE_DIR}/test/src/${SUBDIR}/${DIRNAME}/test_${CATNAME}.cpp)
    if(NOT EXISTS ${TEST_FILE})
      message(FATAL "Test: ${TEST_NAME}, Failed to find test file: ${TEST_FILE}")
    endif()

    add_executable(${TEST_NAME} EXCLUDE_FROM_ALL ${TEST_FILE})
    
    gtest_discover_tests(${TEST_NAME}
      WORKING_DIRECTORY ${PROJECT_DIR}
      DISCOVERY_MODE PRE_TEST
      )

    target_link_libraries(${TEST_NAME} PUBLIC ${LIBRARIES})
    target_include_directories(${TEST_NAME} PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/../include)

    add_dependencies(check ${TEST_NAME})
    add_dependencies(check_detail ${TEST_NAME})
  endforeach(NAME)
endfunction()

