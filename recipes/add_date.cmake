cmake_minimum_required (VERSION 3.24 FATAL_ERROR)

function(add_date)
  return_if_target(date::date-tz)
  
  set(USE_SYSTEM_TZ_DB ON CACHE INTERNAL "")
  set(BUILD_TZ_LIB ON CACHE INTERNAL "")
  maybe_add_subdirectory(date)
  maybe_find_package(date)
  maybe_fetch_content(date TAG master)

  missing_error(date date ${CPP_CORE_DIR}/date)
endfunction()
