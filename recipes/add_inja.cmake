cmake_minimum_required (VERSION 3.24 FATAL_ERROR)

include(${CMAKE_CURRENT_LIST_DIR}/add_component.cmake)

macro(add_inja)
  add_json()
  set(nlohmann_json_ROOT ${CPP_CORE_BINARY_DIR}/components/json)
  add_component(inja TARGET pantor::inja)
  unset(nlohmann_json_ROOT)
endmacro()
