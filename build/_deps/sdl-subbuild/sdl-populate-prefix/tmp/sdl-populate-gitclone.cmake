
if(NOT "D:/CADCG/soft raster/build/_deps/sdl-subbuild/sdl-populate-prefix/src/sdl-populate-stamp/sdl-populate-gitinfo.txt" IS_NEWER_THAN "D:/CADCG/soft raster/build/_deps/sdl-subbuild/sdl-populate-prefix/src/sdl-populate-stamp/sdl-populate-gitclone-lastrun.txt")
  message(STATUS "Avoiding repeated git clone, stamp file is up to date: 'D:/CADCG/soft raster/build/_deps/sdl-subbuild/sdl-populate-prefix/src/sdl-populate-stamp/sdl-populate-gitclone-lastrun.txt'")
  return()
endif()

execute_process(
  COMMAND ${CMAKE_COMMAND} -E rm -rf "D:/CADCG/soft raster/build/_deps/sdl-src"
  RESULT_VARIABLE error_code
  )
if(error_code)
  message(FATAL_ERROR "Failed to remove directory: 'D:/CADCG/soft raster/build/_deps/sdl-src'")
endif()

# try the clone 3 times in case there is an odd git clone issue
set(error_code 1)
set(number_of_tries 0)
while(error_code AND number_of_tries LESS 3)
  execute_process(
    COMMAND "D:/Program Files/Git/cmd/git.exe"  clone --no-checkout --depth 1 --no-single-branch --progress --config "advice.detachedHead=false" "https://github.com/libsdl-org/SDL" "sdl-src"
    WORKING_DIRECTORY "D:/CADCG/soft raster/build/_deps"
    RESULT_VARIABLE error_code
    )
  math(EXPR number_of_tries "${number_of_tries} + 1")
endwhile()
if(number_of_tries GREATER 1)
  message(STATUS "Had to git clone more than once:
          ${number_of_tries} times.")
endif()
if(error_code)
  message(FATAL_ERROR "Failed to clone repository: 'https://github.com/libsdl-org/SDL'")
endif()

execute_process(
  COMMAND "D:/Program Files/Git/cmd/git.exe"  checkout main --
  WORKING_DIRECTORY "D:/CADCG/soft raster/build/_deps/sdl-src"
  RESULT_VARIABLE error_code
  )
if(error_code)
  message(FATAL_ERROR "Failed to checkout tag: 'main'")
endif()

set(init_submodules TRUE)
if(init_submodules)
  execute_process(
    COMMAND "D:/Program Files/Git/cmd/git.exe"  submodule update --recursive --init 
    WORKING_DIRECTORY "D:/CADCG/soft raster/build/_deps/sdl-src"
    RESULT_VARIABLE error_code
    )
endif()
if(error_code)
  message(FATAL_ERROR "Failed to update submodules in: 'D:/CADCG/soft raster/build/_deps/sdl-src'")
endif()

# Complete success, update the script-last-run stamp file:
#
execute_process(
  COMMAND ${CMAKE_COMMAND} -E copy
    "D:/CADCG/soft raster/build/_deps/sdl-subbuild/sdl-populate-prefix/src/sdl-populate-stamp/sdl-populate-gitinfo.txt"
    "D:/CADCG/soft raster/build/_deps/sdl-subbuild/sdl-populate-prefix/src/sdl-populate-stamp/sdl-populate-gitclone-lastrun.txt"
  RESULT_VARIABLE error_code
  )
if(error_code)
  message(FATAL_ERROR "Failed to copy script-last-run stamp file: 'D:/CADCG/soft raster/build/_deps/sdl-subbuild/sdl-populate-prefix/src/sdl-populate-stamp/sdl-populate-gitclone-lastrun.txt'")
endif()

