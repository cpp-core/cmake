cmake_minimum_required (VERSION 3.24 FATAL_ERROR)

function(add_json)
  set(JSON_Install ON CACHE INTERNAL "Have json create the install target")
  add_component(json TAG v3.11.2 TARGETS nlohmann_json::nlohmann_json)
endfunction()
