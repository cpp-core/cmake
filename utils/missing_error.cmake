cmake_minimum_required (VERSION 3.24 FATAL_ERROR)

function(missing_error NAME TARGET DIR)
  message("-- missing: Reached a deadend trying to find '${NAME}'")
  message("-- missing: Target '${TARGET}' not previously loaded")
  message("-- missing: Installed package '${NAME}' not found via find_package")
  message("-- missing: Source package '${NAME}' not found in sibling directory '${DIR}'")
  message(FATAL_ERROR "-- missing: '${NAME}', cannot continue")
endfunction()
