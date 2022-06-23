# Install script for directory: D:/CADCG/soft raster/build/_deps/sdl-src

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "C:/Program Files (x86)/Raster")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/CADCG/soft raster/build/out/Debug/SDL2d.lib")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/CADCG/soft raster/build/out/Release/SDL2.lib")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/CADCG/soft raster/build/out/MinSizeRel/SDL2.lib")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/CADCG/soft raster/build/out/RelWithDebInfo/SDL2.lib")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/CADCG/soft raster/build/out/Debug/SDL2d.dll")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/CADCG/soft raster/build/out/Release/SDL2.dll")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/CADCG/soft raster/build/out/MinSizeRel/SDL2.dll")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/CADCG/soft raster/build/out/RelWithDebInfo/SDL2.dll")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "D:/CADCG/soft raster/build/out/Debug/SDL2maind.lib")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "D:/CADCG/soft raster/build/out/Release/SDL2main.lib")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "D:/CADCG/soft raster/build/out/MinSizeRel/SDL2main.lib")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "D:/CADCG/soft raster/build/out/RelWithDebInfo/SDL2main.lib")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "D:/CADCG/soft raster/build/out/Debug/SDL2-staticd.lib")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "D:/CADCG/soft raster/build/out/Release/SDL2-static.lib")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "D:/CADCG/soft raster/build/out/MinSizeRel/SDL2-static.lib")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "D:/CADCG/soft raster/build/out/RelWithDebInfo/SDL2-static.lib")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "D:/CADCG/soft raster/build/out/Debug/SDL2_test.lib")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "D:/CADCG/soft raster/build/out/Release/SDL2_test.lib")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "D:/CADCG/soft raster/build/out/MinSizeRel/SDL2_test.lib")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "D:/CADCG/soft raster/build/out/RelWithDebInfo/SDL2_test.lib")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/cmake/SDL2Targets.cmake")
    file(DIFFERENT EXPORT_FILE_CHANGED FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/cmake/SDL2Targets.cmake"
         "D:/CADCG/soft raster/build/_deps/sdl-build/CMakeFiles/Export/cmake/SDL2Targets.cmake")
    if(EXPORT_FILE_CHANGED)
      file(GLOB OLD_CONFIG_FILES "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/cmake/SDL2Targets-*.cmake")
      if(OLD_CONFIG_FILES)
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/cmake/SDL2Targets.cmake\" will be replaced.  Removing files [${OLD_CONFIG_FILES}].")
        file(REMOVE ${OLD_CONFIG_FILES})
      endif()
    endif()
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/cmake" TYPE FILE FILES "D:/CADCG/soft raster/build/_deps/sdl-build/CMakeFiles/Export/cmake/SDL2Targets.cmake")
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/cmake" TYPE FILE FILES "D:/CADCG/soft raster/build/_deps/sdl-build/CMakeFiles/Export/cmake/SDL2Targets-debug.cmake")
  endif()
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/cmake" TYPE FILE FILES "D:/CADCG/soft raster/build/_deps/sdl-build/CMakeFiles/Export/cmake/SDL2Targets-minsizerel.cmake")
  endif()
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/cmake" TYPE FILE FILES "D:/CADCG/soft raster/build/_deps/sdl-build/CMakeFiles/Export/cmake/SDL2Targets-relwithdebinfo.cmake")
  endif()
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/cmake" TYPE FILE FILES "D:/CADCG/soft raster/build/_deps/sdl-build/CMakeFiles/Export/cmake/SDL2Targets-release.cmake")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/cmake/SDL2mainTargets.cmake")
    file(DIFFERENT EXPORT_FILE_CHANGED FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/cmake/SDL2mainTargets.cmake"
         "D:/CADCG/soft raster/build/_deps/sdl-build/CMakeFiles/Export/cmake/SDL2mainTargets.cmake")
    if(EXPORT_FILE_CHANGED)
      file(GLOB OLD_CONFIG_FILES "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/cmake/SDL2mainTargets-*.cmake")
      if(OLD_CONFIG_FILES)
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/cmake/SDL2mainTargets.cmake\" will be replaced.  Removing files [${OLD_CONFIG_FILES}].")
        file(REMOVE ${OLD_CONFIG_FILES})
      endif()
    endif()
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/cmake" TYPE FILE FILES "D:/CADCG/soft raster/build/_deps/sdl-build/CMakeFiles/Export/cmake/SDL2mainTargets.cmake")
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/cmake" TYPE FILE FILES "D:/CADCG/soft raster/build/_deps/sdl-build/CMakeFiles/Export/cmake/SDL2mainTargets-debug.cmake")
  endif()
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/cmake" TYPE FILE FILES "D:/CADCG/soft raster/build/_deps/sdl-build/CMakeFiles/Export/cmake/SDL2mainTargets-minsizerel.cmake")
  endif()
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/cmake" TYPE FILE FILES "D:/CADCG/soft raster/build/_deps/sdl-build/CMakeFiles/Export/cmake/SDL2mainTargets-relwithdebinfo.cmake")
  endif()
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/cmake" TYPE FILE FILES "D:/CADCG/soft raster/build/_deps/sdl-build/CMakeFiles/Export/cmake/SDL2mainTargets-release.cmake")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/cmake/SDL2staticTargets.cmake")
    file(DIFFERENT EXPORT_FILE_CHANGED FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/cmake/SDL2staticTargets.cmake"
         "D:/CADCG/soft raster/build/_deps/sdl-build/CMakeFiles/Export/cmake/SDL2staticTargets.cmake")
    if(EXPORT_FILE_CHANGED)
      file(GLOB OLD_CONFIG_FILES "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/cmake/SDL2staticTargets-*.cmake")
      if(OLD_CONFIG_FILES)
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/cmake/SDL2staticTargets.cmake\" will be replaced.  Removing files [${OLD_CONFIG_FILES}].")
        file(REMOVE ${OLD_CONFIG_FILES})
      endif()
    endif()
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/cmake" TYPE FILE FILES "D:/CADCG/soft raster/build/_deps/sdl-build/CMakeFiles/Export/cmake/SDL2staticTargets.cmake")
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/cmake" TYPE FILE FILES "D:/CADCG/soft raster/build/_deps/sdl-build/CMakeFiles/Export/cmake/SDL2staticTargets-debug.cmake")
  endif()
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/cmake" TYPE FILE FILES "D:/CADCG/soft raster/build/_deps/sdl-build/CMakeFiles/Export/cmake/SDL2staticTargets-minsizerel.cmake")
  endif()
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/cmake" TYPE FILE FILES "D:/CADCG/soft raster/build/_deps/sdl-build/CMakeFiles/Export/cmake/SDL2staticTargets-relwithdebinfo.cmake")
  endif()
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/cmake" TYPE FILE FILES "D:/CADCG/soft raster/build/_deps/sdl-build/CMakeFiles/Export/cmake/SDL2staticTargets-release.cmake")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/cmake/SDL2testTargets.cmake")
    file(DIFFERENT EXPORT_FILE_CHANGED FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/cmake/SDL2testTargets.cmake"
         "D:/CADCG/soft raster/build/_deps/sdl-build/CMakeFiles/Export/cmake/SDL2testTargets.cmake")
    if(EXPORT_FILE_CHANGED)
      file(GLOB OLD_CONFIG_FILES "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/cmake/SDL2testTargets-*.cmake")
      if(OLD_CONFIG_FILES)
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/cmake/SDL2testTargets.cmake\" will be replaced.  Removing files [${OLD_CONFIG_FILES}].")
        file(REMOVE ${OLD_CONFIG_FILES})
      endif()
    endif()
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/cmake" TYPE FILE FILES "D:/CADCG/soft raster/build/_deps/sdl-build/CMakeFiles/Export/cmake/SDL2testTargets.cmake")
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/cmake" TYPE FILE FILES "D:/CADCG/soft raster/build/_deps/sdl-build/CMakeFiles/Export/cmake/SDL2testTargets-debug.cmake")
  endif()
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/cmake" TYPE FILE FILES "D:/CADCG/soft raster/build/_deps/sdl-build/CMakeFiles/Export/cmake/SDL2testTargets-minsizerel.cmake")
  endif()
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/cmake" TYPE FILE FILES "D:/CADCG/soft raster/build/_deps/sdl-build/CMakeFiles/Export/cmake/SDL2testTargets-relwithdebinfo.cmake")
  endif()
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/cmake" TYPE FILE FILES "D:/CADCG/soft raster/build/_deps/sdl-build/CMakeFiles/Export/cmake/SDL2testTargets-release.cmake")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xDevelx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/cmake" TYPE FILE FILES
    "D:/CADCG/soft raster/build/_deps/sdl-build/SDL2Config.cmake"
    "D:/CADCG/soft raster/build/_deps/sdl-build/SDL2ConfigVersion.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/SDL2" TYPE FILE FILES
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_assert.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_atomic.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_audio.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_bits.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_blendmode.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_clipboard.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_copying.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_cpuinfo.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_egl.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_endian.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_error.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_events.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_filesystem.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_gamecontroller.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_gesture.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_guid.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_haptic.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_hidapi.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_hints.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_joystick.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_keyboard.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_keycode.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_loadso.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_locale.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_log.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_main.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_messagebox.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_metal.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_misc.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_mouse.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_mutex.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_name.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_opengl.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_opengl_glext.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_opengles.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_opengles2.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_opengles2_gl2.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_opengles2_gl2ext.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_opengles2_gl2platform.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_opengles2_khrplatform.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_pixels.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_platform.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_power.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_quit.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_rect.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_render.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_rwops.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_scancode.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_sensor.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_shape.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_stdinc.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_surface.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_system.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_syswm.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_test.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_test_assert.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_test_common.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_test_compare.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_test_crc32.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_test_font.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_test_fuzzer.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_test_harness.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_test_images.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_test_log.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_test_md5.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_test_memory.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_test_random.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_thread.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_timer.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_touch.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_types.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_version.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_video.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_vulkan.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/begin_code.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/close_code.h"
      "D:/CADCG/soft raster/build/_deps/sdl-build/include/SDL_revision.h"
      "D:/CADCG/soft raster/build/_deps/sdl-build/include-config-debug/SDL_config.h"
      )
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/SDL2" TYPE FILE FILES
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_assert.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_atomic.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_audio.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_bits.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_blendmode.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_clipboard.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_copying.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_cpuinfo.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_egl.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_endian.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_error.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_events.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_filesystem.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_gamecontroller.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_gesture.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_guid.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_haptic.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_hidapi.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_hints.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_joystick.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_keyboard.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_keycode.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_loadso.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_locale.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_log.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_main.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_messagebox.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_metal.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_misc.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_mouse.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_mutex.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_name.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_opengl.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_opengl_glext.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_opengles.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_opengles2.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_opengles2_gl2.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_opengles2_gl2ext.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_opengles2_gl2platform.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_opengles2_khrplatform.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_pixels.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_platform.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_power.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_quit.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_rect.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_render.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_rwops.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_scancode.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_sensor.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_shape.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_stdinc.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_surface.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_system.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_syswm.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_test.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_test_assert.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_test_common.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_test_compare.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_test_crc32.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_test_font.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_test_fuzzer.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_test_harness.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_test_images.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_test_log.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_test_md5.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_test_memory.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_test_random.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_thread.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_timer.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_touch.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_types.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_version.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_video.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_vulkan.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/begin_code.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/close_code.h"
      "D:/CADCG/soft raster/build/_deps/sdl-build/include/SDL_revision.h"
      "D:/CADCG/soft raster/build/_deps/sdl-build/include-config-release/SDL_config.h"
      )
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/SDL2" TYPE FILE FILES
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_assert.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_atomic.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_audio.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_bits.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_blendmode.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_clipboard.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_copying.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_cpuinfo.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_egl.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_endian.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_error.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_events.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_filesystem.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_gamecontroller.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_gesture.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_guid.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_haptic.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_hidapi.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_hints.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_joystick.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_keyboard.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_keycode.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_loadso.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_locale.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_log.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_main.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_messagebox.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_metal.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_misc.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_mouse.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_mutex.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_name.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_opengl.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_opengl_glext.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_opengles.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_opengles2.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_opengles2_gl2.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_opengles2_gl2ext.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_opengles2_gl2platform.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_opengles2_khrplatform.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_pixels.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_platform.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_power.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_quit.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_rect.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_render.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_rwops.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_scancode.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_sensor.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_shape.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_stdinc.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_surface.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_system.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_syswm.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_test.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_test_assert.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_test_common.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_test_compare.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_test_crc32.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_test_font.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_test_fuzzer.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_test_harness.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_test_images.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_test_log.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_test_md5.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_test_memory.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_test_random.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_thread.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_timer.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_touch.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_types.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_version.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_video.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_vulkan.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/begin_code.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/close_code.h"
      "D:/CADCG/soft raster/build/_deps/sdl-build/include/SDL_revision.h"
      "D:/CADCG/soft raster/build/_deps/sdl-build/include-config-minsizerel/SDL_config.h"
      )
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/SDL2" TYPE FILE FILES
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_assert.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_atomic.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_audio.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_bits.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_blendmode.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_clipboard.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_copying.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_cpuinfo.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_egl.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_endian.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_error.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_events.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_filesystem.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_gamecontroller.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_gesture.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_guid.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_haptic.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_hidapi.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_hints.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_joystick.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_keyboard.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_keycode.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_loadso.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_locale.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_log.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_main.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_messagebox.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_metal.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_misc.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_mouse.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_mutex.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_name.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_opengl.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_opengl_glext.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_opengles.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_opengles2.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_opengles2_gl2.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_opengles2_gl2ext.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_opengles2_gl2platform.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_opengles2_khrplatform.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_pixels.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_platform.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_power.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_quit.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_rect.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_render.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_rwops.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_scancode.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_sensor.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_shape.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_stdinc.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_surface.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_system.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_syswm.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_test.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_test_assert.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_test_common.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_test_compare.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_test_crc32.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_test_font.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_test_fuzzer.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_test_harness.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_test_images.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_test_log.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_test_md5.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_test_memory.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_test_random.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_thread.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_timer.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_touch.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_types.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_version.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_video.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/SDL_vulkan.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/begin_code.h"
      "D:/CADCG/soft raster/build/_deps/sdl-src/include/close_code.h"
      "D:/CADCG/soft raster/build/_deps/sdl-build/include/SDL_revision.h"
      "D:/CADCG/soft raster/build/_deps/sdl-build/include-config-relwithdebinfo/SDL_config.h"
      )
  endif()
endif()

