cmake_minimum_required(VERSION 3.22.1)
project(TicTacToe)

option(BUILD_TESTS "Turn on build for tests of TicTacToe" OFF)

file(GLOB SRC_FILES
        "src/*.cpp"
)

set(ICL_FILES_DIR
        include/
)

if (BUILD_TESTS)
        add_subdirectory(test)
endif()

include_directories(
        ${INC_FILES_DIR}
)

add_executable(TicTacToe
        ${SRC_FILES}
)
