cmake_minimum_required (VERSION 3.24 FATAL_ERROR)

function(add_inja)
  add_json()
  set(nlohmann_json_ROOT ${CPP_CORE_BINARY_DIR}/components/json)
  set(BUILD_TESTING OFF)
  set(BUILD_BENCHMARK OFF)
  add_component(inja TARGETS pantor::inja)
endfunction()
