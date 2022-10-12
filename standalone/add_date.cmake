cmake_minimum_required (VERSION 3.24 FATAL_ERROR)

include(${CMAKE_CURRENT_LIST_DIR}/add_component.cmake)

function(add_date)
  set(USE_SYSTEM_TZ_DB ON CACHE INTERNAL "")
  set(BUILD_TZ_LIB ON CACHE INTERNAL "")
  add_component(date TARGET date::date-tz)
endfunction()
