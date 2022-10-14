cmake_minimum_required (VERSION 3.24 FATAL_ERROR)

function(add_date)
  return_if_target(date::date-tz)
  
  set(USE_SYSTEM_TZ_DB ON)
  set(BUILD_TZ_LIB ON)
  message("adding date")
  maybe_add_subdirectory(date)
  maybe_find_package(date)
  maybe_fetch_content(date TAG v3.0.1 TARGETS date::date-tz)

  missing_error(date date::date-tz ${CPP_CORE_DIR}/date)
endfunction()
