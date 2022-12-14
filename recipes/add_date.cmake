cmake_minimum_required (VERSION 3.24 FATAL_ERROR)

function(add_date)
  set(USE_SYSTEM_TZ_DB ON)
  set(BUILD_TZ_LIB ON)
  set(CMAKE_POLICY_DEFAULT_CMP0077 ON)
  add_component(date TAG v3.0.1 TARGETS date::date-tz)
endfunction()
