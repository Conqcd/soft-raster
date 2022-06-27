include(${PROJECT_SOURCE_DIR}/third_party/sdl.cmake)


file(GLOB_RECURSE RASTER_SRC *.cpp *.hpp)

message(${RASTER_SRC})

include_directories(../raster/include)
# include_directories(${PROJECT_SOURCE_DIR}/third_party/include)
add_executable(raster
    ${RASTER_SRC}
)

target_link_libraries(raster
    PRIVATE
    SDL2
)