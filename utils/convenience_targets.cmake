cmake_minimum_required (VERSION 3.24 FATAL_ERROR)

# Have cmake output the compilation commands and create a link to it
# from the project root directory so the language server can find
# it.
#
macro(symlink_compile_commands)
  set(CMAKE_EXPORT_COMPILE_COMMANDS ON)
  execute_process(COMMAND ${CMAKE_COMMAND} -E create_symlink
    ${CMAKE_BINARY_DIR}/compile_commands.json
    ${CMAKE_SOURCE_DIR}/compile_commands.json)
endmacro()

# Make a target for updating the submodules
#
macro(make_submodule_pull_target)
  find_package(Git REQUIRED)
  
  add_custom_target(submodule_pull
    COMMAND ${GIT_EXECUTABLE} submodule update --init --recursive
    COMMAND ${GIT_EXECUTABLE} submodule foreach git pull
    WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}
    )
endmacro()
