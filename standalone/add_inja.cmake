cmake_minimum_required (VERSION 3.24 FATAL_ERROR)

include(${CMAKE_CURRENT_LIST_DIR}/add_component.cmake)

function(add_inja)
  add_json()
  set(nlohmann_json_ROOT ${CPP_CORE_BINARY_DIR}/components/json)
  set(BUILD_TESTING OFF)
  set(BUILD_BENCHMARK OFF)
  add_component(inja TARGET pantor::inja)
endfunction()
