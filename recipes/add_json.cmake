cmake_minimum_required (VERSION 3.24 FATAL_ERROR)

function(add_json)
  return_if_target(nlohmann_json::nlohmann_json)
  
  set(JSON_Install ON CACHE INTERNAL "Have json create the install target")
  maybe_add_subdirectory(json)
  maybe_find_package(nlohmann_json)
  maybe_fetch_content(json TAG v3.11.2 TARGETS nlohmann_json::nlohmann_json)

  missing_error(json nlohmann_json::nlohmann_json ${CPP_CORE_DIR}/json)
endfunction()
