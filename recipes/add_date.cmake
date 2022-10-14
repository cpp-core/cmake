cmake_minimum_required (VERSION 3.24 FATAL_ERROR)

function(add_date)
  set(USE_SYSTEM_TZ_DB ON)
  set(BUILD_TZ_LIB ON)
  add_component(date TAG v3.0.1 TARGETS date::date-tz)
endfunction()
